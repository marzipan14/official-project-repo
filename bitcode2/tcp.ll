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
@ip_addr_any = external dso_local constant %struct.ip_addr, align 4
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
@.str.53 = private unnamed_addr constant [52 x i8] c"tcp_netif_ip_addr_changed_pcblist: invalid old_addr\00", align 1
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %4, label %11, label %5, !dbg !393

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !394, !srcloc !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %7, label %11, label %8, !dbg !398

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !399
  %10 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !408
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #7, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store i32 %10, i32* %1, align 4, !dbg !413, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %4, label %5, label %6, !dbg !461

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !462
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !465
  tail call void @ukplat_terminate(i32 3) #9, !dbg !465
  unreachable

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br i1 %4, label %6, label %5, !dbg !487

; <label>:5:                                      ; preds = %0
  tail call void @tcp_slowtmr() #8, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !500, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %4 = icmp eq %struct.tcp_pcb* %3, null, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %4, label %50, label %5, !dbg !503

; <label>:5:                                      ; preds = %0, %48
  %6 = phi %struct.tcp_pcb* [ %49, %48 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 15, !dbg !505
  %8 = load i8, i8* %7, align 2, !dbg !505, !tbaa !506
  %9 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !507, !tbaa !485
  %10 = icmp eq i8 %8, %9, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %10, label %42, label %11, !dbg !509

; <label>:11:                                     ; preds = %5
  store i8 %9, i8* %7, align 2, !dbg !510, !tbaa !506
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 12, !dbg !511
  %13 = load i16, i16* %12, align 2, !dbg !511, !tbaa !513
  %14 = and i16 %13, 1, !dbg !514
  %15 = icmp eq i16 %14, 0, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %15, label %21, label %16, !dbg !515

; <label>:16:                                     ; preds = %11
  %17 = or i16 %13, 2, !dbg !516
  store i16 %17, i16* %12, align 2, !dbg !516, !tbaa !513
  %18 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %6) #7, !dbg !519
  %19 = load i16, i16* %12, align 2, !dbg !520, !tbaa !513
  %20 = and i16 %19, -4, !dbg !520
  store i16 %20, i16* %12, align 2, !dbg !520, !tbaa !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br label %21, !dbg !522

; <label>:21:                                     ; preds = %11, %16
  %22 = phi i16 [ %13, %11 ], [ %20, %16 ], !dbg !523
  %23 = and i16 %22, 8, !dbg !525
  %24 = icmp eq i16 %23, 0, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %24, label %28, label %25, !dbg !526

; <label>:25:                                     ; preds = %21
  %26 = and i16 %22, -9, !dbg !527
  store i16 %26, i16* %12, align 2, !dbg !527, !tbaa !513
  %27 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %6) #8, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br label %28, !dbg !531

; <label>:28:                                     ; preds = %21, %25
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 6, !dbg !532
  %30 = load %struct.tcp_pcb*, %struct.tcp_pcb** %29, align 8, !dbg !532, !tbaa !533
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 47, !dbg !535
  %32 = load %struct.pbuf*, %struct.pbuf** %31, align 8, !dbg !535, !tbaa !537
  %33 = icmp eq %struct.pbuf* %32, null, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %33, label %38, label %34, !dbg !539

; <label>:34:                                     ; preds = %28
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !540, !tbaa !485
  %35 = tail call signext i8 @tcp_process_refused_data(%struct.tcp_pcb* nonnull %6) #8, !dbg !542
  %36 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !543, !tbaa !485
  %37 = icmp eq i8 %36, 0, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %37, label %38, label %39, !dbg !545

; <label>:38:                                     ; preds = %28, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br label %45

; <label>:39:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !500, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %41 = icmp eq %struct.tcp_pcb* %40, null, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %41, label %50, label %48, !dbg !503

; <label>:42:                                     ; preds = %5
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 6, !dbg !549
  %44 = load %struct.tcp_pcb*, %struct.tcp_pcb** %43, align 8, !dbg !549, !tbaa !533
  br label %45

; <label>:45:                                     ; preds = %38, %42
  %46 = phi %struct.tcp_pcb* [ %44, %42 ], [ %30, %38 ], !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %47 = icmp eq %struct.tcp_pcb* %46, null, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %47, label %50, label %48, !dbg !503

; <label>:48:                                     ; preds = %45, %39
  %49 = phi %struct.tcp_pcb* [ %46, %45 ], [ %40, %39 ]
  br label %5, !dbg !502, !llvm.loop !552

; <label>:50:                                     ; preds = %39, %45, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  ret void, !dbg !554
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_slowtmr() local_unnamed_addr #0 !dbg !555 {
  %1 = load i32, i32* @tcp_ticks, align 4, !dbg !595, !tbaa !414
  %2 = add i32 %1, 1, !dbg !595
  store i32 %2, i32* @tcp_ticks, align 4, !dbg !595, !tbaa !414
  %3 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !596, !tbaa !485
  %4 = add i8 %3, 1, !dbg !596
  store i8 %4, i8* @tcp_timer_ctr, align 1, !dbg !596, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !598, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  %6 = icmp eq %struct.tcp_pcb* %5, null, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %6, label %356, label %10, !dbg !600

; <label>:7:                                      ; preds = %329, %346
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !598, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  %9 = icmp eq %struct.tcp_pcb* %8, null, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %9, label %356, label %35, !dbg !600

; <label>:10:                                     ; preds = %0, %35
  %11 = phi %struct.tcp_pcb* [ %36, %35 ], [ %5, %0 ]
  %12 = phi %struct.tcp_pcb* [ %37, %35 ], [ null, %0 ]
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 8, !dbg !602
  %14 = load i32, i32* %13, align 8, !dbg !602, !tbaa !457
  %15 = icmp eq i32 %14, 0, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  br i1 %15, label %16, label %17, !dbg !605

; <label>:16:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !606
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !609
  tail call void @ukplat_terminate(i32 3) #9, !dbg !609
  unreachable

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i32 %14, 1, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %18, label %19, label %20, !dbg !616

; <label>:19:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !617
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !620
  tail call void @ukplat_terminate(i32 3) #9, !dbg !620
  unreachable

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i32 %14, 10, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %21, label %22, label %23, !dbg !627

; <label>:22:                                     ; preds = %20
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !628
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !631
  tail call void @ukplat_terminate(i32 3) #9, !dbg !631
  unreachable

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 15, !dbg !635
  %25 = load i8, i8* %24, align 2, !dbg !635, !tbaa !506
  %26 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !637, !tbaa !485
  %27 = icmp eq i8 %25, %26, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %27, label %28, label %38, !dbg !639

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !640
  %30 = load %struct.tcp_pcb*, %struct.tcp_pcb** %29, align 8, !dbg !640, !tbaa !533
  br label %31, !dbg !642

; <label>:31:                                     ; preds = %329, %352, %354, %332, %328, %28
  %32 = phi %struct.tcp_pcb* [ %11, %28 ], [ %12, %329 ], [ %11, %354 ], [ %11, %352 ], [ %11, %332 ], [ %12, %328 ]
  %33 = phi %struct.tcp_pcb* [ %30, %28 ], [ %321, %329 ], [ %334, %354 ], [ %334, %352 ], [ %334, %332 ], [ %321, %328 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %34 = icmp eq %struct.tcp_pcb* %33, null, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %34, label %356, label %35, !dbg !600

; <label>:35:                                     ; preds = %31, %7
  %36 = phi %struct.tcp_pcb* [ %33, %31 ], [ %8, %7 ]
  %37 = phi %struct.tcp_pcb* [ %32, %31 ], [ null, %7 ]
  br label %10, !dbg !599, !llvm.loop !644

; <label>:38:                                     ; preds = %23
  store i8 %26, i8* %24, align 2, !dbg !646, !tbaa !506
  %39 = icmp eq i32 %14, 2, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 28
  %41 = load i8, i8* %40, align 2, !dbg !651, !tbaa !652
  br i1 %39, label %42, label %44, !dbg !650

; <label>:42:                                     ; preds = %38
  %43 = icmp ugt i8 %41, 5, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %43, label %172, label %47, !dbg !654

; <label>:44:                                     ; preds = %38
  %45 = icmp ugt i8 %41, 11, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %45, label %46, label %47, !dbg !657

; <label>:46:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br label %172, !dbg !658

; <label>:47:                                     ; preds = %42, %44
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 56, !dbg !660
  %49 = load i8, i8* %48, align 1, !dbg !660, !tbaa !661
  %50 = zext i8 %49 to i64, !dbg !662
  %51 = icmp eq i8 %49, 0, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  br i1 %51, label %103, label %52, !dbg !664

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 45, !dbg !665
  %54 = load %struct.tcp_seg*, %struct.tcp_seg** %53, align 8, !dbg !665, !tbaa !668
  %55 = icmp eq %struct.tcp_seg* %54, null, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br i1 %55, label %57, label %56, !dbg !669

; <label>:56:                                     ; preds = %52
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !670
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !673
  tail call void @ukplat_terminate(i32 3) #9, !dbg !673
  unreachable

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 44, !dbg !677
  %59 = load %struct.tcp_seg*, %struct.tcp_seg** %58, align 8, !dbg !677, !tbaa !680
  %60 = icmp eq %struct.tcp_seg* %59, null, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br i1 %60, label %61, label %62, !dbg !681

; <label>:61:                                     ; preds = %57
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !682
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !685
  tail call void @ukplat_terminate(i32 3) #9, !dbg !685
  unreachable

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 57, !dbg !689
  %64 = load i8, i8* %63, align 2, !dbg !689, !tbaa !690
  %65 = icmp ugt i8 %64, 11, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br i1 %65, label %66, label %67, !dbg !692

; <label>:66:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %172, !dbg !693

; <label>:67:                                     ; preds = %62
  %68 = add nsw i64 %50, -1, !dbg !695
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* @tcp_persist_backoff, i64 0, i64 %68, !dbg !696
  %70 = load i8, i8* %69, align 1, !dbg !696, !tbaa !485
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 55, !dbg !698
  %72 = load i8, i8* %71, align 4, !dbg !698, !tbaa !700
  %73 = icmp ult i8 %72, %70, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  br i1 %73, label %74, label %76, !dbg !702

; <label>:74:                                     ; preds = %67
  %75 = add i8 %72, 1, !dbg !703
  store i8 %75, i8* %71, align 4, !dbg !703, !tbaa !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br label %76, !dbg !705

; <label>:76:                                     ; preds = %74, %67
  %77 = phi i8 [ %75, %74 ], [ %72, %67 ], !dbg !706
  %78 = icmp ult i8 %77, %70, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %78, label %102, label %79, !dbg !708

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 38, !dbg !710
  %81 = load i32, i32* %80, align 8, !dbg !710, !tbaa !712
  %82 = icmp eq i32 %81, 0, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %82, label %83, label %86, !dbg !714

; <label>:83:                                     ; preds = %79
  %84 = tail call signext i8 @tcp_zero_window_probe(%struct.tcp_pcb* nonnull %11) #7, !dbg !715
  %85 = icmp eq i8 %84, 0, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %85, label %95, label %100, !dbg !719

; <label>:86:                                     ; preds = %79
  %87 = trunc i32 %81 to i16, !dbg !722
  %88 = tail call signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb* nonnull %11, i16 zeroext %87) #7, !dbg !725
  %89 = icmp eq i8 %88, 0, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %89, label %90, label %94, !dbg !727

; <label>:90:                                     ; preds = %86
  %91 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %11) #7, !dbg !728
  %92 = icmp eq i8 %91, 0, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %92, label %93, label %94, !dbg !732

; <label>:93:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  br label %100

; <label>:94:                                     ; preds = %86, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br label %95, !dbg !735

; <label>:95:                                     ; preds = %83, %94
  store i8 0, i8* %71, align 4, !dbg !736, !tbaa !700
  %96 = load i8, i8* %48, align 1, !dbg !739, !tbaa !661
  %97 = icmp ult i8 %96, 7, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %97, label %98, label %101, !dbg !742

; <label>:98:                                     ; preds = %95
  %99 = add i8 %96, 1, !dbg !743
  store i8 %99, i8* %48, align 1, !dbg !743, !tbaa !661
  br label %100, !dbg !745

; <label>:100:                                    ; preds = %83, %98, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br label %101, !dbg !747

; <label>:101:                                    ; preds = %100, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br label %102, !dbg !747

; <label>:102:                                    ; preds = %76, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %172

; <label>:103:                                    ; preds = %47
  %104 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 21, !dbg !748
  %105 = load i16, i16* %104, align 4, !dbg !748, !tbaa !750
  %106 = icmp sgt i16 %105, -1, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %106, label %107, label %113, !dbg !752

; <label>:107:                                    ; preds = %103
  %108 = icmp eq i16 %105, 32767, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %108, label %109, label %111, !dbg !754

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %118, !dbg !756

; <label>:111:                                    ; preds = %107
  %112 = add i16 %105, 1, !dbg !757
  store i16 %112, i16* %104, align 4, !dbg !757, !tbaa !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br label %113, !dbg !759

; <label>:113:                                    ; preds = %111, %103
  %114 = phi i16 [ %112, %111 ], [ %105, %103 ], !dbg !760
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !755
  %116 = load i16, i16* %115, align 4, !dbg !755, !tbaa !761
  %117 = icmp slt i16 %114, %116, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %117, label %172, label %118, !dbg !756

; <label>:118:                                    ; preds = %109, %113
  %119 = phi i16* [ %110, %109 ], [ %115, %113 ]
  %120 = tail call signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb* nonnull %11) #7, !dbg !763
  %121 = icmp eq i8 %120, 0, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %121, label %130, label %122, !dbg !765

; <label>:122:                                    ; preds = %118
  %123 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 45, !dbg !766
  %124 = load %struct.tcp_seg*, %struct.tcp_seg** %123, align 8, !dbg !766, !tbaa !668
  %125 = icmp eq %struct.tcp_seg* %124, null, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br i1 %125, label %126, label %172, !dbg !768

; <label>:126:                                    ; preds = %122
  %127 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 44, !dbg !769
  %128 = load %struct.tcp_seg*, %struct.tcp_seg** %127, align 8, !dbg !769, !tbaa !680
  %129 = icmp eq %struct.tcp_seg* %128, null, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %129, label %172, label %130, !dbg !771

; <label>:130:                                    ; preds = %126, %118
  %131 = load i32, i32* %13, align 8, !dbg !772, !tbaa !457
  %132 = icmp eq i32 %131, 2, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br i1 %132, label %155, label %133, !dbg !774

; <label>:133:                                    ; preds = %130
  %134 = load i8, i8* %40, align 2, !dbg !775, !tbaa !652
  %135 = icmp ult i8 %134, 12, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %135, label %136, label %137, !dbg !775

; <label>:136:                                    ; preds = %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br label %137, !dbg !775

; <label>:137:                                    ; preds = %133, %136
  %138 = phi i8 [ %134, %136 ], [ 12, %133 ], !dbg !775
  %139 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 25, !dbg !777
  %140 = load i16, i16* %139, align 8, !dbg !777, !tbaa !778
  %141 = ashr i16 %140, 3, !dbg !779
  %142 = sext i16 %141 to i32, !dbg !779
  %143 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 26, !dbg !780
  %144 = load i16, i16* %143, align 2, !dbg !780, !tbaa !781
  %145 = sext i16 %144 to i32, !dbg !782
  %146 = add nsw i32 %142, %145, !dbg !783
  %147 = zext i8 %138 to i64, !dbg !784
  %148 = getelementptr inbounds [13 x i8], [13 x i8]* @tcp_backoff, i64 0, i64 %147, !dbg !784
  %149 = load i8, i8* %148, align 1, !dbg !784, !tbaa !485
  %150 = zext i8 %149 to i32, !dbg !784
  %151 = shl i32 %146, %150, !dbg !785
  %152 = icmp slt i32 %151, 32767, !dbg !787
  %153 = select i1 %152, i32 %151, i32 32767, !dbg !787
  %154 = trunc i32 %153 to i16, !dbg !788
  store i16 %154, i16* %119, align 4, !dbg !789, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br label %155, !dbg !790

; <label>:155:                                    ; preds = %130, %137
  store i16 0, i16* %104, align 4, !dbg !791, !tbaa !750
  %156 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 31, !dbg !792
  %157 = load i32, i32* %156, align 4, !dbg !792, !tbaa !793
  %158 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 38, !dbg !792
  %159 = load i32, i32* %158, align 8, !dbg !792, !tbaa !712
  %160 = icmp ult i32 %157, %159, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  %161 = select i1 %160, i32 %157, i32 %159, !dbg !792
  %162 = lshr i32 %161, 1, !dbg !795
  %163 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 32, !dbg !796
  store i32 %162, i32* %163, align 8, !dbg !797, !tbaa !798
  %164 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 22, !dbg !799
  %165 = load i16, i16* %164, align 2, !dbg !799, !tbaa !801
  %166 = zext i16 %165 to i32, !dbg !802
  %167 = shl nuw nsw i32 %166, 1, !dbg !803
  %168 = icmp ult i32 %162, %167, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %168, label %169, label %170, !dbg !805

; <label>:169:                                    ; preds = %155
  store i32 %167, i32* %163, align 8, !dbg !806, !tbaa !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br label %170, !dbg !808

; <label>:170:                                    ; preds = %169, %155
  store i32 %166, i32* %156, align 4, !dbg !809, !tbaa !793
  %171 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 43, !dbg !810
  store i32 0, i32* %171, align 8, !dbg !811, !tbaa !812
  tail call void @tcp_rexmit_rto_commit(%struct.tcp_pcb* nonnull %11) #7, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br label %172, !dbg !814

; <label>:172:                                    ; preds = %42, %126, %113, %46, %170, %122, %66, %102
  %173 = phi i8 [ 1, %46 ], [ 1, %66 ], [ 0, %102 ], [ 0, %170 ], [ 0, %126 ], [ 0, %122 ], [ 0, %113 ], [ 1, %42 ], !dbg !815
  %174 = load i32, i32* %13, align 8, !dbg !816, !tbaa !457
  %175 = icmp eq i32 %174, 6, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %175, label %176, label %189, !dbg !819

; <label>:176:                                    ; preds = %172
  %177 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 12, !dbg !820
  %178 = load i16, i16* %177, align 2, !dbg !820, !tbaa !513
  %179 = and i16 %178, 16, !dbg !823
  %180 = icmp eq i16 %179, 0, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %180, label %189, label %181, !dbg !824

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* @tcp_ticks, align 4, !dbg !825, !tbaa !414
  %183 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !828
  %184 = load i32, i32* %183, align 8, !dbg !828, !tbaa !829
  %185 = sub i32 %182, %184, !dbg !830
  %186 = icmp ugt i32 %185, 40, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  br i1 %186, label %187, label %189, !dbg !832

; <label>:187:                                    ; preds = %181
  %188 = add nuw nsw i8 %173, 1, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br label %189, !dbg !835

; <label>:189:                                    ; preds = %176, %187, %181, %172
  %190 = phi i8 [ %188, %187 ], [ %173, %181 ], [ %173, %176 ], [ %173, %172 ], !dbg !836
  %191 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 3, !dbg !838
  %192 = load i8, i8* %191, align 1, !dbg !838, !tbaa !840
  %193 = and i8 %192, 8, !dbg !838
  %194 = icmp eq i8 %193, 0, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %194, label %227, label %195, !dbg !841

; <label>:195:                                    ; preds = %189
  %196 = icmp eq i32 %174, 4, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %196, label %199, label %197, !dbg !843

; <label>:197:                                    ; preds = %195
  %198 = icmp eq i32 %174, 7, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  br i1 %198, label %199, label %227, !dbg !845

; <label>:199:                                    ; preds = %197, %195
  %200 = load i32, i32* @tcp_ticks, align 4, !dbg !846, !tbaa !414
  %201 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !849
  %202 = load i32, i32* %201, align 8, !dbg !849, !tbaa !829
  %203 = sub i32 %200, %202, !dbg !850
  %204 = zext i32 %203 to i64, !dbg !851
  %205 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 54, !dbg !852
  %206 = load i32, i32* %205, align 8, !dbg !852, !tbaa !853
  %207 = zext i32 %206 to i64, !dbg !854
  %208 = add nuw nsw i64 %207, 675000, !dbg !855
  %209 = udiv i64 %208, 500, !dbg !856
  %210 = icmp ult i64 %209, %204, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %210, label %211, label %213, !dbg !858

; <label>:211:                                    ; preds = %199
  %212 = add nsw i8 %190, 1, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br label %227, !dbg !861

; <label>:213:                                    ; preds = %199
  %214 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 58, !dbg !862
  %215 = load i8, i8* %214, align 1, !dbg !862, !tbaa !864
  %216 = zext i8 %215 to i64, !dbg !865
  %217 = mul nuw nsw i64 %216, 75000, !dbg !866
  %218 = add nuw nsw i64 %217, %207, !dbg !867
  %219 = udiv i64 %218, 500, !dbg !868
  %220 = icmp ult i64 %219, %204, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %220, label %221, label %227, !dbg !870

; <label>:221:                                    ; preds = %213
  %222 = tail call signext i8 @tcp_keepalive(%struct.tcp_pcb* nonnull %11) #7, !dbg !871
  %223 = icmp eq i8 %222, 0, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %223, label %224, label %227, !dbg !875

; <label>:224:                                    ; preds = %221
  %225 = load i8, i8* %214, align 1, !dbg !876, !tbaa !864
  %226 = add i8 %225, 1, !dbg !876
  store i8 %226, i8* %214, align 1, !dbg !876, !tbaa !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br label %227, !dbg !878

; <label>:227:                                    ; preds = %189, %211, %221, %224, %213, %197
  %228 = phi i8 [ 1, %211 ], [ 0, %224 ], [ 0, %221 ], [ 0, %213 ], [ 0, %197 ], [ 0, %189 ], !dbg !815
  %229 = phi i8 [ %212, %211 ], [ %190, %224 ], [ %190, %221 ], [ %190, %213 ], [ %190, %197 ], [ %190, %189 ], !dbg !879
  %230 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 46, !dbg !880
  %231 = load %struct.tcp_seg*, %struct.tcp_seg** %230, align 8, !dbg !880, !tbaa !882
  %232 = icmp eq %struct.tcp_seg* %231, null, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %232, label %257, label %233, !dbg !884

; <label>:233:                                    ; preds = %227
  %234 = load i32, i32* @tcp_ticks, align 4, !dbg !885, !tbaa !414
  %235 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !886
  %236 = load i32, i32* %235, align 8, !dbg !886, !tbaa !829
  %237 = sub i32 %234, %236, !dbg !887
  %238 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !888
  %239 = load i16, i16* %238, align 4, !dbg !888, !tbaa !761
  %240 = sext i16 %239 to i32, !dbg !889
  %241 = mul nsw i32 %240, 6, !dbg !890
  %242 = icmp ult i32 %237, %241, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  br i1 %242, label %257, label %243, !dbg !892

; <label>:243:                                    ; preds = %233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br label %244, !dbg !911

; <label>:244:                                    ; preds = %253, %243
  %245 = phi %struct.tcp_seg* [ %247, %253 ], [ %231, %243 ]
  %246 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %245, i64 0, i32 0, !dbg !912
  %247 = load %struct.tcp_seg*, %struct.tcp_seg** %246, align 8, !dbg !912, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %248 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %245, i64 0, i32 1, !dbg !922
  %249 = load %struct.pbuf*, %struct.pbuf** %248, align 8, !dbg !922, !tbaa !926
  %250 = icmp eq %struct.pbuf* %249, null, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %250, label %253, label %251, !dbg !928

; <label>:251:                                    ; preds = %244
  %252 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %249) #7, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br label %253, !dbg !931

; <label>:253:                                    ; preds = %251, %244
  %254 = bitcast %struct.tcp_seg* %245 to i8*, !dbg !932
  tail call void @memp_free(i32 3, i8* %254) #7, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %255 = icmp eq %struct.tcp_seg* %247, null, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br i1 %255, label %256, label %244, !dbg !911, !llvm.loop !937

; <label>:256:                                    ; preds = %253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  store %struct.tcp_seg* null, %struct.tcp_seg** %230, align 8, !dbg !941, !tbaa !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br label %257, !dbg !944

; <label>:257:                                    ; preds = %233, %227, %256
  %258 = load i32, i32* %13, align 8, !dbg !945, !tbaa !457
  %259 = icmp eq i32 %258, 3, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %259, label %260, label %270, !dbg !948

; <label>:260:                                    ; preds = %257
  %261 = load i32, i32* @tcp_ticks, align 4, !dbg !949, !tbaa !414
  %262 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !952
  %263 = load i32, i32* %262, align 8, !dbg !952, !tbaa !829
  %264 = sub i32 %261, %263, !dbg !953
  %265 = icmp ugt i32 %264, 40, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %265, label %266, label %268, !dbg !955

; <label>:266:                                    ; preds = %260
  %267 = add i8 %229, 1, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %268, !dbg !958

; <label>:268:                                    ; preds = %260, %266
  %269 = phi i8 [ %229, %260 ], [ %267, %266 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %280, !dbg !959

; <label>:270:                                    ; preds = %257
  %271 = icmp eq i32 %258, 9, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %271, label %272, label %280, !dbg !959

; <label>:272:                                    ; preds = %270
  %273 = load i32, i32* @tcp_ticks, align 4, !dbg !962, !tbaa !414
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !965
  %275 = load i32, i32* %274, align 8, !dbg !965, !tbaa !829
  %276 = sub i32 %273, %275, !dbg !966
  %277 = icmp ugt i32 %276, 240, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %277, label %278, label %280, !dbg !968

; <label>:278:                                    ; preds = %272
  %279 = add i8 %229, 1, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %280, !dbg !971

; <label>:280:                                    ; preds = %268, %272, %278, %270
  %281 = phi i8 [ %279, %278 ], [ %229, %272 ], [ %229, %270 ], [ %269, %268 ], !dbg !972
  %282 = icmp eq i8 %281, 0, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br i1 %282, label %332, label %283, !dbg !974

; <label>:283:                                    ; preds = %280
  %284 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 53, !dbg !975
  %285 = load void (i8*, i8)*, void (i8*, i8)** %284, align 8, !dbg !975, !tbaa !976
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %11) #8, !dbg !978
  %286 = icmp eq %struct.tcp_pcb* %12, null, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %287 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !982, !tbaa !501
  br i1 %286, label %297, label %288, !dbg !981

; <label>:288:                                    ; preds = %283
  %289 = icmp eq %struct.tcp_pcb* %11, %287, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %289, label %290, label %291, !dbg !987

; <label>:290:                                    ; preds = %288
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !988
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !991
  tail call void @ukplat_terminate(i32 3) #9, !dbg !991
  unreachable

; <label>:291:                                    ; preds = %288
  %292 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !995
  %293 = bitcast %struct.tcp_pcb** %292 to i64*, !dbg !995
  %294 = load i64, i64* %293, align 8, !dbg !995, !tbaa !533
  %295 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %12, i64 0, i32 6, !dbg !996
  %296 = bitcast %struct.tcp_pcb** %295 to i64*, !dbg !997
  store i64 %294, i64* %296, align 8, !dbg !997, !tbaa !533
  br label %304, !dbg !998

; <label>:297:                                    ; preds = %283
  %298 = icmp eq %struct.tcp_pcb* %287, %11, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br i1 %298, label %300, label %299, !dbg !1003

; <label>:299:                                    ; preds = %297
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1004
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1007
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1007
  unreachable

; <label>:300:                                    ; preds = %297
  %301 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !1011
  %302 = bitcast %struct.tcp_pcb** %301 to i64*, !dbg !1011
  %303 = load i64, i64* %302, align 8, !dbg !1011, !tbaa !533
  store i64 %303, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !1012, !tbaa !501
  br label %304

; <label>:304:                                    ; preds = %300, %291
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %305 = icmp eq i8 %228, 0, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %305, label %317, label %306, !dbg !1015

; <label>:306:                                    ; preds = %304
  %307 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 34, !dbg !1016
  %308 = load i32, i32* %307, align 8, !dbg !1016, !tbaa !1018
  %309 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 17, !dbg !1019
  %310 = load i32, i32* %309, align 4, !dbg !1019, !tbaa !1020
  %311 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 0, !dbg !1021
  %312 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 1, !dbg !1022
  %313 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 10, !dbg !1023
  %314 = load i16, i16* %313, align 2, !dbg !1023, !tbaa !1024
  %315 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 11, !dbg !1025
  %316 = load i16, i16* %315, align 8, !dbg !1025, !tbaa !1026
  tail call void @tcp_rst(%struct.tcp_pcb* nonnull %11, i32 %308, i32 %310, %struct.ip_addr* %311, %struct.ip_addr* nonnull %312, i16 zeroext %314, i16 zeroext %316) #7, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br label %317, !dbg !1028

; <label>:317:                                    ; preds = %304, %306
  %318 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 7, !dbg !1029
  %319 = load i8*, i8** %318, align 8, !dbg !1029, !tbaa !1030
  %320 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !1034
  %321 = load %struct.tcp_pcb*, %struct.tcp_pcb** %320, align 8, !dbg !1034, !tbaa !533
  %322 = load i32, i32* %13, align 8, !dbg !1037, !tbaa !457
  %323 = icmp eq i32 %322, 1, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %323, label %324, label %325, !dbg !1038

; <label>:324:                                    ; preds = %317
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1039
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1040
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1040
  unreachable

; <label>:325:                                    ; preds = %317
  %326 = bitcast %struct.tcp_pcb* %11 to i8*, !dbg !1041
  tail call void @memp_free(i32 1, i8* %326) #7, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !1044, !tbaa !485
  %327 = icmp eq void (i8*, i8)* %285, null, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  br i1 %327, label %328, label %329, !dbg !1048

; <label>:328:                                    ; preds = %325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %31

; <label>:329:                                    ; preds = %325
  tail call void %285(i8* %319, i8 signext -13) #7, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  %330 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !1053, !tbaa !485
  %331 = icmp eq i8 %330, 0, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %331, label %31, label %7

; <label>:332:                                    ; preds = %280
  %333 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !1054
  %334 = load %struct.tcp_pcb*, %struct.tcp_pcb** %333, align 8, !dbg !1054, !tbaa !533
  %335 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 13, !dbg !1056
  %336 = load i8, i8* %335, align 4, !dbg !1057, !tbaa !1058
  %337 = add i8 %336, 1, !dbg !1057
  store i8 %337, i8* %335, align 4, !dbg !1057, !tbaa !1058
  %338 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 14, !dbg !1059
  %339 = load i8, i8* %338, align 1, !dbg !1059, !tbaa !1061
  %340 = icmp ult i8 %337, %339, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  br i1 %340, label %31, label %341, !dbg !1063

; <label>:341:                                    ; preds = %332
  store i8 0, i8* %335, align 4, !dbg !1064, !tbaa !1058
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !1066, !tbaa !485
  %342 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 52, !dbg !1067
  %343 = load i8 (i8*, %struct.tcp_pcb*)*, i8 (i8*, %struct.tcp_pcb*)** %342, align 8, !dbg !1067, !tbaa !1070
  %344 = icmp eq i8 (i8*, %struct.tcp_pcb*)* %343, null, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %344, label %345, label %346, !dbg !1071

; <label>:345:                                    ; preds = %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br label %354, !dbg !1073

; <label>:346:                                    ; preds = %341
  %347 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 7, !dbg !1067
  %348 = load i8*, i8** %347, align 8, !dbg !1067, !tbaa !1030
  %349 = tail call signext i8 %343(i8* %348, %struct.tcp_pcb* nonnull %11) #7, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  %350 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !1074, !tbaa !485
  %351 = icmp eq i8 %350, 0, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %351, label %352, label %7, !dbg !1072

; <label>:352:                                    ; preds = %346
  %353 = icmp eq i8 %349, 0, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %353, label %354, label %31, !dbg !1073

; <label>:354:                                    ; preds = %345, %352
  %355 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %11) #7, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br label %31, !dbg !1080

; <label>:356:                                    ; preds = %7, %31, %0
  %357 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1081, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  %358 = icmp eq %struct.tcp_pcb* %357, null, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  br i1 %358, label %407, label %359, !dbg !1082

; <label>:359:                                    ; preds = %356, %403
  %360 = phi %struct.tcp_pcb* [ %405, %403 ], [ %357, %356 ]
  %361 = phi %struct.tcp_pcb* [ %404, %403 ], [ null, %356 ]
  %362 = bitcast %struct.tcp_pcb* %360 to i8*, !dbg !1084
  %363 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %360, i64 0, i32 8, !dbg !1085
  %364 = load i32, i32* %363, align 8, !dbg !1085, !tbaa !457
  %365 = icmp eq i32 %364, 10, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br i1 %365, label %367, label %366, !dbg !1088

; <label>:366:                                    ; preds = %359
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1089
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1092
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1092
  unreachable

; <label>:367:                                    ; preds = %359
  %368 = load i32, i32* @tcp_ticks, align 4, !dbg !1096, !tbaa !414
  %369 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %360, i64 0, i32 16, !dbg !1098
  %370 = load i32, i32* %369, align 8, !dbg !1098, !tbaa !829
  %371 = sub i32 %368, %370, !dbg !1099
  %372 = icmp ugt i32 %371, 240, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  br i1 %372, label %376, label %373, !dbg !1101

; <label>:373:                                    ; preds = %367
  %374 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %360, i64 0, i32 6, !dbg !1103
  %375 = load %struct.tcp_pcb*, %struct.tcp_pcb** %374, align 8, !dbg !1103, !tbaa !533
  br label %403

; <label>:376:                                    ; preds = %367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %360) #8, !dbg !1106
  %377 = icmp eq %struct.tcp_pcb* %361, null, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %378 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1110, !tbaa !501
  br i1 %377, label %389, label %379, !dbg !1109

; <label>:379:                                    ; preds = %376
  %380 = icmp eq %struct.tcp_pcb* %360, %378, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br i1 %380, label %381, label %382, !dbg !1115

; <label>:381:                                    ; preds = %379
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1116
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1119
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1119
  unreachable

; <label>:382:                                    ; preds = %379
  %383 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %360, i64 0, i32 6, !dbg !1123
  %384 = bitcast %struct.tcp_pcb** %383 to i64*, !dbg !1123
  %385 = load i64, i64* %384, align 8, !dbg !1123, !tbaa !533
  %386 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %361, i64 0, i32 6, !dbg !1124
  %387 = bitcast %struct.tcp_pcb** %386 to i64*, !dbg !1125
  store i64 %385, i64* %387, align 8, !dbg !1125, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  %388 = load %struct.tcp_pcb*, %struct.tcp_pcb** %383, align 8, !dbg !1127, !tbaa !533
  br label %397, !dbg !1126

; <label>:389:                                    ; preds = %376
  %390 = icmp eq %struct.tcp_pcb* %378, %360, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br i1 %390, label %392, label %391, !dbg !1132

; <label>:391:                                    ; preds = %389
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !1133
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1136
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1136
  unreachable

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %360, i64 0, i32 6, !dbg !1140
  %394 = bitcast %struct.tcp_pcb** %393 to i64*, !dbg !1140
  %395 = load i64, i64* %394, align 8, !dbg !1140, !tbaa !533
  store i64 %395, i64* bitcast (%struct.tcp_pcb** @tcp_tw_pcbs to i64*), align 8, !dbg !1141, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %396 = inttoptr i64 %395 to %struct.tcp_pcb*
  br label %397

; <label>:397:                                    ; preds = %392, %382
  %398 = phi %struct.tcp_pcb* [ %396, %392 ], [ %388, %382 ], !dbg !1127
  %399 = load i32, i32* %363, align 8, !dbg !1145, !tbaa !457
  %400 = icmp eq i32 %399, 1, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %400, label %401, label %402, !dbg !1146

; <label>:401:                                    ; preds = %397
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1147
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1148
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1148
  unreachable

; <label>:402:                                    ; preds = %397
  tail call void @memp_free(i32 1, i8* %362) #7, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br label %403, !dbg !1151

; <label>:403:                                    ; preds = %373, %402
  %404 = phi %struct.tcp_pcb* [ %361, %402 ], [ %360, %373 ], !dbg !1152
  %405 = phi %struct.tcp_pcb* [ %398, %402 ], [ %375, %373 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  %406 = icmp eq %struct.tcp_pcb* %405, null, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  br i1 %406, label %407, label %359, !dbg !1082, !llvm.loop !1153

; <label>:407:                                    ; preds = %403, %356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  ret void, !dbg !1155
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_close(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1156 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  br i1 %2, label %3, label %4, !dbg !1165

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1166
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1169
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1169
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1173
  %6 = load i32, i32* %5, align 8, !dbg !1173, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %7, label %12, label %8, !dbg !1176

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1177
  %10 = load i16, i16* %9, align 2, !dbg !1177, !tbaa !513
  %11 = or i16 %10, 16, !dbg !1177
  store i16 %11, i16* %9, align 2, !dbg !1177, !tbaa !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  br label %12, !dbg !1180

; <label>:12:                                     ; preds = %4, %8
  %13 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #8, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  ret i8 %13, !dbg !1182
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb*, i8 zeroext) unnamed_addr #0 !dbg !1183 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br i1 %3, label %4, label %5, !dbg !1210

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1211
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1214
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1214
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8 %1, 0, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8
  %8 = load i32, i32* %7, align 8, !dbg !1220, !tbaa !457
  br i1 %6, label %80, label %9, !dbg !1219

; <label>:9:                                      ; preds = %5
  %10 = icmp eq i32 %8, 4, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br i1 %10, label %13, label %11, !dbg !1222

; <label>:11:                                     ; preds = %9
  %12 = icmp eq i32 %8, 7, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %12, label %13, label %80, !dbg !1224

; <label>:13:                                     ; preds = %11, %9
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !1225
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !1225, !tbaa !537
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br i1 %16, label %20, label %17, !dbg !1227

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  %19 = load i16, i16* %18, align 2, !dbg !1228, !tbaa !513
  br label %29, !dbg !1227

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !1231
  %22 = load i32, i32* %21, align 8, !dbg !1231, !tbaa !1232
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1233
  %24 = load i16, i16* %23, align 2, !dbg !1233, !tbaa !513
  %25 = and i16 %24, 256, !dbg !1233
  %26 = icmp eq i16 %25, 0, !dbg !1233
  %27 = select i1 %26, i32 65535, i32 262142, !dbg !1233
  %28 = icmp eq i32 %22, %27, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %28, label %80, label %29, !dbg !1235

; <label>:29:                                     ; preds = %17, %20
  %30 = phi i16 [ %19, %17 ], [ %24, %20 ], !dbg !1228
  %31 = and i16 %30, 16, !dbg !1228
  %32 = icmp eq i16 %31, 0, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br i1 %32, label %33, label %34, !dbg !1236

; <label>:33:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1237
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1240
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1240
  unreachable

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1244
  %36 = load i32, i32* %35, align 8, !dbg !1244, !tbaa !1018
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1245
  %38 = load i32, i32* %37, align 4, !dbg !1245, !tbaa !1020
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1246
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1247
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1248
  %42 = load i16, i16* %41, align 2, !dbg !1248, !tbaa !1024
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1249
  %44 = load i16, i16* %43, align 8, !dbg !1249, !tbaa !1026
  tail call void @tcp_rst(%struct.tcp_pcb* nonnull %0, i32 %36, i32 %38, %struct.ip_addr* nonnull %39, %struct.ip_addr* nonnull %40, i16 zeroext %42, i16 zeroext %44) #7, !dbg !1250
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %0) #8, !dbg !1251
  %45 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !1252, !tbaa !501
  %46 = icmp eq %struct.tcp_pcb* %45, %0, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  br i1 %46, label %47, label %51, !dbg !1253

; <label>:47:                                     ; preds = %34
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1254
  %49 = bitcast %struct.tcp_pcb** %48 to i64*, !dbg !1254
  %50 = load i64, i64* %49, align 8, !dbg !1254, !tbaa !533
  store i64 %50, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !1254, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  br label %68, !dbg !1254

; <label>:51:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %52 = icmp eq %struct.tcp_pcb* %45, null, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %52, label %66, label %53, !dbg !1257

; <label>:53:                                     ; preds = %51, %64
  %54 = phi %struct.tcp_pcb* [ %56, %64 ], [ %45, %51 ]
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %54, i64 0, i32 6, !dbg !1261
  %56 = load %struct.tcp_pcb*, %struct.tcp_pcb** %55, align 8, !dbg !1261, !tbaa !533
  %57 = icmp eq %struct.tcp_pcb* %56, %0, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %57, label %58, label %64, !dbg !1264

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %54, i64 0, i32 6, !dbg !1261
  %60 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1265
  %61 = bitcast %struct.tcp_pcb** %60 to i64*, !dbg !1265
  %62 = load i64, i64* %61, align 8, !dbg !1265, !tbaa !533
  %63 = bitcast %struct.tcp_pcb** %59 to i64*, !dbg !1265
  store i64 %62, i64* %63, align 8, !dbg !1265, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br label %66, !dbg !1265

; <label>:64:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  %65 = icmp eq %struct.tcp_pcb* %56, null, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %65, label %66, label %53, !dbg !1257, !llvm.loop !1267

; <label>:66:                                     ; preds = %64, %51, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %67 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1253
  br label %68

; <label>:68:                                     ; preds = %66, %47
  %69 = phi %struct.tcp_pcb** [ %67, %66 ], [ %48, %47 ], !dbg !1253
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %69, align 8, !dbg !1253, !tbaa !533
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1268, !tbaa !485
  %70 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_input_pcb, align 8, !dbg !1269, !tbaa !501
  %71 = icmp eq %struct.tcp_pcb* %70, %0, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br i1 %71, label %72, label %73, !dbg !1272

; <label>:72:                                     ; preds = %68
  tail call void @tcp_trigger_input_pcb_close() #7, !dbg !1273
  br label %79, !dbg !1275

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %7, align 8, !dbg !1279, !tbaa !457
  %75 = icmp eq i32 %74, 1, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  br i1 %75, label %76, label %77, !dbg !1280

; <label>:76:                                     ; preds = %73
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1281
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1282
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1282
  unreachable

; <label>:77:                                     ; preds = %73
  %78 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1283
  tail call void @memp_free(i32 1, i8* %78) #7, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br label %79

; <label>:79:                                     ; preds = %77, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %168, !dbg !1286

; <label>:80:                                     ; preds = %5, %20, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  switch i32 %8, label %165 [
    i32 0, label %81
    i32 1, label %113
    i32 2, label %159
  ], !dbg !1287

; <label>:81:                                     ; preds = %80
  %82 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1288
  %83 = load i16, i16* %82, align 2, !dbg !1288, !tbaa !1024
  %84 = icmp eq i16 %83, 0, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br i1 %84, label %111, label %85, !dbg !1290

; <label>:85:                                     ; preds = %81
  %86 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1291, !tbaa !501
  %87 = icmp eq %struct.tcp_pcb* %86, %0, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  br i1 %87, label %88, label %92, !dbg !1292

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1293
  %90 = bitcast %struct.tcp_pcb** %89 to i64*, !dbg !1293
  %91 = load i64, i64* %90, align 8, !dbg !1293, !tbaa !533
  store i64 %91, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1293, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br label %109, !dbg !1297

; <label>:92:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  %93 = icmp eq %struct.tcp_pcb* %86, null, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %93, label %107, label %94, !dbg !1299

; <label>:94:                                     ; preds = %92, %105
  %95 = phi %struct.tcp_pcb* [ %97, %105 ], [ %86, %92 ]
  %96 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %95, i64 0, i32 6, !dbg !1303
  %97 = load %struct.tcp_pcb*, %struct.tcp_pcb** %96, align 8, !dbg !1303, !tbaa !533
  %98 = icmp eq %struct.tcp_pcb* %97, %0, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br i1 %98, label %99, label %105, !dbg !1306

; <label>:99:                                     ; preds = %94
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %95, i64 0, i32 6, !dbg !1303
  %101 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1307
  %102 = bitcast %struct.tcp_pcb** %101 to i64*, !dbg !1307
  %103 = load i64, i64* %102, align 8, !dbg !1307, !tbaa !533
  %104 = bitcast %struct.tcp_pcb** %100 to i64*, !dbg !1307
  store i64 %103, i64* %104, align 8, !dbg !1307, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br label %107, !dbg !1307

; <label>:105:                                    ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  %106 = icmp eq %struct.tcp_pcb* %97, null, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %106, label %107, label %94, !dbg !1299, !llvm.loop !1309

; <label>:107:                                    ; preds = %105, %92, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1292
  br label %109, !dbg !1297

; <label>:109:                                    ; preds = %88, %107
  %110 = phi %struct.tcp_pcb** [ %108, %107 ], [ %89, %88 ]
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %110, align 8, !dbg !1292, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br label %111, !dbg !1297

; <label>:111:                                    ; preds = %109, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  %112 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1311
  tail call void @memp_free(i32 1, i8* %112) #7, !dbg !1312
  br label %167, !dbg !1313

; <label>:113:                                    ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %114 = bitcast %struct.tcp_pcb* %0 to %struct.tcp_pcb_listen*
  %115 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1332, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %116 = icmp eq %struct.tcp_pcb* %115, null, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %116, label %127, label %117, !dbg !1352

; <label>:117:                                    ; preds = %113, %123
  %118 = phi %struct.tcp_pcb* [ %125, %123 ], [ %115, %113 ]
  %119 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %118, i64 0, i32 48, !dbg !1353
  %120 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %119, align 8, !dbg !1353, !tbaa !1356
  %121 = icmp eq %struct.tcp_pcb_listen* %120, %114, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %121, label %122, label %123, !dbg !1358

; <label>:122:                                    ; preds = %117
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %119, align 8, !dbg !1359, !tbaa !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br label %123, !dbg !1361

; <label>:123:                                    ; preds = %122, %117
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %118, i64 0, i32 6, !dbg !1362
  %125 = load %struct.tcp_pcb*, %struct.tcp_pcb** %124, align 8, !dbg !1362, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %126 = icmp eq %struct.tcp_pcb* %125, null, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %126, label %127, label %117, !dbg !1352, !llvm.loop !1364

; <label>:127:                                    ; preds = %123, %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %128 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !1332, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %129 = icmp eq %struct.tcp_pcb* %128, null, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %129, label %140, label %130, !dbg !1352

; <label>:130:                                    ; preds = %127, %136
  %131 = phi %struct.tcp_pcb* [ %138, %136 ], [ %128, %127 ]
  %132 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %131, i64 0, i32 48, !dbg !1353
  %133 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %132, align 8, !dbg !1353, !tbaa !1356
  %134 = icmp eq %struct.tcp_pcb_listen* %133, %114, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %134, label %135, label %136, !dbg !1358

; <label>:135:                                    ; preds = %130
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %132, align 8, !dbg !1359, !tbaa !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br label %136, !dbg !1361

; <label>:136:                                    ; preds = %135, %130
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %131, i64 0, i32 6, !dbg !1362
  %138 = load %struct.tcp_pcb*, %struct.tcp_pcb** %137, align 8, !dbg !1362, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %139 = icmp eq %struct.tcp_pcb* %138, null, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %139, label %140, label %130, !dbg !1352, !llvm.loop !1364

; <label>:140:                                    ; preds = %136, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %141 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1332, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %142 = icmp eq %struct.tcp_pcb* %141, null, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %142, label %153, label %143, !dbg !1352

; <label>:143:                                    ; preds = %140, %149
  %144 = phi %struct.tcp_pcb* [ %151, %149 ], [ %141, %140 ]
  %145 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %144, i64 0, i32 48, !dbg !1353
  %146 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %145, align 8, !dbg !1353, !tbaa !1356
  %147 = icmp eq %struct.tcp_pcb_listen* %146, %114, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %147, label %148, label %149, !dbg !1358

; <label>:148:                                    ; preds = %143
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %145, align 8, !dbg !1359, !tbaa !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br label %149, !dbg !1361

; <label>:149:                                    ; preds = %148, %143
  %150 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %144, i64 0, i32 6, !dbg !1362
  %151 = load %struct.tcp_pcb*, %struct.tcp_pcb** %150, align 8, !dbg !1362, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %152 = icmp eq %struct.tcp_pcb* %151, null, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %152, label %153, label %143, !dbg !1352, !llvm.loop !1364

; <label>:153:                                    ; preds = %149, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), %struct.tcp_pcb* nonnull %0) #8, !dbg !1370
  %154 = load i32, i32* %7, align 8, !dbg !1376, !tbaa !457
  %155 = icmp eq i32 %154, 1, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  br i1 %155, label %156, label %157, !dbg !1379

; <label>:156:                                    ; preds = %153
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0)) #7, !dbg !1380
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1383
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1383
  unreachable

; <label>:157:                                    ; preds = %153
  %158 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1387
  tail call void @memp_free(i32 2, i8* %158) #7, !dbg !1388
  br label %167, !dbg !1389

; <label>:159:                                    ; preds = %80
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_active_pcbs, %struct.tcp_pcb* nonnull %0) #8, !dbg !1390
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1390, !tbaa !485
  %160 = load i32, i32* %7, align 8, !dbg !1394, !tbaa !457
  %161 = icmp eq i32 %160, 1, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  br i1 %161, label %162, label %163, !dbg !1395

; <label>:162:                                    ; preds = %159
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1396
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1397
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1397
  unreachable

; <label>:163:                                    ; preds = %159
  %164 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1398
  tail call void @memp_free(i32 1, i8* %164) #7, !dbg !1399
  br label %167, !dbg !1400

; <label>:165:                                    ; preds = %80
  %166 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %0) #8, !dbg !1401
  br label %168, !dbg !1402

; <label>:167:                                    ; preds = %163, %157, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br label %168, !dbg !1404

; <label>:168:                                    ; preds = %167, %165, %79
  %169 = phi i8 [ 0, %79 ], [ %166, %165 ], [ 0, %167 ], !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  ret i8 %169, !dbg !1407
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_shutdown(%struct.tcp_pcb*, i32, i32) local_unnamed_addr #0 !dbg !1408 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br i1 %4, label %5, label %6, !dbg !1421

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1422
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1425
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1425
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1429
  %8 = load i32, i32* %7, align 8, !dbg !1429, !tbaa !457
  %9 = icmp eq i32 %8, 1, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %9, label %31, label %10, !dbg !1432

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %1, 0, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  br i1 %11, label %26, label %12, !dbg !1435

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1436
  %14 = load i16, i16* %13, align 2, !dbg !1436, !tbaa !513
  %15 = or i16 %14, 16, !dbg !1436
  store i16 %15, i16* %13, align 2, !dbg !1436, !tbaa !513
  %16 = icmp eq i32 %2, 0, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  br i1 %16, label %19, label %17, !dbg !1441

; <label>:17:                                     ; preds = %12
  %18 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #8, !dbg !1442
  br label %31, !dbg !1444

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !1445
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8, !dbg !1445, !tbaa !537
  %22 = icmp eq %struct.pbuf* %21, null, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %22, label %25, label %23, !dbg !1448

; <label>:23:                                     ; preds = %19
  %24 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %21) #7, !dbg !1449
  store %struct.pbuf* null, %struct.pbuf** %20, align 8, !dbg !1451, !tbaa !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br label %25, !dbg !1452

; <label>:25:                                     ; preds = %19, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %31, !dbg !1453

; <label>:26:                                     ; preds = %10
  %27 = icmp eq i32 %2, 0, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br i1 %27, label %31, label %28, !dbg !1453

; <label>:28:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  switch i32 %8, label %31 [
    i32 3, label %29
    i32 4, label %29
    i32 7, label %29
  ], !dbg !1456

; <label>:29:                                     ; preds = %28, %28, %28
  %30 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 0) #8, !dbg !1458
  br label %31, !dbg !1460

; <label>:31:                                     ; preds = %26, %25, %28, %6, %29, %17
  %32 = phi i8 [ %18, %17 ], [ %30, %29 ], [ -11, %6 ], [ -11, %28 ], [ 0, %25 ], [ 0, %26 ], !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  ret i8 %32, !dbg !1464
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_abandon(%struct.tcp_pcb*, i32) local_unnamed_addr #0 !dbg !1465 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %3, label %4, label %5, !dbg !1493

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1494
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1497
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1497
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1501
  %7 = load i32, i32* %6, align 8, !dbg !1501, !tbaa !457
  %8 = icmp eq i32 %7, 1, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  br i1 %8, label %9, label %10, !dbg !1504

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1505
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1508
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1508
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i32 %7, 10, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br i1 %11, label %12, label %18, !dbg !1513

; <label>:12:                                     ; preds = %10
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_tw_pcbs, %struct.tcp_pcb* nonnull %0) #8, !dbg !1514
  %13 = load i32, i32* %6, align 8, !dbg !1518, !tbaa !457
  %14 = icmp eq i32 %13, 1, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %14, label %15, label %16, !dbg !1519

; <label>:15:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1520
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1521
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1521
  unreachable

; <label>:16:                                     ; preds = %12
  %17 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1522
  tail call void @memp_free(i32 1, i8* %17) #7, !dbg !1523
  br label %133, !dbg !1524

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1527
  %20 = load i32, i32* %19, align 8, !dbg !1527, !tbaa !1018
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1529
  %22 = load i32, i32* %21, align 4, !dbg !1529, !tbaa !1020
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 53, !dbg !1531
  %24 = load void (i8*, i8)*, void (i8*, i8)** %23, align 8, !dbg !1531, !tbaa !976
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !1533
  %26 = load i8*, i8** %25, align 8, !dbg !1533, !tbaa !1030
  %27 = icmp eq i32 %7, 0, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1537
  %29 = load i16, i16* %28, align 2, !dbg !1537, !tbaa !1024
  br i1 %27, label %30, label %58, !dbg !1536

; <label>:30:                                     ; preds = %18
  %31 = icmp eq i16 %29, 0, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br i1 %31, label %62, label %32, !dbg !1540

; <label>:32:                                     ; preds = %30
  %33 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1541, !tbaa !501
  %34 = icmp eq %struct.tcp_pcb* %33, %0, !dbg !1541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  br i1 %34, label %35, label %39, !dbg !1542

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1543
  %37 = bitcast %struct.tcp_pcb** %36 to i64*, !dbg !1543
  %38 = load i64, i64* %37, align 8, !dbg !1543, !tbaa !533
  store i64 %38, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1543, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br label %56, !dbg !1543

; <label>:39:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  %40 = icmp eq %struct.tcp_pcb* %33, null, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br i1 %40, label %54, label %41, !dbg !1546

; <label>:41:                                     ; preds = %39, %52
  %42 = phi %struct.tcp_pcb* [ %44, %52 ], [ %33, %39 ]
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %42, i64 0, i32 6, !dbg !1550
  %44 = load %struct.tcp_pcb*, %struct.tcp_pcb** %43, align 8, !dbg !1550, !tbaa !533
  %45 = icmp eq %struct.tcp_pcb* %44, %0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br i1 %45, label %46, label %52, !dbg !1553

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %42, i64 0, i32 6, !dbg !1550
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1554
  %49 = bitcast %struct.tcp_pcb** %48 to i64*, !dbg !1554
  %50 = load i64, i64* %49, align 8, !dbg !1554, !tbaa !533
  %51 = bitcast %struct.tcp_pcb** %47 to i64*, !dbg !1554
  store i64 %50, i64* %51, align 8, !dbg !1554, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  br label %54, !dbg !1554

; <label>:52:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  %53 = icmp eq %struct.tcp_pcb* %44, null, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br i1 %53, label %54, label %41, !dbg !1546, !llvm.loop !1556

; <label>:54:                                     ; preds = %52, %39, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1542
  br label %56

; <label>:56:                                     ; preds = %54, %35
  %57 = phi %struct.tcp_pcb** [ %55, %54 ], [ %36, %35 ], !dbg !1542
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %57, align 8, !dbg !1542, !tbaa !533
  br label %59, !dbg !1557

; <label>:58:                                     ; preds = %18
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_active_pcbs, %struct.tcp_pcb* nonnull %0) #8, !dbg !1558
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1558, !tbaa !485
  br label %59

; <label>:59:                                     ; preds = %58, %56
  %60 = phi i16 [ %29, %58 ], [ 0, %56 ]
  %61 = phi i32 [ %1, %58 ], [ 0, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %62, !dbg !1560

; <label>:62:                                     ; preds = %59, %30
  %63 = phi i16 [ 0, %30 ], [ %60, %59 ], !dbg !1537
  %64 = phi i32 [ 0, %30 ], [ %61, %59 ], !dbg !1537
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1560
  %66 = load %struct.tcp_seg*, %struct.tcp_seg** %65, align 8, !dbg !1560, !tbaa !668
  %67 = icmp eq %struct.tcp_seg* %66, null, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br i1 %67, label %82, label %68, !dbg !1563

; <label>:68:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br label %69, !dbg !1567

; <label>:69:                                     ; preds = %68, %78
  %70 = phi %struct.tcp_seg* [ %72, %78 ], [ %66, %68 ]
  %71 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %70, i64 0, i32 0, !dbg !1568
  %72 = load %struct.tcp_seg*, %struct.tcp_seg** %71, align 8, !dbg !1568, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  %73 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %70, i64 0, i32 1, !dbg !1573
  %74 = load %struct.pbuf*, %struct.pbuf** %73, align 8, !dbg !1573, !tbaa !926
  %75 = icmp eq %struct.pbuf* %74, null, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %75, label %78, label %76, !dbg !1575

; <label>:76:                                     ; preds = %69
  %77 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %74) #7, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  br label %78, !dbg !1577

; <label>:78:                                     ; preds = %76, %69
  %79 = bitcast %struct.tcp_seg* %70 to i8*, !dbg !1578
  tail call void @memp_free(i32 3, i8* %79) #7, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  %80 = icmp eq %struct.tcp_seg* %72, null, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %80, label %81, label %69, !dbg !1567, !llvm.loop !937

; <label>:81:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  br label %82, !dbg !1584

; <label>:82:                                     ; preds = %62, %81
  %83 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1585
  %84 = load %struct.tcp_seg*, %struct.tcp_seg** %83, align 8, !dbg !1585, !tbaa !680
  %85 = icmp eq %struct.tcp_seg* %84, null, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  br i1 %85, label %100, label %86, !dbg !1588

; <label>:86:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br label %87, !dbg !1592

; <label>:87:                                     ; preds = %86, %96
  %88 = phi %struct.tcp_seg* [ %90, %96 ], [ %84, %86 ]
  %89 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %88, i64 0, i32 0, !dbg !1593
  %90 = load %struct.tcp_seg*, %struct.tcp_seg** %89, align 8, !dbg !1593, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  %91 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %88, i64 0, i32 1, !dbg !1598
  %92 = load %struct.pbuf*, %struct.pbuf** %91, align 8, !dbg !1598, !tbaa !926
  %93 = icmp eq %struct.pbuf* %92, null, !dbg !1599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br i1 %93, label %96, label %94, !dbg !1600

; <label>:94:                                     ; preds = %87
  %95 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %92) #7, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  br label %96, !dbg !1602

; <label>:96:                                     ; preds = %94, %87
  %97 = bitcast %struct.tcp_seg* %88 to i8*, !dbg !1603
  tail call void @memp_free(i32 3, i8* %97) #7, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  %98 = icmp eq %struct.tcp_seg* %90, null, !dbg !1607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %98, label %99, label %87, !dbg !1592, !llvm.loop !937

; <label>:99:                                     ; preds = %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  br label %100, !dbg !1609

; <label>:100:                                    ; preds = %82, %99
  %101 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !1610
  %102 = load %struct.tcp_seg*, %struct.tcp_seg** %101, align 8, !dbg !1610, !tbaa !882
  %103 = icmp eq %struct.tcp_seg* %102, null, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br i1 %103, label %118, label %104, !dbg !1613

; <label>:104:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br label %105, !dbg !1617

; <label>:105:                                    ; preds = %104, %114
  %106 = phi %struct.tcp_seg* [ %108, %114 ], [ %102, %104 ]
  %107 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %106, i64 0, i32 0, !dbg !1618
  %108 = load %struct.tcp_seg*, %struct.tcp_seg** %107, align 8, !dbg !1618, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  %109 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %106, i64 0, i32 1, !dbg !1623
  %110 = load %struct.pbuf*, %struct.pbuf** %109, align 8, !dbg !1623, !tbaa !926
  %111 = icmp eq %struct.pbuf* %110, null, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %111, label %114, label %112, !dbg !1625

; <label>:112:                                    ; preds = %105
  %113 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %110) #7, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br label %114, !dbg !1627

; <label>:114:                                    ; preds = %112, %105
  %115 = bitcast %struct.tcp_seg* %106 to i8*, !dbg !1628
  tail call void @memp_free(i32 3, i8* %115) #7, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  %116 = icmp eq %struct.tcp_seg* %108, null, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br i1 %116, label %117, label %105, !dbg !1617, !llvm.loop !937

; <label>:117:                                    ; preds = %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br label %118, !dbg !1634

; <label>:118:                                    ; preds = %100, %117
  %119 = icmp eq i32 %64, 0, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  br i1 %119, label %125, label %120, !dbg !1637

; <label>:120:                                    ; preds = %118
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1638
  %122 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1640
  %123 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1641
  %124 = load i16, i16* %123, align 8, !dbg !1641, !tbaa !1026
  tail call void @tcp_rst(%struct.tcp_pcb* %0, i32 %20, i32 %22, %struct.ip_addr* %121, %struct.ip_addr* nonnull %122, i16 zeroext %63, i16 zeroext %124) #7, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  br label %125, !dbg !1643

; <label>:125:                                    ; preds = %118, %120
  %126 = load i32, i32* %6, align 8, !dbg !1647, !tbaa !457
  %127 = icmp eq i32 %126, 1, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br i1 %127, label %128, label %129, !dbg !1648

; <label>:128:                                    ; preds = %125
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1649
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1650
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1650
  unreachable

; <label>:129:                                    ; preds = %125
  %130 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1651
  tail call void @memp_free(i32 1, i8* %130) #7, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  %131 = icmp eq void (i8*, i8)* %24, null, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  br i1 %131, label %134, label %132, !dbg !1657

; <label>:132:                                    ; preds = %129
  tail call void %24(i8* %26, i8 signext -13) #7, !dbg !1654
  br label %133, !dbg !1654

; <label>:133:                                    ; preds = %16, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br label %134

; <label>:134:                                    ; preds = %133, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  ret void, !dbg !1659
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local void @tcp_pcb_remove(%struct.tcp_pcb**, %struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1660 {
  %3 = icmp eq %struct.tcp_pcb* %1, null, !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  br i1 %3, label %4, label %5, !dbg !1675

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1676
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1679
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1679
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.tcp_pcb** %0, null, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  br i1 %6, label %7, label %8, !dbg !1686

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1687
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1690
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1690
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = load %struct.tcp_pcb*, %struct.tcp_pcb** %0, align 8, !dbg !1694, !tbaa !501
  %10 = icmp eq %struct.tcp_pcb* %9, %1, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  br i1 %10, label %11, label %16, !dbg !1695

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1696
  %13 = bitcast %struct.tcp_pcb** %12 to i64*, !dbg !1696
  %14 = load i64, i64* %13, align 8, !dbg !1696, !tbaa !533
  %15 = bitcast %struct.tcp_pcb** %0 to i64*, !dbg !1696
  store i64 %14, i64* %15, align 8, !dbg !1696, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br label %33, !dbg !1696

; <label>:16:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  %17 = icmp eq %struct.tcp_pcb* %9, null, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br i1 %17, label %31, label %18, !dbg !1699

; <label>:18:                                     ; preds = %16, %29
  %19 = phi %struct.tcp_pcb* [ %21, %29 ], [ %9, %16 ]
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 6, !dbg !1703
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** %20, align 8, !dbg !1703, !tbaa !533
  %22 = icmp eq %struct.tcp_pcb* %21, %1, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  br i1 %22, label %23, label %29, !dbg !1706

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 6, !dbg !1703
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1707
  %26 = bitcast %struct.tcp_pcb** %25 to i64*, !dbg !1707
  %27 = load i64, i64* %26, align 8, !dbg !1707, !tbaa !533
  %28 = bitcast %struct.tcp_pcb** %24 to i64*, !dbg !1707
  store i64 %27, i64* %28, align 8, !dbg !1707, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  br label %31, !dbg !1707

; <label>:29:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  %30 = icmp eq %struct.tcp_pcb* %21, null, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br i1 %30, label %31, label %18, !dbg !1699, !llvm.loop !1709

; <label>:31:                                     ; preds = %29, %16, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1695
  br label %33

; <label>:33:                                     ; preds = %31, %11
  %34 = phi %struct.tcp_pcb** [ %32, %31 ], [ %12, %11 ], !dbg !1695
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %34, align 8, !dbg !1695, !tbaa !533
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %1) #8, !dbg !1710
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 8, !dbg !1711
  %36 = load i32, i32* %35, align 8, !dbg !1711, !tbaa !457
  %37 = icmp eq i32 %36, 10, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  br i1 %37, label %38, label %39, !dbg !1714

; <label>:38:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  br label %54, !dbg !1715

; <label>:39:                                     ; preds = %33
  %40 = icmp eq i32 %36, 1, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  br i1 %40, label %41, label %42, !dbg !1717

; <label>:41:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  br label %69, !dbg !1715

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 12, !dbg !1718
  %44 = load i16, i16* %43, align 2, !dbg !1718, !tbaa !513
  %45 = and i16 %44, 1, !dbg !1719
  %46 = icmp eq i16 %45, 0, !dbg !1719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  br i1 %46, label %51, label %47, !dbg !1720

; <label>:47:                                     ; preds = %42
  %48 = or i16 %44, 2, !dbg !1721
  store i16 %48, i16* %43, align 2, !dbg !1721, !tbaa !513
  %49 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %1) #7, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  %50 = load i32, i32* %35, align 8, !dbg !1726, !tbaa !457
  br label %51, !dbg !1725

; <label>:51:                                     ; preds = %42, %47
  %52 = phi i32 [ %36, %42 ], [ %50, %47 ], !dbg !1726
  %53 = icmp eq i32 %52, 1, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  br i1 %53, label %69, label %54, !dbg !1715

; <label>:54:                                     ; preds = %38, %51
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 44, !dbg !1729
  %56 = load %struct.tcp_seg*, %struct.tcp_seg** %55, align 8, !dbg !1729, !tbaa !680
  %57 = icmp eq %struct.tcp_seg* %56, null, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br i1 %57, label %59, label %58, !dbg !1733

; <label>:58:                                     ; preds = %54
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !1734
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1737
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1737
  unreachable

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 45, !dbg !1741
  %61 = load %struct.tcp_seg*, %struct.tcp_seg** %60, align 8, !dbg !1741, !tbaa !668
  %62 = icmp eq %struct.tcp_seg* %61, null, !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1744
  br i1 %62, label %64, label %63, !dbg !1744

; <label>:63:                                     ; preds = %59
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1745
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1748
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1748
  unreachable

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 46, !dbg !1752
  %66 = load %struct.tcp_seg*, %struct.tcp_seg** %65, align 8, !dbg !1752, !tbaa !882
  %67 = icmp eq %struct.tcp_seg* %66, null, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br i1 %67, label %69, label %68, !dbg !1755

; <label>:68:                                     ; preds = %64
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1756
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1759
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1759
  unreachable

; <label>:69:                                     ; preds = %41, %51, %64
  store i32 0, i32* %35, align 8, !dbg !1763, !tbaa !457
  %70 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 10, !dbg !1764
  store i16 0, i16* %70, align 2, !dbg !1765, !tbaa !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  ret void, !dbg !1766
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local void @tcp_segs_free(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !901 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %2, label %15, label %3, !dbg !938

; <label>:3:                                      ; preds = %1, %12
  %4 = phi %struct.tcp_seg* [ %6, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %4, i64 0, i32 0, !dbg !1769
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !1769, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  %7 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %4, i64 0, i32 1, !dbg !1774
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1774, !tbaa !926
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br i1 %9, label %12, label %10, !dbg !1776

; <label>:10:                                     ; preds = %3
  %11 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %8) #7, !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br label %12, !dbg !1778

; <label>:12:                                     ; preds = %3, %10
  %13 = bitcast %struct.tcp_seg* %4 to i8*, !dbg !1779
  tail call void @memp_free(i32 3, i8* %13) #7, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  %14 = icmp eq %struct.tcp_seg* %6, null, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %14, label %15, label %3, !dbg !938, !llvm.loop !937

; <label>:15:                                     ; preds = %12, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  ret void, !dbg !1783
}

; Function Attrs: noredzone
declare dso_local void @tcp_rst(%struct.tcp_pcb*, i32, i32, %struct.ip_addr*, %struct.ip_addr*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_abort(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1784 {
  tail call void @tcp_abandon(%struct.tcp_pcb* %0, i32 1) #8, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  ret void, !dbg !1789
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_bind(%struct.tcp_pcb*, %struct.ip_addr* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1790 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = bitcast %struct.ip_addr* %4 to i8*, !dbg !1877
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1877
  %6 = icmp eq %struct.ip_addr* %1, null, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br i1 %6, label %7, label %8, !dbg !1880

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  br label %8, !dbg !1881

; <label>:8:                                      ; preds = %3, %7
  %9 = phi %struct.ip_addr* [ @ip_addr_any, %7 ], [ %1, %3 ]
  %10 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  br i1 %10, label %11, label %12, !dbg !1886

; <label>:11:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1887
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1890
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1890
  unreachable

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1894
  %14 = load i32, i32* %13, align 8, !dbg !1894, !tbaa !457
  %15 = icmp eq i32 %14, 0, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %15, label %17, label %16, !dbg !1897

; <label>:16:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1898
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1901
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1901
  unreachable

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !1905
  %19 = load i8, i8* %18, align 1, !dbg !1905, !tbaa !840
  %20 = and i8 %19, 4, !dbg !1905
  %21 = icmp eq i8 %20, 0, !dbg !1905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  br i1 %21, label %23, label %22, !dbg !1907

; <label>:22:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br label %23, !dbg !1908

; <label>:23:                                     ; preds = %17, %22
  %24 = phi i64 [ 3, %22 ], [ 4, %17 ]
  %25 = icmp eq %struct.ip_addr* %9, null, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  br i1 %25, label %72, label %26, !dbg !1910

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 1, !dbg !1910
  %28 = load i8, i8* %27, align 4, !dbg !1910, !tbaa !1911
  %29 = icmp eq i8 %28, 6, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  br i1 %29, label %30, label %72, !dbg !1912

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 1, !dbg !1913
  %32 = load i8, i8* %31, align 4, !dbg !1913, !tbaa !485
  %33 = icmp eq i8 %32, 0, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  br i1 %33, label %34, label %72, !dbg !1913

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1913
  %36 = load i32, i32* %35, align 4, !dbg !1913, !tbaa !485
  %37 = and i32 %36, 49407, !dbg !1913
  %38 = icmp eq i32 %37, 33022, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  br i1 %38, label %39, label %72, !dbg !1914

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !1915
  store i8 6, i8* %40, align 4, !dbg !1915, !tbaa !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1919
  store i32 %36, i32* %41, align 4, !dbg !1919, !tbaa !485
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1919
  %43 = load i32, i32* %42, align 4, !dbg !1919, !tbaa !485
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1919
  store i32 %43, i32* %44, align 4, !dbg !1919, !tbaa !485
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1919
  %46 = load i32, i32* %45, align 4, !dbg !1919, !tbaa !485
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1919
  store i32 %46, i32* %47, align 4, !dbg !1919, !tbaa !485
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1919
  %49 = load i32, i32* %48, align 4, !dbg !1919, !tbaa !485
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1919
  store i32 %49, i32* %50, align 4, !dbg !1919, !tbaa !485
  %51 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 1, !dbg !1919
  store i8 0, i8* %51, align 4, !dbg !1919, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  %52 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, !dbg !1924
  %53 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %52, %struct.ip6_addr* nonnull %52) #7, !dbg !1924
  %54 = icmp eq %struct.netif* %53, null, !dbg !1925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1924
  br i1 %54, label %71, label %55, !dbg !1924

; <label>:55:                                     ; preds = %39
  %56 = load i32, i32* %41, align 4, !dbg !1927, !tbaa !485
  %57 = zext i32 %56 to i64, !dbg !1927
  %58 = and i64 %57, 49407, !dbg !1927
  %59 = icmp eq i64 %58, 33022, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br i1 %59, label %65, label %60, !dbg !1927

; <label>:60:                                     ; preds = %55
  %61 = and i64 %57, 36863, !dbg !1927
  %62 = icmp eq i64 %61, 511, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br i1 %62, label %65, label %63, !dbg !1927

; <label>:63:                                     ; preds = %60
  %64 = icmp eq i64 %61, 767, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br i1 %64, label %65, label %69, !dbg !1927

; <label>:65:                                     ; preds = %63, %60, %55
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %53, i64 0, i32 23, !dbg !1927
  %67 = load i8, i8* %66, align 8, !dbg !1927, !tbaa !1929
  %68 = add i8 %67, 1, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br label %69, !dbg !1927

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i8 [ %68, %65 ], [ 0, %63 ], !dbg !1927
  store i8 %70, i8* %51, align 4, !dbg !1927, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br label %71, !dbg !1927

; <label>:71:                                     ; preds = %39, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br label %72, !dbg !1931

; <label>:72:                                     ; preds = %30, %23, %71, %34, %26
  %73 = phi %struct.ip_addr* [ %9, %30 ], [ %4, %71 ], [ %9, %34 ], [ %9, %26 ], [ null, %23 ], !dbg !1932
  %74 = icmp eq i16 %2, 0, !dbg !1933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  br i1 %74, label %75, label %78, !dbg !1935

; <label>:75:                                     ; preds = %72
  %76 = call fastcc zeroext i16 @tcp_new_port() #8, !dbg !1936
  %77 = icmp eq i16 %76, 0, !dbg !1938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %77, label %258, label %191, !dbg !1940

; <label>:78:                                     ; preds = %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  %79 = icmp eq %struct.ip_addr* %73, null
  %80 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 1
  %81 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  %82 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 1
  %83 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 2
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 3
  %85 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 1
  br label %86, !dbg !1945

; <label>:86:                                     ; preds = %78, %188
  %87 = phi i64 [ 0, %78 ], [ %189, %188 ]
  %88 = getelementptr inbounds [4 x %struct.tcp_pcb**], [4 x %struct.tcp_pcb**]* @tcp_pcb_lists, i64 0, i64 %87, !dbg !1946
  %89 = load %struct.tcp_pcb**, %struct.tcp_pcb*** %88, align 8, !dbg !1946, !tbaa !501
  %90 = load %struct.tcp_pcb*, %struct.tcp_pcb** %89, align 8, !dbg !1950, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  %91 = icmp eq %struct.tcp_pcb* %90, null, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %91, label %188, label %92, !dbg !1955

; <label>:92:                                     ; preds = %86, %184
  %93 = phi %struct.tcp_pcb* [ %186, %184 ], [ %90, %86 ]
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 10, !dbg !1956
  %95 = load i16, i16* %94, align 2, !dbg !1956, !tbaa !1024
  %96 = icmp eq i16 %95, %2, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  br i1 %96, label %97, label %184, !dbg !1960

; <label>:97:                                     ; preds = %92
  %98 = load i8, i8* %18, align 1, !dbg !1961, !tbaa !840
  %99 = and i8 %98, 4, !dbg !1961
  %100 = icmp eq i8 %99, 0, !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  br i1 %100, label %106, label %101, !dbg !1964

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 3, !dbg !1965
  %103 = load i8, i8* %102, align 1, !dbg !1965, !tbaa !840
  %104 = and i8 %103, 4, !dbg !1965
  %105 = icmp eq i8 %104, 0, !dbg !1965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1966
  br i1 %105, label %106, label %184, !dbg !1966

; <label>:106:                                    ; preds = %101, %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  br i1 %79, label %107, label %111, !dbg !1967

; <label>:107:                                    ; preds = %106
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 1, !dbg !1970
  %109 = load i8, i8* %108, align 4, !dbg !1970, !tbaa !1971
  %110 = icmp eq i8 %109, 6, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br i1 %110, label %184, label %118, !dbg !1972

; <label>:111:                                    ; preds = %106
  %112 = load i8, i8* %80, align 4, !dbg !1967, !tbaa !1911
  %113 = icmp eq i8 %112, 6, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 1, !dbg !1970
  %115 = load i8, i8* %114, align 4, !dbg !1970, !tbaa !1971
  %116 = icmp eq i8 %115, 6, !dbg !1970
  %117 = xor i1 %113, %116, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br i1 %117, label %184, label %118, !dbg !1972

; <label>:118:                                    ; preds = %107, %111
  %119 = phi i1 [ false, %107 ], [ %116, %111 ]
  %120 = phi i8 [ %109, %107 ], [ %115, %111 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1975
  %122 = load i32, i32* %121, align 8, !dbg !1975, !tbaa !485
  %123 = icmp eq i32 %122, 0, !dbg !1975
  br i1 %119, label %124, label %138, !dbg !1974

; <label>:124:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %123, label %125, label %140, !dbg !1975

; <label>:125:                                    ; preds = %124
  %126 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1975
  %127 = load i32, i32* %126, align 4, !dbg !1975, !tbaa !485
  %128 = icmp eq i32 %127, 0, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %128, label %129, label %140, !dbg !1975

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1975
  %131 = load i32, i32* %130, align 8, !dbg !1975, !tbaa !485
  %132 = icmp eq i32 %131, 0, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %132, label %133, label %140, !dbg !1975

; <label>:133:                                    ; preds = %129
  %134 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1975
  %135 = load i32, i32* %134, align 4, !dbg !1975, !tbaa !485
  %136 = icmp eq i32 %135, 0, !dbg !1975
  %137 = or i1 %79, %136, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %137, label %258, label %141, !dbg !1975

; <label>:138:                                    ; preds = %118
  %139 = or i1 %79, %123, !dbg !1974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  br i1 %139, label %258, label %141, !dbg !1974

; <label>:140:                                    ; preds = %129, %125, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %79, label %258, label %141, !dbg !1976

; <label>:141:                                    ; preds = %140, %138, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  %142 = load i8, i8* %80, align 4, !dbg !1977, !tbaa !1911
  %143 = icmp eq i8 %142, 6, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  %144 = load i32, i32* %81, align 4, !dbg !1977, !tbaa !485
  %145 = icmp eq i32 %144, 0, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br i1 %143, label %146, label %156, !dbg !1976

; <label>:146:                                    ; preds = %141
  br i1 %145, label %147, label %157, !dbg !1977

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %82, align 4, !dbg !1977, !tbaa !485
  %149 = icmp eq i32 %148, 0, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br i1 %149, label %150, label %157, !dbg !1977

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %83, align 4, !dbg !1977, !tbaa !485
  %152 = icmp eq i32 %151, 0, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br i1 %152, label %153, label %157, !dbg !1977

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %84, align 4, !dbg !1977, !tbaa !485
  %155 = icmp eq i32 %154, 0, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br i1 %155, label %258, label %157, !dbg !1977

; <label>:156:                                    ; preds = %141
  br i1 %145, label %258, label %157, !dbg !1976

; <label>:157:                                    ; preds = %156, %153, %150, %147, %146
  %158 = icmp eq i8 %120, %142, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  br i1 %158, label %159, label %184, !dbg !1980

; <label>:159:                                    ; preds = %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  %160 = load i32, i32* %121, align 8, !dbg !1979, !tbaa !485
  %161 = icmp eq i32 %160, %144, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %119, label %162, label %183, !dbg !1980

; <label>:162:                                    ; preds = %159
  br i1 %161, label %163, label %184, !dbg !1979

; <label>:163:                                    ; preds = %162
  %164 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1979
  %165 = load i32, i32* %164, align 4, !dbg !1979, !tbaa !485
  %166 = load i32, i32* %82, align 4, !dbg !1979, !tbaa !485
  %167 = icmp eq i32 %165, %166, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %167, label %168, label %184, !dbg !1979

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1979
  %170 = load i32, i32* %169, align 8, !dbg !1979, !tbaa !485
  %171 = load i32, i32* %83, align 4, !dbg !1979, !tbaa !485
  %172 = icmp eq i32 %170, %171, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %172, label %173, label %184, !dbg !1979

; <label>:173:                                    ; preds = %168
  %174 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1979
  %175 = load i32, i32* %174, align 4, !dbg !1979, !tbaa !485
  %176 = load i32, i32* %84, align 4, !dbg !1979, !tbaa !485
  %177 = icmp eq i32 %175, %176, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %177, label %178, label %184, !dbg !1979

; <label>:178:                                    ; preds = %173
  %179 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1979
  %180 = load i8, i8* %179, align 8, !dbg !1979, !tbaa !485
  %181 = load i8, i8* %85, align 4, !dbg !1979, !tbaa !485
  %182 = icmp eq i8 %180, %181, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %182, label %258, label %184, !dbg !1979

; <label>:183:                                    ; preds = %159
  br i1 %161, label %258, label %184, !dbg !1980

; <label>:184:                                    ; preds = %107, %101, %157, %111, %92, %162, %163, %168, %173, %178, %183
  %185 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 6, !dbg !1982
  %186 = load %struct.tcp_pcb*, %struct.tcp_pcb** %185, align 8, !dbg !1982, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  %187 = icmp eq %struct.tcp_pcb* %186, null, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %187, label %188, label %92, !dbg !1955, !llvm.loop !1984

; <label>:188:                                    ; preds = %184, %86
  %189 = add nuw nsw i64 %87, 1, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  %190 = icmp ult i64 %189, %24, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  br i1 %190, label %86, label %191, !dbg !1945, !llvm.loop !1989

; <label>:191:                                    ; preds = %188, %75
  %192 = phi i16 [ %76, %75 ], [ %2, %188 ]
  %193 = icmp eq %struct.ip_addr* %73, null, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  br i1 %193, label %194, label %196, !dbg !1993

; <label>:194:                                    ; preds = %191
  %195 = load i8, i8* inttoptr (i64 20 to i8*), align 4, !dbg !1994, !tbaa !1911
  br label %217, !dbg !1993

; <label>:196:                                    ; preds = %191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  %197 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 1, !dbg !1991
  %198 = load i8, i8* %197, align 4, !dbg !1991, !tbaa !1911
  %199 = icmp eq i8 %198, 6, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  %200 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1991
  %201 = load i32, i32* %200, align 4, !dbg !1991, !tbaa !485
  %202 = icmp eq i32 %201, 0, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  br i1 %199, label %203, label %216, !dbg !1993

; <label>:203:                                    ; preds = %196
  br i1 %202, label %204, label %225, !dbg !1991

; <label>:204:                                    ; preds = %203
  %205 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1991
  %206 = load i32, i32* %205, align 4, !dbg !1991, !tbaa !485
  %207 = icmp eq i32 %206, 0, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  br i1 %207, label %208, label %225, !dbg !1991

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1991
  %210 = load i32, i32* %209, align 4, !dbg !1991, !tbaa !485
  %211 = icmp eq i32 %210, 0, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  br i1 %211, label %212, label %225, !dbg !1991

; <label>:212:                                    ; preds = %208
  %213 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1991
  %214 = load i32, i32* %213, align 4, !dbg !1991, !tbaa !485
  %215 = icmp eq i32 %214, 0, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  br i1 %215, label %217, label %225, !dbg !1991

; <label>:216:                                    ; preds = %196
  br i1 %202, label %217, label %225, !dbg !1993

; <label>:217:                                    ; preds = %194, %216, %212
  %218 = phi i8* [ inttoptr (i64 20 to i8*), %194 ], [ %197, %216 ], [ %197, %212 ], !dbg !1994
  %219 = phi i8 [ %195, %194 ], [ %198, %216 ], [ 6, %212 ], !dbg !1994
  %220 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1996
  %221 = load i8, i8* %220, align 4, !dbg !1996, !tbaa !1971
  %222 = icmp eq i8 %219, %221, !dbg !1997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1998
  br i1 %222, label %253, label %223, !dbg !1998

; <label>:223:                                    ; preds = %217
  %224 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1999
  br label %225, !dbg !1998

; <label>:225:                                    ; preds = %223, %203, %204, %208, %212, %216
  %226 = phi i32* [ %224, %223 ], [ %200, %203 ], [ %200, %204 ], [ %200, %208 ], [ %200, %212 ], [ %200, %216 ], !dbg !1999
  %227 = phi i8* [ %218, %223 ], [ %197, %203 ], [ %197, %204 ], [ %197, %208 ], [ %197, %212 ], [ %197, %216 ], !dbg !2005
  %228 = phi i8 [ %219, %223 ], [ 6, %203 ], [ 6, %204 ], [ 6, %208 ], [ 6, %212 ], [ %198, %216 ], !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  %229 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2005
  store i8 %228, i8* %229, align 4, !dbg !2005, !tbaa !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  %230 = load i8, i8* %227, align 4, !dbg !2012, !tbaa !1911
  %231 = icmp eq i8 %230, 6, !dbg !2012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %232 = load i32, i32* %226, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %233 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1999
  store i32 %232, i32* %233, align 8, !dbg !1999, !tbaa !485
  br i1 %231, label %234, label %246, !dbg !2013

; <label>:234:                                    ; preds = %225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %235 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1999
  %236 = load i32, i32* %235, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %237 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1999
  store i32 %236, i32* %237, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %238 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1999
  %239 = load i32, i32* %238, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %240 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1999
  store i32 %239, i32* %240, align 8, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %241 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1999
  %242 = load i32, i32* %241, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %243 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1999
  store i32 %242, i32* %243, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %244 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %73, i64 0, i32 0, i32 0, i32 1, !dbg !1999
  %245 = load i8, i8* %244, align 4, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br label %250, !dbg !2014

; <label>:246:                                    ; preds = %225
  %247 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2015
  store i32 0, i32* %247, align 4, !dbg !2015, !tbaa !485
  %248 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2015
  store i32 0, i32* %248, align 8, !dbg !2015, !tbaa !485
  %249 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2015
  store i32 0, i32* %249, align 4, !dbg !2015, !tbaa !485
  br label %250

; <label>:250:                                    ; preds = %246, %234
  %251 = phi i8 [ %245, %234 ], [ 0, %246 ]
  %252 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1999
  store i8 %251, i8* %252, align 8, !dbg !1999, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %253, !dbg !2018

; <label>:253:                                    ; preds = %250, %217
  %254 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2018
  store i16 %192, i16* %254, align 2, !dbg !2019, !tbaa !1024
  %255 = load i64, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2020, !tbaa !501
  %256 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2020
  %257 = bitcast %struct.tcp_pcb** %256 to i64*, !dbg !2020
  store i64 %255, i64* %257, align 8, !dbg !2020, !tbaa !533
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2020, !tbaa !501
  call void @tcp_timer_needed() #7, !dbg !2020
  br label %258, !dbg !2022

; <label>:258:                                    ; preds = %133, %138, %153, %156, %178, %183, %140, %75, %253
  %259 = phi i8 [ 0, %253 ], [ -2, %75 ], [ -8, %140 ], [ -8, %183 ], [ -8, %178 ], [ -8, %156 ], [ -8, %153 ], [ -8, %138 ], [ -8, %133 ], !dbg !2023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2025
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !2027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  ret i8 %259, !dbg !2027
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @tcp_new_port() unnamed_addr #0 !dbg !2028 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  %1 = load i16, i16* @tcp_port, align 2, !dbg !2037, !tbaa !445
  %2 = load %struct.tcp_pcb*, %struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), align 8, !dbg !2038, !tbaa !501
  %3 = icmp eq %struct.tcp_pcb* %2, null
  %4 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8
  %5 = icmp eq %struct.tcp_pcb* %4, null
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8
  %7 = icmp eq %struct.tcp_pcb* %6, null
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8
  %9 = icmp eq %struct.tcp_pcb* %8, null
  br label %10, !dbg !2036

; <label>:10:                                     ; preds = %21, %0
  %11 = phi i16 [ %1, %0 ], [ %15, %21 ], !dbg !2037
  %12 = phi i16 [ 0, %0 ], [ %22, %21 ], !dbg !2043
  %13 = add i16 %11, 1, !dbg !2037
  %14 = icmp eq i16 %13, -1, !dbg !2048
  %15 = select i1 %14, i16 -16384, i16 %13, !dbg !2050
  store i16 %15, i16* @tcp_port, align 2, !dbg !2051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %3, label %28, label %16, !dbg !2058

; <label>:16:                                     ; preds = %10, %24
  %17 = phi %struct.tcp_pcb* [ %26, %24 ], [ %2, %10 ]
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i64 0, i32 10, !dbg !2059
  %19 = load i16, i16* %18, align 2, !dbg !2059, !tbaa !1024
  %20 = icmp eq i16 %19, %15, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %20, label %21, label %24, !dbg !2061

; <label>:21:                                     ; preds = %16, %31, %41, %51
  %22 = add nuw nsw i16 %12, 1, !dbg !2062
  %23 = icmp ugt i16 %12, 16382, !dbg !2063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br i1 %23, label %29, label %10, !dbg !2065

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i64 0, i32 6, !dbg !2066
  %26 = load %struct.tcp_pcb*, %struct.tcp_pcb** %25, align 8, !dbg !2066, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %27 = icmp eq %struct.tcp_pcb* %26, null, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %27, label %28, label %16, !dbg !2058, !llvm.loop !2069

; <label>:28:                                     ; preds = %24, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %5, label %40, label %31, !dbg !2058

; <label>:29:                                     ; preds = %21, %60
  %30 = phi i16 [ %15, %60 ], [ 0, %21 ], !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2075
  ret i16 %30, !dbg !2075

; <label>:31:                                     ; preds = %28, %36
  %32 = phi %struct.tcp_pcb* [ %38, %36 ], [ %4, %28 ]
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %32, i64 0, i32 10, !dbg !2059
  %34 = load i16, i16* %33, align 2, !dbg !2059, !tbaa !1024
  %35 = icmp eq i16 %34, %15, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %35, label %21, label %36, !dbg !2061

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %32, i64 0, i32 6, !dbg !2066
  %38 = load %struct.tcp_pcb*, %struct.tcp_pcb** %37, align 8, !dbg !2066, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %39 = icmp eq %struct.tcp_pcb* %38, null, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %39, label %40, label %31, !dbg !2058, !llvm.loop !2069

; <label>:40:                                     ; preds = %36, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %7, label %50, label %41, !dbg !2058

; <label>:41:                                     ; preds = %40, %46
  %42 = phi %struct.tcp_pcb* [ %48, %46 ], [ %6, %40 ]
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %42, i64 0, i32 10, !dbg !2059
  %44 = load i16, i16* %43, align 2, !dbg !2059, !tbaa !1024
  %45 = icmp eq i16 %44, %15, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %45, label %21, label %46, !dbg !2061

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %42, i64 0, i32 6, !dbg !2066
  %48 = load %struct.tcp_pcb*, %struct.tcp_pcb** %47, align 8, !dbg !2066, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %49 = icmp eq %struct.tcp_pcb* %48, null, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %49, label %50, label %41, !dbg !2058, !llvm.loop !2069

; <label>:50:                                     ; preds = %46, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %9, label %60, label %51, !dbg !2058

; <label>:51:                                     ; preds = %50, %56
  %52 = phi %struct.tcp_pcb* [ %58, %56 ], [ %8, %50 ]
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %52, i64 0, i32 10, !dbg !2059
  %54 = load i16, i16* %53, align 2, !dbg !2059, !tbaa !1024
  %55 = icmp eq i16 %54, %15, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %55, label %21, label %56, !dbg !2061

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %52, i64 0, i32 6, !dbg !2066
  %58 = load %struct.tcp_pcb*, %struct.tcp_pcb** %57, align 8, !dbg !2066, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %59 = icmp eq %struct.tcp_pcb* %58, null, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %59, label %60, label %51, !dbg !2058, !llvm.loop !2069

; <label>:60:                                     ; preds = %50, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  br label %29, !dbg !2076
}

; Function Attrs: noredzone
declare dso_local void @tcp_timer_needed() local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_bind_netif(%struct.tcp_pcb* nocapture, %struct.netif* readonly) local_unnamed_addr #0 !dbg !2077 {
  %3 = icmp eq %struct.netif* %1, null, !dbg !2087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br i1 %3, label %8, label %4, !dbg !2089

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !2090
  %6 = load i8, i8* %5, align 8, !dbg !2090, !tbaa !1929
  %7 = add i8 %6, 1, !dbg !2090
  br label %8, !dbg !2092

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %2 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2093
  store i8 %9, i8* %10, align 8, !dbg !2095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  ret void, !dbg !2096
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_listen_with_backlog(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !2097 {
  %3 = tail call %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb* %0, i8 zeroext undef, i8* null) #8, !dbg !2105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  ret %struct.tcp_pcb* %3, !dbg !2106
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb*, i8 zeroext, i8*) local_unnamed_addr #0 !dbg !2107 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  br i1 %4, label %5, label %6, !dbg !2130

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !2131
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2134
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2134
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2138
  %8 = load i32, i32* %7, align 8, !dbg !2138, !tbaa !457
  %9 = icmp eq i32 %8, 0, !dbg !2138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  br i1 %9, label %11, label %10, !dbg !2141

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !2142
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2145
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2145
  unreachable

; <label>:11:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !2150
  %13 = load i8, i8* %12, align 1, !dbg !2150, !tbaa !840
  %14 = and i8 %13, 4, !dbg !2150
  %15 = icmp eq i8 %14, 0, !dbg !2150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br i1 %15, label %70, label %16, !dbg !2152

; <label>:16:                                     ; preds = %11
  %17 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** getelementptr inbounds (%union.tcp_listen_pcbs_t, %union.tcp_listen_pcbs_t* @tcp_listen_pcbs, i64 0, i32 0), align 8, !dbg !2153, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  %18 = icmp eq %struct.tcp_pcb_listen* %17, null, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  br i1 %18, label %70, label %19, !dbg !2159

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %27 = load i16, i16* %20, align 2, !dbg !2160, !tbaa !1024
  br label %28, !dbg !2159

; <label>:28:                                     ; preds = %19, %66
  %29 = phi %struct.tcp_pcb_listen* [ %17, %19 ], [ %68, %66 ]
  %30 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 10, !dbg !2163
  %31 = load i16, i16* %30, align 2, !dbg !2163, !tbaa !2164
  %32 = icmp eq i16 %31, %27, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  br i1 %32, label %33, label %66, !dbg !2167

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 1, !dbg !2168
  %35 = load i8, i8* %34, align 4, !dbg !2168, !tbaa !2169
  %36 = load i8, i8* %21, align 4, !dbg !2168, !tbaa !1971
  %37 = icmp eq i8 %35, %36, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  br i1 %37, label %38, label %66, !dbg !2170

; <label>:38:                                     ; preds = %33
  %39 = icmp eq i8 %35, 6, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  %40 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2168
  %41 = load i32, i32* %40, align 8, !dbg !2168, !tbaa !485
  %42 = load i32, i32* %22, align 8, !dbg !2168, !tbaa !485
  %43 = icmp eq i32 %41, %42, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br i1 %39, label %44, label %65, !dbg !2170

; <label>:44:                                     ; preds = %38
  br i1 %43, label %45, label %66, !dbg !2168

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2168
  %47 = load i32, i32* %46, align 4, !dbg !2168, !tbaa !485
  %48 = load i32, i32* %23, align 4, !dbg !2168, !tbaa !485
  %49 = icmp eq i32 %47, %48, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %49, label %50, label %66, !dbg !2168

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2168
  %52 = load i32, i32* %51, align 8, !dbg !2168, !tbaa !485
  %53 = load i32, i32* %24, align 8, !dbg !2168, !tbaa !485
  %54 = icmp eq i32 %52, %53, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %54, label %55, label %66, !dbg !2168

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2168
  %57 = load i32, i32* %56, align 4, !dbg !2168, !tbaa !485
  %58 = load i32, i32* %25, align 4, !dbg !2168, !tbaa !485
  %59 = icmp eq i32 %57, %58, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %59, label %60, label %66, !dbg !2168

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2168
  %62 = load i8, i8* %61, align 8, !dbg !2168, !tbaa !485
  %63 = load i8, i8* %26, align 8, !dbg !2168, !tbaa !485
  %64 = icmp eq i8 %62, %63, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %64, label %170, label %66, !dbg !2168

; <label>:65:                                     ; preds = %38
  br i1 %43, label %170, label %66, !dbg !2170

; <label>:66:                                     ; preds = %33, %28, %44, %45, %50, %55, %60, %65
  %67 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 6, !dbg !2172
  %68 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %67, align 8, !dbg !2172, !tbaa !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  %69 = icmp eq %struct.tcp_pcb_listen* %68, null, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  br i1 %69, label %70, label %28, !dbg !2159, !llvm.loop !2175

; <label>:70:                                     ; preds = %66, %16, %11
  %71 = tail call i8* @memp_malloc(i32 2) #7, !dbg !2177
  %72 = bitcast i8* %71 to %struct.tcp_pcb_listen*, !dbg !2178
  %73 = icmp eq i8* %71, null, !dbg !2179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  br i1 %73, label %170, label %74, !dbg !2181

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !2182
  %76 = bitcast i8** %75 to i64*, !dbg !2182
  %77 = load i64, i64* %76, align 8, !dbg !2182, !tbaa !1030
  %78 = getelementptr inbounds i8, i8* %71, i64 64, !dbg !2183
  %79 = bitcast i8* %78 to i64*, !dbg !2184
  store i64 %77, i64* %79, align 8, !dbg !2184, !tbaa !2185
  %80 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2186
  %81 = load i16, i16* %80, align 2, !dbg !2186, !tbaa !1024
  %82 = getelementptr inbounds i8, i8* %71, i64 78, !dbg !2187
  %83 = bitcast i8* %82 to i16*, !dbg !2187
  store i16 %81, i16* %83, align 2, !dbg !2188, !tbaa !2164
  %84 = getelementptr inbounds i8, i8* %71, i64 72, !dbg !2189
  %85 = bitcast i8* %84 to i32*, !dbg !2189
  store i32 1, i32* %85, align 8, !dbg !2190, !tbaa !2191
  %86 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 9, !dbg !2192
  %87 = load i8, i8* %86, align 4, !dbg !2192, !tbaa !2193
  %88 = getelementptr inbounds i8, i8* %71, i64 76, !dbg !2194
  store i8 %87, i8* %88, align 4, !dbg !2195, !tbaa !2196
  %89 = load i8, i8* %12, align 1, !dbg !2197, !tbaa !840
  %90 = getelementptr inbounds i8, i8* %71, i64 49, !dbg !2198
  store i8 %89, i8* %90, align 1, !dbg !2199, !tbaa !2200
  %91 = getelementptr inbounds i8, i8* %71, i64 48, !dbg !2201
  store i8 0, i8* %91, align 8, !dbg !2202, !tbaa !2203
  %92 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5, !dbg !2204
  %93 = load i8, i8* %92, align 1, !dbg !2204, !tbaa !2205
  %94 = getelementptr inbounds i8, i8* %71, i64 51, !dbg !2206
  store i8 %93, i8* %94, align 1, !dbg !2207, !tbaa !2208
  %95 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4, !dbg !2209
  %96 = load i8, i8* %95, align 2, !dbg !2209, !tbaa !2210
  %97 = getelementptr inbounds i8, i8* %71, i64 50, !dbg !2211
  store i8 %96, i8* %97, align 2, !dbg !2212, !tbaa !2213
  %98 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2214
  %99 = load i8, i8* %98, align 4, !dbg !2214, !tbaa !1971
  %100 = getelementptr inbounds i8, i8* %71, i64 44, !dbg !2214
  store i8 %99, i8* %100, align 4, !dbg !2214, !tbaa !2216
  %101 = getelementptr inbounds i8, i8* %71, i64 20, !dbg !2217
  store i8 %99, i8* %101, align 4, !dbg !2217, !tbaa !2169
  %102 = icmp eq i8 %99, 6, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  %103 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2223
  %104 = load i32, i32* %103, align 8, !dbg !2223, !tbaa !485
  %105 = bitcast i8* %71 to i32*, !dbg !2223
  store i32 %104, i32* %105, align 8, !dbg !2223, !tbaa !485
  br i1 %102, label %106, label %121, !dbg !2222

; <label>:106:                                    ; preds = %74
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2223
  %108 = load i32, i32* %107, align 4, !dbg !2223, !tbaa !485
  %109 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !2223
  %110 = bitcast i8* %109 to i32*, !dbg !2223
  store i32 %108, i32* %110, align 4, !dbg !2223, !tbaa !485
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2223
  %112 = load i32, i32* %111, align 8, !dbg !2223, !tbaa !485
  %113 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2223
  %114 = bitcast i8* %113 to i32*, !dbg !2223
  store i32 %112, i32* %114, align 8, !dbg !2223, !tbaa !485
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2223
  %116 = load i32, i32* %115, align 4, !dbg !2223, !tbaa !485
  %117 = getelementptr inbounds i8, i8* %71, i64 12, !dbg !2223
  %118 = bitcast i8* %117 to i32*, !dbg !2223
  store i32 %116, i32* %118, align 4, !dbg !2223, !tbaa !485
  %119 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2223
  %120 = load i8, i8* %119, align 8, !dbg !2223, !tbaa !485
  br label %128, !dbg !2226

; <label>:121:                                    ; preds = %74
  %122 = getelementptr inbounds i8, i8* %71, i64 12, !dbg !2227
  %123 = bitcast i8* %122 to i32*, !dbg !2227
  store i32 0, i32* %123, align 4, !dbg !2227, !tbaa !485
  %124 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2227
  %125 = bitcast i8* %124 to i32*, !dbg !2227
  store i32 0, i32* %125, align 8, !dbg !2227, !tbaa !485
  %126 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !2227
  %127 = bitcast i8* %126 to i32*, !dbg !2227
  store i32 0, i32* %127, align 4, !dbg !2227, !tbaa !485
  br label %128

; <label>:128:                                    ; preds = %121, %106
  %129 = phi i8 [ 0, %121 ], [ %120, %106 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %130 = getelementptr inbounds i8, i8* %71, i64 16, !dbg !2227
  store i8 %129, i8* %130, align 8, !dbg !2227
  %131 = load i16, i16* %80, align 2, !dbg !2230, !tbaa !1024
  %132 = icmp eq i16 %131, 0, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  br i1 %132, label %159, label %133, !dbg !2232

; <label>:133:                                    ; preds = %128
  %134 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2233, !tbaa !501
  %135 = icmp eq %struct.tcp_pcb* %134, %0, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  br i1 %135, label %136, label %140, !dbg !2234

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2235
  %138 = bitcast %struct.tcp_pcb** %137 to i64*, !dbg !2235
  %139 = load i64, i64* %138, align 8, !dbg !2235, !tbaa !533
  store i64 %139, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2235, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br label %157, !dbg !2235

; <label>:140:                                    ; preds = %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  %141 = icmp eq %struct.tcp_pcb* %134, null, !dbg !2240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br i1 %141, label %155, label %142, !dbg !2238

; <label>:142:                                    ; preds = %140, %153
  %143 = phi %struct.tcp_pcb* [ %145, %153 ], [ %134, %140 ]
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 6, !dbg !2242
  %145 = load %struct.tcp_pcb*, %struct.tcp_pcb** %144, align 8, !dbg !2242, !tbaa !533
  %146 = icmp eq %struct.tcp_pcb* %145, %0, !dbg !2242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2245
  br i1 %146, label %147, label %153, !dbg !2245

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 6, !dbg !2242
  %149 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2246
  %150 = bitcast %struct.tcp_pcb** %149 to i64*, !dbg !2246
  %151 = load i64, i64* %150, align 8, !dbg !2246, !tbaa !533
  %152 = bitcast %struct.tcp_pcb** %148 to i64*, !dbg !2246
  store i64 %151, i64* %152, align 8, !dbg !2246, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  br label %155, !dbg !2246

; <label>:153:                                    ; preds = %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  %154 = icmp eq %struct.tcp_pcb* %145, null, !dbg !2240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br i1 %154, label %155, label %142, !dbg !2238, !llvm.loop !2248

; <label>:155:                                    ; preds = %153, %140, %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %156 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2234
  br label %157

; <label>:157:                                    ; preds = %155, %136
  %158 = phi %struct.tcp_pcb** [ %156, %155 ], [ %137, %136 ], !dbg !2234
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %158, align 8, !dbg !2234, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  br label %159, !dbg !2249

; <label>:159:                                    ; preds = %128, %157
  %160 = load i32, i32* %7, align 8, !dbg !2252, !tbaa !457
  %161 = icmp eq i32 %160, 1, !dbg !2252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2253
  br i1 %161, label %162, label %163, !dbg !2253

; <label>:162:                                    ; preds = %159
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !2254
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2255
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2255
  unreachable

; <label>:163:                                    ; preds = %159
  %164 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !2256
  tail call void @memp_free(i32 1, i8* %164) #7, !dbg !2257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  %165 = getelementptr inbounds i8, i8* %71, i64 80, !dbg !2259
  %166 = bitcast i8* %165 to i8 (i8*, %struct.tcp_pcb*, i8)**, !dbg !2259
  store i8 (i8*, %struct.tcp_pcb*, i8)* @tcp_accept_null, i8 (i8*, %struct.tcp_pcb*, i8)** %166, align 8, !dbg !2260, !tbaa !2261
  %167 = load i64, i64* bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to i64*), align 8, !dbg !2262, !tbaa !485
  %168 = getelementptr inbounds i8, i8* %71, i64 56, !dbg !2262
  %169 = bitcast i8* %168 to i64*, !dbg !2262
  store i64 %167, i64* %169, align 8, !dbg !2262, !tbaa !533
  store i8* %71, i8** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to i8**), align 8, !dbg !2262, !tbaa !485
  tail call void @tcp_timer_needed() #7, !dbg !2262
  br label %170, !dbg !2265

; <label>:170:                                    ; preds = %60, %65, %70, %163
  %171 = phi %struct.tcp_pcb_listen* [ %72, %163 ], [ %72, %70 ], [ null, %65 ], [ null, %60 ], !dbg !2266
  %172 = phi i8 [ 0, %163 ], [ -1, %70 ], [ -8, %65 ], [ -8, %60 ], !dbg !2266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2267
  %173 = icmp eq i8* %2, null, !dbg !2269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  br i1 %173, label %175, label %174, !dbg !2271

; <label>:174:                                    ; preds = %170
  store i8 %172, i8* %2, align 1, !dbg !2272, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br label %175, !dbg !2274

; <label>:175:                                    ; preds = %170, %174
  %176 = bitcast %struct.tcp_pcb_listen* %171 to %struct.tcp_pcb*, !dbg !2275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2276
  ret %struct.tcp_pcb* %176, !dbg !2276
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal signext i8 @tcp_accept_null(i8* nocapture readnone, %struct.tcp_pcb*, i8 signext) #0 !dbg !2277 {
  %4 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  br i1 %4, label %5, label %6, !dbg !2288

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2289
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2292
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2292
  unreachable

; <label>:6:                                      ; preds = %3
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %1, i32 1) #7, !dbg !2298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2300
  ret i8 -13, !dbg !2300
}

; Function Attrs: noredzone nounwind
define dso_local i32 @tcp_update_rcv_ann_wnd(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2301 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2314
  br i1 %2, label %3, label %4, !dbg !2314

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !2315
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2318
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2318
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2322
  %6 = load i32, i32* %5, align 4, !dbg !2322, !tbaa !1020
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !2323
  %8 = load i32, i32* %7, align 8, !dbg !2323, !tbaa !1232
  %9 = add i32 %8, %6, !dbg !2324
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2326
  %11 = load i32, i32* %10, align 8, !dbg !2326, !tbaa !2327
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2326
  %13 = load i16, i16* %12, align 2, !dbg !2326, !tbaa !801
  %14 = zext i16 %13 to i32, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  %15 = sub i32 %9, %11, !dbg !2326
  %16 = sub i32 %15, %14, !dbg !2326
  %17 = icmp sgt i32 %16, -1, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2328
  br i1 %17, label %23, label %18, !dbg !2328

; <label>:18:                                     ; preds = %4
  %19 = sub i32 %6, %11, !dbg !2329
  %20 = icmp sgt i32 %19, 0, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  %21 = sub i32 %11, %6, !dbg !2331
  %22 = select i1 %20, i32 0, i32 %21, !dbg !2330
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %23, !dbg !2333

; <label>:23:                                     ; preds = %4, %18
  %24 = phi i32 [ %22, %18 ], [ %8, %4 ]
  %25 = phi i32 [ 0, %18 ], [ %15, %4 ], !dbg !2334
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2335
  store i32 %24, i32* %26, align 4, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2337
  ret i32 %25, !dbg !2337
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_recved(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #0 !dbg !2338 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2351
  br i1 %3, label %4, label %5, !dbg !2351

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2352
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2355
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2355
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2359
  %7 = load i32, i32* %6, align 8, !dbg !2359, !tbaa !457
  %8 = icmp eq i32 %7, 1, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  br i1 %8, label %9, label %10, !dbg !2362

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !2363
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2366
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2366
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !2370
  %12 = load i32, i32* %11, align 8, !dbg !2370, !tbaa !1232
  %13 = zext i16 %1 to i32, !dbg !2371
  %14 = add i32 %12, %13, !dbg !2372
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2374
  %16 = load i16, i16* %15, align 2, !dbg !2374, !tbaa !513
  %17 = and i16 %16, 256, !dbg !2374
  %18 = icmp eq i16 %17, 0, !dbg !2374
  %19 = select i1 %18, i32 65535, i32 262142, !dbg !2374
  %20 = icmp ugt i32 %14, %19, !dbg !2376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  br i1 %20, label %24, label %21, !dbg !2377

; <label>:21:                                     ; preds = %10
  %22 = icmp ult i32 %14, %12, !dbg !2378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2379
  %23 = select i1 %22, i32 %19, i32 %14, !dbg !2379
  br label %24, !dbg !2379

; <label>:24:                                     ; preds = %21, %10
  %25 = phi i32 [ %19, %10 ], [ %23, %21 ]
  store i32 %25, i32* %11, align 8, !dbg !2380, !tbaa !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2384
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2385
  %27 = load i32, i32* %26, align 4, !dbg !2385, !tbaa !1020
  %28 = add i32 %25, %27, !dbg !2386
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2388
  %30 = load i32, i32* %29, align 8, !dbg !2388, !tbaa !2327
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2388
  %32 = load i16, i16* %31, align 2, !dbg !2388, !tbaa !801
  %33 = zext i16 %32 to i32, !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  %34 = sub i32 %28, %30, !dbg !2388
  %35 = sub i32 %34, %33, !dbg !2388
  %36 = icmp sgt i32 %35, -1, !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
  br i1 %36, label %43, label %37, !dbg !2389

; <label>:37:                                     ; preds = %24
  %38 = sub i32 %27, %30, !dbg !2390
  %39 = icmp sgt i32 %38, 0, !dbg !2390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2391
  %40 = sub i32 %30, %27, !dbg !2392
  %41 = select i1 %39, i32 0, i32 %40, !dbg !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2394
  store i32 %41, i32* %42, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  br label %49, !dbg !2399

; <label>:43:                                     ; preds = %24
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2400
  store i32 %25, i32* %44, align 4, !dbg !2401, !tbaa !2402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  %45 = icmp ugt i32 %34, 5839, !dbg !2404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2399
  br i1 %45, label %46, label %50, !dbg !2399

; <label>:46:                                     ; preds = %43
  %47 = or i16 %16, 2, !dbg !2406
  store i16 %47, i16* %15, align 2, !dbg !2406, !tbaa !513
  %48 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2409
  br label %49, !dbg !2410

; <label>:49:                                     ; preds = %46, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  br label %50, !dbg !2412

; <label>:50:                                     ; preds = %49, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  ret void, !dbg !2412
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_connect(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #0 !dbg !2413 {
  %5 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2450
  br i1 %5, label %6, label %7, !dbg !2450

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2451
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2454
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2454
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.ip_addr* %1, null, !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  br i1 %8, label %9, label %10, !dbg !2461

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2462
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2465
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2465
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2469
  %12 = load i32, i32* %11, align 8, !dbg !2469, !tbaa !457
  %13 = icmp eq i32 %12, 0, !dbg !2469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  br i1 %13, label %15, label %14, !dbg !2472

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2473
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2476
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2476
  unreachable

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !2485
  %18 = load i8, i8* %17, align 4, !dbg !2485, !tbaa !1911
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !2485
  store i8 %18, i8* %19, align 4, !dbg !2485, !tbaa !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  %20 = load i8, i8* %17, align 4, !dbg !2490, !tbaa !1911
  %21 = icmp eq i8 %20, 6, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2493
  %23 = load i32, i32* %22, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2493
  store i32 %23, i32* %24, align 8, !dbg !2493, !tbaa !485
  br i1 %21, label %25, label %37, !dbg !2492

; <label>:25:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2493
  %27 = load i32, i32* %26, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2493
  store i32 %27, i32* %28, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2493
  %30 = load i32, i32* %29, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2493
  store i32 %30, i32* %31, align 8, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2493
  %33 = load i32, i32* %32, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2493
  store i32 %33, i32* %34, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !2493
  %36 = load i8, i8* %35, align 4, !dbg !2493, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  br label %41, !dbg !2496

; <label>:37:                                     ; preds = %15
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2497
  store i32 0, i32* %38, align 4, !dbg !2497, !tbaa !485
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2497
  store i32 0, i32* %39, align 8, !dbg !2497, !tbaa !485
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2497
  store i32 0, i32* %40, align 4, !dbg !2497, !tbaa !485
  br label %41

; <label>:41:                                     ; preds = %37, %25
  %42 = phi i8 [ 0, %37 ], [ %36, %25 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2497
  store i8 %42, i8* %43, align 8, !dbg !2497
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2500
  store i16 %2, i16* %44, align 8, !dbg !2501, !tbaa !1026
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2502
  %46 = load i8, i8* %45, align 8, !dbg !2502, !tbaa !2504
  %47 = icmp eq i8 %46, 0, !dbg !2505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  br i1 %47, label %50, label %48, !dbg !2506

; <label>:48:                                     ; preds = %41
  %49 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %46) #7, !dbg !2507
  br label %61, !dbg !2509

; <label>:50:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  %51 = icmp eq i8 %18, 6, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  br i1 %51, label %52, label %56, !dbg !2510

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !2510
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, !dbg !2510
  %55 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %53, %struct.ip6_addr* nonnull %54) #7, !dbg !2510
  br label %59, !dbg !2510

; <label>:56:                                     ; preds = %50
  %57 = bitcast %struct.ip_addr* %16 to %struct.ip4_addr*, !dbg !2510
  %58 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %57) #7, !dbg !2510
  br label %59, !dbg !2510

; <label>:59:                                     ; preds = %56, %52
  %60 = phi %struct.netif* [ %55, %52 ], [ %58, %56 ], !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  br label %61

; <label>:61:                                     ; preds = %59, %48
  %62 = phi %struct.netif* [ %49, %48 ], [ %60, %59 ], !dbg !2512
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %63 = icmp eq %struct.netif* %62, null, !dbg !2513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2516
  br i1 %63, label %329, label %64, !dbg !2515

; <label>:64:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2517
  %66 = load i8, i8* %65, align 4, !dbg !2517, !tbaa !1971
  %67 = icmp eq i8 %66, 6, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  %68 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2517
  %69 = load i32, i32* %68, align 8, !dbg !2517, !tbaa !485
  %70 = icmp eq i32 %69, 0, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  br i1 %67, label %71, label %84, !dbg !2518

; <label>:71:                                     ; preds = %64
  br i1 %70, label %72, label %122, !dbg !2517

; <label>:72:                                     ; preds = %71
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2517
  %74 = load i32, i32* %73, align 4, !dbg !2517, !tbaa !485
  %75 = icmp eq i32 %74, 0, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  br i1 %75, label %76, label %122, !dbg !2517

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2517
  %78 = load i32, i32* %77, align 8, !dbg !2517, !tbaa !485
  %79 = icmp eq i32 %78, 0, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  br i1 %79, label %80, label %122, !dbg !2517

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2517
  %82 = load i32, i32* %81, align 4, !dbg !2517, !tbaa !485
  %83 = icmp eq i32 %82, 0, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  br i1 %83, label %85, label %122, !dbg !2517

; <label>:84:                                     ; preds = %64
  br i1 %70, label %85, label %122, !dbg !2518

; <label>:85:                                     ; preds = %84, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  %86 = load i8, i8* %17, align 4, !dbg !2519, !tbaa !1911
  %87 = icmp eq i8 %86, 6, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  br i1 %87, label %90, label %88, !dbg !2519

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %62, i64 0, i32 1, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  br label %95, !dbg !2521

; <label>:90:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, !dbg !2519
  %92 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %62, %struct.ip6_addr* nonnull %91) #7, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  %93 = icmp eq %struct.ip_addr* %92, null, !dbg !2522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  br i1 %93, label %94, label %95, !dbg !2521

; <label>:94:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2524
  br label %327

; <label>:95:                                     ; preds = %88, %90
  %96 = phi %struct.ip_addr* [ %89, %88 ], [ %92, %90 ]
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 1, !dbg !2526
  %98 = load i8, i8* %97, align 4, !dbg !2526, !tbaa !1911
  store i8 %98, i8* %65, align 4, !dbg !2526, !tbaa !1971
  %99 = load i8, i8* %97, align 4, !dbg !2529, !tbaa !1911
  %100 = icmp eq i8 %99, 6, !dbg !2529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2531
  %101 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2532
  %102 = load i32, i32* %101, align 4, !dbg !2532, !tbaa !485
  store i32 %102, i32* %68, align 8, !dbg !2532, !tbaa !485
  br i1 %100, label %103, label %115, !dbg !2531

; <label>:103:                                    ; preds = %95
  %104 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2532
  %105 = load i32, i32* %104, align 4, !dbg !2532, !tbaa !485
  %106 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2532
  store i32 %105, i32* %106, align 4, !dbg !2532, !tbaa !485
  %107 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2532
  %108 = load i32, i32* %107, align 4, !dbg !2532, !tbaa !485
  %109 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2532
  store i32 %108, i32* %109, align 8, !dbg !2532, !tbaa !485
  %110 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2532
  %111 = load i32, i32* %110, align 4, !dbg !2532, !tbaa !485
  %112 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2532
  store i32 %111, i32* %112, align 4, !dbg !2532, !tbaa !485
  %113 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 0, i32 0, i32 1, !dbg !2532
  %114 = load i8, i8* %113, align 4, !dbg !2532, !tbaa !485
  br label %119, !dbg !2535

; <label>:115:                                    ; preds = %95
  %116 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2536
  store i32 0, i32* %116, align 4, !dbg !2536, !tbaa !485
  %117 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2536
  store i32 0, i32* %117, align 8, !dbg !2536, !tbaa !485
  %118 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2536
  store i32 0, i32* %118, align 4, !dbg !2536, !tbaa !485
  br label %119

; <label>:119:                                    ; preds = %115, %103
  %120 = phi i8 [ 0, %115 ], [ %114, %103 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2536
  store i8 %120, i8* %121, align 8, !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %122

; <label>:122:                                    ; preds = %119, %84, %80, %76, %72, %71
  %123 = phi i32 [ %102, %119 ], [ %69, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ %69, %71 ]
  %124 = phi i8 [ %98, %119 ], [ %66, %84 ], [ 6, %80 ], [ 6, %76 ], [ 6, %72 ], [ 6, %71 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  %125 = load i8, i8* %19, align 4, !dbg !2540, !tbaa !2488
  %126 = icmp eq i8 %125, 6, !dbg !2540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2542
  br i1 %126, label %127, label %138, !dbg !2542

; <label>:127:                                    ; preds = %122
  %128 = load i8, i8* %43, align 8, !dbg !2543, !tbaa !485
  %129 = icmp eq i8 %128, 0, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  br i1 %129, label %130, label %138, !dbg !2543

; <label>:130:                                    ; preds = %127
  %131 = load i32, i32* %24, align 8, !dbg !2543, !tbaa !485
  %132 = and i32 %131, 49407, !dbg !2543
  %133 = icmp eq i32 %132, 33022, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  br i1 %133, label %134, label %138, !dbg !2544

; <label>:134:                                    ; preds = %130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  %135 = getelementptr inbounds %struct.netif, %struct.netif* %62, i64 0, i32 23, !dbg !2545
  %136 = load i8, i8* %135, align 8, !dbg !2545, !tbaa !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  %137 = add i8 %136, 1, !dbg !2545
  store i8 %137, i8* %43, align 8, !dbg !2545, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2547
  br label %138, !dbg !2547

; <label>:138:                                    ; preds = %127, %134, %130, %122
  %139 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2548
  %140 = load i16, i16* %139, align 2, !dbg !2548, !tbaa !1024
  %141 = icmp eq i16 %140, 0, !dbg !2550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br i1 %141, label %142, label %147, !dbg !2551

; <label>:142:                                    ; preds = %138
  %143 = tail call fastcc zeroext i16 @tcp_new_port() #8, !dbg !2552
  store i16 %143, i16* %139, align 2, !dbg !2554, !tbaa !1024
  %144 = icmp eq i16 %143, 0, !dbg !2555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  br i1 %144, label %327, label %145, !dbg !2557

; <label>:145:                                    ; preds = %142
  %146 = load i8, i8* %19, align 4, !dbg !2558, !tbaa !1911
  br label %249, !dbg !2557

; <label>:147:                                    ; preds = %138
  %148 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !2573
  %149 = load i8, i8* %148, align 1, !dbg !2573, !tbaa !840
  %150 = and i8 %149, 4, !dbg !2573
  %151 = icmp eq i8 %150, 0, !dbg !2573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2574
  br i1 %151, label %249, label %152, !dbg !2574

; <label>:152:                                    ; preds = %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  %153 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %154 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %155 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3
  %156 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %157 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %158 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %159 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %160 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %161 = icmp eq i8 %124, 6
  br label %162, !dbg !2578

; <label>:162:                                    ; preds = %152, %244
  %163 = phi i64 [ 2, %152 ], [ %245, %244 ]
  %164 = getelementptr inbounds [4 x %struct.tcp_pcb**], [4 x %struct.tcp_pcb**]* @tcp_pcb_lists, i64 0, i64 %163, !dbg !2579
  %165 = load %struct.tcp_pcb**, %struct.tcp_pcb*** %164, align 8, !dbg !2579, !tbaa !501
  %166 = load %struct.tcp_pcb*, %struct.tcp_pcb** %165, align 8, !dbg !2583, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %167 = icmp eq %struct.tcp_pcb* %166, null, !dbg !2586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2588
  br i1 %167, label %244, label %168, !dbg !2588

; <label>:168:                                    ; preds = %162, %240
  %169 = phi %struct.tcp_pcb* [ %242, %240 ], [ %166, %162 ]
  %170 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 10, !dbg !2589
  %171 = load i16, i16* %170, align 2, !dbg !2589, !tbaa !1024
  %172 = icmp eq i16 %171, %140, !dbg !2592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2593
  br i1 %172, label %173, label %240, !dbg !2593

; <label>:173:                                    ; preds = %168
  %174 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 11, !dbg !2594
  %175 = load i16, i16* %174, align 8, !dbg !2594, !tbaa !1026
  %176 = icmp eq i16 %175, %2, !dbg !2595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2596
  br i1 %176, label %177, label %240, !dbg !2596

; <label>:177:                                    ; preds = %173
  %178 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 0, i32 1, !dbg !2597
  %179 = load i8, i8* %178, align 4, !dbg !2597, !tbaa !1971
  %180 = icmp eq i8 %179, %124, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  br i1 %180, label %181, label %240, !dbg !2598

; <label>:181:                                    ; preds = %177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  %182 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2597
  %183 = load i32, i32* %182, align 8, !dbg !2597, !tbaa !485
  %184 = icmp eq i32 %183, %123, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2599
  br i1 %161, label %185, label %206, !dbg !2598

; <label>:185:                                    ; preds = %181
  br i1 %184, label %186, label %240, !dbg !2597

; <label>:186:                                    ; preds = %185
  %187 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2597
  %188 = load i32, i32* %187, align 4, !dbg !2597, !tbaa !485
  %189 = load i32, i32* %153, align 4, !dbg !2597, !tbaa !485
  %190 = icmp eq i32 %188, %189, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  br i1 %190, label %191, label %240, !dbg !2597

; <label>:191:                                    ; preds = %186
  %192 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2597
  %193 = load i32, i32* %192, align 8, !dbg !2597, !tbaa !485
  %194 = load i32, i32* %154, align 8, !dbg !2597, !tbaa !485
  %195 = icmp eq i32 %193, %194, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  br i1 %195, label %196, label %240, !dbg !2597

; <label>:196:                                    ; preds = %191
  %197 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2597
  %198 = load i32, i32* %197, align 4, !dbg !2597, !tbaa !485
  %199 = load i32, i32* %155, align 4, !dbg !2597, !tbaa !485
  %200 = icmp eq i32 %198, %199, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  br i1 %200, label %201, label %240, !dbg !2597

; <label>:201:                                    ; preds = %196
  %202 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2597
  %203 = load i8, i8* %202, align 8, !dbg !2597, !tbaa !485
  %204 = load i8, i8* %157, align 8, !dbg !2597, !tbaa !485
  %205 = icmp eq i8 %203, %204, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  br i1 %205, label %207, label %240, !dbg !2597

; <label>:206:                                    ; preds = %181
  br i1 %184, label %207, label %240, !dbg !2598

; <label>:207:                                    ; preds = %206, %201
  %208 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 1, i32 1, !dbg !2600
  %209 = load i8, i8* %208, align 4, !dbg !2600, !tbaa !2488
  %210 = load i8, i8* %17, align 4, !dbg !2600, !tbaa !1911
  %211 = icmp eq i8 %209, %210, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  br i1 %211, label %212, label %240, !dbg !2601

; <label>:212:                                    ; preds = %207
  %213 = icmp eq i8 %209, 6, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %214 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2600
  %215 = load i32, i32* %214, align 8, !dbg !2600, !tbaa !485
  %216 = load i32, i32* %22, align 4, !dbg !2600, !tbaa !485
  %217 = icmp eq i32 %215, %216, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  br i1 %213, label %218, label %239, !dbg !2601

; <label>:218:                                    ; preds = %212
  br i1 %217, label %219, label %240, !dbg !2600

; <label>:219:                                    ; preds = %218
  %220 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2600
  %221 = load i32, i32* %220, align 4, !dbg !2600, !tbaa !485
  %222 = load i32, i32* %156, align 4, !dbg !2600, !tbaa !485
  %223 = icmp eq i32 %221, %222, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2600
  br i1 %223, label %224, label %240, !dbg !2600

; <label>:224:                                    ; preds = %219
  %225 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2600
  %226 = load i32, i32* %225, align 8, !dbg !2600, !tbaa !485
  %227 = load i32, i32* %158, align 4, !dbg !2600, !tbaa !485
  %228 = icmp eq i32 %226, %227, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2600
  br i1 %228, label %229, label %240, !dbg !2600

; <label>:229:                                    ; preds = %224
  %230 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2600
  %231 = load i32, i32* %230, align 4, !dbg !2600, !tbaa !485
  %232 = load i32, i32* %159, align 4, !dbg !2600, !tbaa !485
  %233 = icmp eq i32 %231, %232, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2600
  br i1 %233, label %234, label %240, !dbg !2600

; <label>:234:                                    ; preds = %229
  %235 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2600
  %236 = load i8, i8* %235, align 8, !dbg !2600, !tbaa !485
  %237 = load i8, i8* %160, align 4, !dbg !2600, !tbaa !485
  %238 = icmp eq i8 %236, %237, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2600
  br i1 %238, label %248, label %240, !dbg !2600

; <label>:239:                                    ; preds = %212
  br i1 %217, label %248, label %240, !dbg !2601

; <label>:240:                                    ; preds = %207, %177, %168, %173, %185, %186, %191, %196, %201, %206, %218, %219, %224, %229, %234, %239
  %241 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 6, !dbg !2603
  %242 = load %struct.tcp_pcb*, %struct.tcp_pcb** %241, align 8, !dbg !2603, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2604
  %243 = icmp eq %struct.tcp_pcb* %242, null, !dbg !2586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2588
  br i1 %243, label %244, label %168, !dbg !2588, !llvm.loop !2605

; <label>:244:                                    ; preds = %240, %162
  %245 = add nuw nsw i64 %163, 1, !dbg !2607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2608
  %246 = icmp ult i64 %245, 4, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  br i1 %246, label %162, label %247, !dbg !2578, !llvm.loop !2610

; <label>:247:                                    ; preds = %244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %249

; <label>:248:                                    ; preds = %234, %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  br label %327

; <label>:249:                                    ; preds = %145, %147, %247
  %250 = phi i8 [ %146, %145 ], [ %125, %147 ], [ %125, %247 ], !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  %251 = load i32, i32* @tcp_ticks, align 4, !dbg !2619, !tbaa !414
  %252 = load i32, i32* @tcp_next_iss.iss, align 4, !dbg !2620, !tbaa !414
  %253 = add i32 %252, %251, !dbg !2620
  store i32 %253, i32* @tcp_next_iss.iss, align 4, !dbg !2620, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2621
  %254 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2623
  %255 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2624
  store i32 %253, i32* %255, align 8, !dbg !2625, !tbaa !1018
  %256 = add i32 %253, -1, !dbg !2626
  %257 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 30, !dbg !2627
  store i32 %256, i32* %257, align 8, !dbg !2628, !tbaa !2629
  %258 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 36, !dbg !2630
  store i32 %256, i32* %258, align 8, !dbg !2631, !tbaa !2632
  %259 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !2633
  store i32 %256, i32* %259, align 4, !dbg !2634, !tbaa !2635
  %260 = bitcast i32* %254 to <4 x i32>*, !dbg !2636
  store <4 x i32> <i32 0, i32 65535, i32 65535, i32 0>, <4 x i32>* %260, align 4, !dbg !2636, !tbaa !414
  %261 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !2637
  store i32 262142, i32* %261, align 8, !dbg !2638, !tbaa !712
  %262 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2639
  store i16 536, i16* %262, align 2, !dbg !2640, !tbaa !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  %263 = icmp eq i8 %250, 6, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  br i1 %263, label %264, label %267, !dbg !2646

; <label>:264:                                    ; preds = %249
  %265 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, !dbg !2647
  %266 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %265, %struct.netif* nonnull %62) #7, !dbg !2649
  br label %270, !dbg !2651

; <label>:267:                                    ; preds = %249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  %268 = getelementptr inbounds %struct.netif, %struct.netif* %62, i64 0, i32 17, !dbg !2654
  %269 = load i16, i16* %268, align 2, !dbg !2654, !tbaa !2655
  br label %270

; <label>:270:                                    ; preds = %267, %264
  %271 = phi i16 [ %266, %264 ], [ %269, %267 ], !dbg !2656
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %272 = zext i16 %271 to i32, !dbg !2657
  %273 = icmp eq i16 %271, 0, !dbg !2658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2659
  br i1 %273, label %287, label %274, !dbg !2659

; <label>:274:                                    ; preds = %270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  %275 = load i8, i8* %19, align 4, !dbg !2660, !tbaa !1911
  %276 = icmp eq i8 %275, 6, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2662
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %277 = select i1 %276, i32 60, i32 40, !dbg !2663
  %278 = icmp ult i32 %277, %272, !dbg !2665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2666
  br i1 %278, label %279, label %285, !dbg !2666

; <label>:279:                                    ; preds = %274
  %280 = sub nsw i32 %272, %277, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2666
  %281 = and i32 %280, 65535, !dbg !2666
  %282 = icmp ult i32 %281, 536, !dbg !2668
  %283 = select i1 %282, i32 %281, i32 536, !dbg !2668
  %284 = trunc i32 %283 to i16, !dbg !2668
  br label %285, !dbg !2668

; <label>:285:                                    ; preds = %279, %274
  %286 = phi i16 [ 0, %274 ], [ %284, %279 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br label %287, !dbg !2669

; <label>:287:                                    ; preds = %270, %285
  %288 = phi i16 [ %286, %285 ], [ 536, %270 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2671
  store i16 %288, i16* %262, align 2, !dbg !2672, !tbaa !801
  %289 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !2673
  store i32 1, i32* %289, align 4, !dbg !2674, !tbaa !793
  %290 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 51, !dbg !2675
  store i8 (i8*, %struct.tcp_pcb*, i8)* %3, i8 (i8*, %struct.tcp_pcb*, i8)** %290, align 8, !dbg !2676, !tbaa !2677
  %291 = tail call signext i8 @tcp_enqueue_flags(%struct.tcp_pcb* nonnull %0, i8 zeroext 2) #7, !dbg !2678
  %292 = icmp eq i8 %291, 0, !dbg !2680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %292, label %293, label %327, !dbg !2681

; <label>:293:                                    ; preds = %287
  store i32 2, i32* %11, align 8, !dbg !2682, !tbaa !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  br i1 %141, label %294, label %296, !dbg !2683

; <label>:294:                                    ; preds = %293
  %295 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2684
  br label %322, !dbg !2683

; <label>:296:                                    ; preds = %293
  %297 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2687, !tbaa !501
  %298 = icmp eq %struct.tcp_pcb* %297, %0, !dbg !2687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2688
  br i1 %298, label %299, label %303, !dbg !2688

; <label>:299:                                    ; preds = %296
  %300 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2689
  %301 = bitcast %struct.tcp_pcb** %300 to i64*, !dbg !2689
  %302 = load i64, i64* %301, align 8, !dbg !2689, !tbaa !533
  store i64 %302, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2689, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  br label %320, !dbg !2689

; <label>:303:                                    ; preds = %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2692
  %304 = icmp eq %struct.tcp_pcb* %297, null, !dbg !2694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2692
  br i1 %304, label %318, label %305, !dbg !2692

; <label>:305:                                    ; preds = %303, %316
  %306 = phi %struct.tcp_pcb* [ %308, %316 ], [ %297, %303 ]
  %307 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %306, i64 0, i32 6, !dbg !2696
  %308 = load %struct.tcp_pcb*, %struct.tcp_pcb** %307, align 8, !dbg !2696, !tbaa !533
  %309 = icmp eq %struct.tcp_pcb* %308, %0, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2699
  br i1 %309, label %310, label %316, !dbg !2699

; <label>:310:                                    ; preds = %305
  %311 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %306, i64 0, i32 6, !dbg !2696
  %312 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2700
  %313 = bitcast %struct.tcp_pcb** %312 to i64*, !dbg !2700
  %314 = load i64, i64* %313, align 8, !dbg !2700, !tbaa !533
  %315 = bitcast %struct.tcp_pcb** %311 to i64*, !dbg !2700
  store i64 %314, i64* %315, align 8, !dbg !2700, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2700
  br label %318, !dbg !2700

; <label>:316:                                    ; preds = %305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  %317 = icmp eq %struct.tcp_pcb* %308, null, !dbg !2694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2692
  br i1 %317, label %318, label %305, !dbg !2692, !llvm.loop !2702

; <label>:318:                                    ; preds = %316, %303, %310
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %319 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2688
  br label %320

; <label>:320:                                    ; preds = %318, %299
  %321 = phi %struct.tcp_pcb** [ %319, %318 ], [ %300, %299 ], !dbg !2688
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %321, align 8, !dbg !2688, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  br label %322, !dbg !2703

; <label>:322:                                    ; preds = %294, %320
  %323 = phi %struct.tcp_pcb** [ %295, %294 ], [ %321, %320 ], !dbg !2684
  %324 = load i64, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !2684, !tbaa !501
  %325 = bitcast %struct.tcp_pcb** %323 to i64*, !dbg !2684
  store i64 %324, i64* %325, align 8, !dbg !2684, !tbaa !533
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2684, !tbaa !501
  tail call void @tcp_timer_needed() #7, !dbg !2684
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !2704, !tbaa !485
  %326 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2706
  br label %327, !dbg !2706

; <label>:327:                                    ; preds = %287, %322, %142, %94, %248
  %328 = phi i8 [ -4, %94 ], [ -8, %248 ], [ -2, %142 ], [ %291, %322 ], [ %291, %287 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %329, !dbg !2707

; <label>:329:                                    ; preds = %327, %61
  %330 = phi i8 [ -4, %61 ], [ %328, %327 ], !dbg !2708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  ret i8 %330, !dbg !2707
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @tcp_next_iss(%struct.tcp_pcb* readnone) local_unnamed_addr #0 !dbg !282 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2712
  br i1 %2, label %3, label %4, !dbg !2712

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !2713
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2716
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2716
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @tcp_ticks, align 4, !dbg !2720, !tbaa !414
  %6 = load i32, i32* @tcp_next_iss.iss, align 4, !dbg !2721, !tbaa !414
  %7 = add i32 %6, %5, !dbg !2721
  store i32 %7, i32* @tcp_next_iss.iss, align 4, !dbg !2721, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2722
  ret i32 %7, !dbg !2722
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !2560 {
  %4 = icmp eq %struct.ip_addr* %2, null, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  br i1 %4, label %5, label %6, !dbg !2728

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !2729
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2732
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2732
  unreachable

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2736
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !2736
  %8 = load i8, i8* %7, align 4, !dbg !2736, !tbaa !1911
  %9 = icmp eq i8 %8, 6, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br i1 %9, label %10, label %13, !dbg !2737

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2738
  %12 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %11, %struct.netif* %1) #7, !dbg !2739
  br label %18, !dbg !2741

; <label>:13:                                     ; preds = %6
  %14 = icmp eq %struct.netif* %1, null, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  br i1 %14, label %36, label %15, !dbg !2744

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 17, !dbg !2745
  %17 = load i16, i16* %16, align 2, !dbg !2745, !tbaa !2655
  br label %18

; <label>:18:                                     ; preds = %15, %10
  %19 = phi i16 [ %12, %10 ], [ %17, %15 ], !dbg !2746
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = zext i16 %19 to i32, !dbg !2747
  %21 = icmp eq i16 %19, 0, !dbg !2748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  br i1 %21, label %36, label %22, !dbg !2749

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  %23 = load i8, i8* %7, align 4, !dbg !2750, !tbaa !1911
  %24 = icmp eq i8 %23, 6, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = select i1 %24, i32 60, i32 40, !dbg !2752
  %26 = icmp ult i32 %25, %20, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %26, label %27, label %30, !dbg !2754

; <label>:27:                                     ; preds = %22
  %28 = sub nsw i32 %20, %25, !dbg !2755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  %29 = and i32 %28, 65535, !dbg !2754
  br label %30, !dbg !2754

; <label>:30:                                     ; preds = %22, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %22 ]
  %32 = zext i16 %0 to i32, !dbg !2756
  %33 = icmp ugt i32 %31, %32, !dbg !2756
  %34 = select i1 %33, i32 %32, i32 %31, !dbg !2756
  %35 = trunc i32 %34 to i16, !dbg !2756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2757
  br label %36, !dbg !2757

; <label>:36:                                     ; preds = %30, %18, %13
  %37 = phi i16 [ %0, %13 ], [ %35, %30 ], [ %0, %18 ], !dbg !2758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2760
  ret i16 %37, !dbg !2760
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
define dso_local void @tcp_free_ooseq(%struct.tcp_pcb* nocapture) local_unnamed_addr #0 !dbg !894 {
  %2 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !2762
  %3 = load %struct.tcp_seg*, %struct.tcp_seg** %2, align 8, !dbg !2762, !tbaa !882
  %4 = icmp eq %struct.tcp_seg* %3, null, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  br i1 %4, label %19, label %5, !dbg !2764

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  br label %6, !dbg !2767

; <label>:6:                                      ; preds = %5, %15
  %7 = phi %struct.tcp_seg* [ %9, %15 ], [ %3, %5 ]
  %8 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 0, !dbg !2768
  %9 = load %struct.tcp_seg*, %struct.tcp_seg** %8, align 8, !dbg !2768, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  %10 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 1, !dbg !2773
  %11 = load %struct.pbuf*, %struct.pbuf** %10, align 8, !dbg !2773, !tbaa !926
  %12 = icmp eq %struct.pbuf* %11, null, !dbg !2774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2775
  br i1 %12, label %15, label %13, !dbg !2775

; <label>:13:                                     ; preds = %6
  %14 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %11) #7, !dbg !2776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br label %15, !dbg !2777

; <label>:15:                                     ; preds = %13, %6
  %16 = bitcast %struct.tcp_seg* %7 to i8*, !dbg !2778
  tail call void @memp_free(i32 3, i8* %16) #7, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  %17 = icmp eq %struct.tcp_seg* %9, null, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  br i1 %17, label %18, label %6, !dbg !2767, !llvm.loop !937

; <label>:18:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  store %struct.tcp_seg* null, %struct.tcp_seg** %2, align 8, !dbg !2784, !tbaa !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2785
  br label %19, !dbg !2785

; <label>:19:                                     ; preds = %1, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2786
  ret void, !dbg !2786
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_pcb_purge(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2787 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  br i1 %2, label %3, label %4, !dbg !2794

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !2795
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2798
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2798
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2802
  %6 = load i32, i32* %5, align 8, !dbg !2802, !tbaa !457
  %7 = icmp eq i32 %6, 0, !dbg !2804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2805
  br i1 %7, label %72, label %8, !dbg !2805

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i32 %6, 10, !dbg !2806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2807
  br i1 %9, label %72, label %10, !dbg !2807

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i32 %6, 1, !dbg !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2809
  br i1 %11, label %72, label %12, !dbg !2809

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !2810
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !2810, !tbaa !537
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !2813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2814
  br i1 %15, label %18, label %16, !dbg !2814

; <label>:16:                                     ; preds = %12
  %17 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %14) #7, !dbg !2815
  store %struct.pbuf* null, %struct.pbuf** %13, align 8, !dbg !2817, !tbaa !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  br label %18, !dbg !2818

; <label>:18:                                     ; preds = %12, %16
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2819
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2821
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !2823
  %22 = load %struct.tcp_seg*, %struct.tcp_seg** %21, align 8, !dbg !2823, !tbaa !882
  %23 = icmp eq %struct.tcp_seg* %22, null, !dbg !2825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2826
  br i1 %23, label %38, label %24, !dbg !2826

; <label>:24:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2833
  br label %25, !dbg !2833

; <label>:25:                                     ; preds = %34, %24
  %26 = phi %struct.tcp_seg* [ %28, %34 ], [ %22, %24 ]
  %27 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %26, i64 0, i32 0, !dbg !2834
  %28 = load %struct.tcp_seg*, %struct.tcp_seg** %27, align 8, !dbg !2834, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  %29 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %26, i64 0, i32 1, !dbg !2839
  %30 = load %struct.pbuf*, %struct.pbuf** %29, align 8, !dbg !2839, !tbaa !926
  %31 = icmp eq %struct.pbuf* %30, null, !dbg !2840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2841
  br i1 %31, label %34, label %32, !dbg !2841

; <label>:32:                                     ; preds = %25
  %33 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #7, !dbg !2842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2843
  br label %34, !dbg !2843

; <label>:34:                                     ; preds = %32, %25
  %35 = bitcast %struct.tcp_seg* %26 to i8*, !dbg !2844
  tail call void @memp_free(i32 3, i8* %35) #7, !dbg !2845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2833
  %36 = icmp eq %struct.tcp_seg* %28, null, !dbg !2848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2833
  br i1 %36, label %37, label %25, !dbg !2833, !llvm.loop !937

; <label>:37:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  store %struct.tcp_seg* null, %struct.tcp_seg** %21, align 8, !dbg !2850, !tbaa !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2853
  br label %38, !dbg !2853

; <label>:38:                                     ; preds = %18, %37
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21, !dbg !2854
  store i16 -1, i16* %39, align 4, !dbg !2855, !tbaa !750
  %40 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !2856, !tbaa !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  %41 = icmp eq %struct.tcp_seg* %40, null, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  br i1 %41, label %54, label %42, !dbg !2859

; <label>:42:                                     ; preds = %38, %51
  %43 = phi %struct.tcp_seg* [ %45, %51 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %43, i64 0, i32 0, !dbg !2861
  %45 = load %struct.tcp_seg*, %struct.tcp_seg** %44, align 8, !dbg !2861, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2865
  %46 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %43, i64 0, i32 1, !dbg !2866
  %47 = load %struct.pbuf*, %struct.pbuf** %46, align 8, !dbg !2866, !tbaa !926
  %48 = icmp eq %struct.pbuf* %47, null, !dbg !2867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2868
  br i1 %48, label %51, label %49, !dbg !2868

; <label>:49:                                     ; preds = %42
  %50 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %47) #7, !dbg !2869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2870
  br label %51, !dbg !2870

; <label>:51:                                     ; preds = %49, %42
  %52 = bitcast %struct.tcp_seg* %43 to i8*, !dbg !2871
  tail call void @memp_free(i32 3, i8* %52) #7, !dbg !2872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  %53 = icmp eq %struct.tcp_seg* %45, null, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  br i1 %53, label %54, label %42, !dbg !2859, !llvm.loop !937

; <label>:54:                                     ; preds = %51, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2875
  %55 = load %struct.tcp_seg*, %struct.tcp_seg** %20, align 8, !dbg !2876, !tbaa !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %56 = icmp eq %struct.tcp_seg* %55, null, !dbg !2880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  br i1 %56, label %69, label %57, !dbg !2879

; <label>:57:                                     ; preds = %54, %66
  %58 = phi %struct.tcp_seg* [ %60, %66 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %58, i64 0, i32 0, !dbg !2881
  %60 = load %struct.tcp_seg*, %struct.tcp_seg** %59, align 8, !dbg !2881, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2885
  %61 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %58, i64 0, i32 1, !dbg !2886
  %62 = load %struct.pbuf*, %struct.pbuf** %61, align 8, !dbg !2886, !tbaa !926
  %63 = icmp eq %struct.pbuf* %62, null, !dbg !2887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2888
  br i1 %63, label %66, label %64, !dbg !2888

; <label>:64:                                     ; preds = %57
  %65 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %62) #7, !dbg !2889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  br label %66, !dbg !2890

; <label>:66:                                     ; preds = %64, %57
  %67 = bitcast %struct.tcp_seg* %58 to i8*, !dbg !2891
  tail call void @memp_free(i32 3, i8* %67) #7, !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %68 = icmp eq %struct.tcp_seg* %60, null, !dbg !2880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  br i1 %68, label %69, label %57, !dbg !2879, !llvm.loop !937

; <label>:69:                                     ; preds = %66, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2895
  %70 = bitcast %struct.tcp_seg** %19 to <2 x %struct.tcp_seg*>*, !dbg !2896
  store <2 x %struct.tcp_seg*> zeroinitializer, <2 x %struct.tcp_seg*>* %70, align 8, !dbg !2896, !tbaa !501
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2897
  store i16 0, i16* %71, align 2, !dbg !2898, !tbaa !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  br label %72, !dbg !2900

; <label>:72:                                     ; preds = %10, %8, %4, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  ret void, !dbg !2901
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb*) unnamed_addr #0 !dbg !2902 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  br i1 %2, label %3, label %4, !dbg !2910

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !2911
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2914
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2914
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2918
  %6 = load i32, i32* %5, align 8, !dbg !2918, !tbaa !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2919
  switch i32 %6, label %26 [
    i32 3, label %7
    i32 4, label %10
    i32 7, label %13
  ], !dbg !2919

; <label>:7:                                      ; preds = %4
  %8 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #7, !dbg !2920
  %9 = icmp eq i8 %8, 0, !dbg !2923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2925
  br i1 %9, label %16, label %19, !dbg !2925

; <label>:10:                                     ; preds = %4
  %11 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #7, !dbg !2926
  %12 = icmp eq i8 %11, 0, !dbg !2927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2929
  br i1 %12, label %16, label %19, !dbg !2929

; <label>:13:                                     ; preds = %4
  %14 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #7, !dbg !2930
  %15 = icmp eq i8 %14, 0, !dbg !2931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2933
  br i1 %15, label %16, label %19, !dbg !2933

; <label>:16:                                     ; preds = %13, %10, %7
  %17 = phi i32 [ 5, %7 ], [ 5, %10 ], [ 9, %13 ]
  store i32 %17, i32* %5, align 8, !dbg !2934, !tbaa !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  %18 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br label %26, !dbg !2940

; <label>:19:                                     ; preds = %7, %10, %13
  %20 = phi i8 [ %14, %13 ], [ %11, %10 ], [ %8, %7 ], !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  %21 = icmp eq i8 %20, -1, !dbg !2942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2944
  br i1 %21, label %22, label %26, !dbg !2944

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2945
  %24 = load i16, i16* %23, align 2, !dbg !2945, !tbaa !513
  %25 = or i16 %24, 8, !dbg !2945
  store i16 %25, i16* %23, align 2, !dbg !2945, !tbaa !513
  br label %26, !dbg !2948

; <label>:26:                                     ; preds = %16, %19, %4, %22
  %27 = phi i8 [ 0, %22 ], [ 0, %4 ], [ %20, %19 ], [ 0, %16 ], !dbg !2949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  ret i8 %27, !dbg !2950
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_process_refused_data(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2951 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = bitcast %struct.pbuf** %2 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !2960
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2964
  br i1 %4, label %16, label %5, !dbg !2964

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !2965
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !2965, !tbaa !537
  %8 = icmp eq %struct.pbuf* %7, null, !dbg !2966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2967
  br i1 %8, label %67, label %9, !dbg !2967

; <label>:9:                                      ; preds = %5
  %10 = bitcast %struct.pbuf** %2 to i64*
  %11 = bitcast %struct.pbuf** %6 to i64*
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 50
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  br label %17, !dbg !2967

; <label>:16:                                     ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2968
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2971
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2971
  unreachable

; <label>:17:                                     ; preds = %9, %64
  %18 = phi %struct.pbuf* [ %7, %9 ], [ %65, %64 ]
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 5, !dbg !2975
  %20 = load i8, i8* %19, align 1, !dbg !2975, !tbaa !2976
  call void @pbuf_split_64k(%struct.pbuf* nonnull %18, %struct.pbuf** nonnull %2) #7, !dbg !2981
  %21 = load i64, i64* %10, align 8, !dbg !2982, !tbaa !501
  store i64 %21, i64* %11, align 8, !dbg !2983, !tbaa !537
  %22 = load i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %12, align 8, !dbg !2984, !tbaa !2987
  %23 = icmp eq i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %22, null, !dbg !2984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2988
  br i1 %23, label %24, label %28, !dbg !2988

; <label>:24:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3003
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 2, !dbg !3004
  %26 = load i16, i16* %25, align 8, !dbg !3004, !tbaa !3007
  call void @tcp_recved(%struct.tcp_pcb* nonnull %0, i16 zeroext %26) #7, !dbg !3008
  %27 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %18) #7, !dbg !3009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3012
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  br label %32, !dbg !3014

; <label>:28:                                     ; preds = %17
  %29 = load i8*, i8** %13, align 8, !dbg !3015, !tbaa !1030
  %30 = call signext i8 %22(i8* %29, %struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %18, i8 signext 0) #7, !dbg !3015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  %31 = icmp eq i8 %30, 0, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  br i1 %31, label %32, label %55, !dbg !3014

; <label>:32:                                     ; preds = %24, %28
  %33 = and i8 %20, 32, !dbg !3019
  %34 = icmp ne i8 %33, 0, !dbg !3019
  %35 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !3022
  %36 = icmp eq %struct.pbuf* %35, null, !dbg !3023
  %37 = and i1 %34, %36, !dbg !3024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3024
  br i1 %37, label %38, label %64, !dbg !3024

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %14, align 8, !dbg !3025, !tbaa !1232
  %40 = load i16, i16* %15, align 2, !dbg !3028, !tbaa !513
  %41 = and i16 %40, 256, !dbg !3028
  %42 = icmp eq i16 %41, 0, !dbg !3028
  %43 = select i1 %42, i32 65535, i32 262142, !dbg !3028
  %44 = icmp eq i32 %39, %43, !dbg !3029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3030
  br i1 %44, label %47, label %45, !dbg !3030

; <label>:45:                                     ; preds = %38
  %46 = add i32 %39, 1, !dbg !3031
  store i32 %46, i32* %14, align 8, !dbg !3031, !tbaa !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3033
  br label %47, !dbg !3033

; <label>:47:                                     ; preds = %38, %45
  %48 = load i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %12, align 8, !dbg !3034, !tbaa !2987
  %49 = icmp eq i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %48, null, !dbg !3034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3037
  br i1 %49, label %50, label %51, !dbg !3037

; <label>:50:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3038
  br label %64, !dbg !3038

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %13, align 8, !dbg !3039, !tbaa !1030
  %53 = call signext i8 %48(i8* %52, %struct.tcp_pcb* nonnull %0, %struct.pbuf* null, i8 signext 0) #7, !dbg !3039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3039
  %54 = icmp eq i8 %53, -13, !dbg !3041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3038
  br i1 %54, label %62, label %64, !dbg !3038

; <label>:55:                                     ; preds = %28
  %56 = icmp eq i8 %30, -13, !dbg !3043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3045
  br i1 %56, label %62, label %57, !dbg !3045

; <label>:57:                                     ; preds = %55
  %58 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !3046, !tbaa !501
  %59 = icmp eq %struct.pbuf* %58, null, !dbg !3049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3050
  br i1 %59, label %61, label %60, !dbg !3050

; <label>:60:                                     ; preds = %57
  call void @pbuf_cat(%struct.pbuf* nonnull %18, %struct.pbuf* nonnull %58) #7, !dbg !3051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3053
  br label %61, !dbg !3053

; <label>:61:                                     ; preds = %57, %60
  store %struct.pbuf* %18, %struct.pbuf** %6, align 8, !dbg !3054, !tbaa !537
  br label %62, !dbg !3055

; <label>:62:                                     ; preds = %51, %55, %61
  %63 = phi i8 [ -5, %61 ], [ -13, %55 ], [ -13, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  br label %67

; <label>:64:                                     ; preds = %51, %32, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3057
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %65 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !2965, !tbaa !537
  %66 = icmp eq %struct.pbuf* %65, null, !dbg !2966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2967
  br i1 %66, label %67, label %17, !dbg !2967

; <label>:67:                                     ; preds = %64, %5, %62
  %68 = phi i8 [ %63, %62 ], [ 0, %5 ], [ 0, %64 ], !dbg !3058
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !3059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3059
  ret i8 %68, !dbg !3059
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_txnow() local_unnamed_addr #0 !dbg !3060 {
  %1 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3063, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3066
  %2 = icmp eq %struct.tcp_pcb* %1, null, !dbg !3067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br i1 %2, label %15, label %3, !dbg !3069

; <label>:3:                                      ; preds = %0, %11
  %4 = phi %struct.tcp_pcb* [ %13, %11 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 12, !dbg !3070
  %6 = load i16, i16* %5, align 2, !dbg !3070, !tbaa !513
  %7 = trunc i16 %6 to i8, !dbg !3073
  %8 = icmp slt i8 %7, 0, !dbg !3073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br i1 %8, label %9, label %11, !dbg !3074

; <label>:9:                                      ; preds = %3
  %10 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %4) #7, !dbg !3075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3077
  br label %11, !dbg !3077

; <label>:11:                                     ; preds = %3, %9
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 6, !dbg !3078
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %12, align 8, !dbg !3078, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %14 = icmp eq %struct.tcp_pcb* %13, null, !dbg !3067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br i1 %14, label %15, label %3, !dbg !3069, !llvm.loop !3080

; <label>:15:                                     ; preds = %11, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3082
  ret void, !dbg !3082
}

; Function Attrs: noredzone
declare dso_local void @pbuf_split_64k(%struct.pbuf*, %struct.pbuf**) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_recv_null(i8* nocapture readnone, %struct.tcp_pcb*, %struct.pbuf*, i8 signext) #0 !dbg !2990 {
  %5 = icmp eq %struct.tcp_pcb* %1, null, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3089
  br i1 %5, label %6, label %7, !dbg !3089

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !3090
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3093
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3093
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.pbuf* %2, null, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  br i1 %8, label %13, label %9, !dbg !3098

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3099
  %11 = load i16, i16* %10, align 8, !dbg !3099, !tbaa !3007
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %1, i16 zeroext %11) #8, !dbg !3100
  %12 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #7, !dbg !3101
  br label %25, !dbg !3102

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i8 %3, 0, !dbg !3103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3105
  br i1 %14, label %15, label %27, !dbg !3105

; <label>:15:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3109
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 8, !dbg !3110
  %17 = load i32, i32* %16, align 8, !dbg !3110, !tbaa !457
  %18 = icmp eq i32 %17, 1, !dbg !3111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3112
  br i1 %18, label %23, label %19, !dbg !3112

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 12, !dbg !3113
  %21 = load i16, i16* %20, align 2, !dbg !3113, !tbaa !513
  %22 = or i16 %21, 16, !dbg !3113
  store i16 %22, i16* %20, align 2, !dbg !3113, !tbaa !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3114
  br label %23, !dbg !3114

; <label>:23:                                     ; preds = %15, %19
  %24 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %1, i8 zeroext 1) #7, !dbg !3115
  br label %25, !dbg !3116

; <label>:25:                                     ; preds = %23, %9
  %26 = phi i8 [ 0, %9 ], [ %24, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3117
  br label %27, !dbg !3117

; <label>:27:                                     ; preds = %25, %13
  %28 = phi i8 [ 0, %13 ], [ %26, %25 ], !dbg !3117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3118
  ret i8 %28, !dbg !3118
}

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_seg_free(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !917 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !3120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  br i1 %2, label %11, label %3, !dbg !3121

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %0, i64 0, i32 1, !dbg !3122
  %5 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !3122, !tbaa !926
  %6 = icmp eq %struct.pbuf* %5, null, !dbg !3123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3124
  br i1 %6, label %9, label %7, !dbg !3124

; <label>:7:                                      ; preds = %3
  %8 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %5) #7, !dbg !3125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3126
  br label %9, !dbg !3126

; <label>:9:                                      ; preds = %3, %7
  %10 = bitcast %struct.tcp_seg* %0 to i8*, !dbg !3127
  tail call void @memp_free(i32 3, i8* %10) #7, !dbg !3128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3129
  br label %11, !dbg !3129

; <label>:11:                                     ; preds = %1, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3130
  ret void, !dbg !3130
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_setprio(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !3131 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3142
  br i1 %3, label %4, label %5, !dbg !3142

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !3143
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3146
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3146
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 9, !dbg !3150
  store i8 %1, i8* %6, align 4, !dbg !3151, !tbaa !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  ret void, !dbg !3152
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_seg* @tcp_seg_copy(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !3153 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !3160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3163
  br i1 %2, label %3, label %4, !dbg !3163

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !3164
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3167
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3167
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @memp_malloc(i32 3) #7, !dbg !3171
  %6 = icmp eq i8* %5, null, !dbg !3172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  br i1 %6, label %14, label %7, !dbg !3174

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8* %5 to %struct.tcp_seg*, !dbg !3175
  %9 = bitcast %struct.tcp_seg* %0 to i8*, !dbg !3177
  %10 = tail call i8* @memcpy(i8* nonnull %5, i8* %9, i64 32) #7, !dbg !3177
  %11 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !3178
  %12 = bitcast i8* %11 to %struct.pbuf**, !dbg !3178
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !3178, !tbaa !926
  tail call void @pbuf_ref(%struct.pbuf* %13) #7, !dbg !3179
  br label %14, !dbg !3180

; <label>:14:                                     ; preds = %4, %7
  %15 = phi %struct.tcp_seg* [ %8, %7 ], [ null, %4 ], !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3184
  ret %struct.tcp_seg* %15, !dbg !3184
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_alloc(i8 zeroext) local_unnamed_addr #0 !dbg !3185 {
  %2 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3192
  %3 = icmp eq i8* %2, null, !dbg !3194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  br i1 %3, label %4, label %157, !dbg !3196

; <label>:4:                                      ; preds = %1
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3197, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  %6 = icmp eq %struct.tcp_pcb* %5, null, !dbg !3207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  br i1 %6, label %20, label %7, !dbg !3206

; <label>:7:                                      ; preds = %4, %18
  %8 = phi %struct.tcp_pcb* [ %10, %18 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i64 0, i32 6, !dbg !3208
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** %9, align 8, !dbg !3208, !tbaa !533
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i64 0, i32 12, !dbg !3210
  %12 = load i16, i16* %11, align 2, !dbg !3210, !tbaa !513
  %13 = and i16 %12, 8, !dbg !3212
  %14 = icmp eq i16 %13, 0, !dbg !3212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3213
  br i1 %14, label %18, label %15, !dbg !3213

; <label>:15:                                     ; preds = %7
  %16 = and i16 %12, -9, !dbg !3214
  store i16 %16, i16* %11, align 2, !dbg !3214, !tbaa !513
  %17 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %8) #7, !dbg !3217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3218
  br label %18, !dbg !3218

; <label>:18:                                     ; preds = %15, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  %19 = icmp eq %struct.tcp_pcb* %10, null, !dbg !3207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  br i1 %19, label %20, label %7, !dbg !3206, !llvm.loop !3219

; <label>:20:                                     ; preds = %18, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3222
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !3231, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3234
  %22 = icmp eq %struct.tcp_pcb* %21, null, !dbg !3235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  br i1 %22, label %43, label %23, !dbg !3237

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* @tcp_ticks, align 4, !tbaa !414
  br label %25, !dbg !3237

; <label>:25:                                     ; preds = %34, %23
  %26 = phi i32 [ 0, %23 ], [ %36, %34 ]
  %27 = phi %struct.tcp_pcb* [ null, %23 ], [ %35, %34 ]
  %28 = phi %struct.tcp_pcb* [ %21, %23 ], [ %38, %34 ]
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %28, i64 0, i32 16, !dbg !3238
  %30 = load i32, i32* %29, align 8, !dbg !3238, !tbaa !829
  %31 = sub i32 %24, %30, !dbg !3241
  %32 = icmp ult i32 %31, %26, !dbg !3242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  br i1 %32, label %34, label %33, !dbg !3243

; <label>:33:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  br label %34, !dbg !3244

; <label>:34:                                     ; preds = %33, %25
  %35 = phi %struct.tcp_pcb* [ %28, %33 ], [ %27, %25 ], !dbg !3246
  %36 = phi i32 [ %31, %33 ], [ %26, %25 ], !dbg !3246
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %28, i64 0, i32 6, !dbg !3247
  %38 = load %struct.tcp_pcb*, %struct.tcp_pcb** %37, align 8, !dbg !3247, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3248
  %39 = icmp eq %struct.tcp_pcb* %38, null, !dbg !3235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  br i1 %39, label %40, label %25, !dbg !3237, !llvm.loop !3249

; <label>:40:                                     ; preds = %34
  %41 = icmp eq %struct.tcp_pcb* %35, null, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3254
  br i1 %41, label %44, label %42, !dbg !3254

; <label>:42:                                     ; preds = %40
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %35, i32 1) #7, !dbg !3258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3259
  br label %43, !dbg !3260

; <label>:43:                                     ; preds = %20, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3261
  br label %44, !dbg !3262

; <label>:44:                                     ; preds = %43, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3262
  %45 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3263
  %46 = icmp eq i8* %45, null, !dbg !3264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3261
  br i1 %46, label %47, label %157, !dbg !3266

; <label>:47:                                     ; preds = %44
  %48 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3280, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3283
  %49 = icmp eq %struct.tcp_pcb* %48, null, !dbg !3284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  br i1 %49, label %74, label %50, !dbg !3286

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* @tcp_ticks, align 4
  br label %52, !dbg !3286

; <label>:52:                                     ; preds = %65, %50
  %53 = phi i32 [ 0, %50 ], [ %67, %65 ]
  %54 = phi %struct.tcp_pcb* [ null, %50 ], [ %66, %65 ]
  %55 = phi %struct.tcp_pcb* [ %48, %50 ], [ %69, %65 ]
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %55, i64 0, i32 8, !dbg !3287
  %57 = load i32, i32* %56, align 8, !dbg !3287, !tbaa !457
  %58 = icmp eq i32 %57, 9, !dbg !3290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3291
  br i1 %58, label %59, label %65, !dbg !3291

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %55, i64 0, i32 16, !dbg !3292
  %61 = load i32, i32* %60, align 8, !dbg !3292, !tbaa !829
  %62 = sub i32 %51, %61, !dbg !3295
  %63 = icmp ult i32 %62, %53, !dbg !3296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  br i1 %63, label %65, label %64, !dbg !3297

; <label>:64:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3298
  br label %65, !dbg !3298

; <label>:65:                                     ; preds = %64, %59, %52
  %66 = phi %struct.tcp_pcb* [ %55, %64 ], [ %54, %59 ], [ %54, %52 ], !dbg !3300
  %67 = phi i32 [ %62, %64 ], [ %53, %59 ], [ %53, %52 ], !dbg !3300
  %68 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %55, i64 0, i32 6, !dbg !3301
  %69 = load %struct.tcp_pcb*, %struct.tcp_pcb** %68, align 8, !dbg !3301, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3302
  %70 = icmp eq %struct.tcp_pcb* %69, null, !dbg !3284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  br i1 %70, label %71, label %52, !dbg !3286, !llvm.loop !3303

; <label>:71:                                     ; preds = %65
  %72 = icmp eq %struct.tcp_pcb* %66, null, !dbg !3306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3308
  br i1 %72, label %75, label %73, !dbg !3308

; <label>:73:                                     ; preds = %71
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %66, i32 0) #7, !dbg !3309
  br label %74, !dbg !3311

; <label>:74:                                     ; preds = %47, %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  br label %75, !dbg !3313

; <label>:75:                                     ; preds = %74, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  %76 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3314
  %77 = icmp eq i8* %76, null, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  br i1 %77, label %79, label %78, !dbg !3317

; <label>:78:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  br label %157, !dbg !3319

; <label>:79:                                     ; preds = %75
  %80 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3325, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3327
  %81 = icmp eq %struct.tcp_pcb* %80, null, !dbg !3328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  br i1 %81, label %106, label %82, !dbg !3329

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* @tcp_ticks, align 4
  br label %84, !dbg !3329

; <label>:84:                                     ; preds = %97, %82
  %85 = phi i32 [ 0, %82 ], [ %99, %97 ]
  %86 = phi %struct.tcp_pcb* [ null, %82 ], [ %98, %97 ]
  %87 = phi %struct.tcp_pcb* [ %80, %82 ], [ %101, %97 ]
  %88 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 8, !dbg !3330
  %89 = load i32, i32* %88, align 8, !dbg !3330, !tbaa !457
  %90 = icmp eq i32 %89, 8, !dbg !3331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  br i1 %90, label %91, label %97, !dbg !3332

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 16, !dbg !3333
  %93 = load i32, i32* %92, align 8, !dbg !3333, !tbaa !829
  %94 = sub i32 %83, %93, !dbg !3334
  %95 = icmp ult i32 %94, %85, !dbg !3335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3336
  br i1 %95, label %97, label %96, !dbg !3336

; <label>:96:                                     ; preds = %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3337
  br label %97, !dbg !3337

; <label>:97:                                     ; preds = %96, %91, %84
  %98 = phi %struct.tcp_pcb* [ %87, %96 ], [ %86, %91 ], [ %86, %84 ], !dbg !3338
  %99 = phi i32 [ %94, %96 ], [ %85, %91 ], [ %85, %84 ], !dbg !3338
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !3339
  %101 = load %struct.tcp_pcb*, %struct.tcp_pcb** %100, align 8, !dbg !3339, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3340
  %102 = icmp eq %struct.tcp_pcb* %101, null, !dbg !3328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  br i1 %102, label %103, label %84, !dbg !3329, !llvm.loop !3303

; <label>:103:                                    ; preds = %97
  %104 = icmp eq %struct.tcp_pcb* %98, null, !dbg !3341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3342
  br i1 %104, label %107, label %105, !dbg !3342

; <label>:105:                                    ; preds = %103
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %98, i32 0) #7, !dbg !3343
  br label %106, !dbg !3344

; <label>:106:                                    ; preds = %79, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3345
  br label %107, !dbg !3346

; <label>:107:                                    ; preds = %106, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3346
  %108 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3347
  %109 = icmp eq i8* %108, null, !dbg !3348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3350
  br i1 %109, label %111, label %110, !dbg !3350

; <label>:110:                                    ; preds = %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  br label %157, !dbg !3319

; <label>:111:                                    ; preds = %107
  %112 = icmp ult i8 %0, 127, !dbg !3365
  %113 = select i1 %112, i8 %0, i8 127, !dbg !3365
  %114 = icmp eq i8 %113, 0, !dbg !3367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3369
  br i1 %114, label %153, label %115, !dbg !3369

; <label>:115:                                    ; preds = %111
  %116 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3372, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3375
  %117 = icmp eq %struct.tcp_pcb* %116, null, !dbg !3376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  br i1 %117, label %152, label %118, !dbg !3378

; <label>:118:                                    ; preds = %115
  %119 = add nsw i8 %113, -1, !dbg !3379
  %120 = load i32, i32* @tcp_ticks, align 4
  br label %121, !dbg !3378

; <label>:121:                                    ; preds = %142, %118
  %122 = phi i8 [ %119, %118 ], [ %145, %142 ]
  %123 = phi i32 [ 0, %118 ], [ %144, %142 ]
  %124 = phi %struct.tcp_pcb* [ null, %118 ], [ %143, %142 ]
  %125 = phi %struct.tcp_pcb* [ %116, %118 ], [ %147, %142 ]
  %126 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %125, i64 0, i32 9, !dbg !3380
  %127 = load i8, i8* %126, align 4, !dbg !3380, !tbaa !2193
  %128 = icmp ult i8 %127, %122, !dbg !3383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3384
  br i1 %128, label %129, label %133, !dbg !3384

; <label>:129:                                    ; preds = %121
  %130 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %125, i64 0, i32 16
  %131 = load i32, i32* %130, align 8, !dbg !3385, !tbaa !829
  %132 = sub i32 %120, %131, !dbg !3387
  br label %140, !dbg !3384

; <label>:133:                                    ; preds = %121
  %134 = icmp eq i8 %127, %122, !dbg !3388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3389
  br i1 %134, label %135, label %142, !dbg !3389

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %125, i64 0, i32 16, !dbg !3390
  %137 = load i32, i32* %136, align 8, !dbg !3390, !tbaa !829
  %138 = sub i32 %120, %137, !dbg !3391
  %139 = icmp ult i32 %138, %123, !dbg !3392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3393
  br i1 %139, label %142, label %140, !dbg !3393

; <label>:140:                                    ; preds = %135, %129
  %141 = phi i32 [ %132, %129 ], [ %138, %135 ], !dbg !3387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  br label %142, !dbg !3394

; <label>:142:                                    ; preds = %140, %135, %133
  %143 = phi %struct.tcp_pcb* [ %125, %140 ], [ %124, %135 ], [ %124, %133 ], !dbg !3395
  %144 = phi i32 [ %141, %140 ], [ %123, %135 ], [ %123, %133 ], !dbg !3395
  %145 = phi i8 [ %127, %140 ], [ %122, %135 ], [ %122, %133 ], !dbg !3395
  %146 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %125, i64 0, i32 6, !dbg !3396
  %147 = load %struct.tcp_pcb*, %struct.tcp_pcb** %146, align 8, !dbg !3396, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3397
  %148 = icmp eq %struct.tcp_pcb* %147, null, !dbg !3376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  br i1 %148, label %149, label %121, !dbg !3378, !llvm.loop !3398

; <label>:149:                                    ; preds = %142
  %150 = icmp eq %struct.tcp_pcb* %143, null, !dbg !3401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3403
  br i1 %150, label %153, label %151, !dbg !3403

; <label>:151:                                    ; preds = %149
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %143, i32 1) #7, !dbg !3407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3408
  br label %152, !dbg !3409

; <label>:152:                                    ; preds = %115, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3410
  br label %153, !dbg !3411

; <label>:153:                                    ; preds = %149, %152, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3411
  %154 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  %155 = bitcast i8* %154 to %struct.tcp_pcb*, !dbg !3414
  %156 = icmp eq i8* %154, null, !dbg !3415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3319
  br i1 %156, label %193, label %160, !dbg !3319

; <label>:157:                                    ; preds = %44, %1, %78, %110
  %158 = phi i8* [ %108, %110 ], [ %76, %78 ], [ %2, %1 ], [ %45, %44 ]
  %159 = bitcast i8* %158 to %struct.tcp_pcb*, !dbg !3414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3319
  br label %160, !dbg !3417

; <label>:160:                                    ; preds = %157, %153
  %161 = phi %struct.tcp_pcb* [ %155, %153 ], [ %159, %157 ]
  %162 = phi i8* [ %154, %153 ], [ %158, %157 ]
  %163 = tail call i8* @memset(i8* nonnull %162, i32 0, i64 280) #7, !dbg !3417
  %164 = getelementptr inbounds i8, i8* %162, i64 76, !dbg !3419
  store i8 %0, i8* %164, align 4, !dbg !3420, !tbaa !2193
  %165 = getelementptr inbounds i8, i8* %162, i64 168, !dbg !3421
  %166 = bitcast i8* %165 to i32*, !dbg !3421
  store i32 1048576, i32* %166, align 8, !dbg !3422, !tbaa !3423
  %167 = getelementptr inbounds i8, i8* %162, i64 100, !dbg !3424
  %168 = bitcast i8* %167 to i32*, !dbg !3424
  store i32 65535, i32* %168, align 4, !dbg !3425, !tbaa !2402
  %169 = getelementptr inbounds i8, i8* %162, i64 96, !dbg !3426
  %170 = bitcast i8* %169 to i32*, !dbg !3426
  store i32 65535, i32* %170, align 8, !dbg !3427, !tbaa !1232
  %171 = getelementptr inbounds i8, i8* %162, i64 51, !dbg !3428
  store i8 -1, i8* %171, align 1, !dbg !3429, !tbaa !2205
  %172 = getelementptr inbounds i8, i8* %162, i64 110, !dbg !3430
  %173 = bitcast i8* %172 to i16*, !dbg !3430
  store i16 536, i16* %173, align 2, !dbg !3431, !tbaa !801
  %174 = getelementptr inbounds i8, i8* %162, i64 124, !dbg !3432
  %175 = bitcast i8* %174 to i16*, !dbg !3432
  store i16 6, i16* %175, align 4, !dbg !3433, !tbaa !761
  %176 = getelementptr inbounds i8, i8* %162, i64 122, !dbg !3434
  %177 = bitcast i8* %176 to i16*, !dbg !3434
  store i16 6, i16* %177, align 2, !dbg !3435, !tbaa !781
  %178 = getelementptr inbounds i8, i8* %162, i64 108, !dbg !3436
  %179 = bitcast i8* %178 to i16*, !dbg !3436
  store i16 -1, i16* %179, align 4, !dbg !3437, !tbaa !750
  %180 = getelementptr inbounds i8, i8* %162, i64 132, !dbg !3438
  %181 = bitcast i8* %180 to i32*, !dbg !3438
  store i32 1, i32* %181, align 4, !dbg !3439, !tbaa !793
  %182 = load i32, i32* @tcp_ticks, align 4, !dbg !3440, !tbaa !414
  %183 = getelementptr inbounds i8, i8* %162, i64 88, !dbg !3441
  %184 = bitcast i8* %183 to i32*, !dbg !3441
  store i32 %182, i32* %184, align 8, !dbg !3442, !tbaa !829
  %185 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !3443, !tbaa !485
  %186 = getelementptr inbounds i8, i8* %162, i64 86, !dbg !3444
  store i8 %185, i8* %186, align 2, !dbg !3445, !tbaa !506
  %187 = getelementptr inbounds i8, i8* %162, i64 136, !dbg !3446
  %188 = bitcast i8* %187 to i32*, !dbg !3446
  store i32 1048576, i32* %188, align 8, !dbg !3447, !tbaa !798
  %189 = getelementptr inbounds i8, i8* %162, i64 232, !dbg !3448
  %190 = bitcast i8* %189 to i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)**, !dbg !3448
  store i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* @tcp_recv_null, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %190, align 8, !dbg !3449, !tbaa !2987
  %191 = getelementptr inbounds i8, i8* %162, i64 264, !dbg !3450
  %192 = bitcast i8* %191 to i32*, !dbg !3450
  store i32 7200000, i32* %192, align 8, !dbg !3451, !tbaa !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3452
  br label %193, !dbg !3452

; <label>:193:                                    ; preds = %153, %160
  %194 = phi %struct.tcp_pcb* [ %155, %153 ], [ %161, %160 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3453
  ret %struct.tcp_pcb* %194, !dbg !3453
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_new() local_unnamed_addr #0 !dbg !3454 {
  %1 = tail call %struct.tcp_pcb* @tcp_alloc(i8 zeroext 64) #8, !dbg !3457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3458
  ret %struct.tcp_pcb* %1, !dbg !3458
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_new_ip_type(i8 zeroext) local_unnamed_addr #0 !dbg !3459 {
  %2 = tail call %struct.tcp_pcb* @tcp_alloc(i8 zeroext 64) #8, !dbg !3464
  %3 = icmp eq %struct.tcp_pcb* %2, null, !dbg !3466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  br i1 %3, label %7, label %4, !dbg !3468

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %2, i64 0, i32 0, i32 1, !dbg !3469
  store i8 %0, i8* %5, align 4, !dbg !3469, !tbaa !1971
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %2, i64 0, i32 1, i32 1, !dbg !3472
  store i8 %0, i8* %6, align 4, !dbg !3472, !tbaa !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3474
  br label %7, !dbg !3474

; <label>:7:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3475
  ret %struct.tcp_pcb* %2, !dbg !3475
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_arg(%struct.tcp_pcb*, i8*) local_unnamed_addr #0 !dbg !3476 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3486
  br i1 %3, label %6, label %4, !dbg !3486

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !3487
  store i8* %1, i8** %5, align 8, !dbg !3489, !tbaa !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3490
  br label %6, !dbg !3490

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3491
  ret void, !dbg !3491
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_recv(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*) local_unnamed_addr #0 !dbg !3492 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3502
  br i1 %3, label %11, label %4, !dbg !3502

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3503
  %6 = load i32, i32* %5, align 8, !dbg !3503, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3507
  br i1 %7, label %8, label %9, !dbg !3507

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !3508
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3511
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3511
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 50, !dbg !3515
  store i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %1, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %10, align 8, !dbg !3516, !tbaa !2987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3517
  br label %11, !dbg !3517

; <label>:11:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3518
  ret void, !dbg !3518
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_sent(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i16)*) local_unnamed_addr #0 !dbg !3519 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3529
  br i1 %3, label %11, label %4, !dbg !3529

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3530
  %6 = load i32, i32* %5, align 8, !dbg !3530, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3534
  br i1 %7, label %8, label %9, !dbg !3534

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3535
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3538
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3538
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 49, !dbg !3542
  store i8 (i8*, %struct.tcp_pcb*, i16)* %1, i8 (i8*, %struct.tcp_pcb*, i16)** %10, align 8, !dbg !3543, !tbaa !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3545
  br label %11, !dbg !3545

; <label>:11:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3546
  ret void, !dbg !3546
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_err(%struct.tcp_pcb*, void (i8*, i8)*) local_unnamed_addr #0 !dbg !3547 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3557
  br i1 %3, label %11, label %4, !dbg !3557

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3558
  %6 = load i32, i32* %5, align 8, !dbg !3558, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3562
  br i1 %7, label %8, label %9, !dbg !3562

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !3563
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3566
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3566
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 53, !dbg !3570
  store void (i8*, i8)* %1, void (i8*, i8)** %10, align 8, !dbg !3571, !tbaa !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  br label %11, !dbg !3572

; <label>:11:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3573
  ret void, !dbg !3573
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_accept(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #0 !dbg !3574 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3586
  br i1 %3, label %11, label %4, !dbg !3586

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3587
  %6 = load i32, i32* %5, align 8, !dbg !3587, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3589
  br i1 %7, label %8, label %11, !dbg !3589

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !3591
  %10 = bitcast i16* %9 to i8 (i8*, %struct.tcp_pcb*, i8)**, !dbg !3591
  store i8 (i8*, %struct.tcp_pcb*, i8)* %1, i8 (i8*, %struct.tcp_pcb*, i8)** %10, align 8, !dbg !3592, !tbaa !2261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3593
  br label %11, !dbg !3593

; <label>:11:                                     ; preds = %2, %8, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3594
  ret void, !dbg !3594
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_poll(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*)*, i8 zeroext) local_unnamed_addr #0 !dbg !3595 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3608
  br i1 %4, label %5, label %6, !dbg !3608

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3609
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3612
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3612
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3616
  %8 = load i32, i32* %7, align 8, !dbg !3616, !tbaa !457
  %9 = icmp eq i32 %8, 1, !dbg !3616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %9, label %10, label %11, !dbg !3619

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !3620
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3623
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3623
  unreachable

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 52, !dbg !3627
  store i8 (i8*, %struct.tcp_pcb*)* %1, i8 (i8*, %struct.tcp_pcb*)** %12, align 8, !dbg !3628, !tbaa !1070
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 14, !dbg !3629
  store i8 %2, i8* %13, align 1, !dbg !3630, !tbaa !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3631
  ret void, !dbg !3631
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr*, %struct.netif*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_netif_ip_addr_changed(%struct.ip_addr* readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !3632 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  br i1 %3, label %119, label %4, !dbg !3643

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  %5 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !3641
  %6 = load i8, i8* %5, align 4, !dbg !3641, !tbaa !1911
  %7 = icmp eq i8 %6, 6, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3641
  %9 = load i32, i32* %8, align 4, !dbg !3641, !tbaa !485
  %10 = icmp eq i32 %9, 0, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3644
  br i1 %7, label %11, label %24, !dbg !3643

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %25, !dbg !3641

; <label>:12:                                     ; preds = %11
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3641
  %14 = load i32, i32* %13, align 4, !dbg !3641, !tbaa !485
  %15 = icmp eq i32 %14, 0, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  br i1 %15, label %16, label %25, !dbg !3641

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3641
  %18 = load i32, i32* %17, align 4, !dbg !3641, !tbaa !485
  %19 = icmp eq i32 %18, 0, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  br i1 %19, label %20, label %25, !dbg !3641

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3641
  %22 = load i32, i32* %21, align 4, !dbg !3641, !tbaa !485
  %23 = icmp eq i32 %22, 0, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  br i1 %23, label %119, label %25, !dbg !3641

; <label>:24:                                     ; preds = %4
  br i1 %10, label %119, label %25, !dbg !3643

; <label>:25:                                     ; preds = %24, %20, %16, %12, %11
  %26 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3645, !tbaa !501
  tail call fastcc void @tcp_netif_ip_addr_changed_pcblist(%struct.ip_addr* nonnull %0, %struct.tcp_pcb* %26) #8, !dbg !3647
  %27 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !3648, !tbaa !501
  tail call fastcc void @tcp_netif_ip_addr_changed_pcblist(%struct.ip_addr* nonnull %0, %struct.tcp_pcb* %27) #8, !dbg !3649
  %28 = icmp eq %struct.ip_addr* %1, null, !dbg !3650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3652
  br i1 %28, label %119, label %29, !dbg !3652

; <label>:29:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3650
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !3650
  %31 = load i8, i8* %30, align 4, !dbg !3650, !tbaa !1911
  %32 = icmp eq i8 %31, 6, !dbg !3650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3650
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3650
  %34 = load i32, i32* %33, align 4, !dbg !3650, !tbaa !485
  %35 = icmp eq i32 %34, 0, !dbg !3650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3653
  br i1 %32, label %36, label %49, !dbg !3652

; <label>:36:                                     ; preds = %29
  br i1 %35, label %37, label %50, !dbg !3650

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3650
  %39 = load i32, i32* %38, align 4, !dbg !3650, !tbaa !485
  %40 = icmp eq i32 %39, 0, !dbg !3650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3650
  br i1 %40, label %41, label %50, !dbg !3650

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3650
  %43 = load i32, i32* %42, align 4, !dbg !3650, !tbaa !485
  %44 = icmp eq i32 %43, 0, !dbg !3650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3650
  br i1 %44, label %45, label %50, !dbg !3650

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3650
  %47 = load i32, i32* %46, align 4, !dbg !3650, !tbaa !485
  %48 = icmp eq i32 %47, 0, !dbg !3650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3650
  br i1 %48, label %119, label %50, !dbg !3650

; <label>:49:                                     ; preds = %29
  br i1 %35, label %119, label %50, !dbg !3652

; <label>:50:                                     ; preds = %49, %45, %41, %37, %36
  %51 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** getelementptr inbounds (%union.tcp_listen_pcbs_t, %union.tcp_listen_pcbs_t* @tcp_listen_pcbs, i64 0, i32 0), align 8, !dbg !3654, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3658
  %52 = icmp eq %struct.tcp_pcb_listen* %51, null, !dbg !3659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3661
  br i1 %52, label %119, label %53, !dbg !3661

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %62, !dbg !3661

; <label>:62:                                     ; preds = %53, %115
  %63 = phi %struct.tcp_pcb_listen* [ %51, %53 ], [ %117, %115 ]
  %64 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 1, !dbg !3662
  %65 = load i8, i8* %64, align 4, !dbg !3662, !tbaa !2169
  %66 = load i8, i8* %5, align 4, !dbg !3662, !tbaa !1911
  %67 = icmp eq i8 %65, %66, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3665
  br i1 %67, label %68, label %115, !dbg !3665

; <label>:68:                                     ; preds = %62
  %69 = icmp eq i8 %65, 6, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3665
  %70 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3662
  %71 = load i32, i32* %70, align 8, !dbg !3662, !tbaa !485
  %72 = load i32, i32* %8, align 4, !dbg !3662, !tbaa !485
  %73 = icmp eq i32 %71, %72, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3662
  br i1 %69, label %74, label %95, !dbg !3665

; <label>:74:                                     ; preds = %68
  br i1 %73, label %75, label %115, !dbg !3662

; <label>:75:                                     ; preds = %74
  %76 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3662
  %77 = load i32, i32* %76, align 4, !dbg !3662, !tbaa !485
  %78 = load i32, i32* %54, align 4, !dbg !3662, !tbaa !485
  %79 = icmp eq i32 %77, %78, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3662
  br i1 %79, label %80, label %115, !dbg !3662

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3662
  %82 = load i32, i32* %81, align 8, !dbg !3662, !tbaa !485
  %83 = load i32, i32* %59, align 4, !dbg !3662, !tbaa !485
  %84 = icmp eq i32 %82, %83, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3662
  br i1 %84, label %85, label %115, !dbg !3662

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3662
  %87 = load i32, i32* %86, align 4, !dbg !3662, !tbaa !485
  %88 = load i32, i32* %60, align 4, !dbg !3662, !tbaa !485
  %89 = icmp eq i32 %87, %88, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3662
  br i1 %89, label %90, label %115, !dbg !3662

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3662
  %92 = load i8, i8* %91, align 8, !dbg !3662, !tbaa !485
  %93 = load i8, i8* %61, align 4, !dbg !3662, !tbaa !485
  %94 = icmp eq i8 %92, %93, !dbg !3662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3662
  br i1 %94, label %96, label %115, !dbg !3662

; <label>:95:                                     ; preds = %68
  br i1 %73, label %96, label %115, !dbg !3665

; <label>:96:                                     ; preds = %95, %90
  %97 = load i8, i8* %30, align 4, !dbg !3666, !tbaa !1911
  store i8 %97, i8* %64, align 4, !dbg !3666, !tbaa !2169
  %98 = load i8, i8* %30, align 4, !dbg !3670, !tbaa !1911
  %99 = icmp eq i8 %98, 6, !dbg !3670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3672
  %100 = load i32, i32* %33, align 4, !dbg !3673, !tbaa !485
  store i32 %100, i32* %70, align 8, !dbg !3673, !tbaa !485
  br i1 %99, label %101, label %110, !dbg !3672

; <label>:101:                                    ; preds = %96
  %102 = load i32, i32* %55, align 4, !dbg !3673, !tbaa !485
  %103 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3673
  store i32 %102, i32* %103, align 4, !dbg !3673, !tbaa !485
  %104 = load i32, i32* %56, align 4, !dbg !3673, !tbaa !485
  %105 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3673
  store i32 %104, i32* %105, align 8, !dbg !3673, !tbaa !485
  %106 = load i32, i32* %57, align 4, !dbg !3673, !tbaa !485
  %107 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3673
  store i32 %106, i32* %107, align 4, !dbg !3673, !tbaa !485
  %108 = load i8, i8* %58, align 4, !dbg !3673, !tbaa !485
  %109 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3673
  store i8 %108, i8* %109, align 8, !dbg !3673, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3676
  br label %115, !dbg !3676

; <label>:110:                                    ; preds = %96
  %111 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3677
  store i32 0, i32* %111, align 4, !dbg !3677, !tbaa !485
  %112 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3677
  store i32 0, i32* %112, align 8, !dbg !3677, !tbaa !485
  %113 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3677
  store i32 0, i32* %113, align 4, !dbg !3677, !tbaa !485
  %114 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3677
  store i8 0, i8* %114, align 8, !dbg !3677, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %115

; <label>:115:                                    ; preds = %62, %74, %75, %80, %85, %90, %95, %110, %101
  %116 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %63, i64 0, i32 6, !dbg !3680
  %117 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %116, align 8, !dbg !3680, !tbaa !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3681
  %118 = icmp eq %struct.tcp_pcb_listen* %117, null, !dbg !3659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3661
  br i1 %118, label %119, label %62, !dbg !3661, !llvm.loop !3682

; <label>:119:                                    ; preds = %115, %50, %45, %49, %25, %2, %24, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3684
  ret void, !dbg !3684
}

; Function Attrs: noredzone nounwind
define internal fastcc void @tcp_netif_ip_addr_changed_pcblist(%struct.ip_addr* readonly, %struct.tcp_pcb*) unnamed_addr #0 !dbg !3685 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !3699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  br i1 %3, label %13, label %4, !dbg !3702

; <label>:4:                                      ; preds = %2
  %5 = icmp eq %struct.tcp_pcb* %1, null, !dbg !3703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3704
  br i1 %5, label %57, label %6, !dbg !3704

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %12 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %14, !dbg !3704

; <label>:13:                                     ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !3705
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3708
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3708
  unreachable

; <label>:14:                                     ; preds = %6, %54
  %15 = phi %struct.tcp_pcb* [ %1, %6 ], [ %55, %54 ]
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 0, i32 1, !dbg !3712
  %17 = load i8, i8* %16, align 4, !dbg !3712, !tbaa !1971
  %18 = load i8, i8* %7, align 4, !dbg !3712, !tbaa !1911
  %19 = icmp eq i8 %17, %18, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3713
  br i1 %19, label %20, label %51, !dbg !3713

; <label>:20:                                     ; preds = %14
  %21 = icmp eq i8 %17, 6, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3713
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3712
  %23 = load i32, i32* %22, align 8, !dbg !3712, !tbaa !485
  %24 = load i32, i32* %8, align 4, !dbg !3712, !tbaa !485
  %25 = icmp eq i32 %23, %24, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  br i1 %21, label %26, label %47, !dbg !3713

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %51, !dbg !3712

; <label>:27:                                     ; preds = %26
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3712
  %29 = load i32, i32* %28, align 4, !dbg !3712, !tbaa !485
  %30 = load i32, i32* %9, align 4, !dbg !3712, !tbaa !485
  %31 = icmp eq i32 %29, %30, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  br i1 %31, label %32, label %51, !dbg !3712

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3712
  %34 = load i32, i32* %33, align 8, !dbg !3712, !tbaa !485
  %35 = load i32, i32* %10, align 4, !dbg !3712, !tbaa !485
  %36 = icmp eq i32 %34, %35, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  br i1 %36, label %37, label %51, !dbg !3712

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3712
  %39 = load i32, i32* %38, align 4, !dbg !3712, !tbaa !485
  %40 = load i32, i32* %11, align 4, !dbg !3712, !tbaa !485
  %41 = icmp eq i32 %39, %40, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  br i1 %41, label %42, label %51, !dbg !3712

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3712
  %44 = load i8, i8* %43, align 8, !dbg !3712, !tbaa !485
  %45 = load i8, i8* %12, align 4, !dbg !3712, !tbaa !485
  %46 = icmp eq i8 %44, %45, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  br i1 %46, label %48, label %51, !dbg !3712

; <label>:47:                                     ; preds = %20
  br i1 %25, label %48, label %51, !dbg !3713

; <label>:48:                                     ; preds = %47, %42
  %49 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 6, !dbg !3714
  %50 = load %struct.tcp_pcb*, %struct.tcp_pcb** %49, align 8, !dbg !3714, !tbaa !533
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %15, i32 1) #7, !dbg !3718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3719
  br label %54, !dbg !3720

; <label>:51:                                     ; preds = %14, %47, %42, %37, %32, %27, %26
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i64 0, i32 6, !dbg !3721
  %53 = load %struct.tcp_pcb*, %struct.tcp_pcb** %52, align 8, !dbg !3721, !tbaa !533
  br label %54

; <label>:54:                                     ; preds = %51, %48
  %55 = phi %struct.tcp_pcb* [ %53, %51 ], [ %50, %48 ], !dbg !3723
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3704
  %56 = icmp eq %struct.tcp_pcb* %55, null, !dbg !3703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3704
  br i1 %56, label %57, label %14, !dbg !3704, !llvm.loop !3724

; <label>:57:                                     ; preds = %54, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3726
  ret void, !dbg !3726
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tcp_debug_state_str(i32) local_unnamed_addr #0 !dbg !3727 {
  %2 = zext i32 %0 to i64, !dbg !3733
  %3 = getelementptr inbounds [11 x i8*], [11 x i8*]* @tcp_state_str, i64 0, i64 %2, !dbg !3733
  %4 = load i8*, i8** %3, align 8, !dbg !3733, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3734
  ret i8* %4, !dbg !3734
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_tcp_get_tcp_addrinfo(%struct.tcp_pcb* readonly, i32, %struct.ip_addr*, i16*) local_unnamed_addr #0 !dbg !3735 {
  %5 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3751
  br i1 %5, label %28, label %6, !dbg !3751

; <label>:6:                                      ; preds = %4
  %7 = icmp eq i32 %1, 0, !dbg !3752
  %8 = icmp ne %struct.ip_addr* %2, null, !dbg !3755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  br i1 %7, label %18, label %9, !dbg !3758

; <label>:9:                                      ; preds = %6
  br i1 %8, label %10, label %13, !dbg !3761

; <label>:10:                                     ; preds = %9
  %11 = bitcast %struct.ip_addr* %2 to i8*, !dbg !3762
  %12 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !3762
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 %12, i64 24, i1 false), !dbg !3762, !tbaa.struct !3765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3766
  br label %13, !dbg !3766

; <label>:13:                                     ; preds = %10, %9
  %14 = icmp eq i16* %3, null, !dbg !3767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3769
  br i1 %14, label %28, label %15, !dbg !3769

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !3770
  %17 = load i16, i16* %16, align 2, !dbg !3770, !tbaa !1024
  store i16 %17, i16* %3, align 2, !dbg !3772, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3773
  br label %28, !dbg !3773

; <label>:18:                                     ; preds = %6
  br i1 %8, label %19, label %23, !dbg !3774

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !3775
  %21 = bitcast %struct.ip_addr* %2 to i8*, !dbg !3775
  %22 = bitcast %struct.ip_addr* %20 to i8*, !dbg !3775
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !3775, !tbaa.struct !3765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3777
  br label %23, !dbg !3777

; <label>:23:                                     ; preds = %19, %18
  %24 = icmp eq i16* %3, null, !dbg !3778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3780
  br i1 %24, label %28, label %25, !dbg !3780

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !3781
  %27 = load i16, i16* %26, align 8, !dbg !3781, !tbaa !1026
  store i16 %27, i16* %3, align 2, !dbg !3783, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3784
  br label %28, !dbg !3784

; <label>:28:                                     ; preds = %4, %15, %25, %23, %13
  %29 = phi i8 [ 0, %13 ], [ 0, %23 ], [ 0, %25 ], [ 0, %15 ], [ -6, %4 ], !dbg !3785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3787
  ret i8 %29, !dbg !3787
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #2 !dbg !400 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !3788
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !3790
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #7, !dbg !3792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3793
  ret i32 %2, !dbg !3793
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
!390 = !{i32 601524}
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
!435 = !{i32 -2146754758, i32 -2146754745, i32 -2146754720, i32 -2146754696, i32 -2146754671, i32 -2146754596, i32 -2146754571, i32 -2146754427, i32 -2146751334, i32 -2146751245, i32 -2146751124, i32 -2146751029, i32 -2146750928, i32 -2146750901, i32 -2146750818, i32 -2146750729, i32 -2146750608, i32 -2146750508, i32 -2146750402, i32 -2146750294, i32 -2146754144, i32 -2146754091, i32 -2146754060, i32 -2146754029, i32 -2146754008, i32 -2146753986, i32 -2146753937, i32 -2146753916, i32 -2146750211, i32 -2146750122, i32 -2146750001, i32 -2146749902, i32 -2146749796, i32 -2146749694, i32 -2146749661, i32 -2146749588, i32 -2146749520, i32 -2146753614, i32 -2146753555, i32 -2146753502, i32 -2146753471, i32 -2146753440, i32 -2146753419, i32 -2146753397, i32 -2146753348, i32 -2146753327, i32 -2146749469, i32 -2146749380, i32 -2146749259, i32 -2146749160, i32 -2146749054, i32 -2146748952, i32 -2146748919, i32 -2146748836, i32 -2146748747, i32 -2146748626, i32 -2146748526, i32 -2146748500, i32 -2146748397, i32 -2146748371, i32 -2146753069, i32 -2146753002, i32 -2146752977, i32 -2146752913, i32 -2146752831, i32 -2146752808, i32 -2146752783, i32 -2146752758}
!436 = !DILocation(line: 66, column: 2, scope: !437, inlinedAt: !381)
!437 = distinct !DILexicalBlock(scope: !438, file: !365, line: 66, column: 2)
!438 = distinct !DILexicalBlock(scope: !373, file: !365, line: 66, column: 2)
!439 = !{i32 -2146751811, i32 -2146751794}
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
!503 = !DILocation(line: 1488, column: 3, scope: !492)
!504 = !DILocation(line: 1488, column: 14, scope: !492)
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
!546 = !DILocation(line: 1518, column: 5, scope: !497)
!547 = !DILocation(line: 1514, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !3, line: 1512, column: 38)
!549 = !DILocation(line: 1519, column: 18, scope: !550)
!550 = distinct !DILexicalBlock(scope: !497, file: !3, line: 1518, column: 12)
!551 = !DILocation(line: 0, scope: !550)
!552 = distinct !{!552, !503, !553}
!553 = !DILocation(line: 1521, column: 3, scope: !492)
!554 = !DILocation(line: 1522, column: 1, scope: !492)
!555 = distinct !DISubprogram(name: "tcp_slowtmr", scope: !3, file: !3, line: 1192, type: !360, isLocal: false, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !572, !575, !583, !584, !587, !588, !589, !590}
!557 = !DILocalVariable(name: "pcb", scope: !555, file: !3, line: 1194, type: !145)
!558 = !DILocalVariable(name: "prev", scope: !555, file: !3, line: 1194, type: !145)
!559 = !DILocalVariable(name: "eff_wnd", scope: !555, file: !3, line: 1195, type: !167)
!560 = !DILocalVariable(name: "pcb_remove", scope: !555, file: !3, line: 1196, type: !91)
!561 = !DILocalVariable(name: "pcb_reset", scope: !555, file: !3, line: 1197, type: !91)
!562 = !DILocalVariable(name: "err", scope: !555, file: !3, line: 1198, type: !140)
!563 = !DILocalVariable(name: "backoff_cnt", scope: !564, file: !3, line: 1241, type: !91)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1240, column: 16)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 1238, column: 13)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 1235, column: 37)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1235, column: 11)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1234, column: 12)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1231, column: 16)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1228, column: 9)
!571 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1212, column: 23)
!572 = !DILocalVariable(name: "next_slot", scope: !573, file: !3, line: 1246, type: !50)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1245, column: 48)
!574 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1245, column: 15)
!575 = !DILocalVariable(name: "backoff_idx", scope: !576, file: !3, line: 1287, type: !91)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 1286, column: 41)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 1286, column: 17)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 1283, column: 109)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 1283, column: 15)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 1275, column: 37)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1275, column: 13)
!582 = distinct !DILexicalBlock(scope: !567, file: !3, line: 1269, column: 14)
!583 = !DILocalVariable(name: "calc_rto", scope: !576, file: !3, line: 1288, type: !50)
!584 = !DILocalVariable(name: "pcb2", scope: !585, file: !3, line: 1380, type: !145)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 1379, column: 21)
!586 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1379, column: 9)
!587 = !DILocalVariable(name: "err_fn", scope: !585, file: !3, line: 1382, type: !253)
!588 = !DILocalVariable(name: "err_arg", scope: !585, file: !3, line: 1384, type: !88)
!589 = !DILocalVariable(name: "last_state", scope: !585, file: !3, line: 1385, type: !5)
!590 = !DILocalVariable(name: "pcb2", scope: !591, file: !3, line: 1451, type: !145)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 1450, column: 21)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 1450, column: 9)
!593 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1440, column: 23)
!594 = !DILocation(line: 1198, column: 9, scope: !555)
!595 = !DILocation(line: 1202, column: 3, scope: !555)
!596 = !DILocation(line: 1203, column: 3, scope: !555)
!597 = !DILocation(line: 1194, column: 25, scope: !555)
!598 = !DILocation(line: 1208, column: 9, scope: !555)
!599 = !DILocation(line: 1194, column: 19, scope: !555)
!600 = !DILocation(line: 1212, column: 3, scope: !555)
!601 = !DILocation(line: 1212, column: 14, scope: !555)
!602 = !DILocation(line: 1214, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1214, column: 5)
!604 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1214, column: 5)
!605 = !DILocation(line: 1214, column: 5, scope: !604)
!606 = !DILocation(line: 1214, column: 5, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 1214, column: 5)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 1214, column: 5)
!609 = !DILocation(line: 1214, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 1214, column: 5)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 1214, column: 5)
!612 = distinct !DILexicalBlock(scope: !607, file: !3, line: 1214, column: 5)
!613 = !DILocation(line: 1215, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 1215, column: 5)
!615 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1215, column: 5)
!616 = !DILocation(line: 1215, column: 5, scope: !615)
!617 = !DILocation(line: 1215, column: 5, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1215, column: 5)
!619 = distinct !DILexicalBlock(scope: !614, file: !3, line: 1215, column: 5)
!620 = !DILocation(line: 1215, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 1215, column: 5)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 1215, column: 5)
!623 = distinct !DILexicalBlock(scope: !618, file: !3, line: 1215, column: 5)
!624 = !DILocation(line: 1216, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 1216, column: 5)
!626 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1216, column: 5)
!627 = !DILocation(line: 1216, column: 5, scope: !626)
!628 = !DILocation(line: 1216, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 1216, column: 5)
!630 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1216, column: 5)
!631 = !DILocation(line: 1216, column: 5, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 1216, column: 5)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 1216, column: 5)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 1216, column: 5)
!635 = !DILocation(line: 1217, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1217, column: 9)
!637 = !DILocation(line: 1217, column: 28, scope: !636)
!638 = !DILocation(line: 1217, column: 25, scope: !636)
!639 = !DILocation(line: 1217, column: 9, scope: !571)
!640 = !DILocation(line: 1220, column: 18, scope: !641)
!641 = distinct !DILexicalBlock(scope: !636, file: !3, line: 1217, column: 43)
!642 = !DILocation(line: 1221, column: 7, scope: !641)
!643 = !DILocation(line: 0, scope: !555)
!644 = distinct !{!644, !600, !645}
!645 = !DILocation(line: 1434, column: 3, scope: !555)
!646 = !DILocation(line: 1223, column: 21, scope: !571)
!647 = !DILocation(line: 1196, column: 8, scope: !555)
!648 = !DILocation(line: 1197, column: 8, scope: !555)
!649 = !DILocation(line: 1228, column: 20, scope: !570)
!650 = !DILocation(line: 1228, column: 32, scope: !570)
!651 = !DILocation(line: 0, scope: !569)
!652 = !{!458, !416, i64 126}
!653 = !DILocation(line: 1228, column: 45, scope: !570)
!654 = !DILocation(line: 1228, column: 9, scope: !571)
!655 = !DILocation(line: 0, scope: !570)
!656 = !DILocation(line: 1231, column: 26, scope: !569)
!657 = !DILocation(line: 1231, column: 16, scope: !570)
!658 = !DILocation(line: 1234, column: 5, scope: !659)
!659 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1231, column: 41)
!660 = !DILocation(line: 1235, column: 16, scope: !567)
!661 = !{!458, !416, i64 269}
!662 = !DILocation(line: 1235, column: 11, scope: !567)
!663 = !DILocation(line: 1235, column: 32, scope: !567)
!664 = !DILocation(line: 1235, column: 11, scope: !568)
!665 = !DILocation(line: 1236, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 1236, column: 9)
!667 = distinct !DILexicalBlock(scope: !566, file: !3, line: 1236, column: 9)
!668 = !{!458, !460, i64 192}
!669 = !DILocation(line: 1236, column: 9, scope: !667)
!670 = !DILocation(line: 1236, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1236, column: 9)
!672 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1236, column: 9)
!673 = !DILocation(line: 1236, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 1236, column: 9)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 1236, column: 9)
!676 = distinct !DILexicalBlock(scope: !671, file: !3, line: 1236, column: 9)
!677 = !DILocation(line: 1237, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 1237, column: 9)
!679 = distinct !DILexicalBlock(scope: !566, file: !3, line: 1237, column: 9)
!680 = !{!458, !460, i64 184}
!681 = !DILocation(line: 1237, column: 9, scope: !679)
!682 = !DILocation(line: 1237, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 1237, column: 9)
!684 = distinct !DILexicalBlock(scope: !678, file: !3, line: 1237, column: 9)
!685 = !DILocation(line: 1237, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 1237, column: 9)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 1237, column: 9)
!688 = distinct !DILexicalBlock(scope: !683, file: !3, line: 1237, column: 9)
!689 = !DILocation(line: 1238, column: 18, scope: !565)
!690 = !{!458, !416, i64 270}
!691 = !DILocation(line: 1238, column: 32, scope: !565)
!692 = !DILocation(line: 1238, column: 13, scope: !566)
!693 = !DILocation(line: 1240, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1238, column: 47)
!695 = !DILocation(line: 1241, column: 71, scope: !564)
!696 = !DILocation(line: 1241, column: 30, scope: !564)
!697 = !DILocation(line: 1241, column: 16, scope: !564)
!698 = !DILocation(line: 1242, column: 20, scope: !699)
!699 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1242, column: 15)
!700 = !{!458, !416, i64 268}
!701 = !DILocation(line: 1242, column: 32, scope: !699)
!702 = !DILocation(line: 1242, column: 15, scope: !564)
!703 = !DILocation(line: 1243, column: 29, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !3, line: 1242, column: 47)
!705 = !DILocation(line: 1244, column: 11, scope: !704)
!706 = !DILocation(line: 1245, column: 20, scope: !574)
!707 = !DILocation(line: 1245, column: 32, scope: !574)
!708 = !DILocation(line: 1245, column: 15, scope: !564)
!709 = !DILocation(line: 1246, column: 17, scope: !573)
!710 = !DILocation(line: 1248, column: 22, scope: !711)
!711 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1248, column: 17)
!712 = !{!458, !415, i64 160}
!713 = !DILocation(line: 1248, column: 30, scope: !711)
!714 = !DILocation(line: 1248, column: 17, scope: !573)
!715 = !DILocation(line: 1249, column: 19, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 1249, column: 19)
!717 = distinct !DILexicalBlock(scope: !711, file: !3, line: 1248, column: 36)
!718 = !DILocation(line: 1249, column: 46, scope: !716)
!719 = !DILocation(line: 1249, column: 19, scope: !717)
!720 = !DILocation(line: 0, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !3, line: 1249, column: 57)
!722 = !DILocation(line: 1254, column: 45, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 1254, column: 19)
!724 = distinct !DILexicalBlock(scope: !711, file: !3, line: 1253, column: 20)
!725 = !DILocation(line: 1254, column: 19, scope: !723)
!726 = !DILocation(line: 1254, column: 66, scope: !723)
!727 = !DILocation(line: 1254, column: 19, scope: !724)
!728 = !DILocation(line: 1255, column: 21, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 1255, column: 21)
!730 = distinct !DILexicalBlock(scope: !723, file: !3, line: 1254, column: 77)
!731 = !DILocation(line: 1255, column: 37, scope: !729)
!732 = !DILocation(line: 1255, column: 21, scope: !730)
!733 = !DILocation(line: 1258, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1255, column: 48)
!735 = !DILocation(line: 1261, column: 17, scope: !573)
!736 = !DILocation(line: 1262, column: 32, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1261, column: 28)
!738 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1261, column: 17)
!739 = !DILocation(line: 1263, column: 24, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !3, line: 1263, column: 19)
!741 = !DILocation(line: 1263, column: 40, scope: !740)
!742 = !DILocation(line: 1263, column: 19, scope: !737)
!743 = !DILocation(line: 1264, column: 37, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 1263, column: 71)
!745 = !DILocation(line: 1265, column: 15, scope: !744)
!746 = !DILocation(line: 0, scope: !744)
!747 = !DILocation(line: 1267, column: 11, scope: !573)
!748 = !DILocation(line: 1271, column: 19, scope: !749)
!749 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1271, column: 13)
!750 = !{!458, !446, i64 108}
!751 = !DILocation(line: 1271, column: 25, scope: !749)
!752 = !DILocation(line: 1271, column: 31, scope: !749)
!753 = !DILocation(line: 1271, column: 46, scope: !749)
!754 = !DILocation(line: 1271, column: 13, scope: !582)
!755 = !DILocation(line: 1275, column: 32, scope: !581)
!756 = !DILocation(line: 1275, column: 13, scope: !582)
!757 = !DILocation(line: 1272, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1271, column: 57)
!759 = !DILocation(line: 1273, column: 9, scope: !758)
!760 = !DILocation(line: 1275, column: 18, scope: !581)
!761 = !{!458, !446, i64 124}
!762 = !DILocation(line: 1275, column: 24, scope: !581)
!763 = !DILocation(line: 1283, column: 16, scope: !579)
!764 = !DILocation(line: 1283, column: 44, scope: !579)
!765 = !DILocation(line: 1283, column: 55, scope: !579)
!766 = !DILocation(line: 1283, column: 65, scope: !579)
!767 = !DILocation(line: 1283, column: 73, scope: !579)
!768 = !DILocation(line: 1283, column: 82, scope: !579)
!769 = !DILocation(line: 1283, column: 91, scope: !579)
!770 = !DILocation(line: 1283, column: 98, scope: !579)
!771 = !DILocation(line: 1283, column: 15, scope: !580)
!772 = !DILocation(line: 1286, column: 22, scope: !577)
!773 = !DILocation(line: 1286, column: 28, scope: !577)
!774 = !DILocation(line: 1286, column: 17, scope: !578)
!775 = !DILocation(line: 1287, column: 34, scope: !576)
!776 = !DILocation(line: 1287, column: 20, scope: !576)
!777 = !DILocation(line: 1288, column: 37, scope: !576)
!778 = !{!458, !446, i64 120}
!779 = !DILocation(line: 1288, column: 40, scope: !576)
!780 = !DILocation(line: 1288, column: 53, scope: !576)
!781 = !{!458, !446, i64 122}
!782 = !DILocation(line: 1288, column: 48, scope: !576)
!783 = !DILocation(line: 1288, column: 46, scope: !576)
!784 = !DILocation(line: 1288, column: 60, scope: !576)
!785 = !DILocation(line: 1288, column: 57, scope: !576)
!786 = !DILocation(line: 1288, column: 19, scope: !576)
!787 = !DILocation(line: 1289, column: 33, scope: !576)
!788 = !DILocation(line: 1289, column: 26, scope: !576)
!789 = !DILocation(line: 1289, column: 24, scope: !576)
!790 = !DILocation(line: 1290, column: 13, scope: !576)
!791 = !DILocation(line: 1293, column: 24, scope: !578)
!792 = !DILocation(line: 1296, column: 23, scope: !578)
!793 = !{!458, !415, i64 132}
!794 = !DILocation(line: 1195, column: 17, scope: !555)
!795 = !DILocation(line: 1297, column: 37, scope: !578)
!796 = !DILocation(line: 1297, column: 18, scope: !578)
!797 = !DILocation(line: 1297, column: 27, scope: !578)
!798 = !{!458, !415, i64 136}
!799 = !DILocation(line: 1298, column: 54, scope: !800)
!800 = distinct !DILexicalBlock(scope: !578, file: !3, line: 1298, column: 17)
!801 = !{!458, !446, i64 110}
!802 = !DILocation(line: 1298, column: 49, scope: !800)
!803 = !DILocation(line: 1298, column: 58, scope: !800)
!804 = !DILocation(line: 1298, column: 31, scope: !800)
!805 = !DILocation(line: 1298, column: 17, scope: !578)
!806 = !DILocation(line: 1299, column: 29, scope: !807)
!807 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1298, column: 65)
!808 = !DILocation(line: 1300, column: 13, scope: !807)
!809 = !DILocation(line: 1301, column: 23, scope: !578)
!810 = !DILocation(line: 1305, column: 18, scope: !578)
!811 = !DILocation(line: 1305, column: 30, scope: !578)
!812 = !{!458, !415, i64 176}
!813 = !DILocation(line: 1309, column: 13, scope: !578)
!814 = !DILocation(line: 1310, column: 11, scope: !578)
!815 = !DILocation(line: 0, scope: !571)
!816 = !DILocation(line: 1315, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1315, column: 9)
!818 = !DILocation(line: 1315, column: 20, scope: !817)
!819 = !DILocation(line: 1315, column: 9, scope: !571)
!820 = !DILocation(line: 1317, column: 16, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1317, column: 11)
!822 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1315, column: 35)
!823 = !DILocation(line: 1317, column: 22, scope: !821)
!824 = !DILocation(line: 1317, column: 11, scope: !822)
!825 = !DILocation(line: 1320, column: 21, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 1320, column: 13)
!827 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1317, column: 37)
!828 = !DILocation(line: 1320, column: 38, scope: !826)
!829 = !{!458, !415, i64 88}
!830 = !DILocation(line: 1320, column: 31, scope: !826)
!831 = !DILocation(line: 1320, column: 43, scope: !826)
!832 = !DILocation(line: 1320, column: 13, scope: !827)
!833 = !DILocation(line: 1322, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !826, file: !3, line: 1321, column: 55)
!835 = !DILocation(line: 1324, column: 9, scope: !834)
!836 = !DILocation(line: 0, scope: !837)
!837 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1228, column: 63)
!838 = !DILocation(line: 1329, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1329, column: 9)
!840 = !{!458, !416, i64 49}
!841 = !DILocation(line: 1329, column: 43, scope: !839)
!842 = !DILocation(line: 1330, column: 22, scope: !839)
!843 = !DILocation(line: 1330, column: 38, scope: !839)
!844 = !DILocation(line: 1331, column: 22, scope: !839)
!845 = !DILocation(line: 1329, column: 9, scope: !571)
!846 = !DILocation(line: 1332, column: 19, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1332, column: 11)
!848 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1331, column: 39)
!849 = !DILocation(line: 1332, column: 36, scope: !847)
!850 = !DILocation(line: 1332, column: 29, scope: !847)
!851 = !DILocation(line: 1332, column: 11, scope: !847)
!852 = !DILocation(line: 1333, column: 17, scope: !847)
!853 = !{!458, !415, i64 264}
!854 = !DILocation(line: 1333, column: 12, scope: !847)
!855 = !DILocation(line: 1333, column: 27, scope: !847)
!856 = !DILocation(line: 1333, column: 48, scope: !847)
!857 = !DILocation(line: 1332, column: 41, scope: !847)
!858 = !DILocation(line: 1332, column: 11, scope: !848)
!859 = !DILocation(line: 1338, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !847, file: !3, line: 1333, column: 69)
!861 = !DILocation(line: 1340, column: 7, scope: !860)
!862 = !DILocation(line: 1341, column: 41, scope: !863)
!863 = distinct !DILexicalBlock(scope: !847, file: !3, line: 1340, column: 18)
!864 = !{!458, !416, i64 271}
!865 = !DILocation(line: 1341, column: 36, scope: !863)
!866 = !DILocation(line: 1341, column: 55, scope: !863)
!867 = !DILocation(line: 1341, column: 34, scope: !863)
!868 = !DILocation(line: 1342, column: 18, scope: !863)
!869 = !DILocation(line: 1340, column: 48, scope: !863)
!870 = !DILocation(line: 1340, column: 18, scope: !847)
!871 = !DILocation(line: 1343, column: 15, scope: !872)
!872 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1342, column: 39)
!873 = !DILocation(line: 1344, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !3, line: 1344, column: 13)
!875 = !DILocation(line: 1344, column: 13, scope: !872)
!876 = !DILocation(line: 1345, column: 29, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 1344, column: 28)
!878 = !DILocation(line: 1346, column: 9, scope: !877)
!879 = !DILocation(line: 0, scope: !834)
!880 = !DILocation(line: 1354, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1354, column: 9)
!882 = !{!458, !460, i64 200}
!883 = !DILocation(line: 1354, column: 20, scope: !881)
!884 = !DILocation(line: 1354, column: 28, scope: !881)
!885 = !DILocation(line: 1355, column: 10, scope: !881)
!886 = !DILocation(line: 1355, column: 27, scope: !881)
!887 = !DILocation(line: 1355, column: 20, scope: !881)
!888 = !DILocation(line: 1355, column: 46, scope: !881)
!889 = !DILocation(line: 1355, column: 34, scope: !881)
!890 = !DILocation(line: 1355, column: 50, scope: !881)
!891 = !DILocation(line: 1355, column: 31, scope: !881)
!892 = !DILocation(line: 1354, column: 9, scope: !571)
!893 = !DILocalVariable(name: "pcb", arg: 1, scope: !894, file: !3, line: 2386, type: !145)
!894 = distinct !DISubprogram(name: "tcp_free_ooseq", scope: !3, file: !3, line: 2386, type: !449, isLocal: false, isDefinition: true, scopeLine: 2387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !895)
!895 = !{!893}
!896 = !DILocation(line: 2386, column: 32, scope: !894, inlinedAt: !897)
!897 = distinct !DILocation(line: 1357, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !881, file: !3, line: 1355, column: 72)
!899 = !DILocation(line: 2388, column: 7, scope: !894, inlinedAt: !897)
!900 = !DILocalVariable(name: "seg", arg: 1, scope: !901, file: !3, line: 1608, type: !198)
!901 = distinct !DISubprogram(name: "tcp_segs_free", scope: !3, file: !3, line: 1608, type: !902, isLocal: false, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !198}
!904 = !{!900, !905}
!905 = !DILocalVariable(name: "next", scope: !906, file: !3, line: 1611, type: !198)
!906 = distinct !DILexicalBlock(scope: !901, file: !3, line: 1610, column: 23)
!907 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !908)
!908 = distinct !DILocation(line: 2389, column: 5, scope: !909, inlinedAt: !897)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 2388, column: 19)
!910 = distinct !DILexicalBlock(scope: !894, file: !3, line: 2388, column: 7)
!911 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !908)
!912 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !908)
!913 = !{!914, !460, i64 0}
!914 = !{!"tcp_seg", !460, i64 0, !460, i64 8, !446, i64 16, !416, i64 18, !460, i64 24}
!915 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !908)
!916 = !DILocalVariable(name: "seg", arg: 1, scope: !917, file: !3, line: 1623, type: !198)
!917 = distinct !DISubprogram(name: "tcp_seg_free", scope: !3, file: !3, line: 1623, type: !902, isLocal: false, isDefinition: true, scopeLine: 1624, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !918)
!918 = !{!916}
!919 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !920)
!920 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !908)
!921 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !920)
!922 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !920)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1626, column: 9)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1625, column: 20)
!925 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1625, column: 7)
!926 = !{!914, !460, i64 8}
!927 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !920)
!928 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !920)
!929 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !920)
!930 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1626, column: 25)
!931 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !920)
!932 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !920)
!933 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !920)
!934 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !920)
!935 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !920)
!936 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !908)
!937 = distinct !{!937, !938, !939}
!938 = !DILocation(line: 1610, column: 3, scope: !901)
!939 = !DILocation(line: 1614, column: 3, scope: !901)
!940 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !908)
!941 = !DILocation(line: 2390, column: 16, scope: !909, inlinedAt: !897)
!942 = !DILocation(line: 2394, column: 3, scope: !909, inlinedAt: !897)
!943 = !DILocation(line: 2395, column: 1, scope: !894, inlinedAt: !897)
!944 = !DILocation(line: 1358, column: 5, scope: !898)
!945 = !DILocation(line: 1362, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1362, column: 9)
!947 = !DILocation(line: 1362, column: 20, scope: !946)
!948 = !DILocation(line: 1362, column: 9, scope: !571)
!949 = !DILocation(line: 1363, column: 19, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1363, column: 11)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 1362, column: 33)
!952 = !DILocation(line: 1363, column: 36, scope: !950)
!953 = !DILocation(line: 1363, column: 29, scope: !950)
!954 = !DILocation(line: 1363, column: 41, scope: !950)
!955 = !DILocation(line: 1363, column: 11, scope: !951)
!956 = !DILocation(line: 1365, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1364, column: 53)
!958 = !DILocation(line: 1367, column: 7, scope: !957)
!959 = !DILocation(line: 1371, column: 9, scope: !571)
!960 = !DILocation(line: 1371, column: 20, scope: !961)
!961 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1371, column: 9)
!962 = !DILocation(line: 1372, column: 19, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 1372, column: 11)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 1371, column: 33)
!965 = !DILocation(line: 1372, column: 36, scope: !963)
!966 = !DILocation(line: 1372, column: 29, scope: !963)
!967 = !DILocation(line: 1372, column: 41, scope: !963)
!968 = !DILocation(line: 1372, column: 11, scope: !964)
!969 = !DILocation(line: 1373, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !963, file: !3, line: 1372, column: 76)
!971 = !DILocation(line: 1375, column: 7, scope: !970)
!972 = !DILocation(line: 0, scope: !957)
!973 = !DILocation(line: 1379, column: 9, scope: !586)
!974 = !DILocation(line: 1379, column: 9, scope: !571)
!975 = !DILocation(line: 1382, column: 32, scope: !585)
!976 = !{!458, !460, i64 256}
!977 = !DILocation(line: 1382, column: 18, scope: !585)
!978 = !DILocation(line: 1386, column: 7, scope: !585)
!979 = !DILocation(line: 1388, column: 16, scope: !980)
!980 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1388, column: 11)
!981 = !DILocation(line: 1388, column: 11, scope: !585)
!982 = !DILocation(line: 0, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1389, column: 9)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 1389, column: 9)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 1388, column: 25)
!986 = !DILocation(line: 1389, column: 9, scope: !983)
!987 = !DILocation(line: 1389, column: 9, scope: !984)
!988 = !DILocation(line: 1389, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1389, column: 9)
!990 = distinct !DILexicalBlock(scope: !983, file: !3, line: 1389, column: 9)
!991 = !DILocation(line: 1389, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 1389, column: 9)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 1389, column: 9)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 1389, column: 9)
!995 = !DILocation(line: 1390, column: 27, scope: !985)
!996 = !DILocation(line: 1390, column: 15, scope: !985)
!997 = !DILocation(line: 1390, column: 20, scope: !985)
!998 = !DILocation(line: 1391, column: 7, scope: !985)
!999 = !DILocation(line: 1393, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 1393, column: 9)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1393, column: 9)
!1002 = distinct !DILexicalBlock(scope: !980, file: !3, line: 1391, column: 14)
!1003 = !DILocation(line: 1393, column: 9, scope: !1001)
!1004 = !DILocation(line: 1393, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 1393, column: 9)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 1393, column: 9)
!1007 = !DILocation(line: 1393, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1393, column: 9)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 1393, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 1393, column: 9)
!1011 = !DILocation(line: 1394, column: 32, scope: !1002)
!1012 = !DILocation(line: 1394, column: 25, scope: !1002)
!1013 = !DILocation(line: 1397, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1397, column: 11)
!1015 = !DILocation(line: 1397, column: 11, scope: !585)
!1016 = !DILocation(line: 1398, column: 27, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 1397, column: 22)
!1018 = !{!458, !415, i64 144}
!1019 = !DILocation(line: 1398, column: 41, scope: !1017)
!1020 = !{!458, !415, i64 92}
!1021 = !DILocation(line: 1398, column: 56, scope: !1017)
!1022 = !DILocation(line: 1398, column: 72, scope: !1017)
!1023 = !DILocation(line: 1399, column: 22, scope: !1017)
!1024 = !{!458, !446, i64 78}
!1025 = !DILocation(line: 1399, column: 39, scope: !1017)
!1026 = !{!458, !446, i64 80}
!1027 = !DILocation(line: 1398, column: 9, scope: !1017)
!1028 = !DILocation(line: 1400, column: 7, scope: !1017)
!1029 = !DILocation(line: 1402, column: 22, scope: !585)
!1030 = !{!458, !460, i64 64}
!1031 = !DILocation(line: 1384, column: 13, scope: !585)
!1032 = !DILocation(line: 1385, column: 22, scope: !585)
!1033 = !DILocation(line: 1380, column: 23, scope: !585)
!1034 = !DILocation(line: 1405, column: 18, scope: !585)
!1035 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 1406, column: 7, scope: !585)
!1037 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1036)
!1038 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1036)
!1039 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1036)
!1040 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1036)
!1041 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1036)
!1042 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1036)
!1043 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1036)
!1044 = !DILocation(line: 1408, column: 31, scope: !585)
!1045 = !DILocation(line: 1409, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1409, column: 7)
!1047 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1409, column: 7)
!1048 = !DILocation(line: 1409, column: 7, scope: !1047)
!1049 = !DILocation(line: 1410, column: 11, scope: !585)
!1050 = !DILocation(line: 0, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1410, column: 36)
!1052 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1410, column: 11)
!1053 = !DILocation(line: 1410, column: 11, scope: !1052)
!1054 = !DILocation(line: 1416, column: 18, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !586, file: !3, line: 1413, column: 12)
!1056 = !DILocation(line: 1419, column: 15, scope: !1055)
!1057 = !DILocation(line: 1419, column: 7, scope: !1055)
!1058 = !{!458, !416, i64 84}
!1059 = !DILocation(line: 1420, column: 34, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 1420, column: 11)
!1061 = !{!458, !416, i64 85}
!1062 = !DILocation(line: 1420, column: 25, scope: !1060)
!1063 = !DILocation(line: 1420, column: 11, scope: !1055)
!1064 = !DILocation(line: 1421, column: 23, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 1420, column: 48)
!1066 = !DILocation(line: 1423, column: 33, scope: !1065)
!1067 = !DILocation(line: 1424, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1424, column: 9)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1424, column: 9)
!1070 = !{!458, !460, i64 248}
!1071 = !DILocation(line: 1424, column: 9, scope: !1069)
!1072 = !DILocation(line: 1425, column: 13, scope: !1065)
!1073 = !DILocation(line: 1429, column: 13, scope: !1065)
!1074 = !DILocation(line: 1425, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1425, column: 13)
!1076 = !DILocation(line: 1429, column: 17, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1429, column: 13)
!1078 = !DILocation(line: 1430, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1429, column: 28)
!1080 = !DILocation(line: 1431, column: 9, scope: !1079)
!1081 = !DILocation(line: 1439, column: 9, scope: !555)
!1082 = !DILocation(line: 1440, column: 3, scope: !555)
!1083 = !DILocation(line: 1440, column: 14, scope: !555)
!1084 = !DILocation(line: 0, scope: !591)
!1085 = !DILocation(line: 1441, column: 5, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 1441, column: 5)
!1087 = distinct !DILexicalBlock(scope: !593, file: !3, line: 1441, column: 5)
!1088 = !DILocation(line: 1441, column: 5, scope: !1087)
!1089 = !DILocation(line: 1441, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 1441, column: 5)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 1441, column: 5)
!1092 = !DILocation(line: 1441, column: 5, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1441, column: 5)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 1441, column: 5)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 1441, column: 5)
!1096 = !DILocation(line: 1445, column: 17, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !593, file: !3, line: 1445, column: 9)
!1098 = !DILocation(line: 1445, column: 34, scope: !1097)
!1099 = !DILocation(line: 1445, column: 27, scope: !1097)
!1100 = !DILocation(line: 1445, column: 39, scope: !1097)
!1101 = !DILocation(line: 1445, column: 9, scope: !593)
!1102 = !DILocation(line: 0, scope: !593)
!1103 = !DILocation(line: 1467, column: 18, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !592, file: !3, line: 1465, column: 12)
!1105 = !DILocation(line: 1450, column: 9, scope: !593)
!1106 = !DILocation(line: 1452, column: 7, scope: !591)
!1107 = !DILocation(line: 1454, column: 16, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !591, file: !3, line: 1454, column: 11)
!1109 = !DILocation(line: 1454, column: 11, scope: !591)
!1110 = !DILocation(line: 0, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 1455, column: 9)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 1455, column: 9)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1454, column: 25)
!1114 = !DILocation(line: 1455, column: 9, scope: !1111)
!1115 = !DILocation(line: 1455, column: 9, scope: !1112)
!1116 = !DILocation(line: 1455, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1455, column: 9)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 1455, column: 9)
!1119 = !DILocation(line: 1455, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1455, column: 9)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1455, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 1455, column: 9)
!1123 = !DILocation(line: 1456, column: 27, scope: !1113)
!1124 = !DILocation(line: 1456, column: 15, scope: !1113)
!1125 = !DILocation(line: 1456, column: 20, scope: !1113)
!1126 = !DILocation(line: 1457, column: 7, scope: !1113)
!1127 = !DILocation(line: 1463, column: 18, scope: !591)
!1128 = !DILocation(line: 1459, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1459, column: 9)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 1459, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1457, column: 14)
!1132 = !DILocation(line: 1459, column: 9, scope: !1130)
!1133 = !DILocation(line: 1459, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 1459, column: 9)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 1459, column: 9)
!1136 = !DILocation(line: 1459, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1459, column: 9)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 1459, column: 9)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1459, column: 9)
!1140 = !DILocation(line: 1460, column: 28, scope: !1131)
!1141 = !DILocation(line: 1460, column: 21, scope: !1131)
!1142 = !DILocation(line: 1451, column: 23, scope: !591)
!1143 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 1464, column: 7, scope: !591)
!1145 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1144)
!1146 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1144)
!1147 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1144)
!1148 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1144)
!1149 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1144)
!1150 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1144)
!1151 = !DILocation(line: 1465, column: 5, scope: !591)
!1152 = !DILocation(line: 0, scope: !1104)
!1153 = distinct !{!1153, !1082, !1154}
!1154 = !DILocation(line: 1469, column: 3, scope: !555)
!1155 = !DILocation(line: 1470, column: 1, scope: !555)
!1156 = distinct !DISubprogram(name: "tcp_close", scope: !3, file: !3, line: 484, type: !1157, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!140, !145}
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "pcb", arg: 1, scope: !1156, file: !3, line: 484, type: !145)
!1161 = !DILocation(line: 484, column: 27, scope: !1156)
!1162 = !DILocation(line: 488, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 488, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 488, column: 3)
!1165 = !DILocation(line: 488, column: 3, scope: !1164)
!1166 = !DILocation(line: 488, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 488, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 488, column: 3)
!1169 = !DILocation(line: 488, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 488, column: 3)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 488, column: 3)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 488, column: 3)
!1173 = !DILocation(line: 493, column: 12, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 493, column: 7)
!1175 = !DILocation(line: 493, column: 18, scope: !1174)
!1176 = !DILocation(line: 493, column: 7, scope: !1156)
!1177 = !DILocation(line: 495, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 495, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 493, column: 29)
!1180 = !DILocation(line: 496, column: 3, scope: !1179)
!1181 = !DILocation(line: 498, column: 10, scope: !1156)
!1182 = !DILocation(line: 499, column: 1, scope: !1156)
!1183 = distinct !DISubprogram(name: "tcp_close_shutdown", scope: !3, file: !3, line: 348, type: !1184, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!140, !145, !91}
!1186 = !{!1187, !1188, !1189, !1198}
!1187 = !DILocalVariable(name: "pcb", arg: 1, scope: !1183, file: !3, line: 348, type: !145)
!1188 = !DILocalVariable(name: "rst_on_unacked_data", arg: 2, scope: !1183, file: !3, line: 348, type: !91)
!1189 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1190, file: !3, line: 364, type: !145)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 364, column: 7)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 364, column: 7)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 364, column: 7)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 364, column: 7)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 353, column: 76)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 353, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 352, column: 91)
!1197 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 352, column: 7)
!1198 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1199, file: !3, line: 388, type: !145)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 388, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 388, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 388, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 387, column: 33)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 387, column: 11)
!1204 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 378, column: 23)
!1205 = !DILocation(line: 348, column: 36, scope: !1183)
!1206 = !DILocation(line: 348, column: 46, scope: !1183)
!1207 = !DILocation(line: 350, column: 3, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 350, column: 3)
!1209 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 350, column: 3)
!1210 = !DILocation(line: 350, column: 3, scope: !1209)
!1211 = !DILocation(line: 350, column: 3, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 350, column: 3)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 350, column: 3)
!1214 = !DILocation(line: 350, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 350, column: 3)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 350, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 350, column: 3)
!1218 = !DILocation(line: 352, column: 7, scope: !1197)
!1219 = !DILocation(line: 352, column: 27, scope: !1197)
!1220 = !DILocation(line: 0, scope: !1197)
!1221 = !DILocation(line: 352, column: 43, scope: !1197)
!1222 = !DILocation(line: 352, column: 59, scope: !1197)
!1223 = !DILocation(line: 352, column: 74, scope: !1197)
!1224 = !DILocation(line: 352, column: 7, scope: !1183)
!1225 = !DILocation(line: 353, column: 15, scope: !1195)
!1226 = !DILocation(line: 353, column: 28, scope: !1195)
!1227 = !DILocation(line: 353, column: 37, scope: !1195)
!1228 = !DILocation(line: 356, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 356, column: 7)
!1230 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 356, column: 7)
!1231 = !DILocation(line: 353, column: 46, scope: !1195)
!1232 = !{!458, !415, i64 96}
!1233 = !DILocation(line: 353, column: 57, scope: !1195)
!1234 = !DILocation(line: 353, column: 54, scope: !1195)
!1235 = !DILocation(line: 353, column: 9, scope: !1196)
!1236 = !DILocation(line: 356, column: 7, scope: !1230)
!1237 = !DILocation(line: 356, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 356, column: 7)
!1239 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 356, column: 7)
!1240 = !DILocation(line: 356, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 356, column: 7)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 356, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 356, column: 7)
!1244 = !DILocation(line: 360, column: 25, scope: !1194)
!1245 = !DILocation(line: 360, column: 39, scope: !1194)
!1246 = !DILocation(line: 360, column: 54, scope: !1194)
!1247 = !DILocation(line: 360, column: 70, scope: !1194)
!1248 = !DILocation(line: 361, column: 20, scope: !1194)
!1249 = !DILocation(line: 361, column: 37, scope: !1194)
!1250 = !DILocation(line: 360, column: 7, scope: !1194)
!1251 = !DILocation(line: 363, column: 7, scope: !1194)
!1252 = !DILocation(line: 364, column: 7, scope: !1191)
!1253 = !DILocation(line: 364, column: 7, scope: !1192)
!1254 = !DILocation(line: 364, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 364, column: 7)
!1256 = !DILocation(line: 364, column: 7, scope: !1190)
!1257 = !DILocation(line: 364, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 364, column: 7)
!1259 = !DILocation(line: 364, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 364, column: 7)
!1261 = !DILocation(line: 364, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 364, column: 7)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 364, column: 7)
!1264 = !DILocation(line: 364, column: 7, scope: !1263)
!1265 = !DILocation(line: 364, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 364, column: 7)
!1267 = distinct !{!1267, !1257, !1257}
!1268 = !DILocation(line: 364, column: 7, scope: !1193)
!1269 = !DILocation(line: 366, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 366, column: 11)
!1271 = !DILocation(line: 366, column: 25, scope: !1270)
!1272 = !DILocation(line: 366, column: 11, scope: !1194)
!1273 = !DILocation(line: 368, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 366, column: 33)
!1275 = !DILocation(line: 369, column: 7, scope: !1274)
!1276 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 370, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 369, column: 14)
!1279 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1277)
!1280 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1277)
!1281 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1277)
!1282 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1277)
!1283 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1277)
!1284 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1277)
!1285 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1277)
!1286 = !DILocation(line: 372, column: 7, scope: !1194)
!1287 = !DILocation(line: 378, column: 3, scope: !1183)
!1288 = !DILocation(line: 387, column: 16, scope: !1203)
!1289 = !DILocation(line: 387, column: 27, scope: !1203)
!1290 = !DILocation(line: 387, column: 11, scope: !1204)
!1291 = !DILocation(line: 388, column: 9, scope: !1200)
!1292 = !DILocation(line: 388, column: 9, scope: !1201)
!1293 = !DILocation(line: 388, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 388, column: 9)
!1295 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 390, column: 7, scope: !1204)
!1297 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1296)
!1298 = !DILocation(line: 388, column: 9, scope: !1199)
!1299 = !DILocation(line: 388, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 388, column: 9)
!1301 = !DILocation(line: 388, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 388, column: 9)
!1303 = !DILocation(line: 388, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 388, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 388, column: 9)
!1306 = !DILocation(line: 388, column: 9, scope: !1305)
!1307 = !DILocation(line: 388, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 388, column: 9)
!1309 = distinct !{!1309, !1299, !1299}
!1310 = !DILocation(line: 389, column: 7, scope: !1202)
!1311 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1296)
!1312 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1296)
!1313 = !DILocation(line: 391, column: 7, scope: !1204)
!1314 = !DILocalVariable(name: "pcb", arg: 1, scope: !1315, file: !3, line: 269, type: !145)
!1315 = distinct !DISubprogram(name: "tcp_listen_closed", scope: !3, file: !3, line: 269, type: !449, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1316)
!1316 = !{!1314, !1317}
!1317 = !DILocalVariable(name: "i", scope: !1315, file: !3, line: 272, type: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1319, line: 40, baseType: !1320)
!1319 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !1321, line: 129, baseType: !272)
!1321 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!1322 = !DILocation(line: 269, column: 35, scope: !1315, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 393, column: 7, scope: !1204)
!1324 = !DILocation(line: 273, column: 3, scope: !1325, inlinedAt: !1323)
!1325 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 273, column: 3)
!1326 = !DILocation(line: 274, column: 3, scope: !1327, inlinedAt: !1323)
!1327 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 274, column: 3)
!1328 = !DILocation(line: 272, column: 10, scope: !1315, inlinedAt: !1323)
!1329 = !DILocation(line: 275, column: 8, scope: !1330, inlinedAt: !1323)
!1330 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 275, column: 3)
!1331 = !DILocation(line: 275, column: 3, scope: !1330, inlinedAt: !1323)
!1332 = !DILocation(line: 276, column: 25, scope: !1333, inlinedAt: !1323)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 275, column: 55)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 275, column: 3)
!1335 = !DILocalVariable(name: "list", arg: 1, scope: !1336, file: !3, line: 251, type: !145)
!1336 = distinct !DISubprogram(name: "tcp_remove_listener", scope: !3, file: !3, line: 251, type: !1337, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !145, !98}
!1339 = !{!1335, !1340, !1341}
!1340 = !DILocalVariable(name: "lpcb", arg: 2, scope: !1336, file: !3, line: 251, type: !98)
!1341 = !DILocalVariable(name: "pcb", scope: !1336, file: !3, line: 253, type: !145)
!1342 = !DILocation(line: 251, column: 37, scope: !1336, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 276, column: 5, scope: !1333, inlinedAt: !1323)
!1344 = !DILocation(line: 251, column: 66, scope: !1336, inlinedAt: !1343)
!1345 = !DILocation(line: 255, column: 3, scope: !1346, inlinedAt: !1343)
!1346 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 255, column: 3)
!1347 = !DILocation(line: 253, column: 19, scope: !1336, inlinedAt: !1343)
!1348 = !DILocation(line: 257, column: 8, scope: !1349, inlinedAt: !1343)
!1349 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 257, column: 3)
!1350 = !DILocation(line: 257, column: 24, scope: !1351, inlinedAt: !1343)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 257, column: 3)
!1352 = !DILocation(line: 257, column: 3, scope: !1349, inlinedAt: !1343)
!1353 = !DILocation(line: 258, column: 14, scope: !1354, inlinedAt: !1343)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 258, column: 9)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 257, column: 50)
!1356 = !{!458, !460, i64 216}
!1357 = !DILocation(line: 258, column: 23, scope: !1354, inlinedAt: !1343)
!1358 = !DILocation(line: 258, column: 9, scope: !1355, inlinedAt: !1343)
!1359 = !DILocation(line: 259, column: 21, scope: !1360, inlinedAt: !1343)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 258, column: 32)
!1361 = !DILocation(line: 260, column: 5, scope: !1360, inlinedAt: !1343)
!1362 = !DILocation(line: 257, column: 44, scope: !1351, inlinedAt: !1343)
!1363 = !DILocation(line: 257, column: 3, scope: !1351, inlinedAt: !1343)
!1364 = distinct !{!1364, !1365, !1366}
!1365 = !DILocation(line: 257, column: 3, scope: !1349)
!1366 = !DILocation(line: 261, column: 3, scope: !1349)
!1367 = !DILocation(line: 262, column: 1, scope: !1336, inlinedAt: !1343)
!1368 = !DILocation(line: 275, column: 3, scope: !1334, inlinedAt: !1323)
!1369 = !DILocation(line: 280, column: 1, scope: !1315, inlinedAt: !1323)
!1370 = !DILocation(line: 394, column: 7, scope: !1204)
!1371 = !DILocalVariable(name: "pcb", arg: 1, scope: !1372, file: !3, line: 221, type: !145)
!1372 = distinct !DISubprogram(name: "tcp_free_listen", scope: !3, file: !3, line: 221, type: !449, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1373)
!1373 = !{!1371}
!1374 = !DILocation(line: 221, column: 33, scope: !1372, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 395, column: 7, scope: !1204)
!1376 = !DILocation(line: 223, column: 3, scope: !1377, inlinedAt: !1375)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 223, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 223, column: 3)
!1379 = !DILocation(line: 223, column: 3, scope: !1378, inlinedAt: !1375)
!1380 = !DILocation(line: 223, column: 3, scope: !1381, inlinedAt: !1375)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 223, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 223, column: 3)
!1383 = !DILocation(line: 223, column: 3, scope: !1384, inlinedAt: !1375)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 223, column: 3)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 223, column: 3)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 223, column: 3)
!1387 = !DILocation(line: 227, column: 34, scope: !1372, inlinedAt: !1375)
!1388 = !DILocation(line: 227, column: 3, scope: !1372, inlinedAt: !1375)
!1389 = !DILocation(line: 396, column: 7, scope: !1204)
!1390 = !DILocation(line: 398, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 398, column: 7)
!1392 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 399, column: 7, scope: !1204)
!1394 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1393)
!1395 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1393)
!1396 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1393)
!1397 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1393)
!1398 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1393)
!1399 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1393)
!1400 = !DILocation(line: 401, column: 7, scope: !1204)
!1401 = !DILocation(line: 403, column: 14, scope: !1204)
!1402 = !DILocation(line: 403, column: 7, scope: !1204)
!1403 = !DILocation(line: 0, scope: !1204)
!1404 = !DILocation(line: 405, column: 3, scope: !1183)
!1405 = !DILocation(line: 0, scope: !1183)
!1406 = !DILocation(line: 0, scope: !1194)
!1407 = !DILocation(line: 406, column: 1, scope: !1183)
!1408 = distinct !DISubprogram(name: "tcp_shutdown", scope: !3, file: !3, line: 515, type: !1409, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!140, !145, !50, !50}
!1411 = !{!1412, !1413, !1414}
!1412 = !DILocalVariable(name: "pcb", arg: 1, scope: !1408, file: !3, line: 515, type: !145)
!1413 = !DILocalVariable(name: "shut_rx", arg: 2, scope: !1408, file: !3, line: 515, type: !50)
!1414 = !DILocalVariable(name: "shut_tx", arg: 3, scope: !1408, file: !3, line: 515, type: !50)
!1415 = !DILocation(line: 515, column: 30, scope: !1408)
!1416 = !DILocation(line: 515, column: 39, scope: !1408)
!1417 = !DILocation(line: 515, column: 52, scope: !1408)
!1418 = !DILocation(line: 519, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 519, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 519, column: 3)
!1421 = !DILocation(line: 519, column: 3, scope: !1420)
!1422 = !DILocation(line: 519, column: 3, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 519, column: 3)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 519, column: 3)
!1425 = !DILocation(line: 519, column: 3, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 519, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 519, column: 3)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 519, column: 3)
!1429 = !DILocation(line: 521, column: 12, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 521, column: 7)
!1431 = !DILocation(line: 521, column: 18, scope: !1430)
!1432 = !DILocation(line: 521, column: 7, scope: !1408)
!1433 = !DILocation(line: 524, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 524, column: 7)
!1435 = !DILocation(line: 524, column: 7, scope: !1408)
!1436 = !DILocation(line: 526, column: 5, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 526, column: 5)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 524, column: 16)
!1439 = !DILocation(line: 527, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 527, column: 9)
!1441 = !DILocation(line: 527, column: 9, scope: !1438)
!1442 = !DILocation(line: 529, column: 14, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 527, column: 18)
!1444 = !DILocation(line: 529, column: 7, scope: !1443)
!1445 = !DILocation(line: 532, column: 14, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 532, column: 9)
!1447 = !DILocation(line: 532, column: 27, scope: !1446)
!1448 = !DILocation(line: 532, column: 9, scope: !1438)
!1449 = !DILocation(line: 533, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 532, column: 36)
!1451 = !DILocation(line: 534, column: 25, scope: !1450)
!1452 = !DILocation(line: 535, column: 5, scope: !1450)
!1453 = !DILocation(line: 537, column: 7, scope: !1408)
!1454 = !DILocation(line: 537, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 537, column: 7)
!1456 = !DILocation(line: 540, column: 5, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 537, column: 16)
!1458 = !DILocation(line: 544, column: 16, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 540, column: 25)
!1460 = !DILocation(line: 544, column: 9, scope: !1459)
!1461 = !DILocation(line: 0, scope: !1408)
!1462 = !DILocation(line: 0, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 521, column: 29)
!1464 = !DILocation(line: 552, column: 1, scope: !1408)
!1465 = distinct !DISubprogram(name: "tcp_abandon", scope: !3, file: !3, line: 563, type: !1466, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !145, !50}
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1478, !1479, !1480}
!1469 = !DILocalVariable(name: "pcb", arg: 1, scope: !1465, file: !3, line: 563, type: !145)
!1470 = !DILocalVariable(name: "reset", arg: 2, scope: !1465, file: !3, line: 563, type: !50)
!1471 = !DILocalVariable(name: "seqno", scope: !1465, file: !3, line: 565, type: !95)
!1472 = !DILocalVariable(name: "ackno", scope: !1465, file: !3, line: 565, type: !95)
!1473 = !DILocalVariable(name: "errf", scope: !1465, file: !3, line: 567, type: !253)
!1474 = !DILocalVariable(name: "errf_arg", scope: !1465, file: !3, line: 569, type: !88)
!1475 = !DILocalVariable(name: "send_rst", scope: !1476, file: !3, line: 585, type: !50)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 584, column: 10)
!1477 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 581, column: 7)
!1478 = !DILocalVariable(name: "local_port", scope: !1476, file: !3, line: 586, type: !81)
!1479 = !DILocalVariable(name: "last_state", scope: !1476, file: !3, line: 587, type: !5)
!1480 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1481, file: !3, line: 597, type: !145)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 597, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 597, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 597, column: 9)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 595, column: 33)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 595, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 594, column: 31)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 594, column: 9)
!1488 = !DILocation(line: 563, column: 29, scope: !1465)
!1489 = !DILocation(line: 563, column: 38, scope: !1465)
!1490 = !DILocation(line: 573, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 573, column: 3)
!1492 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 573, column: 3)
!1493 = !DILocation(line: 573, column: 3, scope: !1492)
!1494 = !DILocation(line: 573, column: 3, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 573, column: 3)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 573, column: 3)
!1497 = !DILocation(line: 573, column: 3, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 573, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 573, column: 3)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 573, column: 3)
!1501 = !DILocation(line: 576, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 576, column: 3)
!1503 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 576, column: 3)
!1504 = !DILocation(line: 576, column: 3, scope: !1503)
!1505 = !DILocation(line: 576, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 576, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 576, column: 3)
!1508 = !DILocation(line: 576, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 576, column: 3)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 576, column: 3)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 576, column: 3)
!1512 = !DILocation(line: 581, column: 18, scope: !1477)
!1513 = !DILocation(line: 581, column: 7, scope: !1465)
!1514 = !DILocation(line: 582, column: 5, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 581, column: 32)
!1516 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 583, column: 5, scope: !1515)
!1518 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1517)
!1519 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1517)
!1520 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1517)
!1521 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1517)
!1522 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1517)
!1523 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1517)
!1524 = !DILocation(line: 584, column: 3, scope: !1515)
!1525 = !DILocation(line: 585, column: 9, scope: !1476)
!1526 = !DILocation(line: 586, column: 11, scope: !1476)
!1527 = !DILocation(line: 588, column: 18, scope: !1476)
!1528 = !DILocation(line: 565, column: 9, scope: !1465)
!1529 = !DILocation(line: 589, column: 18, scope: !1476)
!1530 = !DILocation(line: 565, column: 16, scope: !1465)
!1531 = !DILocation(line: 591, column: 17, scope: !1476)
!1532 = !DILocation(line: 567, column: 14, scope: !1465)
!1533 = !DILocation(line: 593, column: 21, scope: !1476)
!1534 = !DILocation(line: 569, column: 9, scope: !1465)
!1535 = !DILocation(line: 594, column: 20, scope: !1487)
!1536 = !DILocation(line: 594, column: 9, scope: !1476)
!1537 = !DILocation(line: 0, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 599, column: 12)
!1539 = !DILocation(line: 595, column: 27, scope: !1485)
!1540 = !DILocation(line: 595, column: 11, scope: !1486)
!1541 = !DILocation(line: 597, column: 9, scope: !1482)
!1542 = !DILocation(line: 597, column: 9, scope: !1483)
!1543 = !DILocation(line: 597, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 597, column: 9)
!1545 = !DILocation(line: 597, column: 9, scope: !1481)
!1546 = !DILocation(line: 597, column: 9, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 597, column: 9)
!1548 = !DILocation(line: 597, column: 9, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 597, column: 9)
!1550 = !DILocation(line: 597, column: 9, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 597, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 597, column: 9)
!1553 = !DILocation(line: 597, column: 9, scope: !1552)
!1554 = !DILocation(line: 597, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 597, column: 9)
!1556 = distinct !{!1556, !1546, !1546}
!1557 = !DILocation(line: 598, column: 7, scope: !1484)
!1558 = !DILocation(line: 602, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 602, column: 7)
!1560 = !DILocation(line: 604, column: 14, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 604, column: 9)
!1562 = !DILocation(line: 604, column: 22, scope: !1561)
!1563 = !DILocation(line: 604, column: 9, scope: !1476)
!1564 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 605, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 604, column: 31)
!1567 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !1565)
!1568 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !1565)
!1569 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !1565)
!1570 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !1565)
!1572 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !1571)
!1573 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !1571)
!1574 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !1571)
!1575 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !1571)
!1576 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !1571)
!1577 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !1571)
!1578 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !1571)
!1579 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !1571)
!1580 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !1571)
!1581 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !1571)
!1582 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !1565)
!1583 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !1565)
!1584 = !DILocation(line: 606, column: 5, scope: !1566)
!1585 = !DILocation(line: 607, column: 14, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 607, column: 9)
!1587 = !DILocation(line: 607, column: 21, scope: !1586)
!1588 = !DILocation(line: 607, column: 9, scope: !1476)
!1589 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 608, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 607, column: 30)
!1592 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !1590)
!1593 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !1590)
!1594 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !1590)
!1595 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !1590)
!1597 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !1596)
!1598 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !1596)
!1599 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !1596)
!1600 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !1596)
!1601 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !1596)
!1602 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !1596)
!1603 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !1596)
!1604 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !1596)
!1605 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !1596)
!1606 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !1596)
!1607 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !1590)
!1608 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !1590)
!1609 = !DILocation(line: 609, column: 5, scope: !1591)
!1610 = !DILocation(line: 611, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 611, column: 9)
!1612 = !DILocation(line: 611, column: 20, scope: !1611)
!1613 = !DILocation(line: 611, column: 9, scope: !1476)
!1614 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 612, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 611, column: 29)
!1617 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !1615)
!1618 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !1615)
!1619 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !1615)
!1620 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !1615)
!1622 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !1621)
!1623 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !1621)
!1624 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !1621)
!1625 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !1621)
!1626 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !1621)
!1627 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !1621)
!1628 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !1621)
!1629 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !1621)
!1630 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !1621)
!1631 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !1621)
!1632 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !1615)
!1633 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !1615)
!1634 = !DILocation(line: 613, column: 5, scope: !1616)
!1635 = !DILocation(line: 616, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 616, column: 9)
!1637 = !DILocation(line: 616, column: 9, scope: !1476)
!1638 = !DILocation(line: 618, column: 40, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 616, column: 19)
!1640 = !DILocation(line: 618, column: 56, scope: !1639)
!1641 = !DILocation(line: 618, column: 84, scope: !1639)
!1642 = !DILocation(line: 618, column: 7, scope: !1639)
!1643 = !DILocation(line: 619, column: 5, scope: !1639)
!1644 = !DILocation(line: 587, column: 20, scope: !1476)
!1645 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 621, column: 5, scope: !1476)
!1647 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1646)
!1648 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1646)
!1649 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1646)
!1650 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1646)
!1651 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1646)
!1652 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1646)
!1653 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1646)
!1654 = !DILocation(line: 622, column: 5, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 622, column: 5)
!1656 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 622, column: 5)
!1657 = !DILocation(line: 622, column: 5, scope: !1656)
!1658 = !DILocation(line: 0, scope: !1515)
!1659 = !DILocation(line: 624, column: 1, scope: !1465)
!1660 = distinct !DISubprogram(name: "tcp_pcb_remove", scope: !3, file: !3, line: 2177, type: !1661, isLocal: false, isDefinition: true, scopeLine: 2178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !279, !145}
!1663 = !{!1664, !1665, !1666}
!1664 = !DILocalVariable(name: "pcblist", arg: 1, scope: !1660, file: !3, line: 2177, type: !279)
!1665 = !DILocalVariable(name: "pcb", arg: 2, scope: !1660, file: !3, line: 2177, type: !145)
!1666 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1667, file: !3, line: 2182, type: !145)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 2182, column: 3)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 2182, column: 3)
!1669 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 2182, column: 3)
!1670 = !DILocation(line: 2177, column: 33, scope: !1660)
!1671 = !DILocation(line: 2177, column: 58, scope: !1660)
!1672 = !DILocation(line: 2179, column: 3, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 2179, column: 3)
!1674 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 2179, column: 3)
!1675 = !DILocation(line: 2179, column: 3, scope: !1674)
!1676 = !DILocation(line: 2179, column: 3, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 2179, column: 3)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 2179, column: 3)
!1679 = !DILocation(line: 2179, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 2179, column: 3)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 2179, column: 3)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 2179, column: 3)
!1683 = !DILocation(line: 2180, column: 3, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 2180, column: 3)
!1685 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 2180, column: 3)
!1686 = !DILocation(line: 2180, column: 3, scope: !1685)
!1687 = !DILocation(line: 2180, column: 3, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 2180, column: 3)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 2180, column: 3)
!1690 = !DILocation(line: 2180, column: 3, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 2180, column: 3)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 2180, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 2180, column: 3)
!1694 = !DILocation(line: 2182, column: 3, scope: !1668)
!1695 = !DILocation(line: 2182, column: 3, scope: !1669)
!1696 = !DILocation(line: 2182, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 2182, column: 3)
!1698 = !DILocation(line: 2182, column: 3, scope: !1667)
!1699 = !DILocation(line: 2182, column: 3, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 2182, column: 3)
!1701 = !DILocation(line: 2182, column: 3, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 2182, column: 3)
!1703 = !DILocation(line: 2182, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 2182, column: 3)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 2182, column: 3)
!1706 = !DILocation(line: 2182, column: 3, scope: !1705)
!1707 = !DILocation(line: 2182, column: 3, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 2182, column: 3)
!1709 = distinct !{!1709, !1699, !1699}
!1710 = !DILocation(line: 2184, column: 3, scope: !1660)
!1711 = !DILocation(line: 2187, column: 13, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 2187, column: 7)
!1713 = !DILocation(line: 2187, column: 19, scope: !1712)
!1714 = !DILocation(line: 2187, column: 33, scope: !1712)
!1715 = !DILocation(line: 2194, column: 7, scope: !1660)
!1716 = !DILocation(line: 2188, column: 19, scope: !1712)
!1717 = !DILocation(line: 2188, column: 30, scope: !1712)
!1718 = !DILocation(line: 2189, column: 13, scope: !1712)
!1719 = !DILocation(line: 2189, column: 19, scope: !1712)
!1720 = !DILocation(line: 2187, column: 7, scope: !1660)
!1721 = !DILocation(line: 2190, column: 5, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 2190, column: 5)
!1723 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 2189, column: 36)
!1724 = !DILocation(line: 2191, column: 5, scope: !1723)
!1725 = !DILocation(line: 2192, column: 3, scope: !1723)
!1726 = !DILocation(line: 2194, column: 12, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 2194, column: 7)
!1728 = !DILocation(line: 2194, column: 18, scope: !1727)
!1729 = !DILocation(line: 2195, column: 5, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 2195, column: 5)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 2195, column: 5)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 2194, column: 29)
!1733 = !DILocation(line: 2195, column: 5, scope: !1731)
!1734 = !DILocation(line: 2195, column: 5, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 2195, column: 5)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 2195, column: 5)
!1737 = !DILocation(line: 2195, column: 5, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 2195, column: 5)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 2195, column: 5)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 2195, column: 5)
!1741 = !DILocation(line: 2196, column: 5, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 2196, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 2196, column: 5)
!1744 = !DILocation(line: 2196, column: 5, scope: !1743)
!1745 = !DILocation(line: 2196, column: 5, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 2196, column: 5)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 2196, column: 5)
!1748 = !DILocation(line: 2196, column: 5, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 2196, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 2196, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 2196, column: 5)
!1752 = !DILocation(line: 2198, column: 5, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 2198, column: 5)
!1754 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 2198, column: 5)
!1755 = !DILocation(line: 2198, column: 5, scope: !1754)
!1756 = !DILocation(line: 2198, column: 5, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 2198, column: 5)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 2198, column: 5)
!1759 = !DILocation(line: 2198, column: 5, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 2198, column: 5)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 2198, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 2198, column: 5)
!1763 = !DILocation(line: 2202, column: 14, scope: !1660)
!1764 = !DILocation(line: 2204, column: 8, scope: !1660)
!1765 = !DILocation(line: 2204, column: 19, scope: !1660)
!1766 = !DILocation(line: 2207, column: 1, scope: !1660)
!1767 = !DILocation(line: 1608, column: 31, scope: !901)
!1768 = !DILocation(line: 1610, column: 14, scope: !901)
!1769 = !DILocation(line: 1611, column: 33, scope: !906)
!1770 = !DILocation(line: 1611, column: 21, scope: !906)
!1771 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 1612, column: 5, scope: !906)
!1773 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !1772)
!1774 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !1772)
!1775 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !1772)
!1776 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !1772)
!1777 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !1772)
!1778 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !1772)
!1779 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !1772)
!1780 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !1772)
!1781 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !1772)
!1782 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !1772)
!1783 = !DILocation(line: 1615, column: 1, scope: !901)
!1784 = distinct !DISubprogram(name: "tcp_abort", scope: !3, file: !3, line: 638, type: !449, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "pcb", arg: 1, scope: !1784, file: !3, line: 638, type: !145)
!1787 = !DILocation(line: 638, column: 27, scope: !1784)
!1788 = !DILocation(line: 640, column: 3, scope: !1784)
!1789 = !DILocation(line: 641, column: 1, scope: !1784)
!1790 = distinct !DISubprogram(name: "tcp_bind", scope: !3, file: !3, line: 661, type: !1791, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!140, !145, !267, !81}
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1794 = !DILocalVariable(name: "pcb", arg: 1, scope: !1790, file: !3, line: 661, type: !145)
!1795 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1790, file: !3, line: 661, type: !267)
!1796 = !DILocalVariable(name: "port", arg: 3, scope: !1790, file: !3, line: 661, type: !81)
!1797 = !DILocalVariable(name: "i", scope: !1790, file: !3, line: 663, type: !50)
!1798 = !DILocalVariable(name: "max_pcb_list", scope: !1790, file: !3, line: 664, type: !50)
!1799 = !DILocalVariable(name: "cpcb", scope: !1790, file: !3, line: 665, type: !145)
!1800 = !DILocalVariable(name: "zoned_ipaddr", scope: !1790, file: !3, line: 667, type: !102)
!1801 = !DILocalVariable(name: "selected_netif", scope: !1802, file: !3, line: 703, type: !1805)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 703, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 701, column: 79)
!1804 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 701, column: 7)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !76, line: 260, size: 2240, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1816, !1818, !1820, !1821, !1826, !1833, !1838, !1845, !1850, !1851, !1852, !1854, !1855, !1856, !1857, !1859, !1860, !1861, !1865, !1866, !1867, !1868}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1806, file: !76, line: 263, baseType: !1805, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1806, file: !76, line: 268, baseType: !102, size: 192, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1806, file: !76, line: 269, baseType: !102, size: 192, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1806, file: !76, line: 270, baseType: !102, size: 192, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1806, file: !76, line: 274, baseType: !1813, size: 576, offset: 640)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 576, elements: !1814)
!1814 = !{!1815}
!1815 = !DISubrange(count: 3)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1806, file: !76, line: 277, baseType: !1817, size: 24, offset: 1216)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !1814)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1806, file: !76, line: 282, baseType: !1819, size: 96, offset: 1248)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 96, elements: !1814)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1806, file: !76, line: 283, baseType: !1819, size: 96, offset: 1344)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1806, file: !76, line: 288, baseType: !1822, size: 64, offset: 1472)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !76, line: 178, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!140, !204, !1805}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1806, file: !76, line: 294, baseType: !1827, size: 64, offset: 1536)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !76, line: 189, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!140, !1805, !204, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1806, file: !76, line: 299, baseType: !1834, size: 64, offset: 1600)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !76, line: 212, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!140, !1805, !204}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1806, file: !76, line: 305, baseType: !1839, size: 64, offset: 1664)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !76, line: 202, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!140, !1805, !204, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1806, file: !76, line: 310, baseType: !1846, size: 64, offset: 1728)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !76, line: 214, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1805}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1806, file: !76, line: 319, baseType: !1846, size: 64, offset: 1792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1806, file: !76, line: 323, baseType: !88, size: 64, offset: 1856)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1806, file: !76, line: 325, baseType: !1853, size: 64, offset: 1920)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !325)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1806, file: !76, line: 332, baseType: !81, size: 16, offset: 1984)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1806, file: !76, line: 335, baseType: !81, size: 16, offset: 2000)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1806, file: !76, line: 338, baseType: !81, size: 16, offset: 2016)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1806, file: !76, line: 341, baseType: !1858, size: 48, offset: 2032)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, elements: !333)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1806, file: !76, line: 343, baseType: !91, size: 8, offset: 2080)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !76, line: 345, baseType: !91, size: 8, offset: 2088)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1806, file: !76, line: 347, baseType: !1862, size: 16, offset: 2096)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16, elements: !1863)
!1863 = !{!1864}
!1864 = !DISubrange(count: 2)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1806, file: !76, line: 350, baseType: !91, size: 8, offset: 2112)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1806, file: !76, line: 353, baseType: !91, size: 8, offset: 2120)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1806, file: !76, line: 357, baseType: !91, size: 8, offset: 2128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1806, file: !76, line: 377, baseType: !1869, size: 64, offset: 2176)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !76, line: 222, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!140, !1805, !1843, !75}
!1873 = !DILocation(line: 661, column: 26, scope: !1790)
!1874 = !DILocation(line: 661, column: 48, scope: !1790)
!1875 = !DILocation(line: 661, column: 62, scope: !1790)
!1876 = !DILocation(line: 664, column: 7, scope: !1790)
!1877 = !DILocation(line: 667, column: 3, scope: !1790)
!1878 = !DILocation(line: 674, column: 14, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 674, column: 7)
!1880 = !DILocation(line: 674, column: 7, scope: !1790)
!1881 = !DILocation(line: 676, column: 3, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 674, column: 23)
!1883 = !DILocation(line: 681, column: 3, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 681, column: 3)
!1885 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 681, column: 3)
!1886 = !DILocation(line: 681, column: 3, scope: !1885)
!1887 = !DILocation(line: 681, column: 3, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 681, column: 3)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 681, column: 3)
!1890 = !DILocation(line: 681, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 681, column: 3)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 681, column: 3)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 681, column: 3)
!1894 = !DILocation(line: 683, column: 3, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 683, column: 3)
!1896 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 683, column: 3)
!1897 = !DILocation(line: 683, column: 3, scope: !1896)
!1898 = !DILocation(line: 683, column: 3, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 683, column: 3)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 683, column: 3)
!1901 = !DILocation(line: 683, column: 3, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 683, column: 3)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 683, column: 3)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 683, column: 3)
!1905 = !DILocation(line: 691, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 691, column: 7)
!1907 = !DILocation(line: 691, column: 7, scope: !1790)
!1908 = !DILocation(line: 693, column: 3, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 691, column: 42)
!1910 = !DILocation(line: 701, column: 7, scope: !1804)
!1911 = !{!459, !416, i64 20}
!1912 = !DILocation(line: 701, column: 24, scope: !1804)
!1913 = !DILocation(line: 701, column: 27, scope: !1804)
!1914 = !DILocation(line: 701, column: 7, scope: !1790)
!1915 = !DILocation(line: 702, column: 5, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 702, column: 5)
!1917 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 702, column: 5)
!1918 = !DILocation(line: 702, column: 5, scope: !1917)
!1919 = !DILocation(line: 702, column: 5, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 702, column: 5)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 702, column: 5)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 702, column: 5)
!1923 = !DILocation(line: 702, column: 5, scope: !1921)
!1924 = !DILocation(line: 703, column: 5, scope: !1802)
!1925 = !DILocation(line: 703, column: 5, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 703, column: 5)
!1927 = !DILocation(line: 703, column: 5, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 703, column: 5)
!1929 = !{!1930, !416, i64 264}
!1930 = !{!"netif", !460, i64 0, !459, i64 8, !459, i64 32, !459, i64 56, !416, i64 80, !416, i64 152, !416, i64 156, !416, i64 168, !460, i64 184, !460, i64 192, !460, i64 200, !460, i64 208, !460, i64 216, !460, i64 224, !460, i64 232, !416, i64 240, !446, i64 248, !446, i64 250, !446, i64 252, !416, i64 254, !416, i64 260, !416, i64 261, !416, i64 262, !416, i64 264, !416, i64 265, !416, i64 266, !460, i64 272}
!1931 = !DILocation(line: 705, column: 3, scope: !1803)
!1932 = !DILocation(line: 0, scope: !1882)
!1933 = !DILocation(line: 708, column: 12, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 708, column: 7)
!1935 = !DILocation(line: 708, column: 7, scope: !1790)
!1936 = !DILocation(line: 709, column: 12, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 708, column: 18)
!1938 = !DILocation(line: 710, column: 14, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 710, column: 9)
!1940 = !DILocation(line: 710, column: 9, scope: !1937)
!1941 = !DILocation(line: 663, column: 7, scope: !1790)
!1942 = !DILocation(line: 715, column: 10, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 715, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 713, column: 10)
!1945 = !DILocation(line: 715, column: 5, scope: !1943)
!1946 = !DILocation(line: 716, column: 20, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 716, column: 7)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 715, column: 40)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 715, column: 5)
!1950 = !DILocation(line: 716, column: 19, scope: !1947)
!1951 = !DILocation(line: 665, column: 19, scope: !1790)
!1952 = !DILocation(line: 716, column: 12, scope: !1947)
!1953 = !DILocation(line: 716, column: 43, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 716, column: 7)
!1955 = !DILocation(line: 716, column: 7, scope: !1947)
!1956 = !DILocation(line: 717, column: 19, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 717, column: 13)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 716, column: 71)
!1959 = !DILocation(line: 717, column: 30, scope: !1957)
!1960 = !DILocation(line: 717, column: 13, scope: !1958)
!1961 = !DILocation(line: 722, column: 16, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 722, column: 15)
!1963 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 717, column: 39)
!1964 = !DILocation(line: 722, column: 50, scope: !1962)
!1965 = !DILocation(line: 723, column: 16, scope: !1962)
!1966 = !DILocation(line: 722, column: 15, scope: !1963)
!1967 = !DILocation(line: 727, column: 18, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 727, column: 17)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 725, column: 11)
!1970 = !DILocation(line: 727, column: 38, scope: !1968)
!1971 = !{!458, !416, i64 20}
!1972 = !DILocation(line: 727, column: 68, scope: !1968)
!1973 = !DILocation(line: 727, column: 35, scope: !1968)
!1974 = !DILocation(line: 728, column: 49, scope: !1968)
!1975 = !DILocation(line: 728, column: 18, scope: !1968)
!1976 = !DILocation(line: 729, column: 40, scope: !1968)
!1977 = !DILocation(line: 729, column: 18, scope: !1968)
!1978 = !DILocation(line: 0, scope: !1968)
!1979 = !DILocation(line: 730, column: 18, scope: !1968)
!1980 = !DILocation(line: 727, column: 17, scope: !1969)
!1981 = !DILocation(line: 0, scope: !1969)
!1982 = !DILocation(line: 716, column: 65, scope: !1954)
!1983 = !DILocation(line: 716, column: 7, scope: !1954)
!1984 = distinct !{!1984, !1955, !1985}
!1985 = !DILocation(line: 735, column: 7, scope: !1947)
!1986 = !DILocation(line: 715, column: 36, scope: !1949)
!1987 = !DILocation(line: 715, column: 5, scope: !1949)
!1988 = !DILocation(line: 715, column: 19, scope: !1949)
!1989 = distinct !{!1989, !1945, !1990}
!1990 = !DILocation(line: 736, column: 5, scope: !1943)
!1991 = !DILocation(line: 739, column: 8, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 739, column: 7)
!1993 = !DILocation(line: 741, column: 7, scope: !1992)
!1994 = !DILocation(line: 741, column: 11, scope: !1992)
!1995 = !DILocation(line: 0, scope: !1992)
!1996 = !DILocation(line: 741, column: 34, scope: !1992)
!1997 = !DILocation(line: 741, column: 31, scope: !1992)
!1998 = !DILocation(line: 739, column: 7, scope: !1790)
!1999 = !DILocation(line: 744, column: 5, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 744, column: 5)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 744, column: 5)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 744, column: 5)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 744, column: 5)
!2004 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 743, column: 8)
!2005 = !DILocation(line: 744, column: 5, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 744, column: 5)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 744, column: 5)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 744, column: 5)
!2009 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 744, column: 5)
!2010 = !DILocation(line: 744, column: 5, scope: !2009)
!2011 = !DILocation(line: 744, column: 5, scope: !2007)
!2012 = !DILocation(line: 744, column: 5, scope: !2002)
!2013 = !DILocation(line: 744, column: 5, scope: !2003)
!2014 = !DILocation(line: 744, column: 5, scope: !2001)
!2015 = !DILocation(line: 744, column: 5, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 744, column: 5)
!2017 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 744, column: 5)
!2018 = !DILocation(line: 746, column: 8, scope: !1790)
!2019 = !DILocation(line: 746, column: 19, scope: !1790)
!2020 = !DILocation(line: 747, column: 3, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 747, column: 3)
!2022 = !DILocation(line: 749, column: 3, scope: !1790)
!2023 = !DILocation(line: 0, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 730, column: 57)
!2025 = !DILocation(line: 0, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 710, column: 20)
!2027 = !DILocation(line: 750, column: 1, scope: !1790)
!2028 = distinct !DISubprogram(name: "tcp_new_port", scope: !3, file: !3, line: 1011, type: !2029, isLocal: true, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!81}
!2031 = !{!2032, !2033, !2034}
!2032 = !DILocalVariable(name: "i", scope: !2028, file: !3, line: 1013, type: !91)
!2033 = !DILocalVariable(name: "n", scope: !2028, file: !3, line: 1014, type: !81)
!2034 = !DILocalVariable(name: "pcb", scope: !2028, file: !3, line: 1015, type: !145)
!2035 = !DILocation(line: 1014, column: 9, scope: !2028)
!2036 = !DILocation(line: 1015, column: 3, scope: !2028)
!2037 = !DILocation(line: 1018, column: 11, scope: !2028)
!2038 = !DILocation(line: 1024, column: 16, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1024, column: 5)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1023, column: 43)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1023, column: 3)
!2042 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 1023, column: 3)
!2043 = !DILocation(line: 0, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1025, column: 40)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1025, column: 11)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1024, column: 65)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1024, column: 5)
!2048 = !DILocation(line: 1019, column: 16, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 1019, column: 7)
!2050 = !DILocation(line: 1019, column: 7, scope: !2028)
!2051 = !DILocation(line: 0, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 1019, column: 45)
!2053 = !DILocation(line: 1013, column: 8, scope: !2028)
!2054 = !DILocation(line: 1023, column: 8, scope: !2042)
!2055 = !DILocation(line: 1023, column: 3, scope: !2042)
!2056 = !DILocation(line: 1015, column: 19, scope: !2028)
!2057 = !DILocation(line: 1024, column: 10, scope: !2039)
!2058 = !DILocation(line: 1024, column: 5, scope: !2039)
!2059 = !DILocation(line: 1025, column: 16, scope: !2045)
!2060 = !DILocation(line: 1025, column: 27, scope: !2045)
!2061 = !DILocation(line: 1025, column: 11, scope: !2046)
!2062 = !DILocation(line: 1026, column: 10, scope: !2044)
!2063 = !DILocation(line: 1027, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1027, column: 13)
!2065 = !DILocation(line: 1027, column: 13, scope: !2044)
!2066 = !DILocation(line: 1024, column: 59, scope: !2047)
!2067 = !DILocation(line: 1024, column: 5, scope: !2047)
!2068 = !DILocation(line: 1024, column: 39, scope: !2047)
!2069 = distinct !{!2069, !2058, !2070}
!2070 = !DILocation(line: 1032, column: 5, scope: !2039)
!2071 = !DILocation(line: 1023, column: 3, scope: !2041)
!2072 = !DILocation(line: 0, scope: !2028)
!2073 = !DILocation(line: 0, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 1027, column: 74)
!2075 = !DILocation(line: 1035, column: 1, scope: !2028)
!2076 = !DILocation(line: 1034, column: 3, scope: !2028)
!2077 = distinct !DISubprogram(name: "tcp_bind_netif", scope: !3, file: !3, line: 763, type: !2078, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2082)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !145, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!2082 = !{!2083, !2084}
!2083 = !DILocalVariable(name: "pcb", arg: 1, scope: !2077, file: !3, line: 763, type: !145)
!2084 = !DILocalVariable(name: "netif", arg: 2, scope: !2077, file: !3, line: 763, type: !2080)
!2085 = !DILocation(line: 763, column: 32, scope: !2077)
!2086 = !DILocation(line: 763, column: 57, scope: !2077)
!2087 = !DILocation(line: 766, column: 13, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 766, column: 7)
!2089 = !DILocation(line: 766, column: 7, scope: !2077)
!2090 = !DILocation(line: 767, column: 22, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 766, column: 22)
!2092 = !DILocation(line: 768, column: 3, scope: !2091)
!2093 = !DILocation(line: 769, column: 10, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 768, column: 10)
!2095 = !DILocation(line: 769, column: 20, scope: !2094)
!2096 = !DILocation(line: 771, column: 1, scope: !2077)
!2097 = distinct !DISubprogram(name: "tcp_listen_with_backlog", scope: !3, file: !3, line: 825, type: !2098, isLocal: false, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!145, !145, !91}
!2100 = !{!2101, !2102}
!2101 = !DILocalVariable(name: "pcb", arg: 1, scope: !2097, file: !3, line: 825, type: !145)
!2102 = !DILocalVariable(name: "backlog", arg: 2, scope: !2097, file: !3, line: 825, type: !91)
!2103 = !DILocation(line: 825, column: 41, scope: !2097)
!2104 = !DILocation(line: 825, column: 51, scope: !2097)
!2105 = !DILocation(line: 828, column: 10, scope: !2097)
!2106 = !DILocation(line: 828, column: 3, scope: !2097)
!2107 = distinct !DISubprogram(name: "tcp_listen_with_backlog_and_err", scope: !3, file: !3, line: 848, type: !2108, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2111)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!145, !145, !91, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117}
!2112 = !DILocalVariable(name: "pcb", arg: 1, scope: !2107, file: !3, line: 848, type: !145)
!2113 = !DILocalVariable(name: "backlog", arg: 2, scope: !2107, file: !3, line: 848, type: !91)
!2114 = !DILocalVariable(name: "err", arg: 3, scope: !2107, file: !3, line: 848, type: !2110)
!2115 = !DILocalVariable(name: "lpcb", scope: !2107, file: !3, line: 850, type: !98)
!2116 = !DILocalVariable(name: "res", scope: !2107, file: !3, line: 851, type: !140)
!2117 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !2118, file: !3, line: 900, type: !145)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 900, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 900, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 900, column: 5)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 899, column: 29)
!2122 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 899, column: 7)
!2123 = !DILocation(line: 848, column: 49, scope: !2107)
!2124 = !DILocation(line: 848, column: 59, scope: !2107)
!2125 = !DILocation(line: 848, column: 75, scope: !2107)
!2126 = !DILocation(line: 850, column: 26, scope: !2107)
!2127 = !DILocation(line: 857, column: 3, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 857, column: 3)
!2129 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 857, column: 3)
!2130 = !DILocation(line: 857, column: 3, scope: !2129)
!2131 = !DILocation(line: 857, column: 3, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 857, column: 3)
!2133 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 857, column: 3)
!2134 = !DILocation(line: 857, column: 3, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 857, column: 3)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 857, column: 3)
!2137 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 857, column: 3)
!2138 = !DILocation(line: 858, column: 3, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 858, column: 3)
!2140 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 858, column: 3)
!2141 = !DILocation(line: 858, column: 3, scope: !2140)
!2142 = !DILocation(line: 858, column: 3, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 858, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 858, column: 3)
!2145 = !DILocation(line: 858, column: 3, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 858, column: 3)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 858, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 858, column: 3)
!2149 = !DILocation(line: 861, column: 7, scope: !2107)
!2150 = !DILocation(line: 867, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 867, column: 7)
!2152 = !DILocation(line: 867, column: 7, scope: !2107)
!2153 = !DILocation(line: 871, column: 33, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 871, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 867, column: 42)
!2156 = !DILocation(line: 871, column: 10, scope: !2154)
!2157 = !DILocation(line: 871, column: 51, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 871, column: 5)
!2159 = !DILocation(line: 871, column: 5, scope: !2154)
!2160 = !DILocation(line: 872, column: 37, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 872, column: 11)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 871, column: 79)
!2163 = !DILocation(line: 872, column: 18, scope: !2161)
!2164 = !{!2165, !446, i64 78}
!2165 = !{!"tcp_pcb_listen", !459, i64 0, !459, i64 24, !416, i64 48, !416, i64 49, !416, i64 50, !416, i64 51, !460, i64 56, !460, i64 64, !416, i64 72, !416, i64 76, !446, i64 78, !460, i64 80}
!2166 = !DILocation(line: 872, column: 29, scope: !2161)
!2167 = !DILocation(line: 872, column: 49, scope: !2161)
!2168 = !DILocation(line: 873, column: 11, scope: !2161)
!2169 = !{!2165, !416, i64 20}
!2170 = !DILocation(line: 872, column: 11, scope: !2162)
!2171 = !DILocation(line: 0, scope: !2162)
!2172 = !DILocation(line: 871, column: 73, scope: !2158)
!2173 = !{!2165, !460, i64 56}
!2174 = !DILocation(line: 871, column: 5, scope: !2158)
!2175 = distinct !{!2175, !2159, !2176}
!2176 = !DILocation(line: 879, column: 5, scope: !2154)
!2177 = !DILocation(line: 882, column: 35, scope: !2107)
!2178 = !DILocation(line: 882, column: 10, scope: !2107)
!2179 = !DILocation(line: 883, column: 12, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 883, column: 7)
!2181 = !DILocation(line: 883, column: 7, scope: !2107)
!2182 = !DILocation(line: 887, column: 29, scope: !2107)
!2183 = !DILocation(line: 887, column: 9, scope: !2107)
!2184 = !DILocation(line: 887, column: 22, scope: !2107)
!2185 = !{!2165, !460, i64 64}
!2186 = !DILocation(line: 888, column: 27, scope: !2107)
!2187 = !DILocation(line: 888, column: 9, scope: !2107)
!2188 = !DILocation(line: 888, column: 20, scope: !2107)
!2189 = !DILocation(line: 889, column: 9, scope: !2107)
!2190 = !DILocation(line: 889, column: 15, scope: !2107)
!2191 = !{!2165, !416, i64 72}
!2192 = !DILocation(line: 890, column: 21, scope: !2107)
!2193 = !{!458, !416, i64 76}
!2194 = !DILocation(line: 890, column: 9, scope: !2107)
!2195 = !DILocation(line: 890, column: 14, scope: !2107)
!2196 = !{!2165, !416, i64 76}
!2197 = !DILocation(line: 891, column: 27, scope: !2107)
!2198 = !DILocation(line: 891, column: 9, scope: !2107)
!2199 = !DILocation(line: 891, column: 20, scope: !2107)
!2200 = !{!2165, !416, i64 49}
!2201 = !DILocation(line: 892, column: 9, scope: !2107)
!2202 = !DILocation(line: 892, column: 19, scope: !2107)
!2203 = !{!2165, !416, i64 48}
!2204 = !DILocation(line: 893, column: 20, scope: !2107)
!2205 = !{!458, !416, i64 51}
!2206 = !DILocation(line: 893, column: 9, scope: !2107)
!2207 = !DILocation(line: 893, column: 13, scope: !2107)
!2208 = !{!2165, !416, i64 51}
!2209 = !DILocation(line: 894, column: 20, scope: !2107)
!2210 = !{!458, !416, i64 50}
!2211 = !DILocation(line: 894, column: 9, scope: !2107)
!2212 = !DILocation(line: 894, column: 13, scope: !2107)
!2213 = !{!2165, !416, i64 50}
!2214 = !DILocation(line: 896, column: 3, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 896, column: 3)
!2216 = !{!2165, !416, i64 44}
!2217 = !DILocation(line: 898, column: 3, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 898, column: 3)
!2219 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 898, column: 3)
!2220 = !DILocation(line: 898, column: 3, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 898, column: 3)
!2222 = !DILocation(line: 898, column: 3, scope: !2219)
!2223 = !DILocation(line: 898, column: 3, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 898, column: 3)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 898, column: 3)
!2226 = !DILocation(line: 898, column: 3, scope: !2225)
!2227 = !DILocation(line: 898, column: 3, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 898, column: 3)
!2229 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 898, column: 3)
!2230 = !DILocation(line: 899, column: 12, scope: !2122)
!2231 = !DILocation(line: 899, column: 23, scope: !2122)
!2232 = !DILocation(line: 899, column: 7, scope: !2107)
!2233 = !DILocation(line: 900, column: 5, scope: !2119)
!2234 = !DILocation(line: 900, column: 5, scope: !2120)
!2235 = !DILocation(line: 900, column: 5, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 900, column: 5)
!2237 = !DILocation(line: 900, column: 5, scope: !2118)
!2238 = !DILocation(line: 900, column: 5, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 900, column: 5)
!2240 = !DILocation(line: 900, column: 5, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 900, column: 5)
!2242 = !DILocation(line: 900, column: 5, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 900, column: 5)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 900, column: 5)
!2245 = !DILocation(line: 900, column: 5, scope: !2244)
!2246 = !DILocation(line: 900, column: 5, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 900, column: 5)
!2248 = distinct !{!2248, !2238, !2238}
!2249 = !DILocation(line: 901, column: 3, scope: !2121)
!2250 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 906, column: 3, scope: !2107)
!2252 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !2251)
!2253 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !2251)
!2254 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !2251)
!2255 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !2251)
!2256 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !2251)
!2257 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !2251)
!2258 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !2251)
!2259 = !DILocation(line: 908, column: 9, scope: !2107)
!2260 = !DILocation(line: 908, column: 16, scope: !2107)
!2261 = !{!2165, !460, i64 80}
!2262 = !DILocation(line: 914, column: 3, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 914, column: 3)
!2264 = !DILocation(line: 851, column: 9, scope: !2107)
!2265 = !DILocation(line: 915, column: 3, scope: !2107)
!2266 = !DILocation(line: 0, scope: !2107)
!2267 = !DILocation(line: 0, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 873, column: 57)
!2269 = !DILocation(line: 917, column: 11, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 917, column: 7)
!2271 = !DILocation(line: 917, column: 7, scope: !2107)
!2272 = !DILocation(line: 918, column: 10, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 917, column: 20)
!2274 = !DILocation(line: 919, column: 3, scope: !2273)
!2275 = !DILocation(line: 920, column: 10, scope: !2107)
!2276 = !DILocation(line: 920, column: 3, scope: !2107)
!2277 = distinct !DISubprogram(name: "tcp_accept_null", scope: !3, file: !3, line: 778, type: !138, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2278)
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "arg", arg: 1, scope: !2277, file: !3, line: 778, type: !88)
!2280 = !DILocalVariable(name: "pcb", arg: 2, scope: !2277, file: !3, line: 778, type: !145)
!2281 = !DILocalVariable(name: "err", arg: 3, scope: !2277, file: !3, line: 778, type: !140)
!2282 = !DILocation(line: 778, column: 23, scope: !2277)
!2283 = !DILocation(line: 778, column: 44, scope: !2277)
!2284 = !DILocation(line: 778, column: 55, scope: !2277)
!2285 = !DILocation(line: 783, column: 3, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 783, column: 3)
!2287 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 783, column: 3)
!2288 = !DILocation(line: 783, column: 3, scope: !2287)
!2289 = !DILocation(line: 783, column: 3, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 783, column: 3)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 783, column: 3)
!2292 = !DILocation(line: 783, column: 3, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 783, column: 3)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 783, column: 3)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 783, column: 3)
!2296 = !DILocation(line: 638, column: 27, scope: !1784, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 785, column: 3, scope: !2277)
!2298 = !DILocation(line: 640, column: 3, scope: !1784, inlinedAt: !2297)
!2299 = !DILocation(line: 641, column: 1, scope: !1784, inlinedAt: !2297)
!2300 = !DILocation(line: 787, column: 3, scope: !2277)
!2301 = distinct !DISubprogram(name: "tcp_update_rcv_ann_wnd", scope: !3, file: !3, line: 930, type: !283, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2302)
!2302 = !{!2303, !2304, !2305}
!2303 = !DILocalVariable(name: "pcb", arg: 1, scope: !2301, file: !3, line: 930, type: !145)
!2304 = !DILocalVariable(name: "new_right_edge", scope: !2301, file: !3, line: 932, type: !95)
!2305 = !DILocalVariable(name: "new_rcv_ann_wnd", scope: !2306, file: !3, line: 948, type: !95)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 946, column: 12)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 942, column: 9)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 941, column: 10)
!2309 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 937, column: 7)
!2310 = !DILocation(line: 930, column: 40, scope: !2301)
!2311 = !DILocation(line: 934, column: 3, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 934, column: 3)
!2313 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 934, column: 3)
!2314 = !DILocation(line: 934, column: 3, scope: !2313)
!2315 = !DILocation(line: 934, column: 3, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 934, column: 3)
!2317 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 934, column: 3)
!2318 = !DILocation(line: 934, column: 3, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 934, column: 3)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 934, column: 3)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 934, column: 3)
!2322 = !DILocation(line: 935, column: 25, scope: !2301)
!2323 = !DILocation(line: 935, column: 40, scope: !2301)
!2324 = !DILocation(line: 935, column: 33, scope: !2301)
!2325 = !DILocation(line: 932, column: 9, scope: !2301)
!2326 = !DILocation(line: 937, column: 7, scope: !2309)
!2327 = !{!458, !415, i64 104}
!2328 = !DILocation(line: 937, column: 7, scope: !2301)
!2329 = !DILocation(line: 942, column: 9, scope: !2307)
!2330 = !DILocation(line: 942, column: 9, scope: !2308)
!2331 = !DILocation(line: 948, column: 55, scope: !2306)
!2332 = !DILocation(line: 948, column: 13, scope: !2306)
!2333 = !DILocation(line: 954, column: 5, scope: !2308)
!2334 = !DILocation(line: 0, scope: !2308)
!2335 = !DILocation(line: 0, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 937, column: 97)
!2337 = !DILocation(line: 956, column: 1, scope: !2301)
!2338 = distinct !DISubprogram(name: "tcp_recved", scope: !3, file: !3, line: 968, type: !2339, isLocal: false, isDefinition: true, scopeLine: 969, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !145, !81}
!2341 = !{!2342, !2343, !2344, !2345}
!2342 = !DILocalVariable(name: "pcb", arg: 1, scope: !2338, file: !3, line: 968, type: !145)
!2343 = !DILocalVariable(name: "len", arg: 2, scope: !2338, file: !3, line: 968, type: !81)
!2344 = !DILocalVariable(name: "wnd_inflation", scope: !2338, file: !3, line: 970, type: !95)
!2345 = !DILocalVariable(name: "rcv_wnd", scope: !2338, file: !3, line: 971, type: !167)
!2346 = !DILocation(line: 968, column: 28, scope: !2338)
!2347 = !DILocation(line: 968, column: 39, scope: !2338)
!2348 = !DILocation(line: 975, column: 3, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 975, column: 3)
!2350 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 975, column: 3)
!2351 = !DILocation(line: 975, column: 3, scope: !2350)
!2352 = !DILocation(line: 975, column: 3, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 975, column: 3)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 975, column: 3)
!2355 = !DILocation(line: 975, column: 3, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 975, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 975, column: 3)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 975, column: 3)
!2359 = !DILocation(line: 978, column: 3, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 978, column: 3)
!2361 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 978, column: 3)
!2362 = !DILocation(line: 978, column: 3, scope: !2361)
!2363 = !DILocation(line: 978, column: 3, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 978, column: 3)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 978, column: 3)
!2366 = !DILocation(line: 978, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 978, column: 3)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 978, column: 3)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 978, column: 3)
!2370 = !DILocation(line: 981, column: 34, scope: !2338)
!2371 = !DILocation(line: 981, column: 44, scope: !2338)
!2372 = !DILocation(line: 981, column: 42, scope: !2338)
!2373 = !DILocation(line: 971, column: 17, scope: !2338)
!2374 = !DILocation(line: 982, column: 18, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 982, column: 7)
!2376 = !DILocation(line: 982, column: 16, scope: !2375)
!2377 = !DILocation(line: 982, column: 36, scope: !2375)
!2378 = !DILocation(line: 982, column: 48, scope: !2375)
!2379 = !DILocation(line: 982, column: 7, scope: !2338)
!2380 = !DILocation(line: 0, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 986, column: 11)
!2382 = !DILocation(line: 930, column: 40, scope: !2301, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 990, column: 19, scope: !2338)
!2384 = !DILocation(line: 934, column: 3, scope: !2313, inlinedAt: !2383)
!2385 = !DILocation(line: 935, column: 25, scope: !2301, inlinedAt: !2383)
!2386 = !DILocation(line: 935, column: 33, scope: !2301, inlinedAt: !2383)
!2387 = !DILocation(line: 932, column: 9, scope: !2301, inlinedAt: !2383)
!2388 = !DILocation(line: 937, column: 7, scope: !2309, inlinedAt: !2383)
!2389 = !DILocation(line: 937, column: 7, scope: !2301, inlinedAt: !2383)
!2390 = !DILocation(line: 942, column: 9, scope: !2307, inlinedAt: !2383)
!2391 = !DILocation(line: 942, column: 9, scope: !2308, inlinedAt: !2383)
!2392 = !DILocation(line: 948, column: 55, scope: !2306, inlinedAt: !2383)
!2393 = !DILocation(line: 948, column: 13, scope: !2306, inlinedAt: !2383)
!2394 = !DILocation(line: 952, column: 12, scope: !2306, inlinedAt: !2383)
!2395 = !DILocation(line: 952, column: 24, scope: !2306, inlinedAt: !2383)
!2396 = !DILocation(line: 954, column: 5, scope: !2308, inlinedAt: !2383)
!2397 = !DILocation(line: 956, column: 1, scope: !2301, inlinedAt: !2383)
!2398 = !DILocation(line: 970, column: 9, scope: !2338)
!2399 = !DILocation(line: 996, column: 7, scope: !2338)
!2400 = !DILocation(line: 939, column: 10, scope: !2336, inlinedAt: !2383)
!2401 = !DILocation(line: 939, column: 22, scope: !2336, inlinedAt: !2383)
!2402 = !{!458, !415, i64 100}
!2403 = !DILocation(line: 940, column: 5, scope: !2336, inlinedAt: !2383)
!2404 = !DILocation(line: 996, column: 21, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 996, column: 7)
!2406 = !DILocation(line: 997, column: 5, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 997, column: 5)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 996, column: 50)
!2409 = !DILocation(line: 998, column: 5, scope: !2408)
!2410 = !DILocation(line: 999, column: 3, scope: !2408)
!2411 = !DILocation(line: 0, scope: !2408)
!2412 = !DILocation(line: 1003, column: 1, scope: !2338)
!2413 = distinct !DISubprogram(name: "tcp_connect", scope: !3, file: !3, line: 1067, type: !2414, isLocal: false, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!140, !145, !267, !81, !246}
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2428, !2433, !2434}
!2417 = !DILocalVariable(name: "pcb", arg: 1, scope: !2413, file: !3, line: 1067, type: !145)
!2418 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !2413, file: !3, line: 1067, type: !267)
!2419 = !DILocalVariable(name: "port", arg: 3, scope: !2413, file: !3, line: 1067, type: !81)
!2420 = !DILocalVariable(name: "connected", arg: 4, scope: !2413, file: !3, line: 1068, type: !246)
!2421 = !DILocalVariable(name: "netif", scope: !2413, file: !3, line: 1070, type: !1805)
!2422 = !DILocalVariable(name: "ret", scope: !2413, file: !3, line: 1071, type: !140)
!2423 = !DILocalVariable(name: "iss", scope: !2413, file: !3, line: 1072, type: !95)
!2424 = !DILocalVariable(name: "old_local_port", scope: !2413, file: !3, line: 1073, type: !81)
!2425 = !DILocalVariable(name: "local_ip", scope: !2426, file: !3, line: 1099, type: !267)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 1098, column: 38)
!2427 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1098, column: 7)
!2428 = !DILocalVariable(name: "cpcb", scope: !2429, file: !3, line: 1126, type: !145)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1123, column: 44)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 1123, column: 9)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1121, column: 10)
!2432 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1116, column: 7)
!2433 = !DILocalVariable(name: "i", scope: !2429, file: !3, line: 1127, type: !50)
!2434 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !2435, file: !3, line: 1174, type: !145)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1174, column: 7)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1174, column: 7)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1174, column: 7)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1173, column: 30)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1173, column: 9)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1170, column: 22)
!2441 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1170, column: 7)
!2442 = !DILocation(line: 1067, column: 29, scope: !2413)
!2443 = !DILocation(line: 1067, column: 51, scope: !2413)
!2444 = !DILocation(line: 1067, column: 65, scope: !2413)
!2445 = !DILocation(line: 1068, column: 30, scope: !2413)
!2446 = !DILocation(line: 1070, column: 17, scope: !2413)
!2447 = !DILocation(line: 1077, column: 3, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1077, column: 3)
!2449 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1077, column: 3)
!2450 = !DILocation(line: 1077, column: 3, scope: !2449)
!2451 = !DILocation(line: 1077, column: 3, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1077, column: 3)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1077, column: 3)
!2454 = !DILocation(line: 1077, column: 3, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1077, column: 3)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1077, column: 3)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1077, column: 3)
!2458 = !DILocation(line: 1078, column: 3, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1078, column: 3)
!2460 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1078, column: 3)
!2461 = !DILocation(line: 1078, column: 3, scope: !2460)
!2462 = !DILocation(line: 1078, column: 3, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1078, column: 3)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1078, column: 3)
!2465 = !DILocation(line: 1078, column: 3, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1078, column: 3)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1078, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1078, column: 3)
!2469 = !DILocation(line: 1080, column: 3, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1080, column: 3)
!2471 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1080, column: 3)
!2472 = !DILocation(line: 1080, column: 3, scope: !2471)
!2473 = !DILocation(line: 1080, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1080, column: 3)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1080, column: 3)
!2476 = !DILocation(line: 1080, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1080, column: 3)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1080, column: 3)
!2479 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1080, column: 3)
!2480 = !DILocation(line: 1083, column: 3, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1083, column: 3)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1083, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1083, column: 3)
!2484 = !DILocation(line: 1083, column: 3, scope: !2482)
!2485 = !DILocation(line: 1083, column: 3, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1083, column: 3)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1083, column: 3)
!2488 = !{!458, !416, i64 44}
!2489 = !DILocation(line: 1083, column: 3, scope: !2487)
!2490 = !DILocation(line: 1083, column: 3, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1083, column: 3)
!2492 = !DILocation(line: 1083, column: 3, scope: !2483)
!2493 = !DILocation(line: 1083, column: 3, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1083, column: 3)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1083, column: 3)
!2496 = !DILocation(line: 1083, column: 3, scope: !2495)
!2497 = !DILocation(line: 1083, column: 3, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1083, column: 3)
!2499 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1083, column: 3)
!2500 = !DILocation(line: 1084, column: 8, scope: !2413)
!2501 = !DILocation(line: 1084, column: 20, scope: !2413)
!2502 = !DILocation(line: 1086, column: 12, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1086, column: 7)
!2504 = !{!458, !416, i64 48}
!2505 = !DILocation(line: 1086, column: 22, scope: !2503)
!2506 = !DILocation(line: 1086, column: 7, scope: !2413)
!2507 = !DILocation(line: 1087, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1086, column: 41)
!2509 = !DILocation(line: 1088, column: 3, scope: !2508)
!2510 = !DILocation(line: 1090, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1088, column: 10)
!2512 = !DILocation(line: 0, scope: !2511)
!2513 = !DILocation(line: 1092, column: 13, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1092, column: 7)
!2515 = !DILocation(line: 1092, column: 7, scope: !2413)
!2516 = !DILocation(line: 0, scope: !2413)
!2517 = !DILocation(line: 1098, column: 7, scope: !2427)
!2518 = !DILocation(line: 1098, column: 7, scope: !2413)
!2519 = !DILocation(line: 1099, column: 33, scope: !2426)
!2520 = !DILocation(line: 1099, column: 22, scope: !2426)
!2521 = !DILocation(line: 1100, column: 9, scope: !2426)
!2522 = !DILocation(line: 1100, column: 18, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1100, column: 9)
!2524 = !DILocation(line: 1101, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1100, column: 27)
!2526 = !DILocation(line: 1103, column: 5, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 1103, column: 5)
!2528 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1103, column: 5)
!2529 = !DILocation(line: 1103, column: 5, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 1103, column: 5)
!2531 = !DILocation(line: 1103, column: 5, scope: !2528)
!2532 = !DILocation(line: 1103, column: 5, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 1103, column: 5)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1103, column: 5)
!2535 = !DILocation(line: 1103, column: 5, scope: !2534)
!2536 = !DILocation(line: 1103, column: 5, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 1103, column: 5)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1103, column: 5)
!2539 = !DILocation(line: 1104, column: 3, scope: !2427)
!2540 = !DILocation(line: 1109, column: 7, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1109, column: 7)
!2542 = !DILocation(line: 1109, column: 33, scope: !2541)
!2543 = !DILocation(line: 1110, column: 7, scope: !2541)
!2544 = !DILocation(line: 1109, column: 7, scope: !2413)
!2545 = !DILocation(line: 1111, column: 5, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1110, column: 68)
!2547 = !DILocation(line: 1112, column: 3, scope: !2546)
!2548 = !DILocation(line: 1115, column: 25, scope: !2413)
!2549 = !DILocation(line: 1073, column: 9, scope: !2413)
!2550 = !DILocation(line: 1116, column: 23, scope: !2432)
!2551 = !DILocation(line: 1116, column: 7, scope: !2413)
!2552 = !DILocation(line: 1117, column: 23, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1116, column: 29)
!2554 = !DILocation(line: 1117, column: 21, scope: !2553)
!2555 = !DILocation(line: 1118, column: 25, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1118, column: 9)
!2557 = !DILocation(line: 1118, column: 9, scope: !2553)
!2558 = !DILocation(line: 2249, column: 7, scope: !2559, inlinedAt: !2572)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 2249, column: 7)
!2560 = distinct !DISubprogram(name: "tcp_eff_send_mss_netif", scope: !3, file: !3, line: 2238, type: !2561, isLocal: false, isDefinition: true, scopeLine: 2239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!81, !81, !1805, !267}
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569}
!2564 = !DILocalVariable(name: "sendmss", arg: 1, scope: !2560, file: !3, line: 2238, type: !81)
!2565 = !DILocalVariable(name: "outif", arg: 2, scope: !2560, file: !3, line: 2238, type: !1805)
!2566 = !DILocalVariable(name: "dest", arg: 3, scope: !2560, file: !3, line: 2238, type: !267)
!2567 = !DILocalVariable(name: "mss_s", scope: !2560, file: !3, line: 2240, type: !81)
!2568 = !DILocalVariable(name: "mtu", scope: !2560, file: !3, line: 2241, type: !81)
!2569 = !DILocalVariable(name: "offset", scope: !2570, file: !3, line: 2269, type: !81)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 2268, column: 17)
!2571 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 2268, column: 7)
!2572 = distinct !DILocation(line: 1159, column: 14, scope: !2413)
!2573 = !DILocation(line: 1123, column: 9, scope: !2430)
!2574 = !DILocation(line: 1123, column: 9, scope: !2431)
!2575 = !DILocation(line: 1127, column: 11, scope: !2429)
!2576 = !DILocation(line: 1129, column: 12, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 1129, column: 7)
!2578 = !DILocation(line: 1129, column: 7, scope: !2577)
!2579 = !DILocation(line: 1130, column: 22, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1130, column: 9)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 1129, column: 47)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1129, column: 7)
!2583 = !DILocation(line: 1130, column: 21, scope: !2580)
!2584 = !DILocation(line: 1126, column: 23, scope: !2429)
!2585 = !DILocation(line: 1130, column: 14, scope: !2580)
!2586 = !DILocation(line: 1130, column: 45, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1130, column: 9)
!2588 = !DILocation(line: 1130, column: 9, scope: !2580)
!2589 = !DILocation(line: 1131, column: 22, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1131, column: 15)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1130, column: 73)
!2592 = !DILocation(line: 1131, column: 33, scope: !2590)
!2593 = !DILocation(line: 1131, column: 53, scope: !2590)
!2594 = !DILocation(line: 1132, column: 22, scope: !2590)
!2595 = !DILocation(line: 1132, column: 34, scope: !2590)
!2596 = !DILocation(line: 1132, column: 43, scope: !2590)
!2597 = !DILocation(line: 1133, column: 15, scope: !2590)
!2598 = !DILocation(line: 1133, column: 60, scope: !2590)
!2599 = !DILocation(line: 0, scope: !2590)
!2600 = !DILocation(line: 1134, column: 15, scope: !2590)
!2601 = !DILocation(line: 1131, column: 15, scope: !2591)
!2602 = !DILocation(line: 0, scope: !2591)
!2603 = !DILocation(line: 1130, column: 67, scope: !2587)
!2604 = !DILocation(line: 1130, column: 9, scope: !2587)
!2605 = distinct !{!2605, !2588, !2606}
!2606 = !DILocation(line: 1138, column: 9, scope: !2580)
!2607 = !DILocation(line: 1129, column: 43, scope: !2582)
!2608 = !DILocation(line: 1129, column: 7, scope: !2582)
!2609 = !DILocation(line: 1129, column: 21, scope: !2582)
!2610 = distinct !{!2610, !2578, !2611}
!2611 = !DILocation(line: 1139, column: 7, scope: !2577)
!2612 = !DILocation(line: 1140, column: 5, scope: !2430)
!2613 = !DILocation(line: 1136, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1134, column: 54)
!2615 = !DILocation(line: 2215, column: 30, scope: !282, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1144, column: 9, scope: !2413)
!2617 = !DILocation(line: 2223, column: 3, scope: !2618, inlinedAt: !2616)
!2618 = distinct !DILexicalBlock(scope: !282, file: !3, line: 2223, column: 3)
!2619 = !DILocation(line: 2226, column: 10, scope: !282, inlinedAt: !2616)
!2620 = !DILocation(line: 2226, column: 7, scope: !282, inlinedAt: !2616)
!2621 = !DILocation(line: 2227, column: 3, scope: !282, inlinedAt: !2616)
!2622 = !DILocation(line: 1072, column: 9, scope: !2413)
!2623 = !DILocation(line: 1145, column: 8, scope: !2413)
!2624 = !DILocation(line: 1146, column: 8, scope: !2413)
!2625 = !DILocation(line: 1146, column: 16, scope: !2413)
!2626 = !DILocation(line: 1147, column: 22, scope: !2413)
!2627 = !DILocation(line: 1147, column: 8, scope: !2413)
!2628 = !DILocation(line: 1147, column: 16, scope: !2413)
!2629 = !{!458, !415, i64 128}
!2630 = !DILocation(line: 1148, column: 8, scope: !2413)
!2631 = !DILocation(line: 1148, column: 16, scope: !2413)
!2632 = !{!458, !415, i64 152}
!2633 = !DILocation(line: 1149, column: 8, scope: !2413)
!2634 = !DILocation(line: 1149, column: 16, scope: !2413)
!2635 = !{!458, !415, i64 156}
!2636 = !DILocation(line: 1145, column: 16, scope: !2413)
!2637 = !DILocation(line: 1154, column: 8, scope: !2413)
!2638 = !DILocation(line: 1154, column: 16, scope: !2413)
!2639 = !DILocation(line: 1157, column: 8, scope: !2413)
!2640 = !DILocation(line: 1157, column: 12, scope: !2413)
!2641 = !DILocation(line: 2238, column: 30, scope: !2560, inlinedAt: !2572)
!2642 = !DILocation(line: 2238, column: 53, scope: !2560, inlinedAt: !2572)
!2643 = !DILocation(line: 2238, column: 77, scope: !2560, inlinedAt: !2572)
!2644 = !DILocation(line: 2245, column: 3, scope: !2645, inlinedAt: !2572)
!2645 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 2245, column: 3)
!2646 = !DILocation(line: 2249, column: 7, scope: !2560, inlinedAt: !2572)
!2647 = !DILocation(line: 2253, column: 35, scope: !2648, inlinedAt: !2572)
!2648 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 2251, column: 3)
!2649 = !DILocation(line: 2253, column: 11, scope: !2648, inlinedAt: !2572)
!2650 = !DILocation(line: 2241, column: 9, scope: !2560, inlinedAt: !2572)
!2651 = !DILocation(line: 2254, column: 3, scope: !2648, inlinedAt: !2572)
!2652 = !DILocation(line: 2261, column: 9, scope: !2653, inlinedAt: !2572)
!2653 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 2260, column: 3)
!2654 = !DILocation(line: 2264, column: 18, scope: !2653, inlinedAt: !2572)
!2655 = !{!1930, !446, i64 250}
!2656 = !DILocation(line: 0, scope: !2653, inlinedAt: !2572)
!2657 = !DILocation(line: 2268, column: 7, scope: !2571, inlinedAt: !2572)
!2658 = !DILocation(line: 2268, column: 11, scope: !2571, inlinedAt: !2572)
!2659 = !DILocation(line: 2268, column: 7, scope: !2560, inlinedAt: !2572)
!2660 = !DILocation(line: 2272, column: 9, scope: !2661, inlinedAt: !2572)
!2661 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 2272, column: 9)
!2662 = !DILocation(line: 2272, column: 9, scope: !2570, inlinedAt: !2572)
!2663 = !DILocation(line: 2276, column: 5, scope: !2664, inlinedAt: !2572)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 2274, column: 5)
!2665 = !DILocation(line: 2286, column: 18, scope: !2570, inlinedAt: !2572)
!2666 = !DILocation(line: 2286, column: 13, scope: !2570, inlinedAt: !2572)
!2667 = !DILocation(line: 2286, column: 42, scope: !2570, inlinedAt: !2572)
!2668 = !DILocation(line: 2291, column: 15, scope: !2570, inlinedAt: !2572)
!2669 = !DILocation(line: 2292, column: 3, scope: !2570, inlinedAt: !2572)
!2670 = !DILocation(line: 2293, column: 3, scope: !2560, inlinedAt: !2572)
!2671 = !DILocation(line: 2294, column: 1, scope: !2560, inlinedAt: !2572)
!2672 = !DILocation(line: 1159, column: 12, scope: !2413)
!2673 = !DILocation(line: 1161, column: 8, scope: !2413)
!2674 = !DILocation(line: 1161, column: 13, scope: !2413)
!2675 = !DILocation(line: 1163, column: 8, scope: !2413)
!2676 = !DILocation(line: 1163, column: 18, scope: !2413)
!2677 = !{!458, !460, i64 240}
!2678 = !DILocation(line: 1169, column: 9, scope: !2413)
!2679 = !DILocation(line: 1071, column: 9, scope: !2413)
!2680 = !DILocation(line: 1170, column: 11, scope: !2441)
!2681 = !DILocation(line: 1170, column: 7, scope: !2413)
!2682 = !DILocation(line: 1172, column: 16, scope: !2440)
!2683 = !DILocation(line: 1173, column: 9, scope: !2440)
!2684 = !DILocation(line: 1176, column: 5, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 1176, column: 5)
!2686 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1176, column: 5)
!2687 = !DILocation(line: 1174, column: 7, scope: !2436)
!2688 = !DILocation(line: 1174, column: 7, scope: !2437)
!2689 = !DILocation(line: 1174, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1174, column: 7)
!2691 = !DILocation(line: 1174, column: 7, scope: !2435)
!2692 = !DILocation(line: 1174, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1174, column: 7)
!2694 = !DILocation(line: 1174, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1174, column: 7)
!2696 = !DILocation(line: 1174, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1174, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1174, column: 7)
!2699 = !DILocation(line: 1174, column: 7, scope: !2698)
!2700 = !DILocation(line: 1174, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1174, column: 7)
!2702 = distinct !{!2702, !2692, !2692}
!2703 = !DILocation(line: 1175, column: 5, scope: !2438)
!2704 = !DILocation(line: 1176, column: 5, scope: !2686)
!2705 = !DILocation(line: 1179, column: 5, scope: !2440)
!2706 = !DILocation(line: 1180, column: 3, scope: !2440)
!2707 = !DILocation(line: 1182, column: 1, scope: !2413)
!2708 = !DILocation(line: 0, scope: !2525)
!2709 = !DILocation(line: 2215, column: 30, scope: !282)
!2710 = !DILocation(line: 2223, column: 3, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 2223, column: 3)
!2712 = !DILocation(line: 2223, column: 3, scope: !2618)
!2713 = !DILocation(line: 2223, column: 3, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 2223, column: 3)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 2223, column: 3)
!2716 = !DILocation(line: 2223, column: 3, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 2223, column: 3)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 2223, column: 3)
!2719 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 2223, column: 3)
!2720 = !DILocation(line: 2226, column: 10, scope: !282)
!2721 = !DILocation(line: 2226, column: 7, scope: !282)
!2722 = !DILocation(line: 2227, column: 3, scope: !282)
!2723 = !DILocation(line: 2238, column: 30, scope: !2560)
!2724 = !DILocation(line: 2238, column: 53, scope: !2560)
!2725 = !DILocation(line: 2238, column: 77, scope: !2560)
!2726 = !DILocation(line: 2245, column: 3, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 2245, column: 3)
!2728 = !DILocation(line: 2245, column: 3, scope: !2645)
!2729 = !DILocation(line: 2245, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 2245, column: 3)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 2245, column: 3)
!2732 = !DILocation(line: 2245, column: 3, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 2245, column: 3)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 2245, column: 3)
!2735 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 2245, column: 3)
!2736 = !DILocation(line: 2249, column: 7, scope: !2559)
!2737 = !DILocation(line: 2249, column: 7, scope: !2560)
!2738 = !DILocation(line: 2253, column: 35, scope: !2648)
!2739 = !DILocation(line: 2253, column: 11, scope: !2648)
!2740 = !DILocation(line: 2241, column: 9, scope: !2560)
!2741 = !DILocation(line: 2254, column: 3, scope: !2648)
!2742 = !DILocation(line: 2261, column: 15, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 2261, column: 9)
!2744 = !DILocation(line: 2261, column: 9, scope: !2653)
!2745 = !DILocation(line: 2264, column: 18, scope: !2653)
!2746 = !DILocation(line: 0, scope: !2653)
!2747 = !DILocation(line: 2268, column: 7, scope: !2571)
!2748 = !DILocation(line: 2268, column: 11, scope: !2571)
!2749 = !DILocation(line: 2268, column: 7, scope: !2560)
!2750 = !DILocation(line: 2272, column: 9, scope: !2661)
!2751 = !DILocation(line: 2272, column: 9, scope: !2570)
!2752 = !DILocation(line: 2276, column: 5, scope: !2664)
!2753 = !DILocation(line: 2286, column: 18, scope: !2570)
!2754 = !DILocation(line: 2286, column: 13, scope: !2570)
!2755 = !DILocation(line: 2286, column: 42, scope: !2570)
!2756 = !DILocation(line: 2291, column: 15, scope: !2570)
!2757 = !DILocation(line: 2292, column: 3, scope: !2570)
!2758 = !DILocation(line: 0, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 2261, column: 24)
!2760 = !DILocation(line: 2294, column: 1, scope: !2560)
!2761 = !DILocation(line: 2386, column: 32, scope: !894)
!2762 = !DILocation(line: 2388, column: 12, scope: !910)
!2763 = !DILocation(line: 2388, column: 7, scope: !910)
!2764 = !DILocation(line: 2388, column: 7, scope: !894)
!2765 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 2389, column: 5, scope: !909)
!2767 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !2766)
!2768 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !2766)
!2769 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !2766)
!2770 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !2766)
!2772 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !2771)
!2773 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !2771)
!2774 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !2771)
!2775 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !2771)
!2776 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !2771)
!2777 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !2771)
!2778 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !2771)
!2779 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !2771)
!2780 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !2771)
!2781 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !2771)
!2782 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !2766)
!2783 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !2766)
!2784 = !DILocation(line: 2390, column: 16, scope: !909)
!2785 = !DILocation(line: 2394, column: 3, scope: !909)
!2786 = !DILocation(line: 2395, column: 1, scope: !894)
!2787 = distinct !DISubprogram(name: "tcp_pcb_purge", scope: !3, file: !3, line: 2127, type: !449, isLocal: false, isDefinition: true, scopeLine: 2128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2788)
!2788 = !{!2789}
!2789 = !DILocalVariable(name: "pcb", arg: 1, scope: !2787, file: !3, line: 2127, type: !145)
!2790 = !DILocation(line: 2127, column: 31, scope: !2787)
!2791 = !DILocation(line: 2129, column: 3, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 2129, column: 3)
!2793 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 2129, column: 3)
!2794 = !DILocation(line: 2129, column: 3, scope: !2793)
!2795 = !DILocation(line: 2129, column: 3, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 2129, column: 3)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 2129, column: 3)
!2798 = !DILocation(line: 2129, column: 3, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 2129, column: 3)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 2129, column: 3)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 2129, column: 3)
!2802 = !DILocation(line: 2131, column: 12, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 2131, column: 7)
!2804 = !DILocation(line: 2131, column: 18, scope: !2803)
!2805 = !DILocation(line: 2131, column: 28, scope: !2803)
!2806 = !DILocation(line: 2132, column: 18, scope: !2803)
!2807 = !DILocation(line: 2132, column: 31, scope: !2803)
!2808 = !DILocation(line: 2133, column: 18, scope: !2803)
!2809 = !DILocation(line: 2131, column: 7, scope: !2787)
!2810 = !DILocation(line: 2139, column: 14, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 2139, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 2133, column: 29)
!2813 = !DILocation(line: 2139, column: 27, scope: !2811)
!2814 = !DILocation(line: 2139, column: 9, scope: !2812)
!2815 = !DILocation(line: 2141, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 2139, column: 36)
!2817 = !DILocation(line: 2142, column: 25, scope: !2816)
!2818 = !DILocation(line: 2143, column: 5, scope: !2816)
!2819 = !DILocation(line: 2144, column: 14, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 2144, column: 9)
!2821 = !DILocation(line: 2147, column: 14, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 2147, column: 9)
!2823 = !DILocation(line: 2151, column: 14, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 2151, column: 9)
!2825 = !DILocation(line: 2151, column: 20, scope: !2824)
!2826 = !DILocation(line: 2151, column: 9, scope: !2812)
!2827 = !DILocation(line: 2386, column: 32, scope: !894, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 2153, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 2151, column: 29)
!2830 = !DILocation(line: 2388, column: 7, scope: !894, inlinedAt: !2828)
!2831 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 2389, column: 5, scope: !909, inlinedAt: !2828)
!2833 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !2832)
!2834 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !2832)
!2835 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !2832)
!2836 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !2832)
!2838 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !2837)
!2839 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !2837)
!2840 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !2837)
!2841 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !2837)
!2842 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !2837)
!2843 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !2837)
!2844 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !2837)
!2845 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !2837)
!2846 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !2837)
!2847 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !2837)
!2848 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !2832)
!2849 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !2832)
!2850 = !DILocation(line: 2390, column: 16, scope: !909, inlinedAt: !2828)
!2851 = !DILocation(line: 2394, column: 3, scope: !909, inlinedAt: !2828)
!2852 = !DILocation(line: 2395, column: 1, scope: !894, inlinedAt: !2828)
!2853 = !DILocation(line: 2154, column: 5, scope: !2829)
!2854 = !DILocation(line: 2159, column: 10, scope: !2812)
!2855 = !DILocation(line: 2159, column: 16, scope: !2812)
!2856 = !DILocation(line: 2161, column: 24, scope: !2812)
!2857 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 2161, column: 5, scope: !2812)
!2859 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !2858)
!2860 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !2858)
!2861 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !2858)
!2862 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !2858)
!2863 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !2858)
!2865 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !2864)
!2866 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !2864)
!2867 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !2864)
!2868 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !2864)
!2869 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !2864)
!2870 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !2864)
!2871 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !2864)
!2872 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !2864)
!2873 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !2864)
!2874 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !2864)
!2875 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !2858)
!2876 = !DILocation(line: 2162, column: 24, scope: !2812)
!2877 = !DILocation(line: 1608, column: 31, scope: !901, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 2162, column: 5, scope: !2812)
!2879 = !DILocation(line: 1610, column: 3, scope: !901, inlinedAt: !2878)
!2880 = !DILocation(line: 1610, column: 14, scope: !901, inlinedAt: !2878)
!2881 = !DILocation(line: 1611, column: 33, scope: !906, inlinedAt: !2878)
!2882 = !DILocation(line: 1611, column: 21, scope: !906, inlinedAt: !2878)
!2883 = !DILocation(line: 1623, column: 30, scope: !917, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 1612, column: 5, scope: !906, inlinedAt: !2878)
!2885 = !DILocation(line: 1625, column: 7, scope: !917, inlinedAt: !2884)
!2886 = !DILocation(line: 1626, column: 14, scope: !923, inlinedAt: !2884)
!2887 = !DILocation(line: 1626, column: 16, scope: !923, inlinedAt: !2884)
!2888 = !DILocation(line: 1626, column: 9, scope: !924, inlinedAt: !2884)
!2889 = !DILocation(line: 1627, column: 7, scope: !930, inlinedAt: !2884)
!2890 = !DILocation(line: 1631, column: 5, scope: !930, inlinedAt: !2884)
!2891 = !DILocation(line: 1632, column: 29, scope: !924, inlinedAt: !2884)
!2892 = !DILocation(line: 1632, column: 5, scope: !924, inlinedAt: !2884)
!2893 = !DILocation(line: 1633, column: 3, scope: !924, inlinedAt: !2884)
!2894 = !DILocation(line: 1634, column: 1, scope: !917, inlinedAt: !2884)
!2895 = !DILocation(line: 1615, column: 1, scope: !901, inlinedAt: !2878)
!2896 = !DILocation(line: 2163, column: 32, scope: !2812)
!2897 = !DILocation(line: 2165, column: 10, scope: !2812)
!2898 = !DILocation(line: 2165, column: 26, scope: !2812)
!2899 = !{!458, !446, i64 174}
!2900 = !DILocation(line: 2167, column: 3, scope: !2812)
!2901 = !DILocation(line: 2168, column: 1, scope: !2787)
!2902 = distinct !DISubprogram(name: "tcp_close_shutdown_fin", scope: !3, file: !3, line: 409, type: !1157, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2903)
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "pcb", arg: 1, scope: !2902, file: !3, line: 409, type: !145)
!2905 = !DILocalVariable(name: "err", scope: !2902, file: !3, line: 411, type: !140)
!2906 = !DILocation(line: 409, column: 40, scope: !2902)
!2907 = !DILocation(line: 412, column: 3, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 412, column: 3)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 412, column: 3)
!2910 = !DILocation(line: 412, column: 3, scope: !2909)
!2911 = !DILocation(line: 412, column: 3, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 412, column: 3)
!2913 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 412, column: 3)
!2914 = !DILocation(line: 412, column: 3, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 412, column: 3)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 412, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 412, column: 3)
!2918 = !DILocation(line: 414, column: 16, scope: !2902)
!2919 = !DILocation(line: 414, column: 3, scope: !2902)
!2920 = !DILocation(line: 416, column: 13, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 414, column: 23)
!2922 = !DILocation(line: 411, column: 9, scope: !2902)
!2923 = !DILocation(line: 417, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 417, column: 11)
!2925 = !DILocation(line: 417, column: 11, scope: !2921)
!2926 = !DILocation(line: 424, column: 13, scope: !2921)
!2927 = !DILocation(line: 425, column: 15, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 425, column: 11)
!2929 = !DILocation(line: 425, column: 11, scope: !2921)
!2930 = !DILocation(line: 431, column: 13, scope: !2921)
!2931 = !DILocation(line: 432, column: 15, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 432, column: 11)
!2933 = !DILocation(line: 432, column: 11, scope: !2921)
!2934 = !DILocation(line: 0, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 417, column: 26)
!2936 = !DILocation(line: 442, column: 7, scope: !2902)
!2937 = !DILocation(line: 448, column: 5, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 442, column: 22)
!2939 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 442, column: 7)
!2940 = !DILocation(line: 449, column: 3, scope: !2938)
!2941 = !DILocation(line: 0, scope: !2921)
!2942 = !DILocation(line: 449, column: 18, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 449, column: 14)
!2944 = !DILocation(line: 449, column: 14, scope: !2939)
!2945 = !DILocation(line: 451, column: 5, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 451, column: 5)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 449, column: 30)
!2948 = !DILocation(line: 457, column: 5, scope: !2947)
!2949 = !DILocation(line: 0, scope: !2947)
!2950 = !DILocation(line: 460, column: 1, scope: !2902)
!2951 = distinct !DISubprogram(name: "tcp_process_refused_data", scope: !3, file: !3, line: 1539, type: !1157, isLocal: false, isDefinition: true, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2952)
!2952 = !{!2953, !2954, !2955, !2957, !2958}
!2953 = !DILocalVariable(name: "pcb", arg: 1, scope: !2951, file: !3, line: 1539, type: !145)
!2954 = !DILocalVariable(name: "rest", scope: !2951, file: !3, line: 1542, type: !204)
!2955 = !DILocalVariable(name: "err", scope: !2956, file: !3, line: 1551, type: !140)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1550, column: 3)
!2957 = !DILocalVariable(name: "refused_flags", scope: !2956, file: !3, line: 1552, type: !91)
!2958 = !DILocalVariable(name: "refused_data", scope: !2956, file: !3, line: 1555, type: !204)
!2959 = !DILocation(line: 1539, column: 42, scope: !2951)
!2960 = !DILocation(line: 1542, column: 3, scope: !2951)
!2961 = !DILocation(line: 1545, column: 3, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1545, column: 3)
!2963 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1545, column: 3)
!2964 = !DILocation(line: 1545, column: 3, scope: !2963)
!2965 = !DILocation(line: 1548, column: 15, scope: !2951)
!2966 = !DILocation(line: 1548, column: 28, scope: !2951)
!2967 = !DILocation(line: 1548, column: 3, scope: !2951)
!2968 = !DILocation(line: 1545, column: 3, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 1545, column: 3)
!2970 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 1545, column: 3)
!2971 = !DILocation(line: 1545, column: 3, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 1545, column: 3)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 1545, column: 3)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 1545, column: 3)
!2975 = !DILocation(line: 1552, column: 45, scope: !2956)
!2976 = !{!2977, !416, i64 21}
!2977 = !{!"pbuf", !460, i64 0, !460, i64 8, !446, i64 16, !446, i64 18, !416, i64 20, !416, i64 21, !416, i64 22, !416, i64 23}
!2978 = !DILocation(line: 1552, column: 10, scope: !2956)
!2979 = !DILocation(line: 1555, column: 18, scope: !2956)
!2980 = !DILocation(line: 1542, column: 16, scope: !2951)
!2981 = !DILocation(line: 1557, column: 5, scope: !2956)
!2982 = !DILocation(line: 1558, column: 25, scope: !2956)
!2983 = !DILocation(line: 1558, column: 23, scope: !2956)
!2984 = !DILocation(line: 1564, column: 5, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1564, column: 5)
!2986 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1564, column: 5)
!2987 = !{!458, !460, i64 232}
!2988 = !DILocation(line: 1564, column: 5, scope: !2986)
!2989 = !DILocalVariable(name: "arg", arg: 1, scope: !2990, file: !3, line: 1684, type: !88)
!2990 = distinct !DISubprogram(name: "tcp_recv_null", scope: !3, file: !3, line: 1684, type: !243, isLocal: false, isDefinition: true, scopeLine: 1685, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2991)
!2991 = !{!2989, !2992, !2993, !2994}
!2992 = !DILocalVariable(name: "pcb", arg: 2, scope: !2990, file: !3, line: 1684, type: !145)
!2993 = !DILocalVariable(name: "p", arg: 3, scope: !2990, file: !3, line: 1684, type: !204)
!2994 = !DILocalVariable(name: "err", arg: 4, scope: !2990, file: !3, line: 1684, type: !140)
!2995 = !DILocation(line: 1684, column: 21, scope: !2990, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1564, column: 5, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 1564, column: 5)
!2998 = !DILocation(line: 1684, column: 42, scope: !2990, inlinedAt: !2996)
!2999 = !DILocation(line: 1684, column: 60, scope: !2990, inlinedAt: !2996)
!3000 = !DILocation(line: 1684, column: 69, scope: !2990, inlinedAt: !2996)
!3001 = !DILocation(line: 1688, column: 3, scope: !3002, inlinedAt: !2996)
!3002 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1688, column: 3)
!3003 = !DILocation(line: 1690, column: 7, scope: !2990, inlinedAt: !2996)
!3004 = !DILocation(line: 1691, column: 24, scope: !3005, inlinedAt: !2996)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1690, column: 18)
!3006 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1690, column: 7)
!3007 = !{!2977, !446, i64 16}
!3008 = !DILocation(line: 1691, column: 5, scope: !3005, inlinedAt: !2996)
!3009 = !DILocation(line: 1692, column: 5, scope: !3005, inlinedAt: !2996)
!3010 = !DILocation(line: 1693, column: 3, scope: !3005, inlinedAt: !2996)
!3011 = !DILocation(line: 1696, column: 3, scope: !2990, inlinedAt: !2996)
!3012 = !DILocation(line: 1697, column: 1, scope: !2990, inlinedAt: !2996)
!3013 = !DILocation(line: 1551, column: 11, scope: !2956)
!3014 = !DILocation(line: 1565, column: 9, scope: !2956)
!3015 = !DILocation(line: 1564, column: 5, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 1564, column: 5)
!3017 = !DILocation(line: 1565, column: 13, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1565, column: 9)
!3019 = !DILocation(line: 1567, column: 26, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1567, column: 11)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1565, column: 24)
!3022 = !DILocation(line: 1569, column: 15, scope: !3020)
!3023 = !DILocation(line: 1569, column: 20, scope: !3020)
!3024 = !DILocation(line: 1569, column: 11, scope: !3020)
!3025 = !DILocation(line: 1574, column: 18, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1574, column: 13)
!3027 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 1571, column: 12)
!3028 = !DILocation(line: 1574, column: 29, scope: !3026)
!3029 = !DILocation(line: 1574, column: 26, scope: !3026)
!3030 = !DILocation(line: 1574, column: 13, scope: !3027)
!3031 = !DILocation(line: 1575, column: 23, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1574, column: 47)
!3033 = !DILocation(line: 1576, column: 9, scope: !3032)
!3034 = !DILocation(line: 1577, column: 9, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1577, column: 9)
!3036 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1577, column: 9)
!3037 = !DILocation(line: 1577, column: 9, scope: !3036)
!3038 = !DILocation(line: 1578, column: 13, scope: !3027)
!3039 = !DILocation(line: 1577, column: 9, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1577, column: 9)
!3041 = !DILocation(line: 1578, column: 17, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1578, column: 13)
!3043 = !DILocation(line: 1582, column: 20, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1582, column: 16)
!3045 = !DILocation(line: 1582, column: 16, scope: !3018)
!3046 = !DILocation(line: 1591, column: 11, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1591, column: 11)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1588, column: 12)
!3049 = !DILocation(line: 1591, column: 16, scope: !3047)
!3050 = !DILocation(line: 1591, column: 11, scope: !3048)
!3051 = !DILocation(line: 1592, column: 9, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1591, column: 25)
!3053 = !DILocation(line: 1593, column: 7, scope: !3052)
!3054 = !DILocation(line: 1595, column: 25, scope: !3048)
!3055 = !DILocation(line: 1596, column: 7, scope: !3048)
!3056 = !DILocation(line: 0, scope: !3048)
!3057 = !DILocation(line: 1598, column: 3, scope: !2951)
!3058 = !DILocation(line: 0, scope: !2951)
!3059 = !DILocation(line: 1600, column: 1, scope: !2951)
!3060 = distinct !DISubprogram(name: "tcp_txnow", scope: !3, file: !3, line: 1526, type: !360, isLocal: false, isDefinition: true, scopeLine: 1527, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3061)
!3061 = !{!3062}
!3062 = !DILocalVariable(name: "pcb", scope: !3060, file: !3, line: 1528, type: !145)
!3063 = !DILocation(line: 1530, column: 14, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1530, column: 3)
!3065 = !DILocation(line: 1528, column: 19, scope: !3060)
!3066 = !DILocation(line: 1530, column: 8, scope: !3064)
!3067 = !DILocation(line: 1530, column: 35, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1530, column: 3)
!3069 = !DILocation(line: 1530, column: 3, scope: !3064)
!3070 = !DILocation(line: 1531, column: 14, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1531, column: 9)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1530, column: 61)
!3073 = !DILocation(line: 1531, column: 20, scope: !3071)
!3074 = !DILocation(line: 1531, column: 9, scope: !3072)
!3075 = !DILocation(line: 1532, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1531, column: 38)
!3077 = !DILocation(line: 1533, column: 5, scope: !3076)
!3078 = !DILocation(line: 1530, column: 55, scope: !3068)
!3079 = !DILocation(line: 1530, column: 3, scope: !3068)
!3080 = distinct !{!3080, !3069, !3081}
!3081 = !DILocation(line: 1534, column: 3, scope: !3064)
!3082 = !DILocation(line: 1535, column: 1, scope: !3060)
!3083 = !DILocation(line: 1684, column: 21, scope: !2990)
!3084 = !DILocation(line: 1684, column: 42, scope: !2990)
!3085 = !DILocation(line: 1684, column: 60, scope: !2990)
!3086 = !DILocation(line: 1684, column: 69, scope: !2990)
!3087 = !DILocation(line: 1688, column: 3, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 1688, column: 3)
!3089 = !DILocation(line: 1688, column: 3, scope: !3002)
!3090 = !DILocation(line: 1688, column: 3, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 1688, column: 3)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1688, column: 3)
!3093 = !DILocation(line: 1688, column: 3, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1688, column: 3)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1688, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1688, column: 3)
!3097 = !DILocation(line: 1690, column: 9, scope: !3006)
!3098 = !DILocation(line: 1690, column: 7, scope: !2990)
!3099 = !DILocation(line: 1691, column: 24, scope: !3005)
!3100 = !DILocation(line: 1691, column: 5, scope: !3005)
!3101 = !DILocation(line: 1692, column: 5, scope: !3005)
!3102 = !DILocation(line: 1693, column: 3, scope: !3005)
!3103 = !DILocation(line: 1693, column: 18, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1693, column: 14)
!3105 = !DILocation(line: 1693, column: 14, scope: !3006)
!3106 = !DILocation(line: 484, column: 27, scope: !1156, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 1694, column: 12, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1693, column: 29)
!3109 = !DILocation(line: 488, column: 3, scope: !1164, inlinedAt: !3107)
!3110 = !DILocation(line: 493, column: 12, scope: !1174, inlinedAt: !3107)
!3111 = !DILocation(line: 493, column: 18, scope: !1174, inlinedAt: !3107)
!3112 = !DILocation(line: 493, column: 7, scope: !1156, inlinedAt: !3107)
!3113 = !DILocation(line: 495, column: 5, scope: !1178, inlinedAt: !3107)
!3114 = !DILocation(line: 496, column: 3, scope: !1179, inlinedAt: !3107)
!3115 = !DILocation(line: 498, column: 10, scope: !1156, inlinedAt: !3107)
!3116 = !DILocation(line: 1694, column: 5, scope: !3108)
!3117 = !DILocation(line: 0, scope: !3108)
!3118 = !DILocation(line: 1697, column: 1, scope: !2990)
!3119 = !DILocation(line: 1623, column: 30, scope: !917)
!3120 = !DILocation(line: 1625, column: 11, scope: !925)
!3121 = !DILocation(line: 1625, column: 7, scope: !917)
!3122 = !DILocation(line: 1626, column: 14, scope: !923)
!3123 = !DILocation(line: 1626, column: 16, scope: !923)
!3124 = !DILocation(line: 1626, column: 9, scope: !924)
!3125 = !DILocation(line: 1627, column: 7, scope: !930)
!3126 = !DILocation(line: 1631, column: 5, scope: !930)
!3127 = !DILocation(line: 1632, column: 29, scope: !924)
!3128 = !DILocation(line: 1632, column: 5, scope: !924)
!3129 = !DILocation(line: 1633, column: 3, scope: !924)
!3130 = !DILocation(line: 1634, column: 1, scope: !917)
!3131 = distinct !DISubprogram(name: "tcp_setprio", scope: !3, file: !3, line: 1644, type: !3132, isLocal: false, isDefinition: true, scopeLine: 1645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !145, !91}
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "pcb", arg: 1, scope: !3131, file: !3, line: 1644, type: !145)
!3136 = !DILocalVariable(name: "prio", arg: 2, scope: !3131, file: !3, line: 1644, type: !91)
!3137 = !DILocation(line: 1644, column: 29, scope: !3131)
!3138 = !DILocation(line: 1644, column: 39, scope: !3131)
!3139 = !DILocation(line: 1648, column: 3, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 1648, column: 3)
!3141 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1648, column: 3)
!3142 = !DILocation(line: 1648, column: 3, scope: !3141)
!3143 = !DILocation(line: 1648, column: 3, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1648, column: 3)
!3145 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1648, column: 3)
!3146 = !DILocation(line: 1648, column: 3, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1648, column: 3)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1648, column: 3)
!3149 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1648, column: 3)
!3150 = !DILocation(line: 1650, column: 8, scope: !3131)
!3151 = !DILocation(line: 1650, column: 13, scope: !3131)
!3152 = !DILocation(line: 1651, column: 1, scope: !3131)
!3153 = distinct !DISubprogram(name: "tcp_seg_copy", scope: !3, file: !3, line: 1662, type: !3154, isLocal: false, isDefinition: true, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!198, !198}
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "seg", arg: 1, scope: !3153, file: !3, line: 1662, type: !198)
!3158 = !DILocalVariable(name: "cseg", scope: !3153, file: !3, line: 1664, type: !198)
!3159 = !DILocation(line: 1662, column: 30, scope: !3153)
!3160 = !DILocation(line: 1666, column: 3, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1666, column: 3)
!3162 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 1666, column: 3)
!3163 = !DILocation(line: 1666, column: 3, scope: !3162)
!3164 = !DILocation(line: 1666, column: 3, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 1666, column: 3)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1666, column: 3)
!3167 = !DILocation(line: 1666, column: 3, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1666, column: 3)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 1666, column: 3)
!3170 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 1666, column: 3)
!3171 = !DILocation(line: 1668, column: 28, scope: !3153)
!3172 = !DILocation(line: 1669, column: 12, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 1669, column: 7)
!3174 = !DILocation(line: 1669, column: 7, scope: !3153)
!3175 = !DILocation(line: 1668, column: 10, scope: !3153)
!3176 = !DILocation(line: 1664, column: 19, scope: !3153)
!3177 = !DILocation(line: 1672, column: 3, scope: !3153)
!3178 = !DILocation(line: 1673, column: 18, scope: !3153)
!3179 = !DILocation(line: 1673, column: 3, scope: !3153)
!3180 = !DILocation(line: 1674, column: 3, scope: !3153)
!3181 = !DILocation(line: 0, scope: !3153)
!3182 = !DILocation(line: 0, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 1669, column: 21)
!3184 = !DILocation(line: 1675, column: 1, scope: !3153)
!3185 = distinct !DISubprogram(name: "tcp_alloc", scope: !3, file: !3, line: 1834, type: !3186, isLocal: false, isDefinition: true, scopeLine: 1835, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!145, !91}
!3188 = !{!3189, !3190}
!3189 = !DILocalVariable(name: "prio", arg: 1, scope: !3185, file: !3, line: 1834, type: !91)
!3190 = !DILocalVariable(name: "pcb", scope: !3185, file: !3, line: 1836, type: !145)
!3191 = !DILocation(line: 1834, column: 16, scope: !3185)
!3192 = !DILocation(line: 1840, column: 27, scope: !3185)
!3193 = !DILocation(line: 1836, column: 19, scope: !3185)
!3194 = !DILocation(line: 1841, column: 11, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1841, column: 7)
!3196 = !DILocation(line: 1841, column: 7, scope: !3185)
!3197 = !DILocation(line: 1813, column: 25, scope: !3198, inlinedAt: !3203)
!3198 = distinct !DISubprogram(name: "tcp_handle_closepend", scope: !3, file: !3, line: 1811, type: !360, isLocal: true, isDefinition: true, scopeLine: 1812, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3199)
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "pcb", scope: !3198, file: !3, line: 1813, type: !145)
!3201 = !DILocalVariable(name: "next", scope: !3202, file: !3, line: 1816, type: !145)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1815, column: 23)
!3203 = distinct !DILocation(line: 1843, column: 5, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1841, column: 20)
!3205 = !DILocation(line: 1813, column: 19, scope: !3198, inlinedAt: !3203)
!3206 = !DILocation(line: 1815, column: 3, scope: !3198, inlinedAt: !3203)
!3207 = !DILocation(line: 1815, column: 14, scope: !3198, inlinedAt: !3203)
!3208 = !DILocation(line: 1816, column: 33, scope: !3202, inlinedAt: !3203)
!3209 = !DILocation(line: 1816, column: 21, scope: !3202, inlinedAt: !3203)
!3210 = !DILocation(line: 1818, column: 14, scope: !3211, inlinedAt: !3203)
!3211 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1818, column: 9)
!3212 = !DILocation(line: 1818, column: 20, scope: !3211, inlinedAt: !3203)
!3213 = !DILocation(line: 1818, column: 9, scope: !3202, inlinedAt: !3203)
!3214 = !DILocation(line: 1820, column: 7, scope: !3215, inlinedAt: !3203)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 1820, column: 7)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 1818, column: 36)
!3217 = !DILocation(line: 1821, column: 7, scope: !3216, inlinedAt: !3203)
!3218 = !DILocation(line: 1822, column: 5, scope: !3216, inlinedAt: !3203)
!3219 = distinct !{!3219, !3220, !3221}
!3220 = !DILocation(line: 1815, column: 3, scope: !3198)
!3221 = !DILocation(line: 1824, column: 3, scope: !3198)
!3222 = !DILocation(line: 1825, column: 1, scope: !3198, inlinedAt: !3203)
!3223 = !DILocalVariable(name: "inactivity", scope: !3224, file: !3, line: 1787, type: !95)
!3224 = distinct !DISubprogram(name: "tcp_kill_timewait", scope: !3, file: !3, line: 1784, type: !360, isLocal: true, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3225)
!3225 = !{!3226, !3227, !3223}
!3226 = !DILocalVariable(name: "pcb", scope: !3224, file: !3, line: 1786, type: !145)
!3227 = !DILocalVariable(name: "inactive", scope: !3224, file: !3, line: 1786, type: !145)
!3228 = !DILocation(line: 1787, column: 9, scope: !3224, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1847, column: 5, scope: !3204)
!3230 = !DILocation(line: 1786, column: 25, scope: !3224, inlinedAt: !3229)
!3231 = !DILocation(line: 1792, column: 14, scope: !3232, inlinedAt: !3229)
!3232 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1792, column: 3)
!3233 = !DILocation(line: 1786, column: 19, scope: !3224, inlinedAt: !3229)
!3234 = !DILocation(line: 1792, column: 8, scope: !3232, inlinedAt: !3229)
!3235 = !DILocation(line: 1792, column: 31, scope: !3236, inlinedAt: !3229)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 1792, column: 3)
!3237 = !DILocation(line: 1792, column: 3, scope: !3232, inlinedAt: !3229)
!3238 = !DILocation(line: 1793, column: 34, scope: !3239, inlinedAt: !3229)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 1793, column: 9)
!3240 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 1792, column: 57)
!3241 = !DILocation(line: 1793, column: 27, scope: !3239, inlinedAt: !3229)
!3242 = !DILocation(line: 1793, column: 39, scope: !3239, inlinedAt: !3229)
!3243 = !DILocation(line: 1793, column: 9, scope: !3240, inlinedAt: !3229)
!3244 = !DILocation(line: 1796, column: 5, scope: !3245, inlinedAt: !3229)
!3245 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1793, column: 54)
!3246 = !DILocation(line: 0, scope: !3224, inlinedAt: !3229)
!3247 = !DILocation(line: 1792, column: 51, scope: !3236, inlinedAt: !3229)
!3248 = !DILocation(line: 1792, column: 3, scope: !3236, inlinedAt: !3229)
!3249 = distinct !{!3249, !3250, !3251}
!3250 = !DILocation(line: 1792, column: 3, scope: !3232)
!3251 = !DILocation(line: 1797, column: 3, scope: !3232)
!3252 = !DILocation(line: 1798, column: 16, scope: !3253, inlinedAt: !3229)
!3253 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1798, column: 7)
!3254 = !DILocation(line: 1798, column: 7, scope: !3224, inlinedAt: !3229)
!3255 = !DILocation(line: 638, column: 27, scope: !1784, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1801, column: 5, scope: !3257, inlinedAt: !3229)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1798, column: 25)
!3258 = !DILocation(line: 640, column: 3, scope: !1784, inlinedAt: !3256)
!3259 = !DILocation(line: 641, column: 1, scope: !1784, inlinedAt: !3256)
!3260 = !DILocation(line: 1802, column: 3, scope: !3257, inlinedAt: !3229)
!3261 = !DILocation(line: 0, scope: !3204)
!3262 = !DILocation(line: 1803, column: 1, scope: !3224, inlinedAt: !3229)
!3263 = !DILocation(line: 1849, column: 29, scope: !3204)
!3264 = !DILocation(line: 1850, column: 13, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1850, column: 9)
!3266 = !DILocation(line: 1850, column: 9, scope: !3204)
!3267 = !DILocalVariable(name: "state", arg: 1, scope: !3268, file: !3, line: 1752, type: !5)
!3268 = distinct !DISubprogram(name: "tcp_kill_state", scope: !3, file: !3, line: 1752, type: !3269, isLocal: true, isDefinition: true, scopeLine: 1753, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !5}
!3271 = !{!3267, !3272, !3273, !3274}
!3272 = !DILocalVariable(name: "pcb", scope: !3268, file: !3, line: 1754, type: !145)
!3273 = !DILocalVariable(name: "inactive", scope: !3268, file: !3, line: 1754, type: !145)
!3274 = !DILocalVariable(name: "inactivity", scope: !3268, file: !3, line: 1755, type: !95)
!3275 = !DILocation(line: 1752, column: 31, scope: !3268, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 1853, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 1850, column: 22)
!3278 = !DILocation(line: 1755, column: 9, scope: !3268, inlinedAt: !3276)
!3279 = !DILocation(line: 1754, column: 25, scope: !3268, inlinedAt: !3276)
!3280 = !DILocation(line: 1763, column: 14, scope: !3281, inlinedAt: !3276)
!3281 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1763, column: 3)
!3282 = !DILocation(line: 1754, column: 19, scope: !3268, inlinedAt: !3276)
!3283 = !DILocation(line: 1763, column: 8, scope: !3281, inlinedAt: !3276)
!3284 = !DILocation(line: 1763, column: 35, scope: !3285, inlinedAt: !3276)
!3285 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 1763, column: 3)
!3286 = !DILocation(line: 1763, column: 3, scope: !3281, inlinedAt: !3276)
!3287 = !DILocation(line: 1764, column: 14, scope: !3288, inlinedAt: !3276)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1764, column: 9)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 1763, column: 61)
!3290 = !DILocation(line: 1764, column: 20, scope: !3288, inlinedAt: !3276)
!3291 = !DILocation(line: 1764, column: 9, scope: !3289, inlinedAt: !3276)
!3292 = !DILocation(line: 1765, column: 36, scope: !3293, inlinedAt: !3276)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 1765, column: 11)
!3294 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 1764, column: 30)
!3295 = !DILocation(line: 1765, column: 29, scope: !3293, inlinedAt: !3276)
!3296 = !DILocation(line: 1765, column: 41, scope: !3293, inlinedAt: !3276)
!3297 = !DILocation(line: 1765, column: 11, scope: !3294, inlinedAt: !3276)
!3298 = !DILocation(line: 1768, column: 7, scope: !3299, inlinedAt: !3276)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1765, column: 56)
!3300 = !DILocation(line: 0, scope: !3268, inlinedAt: !3276)
!3301 = !DILocation(line: 1763, column: 55, scope: !3285, inlinedAt: !3276)
!3302 = !DILocation(line: 1763, column: 3, scope: !3285, inlinedAt: !3276)
!3303 = distinct !{!3303, !3304, !3305}
!3304 = !DILocation(line: 1763, column: 3, scope: !3281)
!3305 = !DILocation(line: 1770, column: 3, scope: !3281)
!3306 = !DILocation(line: 1771, column: 16, scope: !3307, inlinedAt: !3276)
!3307 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1771, column: 7)
!3308 = !DILocation(line: 1771, column: 7, scope: !3268, inlinedAt: !3276)
!3309 = !DILocation(line: 1775, column: 5, scope: !3310, inlinedAt: !3276)
!3310 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 1771, column: 25)
!3311 = !DILocation(line: 1776, column: 3, scope: !3310, inlinedAt: !3276)
!3312 = !DILocation(line: 0, scope: !3277)
!3313 = !DILocation(line: 1777, column: 1, scope: !3268, inlinedAt: !3276)
!3314 = !DILocation(line: 1855, column: 31, scope: !3277)
!3315 = !DILocation(line: 1856, column: 15, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 1856, column: 11)
!3317 = !DILocation(line: 1856, column: 11, scope: !3277)
!3318 = !DILocation(line: 1887, column: 3, scope: !3204)
!3319 = !DILocation(line: 1888, column: 7, scope: !3185)
!3320 = !DILocation(line: 1752, column: 31, scope: !3268, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 1859, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 1856, column: 24)
!3323 = !DILocation(line: 1755, column: 9, scope: !3268, inlinedAt: !3321)
!3324 = !DILocation(line: 1754, column: 25, scope: !3268, inlinedAt: !3321)
!3325 = !DILocation(line: 1763, column: 14, scope: !3281, inlinedAt: !3321)
!3326 = !DILocation(line: 1754, column: 19, scope: !3268, inlinedAt: !3321)
!3327 = !DILocation(line: 1763, column: 8, scope: !3281, inlinedAt: !3321)
!3328 = !DILocation(line: 1763, column: 35, scope: !3285, inlinedAt: !3321)
!3329 = !DILocation(line: 1763, column: 3, scope: !3281, inlinedAt: !3321)
!3330 = !DILocation(line: 1764, column: 14, scope: !3288, inlinedAt: !3321)
!3331 = !DILocation(line: 1764, column: 20, scope: !3288, inlinedAt: !3321)
!3332 = !DILocation(line: 1764, column: 9, scope: !3289, inlinedAt: !3321)
!3333 = !DILocation(line: 1765, column: 36, scope: !3293, inlinedAt: !3321)
!3334 = !DILocation(line: 1765, column: 29, scope: !3293, inlinedAt: !3321)
!3335 = !DILocation(line: 1765, column: 41, scope: !3293, inlinedAt: !3321)
!3336 = !DILocation(line: 1765, column: 11, scope: !3294, inlinedAt: !3321)
!3337 = !DILocation(line: 1768, column: 7, scope: !3299, inlinedAt: !3321)
!3338 = !DILocation(line: 0, scope: !3268, inlinedAt: !3321)
!3339 = !DILocation(line: 1763, column: 55, scope: !3285, inlinedAt: !3321)
!3340 = !DILocation(line: 1763, column: 3, scope: !3285, inlinedAt: !3321)
!3341 = !DILocation(line: 1771, column: 16, scope: !3307, inlinedAt: !3321)
!3342 = !DILocation(line: 1771, column: 7, scope: !3268, inlinedAt: !3321)
!3343 = !DILocation(line: 1775, column: 5, scope: !3310, inlinedAt: !3321)
!3344 = !DILocation(line: 1776, column: 3, scope: !3310, inlinedAt: !3321)
!3345 = !DILocation(line: 0, scope: !3322)
!3346 = !DILocation(line: 1777, column: 1, scope: !3268, inlinedAt: !3321)
!3347 = !DILocation(line: 1861, column: 33, scope: !3322)
!3348 = !DILocation(line: 1862, column: 17, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 1862, column: 13)
!3350 = !DILocation(line: 1862, column: 13, scope: !3322)
!3351 = !DILocation(line: 1877, column: 7, scope: !3322)
!3352 = !DILocation(line: 1882, column: 5, scope: !3277)
!3353 = !DILocalVariable(name: "prio", arg: 1, scope: !3354, file: !3, line: 1706, type: !91)
!3354 = distinct !DISubprogram(name: "tcp_kill_prio", scope: !3, file: !3, line: 1706, type: !3355, isLocal: true, isDefinition: true, scopeLine: 1707, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !91}
!3357 = !{!3353, !3358, !3359, !3360, !3361}
!3358 = !DILocalVariable(name: "pcb", scope: !3354, file: !3, line: 1708, type: !145)
!3359 = !DILocalVariable(name: "inactive", scope: !3354, file: !3, line: 1708, type: !145)
!3360 = !DILocalVariable(name: "inactivity", scope: !3354, file: !3, line: 1709, type: !95)
!3361 = !DILocalVariable(name: "mprio", scope: !3354, file: !3, line: 1710, type: !91)
!3362 = !DILocation(line: 1706, column: 20, scope: !3354, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 1865, column: 11, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 1862, column: 26)
!3365 = !DILocation(line: 1712, column: 11, scope: !3354, inlinedAt: !3363)
!3366 = !DILocation(line: 1710, column: 8, scope: !3354, inlinedAt: !3363)
!3367 = !DILocation(line: 1717, column: 13, scope: !3368, inlinedAt: !3363)
!3368 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1717, column: 7)
!3369 = !DILocation(line: 1717, column: 7, scope: !3354, inlinedAt: !3363)
!3370 = !DILocation(line: 1709, column: 9, scope: !3354, inlinedAt: !3363)
!3371 = !DILocation(line: 1708, column: 25, scope: !3354, inlinedAt: !3363)
!3372 = !DILocation(line: 1730, column: 14, scope: !3373, inlinedAt: !3363)
!3373 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1730, column: 3)
!3374 = !DILocation(line: 1708, column: 19, scope: !3354, inlinedAt: !3363)
!3375 = !DILocation(line: 1730, column: 8, scope: !3373, inlinedAt: !3363)
!3376 = !DILocation(line: 1730, column: 35, scope: !3377, inlinedAt: !3363)
!3377 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 1730, column: 3)
!3378 = !DILocation(line: 1730, column: 3, scope: !3373, inlinedAt: !3363)
!3379 = !DILocation(line: 1726, column: 8, scope: !3354, inlinedAt: !3363)
!3380 = !DILocation(line: 1732, column: 15, scope: !3381, inlinedAt: !3363)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 1732, column: 9)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1730, column: 61)
!3383 = !DILocation(line: 1732, column: 20, scope: !3381, inlinedAt: !3363)
!3384 = !DILocation(line: 1732, column: 29, scope: !3381, inlinedAt: !3363)
!3385 = !DILocation(line: 1735, column: 37, scope: !3386, inlinedAt: !3363)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1734, column: 82)
!3387 = !DILocation(line: 1735, column: 30, scope: !3386, inlinedAt: !3363)
!3388 = !DILocation(line: 1734, column: 21, scope: !3381, inlinedAt: !3363)
!3389 = !DILocation(line: 1734, column: 31, scope: !3381, inlinedAt: !3363)
!3390 = !DILocation(line: 1734, column: 60, scope: !3381, inlinedAt: !3363)
!3391 = !DILocation(line: 1734, column: 53, scope: !3381, inlinedAt: !3363)
!3392 = !DILocation(line: 1734, column: 65, scope: !3381, inlinedAt: !3363)
!3393 = !DILocation(line: 1732, column: 9, scope: !3382, inlinedAt: !3363)
!3394 = !DILocation(line: 1738, column: 5, scope: !3386, inlinedAt: !3363)
!3395 = !DILocation(line: 0, scope: !3354, inlinedAt: !3363)
!3396 = !DILocation(line: 1730, column: 55, scope: !3377, inlinedAt: !3363)
!3397 = !DILocation(line: 1730, column: 3, scope: !3377, inlinedAt: !3363)
!3398 = distinct !{!3398, !3399, !3400}
!3399 = !DILocation(line: 1730, column: 3, scope: !3373)
!3400 = !DILocation(line: 1739, column: 3, scope: !3373)
!3401 = !DILocation(line: 1740, column: 16, scope: !3402, inlinedAt: !3363)
!3402 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1740, column: 7)
!3403 = !DILocation(line: 1740, column: 7, scope: !3354, inlinedAt: !3363)
!3404 = !DILocation(line: 638, column: 27, scope: !1784, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1743, column: 5, scope: !3406, inlinedAt: !3363)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1740, column: 25)
!3407 = !DILocation(line: 640, column: 3, scope: !1784, inlinedAt: !3405)
!3408 = !DILocation(line: 641, column: 1, scope: !1784, inlinedAt: !3405)
!3409 = !DILocation(line: 1744, column: 3, scope: !3406, inlinedAt: !3363)
!3410 = !DILocation(line: 0, scope: !3364)
!3411 = !DILocation(line: 1745, column: 1, scope: !3354, inlinedAt: !3363)
!3412 = !DILocation(line: 1867, column: 35, scope: !3364)
!3413 = !DILocation(line: 1872, column: 9, scope: !3364)
!3414 = !DILocation(line: 0, scope: !3185)
!3415 = !DILocation(line: 1888, column: 11, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1888, column: 7)
!3417 = !DILocation(line: 1890, column: 5, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1888, column: 20)
!3419 = !DILocation(line: 1891, column: 10, scope: !3418)
!3420 = !DILocation(line: 1891, column: 15, scope: !3418)
!3421 = !DILocation(line: 1892, column: 10, scope: !3418)
!3422 = !DILocation(line: 1892, column: 18, scope: !3418)
!3423 = !{!458, !415, i64 168}
!3424 = !DILocation(line: 1895, column: 25, scope: !3418)
!3425 = !DILocation(line: 1895, column: 37, scope: !3418)
!3426 = !DILocation(line: 1895, column: 10, scope: !3418)
!3427 = !DILocation(line: 1895, column: 18, scope: !3418)
!3428 = !DILocation(line: 1896, column: 10, scope: !3418)
!3429 = !DILocation(line: 1896, column: 14, scope: !3418)
!3430 = !DILocation(line: 1899, column: 10, scope: !3418)
!3431 = !DILocation(line: 1899, column: 14, scope: !3418)
!3432 = !DILocation(line: 1900, column: 10, scope: !3418)
!3433 = !DILocation(line: 1900, column: 14, scope: !3418)
!3434 = !DILocation(line: 1901, column: 10, scope: !3418)
!3435 = !DILocation(line: 1901, column: 13, scope: !3418)
!3436 = !DILocation(line: 1902, column: 10, scope: !3418)
!3437 = !DILocation(line: 1902, column: 16, scope: !3418)
!3438 = !DILocation(line: 1903, column: 10, scope: !3418)
!3439 = !DILocation(line: 1903, column: 15, scope: !3418)
!3440 = !DILocation(line: 1904, column: 16, scope: !3418)
!3441 = !DILocation(line: 1904, column: 10, scope: !3418)
!3442 = !DILocation(line: 1904, column: 14, scope: !3418)
!3443 = !DILocation(line: 1905, column: 23, scope: !3418)
!3444 = !DILocation(line: 1905, column: 10, scope: !3418)
!3445 = !DILocation(line: 1905, column: 21, scope: !3418)
!3446 = !DILocation(line: 1913, column: 10, scope: !3418)
!3447 = !DILocation(line: 1913, column: 19, scope: !3418)
!3448 = !DILocation(line: 1916, column: 10, scope: !3418)
!3449 = !DILocation(line: 1916, column: 15, scope: !3418)
!3450 = !DILocation(line: 1920, column: 10, scope: !3418)
!3451 = !DILocation(line: 1920, column: 21, scope: !3418)
!3452 = !DILocation(line: 1926, column: 3, scope: !3418)
!3453 = !DILocation(line: 1927, column: 3, scope: !3185)
!3454 = distinct !DISubprogram(name: "tcp_new", scope: !3, file: !3, line: 1945, type: !3455, isLocal: false, isDefinition: true, scopeLine: 1946, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!145}
!3457 = !DILocation(line: 1947, column: 10, scope: !3454)
!3458 = !DILocation(line: 1947, column: 3, scope: !3454)
!3459 = distinct !DISubprogram(name: "tcp_new_ip_type", scope: !3, file: !3, line: 1962, type: !3186, isLocal: false, isDefinition: true, scopeLine: 1963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3460)
!3460 = !{!3461, !3462}
!3461 = !DILocalVariable(name: "type", arg: 1, scope: !3459, file: !3, line: 1962, type: !91)
!3462 = !DILocalVariable(name: "pcb", scope: !3459, file: !3, line: 1964, type: !145)
!3463 = !DILocation(line: 1962, column: 22, scope: !3459)
!3464 = !DILocation(line: 1965, column: 9, scope: !3459)
!3465 = !DILocation(line: 1964, column: 19, scope: !3459)
!3466 = !DILocation(line: 1967, column: 11, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1967, column: 7)
!3468 = !DILocation(line: 1967, column: 7, scope: !3459)
!3469 = !DILocation(line: 1968, column: 5, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1968, column: 5)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 1967, column: 20)
!3472 = !DILocation(line: 1969, column: 5, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1969, column: 5)
!3474 = !DILocation(line: 1970, column: 3, scope: !3471)
!3475 = !DILocation(line: 1974, column: 3, scope: !3459)
!3476 = distinct !DISubprogram(name: "tcp_arg", scope: !3, file: !3, line: 1988, type: !3477, isLocal: false, isDefinition: true, scopeLine: 1989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !145, !88}
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "pcb", arg: 1, scope: !3476, file: !3, line: 1988, type: !145)
!3481 = !DILocalVariable(name: "arg", arg: 2, scope: !3476, file: !3, line: 1988, type: !88)
!3482 = !DILocation(line: 1988, column: 25, scope: !3476)
!3483 = !DILocation(line: 1988, column: 36, scope: !3476)
!3484 = !DILocation(line: 1993, column: 11, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 1993, column: 7)
!3486 = !DILocation(line: 1993, column: 7, scope: !3476)
!3487 = !DILocation(line: 1994, column: 10, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1993, column: 20)
!3489 = !DILocation(line: 1994, column: 23, scope: !3488)
!3490 = !DILocation(line: 1995, column: 3, scope: !3488)
!3491 = !DILocation(line: 1996, column: 1, scope: !3476)
!3492 = distinct !DISubprogram(name: "tcp_recv", scope: !3, file: !3, line: 2011, type: !3493, isLocal: false, isDefinition: true, scopeLine: 2012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{null, !145, !241}
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "pcb", arg: 1, scope: !3492, file: !3, line: 2011, type: !145)
!3497 = !DILocalVariable(name: "recv", arg: 2, scope: !3492, file: !3, line: 2011, type: !241)
!3498 = !DILocation(line: 2011, column: 26, scope: !3492)
!3499 = !DILocation(line: 2011, column: 43, scope: !3492)
!3500 = !DILocation(line: 2014, column: 11, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 2014, column: 7)
!3502 = !DILocation(line: 2014, column: 7, scope: !3492)
!3503 = !DILocation(line: 2015, column: 5, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 2015, column: 5)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2015, column: 5)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !3, line: 2014, column: 20)
!3507 = !DILocation(line: 2015, column: 5, scope: !3505)
!3508 = !DILocation(line: 2015, column: 5, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 2015, column: 5)
!3510 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 2015, column: 5)
!3511 = !DILocation(line: 2015, column: 5, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 2015, column: 5)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 2015, column: 5)
!3514 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 2015, column: 5)
!3515 = !DILocation(line: 2016, column: 10, scope: !3506)
!3516 = !DILocation(line: 2016, column: 15, scope: !3506)
!3517 = !DILocation(line: 2017, column: 3, scope: !3506)
!3518 = !DILocation(line: 2018, column: 1, scope: !3492)
!3519 = distinct !DISubprogram(name: "tcp_sent", scope: !3, file: !3, line: 2031, type: !3520, isLocal: false, isDefinition: true, scopeLine: 2032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !145, !236}
!3522 = !{!3523, !3524}
!3523 = !DILocalVariable(name: "pcb", arg: 1, scope: !3519, file: !3, line: 2031, type: !145)
!3524 = !DILocalVariable(name: "sent", arg: 2, scope: !3519, file: !3, line: 2031, type: !236)
!3525 = !DILocation(line: 2031, column: 26, scope: !3519)
!3526 = !DILocation(line: 2031, column: 43, scope: !3519)
!3527 = !DILocation(line: 2034, column: 11, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 2034, column: 7)
!3529 = !DILocation(line: 2034, column: 7, scope: !3519)
!3530 = !DILocation(line: 2035, column: 5, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 2035, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 2035, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 2034, column: 20)
!3534 = !DILocation(line: 2035, column: 5, scope: !3532)
!3535 = !DILocation(line: 2035, column: 5, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 2035, column: 5)
!3537 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 2035, column: 5)
!3538 = !DILocation(line: 2035, column: 5, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 2035, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 2035, column: 5)
!3541 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 2035, column: 5)
!3542 = !DILocation(line: 2036, column: 10, scope: !3533)
!3543 = !DILocation(line: 2036, column: 15, scope: !3533)
!3544 = !{!458, !460, i64 224}
!3545 = !DILocation(line: 2037, column: 3, scope: !3533)
!3546 = !DILocation(line: 2038, column: 1, scope: !3519)
!3547 = distinct !DISubprogram(name: "tcp_err", scope: !3, file: !3, line: 2057, type: !3548, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !145, !253}
!3550 = !{!3551, !3552}
!3551 = !DILocalVariable(name: "pcb", arg: 1, scope: !3547, file: !3, line: 2057, type: !145)
!3552 = !DILocalVariable(name: "err", arg: 2, scope: !3547, file: !3, line: 2057, type: !253)
!3553 = !DILocation(line: 2057, column: 25, scope: !3547)
!3554 = !DILocation(line: 2057, column: 41, scope: !3547)
!3555 = !DILocation(line: 2060, column: 11, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 2060, column: 7)
!3557 = !DILocation(line: 2060, column: 7, scope: !3547)
!3558 = !DILocation(line: 2061, column: 5, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 2061, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 2061, column: 5)
!3561 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 2060, column: 20)
!3562 = !DILocation(line: 2061, column: 5, scope: !3560)
!3563 = !DILocation(line: 2061, column: 5, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 2061, column: 5)
!3565 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 2061, column: 5)
!3566 = !DILocation(line: 2061, column: 5, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 2061, column: 5)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 2061, column: 5)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 2061, column: 5)
!3570 = !DILocation(line: 2062, column: 10, scope: !3561)
!3571 = !DILocation(line: 2062, column: 15, scope: !3561)
!3572 = !DILocation(line: 2063, column: 3, scope: !3561)
!3573 = !DILocation(line: 2064, column: 1, scope: !3547)
!3574 = distinct !DISubprogram(name: "tcp_accept", scope: !3, file: !3, line: 2076, type: !3575, isLocal: false, isDefinition: true, scopeLine: 2077, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !145, !136}
!3577 = !{!3578, !3579, !3580}
!3578 = !DILocalVariable(name: "pcb", arg: 1, scope: !3574, file: !3, line: 2076, type: !145)
!3579 = !DILocalVariable(name: "accept", arg: 2, scope: !3574, file: !3, line: 2076, type: !136)
!3580 = !DILocalVariable(name: "lpcb", scope: !3581, file: !3, line: 2080, type: !98)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 2079, column: 48)
!3582 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 2079, column: 7)
!3583 = !DILocation(line: 2076, column: 28, scope: !3574)
!3584 = !DILocation(line: 2076, column: 47, scope: !3574)
!3585 = !DILocation(line: 2079, column: 12, scope: !3582)
!3586 = !DILocation(line: 2079, column: 21, scope: !3582)
!3587 = !DILocation(line: 2079, column: 30, scope: !3582)
!3588 = !DILocation(line: 2079, column: 36, scope: !3582)
!3589 = !DILocation(line: 2079, column: 7, scope: !3574)
!3590 = !DILocation(line: 2080, column: 28, scope: !3581)
!3591 = !DILocation(line: 2081, column: 11, scope: !3581)
!3592 = !DILocation(line: 2081, column: 18, scope: !3581)
!3593 = !DILocation(line: 2082, column: 3, scope: !3581)
!3594 = !DILocation(line: 2083, column: 1, scope: !3574)
!3595 = distinct !DISubprogram(name: "tcp_poll", scope: !3, file: !3, line: 2105, type: !3596, isLocal: false, isDefinition: true, scopeLine: 2106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !145, !248, !91}
!3598 = !{!3599, !3600, !3601}
!3599 = !DILocalVariable(name: "pcb", arg: 1, scope: !3595, file: !3, line: 2105, type: !145)
!3600 = !DILocalVariable(name: "poll", arg: 2, scope: !3595, file: !3, line: 2105, type: !248)
!3601 = !DILocalVariable(name: "interval", arg: 3, scope: !3595, file: !3, line: 2105, type: !91)
!3602 = !DILocation(line: 2105, column: 26, scope: !3595)
!3603 = !DILocation(line: 2105, column: 43, scope: !3595)
!3604 = !DILocation(line: 2105, column: 54, scope: !3595)
!3605 = !DILocation(line: 2109, column: 3, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 2109, column: 3)
!3607 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 2109, column: 3)
!3608 = !DILocation(line: 2109, column: 3, scope: !3607)
!3609 = !DILocation(line: 2109, column: 3, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 2109, column: 3)
!3611 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 2109, column: 3)
!3612 = !DILocation(line: 2109, column: 3, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 2109, column: 3)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 2109, column: 3)
!3615 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 2109, column: 3)
!3616 = !DILocation(line: 2110, column: 3, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 2110, column: 3)
!3618 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 2110, column: 3)
!3619 = !DILocation(line: 2110, column: 3, scope: !3618)
!3620 = !DILocation(line: 2110, column: 3, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 2110, column: 3)
!3622 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 2110, column: 3)
!3623 = !DILocation(line: 2110, column: 3, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 2110, column: 3)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 2110, column: 3)
!3626 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 2110, column: 3)
!3627 = !DILocation(line: 2113, column: 8, scope: !3595)
!3628 = !DILocation(line: 2113, column: 13, scope: !3595)
!3629 = !DILocation(line: 2117, column: 8, scope: !3595)
!3630 = !DILocation(line: 2117, column: 21, scope: !3595)
!3631 = !DILocation(line: 2118, column: 1, scope: !3595)
!3632 = distinct !DISubprogram(name: "tcp_netif_ip_addr_changed", scope: !3, file: !3, line: 2331, type: !3633, isLocal: false, isDefinition: true, scopeLine: 2332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !267, !267}
!3635 = !{!3636, !3637, !3638}
!3636 = !DILocalVariable(name: "old_addr", arg: 1, scope: !3632, file: !3, line: 2331, type: !267)
!3637 = !DILocalVariable(name: "new_addr", arg: 2, scope: !3632, file: !3, line: 2331, type: !267)
!3638 = !DILocalVariable(name: "lpcb", scope: !3632, file: !3, line: 2333, type: !98)
!3639 = !DILocation(line: 2331, column: 44, scope: !3632)
!3640 = !DILocation(line: 2331, column: 71, scope: !3632)
!3641 = !DILocation(line: 2335, column: 8, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 2335, column: 7)
!3643 = !DILocation(line: 2335, column: 7, scope: !3632)
!3644 = !DILocation(line: 0, scope: !3632)
!3645 = !DILocation(line: 2336, column: 49, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 2335, column: 33)
!3647 = !DILocation(line: 2336, column: 5, scope: !3646)
!3648 = !DILocation(line: 2337, column: 49, scope: !3646)
!3649 = !DILocation(line: 2337, column: 5, scope: !3646)
!3650 = !DILocation(line: 2339, column: 10, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 2339, column: 9)
!3652 = !DILocation(line: 2339, column: 9, scope: !3646)
!3653 = !DILocation(line: 0, scope: !3646)
!3654 = !DILocation(line: 2341, column: 35, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 2341, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 2339, column: 35)
!3657 = !DILocation(line: 2333, column: 26, scope: !3632)
!3658 = !DILocation(line: 2341, column: 12, scope: !3655)
!3659 = !DILocation(line: 2341, column: 53, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 2341, column: 7)
!3661 = !DILocation(line: 2341, column: 7, scope: !3655)
!3662 = !DILocation(line: 2343, column: 13, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 2343, column: 13)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 2341, column: 81)
!3665 = !DILocation(line: 2343, column: 13, scope: !3664)
!3666 = !DILocation(line: 2346, column: 11, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 2346, column: 11)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 2346, column: 11)
!3669 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 2343, column: 53)
!3670 = !DILocation(line: 2346, column: 11, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 2346, column: 11)
!3672 = !DILocation(line: 2346, column: 11, scope: !3668)
!3673 = !DILocation(line: 2346, column: 11, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 2346, column: 11)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 2346, column: 11)
!3676 = !DILocation(line: 2346, column: 11, scope: !3675)
!3677 = !DILocation(line: 2346, column: 11, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 2346, column: 11)
!3679 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 2346, column: 11)
!3680 = !DILocation(line: 2341, column: 75, scope: !3660)
!3681 = !DILocation(line: 2341, column: 7, scope: !3660)
!3682 = distinct !{!3682, !3661, !3683}
!3683 = !DILocation(line: 2348, column: 7, scope: !3655)
!3684 = !DILocation(line: 2351, column: 1, scope: !3632)
!3685 = distinct !DISubprogram(name: "tcp_netif_ip_addr_changed_pcblist", scope: !3, file: !3, line: 2299, type: !3686, isLocal: true, isDefinition: true, scopeLine: 2300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !267, !145}
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "old_addr", arg: 1, scope: !3685, file: !3, line: 2299, type: !267)
!3690 = !DILocalVariable(name: "pcb_list", arg: 2, scope: !3685, file: !3, line: 2299, type: !145)
!3691 = !DILocalVariable(name: "pcb", scope: !3685, file: !3, line: 2301, type: !145)
!3692 = !DILocalVariable(name: "next", scope: !3693, file: !3, line: 2315, type: !145)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 2313, column: 10)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 2308, column: 9)
!3695 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 2306, column: 23)
!3696 = !DILocation(line: 2299, column: 52, scope: !3685)
!3697 = !DILocation(line: 2299, column: 78, scope: !3685)
!3698 = !DILocation(line: 2301, column: 19, scope: !3685)
!3699 = !DILocation(line: 2304, column: 3, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 2304, column: 3)
!3701 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 2304, column: 3)
!3702 = !DILocation(line: 2304, column: 3, scope: !3701)
!3703 = !DILocation(line: 2306, column: 14, scope: !3685)
!3704 = !DILocation(line: 2306, column: 3, scope: !3685)
!3705 = !DILocation(line: 2304, column: 3, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 2304, column: 3)
!3707 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 2304, column: 3)
!3708 = !DILocation(line: 2304, column: 3, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2304, column: 3)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 2304, column: 3)
!3711 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 2304, column: 3)
!3712 = !DILocation(line: 2308, column: 9, scope: !3694)
!3713 = !DILocation(line: 2308, column: 9, scope: !3695)
!3714 = !DILocation(line: 2315, column: 35, scope: !3693)
!3715 = !DILocation(line: 2315, column: 23, scope: !3693)
!3716 = !DILocation(line: 638, column: 27, scope: !1784, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 2317, column: 7, scope: !3693)
!3718 = !DILocation(line: 640, column: 3, scope: !1784, inlinedAt: !3717)
!3719 = !DILocation(line: 641, column: 1, scope: !1784, inlinedAt: !3717)
!3720 = !DILocation(line: 2319, column: 5, scope: !3693)
!3721 = !DILocation(line: 2320, column: 18, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 2319, column: 12)
!3723 = !DILocation(line: 0, scope: !3693)
!3724 = distinct !{!3724, !3704, !3725}
!3725 = !DILocation(line: 2322, column: 3, scope: !3685)
!3726 = !DILocation(line: 2323, column: 1, scope: !3685)
!3727 = distinct !DISubprogram(name: "tcp_debug_state_str", scope: !3, file: !3, line: 2354, type: !3728, isLocal: false, isDefinition: true, scopeLine: 2355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!309, !5}
!3730 = !{!3731}
!3731 = !DILocalVariable(name: "s", arg: 1, scope: !3727, file: !3, line: 2354, type: !5)
!3732 = !DILocation(line: 2354, column: 36, scope: !3727)
!3733 = !DILocation(line: 2356, column: 10, scope: !3727)
!3734 = !DILocation(line: 2356, column: 3, scope: !3727)
!3735 = distinct !DISubprogram(name: "tcp_tcp_get_tcp_addrinfo", scope: !3, file: !3, line: 2360, type: !3736, isLocal: false, isDefinition: true, scopeLine: 2361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3740)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!140, !145, !50, !3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!3740 = !{!3741, !3742, !3743, !3744}
!3741 = !DILocalVariable(name: "pcb", arg: 1, scope: !3735, file: !3, line: 2360, type: !145)
!3742 = !DILocalVariable(name: "local", arg: 2, scope: !3735, file: !3, line: 2360, type: !50)
!3743 = !DILocalVariable(name: "addr", arg: 3, scope: !3735, file: !3, line: 2360, type: !3738)
!3744 = !DILocalVariable(name: "port", arg: 4, scope: !3735, file: !3, line: 2360, type: !3739)
!3745 = !DILocation(line: 2360, column: 42, scope: !3735)
!3746 = !DILocation(line: 2360, column: 51, scope: !3735)
!3747 = !DILocation(line: 2360, column: 69, scope: !3735)
!3748 = !DILocation(line: 2360, column: 82, scope: !3735)
!3749 = !DILocation(line: 2362, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 2362, column: 7)
!3751 = !DILocation(line: 2362, column: 7, scope: !3735)
!3752 = !DILocation(line: 2363, column: 9, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !3, line: 2363, column: 9)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 2362, column: 12)
!3755 = !DILocation(line: 0, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 2371, column: 11)
!3757 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 2370, column: 12)
!3758 = !DILocation(line: 2363, column: 9, scope: !3754)
!3759 = !DILocation(line: 0, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 2363, column: 16)
!3761 = !DILocation(line: 2364, column: 11, scope: !3760)
!3762 = !DILocation(line: 2365, column: 22, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2364, column: 17)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 2364, column: 11)
!3765 = !{i64 0, i64 16, !485, i64 16, i64 1, !485, i64 0, i64 4, !414, i64 20, i64 1, !485}
!3766 = !DILocation(line: 2366, column: 7, scope: !3763)
!3767 = !DILocation(line: 2367, column: 11, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 2367, column: 11)
!3769 = !DILocation(line: 2367, column: 11, scope: !3760)
!3770 = !DILocation(line: 2368, column: 22, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 2367, column: 17)
!3772 = !DILocation(line: 2368, column: 15, scope: !3771)
!3773 = !DILocation(line: 2369, column: 7, scope: !3771)
!3774 = !DILocation(line: 2371, column: 11, scope: !3757)
!3775 = !DILocation(line: 2372, column: 22, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 2371, column: 17)
!3777 = !DILocation(line: 2373, column: 7, scope: !3776)
!3778 = !DILocation(line: 2374, column: 11, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 2374, column: 11)
!3780 = !DILocation(line: 2374, column: 11, scope: !3757)
!3781 = !DILocation(line: 2375, column: 22, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 2374, column: 17)
!3783 = !DILocation(line: 2375, column: 15, scope: !3782)
!3784 = !DILocation(line: 2376, column: 7, scope: !3782)
!3785 = !DILocation(line: 0, scope: !3735)
!3786 = !DILocation(line: 0, scope: !3754)
!3787 = !DILocation(line: 2381, column: 1, scope: !3735)
!3788 = !DILocation(line: 65, column: 11, scope: !400)
!3789 = !DILocation(line: 62, column: 16, scope: !400)
!3790 = !DILocation(line: 66, column: 8, scope: !400)
!3791 = !DILocation(line: 63, column: 8, scope: !400)
!3792 = !DILocation(line: 67, column: 2, scope: !400)
!3793 = !DILocation(line: 69, column: 2, scope: !400)
