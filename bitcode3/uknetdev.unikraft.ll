; ModuleID = '/root/.unikraft/libs/lwip/uknetdev.c'
source_filename = "/root/.unikraft/libs/lwip/uknetdev.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.uk_netdev = type { i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)*, %struct.uk_netdev_data*, %struct.uk_netdev_ops*, [1 x %struct.uk_netdev_rx_queue*], [1 x %struct.uk_netdev_tx_queue*], %struct.anon.4, %struct.uk_netdev_einfo*, i8* }
%struct.uk_netdev_tx_queue = type opaque
%struct.uk_netbuf = type { %struct.uk_netbuf*, %struct.uk_netbuf*, i8*, i16, %struct.__atomic, i8*, i8*, i64, void (%struct.uk_netbuf*)*, %struct.uk_alloc*, i8* }
%struct.__atomic = type { i32 }
%struct.uk_netdev_rx_queue = type opaque
%struct.uk_netdev_data = type { i32, %struct.uk_netdev_event_handler*, i16, i8* }
%struct.uk_netdev_event_handler = type { {}*, i8*, %struct.uk_semaphore, %struct.uk_netdev*, i16, %struct.uk_thread*, i8*, %struct.uk_sched* }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.0, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.0 = type { %struct.uk_thread*, %struct.uk_thread** }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.1, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.uk_thread_sig = type { i64, i64, %struct.uk_list_head, %struct.uk_thread_sig_wait, %struct.uk_list_head }
%struct.uk_thread_sig_wait = type { i32, i64, %struct.siginfo_t }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.uk_list_head = type { %struct.uk_list_head*, %struct.uk_list_head* }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
%struct.uk_netdev_ops = type { i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, %struct.uk_hwaddr* (%struct.uk_netdev*)*, i32 (%struct.uk_netdev*, %struct.uk_hwaddr*)*, i16 (%struct.uk_netdev*)*, i32 (%struct.uk_netdev*, i16)*, i32 (%struct.uk_netdev*, i32)*, i32 (%struct.uk_netdev*)*, void (%struct.uk_netdev*, %struct.uk_netdev_info*)*, i32 (%struct.uk_netdev*, i16, %struct.uk_netdev_queue_info*)*, i32 (%struct.uk_netdev*, i16, %struct.uk_netdev_queue_info*)*, i8* (%struct.uk_netdev*, i32)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_conf*)*, %struct.uk_netdev_tx_queue* (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_txqueue_conf*)*, %struct.uk_netdev_rx_queue* (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_rxqueue_conf*)*, i32 (%struct.uk_netdev*)* }
%struct.uk_hwaddr = type { [6 x i8] }
%struct.uk_netdev_info = type { i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.uk_netdev_queue_info = type { i16, i16, i16, i32 }
%struct.uk_netdev_conf = type { i16, i16 }
%struct.uk_netdev_txqueue_conf = type { %struct.uk_alloc* }
%struct.uk_netdev_rxqueue_conf = type { {}*, i8*, %struct.uk_alloc*, i16 (i8*, %struct.uk_netbuf**, i16)*, i8*, %struct.uk_sched* }
%struct.anon.4 = type { %struct.uk_netdev*, %struct.uk_netdev** }
%struct.uk_netdev_einfo = type { i8*, i8*, i8* }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon.5, i8 }
%union.anon.5 = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.lwip_netdev_data = type { %struct.uk_alloc*, %struct.uk_netdev_info, %struct.uk_thread*, i8*, %struct.uk_sched* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"nf->input\00", align 1
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@__uknetdev_input.__str = internal global [49 x i8] c"%c%c%u: Receive error %d. Stopping interface...\0A\00", section ".data_shared", align 16, !dbg !0
@__uknetdev_input.__str.4 = internal global [49 x i8] c"%c%c%u: Receive error %d. Stopping interface...\0A\00", section ".data_shared", align 16, !dbg !870
@__uknetdev_input.__str.5 = internal global [46 x i8] c"%c%c%u: Failed to forward packet to lwIP: %d\0A\00", section ".data_shared", align 16, !dbg !875
@__uknetdev_input.__str.6 = internal global [46 x i8] c"%c%c%u: Failed to forward packet to lwIP: %d\0A\00", section ".data_shared", align 16, !dbg !880
@.str.7 = private unnamed_addr constant [19 x i8] c"nf->name[0] == 'e'\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nf->name[1] == 'n'\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"(*_dss_dev)\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"uknetdev needs an input callback (netif_input or tcpip_input)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"hwaddr\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"nf->mtu\00", align 1
@uknetdev_addif.pethernet_input = internal global i8* bitcast (i8 (%struct.pbuf*, %struct.netif*)* @tcpip_input to i8*), align 8, !dbg !882
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !896
@uk_pr_crit.__str.14 = internal global [11 x i8] c"uknetdev.c\00", section ".data_shared", align 1, !dbg !915
@.str.15 = private unnamed_addr constant [12 x i8] c"dev->rx_one\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"queue_id < 1\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"dev->_data->state == UK_NETDEV_RUNNING\00", align 1
@.str.18 = private unnamed_addr constant [101 x i8] c"!((__sptr)(dev->_rx_queue[queue_id]) <= 0 && (__sptr)(dev->_rx_queue[queue_id]) >= -(__sptr)((512)))\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pkt\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"np\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"np->pbuf_custom.pbuf.flags & 0x02U\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@uk_pr_err.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !920
@uk_pr_err.__str.26 = internal global [11 x i8] c"uknetdev.c\00", section ".data_shared", align 1, !dbg !926
@.str.27 = private unnamed_addr constant [5 x i8] c"argp\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"lwip_data\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"m->buf\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"m->data\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"dev->tx_one\00", align 1
@.str.32 = private unnamed_addr constant [101 x i8] c"!((__sptr)(dev->_tx_queue[queue_id]) <= 0 && (__sptr)(dev->_tx_queue[queue_id]) >= -(__sptr)((512)))\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"lwip_data->sched\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"dev->ops\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"dev->_data\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @__uknetdev_input(%struct.uk_netdev*, i16 zeroext, i8*) #0 !dbg !2 {
  %4 = alloca %struct.uk_netbuf*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast i8* %2 to %struct.netif*, !dbg !984
  %7 = bitcast %struct.uk_netbuf** %4 to i8*, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !986
  %8 = ptrtoint %struct.uk_netbuf** %4 to i64, !dbg !987
  %9 = add i64 %8, 65536, !dbg !988
  %10 = inttoptr i64 %9 to %struct.uk_netbuf**, !dbg !989
  %11 = bitcast i32* %5 to i8*, !dbg !991
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #8, !dbg !991
  %12 = icmp eq %struct.uk_netdev* %0, null, !dbg !992
  br i1 %12, label %13, label %14, !dbg !995, !prof !996

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !997
  call void @ukplat_terminate(i32 3) #10, !dbg !997
  unreachable, !dbg !997

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i8* %2, null, !dbg !999
  br i1 %15, label %16, label %17, !dbg !1002, !prof !996

; <label>:16:                                     ; preds = %14
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1003
  call void @ukplat_terminate(i32 3) #10, !dbg !1003
  unreachable, !dbg !1003

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds i8, i8* %2, i64 184, !dbg !1005
  %19 = bitcast i8* %18 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !1005
  %20 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1005, !tbaa !1008
  %21 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %20, null, !dbg !1005
  br i1 %21, label %27, label %22, !dbg !1015, !prof !996

; <label>:22:                                     ; preds = %17
  %23 = ptrtoint %struct.uk_netdev* %0 to i64
  %24 = getelementptr inbounds i8, i8* %2, i64 262
  %25 = getelementptr inbounds i8, i8* %2, i64 263
  %26 = getelementptr inbounds i8, i8* %2, i64 264
  br label %28, !dbg !1016

; <label>:27:                                     ; preds = %17
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1024
  call void @ukplat_terminate(i32 3) #10, !dbg !1024
  unreachable, !dbg !1024

; <label>:28:                                     ; preds = %22, %175
  %29 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1016, !srcloc !1026
  %30 = icmp ult i64 %29, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1028
  br i1 %30, label %36, label %31, !dbg !1028

; <label>:31:                                     ; preds = %28
  %32 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1029, !srcloc !1026
  %33 = icmp ugt i64 %32, ptrtoint ([0 x i8]* @_end to i64), !dbg !1028
  br i1 %33, label %36, label %34, !dbg !1032

; <label>:34:                                     ; preds = %31
  %35 = call i32 @uk_netdev_rx_one(%struct.uk_netdev* nonnull %0, i16 zeroext 0, %struct.uk_netbuf** %10) #9, !dbg !1033
  store i32 %35, i32* %5, align 4, !dbg !1033, !tbaa !1036
  br label %45, !dbg !1033

; <label>:36:                                     ; preds = %31, %28
  %37 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1038, !srcloc !1026
  %38 = and i64 %37, -65536, !dbg !1049
  %39 = or i64 %38, 4097, !dbg !1049
  %40 = add nsw i64 %39, -1, !dbg !1049
  %41 = inttoptr i64 %40 to i32*, !dbg !1050
  %42 = load i32, i32* %41, align 4096, !dbg !1051, !tbaa !1036
  %43 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rx_one\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %23, i64 0, i64 %9, i32 %42, i32 (%struct.uk_netdev*, i16, %struct.uk_netbuf**)* nonnull @uk_netdev_rx_one) #8, !dbg !1052, !srcloc !1053
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %43) #8, !dbg !1054, !srcloc !1057
  %44 = load i32, i32* %5, align 4, !dbg !1058, !tbaa !1036
  br label %45

; <label>:45:                                     ; preds = %36, %34
  %46 = phi i32 [ %44, %36 ], [ %35, %34 ], !dbg !1058
  %47 = icmp slt i32 %46, 0, !dbg !1058
  br i1 %47, label %48, label %78, !dbg !1059, !prof !996

; <label>:48:                                     ; preds = %45
  %49 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1060, !srcloc !1026
  %50 = icmp ult i64 %49, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1063
  br i1 %50, label %62, label %51, !dbg !1063

; <label>:51:                                     ; preds = %48
  %52 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1064, !srcloc !1026
  %53 = icmp ugt i64 %52, ptrtoint ([0 x i8]* @_end to i64), !dbg !1063
  br i1 %53, label %62, label %54, !dbg !1067

; <label>:54:                                     ; preds = %51
  %55 = load i8, i8* %24, align 2, !dbg !1068, !tbaa !1070
  %56 = sext i8 %55 to i32, !dbg !1068
  %57 = load i8, i8* %25, align 1, !dbg !1068, !tbaa !1070
  %58 = sext i8 %57 to i32, !dbg !1068
  %59 = load i8, i8* %26, align 8, !dbg !1068, !tbaa !1071
  %60 = zext i8 %59 to i32, !dbg !1068
  %61 = load i32, i32* %5, align 4, !dbg !1068, !tbaa !1036
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__uknetdev_input.__str, i64 0, i64 0), i32 %56, i32 %58, i32 %60, i32 %61) #9, !dbg !1068
  br label %77, !dbg !1068

; <label>:62:                                     ; preds = %51, %48
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1072, !srcloc !1026
  %64 = and i64 %63, -65536, !dbg !1077
  %65 = or i64 %64, 4097, !dbg !1077
  %66 = add nsw i64 %65, -1, !dbg !1077
  %67 = inttoptr i64 %66 to i32*, !dbg !1078
  %68 = load i32, i32* %67, align 4096, !dbg !1079, !tbaa !1036
  %69 = load i8, i8* %25, align 1, !dbg !1080, !tbaa !1070
  %70 = sext i8 %69 to i64, !dbg !1080
  %71 = load i8, i8* %26, align 8, !dbg !1080, !tbaa !1071
  %72 = zext i8 %71 to i64, !dbg !1080
  %73 = load i32, i32* %5, align 4, !dbg !1080, !tbaa !1036
  %74 = sext i32 %73 to i64, !dbg !1080
  %75 = load i8, i8* %24, align 2, !dbg !1080, !tbaa !1070
  %76 = sext i8 %75 to i64, !dbg !1080
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_crit\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([49 x i8]* @__uknetdev_input.__str.4 to i64), i64 %76, i64 %70, i64 %72, i64 %74, i32 %68, void (i8*, ...)* nonnull @uk_pr_crit) #8, !dbg !1080, !srcloc !1081
  br label %77

; <label>:77:                                     ; preds = %62, %54
  call void @netif_set_down(%struct.netif* nonnull %6) #11, !dbg !1082
  br label %179, !dbg !1083

; <label>:78:                                     ; preds = %45
  %79 = and i32 %46, -2147483647, !dbg !1084
  %80 = icmp eq i32 %79, 0, !dbg !1084
  br i1 %80, label %179, label %81, !dbg !1086

; <label>:81:                                     ; preds = %78
  %82 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1087, !tbaa !1088
  %83 = icmp eq %struct.uk_netbuf* %82, null, !dbg !1097
  br i1 %83, label %84, label %85, !dbg !1100, !prof !996

; <label>:84:                                     ; preds = %81
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !1101
  call void @ukplat_terminate(i32 3) #10, !dbg !1101
  unreachable, !dbg !1101

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %82, i64 0, i32 5, !dbg !1110
  %87 = load i8*, i8** %86, align 8, !dbg !1110, !tbaa !1111
  %88 = icmp eq i8* %87, null, !dbg !1115
  br i1 %88, label %89, label %90, !dbg !1118, !prof !996

; <label>:89:                                     ; preds = %85
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !1119
  call void @ukplat_terminate(i32 3) #10, !dbg !1119
  unreachable, !dbg !1119

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds i8, i8* %87, i64 21, !dbg !1122
  %92 = load i8, i8* %91, align 1, !dbg !1122, !tbaa !1125
  %93 = and i8 %92, 2, !dbg !1122
  %94 = icmp eq i8 %93, 0, !dbg !1122
  br i1 %94, label %95, label %96, !dbg !1129, !prof !996

; <label>:95:                                     ; preds = %90
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !1130
  call void @ukplat_terminate(i32 3) #10, !dbg !1130
  unreachable, !dbg !1130

; <label>:96:                                     ; preds = %90
  %97 = bitcast i8* %87 to %struct.pbuf*, !dbg !1122
  %98 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %82, i64 0, i32 2, !dbg !1133
  %99 = bitcast i8** %98 to i64*, !dbg !1133
  %100 = load i64, i64* %99, align 8, !dbg !1133, !tbaa !1134
  %101 = getelementptr inbounds i8, i8* %87, i64 8, !dbg !1135
  %102 = bitcast i8* %101 to i64*, !dbg !1136
  store i64 %100, i64* %102, align 8, !dbg !1136, !tbaa !1137
  %103 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1138, !tbaa !1088
  %104 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %103, i64 0, i32 3, !dbg !1139
  %105 = load i16, i16* %104, align 8, !dbg !1139, !tbaa !1140
  %106 = getelementptr inbounds i8, i8* %87, i64 18, !dbg !1141
  %107 = bitcast i8* %106 to i16*, !dbg !1141
  store i16 %105, i16* %107, align 2, !dbg !1142, !tbaa !1143
  %108 = getelementptr inbounds i8, i8* %87, i64 16, !dbg !1144
  %109 = bitcast i8* %108 to i16*, !dbg !1144
  store i16 %105, i16* %109, align 8, !dbg !1145, !tbaa !1146
  %110 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1147, !tbaa !1008
  %111 = call signext i8 %110(%struct.pbuf* %97, %struct.netif* nonnull %6) #11, !dbg !1148
  switch i8 %111, label %144 [
    i8 0, label %175
    i8 -1, label %112
  ], !dbg !1150, !prof !1151

; <label>:112:                                    ; preds = %96
  %113 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1152, !srcloc !1026
  %114 = icmp ult i64 %113, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1155
  br i1 %114, label %133, label %115, !dbg !1155

; <label>:115:                                    ; preds = %112
  %116 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1156, !srcloc !1026
  %117 = icmp ugt i64 %116, ptrtoint ([0 x i8]* @_end to i64), !dbg !1155
  br i1 %117, label %133, label %118, !dbg !1159

; <label>:118:                                    ; preds = %115
  %119 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1160, !srcloc !1026
  %120 = and i64 %119, -65536, !dbg !1177
  %121 = inttoptr i64 %120 to %struct.uk_thread**, !dbg !1178
  %122 = load %struct.uk_thread*, %struct.uk_thread** %121, align 65536, !dbg !1180, !tbaa !1088
  %123 = icmp eq %struct.uk_thread* %122, null, !dbg !1182
  br i1 %123, label %124, label %125, !dbg !1185, !prof !996

; <label>:124:                                    ; preds = %118
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !1186
  call void @ukplat_terminate(i32 3) #10, !dbg !1186
  unreachable, !dbg !1186

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %122, i64 0, i32 9, !dbg !1188
  %127 = load %struct.uk_sched*, %struct.uk_sched** %126, align 8, !dbg !1188, !tbaa !1189
  %128 = icmp eq %struct.uk_sched* %127, null, !dbg !1195
  br i1 %128, label %129, label %130, !dbg !1198, !prof !996

; <label>:129:                                    ; preds = %125
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !1199
  call void @ukplat_terminate(i32 3) #10, !dbg !1199
  unreachable, !dbg !1199

; <label>:130:                                    ; preds = %125
  %131 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %127, i64 0, i32 0, !dbg !1201
  %132 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %131, align 8, !dbg !1201, !tbaa !1202
  call void %132(%struct.uk_sched* nonnull %127) #11, !dbg !1206
  br label %140, !dbg !1207

; <label>:133:                                    ; preds = %115, %112
  %134 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1208, !srcloc !1026
  %135 = and i64 %134, -65536, !dbg !1213
  %136 = or i64 %135, 4097, !dbg !1213
  %137 = add nsw i64 %136, -1, !dbg !1213
  %138 = inttoptr i64 %137 to i32*, !dbg !1214
  %139 = load i32, i32* %138, align 4096, !dbg !1215, !tbaa !1036
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_yield\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %139, void ()* nonnull @uk_sched_yield) #8, !dbg !1216, !srcloc !1217
  br label %140

; <label>:140:                                    ; preds = %133, %130
  %141 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1218, !tbaa !1008
  %142 = call signext i8 %141(%struct.pbuf* %97, %struct.netif* nonnull %6) #11, !dbg !1219
  %143 = icmp eq i8 %142, 0, !dbg !1220
  br i1 %143, label %175, label %144, !dbg !1222, !prof !1223

; <label>:144:                                    ; preds = %96, %140
  %145 = phi i8 [ %142, %140 ], [ %111, %96 ], !dbg !1224
  %146 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1225, !srcloc !1026
  %147 = icmp ult i64 %146, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1228
  br i1 %147, label %159, label %148, !dbg !1228

; <label>:148:                                    ; preds = %144
  %149 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1229, !srcloc !1026
  %150 = icmp ugt i64 %149, ptrtoint ([0 x i8]* @_end to i64), !dbg !1228
  br i1 %150, label %159, label %151, !dbg !1232

; <label>:151:                                    ; preds = %148
  %152 = load i8, i8* %24, align 2, !dbg !1233, !tbaa !1070
  %153 = sext i8 %152 to i32, !dbg !1233
  %154 = load i8, i8* %25, align 1, !dbg !1233, !tbaa !1070
  %155 = sext i8 %154 to i32, !dbg !1233
  %156 = load i8, i8* %26, align 8, !dbg !1233, !tbaa !1071
  %157 = zext i8 %156 to i32, !dbg !1233
  %158 = sext i8 %145 to i32, !dbg !1233
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__uknetdev_input.__str.5, i64 0, i64 0), i32 %153, i32 %155, i32 %157, i32 %158) #9, !dbg !1233
  br label %173, !dbg !1233

; <label>:159:                                    ; preds = %148, %144
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1235, !srcloc !1026
  %161 = and i64 %160, -65536, !dbg !1240
  %162 = or i64 %161, 4097, !dbg !1240
  %163 = add nsw i64 %162, -1, !dbg !1240
  %164 = inttoptr i64 %163 to i32*, !dbg !1241
  %165 = load i32, i32* %164, align 4096, !dbg !1242, !tbaa !1036
  %166 = load i8, i8* %25, align 1, !dbg !1243, !tbaa !1070
  %167 = sext i8 %166 to i64, !dbg !1243
  %168 = load i8, i8* %26, align 8, !dbg !1243, !tbaa !1071
  %169 = zext i8 %168 to i64, !dbg !1243
  %170 = sext i8 %145 to i64, !dbg !1243
  %171 = load i8, i8* %24, align 2, !dbg !1243, !tbaa !1070
  %172 = sext i8 %171 to i64, !dbg !1243
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([46 x i8]* @__uknetdev_input.__str.6 to i64), i64 %172, i64 %167, i64 %169, i64 %170, i32 %165, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1243, !srcloc !1244
  br label %173

; <label>:173:                                    ; preds = %159, %151
  %174 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1245, !tbaa !1088
  call void @uk_netbuf_free_single(%struct.uk_netbuf* %174) #11, !dbg !1246
  br label %175, !dbg !1247

; <label>:175:                                    ; preds = %96, %173, %140
  %176 = load i32, i32* %5, align 4, !dbg !1248, !tbaa !1036
  %177 = and i32 %176, -2147483645, !dbg !1248
  %178 = icmp eq i32 %177, 3, !dbg !1248
  br i1 %178, label %28, label %179, !dbg !1249, !llvm.loop !1250

; <label>:179:                                    ; preds = %78, %175, %77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1253
  ret void, !dbg !1253
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) #3 !dbg !898 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1255
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !1255
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1257
  call void @llvm.va_start(i8* nonnull %3), !dbg !1257
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.14, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !1258
  call void @llvm.va_end(i8* nonnull %3), !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !1262
  ret void, !dbg !1262
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_rx_one(%struct.uk_netdev*, i16 zeroext, %struct.uk_netbuf**) #3 !dbg !1263 {
  %4 = icmp eq %struct.uk_netdev* %0, null, !dbg !1274
  br i1 %4, label %5, label %6, !dbg !1277, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1278
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1278
  unreachable, !dbg !1278

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 1, !dbg !1280
  %8 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)** %7, align 8, !dbg !1280, !tbaa !1283
  %9 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)* %8, null, !dbg !1280
  br i1 %9, label %10, label %11, !dbg !1285, !prof !996

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !1286
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1286
  unreachable, !dbg !1286

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i16 %1, 0, !dbg !1288
  br i1 %12, label %14, label %13, !dbg !1291, !prof !1223

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !1292
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1292
  unreachable, !dbg !1292

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !1294
  %16 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %15, align 8, !dbg !1294, !tbaa !1297
  %17 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %16, i64 0, i32 0, !dbg !1294
  %18 = load i32, i32* %17, align 8, !dbg !1294, !tbaa !1298
  %19 = icmp eq i32 %18, 3, !dbg !1294
  br i1 %19, label %21, label %20, !dbg !1300, !prof !1223

; <label>:20:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !1301
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1301
  unreachable, !dbg !1301

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 4, i64 0, !dbg !1303
  %23 = bitcast %struct.uk_netdev_rx_queue** %22 to i64*, !dbg !1303
  %24 = load i64, i64* %23, align 8, !dbg !1303, !tbaa !1088
  %25 = add i64 %24, 512, !dbg !1303
  %26 = icmp ult i64 %25, 513, !dbg !1303
  %27 = inttoptr i64 %24 to %struct.uk_netdev_rx_queue*, !dbg !1306
  br i1 %26, label %28, label %29, !dbg !1306, !prof !996

; <label>:28:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !1307
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1307
  unreachable, !dbg !1307

; <label>:29:                                     ; preds = %21
  %30 = icmp eq %struct.uk_netbuf** %2, null, !dbg !1309
  br i1 %30, label %31, label %32, !dbg !1312, !prof !996

; <label>:31:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !1313
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1313
  unreachable, !dbg !1313

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 %8(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_rx_queue* %27, %struct.uk_netbuf** nonnull %2) #11, !dbg !1315
  ret i32 %33, !dbg !1316
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @netif_set_down(%struct.netif*) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_sched_yield() #3 !dbg !1169 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1317, !srcloc !1026
  %2 = and i64 %1, -65536, !dbg !1322
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !1323
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !1325, !tbaa !1088
  %5 = icmp eq %struct.uk_thread* %4, null, !dbg !1327
  br i1 %5, label %6, label %7, !dbg !1328, !prof !996

; <label>:6:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !1329
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1329
  unreachable, !dbg !1329

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %4, i64 0, i32 9, !dbg !1330
  %9 = load %struct.uk_sched*, %struct.uk_sched** %8, align 8, !dbg !1330, !tbaa !1189
  %10 = icmp eq %struct.uk_sched* %9, null, !dbg !1332
  br i1 %10, label %11, label %12, !dbg !1333, !prof !996

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1334
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1334
  unreachable, !dbg !1334

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %9, i64 0, i32 0, !dbg !1335
  %14 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %13, align 8, !dbg !1335, !tbaa !1202
  tail call void %14(%struct.uk_sched* nonnull %9) #11, !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) #3 !dbg !922 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1339
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !1339
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1341
  call void @llvm.va_start(i8* nonnull %3), !dbg !1341
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_err.__str.26, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !1342
  call void @llvm.va_end(i8* nonnull %3), !dbg !1345
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !1346
  ret void, !dbg !1346
}

; Function Attrs: noredzone
declare dso_local void @uk_netbuf_free_single(%struct.uk_netbuf*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @uknetdev_poll(%struct.netif*) local_unnamed_addr #0 !dbg !1347 {
  %2 = icmp eq %struct.netif* %0, null, !dbg !1352
  br i1 %2, label %3, label %4, !dbg !1355, !prof !996

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1356
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1356
  unreachable, !dbg !1356

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 0, !dbg !1358
  %6 = load i8, i8* %5, align 2, !dbg !1358, !tbaa !1070
  %7 = icmp eq i8 %6, 101, !dbg !1358
  br i1 %7, label %9, label %8, !dbg !1361, !prof !1223

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !1362
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1362
  unreachable, !dbg !1362

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 1, !dbg !1364
  %11 = load i8, i8* %10, align 1, !dbg !1364, !tbaa !1070
  %12 = icmp eq i8 %11, 110, !dbg !1364
  br i1 %12, label %14, label %13, !dbg !1367, !prof !1223

; <label>:13:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !1368
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1368
  unreachable, !dbg !1368

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !1370
  %16 = bitcast i8** %15 to %struct.uk_netdev**, !dbg !1370
  %17 = load %struct.uk_netdev*, %struct.uk_netdev** %16, align 8, !dbg !1370, !tbaa !1371
  %18 = icmp eq %struct.uk_netdev* %17, null, !dbg !1373
  br i1 %18, label %19, label %20, !dbg !1376, !prof !996

; <label>:19:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1377
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1377
  unreachable, !dbg !1377

; <label>:20:                                     ; preds = %14
  %21 = bitcast %struct.netif* %0 to i8*, !dbg !1379
  tail call void @__uknetdev_input(%struct.uk_netdev* nonnull %17, i16 zeroext undef, i8* %21) #9, !dbg !1380
  ret void, !dbg !1381
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @___poll_netif(i8*) #6 !dbg !1382 {
  %2 = bitcast i8* %0 to %struct.netif*, !dbg !1394
  br label %3, !dbg !1396

; <label>:3:                                      ; preds = %31, %1
  tail call void @uknetdev_poll(%struct.netif* %2) #9, !dbg !1397
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1398, !srcloc !1026
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1401
  br i1 %5, label %24, label %6, !dbg !1401

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1402, !srcloc !1026
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !1401
  br i1 %8, label %24, label %9, !dbg !1405

; <label>:9:                                      ; preds = %6
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1406, !srcloc !1026
  %11 = and i64 %10, -65536, !dbg !1413
  %12 = inttoptr i64 %11 to %struct.uk_thread**, !dbg !1414
  %13 = load %struct.uk_thread*, %struct.uk_thread** %12, align 65536, !dbg !1416, !tbaa !1088
  %14 = icmp eq %struct.uk_thread* %13, null, !dbg !1418
  br i1 %14, label %15, label %16, !dbg !1419, !prof !996

; <label>:15:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !1420
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1420
  unreachable, !dbg !1420

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %13, i64 0, i32 9, !dbg !1421
  %18 = load %struct.uk_sched*, %struct.uk_sched** %17, align 8, !dbg !1421, !tbaa !1189
  %19 = icmp eq %struct.uk_sched* %18, null, !dbg !1423
  br i1 %19, label %20, label %21, !dbg !1424, !prof !996

; <label>:20:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !1425
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1425
  unreachable, !dbg !1425

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %18, i64 0, i32 0, !dbg !1426
  %23 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %22, align 8, !dbg !1426, !tbaa !1202
  tail call void %23(%struct.uk_sched* nonnull %18) #11, !dbg !1427
  br label %31, !dbg !1428

; <label>:24:                                     ; preds = %6, %3
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1429, !srcloc !1026
  %26 = and i64 %25, -65536, !dbg !1434
  %27 = or i64 %26, 4097, !dbg !1434
  %28 = add nsw i64 %27, -1, !dbg !1434
  %29 = inttoptr i64 %28 to i32*, !dbg !1435
  %30 = load i32, i32* %29, align 4096, !dbg !1436, !tbaa !1036
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_yield\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %30, void ()* nonnull @uk_sched_yield) #8, !dbg !1437, !srcloc !1438
  br label %31

; <label>:31:                                     ; preds = %24, %21
  br label %3, !dbg !1397, !llvm.loop !1439
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @uknetdev_init(%struct.netif*) #0 !dbg !1441 {
  %2 = alloca %struct.uk_netdev*, align 8
  %3 = alloca %struct.uk_netdev_conf, align 2
  %4 = alloca %struct.uk_netdev_rxqueue_conf, align 8
  %5 = alloca %struct.uk_netdev_txqueue_conf, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwip_netdev_data*, align 8
  %8 = alloca %struct.uk_hwaddr*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.uk_netdev** %2 to i8*, !dbg !1535
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !1535
  %11 = ptrtoint %struct.uk_netdev** %2 to i64, !dbg !1536
  %12 = add i64 %11, 65536, !dbg !1537
  %13 = inttoptr i64 %12 to %struct.uk_netdev**, !dbg !1538
  %14 = bitcast %struct.uk_netdev_conf* %3 to i8*, !dbg !1540
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #8, !dbg !1540
  %15 = ptrtoint %struct.uk_netdev_conf* %3 to i64, !dbg !1541
  %16 = add i64 %15, 65536, !dbg !1542
  %17 = inttoptr i64 %16 to %struct.uk_netdev_conf*, !dbg !1543
  %18 = bitcast %struct.uk_netdev_rxqueue_conf* %4 to i8*, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #8, !dbg !1545
  %19 = ptrtoint %struct.uk_netdev_rxqueue_conf* %4 to i64, !dbg !1546
  %20 = add i64 %19, 65536, !dbg !1547
  %21 = inttoptr i64 %20 to %struct.uk_netdev_rxqueue_conf*, !dbg !1548
  %22 = bitcast %struct.uk_netdev_txqueue_conf* %5 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !1550
  %23 = ptrtoint %struct.uk_netdev_txqueue_conf* %5 to i64, !dbg !1551
  %24 = add i64 %23, 65536, !dbg !1552
  %25 = inttoptr i64 %24 to %struct.uk_netdev_txqueue_conf*, !dbg !1553
  %26 = bitcast i32* %6 to i8*, !dbg !1555
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #8, !dbg !1555
  %27 = bitcast %struct.lwip_netdev_data** %7 to i8*, !dbg !1556
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #8, !dbg !1556
  %28 = bitcast %struct.uk_hwaddr** %8 to i8*, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #8, !dbg !1557
  %29 = bitcast i32* %9 to i8*, !dbg !1558
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #8, !dbg !1558
  %30 = icmp eq %struct.netif* %0, null, !dbg !1559
  br i1 %30, label %31, label %32, !dbg !1562, !prof !996

; <label>:31:                                     ; preds = %1
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1563
  call void @ukplat_terminate(i32 3) #10, !dbg !1563
  unreachable, !dbg !1563

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !1565
  %34 = bitcast i8** %33 to %struct.uk_netdev**, !dbg !1565
  %35 = load %struct.uk_netdev*, %struct.uk_netdev** %34, align 8, !dbg !1565, !tbaa !1371
  store %struct.uk_netdev* %35, %struct.uk_netdev** %13, align 8, !dbg !1566, !tbaa !1088
  %36 = icmp eq %struct.uk_netdev* %35, null, !dbg !1567
  br i1 %36, label %37, label %38, !dbg !1570, !prof !996

; <label>:37:                                     ; preds = %32
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !1571
  call void @ukplat_terminate(i32 3) #10, !dbg !1571
  unreachable, !dbg !1571

; <label>:38:                                     ; preds = %32
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1573, !srcloc !1026
  %40 = icmp ult i64 %39, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1576
  br i1 %40, label %50, label %41, !dbg !1576

; <label>:41:                                     ; preds = %38
  %42 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1577, !srcloc !1026
  %43 = icmp ugt i64 %42, ptrtoint ([0 x i8]* @_end to i64), !dbg !1576
  br i1 %43, label %50, label %44, !dbg !1580

; <label>:44:                                     ; preds = %41
  %45 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1581, !tbaa !1088
  %46 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %45, i64 0, i32 8, !dbg !1590
  %47 = bitcast i8** %46 to i64*, !dbg !1590
  %48 = load i64, i64* %47, align 8, !dbg !1590, !tbaa !1591
  %49 = bitcast %struct.lwip_netdev_data** %7 to i64*, !dbg !1581
  store i64 %48, i64* %49, align 8, !dbg !1581, !tbaa !1088
  br label %60, !dbg !1581

; <label>:50:                                     ; preds = %41, %38
  %51 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1593, !srcloc !1026
  %52 = and i64 %51, -65536, !dbg !1598
  %53 = or i64 %52, 4097, !dbg !1598
  %54 = add nsw i64 %53, -1, !dbg !1598
  %55 = inttoptr i64 %54 to i32*, !dbg !1599
  %56 = load i32, i32* %55, align 4096, !dbg !1600, !tbaa !1036
  %57 = inttoptr i64 %12 to i64*, !dbg !1601
  %58 = load i64, i64* %57, align 8, !dbg !1601, !tbaa !1088
  %59 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %58, i32 %56, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #8, !dbg !1601, !srcloc !1602
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %7, i64 %59) #8, !dbg !1603, !srcloc !1607
  br label %60

; <label>:60:                                     ; preds = %44, %50
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 8, !dbg !1608
  %62 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %61, align 8, !dbg !1608, !tbaa !1008
  %63 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %62, null, !dbg !1608
  br i1 %63, label %64, label %65, !dbg !1611

; <label>:64:                                     ; preds = %60
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !1612
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !1615
  call void @ukplat_terminate(i32 3) #10, !dbg !1615
  unreachable, !dbg !1615

; <label>:65:                                     ; preds = %60
  %66 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1619, !srcloc !1026
  %67 = icmp ult i64 %66, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1622
  br i1 %67, label %74, label %68, !dbg !1622

; <label>:68:                                     ; preds = %65
  %69 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1623, !srcloc !1026
  %70 = icmp ugt i64 %69, ptrtoint ([0 x i8]* @_end to i64), !dbg !1622
  br i1 %70, label %74, label %71, !dbg !1626

; <label>:71:                                     ; preds = %68
  %72 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1627, !tbaa !1088
  %73 = call i32 @uk_netdev_state_get(%struct.uk_netdev* %72) #11, !dbg !1627
  store i32 %73, i32* %6, align 4, !dbg !1627, !tbaa !1070
  br label %85, !dbg !1627

; <label>:74:                                     ; preds = %68, %65
  %75 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1630, !srcloc !1026
  %76 = and i64 %75, -65536, !dbg !1635
  %77 = or i64 %76, 4097, !dbg !1635
  %78 = add nsw i64 %77, -1, !dbg !1635
  %79 = inttoptr i64 %78 to i32*, !dbg !1636
  %80 = load i32, i32* %79, align 4096, !dbg !1637, !tbaa !1036
  %81 = inttoptr i64 %12 to i64*, !dbg !1638
  %82 = load i64, i64* %81, align 8, !dbg !1638, !tbaa !1088
  %83 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_state_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %82, i32 %80, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_state_get) #8, !dbg !1638, !srcloc !1639
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %83) #8, !dbg !1640, !srcloc !1643
  %84 = load i32, i32* %6, align 4, !dbg !1644, !tbaa !1070
  br label %85

; <label>:85:                                     ; preds = %74, %71
  %86 = phi i32 [ %84, %74 ], [ %73, %71 ], !dbg !1644
  %87 = icmp eq i32 %86, 1, !dbg !1646
  br i1 %87, label %88, label %328, !dbg !1647

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 0, !dbg !1648
  store i8 101, i8* %89, align 2, !dbg !1649, !tbaa !1070
  %90 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 1, !dbg !1650
  store i8 110, i8* %90, align 1, !dbg !1651, !tbaa !1070
  %91 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1652, !tbaa !1088
  %92 = icmp eq %struct.uk_alloc* %91, null, !dbg !1653
  br i1 %92, label %328, label %93, !dbg !1655

; <label>:93:                                     ; preds = %88
  %94 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1656, !srcloc !1026
  %95 = icmp ult i64 %94, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1659
  br i1 %95, label %103, label %96, !dbg !1659

; <label>:96:                                     ; preds = %93
  %97 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1660, !srcloc !1026
  %98 = icmp ugt i64 %97, ptrtoint ([0 x i8]* @_end to i64), !dbg !1659
  br i1 %98, label %103, label %99, !dbg !1663

; <label>:99:                                     ; preds = %96
  %100 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1664, !tbaa !1088
  %101 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1664, !tbaa !1088
  %102 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %101, i64 0, i32 1, !dbg !1664
  call void @uk_netdev_info_get(%struct.uk_netdev* %100, %struct.uk_netdev_info* nonnull %102) #11, !dbg !1664
  br label %115, !dbg !1664

; <label>:103:                                    ; preds = %96, %93
  %104 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1666, !srcloc !1026
  %105 = and i64 %104, -65536, !dbg !1671
  %106 = or i64 %105, 4097, !dbg !1671
  %107 = add nsw i64 %106, -1, !dbg !1671
  %108 = inttoptr i64 %107 to i32*, !dbg !1672
  %109 = load i32, i32* %108, align 4096, !dbg !1673, !tbaa !1036
  %110 = inttoptr i64 %12 to i64*, !dbg !1674
  %111 = load i64, i64* %110, align 8, !dbg !1674, !tbaa !1088
  %112 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1674, !tbaa !1088
  %113 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %112, i64 0, i32 1, !dbg !1674
  %114 = ptrtoint %struct.uk_netdev_info* %113 to i64, !dbg !1674
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_info_get\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %111, i64 %114, i32 %109, void (%struct.uk_netdev*, %struct.uk_netdev_info*)* nonnull @uk_netdev_info_get) #8, !dbg !1674, !srcloc !1675
  br label %115

; <label>:115:                                    ; preds = %103, %99
  %116 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1676, !tbaa !1088
  %117 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 1, i32 0, !dbg !1678
  %118 = load i16, i16* %117, align 8, !dbg !1678, !tbaa !1679
  %119 = icmp eq i16 %118, 0, !dbg !1676
  br i1 %119, label %328, label %120, !dbg !1682

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 1, i32 1, !dbg !1683
  %122 = load i16, i16* %121, align 2, !dbg !1683, !tbaa !1684
  %123 = icmp eq i16 %122, 0, !dbg !1685
  br i1 %123, label %328, label %124, !dbg !1686

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 0, !dbg !1687
  store %struct.uk_alloc* %91, %struct.uk_alloc** %125, align 8, !dbg !1688, !tbaa !1689
  %126 = getelementptr inbounds %struct.uk_netdev_conf, %struct.uk_netdev_conf* %17, i64 0, i32 0, !dbg !1690
  store i16 1, i16* %126, align 2, !dbg !1691, !tbaa !1692
  %127 = getelementptr inbounds %struct.uk_netdev_conf, %struct.uk_netdev_conf* %17, i64 0, i32 1, !dbg !1694
  store i16 1, i16* %127, align 2, !dbg !1695, !tbaa !1696
  %128 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1697, !srcloc !1026
  %129 = icmp ult i64 %128, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1700
  br i1 %129, label %136, label %130, !dbg !1700

; <label>:130:                                    ; preds = %124
  %131 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1701, !srcloc !1026
  %132 = icmp ugt i64 %131, ptrtoint ([0 x i8]* @_end to i64), !dbg !1700
  br i1 %132, label %136, label %133, !dbg !1704

; <label>:133:                                    ; preds = %130
  %134 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1705, !tbaa !1088
  %135 = call i32 @uk_netdev_configure(%struct.uk_netdev* %134, %struct.uk_netdev_conf* nonnull %17) #11, !dbg !1705
  store i32 %135, i32* %9, align 4, !dbg !1705, !tbaa !1036
  br label %147, !dbg !1705

; <label>:136:                                    ; preds = %130, %124
  %137 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1708, !srcloc !1026
  %138 = and i64 %137, -65536, !dbg !1713
  %139 = or i64 %138, 4097, !dbg !1713
  %140 = add nsw i64 %139, -1, !dbg !1713
  %141 = inttoptr i64 %140 to i32*, !dbg !1714
  %142 = load i32, i32* %141, align 4096, !dbg !1715, !tbaa !1036
  %143 = inttoptr i64 %12 to i64*, !dbg !1716
  %144 = load i64, i64* %143, align 8, !dbg !1716, !tbaa !1088
  %145 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %144, i64 %16, i32 %142, i32 (%struct.uk_netdev*, %struct.uk_netdev_conf*)* nonnull @uk_netdev_configure) #8, !dbg !1716, !srcloc !1717
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %145) #8, !dbg !1718, !srcloc !1721
  %146 = load i32, i32* %9, align 4, !dbg !1722, !tbaa !1036
  br label %147

; <label>:147:                                    ; preds = %136, %133
  %148 = phi i32 [ %146, %136 ], [ %135, %133 ], !dbg !1722
  %149 = icmp slt i32 %148, 0, !dbg !1724
  br i1 %149, label %328, label %150, !dbg !1725

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 2, !dbg !1726
  store %struct.uk_alloc* %91, %struct.uk_alloc** %151, align 8, !dbg !1727, !tbaa !1728
  %152 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 3, !dbg !1730
  store i16 (i8*, %struct.uk_netbuf**, i16)* @netif_alloc_rxpkts, i16 (i8*, %struct.uk_netbuf**, i16)** %152, align 8, !dbg !1731, !tbaa !1732
  %153 = bitcast %struct.lwip_netdev_data** %7 to i64*, !dbg !1733
  %154 = load i64, i64* %153, align 8, !dbg !1733, !tbaa !1088
  %155 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 4, !dbg !1734
  %156 = bitcast i8** %155 to i64*, !dbg !1735
  store i64 %154, i64* %156, align 8, !dbg !1735, !tbaa !1736
  %157 = inttoptr i64 %20 to void (%struct.uk_netdev*, i16, i8*)**, !dbg !1737
  store void (%struct.uk_netdev*, i16, i8*)* @uknetdev_input, void (%struct.uk_netdev*, i16, i8*)** %157, align 8, !dbg !1738, !tbaa !1739
  %158 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 1, !dbg !1740
  %159 = bitcast i8** %158 to %struct.netif**, !dbg !1741
  store %struct.netif* %0, %struct.netif** %159, align 8, !dbg !1741, !tbaa !1742
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1743, !srcloc !1026
  %161 = icmp ult i64 %160, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1746
  br i1 %161, label %168, label %162, !dbg !1746

; <label>:162:                                    ; preds = %150
  %163 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1747, !srcloc !1026
  %164 = icmp ugt i64 %163, ptrtoint ([0 x i8]* @_end to i64), !dbg !1746
  br i1 %164, label %168, label %165, !dbg !1750

; <label>:165:                                    ; preds = %162
  %166 = call %struct.uk_sched* @uk_sched_get_default() #11, !dbg !1751
  %167 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 5, !dbg !1751
  store %struct.uk_sched* %166, %struct.uk_sched** %167, align 8, !dbg !1751, !tbaa !1753
  br label %178, !dbg !1751

; <label>:168:                                    ; preds = %162, %150
  %169 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1754, !srcloc !1026
  %170 = and i64 %169, -65536, !dbg !1759
  %171 = or i64 %170, 4097, !dbg !1759
  %172 = add nsw i64 %171, -1, !dbg !1759
  %173 = inttoptr i64 %172 to i32*, !dbg !1760
  %174 = load i32, i32* %173, align 4096, !dbg !1761, !tbaa !1036
  %175 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_get_default\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %174, %struct.uk_sched* ()* nonnull @uk_sched_get_default) #8, !dbg !1762, !srcloc !1763
  %176 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 5, !dbg !1764
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_sched** nonnull %176, i64 %175) #8, !dbg !1764, !srcloc !1768
  %177 = load %struct.uk_sched*, %struct.uk_sched** %176, align 8, !dbg !1769, !tbaa !1753
  br label %178

; <label>:178:                                    ; preds = %168, %165
  %179 = phi %struct.uk_sched* [ %177, %168 ], [ %166, %165 ], !dbg !1769
  %180 = icmp eq %struct.uk_sched* %179, null, !dbg !1771
  br i1 %180, label %328, label %181, !dbg !1772

; <label>:181:                                    ; preds = %178
  %182 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1773, !srcloc !1026
  %183 = icmp ult i64 %182, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1776
  br i1 %183, label %190, label %184, !dbg !1776

; <label>:184:                                    ; preds = %181
  %185 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1777, !srcloc !1026
  %186 = icmp ugt i64 %185, ptrtoint ([0 x i8]* @_end to i64), !dbg !1776
  br i1 %186, label %190, label %187, !dbg !1780

; <label>:187:                                    ; preds = %184
  %188 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1781, !tbaa !1088
  %189 = call i32 @uk_netdev_rxq_configure(%struct.uk_netdev* %188, i16 zeroext 0, i16 zeroext 0, %struct.uk_netdev_rxqueue_conf* nonnull %21) #11, !dbg !1781
  store i32 %189, i32* %9, align 4, !dbg !1781, !tbaa !1036
  br label %201, !dbg !1781

; <label>:190:                                    ; preds = %184, %181
  %191 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1783, !srcloc !1026
  %192 = and i64 %191, -65536, !dbg !1788
  %193 = or i64 %192, 4097, !dbg !1788
  %194 = add nsw i64 %193, -1, !dbg !1788
  %195 = inttoptr i64 %194 to i32*, !dbg !1789
  %196 = load i32, i32* %195, align 4096, !dbg !1790, !tbaa !1036
  %197 = inttoptr i64 %12 to i64*, !dbg !1791
  %198 = load i64, i64* %197, align 8, !dbg !1791, !tbaa !1088
  %199 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rxq_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %198, i64 0, i64 0, i64 %20, i32 %196, i32 (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_rxqueue_conf*)* nonnull @uk_netdev_rxq_configure) #8, !dbg !1791, !srcloc !1792
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %199) #8, !dbg !1793, !srcloc !1796
  %200 = load i32, i32* %9, align 4, !dbg !1797, !tbaa !1036
  br label %201

; <label>:201:                                    ; preds = %190, %187
  %202 = phi i32 [ %200, %190 ], [ %189, %187 ], !dbg !1797
  %203 = icmp slt i32 %202, 0, !dbg !1799
  br i1 %203, label %328, label %204, !dbg !1800

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.uk_netdev_txqueue_conf, %struct.uk_netdev_txqueue_conf* %25, i64 0, i32 0, !dbg !1801
  store %struct.uk_alloc* %91, %struct.uk_alloc** %205, align 8, !dbg !1802, !tbaa !1803
  %206 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1805, !srcloc !1026
  %207 = icmp ult i64 %206, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1808
  br i1 %207, label %214, label %208, !dbg !1808

; <label>:208:                                    ; preds = %204
  %209 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1809, !srcloc !1026
  %210 = icmp ugt i64 %209, ptrtoint ([0 x i8]* @_end to i64), !dbg !1808
  br i1 %210, label %214, label %211, !dbg !1812

; <label>:211:                                    ; preds = %208
  %212 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1813, !tbaa !1088
  %213 = call i32 @uk_netdev_txq_configure(%struct.uk_netdev* %212, i16 zeroext 0, i16 zeroext 0, %struct.uk_netdev_txqueue_conf* nonnull %25) #11, !dbg !1813
  store i32 %213, i32* %9, align 4, !dbg !1813, !tbaa !1036
  br label %225, !dbg !1813

; <label>:214:                                    ; preds = %208, %204
  %215 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1815, !srcloc !1026
  %216 = and i64 %215, -65536, !dbg !1820
  %217 = or i64 %216, 4097, !dbg !1820
  %218 = add nsw i64 %217, -1, !dbg !1820
  %219 = inttoptr i64 %218 to i32*, !dbg !1821
  %220 = load i32, i32* %219, align 4096, !dbg !1822, !tbaa !1036
  %221 = inttoptr i64 %12 to i64*, !dbg !1823
  %222 = load i64, i64* %221, align 8, !dbg !1823, !tbaa !1088
  %223 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_txq_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %222, i64 0, i64 0, i64 %24, i32 %220, i32 (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_txqueue_conf*)* nonnull @uk_netdev_txq_configure) #8, !dbg !1823, !srcloc !1824
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %223) #8, !dbg !1825, !srcloc !1828
  %224 = load i32, i32* %9, align 4, !dbg !1829, !tbaa !1036
  br label %225

; <label>:225:                                    ; preds = %214, %211
  %226 = phi i32 [ %224, %214 ], [ %213, %211 ], !dbg !1829
  %227 = icmp slt i32 %226, 0, !dbg !1831
  br i1 %227, label %328, label %228, !dbg !1832

; <label>:228:                                    ; preds = %225
  %229 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1833, !srcloc !1026
  %230 = icmp ult i64 %229, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1836
  br i1 %230, label %237, label %231, !dbg !1836

; <label>:231:                                    ; preds = %228
  %232 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1837, !srcloc !1026
  %233 = icmp ugt i64 %232, ptrtoint ([0 x i8]* @_end to i64), !dbg !1836
  br i1 %233, label %237, label %234, !dbg !1840

; <label>:234:                                    ; preds = %231
  %235 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1841, !tbaa !1088
  %236 = call i32 @uk_netdev_start(%struct.uk_netdev* %235) #11, !dbg !1841
  store i32 %236, i32* %9, align 4, !dbg !1841, !tbaa !1036
  br label %248, !dbg !1841

; <label>:237:                                    ; preds = %231, %228
  %238 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1843, !srcloc !1026
  %239 = and i64 %238, -65536, !dbg !1848
  %240 = or i64 %239, 4097, !dbg !1848
  %241 = add nsw i64 %240, -1, !dbg !1848
  %242 = inttoptr i64 %241 to i32*, !dbg !1849
  %243 = load i32, i32* %242, align 4096, !dbg !1850, !tbaa !1036
  %244 = inttoptr i64 %12 to i64*, !dbg !1851
  %245 = load i64, i64* %244, align 8, !dbg !1851, !tbaa !1088
  %246 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_start\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %245, i32 %243, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_start) #8, !dbg !1851, !srcloc !1852
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %246) #8, !dbg !1853, !srcloc !1856
  %247 = load i32, i32* %9, align 4, !dbg !1857, !tbaa !1036
  br label %248

; <label>:248:                                    ; preds = %237, %234
  %249 = phi i32 [ %247, %237 ], [ %236, %234 ], !dbg !1857
  %250 = icmp slt i32 %249, 0, !dbg !1859
  br i1 %250, label %328, label %251, !dbg !1860

; <label>:251:                                    ; preds = %248
  %252 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 9, !dbg !1861
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)* @etharp_output, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %252, align 8, !dbg !1862, !tbaa !1863
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 11, !dbg !1864
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)* @ethip6_output, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %253, align 8, !dbg !1865, !tbaa !1866
  %254 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 10, !dbg !1867
  store i8 (%struct.netif*, %struct.pbuf*)* @uknetdev_output, i8 (%struct.netif*, %struct.pbuf*)** %254, align 8, !dbg !1868, !tbaa !1869
  %255 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1870
  %256 = load i8, i8* %255, align 1, !dbg !1870, !tbaa !1872
  %257 = or i8 %256, 14, !dbg !1870
  store i8 %257, i8* %255, align 1, !dbg !1870, !tbaa !1872
  %258 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1873
  store i16 31, i16* %258, align 8, !dbg !1873, !tbaa !1875
  %259 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1876, !srcloc !1026
  %260 = icmp ult i64 %259, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1879
  br i1 %260, label %267, label %261, !dbg !1879

; <label>:261:                                    ; preds = %251
  %262 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1880, !srcloc !1026
  %263 = icmp ugt i64 %262, ptrtoint ([0 x i8]* @_end to i64), !dbg !1879
  br i1 %263, label %267, label %264, !dbg !1883

; <label>:264:                                    ; preds = %261
  %265 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1884, !tbaa !1088
  %266 = call %struct.uk_hwaddr* @uk_netdev_hwaddr_get(%struct.uk_netdev* %265) #11, !dbg !1884
  store %struct.uk_hwaddr* %266, %struct.uk_hwaddr** %8, align 8, !dbg !1884, !tbaa !1088
  br label %278, !dbg !1884

; <label>:267:                                    ; preds = %261, %251
  %268 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1887, !srcloc !1026
  %269 = and i64 %268, -65536, !dbg !1892
  %270 = or i64 %269, 4097, !dbg !1892
  %271 = add nsw i64 %270, -1, !dbg !1892
  %272 = inttoptr i64 %271 to i32*, !dbg !1893
  %273 = load i32, i32* %272, align 4096, !dbg !1894, !tbaa !1036
  %274 = inttoptr i64 %12 to i64*, !dbg !1895
  %275 = load i64, i64* %274, align 8, !dbg !1895, !tbaa !1088
  %276 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_hwaddr_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %275, i32 %273, %struct.uk_hwaddr* (%struct.uk_netdev*)* nonnull @uk_netdev_hwaddr_get) #8, !dbg !1895, !srcloc !1896
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_hwaddr** nonnull %8, i64 %276) #8, !dbg !1897, !srcloc !1901
  %277 = load %struct.uk_hwaddr*, %struct.uk_hwaddr** %8, align 8, !dbg !1902, !tbaa !1088
  br label %278

; <label>:278:                                    ; preds = %264, %267
  %279 = phi %struct.uk_hwaddr* [ %266, %264 ], [ %277, %267 ], !dbg !1902
  %280 = icmp eq %struct.uk_hwaddr* %279, null, !dbg !1902
  br i1 %280, label %281, label %282, !dbg !1905, !prof !996

; <label>:281:                                    ; preds = %278
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !1906
  call void @ukplat_terminate(i32 3) #10, !dbg !1906
  unreachable, !dbg !1906

; <label>:282:                                    ; preds = %278
  %283 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1908
  store i8 6, i8* %283, align 4, !dbg !1909, !tbaa !1910
  %284 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 0, !dbg !1912
  %285 = load i8, i8* %284, align 1, !dbg !1912, !tbaa !1070
  %286 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1915
  store i8 %285, i8* %286, align 1, !dbg !1916, !tbaa !1070
  %287 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 1, !dbg !1912
  %288 = load i8, i8* %287, align 1, !dbg !1912, !tbaa !1070
  %289 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 1, !dbg !1915
  store i8 %288, i8* %289, align 1, !dbg !1916, !tbaa !1070
  %290 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 2, !dbg !1912
  %291 = load i8, i8* %290, align 1, !dbg !1912, !tbaa !1070
  %292 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 2, !dbg !1915
  store i8 %291, i8* %292, align 1, !dbg !1916, !tbaa !1070
  %293 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 3, !dbg !1912
  %294 = load i8, i8* %293, align 1, !dbg !1912, !tbaa !1070
  %295 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 3, !dbg !1915
  store i8 %294, i8* %295, align 1, !dbg !1916, !tbaa !1070
  %296 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 4, !dbg !1912
  %297 = load i8, i8* %296, align 1, !dbg !1912, !tbaa !1070
  %298 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 4, !dbg !1915
  store i8 %297, i8* %298, align 1, !dbg !1916, !tbaa !1070
  %299 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 5, !dbg !1912
  %300 = load i8, i8* %299, align 1, !dbg !1912, !tbaa !1070
  %301 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 5, !dbg !1915
  store i8 %300, i8* %301, align 1, !dbg !1916, !tbaa !1070
  %302 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1917, !srcloc !1026
  %303 = icmp ult i64 %302, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1920
  br i1 %303, label %311, label %304, !dbg !1920

; <label>:304:                                    ; preds = %282
  %305 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1921, !srcloc !1026
  %306 = icmp ugt i64 %305, ptrtoint ([0 x i8]* @_end to i64), !dbg !1920
  br i1 %306, label %311, label %307, !dbg !1924

; <label>:307:                                    ; preds = %304
  %308 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1925, !tbaa !1088
  %309 = call zeroext i16 @uk_netdev_mtu_get(%struct.uk_netdev* %308) #11, !dbg !1925
  %310 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !1925
  store i16 %309, i16* %310, align 2, !dbg !1925, !tbaa !1927
  br label %323, !dbg !1925

; <label>:311:                                    ; preds = %304, %282
  %312 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1928, !srcloc !1026
  %313 = and i64 %312, -65536, !dbg !1933
  %314 = or i64 %313, 4097, !dbg !1933
  %315 = add nsw i64 %314, -1, !dbg !1933
  %316 = inttoptr i64 %315 to i32*, !dbg !1934
  %317 = load i32, i32* %316, align 4096, !dbg !1935, !tbaa !1036
  %318 = inttoptr i64 %12 to i64*, !dbg !1936
  %319 = load i64, i64* %318, align 8, !dbg !1936, !tbaa !1088
  %320 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_mtu_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %319, i32 %317, i16 (%struct.uk_netdev*)* nonnull @uk_netdev_mtu_get) #8, !dbg !1936, !srcloc !1937
  %321 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !1938
  call void asm sideeffect "mov %r11w, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %321, i64 %320) #8, !dbg !1938, !srcloc !1940
  %322 = load i16, i16* %321, align 2, !dbg !1941, !tbaa !1927
  br label %323

; <label>:323:                                    ; preds = %307, %311
  %324 = phi i16 [ %309, %307 ], [ %322, %311 ], !dbg !1941
  %325 = icmp eq i16 %324, 0, !dbg !1941
  br i1 %325, label %326, label %327, !dbg !1944, !prof !996

; <label>:326:                                    ; preds = %323
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !1945
  call void @ukplat_terminate(i32 3) #10, !dbg !1945
  unreachable, !dbg !1945

; <label>:327:                                    ; preds = %323
  call void @netif_set_status_callback(%struct.netif* nonnull %0, void (%struct.netif*)* nonnull @uknetdev_updown) #11, !dbg !1947
  br label %328, !dbg !1948

; <label>:328:                                    ; preds = %248, %225, %201, %178, %147, %115, %120, %88, %85, %327
  %329 = phi i8 [ 0, %327 ], [ -10, %85 ], [ -1, %88 ], [ -12, %120 ], [ -12, %115 ], [ -12, %147 ], [ -12, %178 ], [ -12, %201 ], [ -12, %225 ], [ -12, %248 ], !dbg !1949
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #8, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !1951
  ret i8 %329, !dbg !1951
}

; Function Attrs: noredzone nounwind readonly
define internal %struct.lwip_netdev_data* @_retrieve_scratchpad(%struct.uk_netdev* nocapture readonly) #7 !dbg !1584 {
  %2 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 8, !dbg !1953
  %3 = bitcast i8** %2 to %struct.lwip_netdev_data**, !dbg !1953
  %4 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !1953, !tbaa !1591
  ret %struct.lwip_netdev_data* %4, !dbg !1954
}

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_state_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local void @uk_netdev_info_get(%struct.uk_netdev*, %struct.uk_netdev_info*) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_configure(%struct.uk_netdev*, %struct.uk_netdev_conf*) #5

; Function Attrs: noredzone nounwind
define internal zeroext i16 @netif_alloc_rxpkts(i8* readonly, %struct.uk_netbuf** nocapture, i16 zeroext) #0 !dbg !1955 {
  %4 = icmp eq i8* %0, null, !dbg !1965
  br i1 %4, label %14, label %5, !dbg !1968, !prof !996

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to %struct.uk_alloc**, !dbg !1969
  %7 = icmp eq i16 %2, 0, !dbg !1974
  br i1 %7, label %31, label %8, !dbg !1975

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds i8, i8* %0, i64 22
  %10 = bitcast i8* %9 to i16*
  %11 = getelementptr inbounds i8, i8* %0, i64 20
  %12 = bitcast i8* %11 to i16*
  %13 = zext i16 %2 to i64, !dbg !1975
  br label %15, !dbg !1975

; <label>:14:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !1976
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1976
  unreachable, !dbg !1976

; <label>:15:                                     ; preds = %8, %25
  %16 = phi i64 [ 0, %8 ], [ %26, %25 ]
  %17 = phi i16 [ 0, %8 ], [ %27, %25 ]
  %18 = load %struct.uk_alloc*, %struct.uk_alloc** %6, align 8, !dbg !1969, !tbaa !1689
  %19 = load i16, i16* %10, align 2, !dbg !1978, !tbaa !1979
  %20 = zext i16 %19 to i64, !dbg !1980
  %21 = load i16, i16* %12, align 4, !dbg !1981, !tbaa !1982
  %22 = tail call %struct.uk_netbuf* @lwip_alloc_netbuf(%struct.uk_alloc* %18, i64 2048, i64 %20, i16 zeroext %21) #11, !dbg !1983
  %23 = getelementptr inbounds %struct.uk_netbuf*, %struct.uk_netbuf** %1, i64 %16, !dbg !1984
  store %struct.uk_netbuf* %22, %struct.uk_netbuf** %23, align 8, !dbg !1985, !tbaa !1088
  %24 = icmp eq %struct.uk_netbuf* %22, null, !dbg !1986
  br i1 %24, label %29, label %25, !dbg !1988

; <label>:25:                                     ; preds = %15
  %26 = add nuw nsw i64 %16, 1, !dbg !1989
  %27 = add nuw i16 %17, 1, !dbg !1989
  %28 = icmp ult i64 %26, %13, !dbg !1974
  br i1 %28, label %15, label %31, !dbg !1975, !llvm.loop !1990

; <label>:29:                                     ; preds = %15
  %30 = trunc i64 %16 to i16, !dbg !1988
  br label %31, !dbg !1992

; <label>:31:                                     ; preds = %25, %29, %5
  %32 = phi i16 [ 0, %5 ], [ %30, %29 ], [ %27, %25 ], !dbg !1993
  ret i16 %32, !dbg !1992
}

; Function Attrs: noredzone nounwind
define internal void @uknetdev_input(%struct.uk_netdev*, i16 zeroext, i8*) #0 !dbg !1994 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #8, !dbg !2010, !srcloc !2011
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2028, !srcloc !1026
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2031
  br i1 %5, label %10, label %6, !dbg !2031

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2032, !srcloc !1026
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !2031
  br i1 %8, label %10, label %9, !dbg !2035

; <label>:9:                                      ; preds = %6
  tail call void @__uknetdev_input(%struct.uk_netdev* %0, i16 zeroext undef, i8* %2) #11, !dbg !2036
  br label %20, !dbg !2036

; <label>:10:                                     ; preds = %6, %3
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2038, !srcloc !1026
  %12 = and i64 %11, -65536, !dbg !2043
  %13 = or i64 %12, 4097, !dbg !2043
  %14 = add nsw i64 %13, -1, !dbg !2043
  %15 = inttoptr i64 %14 to i32*, !dbg !2044
  %16 = load i32, i32* %15, align 4096, !dbg !2045, !tbaa !1036
  %17 = ptrtoint i8* %2 to i64, !dbg !2046
  %18 = ptrtoint %struct.uk_netdev* %0 to i64, !dbg !2046
  %19 = zext i16 %1 to i64, !dbg !2046
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call __uknetdev_input\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %18, i64 %19, i64 %17, i32 %16, void (%struct.uk_netdev*, i16, i8*)* nonnull @__uknetdev_input) #8, !dbg !2046, !srcloc !2047
  br label %20

; <label>:20:                                     ; preds = %9, %10
  ret void, !dbg !2048
}

; Function Attrs: noredzone
declare dso_local %struct.uk_sched* @uk_sched_get_default() #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_rxq_configure(%struct.uk_netdev*, i16 zeroext, i16 zeroext, %struct.uk_netdev_rxqueue_conf*) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_txq_configure(%struct.uk_netdev*, i16 zeroext, i16 zeroext, %struct.uk_netdev_txqueue_conf*) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_start(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local signext i8 @etharp_output(%struct.netif*, %struct.pbuf*, %struct.ip4_addr*) #5

; Function Attrs: noredzone
declare dso_local signext i8 @ethip6_output(%struct.netif*, %struct.pbuf*, %struct.ip6_addr*) #5

; Function Attrs: noredzone nounwind
define internal signext i8 @uknetdev_output(%struct.netif* readonly, %struct.pbuf* readonly) #0 !dbg !2049 {
  %3 = alloca %struct.lwip_netdev_data*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.lwip_netdev_data** %3 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !2077
  %6 = bitcast i32* %4 to i8*, !dbg !2078
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !2078
  %7 = icmp eq %struct.netif* %0, null, !dbg !2079
  br i1 %7, label %8, label %9, !dbg !2082, !prof !996

; <label>:8:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2083
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2083
  unreachable, !dbg !2083

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !2085
  %11 = bitcast i8** %10 to %struct.uk_netdev**, !dbg !2085
  %12 = load %struct.uk_netdev*, %struct.uk_netdev** %11, align 8, !dbg !2085, !tbaa !1371
  %13 = icmp eq %struct.uk_netdev* %12, null, !dbg !2087
  br i1 %13, label %14, label %15, !dbg !2090, !prof !996

; <label>:14:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2091
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2091
  unreachable, !dbg !2091

; <label>:15:                                     ; preds = %9
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2093, !srcloc !1026
  %17 = icmp ult i64 %16, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2096
  br i1 %17, label %25, label %18, !dbg !2096

; <label>:18:                                     ; preds = %15
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2097, !srcloc !1026
  %20 = icmp ugt i64 %19, ptrtoint ([0 x i8]* @_end to i64), !dbg !2096
  br i1 %20, label %25, label %21, !dbg !2100

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 8, !dbg !2104
  %23 = bitcast i8** %22 to %struct.lwip_netdev_data**, !dbg !2104
  %24 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %23, align 8, !dbg !2104, !tbaa !1591
  store %struct.lwip_netdev_data* %24, %struct.lwip_netdev_data** %3, align 8, !dbg !2106, !tbaa !1088
  br label %35, !dbg !2106

; <label>:25:                                     ; preds = %18, %15
  %26 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2107, !srcloc !1026
  %27 = and i64 %26, -65536, !dbg !2112
  %28 = or i64 %27, 4097, !dbg !2112
  %29 = add nsw i64 %28, -1, !dbg !2112
  %30 = inttoptr i64 %29 to i32*, !dbg !2113
  %31 = load i32, i32* %30, align 4096, !dbg !2114, !tbaa !1036
  %32 = ptrtoint %struct.uk_netdev* %12 to i64, !dbg !2115
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %32, i32 %31, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #8, !dbg !2115, !srcloc !2116
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %3, i64 %33) #8, !dbg !2117, !srcloc !2121
  %34 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2122, !tbaa !1088
  br label %35

; <label>:35:                                     ; preds = %21, %25
  %36 = phi %struct.lwip_netdev_data* [ %24, %21 ], [ %34, %25 ], !dbg !2122
  %37 = icmp eq %struct.lwip_netdev_data* %36, null, !dbg !2122
  br i1 %37, label %38, label %39, !dbg !2125, !prof !996

; <label>:38:                                     ; preds = %35
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !2126
  call void @ukplat_terminate(i32 3) #10, !dbg !2126
  unreachable, !dbg !2126

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 0, !dbg !2128
  %41 = load %struct.uk_alloc*, %struct.uk_alloc** %40, align 8, !dbg !2128, !tbaa !1689
  %42 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 1, i32 6, !dbg !2129
  %43 = load i16, i16* %42, align 2, !dbg !2129, !tbaa !1979
  %44 = zext i16 %43 to i64, !dbg !2130
  %45 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 1, i32 4, !dbg !2131
  %46 = load i16, i16* %45, align 2, !dbg !2131, !tbaa !2132
  %47 = call %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc* %41, i64 2048, i64 %44, i16 zeroext %46, i64 0, void (%struct.uk_netbuf*)* null) #11, !dbg !2133
  %48 = icmp eq %struct.uk_netbuf* %47, null, !dbg !2135
  br i1 %48, label %138, label %49, !dbg !2137

; <label>:49:                                     ; preds = %39
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !2138
  %51 = load i16, i16* %50, align 8, !dbg !2138, !tbaa !1146
  %52 = zext i16 %51 to i64, !dbg !2138
  %53 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 6, !dbg !2147
  %54 = load i8*, i8** %53, align 8, !dbg !2147, !tbaa !2150
  %55 = icmp eq i8* %54, null, !dbg !2147
  br i1 %55, label %56, label %57, !dbg !2151, !prof !996

; <label>:56:                                     ; preds = %49
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !2152
  call void @ukplat_terminate(i32 3) #10, !dbg !2152
  unreachable, !dbg !2152

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 2, !dbg !2154
  %59 = load i8*, i8** %58, align 8, !dbg !2154, !tbaa !1134
  %60 = icmp eq i8* %59, null, !dbg !2154
  br i1 %60, label %61, label %62, !dbg !2157, !prof !996

; <label>:61:                                     ; preds = %57
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !2158
  call void @ukplat_terminate(i32 3) #10, !dbg !2158
  unreachable, !dbg !2158

; <label>:62:                                     ; preds = %57
  %63 = ptrtoint i8* %54 to i64, !dbg !2160
  %64 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 7, !dbg !2161
  %65 = load i64, i64* %64, align 8, !dbg !2161, !tbaa !2162
  %66 = ptrtoint i8* %59 to i64, !dbg !2163
  %67 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 3, !dbg !2164
  %68 = load i16, i16* %67, align 8, !dbg !2164, !tbaa !1140
  %69 = zext i16 %68 to i64, !dbg !2165
  %70 = sub i64 %63, %66, !dbg !2166
  %71 = add i64 %70, %65, !dbg !2167
  %72 = sub i64 %71, %69, !dbg !2168
  %73 = icmp ult i64 %72, %52, !dbg !2138
  br i1 %73, label %74, label %75, !dbg !2169, !prof !996

; <label>:74:                                     ; preds = %62
  call void @uk_netbuf_free_single(%struct.uk_netbuf* nonnull %47) #11, !dbg !2170
  br label %138, !dbg !2172

; <label>:75:                                     ; preds = %62, %75
  %76 = phi %struct.pbuf* [ %88, %75 ], [ %1, %62 ]
  %77 = phi i8* [ %86, %75 ], [ %59, %62 ]
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i64 0, i32 1, !dbg !2175
  %79 = load i8*, i8** %78, align 8, !dbg !2175, !tbaa !1137
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i64 0, i32 3, !dbg !2179
  %81 = load i16, i16* %80, align 2, !dbg !2179, !tbaa !1143
  %82 = zext i16 %81 to i64, !dbg !2180
  %83 = call i8* @memcpy(i8* %77, i8* %79, i64 %82) #11, !dbg !2181
  %84 = load i16, i16* %80, align 2, !dbg !2182, !tbaa !1143
  %85 = zext i16 %84 to i64, !dbg !2183
  %86 = getelementptr inbounds i8, i8* %77, i64 %85, !dbg !2183
  %87 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i64 0, i32 0, !dbg !2184
  %88 = load %struct.pbuf*, %struct.pbuf** %87, align 8, !dbg !2184, !tbaa !2185
  %89 = icmp eq %struct.pbuf* %88, null, !dbg !2186
  br i1 %89, label %90, label %75, !dbg !2187, !llvm.loop !2188

; <label>:90:                                     ; preds = %75
  %91 = load i16, i16* %50, align 8, !dbg !2190, !tbaa !1146
  store i16 %91, i16* %67, align 8, !dbg !2191, !tbaa !1140
  %92 = ptrtoint %struct.uk_netbuf* %47 to i64
  %93 = ptrtoint %struct.uk_netdev* %12 to i64
  %94 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 0
  %95 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 2
  %96 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 5, i64 0
  %97 = bitcast %struct.uk_netdev_tx_queue** %96 to i64*
  br label %98, !dbg !2192

; <label>:98:                                     ; preds = %131, %90
  %99 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2193, !srcloc !1026
  %100 = icmp ult i64 %99, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2196
  br i1 %100, label %122, label %101, !dbg !2196

; <label>:101:                                    ; preds = %98
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2197, !srcloc !1026
  %103 = icmp ugt i64 %102, ptrtoint ([0 x i8]* @_end to i64), !dbg !2196
  br i1 %103, label %122, label %104, !dbg !2200

; <label>:104:                                    ; preds = %101
  %105 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)** %94, align 8, !dbg !2213, !tbaa !2216
  %106 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)* %105, null, !dbg !2213
  br i1 %106, label %107, label %108, !dbg !2217, !prof !996

; <label>:107:                                    ; preds = %104
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !2218
  call void @ukplat_terminate(i32 3) #10, !dbg !2218
  unreachable, !dbg !2218

; <label>:108:                                    ; preds = %104
  %109 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %95, align 8, !dbg !2220, !tbaa !1297
  %110 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %109, i64 0, i32 0, !dbg !2220
  %111 = load i32, i32* %110, align 8, !dbg !2220, !tbaa !1298
  %112 = icmp eq i32 %111, 3, !dbg !2220
  br i1 %112, label %114, label %113, !dbg !2223, !prof !1223

; <label>:113:                                    ; preds = %108
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !2224
  call void @ukplat_terminate(i32 3) #10, !dbg !2224
  unreachable, !dbg !2224

; <label>:114:                                    ; preds = %108
  %115 = load i64, i64* %97, align 8, !dbg !2226, !tbaa !1088
  %116 = add i64 %115, 512, !dbg !2226
  %117 = icmp ult i64 %116, 513, !dbg !2226
  br i1 %117, label %118, label %119, !dbg !2229, !prof !996

; <label>:118:                                    ; preds = %114
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.32, i64 0, i64 0)) #11, !dbg !2230
  call void @ukplat_terminate(i32 3) #10, !dbg !2230
  unreachable, !dbg !2230

; <label>:119:                                    ; preds = %114
  %120 = inttoptr i64 %115 to %struct.uk_netdev_tx_queue*, !dbg !2229
  %121 = call i32 %105(%struct.uk_netdev* nonnull %12, %struct.uk_netdev_tx_queue* %120, %struct.uk_netbuf* nonnull %47) #11, !dbg !2232
  store i32 %121, i32* %4, align 4, !dbg !2234, !tbaa !1036
  br label %131, !dbg !2234

; <label>:122:                                    ; preds = %101, %98
  %123 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2235, !srcloc !1026
  %124 = and i64 %123, -65536, !dbg !2240
  %125 = or i64 %124, 4097, !dbg !2240
  %126 = add nsw i64 %125, -1, !dbg !2240
  %127 = inttoptr i64 %126 to i32*, !dbg !2241
  %128 = load i32, i32* %127, align 4096, !dbg !2242, !tbaa !1036
  %129 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_tx_one\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %93, i64 0, i64 %92, i32 %128, i32 (%struct.uk_netdev*, i16, %struct.uk_netbuf*)* nonnull @uk_netdev_tx_one) #8, !dbg !2243, !srcloc !2244
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %129) #8, !dbg !2245, !srcloc !2248
  %130 = load i32, i32* %4, align 4, !dbg !2249, !tbaa !1036
  br label %131

; <label>:131:                                    ; preds = %119, %122
  %132 = phi i32 [ %121, %119 ], [ %130, %122 ], !dbg !2249
  %133 = and i32 %132, -2147483647, !dbg !2249
  %134 = icmp eq i32 %133, 0, !dbg !2249
  br i1 %134, label %98, label %135, !dbg !2250, !llvm.loop !2251

; <label>:135:                                    ; preds = %131
  %136 = icmp slt i32 %132, 0, !dbg !2253
  br i1 %136, label %137, label %138, !dbg !2255, !prof !996

; <label>:137:                                    ; preds = %135
  call void @uk_netbuf_free_single(%struct.uk_netbuf* nonnull %47) #11, !dbg !2256
  br label %138, !dbg !2258

; <label>:138:                                    ; preds = %135, %39, %137, %74
  %139 = phi i8 [ -1, %74 ], [ -12, %137 ], [ -1, %39 ], [ 0, %135 ], !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !2260
  ret i8 %139, !dbg !2260
}

; Function Attrs: noredzone
declare dso_local %struct.uk_hwaddr* @uk_netdev_hwaddr_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @uk_netdev_mtu_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local void @netif_set_status_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @uknetdev_updown(%struct.netif*) #0 !dbg !2261 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwip_netdev_data*, align 8
  %4 = bitcast i32* %2 to i8*, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !2304
  %5 = bitcast %struct.lwip_netdev_data** %3 to i8*, !dbg !2305
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !2305
  %6 = icmp eq %struct.netif* %0, null, !dbg !2306
  br i1 %6, label %7, label %8, !dbg !2309, !prof !996

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2310
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2310
  unreachable, !dbg !2310

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !2312
  %10 = bitcast i8** %9 to %struct.uk_netdev**, !dbg !2312
  %11 = load %struct.uk_netdev*, %struct.uk_netdev** %10, align 8, !dbg !2312, !tbaa !1371
  %12 = icmp eq %struct.uk_netdev* %11, null, !dbg !2314
  br i1 %12, label %13, label %14, !dbg !2317, !prof !996

; <label>:13:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2318
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2318
  unreachable, !dbg !2318

; <label>:14:                                     ; preds = %8
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2320, !srcloc !1026
  %16 = icmp ult i64 %15, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2323
  br i1 %16, label %26, label %17, !dbg !2323

; <label>:17:                                     ; preds = %14
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2324, !srcloc !1026
  %19 = icmp ugt i64 %18, ptrtoint ([0 x i8]* @_end to i64), !dbg !2323
  br i1 %19, label %26, label %20, !dbg !2327

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 8, !dbg !2331
  %22 = bitcast i8** %21 to i64*, !dbg !2331
  %23 = load i64, i64* %22, align 8, !dbg !2331, !tbaa !1591
  %24 = bitcast %struct.lwip_netdev_data** %3 to i64*, !dbg !2333
  store i64 %23, i64* %24, align 8, !dbg !2333, !tbaa !1088
  %25 = inttoptr i64 %23 to %struct.lwip_netdev_data*, !dbg !2333
  br label %36, !dbg !2333

; <label>:26:                                     ; preds = %17, %14
  %27 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2334, !srcloc !1026
  %28 = and i64 %27, -65536, !dbg !2339
  %29 = or i64 %28, 4097, !dbg !2339
  %30 = add nsw i64 %29, -1, !dbg !2339
  %31 = inttoptr i64 %30 to i32*, !dbg !2340
  %32 = load i32, i32* %31, align 4096, !dbg !2341, !tbaa !1036
  %33 = ptrtoint %struct.uk_netdev* %11 to i64, !dbg !2342
  %34 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %33, i32 %32, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #8, !dbg !2342, !srcloc !2343
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %3, i64 %34) #8, !dbg !2344, !srcloc !2348
  %35 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2349, !tbaa !1088
  br label %36

; <label>:36:                                     ; preds = %26, %20
  %37 = phi %struct.lwip_netdev_data* [ %35, %26 ], [ %25, %20 ], !dbg !2349
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !2352
  %39 = load i8, i8* %38, align 1, !dbg !2352, !tbaa !1872
  %40 = and i8 %39, 1, !dbg !2353
  %41 = icmp eq i8 %40, 0, !dbg !2353
  %42 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %37, i64 0, i32 1, i32 7, !dbg !2349
  %43 = load i32, i32* %42, align 8, !dbg !2349, !tbaa !2354
  %44 = and i32 %43, 1, !dbg !2349
  %45 = icmp ne i32 %44, 0, !dbg !2349
  br i1 %41, label %123, label %46, !dbg !2355

; <label>:46:                                     ; preds = %36
  %47 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2356, !srcloc !1026
  %48 = icmp uge i64 %47, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2359
  br i1 %45, label %49, label %69, !dbg !2360

; <label>:49:                                     ; preds = %46
  br i1 %48, label %50, label %55, !dbg !2361

; <label>:50:                                     ; preds = %49
  %51 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2362, !srcloc !1026
  %52 = icmp ugt i64 %51, ptrtoint ([0 x i8]* @_end to i64), !dbg !2361
  br i1 %52, label %55, label %53, !dbg !2365

; <label>:53:                                     ; preds = %50
  %54 = call i32 @uk_netdev_rxq_intr_enable(%struct.uk_netdev* nonnull %11, i16 zeroext 0) #9, !dbg !2366
  store i32 %54, i32* %2, align 4, !dbg !2366, !tbaa !1036
  br label %65, !dbg !2366

; <label>:55:                                     ; preds = %50, %49
  %56 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2369, !srcloc !1026
  %57 = and i64 %56, -65536, !dbg !2374
  %58 = or i64 %57, 4097, !dbg !2374
  %59 = add nsw i64 %58, -1, !dbg !2374
  %60 = inttoptr i64 %59 to i32*, !dbg !2375
  %61 = load i32, i32* %60, align 4096, !dbg !2376, !tbaa !1036
  %62 = ptrtoint %struct.uk_netdev* %11 to i64, !dbg !2377
  %63 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rxq_intr_enable\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %62, i64 0, i32 %61, i32 (%struct.uk_netdev*, i16)* nonnull @uk_netdev_rxq_intr_enable) #8, !dbg !2377, !srcloc !2378
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %63) #8, !dbg !2379, !srcloc !2382
  %64 = load i32, i32* %2, align 4, !dbg !2383, !tbaa !1036
  br label %65

; <label>:65:                                     ; preds = %53, %55
  %66 = phi i32 [ %54, %53 ], [ %64, %55 ], !dbg !2383
  %67 = icmp eq i32 %66, 1, !dbg !2385
  br i1 %67, label %68, label %153, !dbg !2386

; <label>:68:                                     ; preds = %65
  call void @uknetdev_poll(%struct.netif* nonnull %0) #9, !dbg !2387
  br label %153, !dbg !2389

; <label>:69:                                     ; preds = %46
  br i1 %48, label %70, label %77, !dbg !2390

; <label>:70:                                     ; preds = %69
  %71 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2391, !srcloc !1026
  %72 = icmp ugt i64 %71, ptrtoint ([0 x i8]* @_end to i64), !dbg !2390
  br i1 %72, label %77, label %73, !dbg !2394

; <label>:73:                                     ; preds = %70
  %74 = call %struct.uk_sched* @uk_sched_get_default() #11, !dbg !2395
  %75 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2395, !tbaa !1088
  %76 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %75, i64 0, i32 4, !dbg !2395
  store %struct.uk_sched* %74, %struct.uk_sched** %76, align 8, !dbg !2395, !tbaa !2397
  br label %90, !dbg !2395

; <label>:77:                                     ; preds = %70, %69
  %78 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2398, !srcloc !1026
  %79 = and i64 %78, -65536, !dbg !2403
  %80 = or i64 %79, 4097, !dbg !2403
  %81 = add nsw i64 %80, -1, !dbg !2403
  %82 = inttoptr i64 %81 to i32*, !dbg !2404
  %83 = load i32, i32* %82, align 4096, !dbg !2405, !tbaa !1036
  %84 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_get_default\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %83, %struct.uk_sched* ()* nonnull @uk_sched_get_default) #8, !dbg !2406, !srcloc !2407
  %85 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2408, !tbaa !1088
  %86 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %85, i64 0, i32 4, !dbg !2408
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_sched** nonnull %86, i64 %84) #8, !dbg !2408, !srcloc !2412
  %87 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2413, !tbaa !1088
  %88 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %87, i64 0, i32 4
  %89 = load %struct.uk_sched*, %struct.uk_sched** %88, align 8, !dbg !2413, !tbaa !2397
  br label %90

; <label>:90:                                     ; preds = %73, %77
  %91 = phi %struct.uk_sched* [ %74, %73 ], [ %89, %77 ], !dbg !2413
  %92 = icmp eq %struct.uk_sched* %91, null, !dbg !2413
  br i1 %92, label %93, label %94, !dbg !2416, !prof !996

; <label>:93:                                     ; preds = %90
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !2417
  call void @ukplat_terminate(i32 3) #10, !dbg !2417
  unreachable, !dbg !2417

; <label>:94:                                     ; preds = %90
  %95 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2419, !srcloc !1026
  %96 = icmp ult i64 %95, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2422
  br i1 %96, label %108, label %97, !dbg !2422

; <label>:97:                                     ; preds = %94
  %98 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2423, !srcloc !1026
  %99 = icmp ugt i64 %98, ptrtoint ([0 x i8]* @_end to i64), !dbg !2422
  br i1 %99, label %108, label %100, !dbg !2426

; <label>:100:                                    ; preds = %97
  %101 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2427, !tbaa !1088
  %102 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %101, i64 0, i32 4, !dbg !2427
  %103 = load %struct.uk_sched*, %struct.uk_sched** %102, align 8, !dbg !2427, !tbaa !2397
  %104 = bitcast %struct.netif* %0 to i8*, !dbg !2427
  %105 = call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %103, i8* null, %struct.uk_thread_attr* null, void (i8*)* nonnull @_poll_netif, i8* %104) #11, !dbg !2427
  %106 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2427, !tbaa !1088
  %107 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %106, i64 0, i32 2, !dbg !2427
  store %struct.uk_thread* %105, %struct.uk_thread** %107, align 8, !dbg !2427, !tbaa !2429
  br label %153, !dbg !2427

; <label>:108:                                    ; preds = %97, %94
  %109 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2430, !srcloc !1026
  %110 = and i64 %109, -65536, !dbg !2435
  %111 = or i64 %110, 4097, !dbg !2435
  %112 = add nsw i64 %111, -1, !dbg !2435
  %113 = inttoptr i64 %112 to i32*, !dbg !2436
  %114 = load i32, i32* %113, align 4096, !dbg !2437, !tbaa !1036
  %115 = ptrtoint %struct.netif* %0 to i64, !dbg !2438
  %116 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2438, !tbaa !1088
  %117 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 4, !dbg !2438
  %118 = bitcast %struct.uk_sched** %117 to i64*, !dbg !2438
  %119 = load i64, i64* %118, align 8, !dbg !2438, !tbaa !2397
  %120 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_thread_create\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %119, i64 0, i64 0, i64 ptrtoint (void (i8*)* @_poll_netif to i64), i64 %115, i32 %114, %struct.uk_thread* (%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*)* nonnull @uk_sched_thread_create) #8, !dbg !2438, !srcloc !2439
  %121 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2440, !tbaa !1088
  %122 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %121, i64 0, i32 2, !dbg !2440
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_thread** nonnull %122, i64 %120) #8, !dbg !2440, !srcloc !2444
  br label %153

; <label>:123:                                    ; preds = %36
  br i1 %45, label %124, label %153, !dbg !2445

; <label>:124:                                    ; preds = %123
  %125 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 3, !dbg !2454
  %126 = load %struct.uk_netdev_ops*, %struct.uk_netdev_ops** %125, align 8, !dbg !2454, !tbaa !2457
  %127 = icmp eq %struct.uk_netdev_ops* %126, null, !dbg !2454
  br i1 %127, label %128, label %129, !dbg !2458, !prof !996

; <label>:128:                                    ; preds = %124
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !2459
  call void @ukplat_terminate(i32 3) #10, !dbg !2459
  unreachable, !dbg !2459

; <label>:129:                                    ; preds = %124
  %130 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 2, !dbg !2461
  %131 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %130, align 8, !dbg !2461, !tbaa !1297
  %132 = icmp eq %struct.uk_netdev_data* %131, null, !dbg !2461
  br i1 %132, label %133, label %134, !dbg !2464, !prof !996

; <label>:133:                                    ; preds = %129
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !2465
  call void @ukplat_terminate(i32 3) #10, !dbg !2465
  unreachable, !dbg !2465

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %131, i64 0, i32 0, !dbg !2467
  %136 = load i32, i32* %135, align 8, !dbg !2467, !tbaa !1298
  %137 = icmp eq i32 %136, 3, !dbg !2467
  br i1 %137, label %139, label %138, !dbg !2470, !prof !1223

; <label>:138:                                    ; preds = %134
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !2471
  call void @ukplat_terminate(i32 3) #10, !dbg !2471
  unreachable, !dbg !2471

; <label>:139:                                    ; preds = %134
  %140 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 4, i64 0, !dbg !2473
  %141 = bitcast %struct.uk_netdev_rx_queue** %140 to i64*, !dbg !2473
  %142 = load i64, i64* %141, align 8, !dbg !2473, !tbaa !1088
  %143 = add i64 %142, 512, !dbg !2473
  %144 = icmp ult i64 %143, 513, !dbg !2473
  %145 = inttoptr i64 %142 to %struct.uk_netdev_rx_queue*, !dbg !2476
  br i1 %144, label %146, label %147, !dbg !2476, !prof !996

; <label>:146:                                    ; preds = %139
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !2477
  call void @ukplat_terminate(i32 3) #10, !dbg !2477
  unreachable, !dbg !2477

; <label>:147:                                    ; preds = %139
  %148 = getelementptr inbounds %struct.uk_netdev_ops, %struct.uk_netdev_ops* %126, i64 0, i32 1, !dbg !2479
  %149 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)** %148, align 8, !dbg !2479, !tbaa !2481
  %150 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)* %149, null, !dbg !2479
  br i1 %150, label %153, label %151, !dbg !2483, !prof !996

; <label>:151:                                    ; preds = %147
  %152 = call i32 %149(%struct.uk_netdev* nonnull %11, %struct.uk_netdev_rx_queue* %145) #11, !dbg !2484
  br label %153, !dbg !2485

; <label>:153:                                    ; preds = %151, %147, %123, %68, %65, %108, %100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !2486
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !2486
  ret void, !dbg !2486
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @uknetdev_addif(%struct.uk_netdev*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !884 {
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2491, !tbaa !1088
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !2501
  br i1 %6, label %7, label %9, !dbg !2503, !prof !996

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #11, !dbg !2504
  store i32 12, i32* %8, align 4, !dbg !2506, !tbaa !1036
  br label %28, !dbg !2507

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 1, !dbg !2517
  %11 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %10, align 8, !dbg !2517, !tbaa !1088
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 1, i64 280) #11, !dbg !2518
  %13 = icmp eq i8* %12, null, !dbg !2519
  br i1 %13, label %28, label %14, !dbg !2507

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %12 to %struct.netif*, !dbg !2521
  %16 = bitcast %struct.uk_netdev* %0 to i8*, !dbg !2523
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2524, !srcloc !2526
  %17 = load volatile i8*, i8** @uknetdev_addif.pethernet_input, align 8, !dbg !2524, !tbaa !1088
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2527, !srcloc !2528
  %18 = bitcast i8* %17 to i8 (%struct.pbuf*, %struct.netif*)*, !dbg !2529
  %19 = tail call %struct.netif* @netif_add(%struct.netif* %15, %struct.ip4_addr* %1, %struct.ip4_addr* %2, %struct.ip4_addr* %3, i8* %16, i8 (%struct.netif*)* nonnull @uknetdev_init, i8 (%struct.pbuf*, %struct.netif*)* %18) #11, !dbg !2530
  %20 = getelementptr inbounds i8, i8* %12, i64 184, !dbg !2532
  %21 = bitcast i8* %20 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !2532
  %22 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %21, align 8, !dbg !2532, !tbaa !1008
  %23 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %22, null, !dbg !2532
  br i1 %23, label %24, label %25, !dbg !2535, !prof !996

; <label>:24:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2536
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2536
  unreachable, !dbg !2536

; <label>:25:                                     ; preds = %14
  %26 = icmp eq %struct.netif* %19, null, !dbg !2538
  br i1 %26, label %27, label %28, !dbg !2540

; <label>:27:                                     ; preds = %25
  tail call void @mem_free(i8* nonnull %12) #11, !dbg !2541
  br label %28, !dbg !2543

; <label>:28:                                     ; preds = %7, %25, %9, %27
  %29 = phi %struct.netif* [ null, %27 ], [ null, %9 ], [ %19, %25 ], [ null, %7 ], !dbg !2544
  ret %struct.netif* %29, !dbg !2545
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcpip_input(%struct.pbuf*, %struct.netif*) #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_add(%struct.netif*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @mem_free(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: noredzone
declare dso_local %struct.uk_netbuf* @lwip_alloc_netbuf(%struct.uk_alloc*, i64, i64, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc*, i64, i64, i16 zeroext, i64, void (%struct.uk_netbuf*)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_tx_one(%struct.uk_netdev*, i16 zeroext, %struct.uk_netbuf*) #3 !dbg !2202 {
  %4 = icmp eq %struct.uk_netdev* %0, null, !dbg !2549
  br i1 %4, label %5, label %6, !dbg !2552, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2553
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2553
  unreachable, !dbg !2553

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 0, !dbg !2555
  %8 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)** %7, align 8, !dbg !2555, !tbaa !2216
  %9 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)* %8, null, !dbg !2555
  br i1 %9, label %10, label %11, !dbg !2556, !prof !996

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !2557
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2557
  unreachable, !dbg !2557

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i16 %1, 0, !dbg !2558
  br i1 %12, label %14, label %13, !dbg !2561, !prof !1223

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !2562
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2562
  unreachable, !dbg !2562

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !2564
  %16 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %15, align 8, !dbg !2564, !tbaa !1297
  %17 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %16, i64 0, i32 0, !dbg !2564
  %18 = load i32, i32* %17, align 8, !dbg !2564, !tbaa !1298
  %19 = icmp eq i32 %18, 3, !dbg !2564
  br i1 %19, label %21, label %20, !dbg !2565, !prof !1223

; <label>:20:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !2566
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2566
  unreachable, !dbg !2566

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 5, i64 0, !dbg !2567
  %23 = bitcast %struct.uk_netdev_tx_queue** %22 to i64*, !dbg !2567
  %24 = load i64, i64* %23, align 8, !dbg !2567, !tbaa !1088
  %25 = add i64 %24, 512, !dbg !2567
  %26 = icmp ult i64 %25, 513, !dbg !2567
  %27 = inttoptr i64 %24 to %struct.uk_netdev_tx_queue*, !dbg !2568
  br i1 %26, label %28, label %29, !dbg !2568, !prof !996

; <label>:28:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !2569
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2569
  unreachable, !dbg !2569

; <label>:29:                                     ; preds = %21
  %30 = icmp eq %struct.uk_netbuf* %2, null, !dbg !2570
  br i1 %30, label %31, label %32, !dbg !2573, !prof !996

; <label>:31:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !2574
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2574
  unreachable, !dbg !2574

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 %8(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_tx_queue* %27, %struct.uk_netbuf* nonnull %2) #11, !dbg !2576
  ret i32 %33, !dbg !2577
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_rxq_intr_enable(%struct.uk_netdev*, i16 zeroext) #3 !dbg !2578 {
  %3 = icmp eq %struct.uk_netdev* %0, null, !dbg !2584
  br i1 %3, label %4, label %5, !dbg !2587, !prof !996

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2588
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2588
  unreachable, !dbg !2588

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 3, !dbg !2590
  %7 = load %struct.uk_netdev_ops*, %struct.uk_netdev_ops** %6, align 8, !dbg !2590, !tbaa !2457
  %8 = icmp eq %struct.uk_netdev_ops* %7, null, !dbg !2590
  br i1 %8, label %9, label %10, !dbg !2593, !prof !996

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !2594
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2594
  unreachable, !dbg !2594

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !2596
  %12 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %11, align 8, !dbg !2596, !tbaa !1297
  %13 = icmp eq %struct.uk_netdev_data* %12, null, !dbg !2596
  br i1 %13, label %14, label %15, !dbg !2599, !prof !996

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !2600
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2600
  unreachable, !dbg !2600

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %12, i64 0, i32 0, !dbg !2602
  %17 = load i32, i32* %16, align 8, !dbg !2602, !tbaa !1298
  %18 = icmp eq i32 %17, 3, !dbg !2602
  br i1 %18, label %20, label %19, !dbg !2605, !prof !1223

; <label>:19:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !2606
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2606
  unreachable, !dbg !2606

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i16 %1, 0, !dbg !2608
  br i1 %21, label %23, label %22, !dbg !2611, !prof !1223

; <label>:22:                                     ; preds = %20
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !2612
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2612
  unreachable, !dbg !2612

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 4, i64 0, !dbg !2614
  %25 = bitcast %struct.uk_netdev_rx_queue** %24 to i64*, !dbg !2614
  %26 = load i64, i64* %25, align 8, !dbg !2614, !tbaa !1088
  %27 = add i64 %26, 512, !dbg !2614
  %28 = icmp ult i64 %27, 513, !dbg !2614
  %29 = inttoptr i64 %26 to %struct.uk_netdev_rx_queue*, !dbg !2617
  br i1 %28, label %30, label %31, !dbg !2617, !prof !996

; <label>:30:                                     ; preds = %23
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2618
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2618
  unreachable, !dbg !2618

; <label>:31:                                     ; preds = %23
  %32 = getelementptr inbounds %struct.uk_netdev_ops, %struct.uk_netdev_ops* %7, i64 0, i32 0, !dbg !2620
  %33 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)** %32, align 8, !dbg !2620, !tbaa !2622
  %34 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)* %33, null, !dbg !2620
  br i1 %34, label %37, label %35, !dbg !2623, !prof !996

; <label>:35:                                     ; preds = %31
  %36 = tail call i32 %33(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_rx_queue* %29) #11, !dbg !2624
  br label %37, !dbg !2625

; <label>:37:                                     ; preds = %31, %35
  %38 = phi i32 [ %36, %35 ], [ -134, %31 ], !dbg !2626
  ret i32 %38, !dbg !2627
}

; Function Attrs: noredzone
declare dso_local %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*) #5

; Function Attrs: noredzone nounwind
define internal void @_poll_netif(i8*) #0 !dbg !2628 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #8, !dbg !2634, !srcloc !2011
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2646, !srcloc !1026
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2649
  br i1 %3, label %8, label %4, !dbg !2649

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2650, !srcloc !1026
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !2649
  br i1 %6, label %8, label %7, !dbg !2653

; <label>:7:                                      ; preds = %4
  tail call void @___poll_netif(i8* %0) #11, !dbg !2654
  unreachable

; <label>:8:                                      ; preds = %1, %4
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2656, !srcloc !1026
  %10 = and i64 %9, -65536, !dbg !2661
  %11 = or i64 %10, 4097, !dbg !2661
  %12 = add nsw i64 %11, -1, !dbg !2661
  %13 = inttoptr i64 %12 to i32*, !dbg !2662
  %14 = load i32, i32* %13, align 4096, !dbg !2663, !tbaa !1036
  %15 = ptrtoint i8* %0 to i64, !dbg !2664
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ___poll_netif\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %15, i32 %14, void (i8*)* nonnull @___poll_netif) #8, !dbg !2664, !srcloc !2665
  ret void, !dbg !2666
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }
attributes #11 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!977, !978, !979}
!llvm.ident = !{!980}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 258, type: !872, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__uknetdev_input", scope: !3, file: !3, line: 223, type: !4, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !928)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/uknetdev.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !27, !25}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev", file: !8, line: 450, size: 640, elements: !9)
!8 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netdev_core.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !{!10, !115, !123, !536, !680, !682, !684, !690, !697}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "tx_one", scope: !7, file: !8, line: 452, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_tx_one_t", file: !8, line: 367, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !6, !16, !18}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_tx_queue", file: !8, line: 175, flags: DIFlagFwdDecl)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netbuf", file: !20, line: 104, size: 640, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !24, !26, !32, !40, !41, !42, !48, !53, !114}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !20, line: 105, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !19, file: !20, line: 106, baseType: !18, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !20, line: 108, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !20, line: 109, baseType: !27, size: 16, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !28, line: 36, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !30, line: 57, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !19, file: !20, line: 110, baseType: !33, size: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic", file: !34, line: 253, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 251, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !35, file: !34, line: 252, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 88, baseType: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !19, file: !20, line: 112, baseType: !25, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !19, file: !20, line: 114, baseType: !25, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !19, file: !20, line: 115, baseType: !43, size: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 40, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !46, line: 129, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !19, file: !20, line: 117, baseType: !49, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netbuf_dtor_t", file: !20, line: 51, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !18}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_a", scope: !19, file: !20, line: 118, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !56, line: 77, size: 832, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !65, !70, !75, !81, !83, !88, !89, !90, !95, !100, !105, !106, !107}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !55, file: !56, line: 79, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !56, line: 54, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!25, !54, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 58, baseType: !47)
!64 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !55, file: !56, line: 80, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !56, line: 56, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!25, !54, !63, !63}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !55, file: !56, line: 81, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !56, line: 62, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!25, !54, !25, !63}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !55, file: !56, line: 82, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !56, line: 58, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!15, !54, !80, !63, !63}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !55, file: !56, line: 83, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !56, line: 60, baseType: !67)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !55, file: !56, line: 84, baseType: !84, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !56, line: 64, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !54, !25}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !55, file: !56, line: 87, baseType: !84, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !55, file: !56, line: 88, baseType: !59, size: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !55, file: !56, line: 92, baseType: !91, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !56, line: 66, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!25, !54, !47}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !55, file: !56, line: 93, baseType: !96, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !56, line: 68, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !54, !25, !47}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !55, file: !56, line: 99, baseType: !101, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !56, line: 70, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!15, !54, !25, !63}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !55, file: !56, line: 100, baseType: !63, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !56, line: 103, baseType: !54, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !55, file: !56, line: 104, baseType: !108, offset: 832)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, elements: !112)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !28, line: 20, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !30, line: 41, baseType: !111)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !{!113}
!113 = !DISubrange(count: -1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_b", scope: !19, file: !20, line: 119, baseType: !25, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rx_one", scope: !7, file: !8, line: 455, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rx_one_t", file: !8, line: 362, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!15, !6, !120, !122}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_rx_queue", file: !8, line: 176, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !7, file: !8, line: 458, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_data", file: !8, line: 426, size: 256, elements: !126)
!126 = !{!127, !134, !533, !535}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !125, file: !8, line: 427, baseType: !128, size: 32)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_netdev_state", file: !8, line: 181, baseType: !39, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "UK_NETDEV_INVALID", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "UK_NETDEV_UNCONFIGURED", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "UK_NETDEV_CONFIGURED", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "UK_NETDEV_RUNNING", value: 3, isUnsigned: true)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_handler", scope: !125, file: !8, line: 429, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_event_handler", file: !8, line: 408, size: 640, elements: !137)
!137 = !{!138, !141, !142, !528, !529, !530, !531, !532}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !136, file: !8, line: 409, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_queue_event_t", file: !8, line: 235, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !136, file: !8, line: 410, baseType: !25, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !136, file: !8, line: 413, baseType: !143, size: 192, offset: 128)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !144, line: 51, size: 192, elements: !145)
!144 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !143, file: !144, line: 52, baseType: !147, size: 64)
!147 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !143, file: !144, line: 53, baseType: !149, size: 128, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !150, line: 42, size: 128, elements: !151)
!150 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !{!152, !526}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !149, file: !150, line: 42, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !150, line: 35, size: 192, elements: !155)
!155 = !{!156, !157, !522}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !154, file: !150, line: 36, baseType: !15, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !154, file: !150, line: 37, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !160, line: 59, size: 1024, elements: !161)
!160 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!161 = !{!162, !166, !167, !168, !169, !175, !178, !182, !184, !185, !273, !274, !275, !486}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !160, line: 60, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !159, file: !160, line: 61, baseType: !25, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !159, file: !160, line: 62, baseType: !25, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !159, file: !160, line: 63, baseType: !25, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !159, file: !160, line: 64, baseType: !170, size: 128, offset: 256)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !160, line: 64, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !170, file: !160, line: 64, baseType: !158, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !170, file: !160, line: 64, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !160, line: 65, baseType: !176, size: 32, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 48, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !30, line: 79, baseType: !39)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !159, file: !160, line: 66, baseType: !179, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !180, line: 49, baseType: !181)
!180 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !34, line: 128, baseType: !147)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !159, file: !160, line: 67, baseType: !183, size: 8, offset: 512)
!183 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !159, file: !160, line: 68, baseType: !149, size: 128, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !159, file: !160, line: 69, baseType: !186, size: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !188, line: 90, size: 2176, elements: !189)
!188 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!189 = !{!190, !195, !212, !217, !219, !221, !226, !234, !239, !245, !246, !247, !252, !270, !271, !272}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !187, file: !188, line: 91, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !188, line: 68, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !186}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !187, file: !188, line: 93, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !188, line: 71, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!15, !186, !158, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !203, line: 62, baseType: !204)
!203 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !203, line: 55, size: 128, elements: !205)
!205 = !{!206, !207, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !204, file: !203, line: 57, baseType: !183, size: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !204, file: !203, line: 59, baseType: !208, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !203, line: 53, baseType: !15)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !204, file: !203, line: 61, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !180, line: 48, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 129, baseType: !47)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !187, file: !188, line: 94, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !188, line: 74, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !186, !158}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !187, file: !188, line: 95, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !188, line: 76, baseType: !214)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !187, file: !188, line: 96, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !188, line: 78, baseType: !214)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !187, file: !188, line: 98, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !188, line: 81, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!15, !186, !158, !208}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !187, file: !188, line: 99, baseType: !227, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !188, line: 83, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!15, !186, !231, !233}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !187, file: !188, line: 100, baseType: !235, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !188, line: 85, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!15, !186, !158, !15}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !187, file: !188, line: 101, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !188, line: 87, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!15, !186, !231, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !187, file: !188, line: 104, baseType: !183, size: 8, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !187, file: !188, line: 105, baseType: !159, size: 1024, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !187, file: !188, line: 106, baseType: !248, size: 128, offset: 1664)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !160, line: 93, size: 128, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !248, file: !160, line: 93, baseType: !158, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !248, file: !160, line: 93, baseType: !174, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !187, file: !188, line: 107, baseType: !253, size: 192, offset: 1792)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !254, line: 59, size: 192, elements: !255)
!254 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!255 = !{!256, !261, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !253, file: !254, line: 61, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !254, line: 51, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!25, !54, !47, !47}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !253, file: !254, line: 63, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !25}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !253, file: !254, line: 65, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !254, line: 56, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !25, !25}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !187, file: !188, line: 108, baseType: !54, size: 64, offset: 1984)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !188, line: 109, baseType: !186, size: 64, offset: 2048)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !187, file: !188, line: 110, baseType: !25, size: 64, offset: 2112)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !159, file: !160, line: 70, baseType: !25, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !159, file: !160, line: 72, baseType: !15, size: 32, offset: 832)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !159, file: !160, line: 82, baseType: !276, size: 64, offset: 896)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !278, line: 569, size: 14912, elements: !279)
!278 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!279 = !{!280, !281, !355, !356, !357, !358, !362, !363, !366, !367, !371, !383, !384, !385, !387, !388, !389, !450, !471, !472, !477, !484}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !277, file: !278, line: 571, baseType: !15, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !277, file: !278, line: 576, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !278, line: 287, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !278, line: 181, size: 1408, elements: !285)
!285 = !{!286, !289, !290, !291, !293, !294, !299, !300, !301, !307, !311, !316, !320, !321, !322, !323, !327, !331, !332, !333, !335, !336, !340, !354}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !284, file: !278, line: 182, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !284, file: !278, line: 183, baseType: !15, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !284, file: !278, line: 184, baseType: !15, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !284, file: !278, line: 185, baseType: !292, size: 16, offset: 128)
!292 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !284, file: !278, line: 186, baseType: !292, size: 16, offset: 144)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !284, file: !278, line: 187, baseType: !295, size: 128, offset: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !278, line: 117, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !295, file: !278, line: 118, baseType: !287, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !295, file: !278, line: 119, baseType: !15, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !284, file: !278, line: 188, baseType: !15, size: 32, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !284, file: !278, line: 195, baseType: !25, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !284, file: !278, line: 197, baseType: !302, size: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !276, !25, !306, !15}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !147)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !284, file: !278, line: 199, baseType: !308, size: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!305, !276, !25, !163, !15}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !284, file: !278, line: 202, baseType: !312, size: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !276, !25, !315, !15}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !147)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !284, file: !278, line: 203, baseType: !317, size: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!15, !276, !25}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !284, file: !278, line: 206, baseType: !295, size: 128, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !284, file: !278, line: 207, baseType: !287, size: 64, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !284, file: !278, line: 208, baseType: !15, size: 32, offset: 896)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !284, file: !278, line: 211, baseType: !324, size: 24, offset: 928)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 24, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 3)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !284, file: !278, line: 212, baseType: !328, size: 8, offset: 952)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 1)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !284, file: !278, line: 215, baseType: !295, size: 128, offset: 960)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !284, file: !278, line: 218, baseType: !15, size: 32, offset: 1088)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !284, file: !278, line: 219, baseType: !334, size: 64, offset: 1152)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !147)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !284, file: !278, line: 222, baseType: !276, size: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !284, file: !278, line: 226, baseType: !337, size: 32, offset: 1280)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !339, line: 12, baseType: !15)
!339 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !284, file: !278, line: 228, baseType: !341, size: 64, offset: 1312)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !46, line: 165, baseType: !15, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !46, line: 170, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !46, line: 166, size: 32, elements: !347)
!347 = !{!348, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !46, line: 168, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !64, line: 124, baseType: !39)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !46, line: 169, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !284, file: !278, line: 229, baseType: !15, size: 32, offset: 1376)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !277, file: !278, line: 576, baseType: !282, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !277, file: !278, line: 576, baseType: !282, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !277, file: !278, line: 578, baseType: !15, size: 32, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !277, file: !278, line: 579, baseType: !359, size: 200, offset: 288)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 200, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 25)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !277, file: !278, line: 582, baseType: !15, size: 32, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !277, file: !278, line: 583, baseType: !364, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !278, line: 40, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !277, file: !278, line: 585, baseType: !15, size: 32, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !277, file: !278, line: 587, baseType: !368, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !276}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !277, file: !278, line: 590, baseType: !372, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !278, line: 47, size: 256, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !373, file: !278, line: 49, baseType: !372, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !373, file: !278, line: 50, baseType: !15, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !373, file: !278, line: 50, baseType: !15, size: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !373, file: !278, line: 50, baseType: !15, size: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !373, file: !278, line: 50, baseType: !15, size: 32, offset: 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !373, file: !278, line: 51, baseType: !381, size: 32, offset: 192)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 32, elements: !329)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !278, line: 25, baseType: !39)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !277, file: !278, line: 591, baseType: !15, size: 32, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !277, file: !278, line: 592, baseType: !372, size: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !277, file: !278, line: 593, baseType: !386, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !277, file: !278, line: 596, baseType: !15, size: 32, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !277, file: !278, line: 597, baseType: !306, size: 64, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !277, file: !278, line: 632, baseType: !390, size: 2880, offset: 1152)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 599, size: 2880, elements: !391)
!391 = !{!392, !441}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !390, file: !278, line: 622, baseType: !393, size: 1728)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !278, line: 601, size: 1728, elements: !394)
!394 = !{!395, !396, !397, !401, !413, !414, !416, !423, !424, !425, !426, !430, !434, !435, !436, !437, !438, !439, !440}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !393, file: !278, line: 603, baseType: !39, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !393, file: !278, line: 604, baseType: !306, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !393, file: !278, line: 605, baseType: !398, size: 208, offset: 128)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 208, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 26)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !393, file: !278, line: 606, baseType: !402, size: 288, offset: 352)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !278, line: 55, size: 288, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !402, file: !278, line: 57, baseType: !15, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !402, file: !278, line: 58, baseType: !15, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !402, file: !278, line: 59, baseType: !15, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !402, file: !278, line: 60, baseType: !15, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !402, file: !278, line: 61, baseType: !15, size: 32, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !402, file: !278, line: 62, baseType: !15, size: 32, offset: 160)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !402, file: !278, line: 63, baseType: !15, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !402, file: !278, line: 64, baseType: !15, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !402, file: !278, line: 65, baseType: !15, size: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !393, file: !278, line: 607, baseType: !15, size: 32, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !393, file: !278, line: 608, baseType: !415, size: 64, offset: 704)
!415 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !393, file: !278, line: 609, baseType: !417, size: 112, offset: 768)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !278, line: 319, size: 112, elements: !418)
!418 = !{!419, !421, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !417, file: !278, line: 320, baseType: !420, size: 48)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !325)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !417, file: !278, line: 321, baseType: !420, size: 48, offset: 48)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !417, file: !278, line: 322, baseType: !31, size: 16, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !393, file: !278, line: 610, baseType: !341, size: 64, offset: 896)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !393, file: !278, line: 611, baseType: !341, size: 64, offset: 960)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !393, file: !278, line: 612, baseType: !341, size: 64, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !393, file: !278, line: 613, baseType: !427, size: 64, offset: 1088)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !393, file: !278, line: 614, baseType: !431, size: 192, offset: 1152)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 192, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 24)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !393, file: !278, line: 615, baseType: !15, size: 32, offset: 1344)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !393, file: !278, line: 616, baseType: !341, size: 64, offset: 1376)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !393, file: !278, line: 617, baseType: !341, size: 64, offset: 1440)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !393, file: !278, line: 618, baseType: !341, size: 64, offset: 1504)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !393, file: !278, line: 619, baseType: !341, size: 64, offset: 1568)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !393, file: !278, line: 620, baseType: !341, size: 64, offset: 1632)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !393, file: !278, line: 621, baseType: !15, size: 32, offset: 1696)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !390, file: !278, line: 631, baseType: !442, size: 2880)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !278, line: 626, size: 2880, elements: !443)
!443 = !{!444, !448}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !442, file: !278, line: 629, baseType: !445, size: 1920)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 1920, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 30)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !442, file: !278, line: 630, baseType: !449, size: 960, offset: 1920)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 960, elements: !446)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !277, file: !278, line: 636, baseType: !451, size: 64, offset: 4032)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !278, line: 93, size: 6336, elements: !453)
!453 = !{!454, !455, !456, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !452, file: !278, line: 94, baseType: !451, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !452, file: !278, line: 95, baseType: !15, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !452, file: !278, line: 97, baseType: !457, size: 2048, offset: 128)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 2048, elements: !461)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null}
!461 = !{!462}
!462 = !DISubrange(count: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !452, file: !278, line: 98, baseType: !464, size: 4160, offset: 2176)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !278, line: 74, size: 4160, elements: !465)
!465 = !{!466, !468, !469, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !464, file: !278, line: 75, baseType: !467, size: 2048)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !461)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !464, file: !278, line: 76, baseType: !467, size: 2048, offset: 2048)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !464, file: !278, line: 78, baseType: !382, size: 32, offset: 4096)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !464, file: !278, line: 81, baseType: !382, size: 32, offset: 4128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !277, file: !278, line: 637, baseType: !452, size: 6336, offset: 4096)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !277, file: !278, line: 641, baseType: !473, size: 64, offset: 10432)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !15}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !277, file: !278, line: 646, baseType: !478, size: 192, offset: 10496)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !278, line: 291, size: 192, elements: !479)
!479 = !{!480, !482, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !478, file: !278, line: 293, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !478, file: !278, line: 294, baseType: !15, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !478, file: !278, line: 295, baseType: !282, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !277, file: !278, line: 648, baseType: !485, size: 4224, offset: 10688)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 4224, elements: !325)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !159, file: !160, line: 85, baseType: !487, size: 64, offset: 960)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !489, line: 114, size: 640, elements: !490)
!489 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!490 = !{!491, !495, !496, !503, !521}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !488, file: !489, line: 116, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !493, line: 64, baseType: !494)
!493 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !493, line: 63, baseType: !47)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !488, file: !489, line: 118, baseType: !492, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !488, file: !489, line: 120, baseType: !497, size: 128, offset: 128)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !498, line: 51, size: 128, elements: !499)
!498 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!499 = !{!500, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !498, line: 52, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !497, file: !498, line: 53, baseType: !501, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !488, file: !489, line: 122, baseType: !504, size: 256, offset: 256)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !489, line: 98, size: 256, elements: !505)
!505 = !{!506, !512, !513}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !504, file: !489, line: 107, baseType: !507, size: 32)
!507 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !489, line: 92, baseType: !39, size: 32, elements: !508)
!508 = !{!509, !510, !511}
!509 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!510 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!511 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !504, file: !489, line: 109, baseType: !492, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !504, file: !489, line: 111, baseType: !514, size: 96, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !493, line: 72, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 68, size: 96, elements: !516)
!516 = !{!517, !518, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !515, file: !493, line: 69, baseType: !15, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !515, file: !493, line: 70, baseType: !15, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !515, file: !493, line: 71, baseType: !520, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !493, line: 61, baseType: !15)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !488, file: !489, line: 124, baseType: !497, size: 128, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !154, file: !150, line: 38, baseType: !523, size: 64, offset: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !150, line: 38, size: 64, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !523, file: !150, line: 38, baseType: !153, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !149, file: !150, line: 42, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !136, file: !8, line: 414, baseType: !6, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "queue_id", scope: !136, file: !8, line: 415, baseType: !27, size: 16, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dispatcher", scope: !136, file: !8, line: 416, baseType: !158, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dispatcher_name", scope: !136, file: !8, line: 417, baseType: !306, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dispatcher_s", scope: !136, file: !8, line: 418, baseType: !186, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !125, file: !8, line: 431, baseType: !534, size: 16, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "drv_name", scope: !125, file: !8, line: 432, baseType: !163, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !7, file: !8, line: 461, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_ops", file: !8, line: 374, size: 1024, elements: !540)
!540 = !{!541, !546, !548, !563, !568, !573, !578, !583, !588, !604, !616, !618, !637, !648, !657, !675}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_intr_enable", scope: !539, file: !8, line: 376, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_intr_enable_t", file: !8, line: 341, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!15, !6, !120}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_intr_disable", scope: !539, file: !8, line: 377, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_intr_disable_t", file: !8, line: 345, baseType: !543)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_get", scope: !539, file: !8, line: 380, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_hwaddr_get_t", file: !8, line: 320, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !6}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_hwaddr", file: !8, line: 122, size: 48, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !555, file: !8, line: 123, baseType: !558, size: 48)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 48, elements: !561)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !28, line: 24, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !30, line: 43, baseType: !288)
!561 = !{!562}
!562 = !DISubrange(count: 6)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_set", scope: !539, file: !8, line: 381, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_hwaddr_set_t", file: !8, line: 324, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!15, !6, !553}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_get", scope: !539, file: !8, line: 384, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_mtu_get_t", file: !8, line: 335, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!27, !6}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_set", scope: !539, file: !8, line: 385, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_mtu_set_t", file: !8, line: 338, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!15, !6, !27}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "promiscuous_set", scope: !539, file: !8, line: 388, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_promiscuous_set_t", file: !8, line: 331, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!15, !6, !39}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "promiscuous_get", scope: !539, file: !8, line: 389, baseType: !584, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_promiscuous_get_t", file: !8, line: 328, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!39, !6}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "info_get", scope: !539, file: !8, line: 392, baseType: !589, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_info_get_t", file: !8, line: 283, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !6, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_info", file: !8, line: 141, size: 160, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_rx_queues", scope: !594, file: !8, line: 142, baseType: !27, size: 16)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "max_tx_queues", scope: !594, file: !8, line: 143, baseType: !27, size: 16, offset: 16)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "in_queue_pairs", scope: !594, file: !8, line: 144, baseType: !15, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !594, file: !8, line: 145, baseType: !27, size: 16, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nb_encap_tx", scope: !594, file: !8, line: 146, baseType: !27, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nb_encap_rx", scope: !594, file: !8, line: 147, baseType: !27, size: 16, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ioalign", scope: !594, file: !8, line: 148, baseType: !27, size: 16, offset: 112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !594, file: !8, line: 149, baseType: !176, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "txq_info_get", scope: !539, file: !8, line: 393, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_txq_info_get_t", file: !8, line: 303, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!15, !6, !27, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_queue_info", file: !8, line: 155, size: 96, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !610, file: !8, line: 156, baseType: !27, size: 16)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !610, file: !8, line: 157, baseType: !27, size: 16, offset: 16)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nb_align", scope: !610, file: !8, line: 158, baseType: !27, size: 16, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nb_is_power_of_two", scope: !610, file: !8, line: 159, baseType: !15, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_info_get", scope: !539, file: !8, line: 394, baseType: !617, size: 64, offset: 640)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_info_get_t", file: !8, line: 297, baseType: !606)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "einfo_get", scope: !539, file: !8, line: 395, baseType: !619, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_einfo_get_t", file: !8, line: 287, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!623, !6, !625}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_netdev_einfo_type", file: !8, line: 205, baseType: !39, size: 32, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!627 = !DIEnumerator(name: "UK_NETDEV_IPV4_ADDR_NINT16", value: 0, isUnsigned: true)
!628 = !DIEnumerator(name: "UK_NETDEV_IPV4_ADDR_STR", value: 1, isUnsigned: true)
!629 = !DIEnumerator(name: "UK_NETDEV_IPV4_MASK_NINT16", value: 2, isUnsigned: true)
!630 = !DIEnumerator(name: "UK_NETDEV_IPV4_MASK_STR", value: 3, isUnsigned: true)
!631 = !DIEnumerator(name: "UK_NETDEV_IPV4_GW_NINT16", value: 4, isUnsigned: true)
!632 = !DIEnumerator(name: "UK_NETDEV_IPV4_GW_STR", value: 5, isUnsigned: true)
!633 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS0_NINT16", value: 6, isUnsigned: true)
!634 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS0_STR", value: 7, isUnsigned: true)
!635 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS1_NINT16", value: 8, isUnsigned: true)
!636 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS1_STR", value: 9, isUnsigned: true)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !539, file: !8, line: 398, baseType: !638, size: 64, offset: 768)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_configure_t", file: !8, line: 291, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!15, !6, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_conf", file: !8, line: 165, size: 32, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rx_queues", scope: !644, file: !8, line: 166, baseType: !27, size: 16)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nb_tx_queues", scope: !644, file: !8, line: 167, baseType: !27, size: 16, offset: 16)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "txq_configure", scope: !539, file: !8, line: 399, baseType: !649, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_txq_configure_t", file: !8, line: 307, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!16, !6, !27, !27, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_txqueue_conf", file: !8, line: 276, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !654, file: !8, line: 277, baseType: !54, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_configure", scope: !539, file: !8, line: 400, baseType: !658, size: 64, offset: 896)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_configure_t", file: !8, line: 312, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!120, !6, !27, !27, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_rxqueue_conf", file: !8, line: 260, size: 384, elements: !664)
!664 = !{!665, !666, !667, !668, !673, !674}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !663, file: !8, line: 261, baseType: !139, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "callback_cookie", scope: !663, file: !8, line: 262, baseType: !25, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !663, file: !8, line: 264, baseType: !54, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_rxpkts", scope: !663, file: !8, line: 266, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_alloc_rxpkts", file: !8, line: 253, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!27, !25, !122, !27}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_rxpkts_argp", scope: !663, file: !8, line: 267, baseType: !25, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !663, file: !8, line: 269, baseType: !186, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !539, file: !8, line: 401, baseType: !676, size: 64, offset: 960)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_start_t", file: !8, line: 317, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!15, !6}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_queue", scope: !7, file: !8, line: 464, baseType: !681, size: 64, offset: 256)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !329)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_queue", scope: !7, file: !8, line: 465, baseType: !683, size: 64, offset: 320)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !329)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_list", scope: !7, file: !8, line: 467, baseType: !685, size: 128, offset: 384)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !8, line: 467, size: 128, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !685, file: !8, line: 467, baseType: !6, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !685, file: !8, line: 467, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_einfo", scope: !7, file: !8, line: 470, baseType: !691, size: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_einfo", file: !8, line: 435, size: 192, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_addr", scope: !692, file: !8, line: 436, baseType: !163, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_net_mask", scope: !692, file: !8, line: 437, baseType: !163, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_gw_addr", scope: !692, file: !8, line: 438, baseType: !163, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_pad", scope: !7, file: !8, line: 473, baseType: !306, size: 64, offset: 576)
!698 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !699, retainedTypes: !732, globals: !869)
!699 = !{!128, !507, !625, !700, !705, !712}
!700 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !701, line: 156, baseType: !39, size: 32, elements: !702)
!701 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!702 = !{!703, !704}
!703 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!704 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !706, line: 68, baseType: !39, size: 32, elements: !707)
!706 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!707 = !{!708, !709, !710, !711}
!708 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!709 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!710 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!711 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !713, line: 53, baseType: !15, size: 32, elements: !714)
!713 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!715 = !DIEnumerator(name: "ERR_OK", value: 0)
!716 = !DIEnumerator(name: "ERR_MEM", value: -1)
!717 = !DIEnumerator(name: "ERR_BUF", value: -2)
!718 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!719 = !DIEnumerator(name: "ERR_RTE", value: -4)
!720 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!721 = !DIEnumerator(name: "ERR_VAL", value: -6)
!722 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!723 = !DIEnumerator(name: "ERR_USE", value: -8)
!724 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!725 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!726 = !DIEnumerator(name: "ERR_CONN", value: -11)
!727 = !DIEnumerator(name: "ERR_IF", value: -12)
!728 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!729 = !DIEnumerator(name: "ERR_RST", value: -14)
!730 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!731 = !DIEnumerator(name: "ERR_ARG", value: -16)
!732 = !{!733, !122, !839, !47, !841, !15, !6, !689, !843, !662, !653, !25, !755, !844, !846, !244, !847, !174, !861, !43}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !701, line: 260, size: 2240, elements: !735)
!735 = !{!736, !737, !763, !764, !765, !767, !769, !771, !772, !792, !799, !804, !811, !816, !817, !818, !820, !821, !822, !823, !825, !826, !827, !831, !832, !833, !834}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !701, line: 263, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !734, file: !701, line: 268, baseType: !738, size: 192, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !739, line: 76, baseType: !740)
!739 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !739, line: 69, size: 192, elements: !741)
!741 = !{!742, !762}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !740, file: !739, line: 73, baseType: !743, size: 160)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !739, line: 70, size: 160, elements: !744)
!744 = !{!745, !756}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !743, file: !739, line: 71, baseType: !746, size: 160)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !747, line: 67, baseType: !748)
!747 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !747, line: 59, size: 160, elements: !749)
!749 = !{!750, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !748, file: !747, line: 60, baseType: !751, size: 128)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 128, elements: !352)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !753, line: 129, baseType: !176)
!753 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!754 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !748, file: !747, line: 62, baseType: !755, size: 8, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !753, line: 125, baseType: !559)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !743, file: !739, line: 72, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !758, line: 57, baseType: !759)
!758 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !758, line: 51, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !759, file: !758, line: 52, baseType: !752, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !739, line: 75, baseType: !755, size: 8, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !734, file: !701, line: 269, baseType: !738, size: 192, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !734, file: !701, line: 270, baseType: !738, size: 192, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !734, file: !701, line: 274, baseType: !766, size: 576, offset: 640)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 576, elements: !325)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !734, file: !701, line: 277, baseType: !768, size: 24, offset: 1216)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 24, elements: !325)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !734, file: !701, line: 282, baseType: !770, size: 96, offset: 1248)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 96, elements: !325)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !734, file: !701, line: 283, baseType: !770, size: 96, offset: 1344)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !734, file: !701, line: 288, baseType: !773, size: 64, offset: 1472)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !701, line: 178, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!777, !779, !733}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !713, line: 96, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !753, line: 126, baseType: !109)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !781, line: 186, size: 192, elements: !782)
!781 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!782 = !{!783, !784, !785, !787, !788, !789, !790, !791}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !781, line: 188, baseType: !779, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !780, file: !781, line: 191, baseType: !25, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !780, file: !781, line: 200, baseType: !786, size: 16, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !753, line: 127, baseType: !27)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !780, file: !781, line: 203, baseType: !786, size: 16, offset: 144)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !780, file: !781, line: 208, baseType: !755, size: 8, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !781, line: 211, baseType: !755, size: 8, offset: 168)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !780, file: !781, line: 218, baseType: !755, size: 8, offset: 176)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !780, file: !781, line: 221, baseType: !755, size: 8, offset: 184)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !734, file: !701, line: 294, baseType: !793, size: 64, offset: 1536)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !701, line: 189, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!777, !733, !779, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !734, file: !701, line: 299, baseType: !800, size: 64, offset: 1600)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !701, line: 212, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!777, !733, !779}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !734, file: !701, line: 305, baseType: !805, size: 64, offset: 1664)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !701, line: 202, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!777, !733, !779, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !734, file: !701, line: 310, baseType: !812, size: 64, offset: 1728)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !701, line: 214, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !733}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !734, file: !701, line: 319, baseType: !812, size: 64, offset: 1792)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !734, file: !701, line: 323, baseType: !25, size: 64, offset: 1856)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !734, file: !701, line: 325, baseType: !819, size: 64, offset: 1920)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !329)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !734, file: !701, line: 332, baseType: !786, size: 16, offset: 1984)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !734, file: !701, line: 335, baseType: !786, size: 16, offset: 2000)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !734, file: !701, line: 338, baseType: !786, size: 16, offset: 2016)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !734, file: !701, line: 341, baseType: !824, size: 48, offset: 2032)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 48, elements: !561)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !734, file: !701, line: 343, baseType: !755, size: 8, offset: 2080)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !701, line: 345, baseType: !755, size: 8, offset: 2088)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !734, file: !701, line: 347, baseType: !828, size: 16, offset: 2096)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 16, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 2)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !734, file: !701, line: 350, baseType: !755, size: 8, offset: 2112)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !734, file: !701, line: 353, baseType: !755, size: 8, offset: 2120)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !734, file: !701, line: 357, baseType: !755, size: 8, offset: 2128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !734, file: !701, line: 377, baseType: !835, size: 64, offset: 2176)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !701, line: 222, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!777, !733, !809, !700}
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !28, line: 82, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !30, line: 232, baseType: !47)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !28, line: 60, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !30, line: 105, baseType: !47)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !623)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sptr", file: !34, line: 186, baseType: !181)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_netbuf_pbuf", file: !849, line: 50, size: 320, elements: !850)
!849 = !DIFile(filename: "/root/.unikraft/libs/lwip/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!850 = !{!851, !860}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf_custom", scope: !848, file: !849, line: 51, baseType: !852, size: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_custom", file: !781, line: 242, size: 256, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf", scope: !852, file: !781, line: 244, baseType: !780, size: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "custom_free_function", scope: !852, file: !781, line: 246, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_free_custom_fn", file: !781, line: 239, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !779}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "netbuf", scope: !848, file: !849, line: 52, baseType: !18, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwip_netdev_data", file: !3, line: 82, size: 448, elements: !863)
!863 = !{!864, !865, !866, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_a", scope: !862, file: !3, line: 90, baseType: !54, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_info", scope: !862, file: !3, line: 91, baseType: !594, size: 160, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "poll_thread", scope: !862, file: !3, line: 93, baseType: !158, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_name", scope: !862, file: !3, line: 94, baseType: !306, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !862, file: !3, line: 95, baseType: !186, size: 64, offset: 384)
!869 = !{!0, !870, !875, !880, !882, !896, !915, !920, !926}
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 258, type: !872, isLocal: true, isDefinition: true)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 392, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 49)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 303, type: !877, isLocal: true, isDefinition: true)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 368, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 46)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 303, type: !877, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "pethernet_input", scope: !884, file: !3, line: 766, type: !623, isLocal: true, isDefinition: true)
!884 = distinct !DISubprogram(name: "uknetdev_addif", scope: !3, file: !3, line: 745, type: !885, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{!733, !6, !797, !797, !797}
!887 = !{!888, !889, !890, !891, !892, !893, !894}
!888 = !DILocalVariable(name: "n", arg: 1, scope: !884, file: !3, line: 745, type: !6)
!889 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !884, file: !3, line: 748, type: !797)
!890 = !DILocalVariable(name: "netmask", arg: 3, scope: !884, file: !3, line: 749, type: !797)
!891 = !DILocalVariable(name: "gw", arg: 4, scope: !884, file: !3, line: 750, type: !797)
!892 = !DILocalVariable(name: "nf", scope: !884, file: !3, line: 767, type: !733)
!893 = !DILocalVariable(name: "ret", scope: !884, file: !3, line: 768, type: !733)
!894 = !DILocalVariable(name: "__var", scope: !895, file: !3, line: 779, type: !623)
!895 = distinct !DILexicalBlock(scope: !884, file: !3, line: 779, column: 22)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(name: "__str", scope: !898, file: !899, line: 198, type: !427, isLocal: true, isDefinition: true)
!898 = distinct !DISubprogram(name: "uk_pr_crit", scope: !899, file: !899, line: 194, type: !900, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !902)
!899 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!900 = !DISubroutineType(types: !901)
!901 = !{null, !163, null}
!902 = !{!903, !904}
!903 = !DILocalVariable(name: "fmt", arg: 1, scope: !898, file: !899, line: 194, type: !163)
!904 = !DILocalVariable(name: "argp", scope: !898, file: !899, line: 196, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !906, line: 32, baseType: !907)
!906 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !908)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 192, elements: !329)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !910)
!910 = !{!911, !912, !913, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !909, file: !3, line: 196, baseType: !39, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !909, file: !3, line: 196, baseType: !39, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !909, file: !3, line: 196, baseType: !25, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !909, file: !3, line: 196, baseType: !25, size: 64, offset: 128)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(name: "__str", scope: !898, file: !899, line: 198, type: !917, isLocal: true, isDefinition: true)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 88, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 11)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(name: "__str", scope: !922, file: !899, line: 190, type: !427, isLocal: true, isDefinition: true)
!922 = distinct !DISubprogram(name: "uk_pr_err", scope: !899, file: !899, line: 186, type: !900, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !923)
!923 = !{!924, !925}
!924 = !DILocalVariable(name: "fmt", arg: 1, scope: !922, file: !899, line: 186, type: !163)
!925 = !DILocalVariable(name: "argp", scope: !922, file: !899, line: 188, type: !905)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(name: "__str", scope: !922, file: !899, line: 190, type: !917, isLocal: true, isDefinition: true)
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !945, !946, !947, !955, !956, !957, !958, !968, !974, !975, !976}
!929 = !DILocalVariable(name: "dev", arg: 1, scope: !2, file: !3, line: 223, type: !6)
!930 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2, file: !3, line: 223, type: !27)
!931 = !DILocalVariable(name: "argp", arg: 3, scope: !2, file: !3, line: 223, type: !25)
!932 = !DILocalVariable(name: "nf", scope: !2, file: !3, line: 224, type: !733)
!933 = !DILocalVariable(name: "nb", scope: !2, file: !3, line: 225, type: !18)
!934 = !DILocalVariable(name: "_dss_nb", scope: !2, file: !3, line: 226, type: !122)
!935 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 227, type: !779)
!936 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 228, type: !777)
!937 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 229, type: !15)
!938 = !DILocalVariable(name: "tid", scope: !939, file: !3, line: 238, type: !176)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 238, column: 3)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 238, column: 3)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 238, column: 3)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 238, column: 3)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 238, column: 3)
!944 = distinct !DILexicalBlock(scope: !2, file: !3, line: 237, column: 5)
!945 = !DILocalVariable(name: "_ret", scope: !939, file: !3, line: 238, type: !841)
!946 = !DILocalVariable(name: "_arg3", scope: !939, file: !3, line: 238, type: !841)
!947 = !DILocalVariable(name: "tid", scope: !948, file: !3, line: 258, type: !176)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 258, column: 4)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 258, column: 4)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 258, column: 4)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 258, column: 4)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 258, column: 4)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 252, column: 26)
!954 = distinct !DILexicalBlock(scope: !944, file: !3, line: 252, column: 7)
!955 = !DILocalVariable(name: "_arg3", scope: !948, file: !3, line: 258, type: !841)
!956 = !DILocalVariable(name: "_arg4", scope: !948, file: !3, line: 258, type: !841)
!957 = !DILocalVariable(name: "_arg5", scope: !948, file: !3, line: 258, type: !841)
!958 = !DILocalVariable(name: "tid", scope: !959, file: !3, line: 293, type: !176)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 293, column: 5)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 293, column: 5)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 293, column: 5)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 293, column: 5)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 293, column: 5)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 288, column: 24)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 288, column: 8)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 280, column: 32)
!967 = distinct !DILexicalBlock(scope: !944, file: !3, line: 280, column: 7)
!968 = !DILocalVariable(name: "tid", scope: !969, file: !3, line: 303, type: !176)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 303, column: 4)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 303, column: 4)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 303, column: 4)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 303, column: 4)
!973 = distinct !DILexicalBlock(scope: !966, file: !3, line: 303, column: 4)
!974 = !DILocalVariable(name: "_arg3", scope: !969, file: !3, line: 303, type: !841)
!975 = !DILocalVariable(name: "_arg4", scope: !969, file: !3, line: 303, type: !841)
!976 = !DILocalVariable(name: "_arg5", scope: !969, file: !3, line: 303, type: !841)
!977 = !{i32 2, !"Dwarf Version", i32 4}
!978 = !{i32 2, !"Debug Info Version", i32 3}
!979 = !{i32 1, !"wchar_size", i32 4}
!980 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!981 = !DILocation(line: 223, column: 41, scope: !2)
!982 = !DILocation(line: 223, column: 55, scope: !2)
!983 = !DILocation(line: 223, column: 71, scope: !2)
!984 = !DILocation(line: 224, column: 21, scope: !2)
!985 = !DILocation(line: 224, column: 16, scope: !2)
!986 = !DILocation(line: 225, column: 2, scope: !2)
!987 = !DILocation(line: 226, column: 54, scope: !2)
!988 = !DILocation(line: 226, column: 72, scope: !2)
!989 = !DILocation(line: 226, column: 31, scope: !2)
!990 = !DILocation(line: 226, column: 21, scope: !2)
!991 = !DILocation(line: 229, column: 2, scope: !2)
!992 = !DILocation(line: 231, column: 2, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 231, column: 2)
!994 = distinct !DILexicalBlock(scope: !2, file: !3, line: 231, column: 2)
!995 = !DILocation(line: 231, column: 2, scope: !994)
!996 = !{!"branch_weights", i32 1, i32 2000}
!997 = !DILocation(line: 231, column: 2, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !3, line: 231, column: 2)
!999 = !DILocation(line: 232, column: 2, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 232, column: 2)
!1001 = distinct !DILexicalBlock(scope: !2, file: !3, line: 232, column: 2)
!1002 = !DILocation(line: 232, column: 2, scope: !1001)
!1003 = !DILocation(line: 232, column: 2, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 232, column: 2)
!1005 = !DILocation(line: 233, column: 2, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 233, column: 2)
!1007 = distinct !DILexicalBlock(scope: !2, file: !3, line: 233, column: 2)
!1008 = !{!1009, !1010, i64 184}
!1009 = !{!"netif", !1010, i64 0, !1013, i64 8, !1013, i64 32, !1013, i64 56, !1011, i64 80, !1011, i64 152, !1011, i64 156, !1011, i64 168, !1010, i64 184, !1010, i64 192, !1010, i64 200, !1010, i64 208, !1010, i64 216, !1010, i64 224, !1010, i64 232, !1011, i64 240, !1014, i64 248, !1014, i64 250, !1014, i64 252, !1011, i64 254, !1011, i64 260, !1011, i64 261, !1011, i64 262, !1011, i64 264, !1011, i64 265, !1011, i64 266, !1010, i64 272}
!1010 = !{!"any pointer", !1011, i64 0}
!1011 = !{!"omnipotent char", !1012, i64 0}
!1012 = !{!"Simple C/C++ TBAA"}
!1013 = !{!"ip_addr", !1011, i64 0, !1011, i64 20}
!1014 = !{!"short", !1011, i64 0}
!1015 = !DILocation(line: 233, column: 2, scope: !1007)
!1016 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1023)
!1017 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !1018, file: !1018, line: 116, type: !1019, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1021)
!1018 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!47}
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "sp", scope: !1017, file: !1018, line: 118, type: !47)
!1023 = distinct !DILocation(line: 238, column: 3, scope: !942)
!1024 = !DILocation(line: 233, column: 2, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 233, column: 2)
!1026 = !{i32 443610}
!1027 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1023)
!1028 = !DILocation(line: 238, column: 3, scope: !942)
!1029 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 238, column: 3, scope: !942)
!1031 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1030)
!1032 = !DILocation(line: 238, column: 3, scope: !943)
!1033 = !DILocation(line: 238, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !942, file: !3, line: 238, column: 3)
!1035 = !DILocation(line: 229, column: 6, scope: !2)
!1036 = !{!1037, !1037, i64 0}
!1037 = !{!"int", !1011, i64 0}
!1038 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1046)
!1040 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1041, file: !1041, line: 47, type: !1042, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1044)
!1041 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!15}
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "sp", scope: !1040, file: !1041, line: 49, type: !47)
!1046 = distinct !DILocation(line: 238, column: 3, scope: !939)
!1047 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1039)
!1048 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1046)
!1049 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1046)
!1050 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1046)
!1051 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1046)
!1052 = !DILocation(line: 238, column: 3, scope: !939)
!1053 = !{i32 -2146006487, i32 -2146006474, i32 -2146006449, i32 -2146006425, i32 -2146006400, i32 -2146006325, i32 -2146006300, i32 -2146006156, i32 -2146002930, i32 -2146002841, i32 -2146002720, i32 -2146002625, i32 -2146002524, i32 -2146002497, i32 -2146002414, i32 -2146002325, i32 -2146002204, i32 -2146002104, i32 -2146001998, i32 -2146001890, i32 -2146005826, i32 -2146005773, i32 -2146005742, i32 -2146005711, i32 -2146005690, i32 -2146005668, i32 -2146005619, i32 -2146005598, i32 -2146005495, i32 -2146001807, i32 -2146001718, i32 -2146001597, i32 -2146001498, i32 -2146001392, i32 -2146001290, i32 -2146001257, i32 -2146001184, i32 -2146001116, i32 -2146005305, i32 -2146005246, i32 -2146005193, i32 -2146005162, i32 -2146005131, i32 -2146005110, i32 -2146005088, i32 -2146005039, i32 -2146005018, i32 -2146001064, i32 -2146000975, i32 -2146000854, i32 -2146000755, i32 -2146000649, i32 -2146000547, i32 -2146000514, i32 -2146000431, i32 -2146000342, i32 -2146000221, i32 -2146000121, i32 -2146000095, i32 -2145999992, i32 -2145999966, i32 -2146004760, i32 -2146004693, i32 -2146004668, i32 -2146004604, i32 -2146004522, i32 -2146004499, i32 -2146004474, i32 -2146004449}
!1054 = !DILocation(line: 238, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 238, column: 3)
!1056 = distinct !DILexicalBlock(scope: !939, file: !3, line: 238, column: 3)
!1057 = !{i32 -2146003411, i32 -2146003394}
!1058 = !DILocation(line: 252, column: 7, scope: !954)
!1059 = !DILocation(line: 252, column: 7, scope: !944)
!1060 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 258, column: 4, scope: !951)
!1062 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1061)
!1063 = !DILocation(line: 258, column: 4, scope: !951)
!1064 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 258, column: 4, scope: !951)
!1066 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1065)
!1067 = !DILocation(line: 258, column: 4, scope: !952)
!1068 = !DILocation(line: 258, column: 4, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !951, file: !3, line: 258, column: 4)
!1070 = !{!1011, !1011, i64 0}
!1071 = !{!1009, !1011, i64 264}
!1072 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 258, column: 4, scope: !948)
!1075 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1073)
!1076 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1074)
!1077 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1074)
!1078 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1074)
!1079 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1074)
!1080 = !DILocation(line: 258, column: 4, scope: !948)
!1081 = !{i32 -2145996542, i32 -2145996529, i32 -2145996504, i32 -2145996480, i32 -2145996455, i32 -2145996380, i32 -2145996355, i32 -2145996211, i32 -2145996186, i32 -2145993381, i32 -2145993292, i32 -2145993171, i32 -2145993076, i32 -2145992975, i32 -2145992948, i32 -2145992865, i32 -2145992776, i32 -2145992655, i32 -2145992555, i32 -2145992449, i32 -2145992341, i32 -2145995810, i32 -2145995757, i32 -2145995726, i32 -2145995695, i32 -2145995674, i32 -2145995652, i32 -2145995603, i32 -2145995582, i32 -2145995479, i32 -2145995447, i32 -2145992258, i32 -2145992169, i32 -2145992048, i32 -2145991949, i32 -2145991843, i32 -2145991741, i32 -2145991708, i32 -2145991635, i32 -2145991567, i32 -2145995187, i32 -2145995134, i32 -2145995103, i32 -2145995072, i32 -2145995051, i32 -2145995029, i32 -2145994980, i32 -2145994959, i32 -2145991521, i32 -2145991432, i32 -2145991311, i32 -2145991212, i32 -2145991106, i32 -2145991004, i32 -2145990971, i32 -2145990888, i32 -2145990799, i32 -2145990678, i32 -2145990578, i32 -2145990552, i32 -2145990449, i32 -2145990423, i32 -2145994701, i32 -2145994676, i32 -2145994609, i32 -2145994584, i32 -2145994520, i32 -2145994404, i32 -2145994379, i32 -2145994354}
!1082 = !DILocation(line: 262, column: 4, scope: !953)
!1083 = !DILocation(line: 263, column: 4, scope: !953)
!1084 = !DILocation(line: 265, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !944, file: !3, line: 265, column: 7)
!1086 = !DILocation(line: 265, column: 7, scope: !944)
!1087 = !DILocation(line: 276, column: 28, scope: !944)
!1088 = !{!1010, !1010, i64 0}
!1089 = !DILocalVariable(name: "b", arg: 1, scope: !1090, file: !849, line: 69, type: !18)
!1090 = distinct !DISubprogram(name: "lwip_netbuf_to_pbuf", scope: !849, file: !849, line: 69, type: !1091, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!779, !18}
!1093 = !{!1089, !1094}
!1094 = !DILocalVariable(name: "np", scope: !1090, file: !849, line: 71, type: !847)
!1095 = !DILocation(line: 69, column: 66, scope: !1090, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 276, column: 7, scope: !944)
!1097 = !DILocation(line: 73, column: 2, scope: !1098, inlinedAt: !1096)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !849, line: 73, column: 2)
!1099 = distinct !DILexicalBlock(scope: !1090, file: !849, line: 73, column: 2)
!1100 = !DILocation(line: 73, column: 2, scope: !1099, inlinedAt: !1096)
!1101 = !DILocation(line: 73, column: 2, scope: !1102, inlinedAt: !1096)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !849, line: 73, column: 2)
!1103 = !DILocalVariable(name: "m", arg: 1, scope: !1104, file: !20, line: 337, type: !18)
!1104 = distinct !DISubprogram(name: "uk_netbuf_get_priv", scope: !20, file: !20, line: 337, type: !1105, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!25, !18}
!1107 = !{!1103}
!1108 = !DILocation(line: 337, column: 58, scope: !1104, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 74, column: 31, scope: !1090, inlinedAt: !1096)
!1110 = !DILocation(line: 341, column: 14, scope: !1104, inlinedAt: !1109)
!1111 = !{!1112, !1010, i64 32}
!1112 = !{!"uk_netbuf", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1014, i64 24, !1113, i64 28, !1010, i64 32, !1010, i64 40, !1114, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72}
!1113 = !{!"", !1037, i64 0}
!1114 = !{!"long", !1011, i64 0}
!1115 = !DILocation(line: 75, column: 2, scope: !1116, inlinedAt: !1096)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !849, line: 75, column: 2)
!1117 = distinct !DILexicalBlock(scope: !1090, file: !849, line: 75, column: 2)
!1118 = !DILocation(line: 75, column: 2, scope: !1117, inlinedAt: !1096)
!1119 = !DILocation(line: 75, column: 2, scope: !1120, inlinedAt: !1096)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !849, line: 75, column: 2)
!1121 = !DILocation(line: 71, column: 23, scope: !1090, inlinedAt: !1096)
!1122 = !DILocation(line: 82, column: 2, scope: !1123, inlinedAt: !1096)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !849, line: 82, column: 2)
!1124 = distinct !DILexicalBlock(scope: !1090, file: !849, line: 82, column: 2)
!1125 = !{!1126, !1011, i64 21}
!1126 = !{!"_netbuf_pbuf", !1127, i64 0, !1010, i64 32}
!1127 = !{!"pbuf_custom", !1128, i64 0, !1010, i64 24}
!1128 = !{!"pbuf", !1010, i64 0, !1010, i64 8, !1014, i64 16, !1014, i64 18, !1011, i64 20, !1011, i64 21, !1011, i64 22, !1011, i64 23}
!1129 = !DILocation(line: 82, column: 2, scope: !1124, inlinedAt: !1096)
!1130 = !DILocation(line: 82, column: 2, scope: !1131, inlinedAt: !1096)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !849, line: 82, column: 2)
!1132 = !DILocation(line: 227, column: 15, scope: !2)
!1133 = !DILocation(line: 277, column: 28, scope: !944)
!1134 = !{!1112, !1010, i64 16}
!1135 = !DILocation(line: 277, column: 6, scope: !944)
!1136 = !DILocation(line: 277, column: 14, scope: !944)
!1137 = !{!1128, !1010, i64 8}
!1138 = !DILocation(line: 278, column: 26, scope: !944)
!1139 = !DILocation(line: 278, column: 37, scope: !944)
!1140 = !{!1112, !1014, i64 24}
!1141 = !DILocation(line: 278, column: 19, scope: !944)
!1142 = !DILocation(line: 278, column: 23, scope: !944)
!1143 = !{!1128, !1014, i64 18}
!1144 = !DILocation(line: 278, column: 6, scope: !944)
!1145 = !DILocation(line: 278, column: 14, scope: !944)
!1146 = !{!1128, !1014, i64 16}
!1147 = !DILocation(line: 279, column: 13, scope: !944)
!1148 = !DILocation(line: 279, column: 9, scope: !944)
!1149 = !DILocation(line: 228, column: 8, scope: !2)
!1150 = !DILocation(line: 280, column: 7, scope: !944)
!1151 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!1152 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 293, column: 5, scope: !962)
!1154 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1153)
!1155 = !DILocation(line: 293, column: 5, scope: !962)
!1156 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 293, column: 5, scope: !962)
!1158 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1157)
!1159 = !DILocation(line: 293, column: 5, scope: !963)
!1160 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 154, column: 21, scope: !1162, inlinedAt: !1168)
!1162 = distinct !DISubprogram(name: "uk_thread_current", scope: !160, file: !160, line: 151, type: !1163, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!158}
!1165 = !{!1166, !1167}
!1166 = !DILocalVariable(name: "current", scope: !1162, file: !160, line: 153, type: !174)
!1167 = !DILocalVariable(name: "sp", scope: !1162, file: !160, line: 154, type: !47)
!1168 = distinct !DILocation(line: 117, column: 30, scope: !1169, inlinedAt: !1173)
!1169 = distinct !DISubprogram(name: "uk_sched_yield", scope: !188, file: !188, line: 114, type: !459, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1170)
!1170 = !{!1171, !1172}
!1171 = !DILocalVariable(name: "s", scope: !1169, file: !188, line: 116, type: !186)
!1172 = !DILocalVariable(name: "current", scope: !1169, file: !188, line: 117, type: !158)
!1173 = distinct !DILocation(line: 293, column: 5, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !962, file: !3, line: 293, column: 5)
!1175 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1161)
!1176 = !DILocation(line: 154, column: 16, scope: !1162, inlinedAt: !1168)
!1177 = !DILocation(line: 156, column: 38, scope: !1162, inlinedAt: !1168)
!1178 = !DILocation(line: 156, column: 12, scope: !1162, inlinedAt: !1168)
!1179 = !DILocation(line: 153, column: 21, scope: !1162, inlinedAt: !1168)
!1180 = !DILocation(line: 158, column: 9, scope: !1162, inlinedAt: !1168)
!1181 = !DILocation(line: 117, column: 20, scope: !1169, inlinedAt: !1173)
!1182 = !DILocation(line: 119, column: 2, scope: !1183, inlinedAt: !1173)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !188, line: 119, column: 2)
!1184 = distinct !DILexicalBlock(scope: !1169, file: !188, line: 119, column: 2)
!1185 = !DILocation(line: 119, column: 2, scope: !1184, inlinedAt: !1173)
!1186 = !DILocation(line: 119, column: 2, scope: !1187, inlinedAt: !1173)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !188, line: 119, column: 2)
!1188 = !DILocation(line: 121, column: 15, scope: !1169, inlinedAt: !1173)
!1189 = !{!1190, !1010, i64 88}
!1190 = !{!"uk_thread", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1191, i64 32, !1037, i64 48, !1114, i64 56, !1192, i64 64, !1193, i64 72, !1010, i64 88, !1010, i64 96, !1037, i64 104, !1010, i64 112, !1010, i64 120}
!1191 = !{!"", !1010, i64 0, !1010, i64 8}
!1192 = !{!"_Bool", !1011, i64 0}
!1193 = !{!"uk_waitq", !1010, i64 0, !1010, i64 8}
!1194 = !DILocation(line: 116, column: 19, scope: !1169, inlinedAt: !1173)
!1195 = !DILocation(line: 122, column: 2, scope: !1196, inlinedAt: !1173)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !188, line: 122, column: 2)
!1197 = distinct !DILexicalBlock(scope: !1169, file: !188, line: 122, column: 2)
!1198 = !DILocation(line: 122, column: 2, scope: !1197, inlinedAt: !1173)
!1199 = !DILocation(line: 122, column: 2, scope: !1200, inlinedAt: !1173)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !188, line: 122, column: 2)
!1201 = !DILocation(line: 123, column: 5, scope: !1169, inlinedAt: !1173)
!1202 = !{!1203, !1010, i64 0}
!1203 = !{!"uk_sched", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1192, i64 72, !1190, i64 80, !1204, i64 208, !1205, i64 224, !1010, i64 248, !1010, i64 256, !1010, i64 264}
!1204 = !{!"uk_thread_list", !1010, i64 0, !1010, i64 8}
!1205 = !{!"ukplat_ctx_callbacks", !1010, i64 0, !1010, i64 8, !1010, i64 16}
!1206 = !DILocation(line: 123, column: 2, scope: !1169, inlinedAt: !1173)
!1207 = !DILocation(line: 293, column: 5, scope: !1174)
!1208 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 293, column: 5, scope: !959)
!1211 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1209)
!1212 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1210)
!1213 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1210)
!1214 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1210)
!1215 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1210)
!1216 = !DILocation(line: 293, column: 5, scope: !959)
!1217 = !{i32 -2145988369, i32 -2145988356, i32 -2145988331, i32 -2145988307, i32 -2145988282, i32 -2145988207, i32 -2145988182, i32 -2145988038, i32 -2145985892, i32 -2145985803, i32 -2145985682, i32 -2145985587, i32 -2145985486, i32 -2145985459, i32 -2145985376, i32 -2145985287, i32 -2145985166, i32 -2145985066, i32 -2145984960, i32 -2145984852, i32 -2145987755, i32 -2145987702, i32 -2145987671, i32 -2145987640, i32 -2145987619, i32 -2145987597, i32 -2145987548, i32 -2145987527, i32 -2145980708, i32 -2145980619, i32 -2145980498, i32 -2145980399, i32 -2145980293, i32 -2145980191, i32 -2145980158, i32 -2145980085, i32 -2145980017, i32 -2145987155, i32 -2145987102, i32 -2145987071, i32 -2145987040, i32 -2145987019, i32 -2145986997, i32 -2145986948, i32 -2145986927, i32 -2145979967, i32 -2145979878, i32 -2145979757, i32 -2145979658, i32 -2145979552, i32 -2145979450, i32 -2145979417, i32 -2145979334, i32 -2145979245, i32 -2145979124, i32 -2145979024, i32 -2145978998, i32 -2145978895, i32 -2145978869, i32 -2145986669, i32 -2145986602, i32 -2145986577, i32 -2145986513, i32 -2145986397, i32 -2145986372, i32 -2145986347}
!1218 = !DILocation(line: 294, column: 15, scope: !964)
!1219 = !DILocation(line: 294, column: 11, scope: !964)
!1220 = !DILocation(line: 295, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !964, file: !3, line: 295, column: 9)
!1222 = !DILocation(line: 295, column: 9, scope: !964)
!1223 = !{!"branch_weights", i32 2000, i32 1}
!1224 = !DILocation(line: 0, scope: !944)
!1225 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 303, column: 4, scope: !972)
!1227 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1226)
!1228 = !DILocation(line: 303, column: 4, scope: !972)
!1229 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 303, column: 4, scope: !972)
!1231 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1230)
!1232 = !DILocation(line: 303, column: 4, scope: !973)
!1233 = !DILocation(line: 303, column: 4, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !972, file: !3, line: 303, column: 4)
!1235 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 303, column: 4, scope: !969)
!1238 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1236)
!1239 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1237)
!1240 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1237)
!1241 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1237)
!1242 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1237)
!1243 = !DILocation(line: 303, column: 4, scope: !969)
!1244 = !{i32 -2145975468, i32 -2145975455, i32 -2145975430, i32 -2145975406, i32 -2145975381, i32 -2145975306, i32 -2145975281, i32 -2145975137, i32 -2145975112, i32 -2145972315, i32 -2145972226, i32 -2145972105, i32 -2145972010, i32 -2145971909, i32 -2145971882, i32 -2145971799, i32 -2145971710, i32 -2145971589, i32 -2145971489, i32 -2145971383, i32 -2145971275, i32 -2145974736, i32 -2145974683, i32 -2145974652, i32 -2145974621, i32 -2145974600, i32 -2145974578, i32 -2145974529, i32 -2145974508, i32 -2145974405, i32 -2145974373, i32 -2145971192, i32 -2145971103, i32 -2145970982, i32 -2145970883, i32 -2145970777, i32 -2145970675, i32 -2145970642, i32 -2145970569, i32 -2145970501, i32 -2145974113, i32 -2145974060, i32 -2145974029, i32 -2145973998, i32 -2145973977, i32 -2145973955, i32 -2145973906, i32 -2145973885, i32 -2145970456, i32 -2145970367, i32 -2145970246, i32 -2145970147, i32 -2145970041, i32 -2145969939, i32 -2145969906, i32 -2145969823, i32 -2145969734, i32 -2145969613, i32 -2145969513, i32 -2145969487, i32 -2145969384, i32 -2145969358, i32 -2145973627, i32 -2145973602, i32 -2145973535, i32 -2145973510, i32 -2145973446, i32 -2145973330, i32 -2145973305, i32 -2145973280}
!1245 = !DILocation(line: 307, column: 27, scope: !966)
!1246 = !DILocation(line: 307, column: 4, scope: !966)
!1247 = !DILocation(line: 308, column: 3, scope: !966)
!1248 = !DILocation(line: 309, column: 11, scope: !2)
!1249 = !DILocation(line: 309, column: 2, scope: !944)
!1250 = distinct !{!1250, !1251, !1252}
!1251 = !DILocation(line: 237, column: 2, scope: !2)
!1252 = !DILocation(line: 309, column: 37, scope: !2)
!1253 = !DILocation(line: 310, column: 1, scope: !2)
!1254 = !DILocation(line: 194, column: 43, scope: !898)
!1255 = !DILocation(line: 196, column: 2, scope: !898)
!1256 = !DILocation(line: 196, column: 10, scope: !898)
!1257 = !DILocation(line: 197, column: 2, scope: !898)
!1258 = !DILocation(line: 198, column: 2, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !899, line: 198, column: 2)
!1260 = distinct !DILexicalBlock(scope: !898, file: !899, line: 198, column: 2)
!1261 = !DILocation(line: 199, column: 2, scope: !898)
!1262 = !DILocation(line: 200, column: 1, scope: !898)
!1263 = distinct !DISubprogram(name: "uk_netdev_rx_one", scope: !1264, file: !1264, line: 458, type: !1265, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1267)
!1264 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netdev.h", directory: "/root/.unikraft/apps/redis/build")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!15, !6, !27, !122}
!1267 = !{!1268, !1269, !1270}
!1268 = !DILocalVariable(name: "dev", arg: 1, scope: !1263, file: !1264, line: 458, type: !6)
!1269 = !DILocalVariable(name: "queue_id", arg: 2, scope: !1263, file: !1264, line: 458, type: !27)
!1270 = !DILocalVariable(name: "pkt", arg: 3, scope: !1263, file: !1264, line: 459, type: !122)
!1271 = !DILocation(line: 458, column: 54, scope: !1263)
!1272 = !DILocation(line: 458, column: 68, scope: !1263)
!1273 = !DILocation(line: 459, column: 27, scope: !1263)
!1274 = !DILocation(line: 461, column: 2, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !1264, line: 461, column: 2)
!1276 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 461, column: 2)
!1277 = !DILocation(line: 461, column: 2, scope: !1276)
!1278 = !DILocation(line: 461, column: 2, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !1264, line: 461, column: 2)
!1280 = !DILocation(line: 462, column: 2, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1264, line: 462, column: 2)
!1282 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 462, column: 2)
!1283 = !{!1284, !1010, i64 8}
!1284 = !{!"uk_netdev", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1011, i64 32, !1011, i64 40, !1191, i64 48, !1010, i64 64, !1010, i64 72}
!1285 = !DILocation(line: 462, column: 2, scope: !1282)
!1286 = !DILocation(line: 462, column: 2, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !1264, line: 462, column: 2)
!1288 = !DILocation(line: 463, column: 2, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1264, line: 463, column: 2)
!1290 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 463, column: 2)
!1291 = !DILocation(line: 463, column: 2, scope: !1290)
!1292 = !DILocation(line: 463, column: 2, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !1264, line: 463, column: 2)
!1294 = !DILocation(line: 464, column: 2, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1264, line: 464, column: 2)
!1296 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 464, column: 2)
!1297 = !{!1284, !1010, i64 16}
!1298 = !{!1299, !1011, i64 0}
!1299 = !{!"uk_netdev_data", !1011, i64 0, !1010, i64 8, !1014, i64 16, !1010, i64 24}
!1300 = !DILocation(line: 464, column: 2, scope: !1296)
!1301 = !DILocation(line: 464, column: 2, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !1264, line: 464, column: 2)
!1303 = !DILocation(line: 465, column: 2, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !1264, line: 465, column: 2)
!1305 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 465, column: 2)
!1306 = !DILocation(line: 465, column: 2, scope: !1305)
!1307 = !DILocation(line: 465, column: 2, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !1264, line: 465, column: 2)
!1309 = !DILocation(line: 466, column: 2, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !1264, line: 466, column: 2)
!1311 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 466, column: 2)
!1312 = !DILocation(line: 466, column: 2, scope: !1311)
!1313 = !DILocation(line: 466, column: 2, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !1264, line: 466, column: 2)
!1315 = !DILocation(line: 468, column: 9, scope: !1263)
!1316 = !DILocation(line: 468, column: 2, scope: !1263)
!1317 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 154, column: 21, scope: !1162, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 117, column: 30, scope: !1169)
!1320 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1318)
!1321 = !DILocation(line: 154, column: 16, scope: !1162, inlinedAt: !1319)
!1322 = !DILocation(line: 156, column: 38, scope: !1162, inlinedAt: !1319)
!1323 = !DILocation(line: 156, column: 12, scope: !1162, inlinedAt: !1319)
!1324 = !DILocation(line: 153, column: 21, scope: !1162, inlinedAt: !1319)
!1325 = !DILocation(line: 158, column: 9, scope: !1162, inlinedAt: !1319)
!1326 = !DILocation(line: 117, column: 20, scope: !1169)
!1327 = !DILocation(line: 119, column: 2, scope: !1183)
!1328 = !DILocation(line: 119, column: 2, scope: !1184)
!1329 = !DILocation(line: 119, column: 2, scope: !1187)
!1330 = !DILocation(line: 121, column: 15, scope: !1169)
!1331 = !DILocation(line: 116, column: 19, scope: !1169)
!1332 = !DILocation(line: 122, column: 2, scope: !1196)
!1333 = !DILocation(line: 122, column: 2, scope: !1197)
!1334 = !DILocation(line: 122, column: 2, scope: !1200)
!1335 = !DILocation(line: 123, column: 5, scope: !1169)
!1336 = !DILocation(line: 123, column: 2, scope: !1169)
!1337 = !DILocation(line: 124, column: 1, scope: !1169)
!1338 = !DILocation(line: 186, column: 42, scope: !922)
!1339 = !DILocation(line: 188, column: 2, scope: !922)
!1340 = !DILocation(line: 188, column: 10, scope: !922)
!1341 = !DILocation(line: 189, column: 2, scope: !922)
!1342 = !DILocation(line: 190, column: 2, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !899, line: 190, column: 2)
!1344 = distinct !DILexicalBlock(scope: !922, file: !899, line: 190, column: 2)
!1345 = !DILocation(line: 191, column: 2, scope: !922)
!1346 = !DILocation(line: 192, column: 1, scope: !922)
!1347 = distinct !DISubprogram(name: "uknetdev_poll", scope: !3, file: !3, line: 328, type: !814, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1348)
!1348 = !{!1349, !1350}
!1349 = !DILocalVariable(name: "nf", arg: 1, scope: !1347, file: !3, line: 328, type: !733)
!1350 = !DILocalVariable(name: "dev", scope: !1347, file: !3, line: 330, type: !6)
!1351 = !DILocation(line: 328, column: 34, scope: !1347)
!1352 = !DILocation(line: 332, column: 2, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 332, column: 2)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 332, column: 2)
!1355 = !DILocation(line: 332, column: 2, scope: !1354)
!1356 = !DILocation(line: 332, column: 2, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 332, column: 2)
!1358 = !DILocation(line: 338, column: 2, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 338, column: 2)
!1360 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 338, column: 2)
!1361 = !DILocation(line: 338, column: 2, scope: !1360)
!1362 = !DILocation(line: 338, column: 2, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 338, column: 2)
!1364 = !DILocation(line: 339, column: 2, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 339, column: 2)
!1366 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 339, column: 2)
!1367 = !DILocation(line: 339, column: 2, scope: !1366)
!1368 = !DILocation(line: 339, column: 2, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 339, column: 2)
!1370 = !DILocation(line: 341, column: 8, scope: !1347)
!1371 = !{!1009, !1010, i64 232}
!1372 = !DILocation(line: 330, column: 20, scope: !1347)
!1373 = !DILocation(line: 342, column: 2, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 342, column: 2)
!1375 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 342, column: 2)
!1376 = !DILocation(line: 342, column: 2, scope: !1375)
!1377 = !DILocation(line: 342, column: 2, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 342, column: 2)
!1379 = !DILocation(line: 348, column: 27, scope: !1347)
!1380 = !DILocation(line: 348, column: 2, scope: !1347)
!1381 = !DILocation(line: 350, column: 1, scope: !1347)
!1382 = distinct !DISubprogram(name: "___poll_netif", scope: !3, file: !3, line: 380, type: !263, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DILocalVariable(name: "arg", arg: 1, scope: !1382, file: !3, line: 380, type: !25)
!1385 = !DILocalVariable(name: "nf", scope: !1382, file: !3, line: 381, type: !733)
!1386 = !DILocalVariable(name: "tid", scope: !1387, file: !3, line: 386, type: !176)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 386, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 386, column: 3)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 386, column: 3)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 386, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 386, column: 3)
!1392 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 383, column: 12)
!1393 = !DILocation(line: 380, column: 26, scope: !1382)
!1394 = !DILocation(line: 381, column: 21, scope: !1382)
!1395 = !DILocation(line: 381, column: 16, scope: !1382)
!1396 = !DILocation(line: 383, column: 2, scope: !1382)
!1397 = !DILocation(line: 385, column: 3, scope: !1392)
!1398 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 386, column: 3, scope: !1390)
!1400 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1399)
!1401 = !DILocation(line: 386, column: 3, scope: !1390)
!1402 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 386, column: 3, scope: !1390)
!1404 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1403)
!1405 = !DILocation(line: 386, column: 3, scope: !1391)
!1406 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 154, column: 21, scope: !1162, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 117, column: 30, scope: !1169, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 386, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 386, column: 3)
!1411 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1407)
!1412 = !DILocation(line: 154, column: 16, scope: !1162, inlinedAt: !1408)
!1413 = !DILocation(line: 156, column: 38, scope: !1162, inlinedAt: !1408)
!1414 = !DILocation(line: 156, column: 12, scope: !1162, inlinedAt: !1408)
!1415 = !DILocation(line: 153, column: 21, scope: !1162, inlinedAt: !1408)
!1416 = !DILocation(line: 158, column: 9, scope: !1162, inlinedAt: !1408)
!1417 = !DILocation(line: 117, column: 20, scope: !1169, inlinedAt: !1409)
!1418 = !DILocation(line: 119, column: 2, scope: !1183, inlinedAt: !1409)
!1419 = !DILocation(line: 119, column: 2, scope: !1184, inlinedAt: !1409)
!1420 = !DILocation(line: 119, column: 2, scope: !1187, inlinedAt: !1409)
!1421 = !DILocation(line: 121, column: 15, scope: !1169, inlinedAt: !1409)
!1422 = !DILocation(line: 116, column: 19, scope: !1169, inlinedAt: !1409)
!1423 = !DILocation(line: 122, column: 2, scope: !1196, inlinedAt: !1409)
!1424 = !DILocation(line: 122, column: 2, scope: !1197, inlinedAt: !1409)
!1425 = !DILocation(line: 122, column: 2, scope: !1200, inlinedAt: !1409)
!1426 = !DILocation(line: 123, column: 5, scope: !1169, inlinedAt: !1409)
!1427 = !DILocation(line: 123, column: 2, scope: !1169, inlinedAt: !1409)
!1428 = !DILocation(line: 386, column: 3, scope: !1410)
!1429 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 386, column: 3, scope: !1387)
!1432 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1430)
!1433 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1431)
!1434 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1431)
!1435 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1431)
!1436 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1431)
!1437 = !DILocation(line: 386, column: 3, scope: !1387)
!1438 = !{i32 -2145958586, i32 -2145958573, i32 -2145958548, i32 -2145958524, i32 -2145958499, i32 -2145958424, i32 -2145958399, i32 -2145958255, i32 -2145956109, i32 -2145956020, i32 -2145955899, i32 -2145955804, i32 -2145955703, i32 -2145955676, i32 -2145955593, i32 -2145955504, i32 -2145955383, i32 -2145955283, i32 -2145955177, i32 -2145955069, i32 -2145957972, i32 -2145957919, i32 -2145957888, i32 -2145957857, i32 -2145957836, i32 -2145957814, i32 -2145957765, i32 -2145957744, i32 -2145954986, i32 -2145954897, i32 -2145954776, i32 -2145954677, i32 -2145954571, i32 -2145954469, i32 -2145954436, i32 -2145954363, i32 -2145954295, i32 -2145957372, i32 -2145957319, i32 -2145957288, i32 -2145957257, i32 -2145957236, i32 -2145957214, i32 -2145957165, i32 -2145957144, i32 -2145954245, i32 -2145954156, i32 -2145954035, i32 -2145953936, i32 -2145953830, i32 -2145953728, i32 -2145953695, i32 -2145953612, i32 -2145953523, i32 -2145953402, i32 -2145953302, i32 -2145953276, i32 -2145953173, i32 -2145953147, i32 -2145956886, i32 -2145956819, i32 -2145956794, i32 -2145956730, i32 -2145956614, i32 -2145956589, i32 -2145956564}
!1439 = distinct !{!1439, !1396, !1440}
!1440 = !DILocation(line: 387, column: 2, scope: !1382)
!1441 = distinct !DISubprogram(name: "uknetdev_init", scope: !3, file: !3, line: 493, type: !1442, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!777, !733}
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1466, !1467, !1473, !1474, !1480, !1486, !1487, !1493, !1494, !1500, !1501, !1502, !1503, !1509, !1510, !1511, !1512, !1518, !1519, !1525, !1526, !1532}
!1445 = !DILocalVariable(name: "nf", arg: 1, scope: !1441, file: !3, line: 493, type: !733)
!1446 = !DILocalVariable(name: "a", scope: !1441, file: !3, line: 495, type: !54)
!1447 = !DILocalVariable(name: "dev", scope: !1441, file: !3, line: 496, type: !6)
!1448 = !DILocalVariable(name: "_dss_dev", scope: !1441, file: !3, line: 497, type: !689)
!1449 = !DILocalVariable(name: "dev_conf", scope: !1441, file: !3, line: 498, type: !644)
!1450 = !DILocalVariable(name: "_dss_dev_conf", scope: !1441, file: !3, line: 499, type: !843)
!1451 = !DILocalVariable(name: "rxq_conf", scope: !1441, file: !3, line: 500, type: !663)
!1452 = !DILocalVariable(name: "_dss_rxq_conf", scope: !1441, file: !3, line: 501, type: !662)
!1453 = !DILocalVariable(name: "txq_conf", scope: !1441, file: !3, line: 502, type: !654)
!1454 = !DILocalVariable(name: "_dss_txq_conf", scope: !1441, file: !3, line: 503, type: !653)
!1455 = !DILocalVariable(name: "netdev_state", scope: !1441, file: !3, line: 504, type: !128)
!1456 = !DILocalVariable(name: "lwip_data", scope: !1441, file: !3, line: 505, type: !861)
!1457 = !DILocalVariable(name: "hwaddr", scope: !1441, file: !3, line: 506, type: !553)
!1458 = !DILocalVariable(name: "i", scope: !1441, file: !3, line: 507, type: !39)
!1459 = !DILocalVariable(name: "ret", scope: !1441, file: !3, line: 508, type: !15)
!1460 = !DILocalVariable(name: "tid", scope: !1461, file: !3, line: 514, type: !176)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 514, column: 2)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 514, column: 2)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 514, column: 2)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 514, column: 2)
!1465 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 514, column: 2)
!1466 = !DILocalVariable(name: "_ret", scope: !1461, file: !3, line: 514, type: !841)
!1467 = !DILocalVariable(name: "tid", scope: !1468, file: !3, line: 520, type: !176)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 520, column: 2)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 520, column: 2)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 520, column: 2)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 520, column: 2)
!1472 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 520, column: 2)
!1473 = !DILocalVariable(name: "_ret", scope: !1468, file: !3, line: 520, type: !841)
!1474 = !DILocalVariable(name: "tid", scope: !1475, file: !3, line: 549, type: !176)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 549, column: 2)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 549, column: 2)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 549, column: 2)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 549, column: 2)
!1479 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 549, column: 2)
!1480 = !DILocalVariable(name: "tid", scope: !1481, file: !3, line: 574, type: !176)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 574, column: 2)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 574, column: 2)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 574, column: 2)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 574, column: 2)
!1485 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 574, column: 2)
!1486 = !DILocalVariable(name: "_ret", scope: !1481, file: !3, line: 574, type: !841)
!1487 = !DILocalVariable(name: "tid", scope: !1488, file: !3, line: 601, type: !176)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 601, column: 2)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 601, column: 2)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 601, column: 2)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 601, column: 2)
!1492 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 601, column: 2)
!1493 = !DILocalVariable(name: "_ret", scope: !1488, file: !3, line: 601, type: !841)
!1494 = !DILocalVariable(name: "tid", scope: !1495, file: !3, line: 608, type: !176)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 608, column: 2)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 608, column: 2)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 608, column: 2)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 608, column: 2)
!1499 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 608, column: 2)
!1500 = !DILocalVariable(name: "_ret", scope: !1495, file: !3, line: 608, type: !841)
!1501 = !DILocalVariable(name: "_arg3", scope: !1495, file: !3, line: 608, type: !841)
!1502 = !DILocalVariable(name: "_arg4", scope: !1495, file: !3, line: 608, type: !841)
!1503 = !DILocalVariable(name: "tid", scope: !1504, file: !3, line: 624, type: !176)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 624, column: 2)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 624, column: 2)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 624, column: 2)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 624, column: 2)
!1508 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 624, column: 2)
!1509 = !DILocalVariable(name: "_ret", scope: !1504, file: !3, line: 624, type: !841)
!1510 = !DILocalVariable(name: "_arg3", scope: !1504, file: !3, line: 624, type: !841)
!1511 = !DILocalVariable(name: "_arg4", scope: !1504, file: !3, line: 624, type: !841)
!1512 = !DILocalVariable(name: "tid", scope: !1513, file: !3, line: 636, type: !176)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 636, column: 2)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 636, column: 2)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 636, column: 2)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 636, column: 2)
!1517 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 636, column: 2)
!1518 = !DILocalVariable(name: "_ret", scope: !1513, file: !3, line: 636, type: !841)
!1519 = !DILocalVariable(name: "tid", scope: !1520, file: !3, line: 692, type: !176)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 692, column: 2)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 692, column: 2)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 692, column: 2)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 692, column: 2)
!1524 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 692, column: 2)
!1525 = !DILocalVariable(name: "_ret", scope: !1520, file: !3, line: 692, type: !841)
!1526 = !DILocalVariable(name: "tid", scope: !1527, file: !3, line: 711, type: !176)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 711, column: 2)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 711, column: 2)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 711, column: 2)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 711, column: 2)
!1531 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 711, column: 2)
!1532 = !DILocalVariable(name: "_ret", scope: !1527, file: !3, line: 711, type: !841)
!1533 = !DILocation(line: 493, column: 35, scope: !1441)
!1534 = !DILocation(line: 495, column: 19, scope: !1441)
!1535 = !DILocation(line: 496, column: 2, scope: !1441)
!1536 = !DILocation(line: 497, column: 55, scope: !1441)
!1537 = !DILocation(line: 497, column: 74, scope: !1441)
!1538 = !DILocation(line: 497, column: 32, scope: !1441)
!1539 = !DILocation(line: 497, column: 21, scope: !1441)
!1540 = !DILocation(line: 498, column: 2, scope: !1441)
!1541 = !DILocation(line: 499, column: 68, scope: !1441)
!1542 = !DILocation(line: 499, column: 92, scope: !1441)
!1543 = !DILocation(line: 499, column: 41, scope: !1441)
!1544 = !DILocation(line: 499, column: 25, scope: !1441)
!1545 = !DILocation(line: 500, column: 2, scope: !1441)
!1546 = !DILocation(line: 501, column: 84, scope: !1441)
!1547 = !DILocation(line: 501, column: 108, scope: !1441)
!1548 = !DILocation(line: 501, column: 49, scope: !1441)
!1549 = !DILocation(line: 501, column: 33, scope: !1441)
!1550 = !DILocation(line: 502, column: 2, scope: !1441)
!1551 = !DILocation(line: 503, column: 84, scope: !1441)
!1552 = !DILocation(line: 503, column: 108, scope: !1441)
!1553 = !DILocation(line: 503, column: 49, scope: !1441)
!1554 = !DILocation(line: 503, column: 33, scope: !1441)
!1555 = !DILocation(line: 504, column: 2, scope: !1441)
!1556 = !DILocation(line: 505, column: 2, scope: !1441)
!1557 = !DILocation(line: 506, column: 2, scope: !1441)
!1558 = !DILocation(line: 508, column: 2, scope: !1441)
!1559 = !DILocation(line: 510, column: 2, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 510, column: 2)
!1561 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 510, column: 2)
!1562 = !DILocation(line: 510, column: 2, scope: !1561)
!1563 = !DILocation(line: 510, column: 2, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 510, column: 2)
!1565 = !DILocation(line: 511, column: 16, scope: !1441)
!1566 = !DILocation(line: 511, column: 14, scope: !1441)
!1567 = !DILocation(line: 512, column: 2, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 512, column: 2)
!1569 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 512, column: 2)
!1570 = !DILocation(line: 512, column: 2, scope: !1569)
!1571 = !DILocation(line: 512, column: 2, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 512, column: 2)
!1573 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 514, column: 2, scope: !1464)
!1575 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1574)
!1576 = !DILocation(line: 514, column: 2, scope: !1464)
!1577 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 514, column: 2, scope: !1464)
!1579 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1578)
!1580 = !DILocation(line: 514, column: 2, scope: !1465)
!1581 = !DILocation(line: 514, column: 2, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 514, column: 2)
!1583 = !DILocalVariable(name: "dev", arg: 1, scope: !1584, file: !3, line: 104, type: !6)
!1584 = distinct !DISubprogram(name: "_retrieve_scratchpad", scope: !3, file: !3, line: 104, type: !1585, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!861, !6}
!1587 = !{!1583}
!1588 = !DILocation(line: 104, column: 65, scope: !1584, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 514, column: 2, scope: !1582)
!1590 = !DILocation(line: 106, column: 41, scope: !1584, inlinedAt: !1589)
!1591 = !{!1284, !1010, i64 72}
!1592 = !DILocation(line: 505, column: 27, scope: !1441)
!1593 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 514, column: 2, scope: !1461)
!1596 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1594)
!1597 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1595)
!1598 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1595)
!1599 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1595)
!1600 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1595)
!1601 = !DILocation(line: 514, column: 2, scope: !1461)
!1602 = !{i32 -2145913204, i32 -2145913191, i32 -2145913166, i32 -2145913142, i32 -2145913117, i32 -2145913042, i32 -2145913017, i32 -2145912873, i32 -2145909685, i32 -2145909596, i32 -2145909475, i32 -2145909380, i32 -2145909279, i32 -2145909252, i32 -2145909169, i32 -2145909080, i32 -2145908959, i32 -2145908859, i32 -2145908753, i32 -2145908645, i32 -2145912585, i32 -2145912532, i32 -2145912501, i32 -2145912470, i32 -2145912449, i32 -2145912427, i32 -2145912378, i32 -2145912357, i32 -2145908562, i32 -2145908473, i32 -2145908352, i32 -2145908253, i32 -2145908147, i32 -2145908045, i32 -2145908012, i32 -2145907939, i32 -2145907871, i32 -2145912053, i32 -2145911994, i32 -2145911941, i32 -2145911910, i32 -2145911879, i32 -2145911858, i32 -2145911836, i32 -2145911787, i32 -2145911766, i32 -2145907815, i32 -2145907726, i32 -2145907605, i32 -2145907506, i32 -2145907400, i32 -2145907298, i32 -2145907265, i32 -2145907182, i32 -2145907093, i32 -2145906972, i32 -2145906872, i32 -2145906846, i32 -2145906743, i32 -2145906717, i32 -2145911508, i32 -2145911441, i32 -2145911416, i32 -2145911352, i32 -2145911270, i32 -2145911247, i32 -2145911222, i32 -2145911197}
!1603 = !DILocation(line: 514, column: 2, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 514, column: 2)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 514, column: 2)
!1606 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 514, column: 2)
!1607 = !{i32 -2145910009, i32 -2145909993}
!1608 = !DILocation(line: 517, column: 2, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 517, column: 2)
!1610 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 517, column: 2)
!1611 = !DILocation(line: 517, column: 2, scope: !1610)
!1612 = !DILocation(line: 517, column: 2, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 517, column: 2)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 517, column: 2)
!1615 = !DILocation(line: 517, column: 2, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 517, column: 2)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 517, column: 2)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 517, column: 2)
!1619 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 520, column: 2, scope: !1471)
!1621 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1620)
!1622 = !DILocation(line: 520, column: 2, scope: !1471)
!1623 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 520, column: 2, scope: !1471)
!1625 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1624)
!1626 = !DILocation(line: 520, column: 2, scope: !1472)
!1627 = !DILocation(line: 520, column: 2, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 520, column: 2)
!1629 = !DILocation(line: 504, column: 23, scope: !1441)
!1630 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 520, column: 2, scope: !1468)
!1633 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1631)
!1634 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1632)
!1635 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1632)
!1636 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1632)
!1637 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1632)
!1638 = !DILocation(line: 520, column: 2, scope: !1468)
!1639 = !{i32 -2145904034, i32 -2145904021, i32 -2145903996, i32 -2145903972, i32 -2145903947, i32 -2145903872, i32 -2145903847, i32 -2145903703, i32 -2145900493, i32 -2145900404, i32 -2145900283, i32 -2145900188, i32 -2145900087, i32 -2145900060, i32 -2145899977, i32 -2145899888, i32 -2145899767, i32 -2145899667, i32 -2145899561, i32 -2145899453, i32 -2145903415, i32 -2145903362, i32 -2145903331, i32 -2145903300, i32 -2145903279, i32 -2145903257, i32 -2145903208, i32 -2145903187, i32 -2145899370, i32 -2145899281, i32 -2145899160, i32 -2145899061, i32 -2145898955, i32 -2145898853, i32 -2145898820, i32 -2145898747, i32 -2145898679, i32 -2145902883, i32 -2145902824, i32 -2145902771, i32 -2145902740, i32 -2145902709, i32 -2145902688, i32 -2145902666, i32 -2145902617, i32 -2145902596, i32 -2145898624, i32 -2145898535, i32 -2145898414, i32 -2145898315, i32 -2145898209, i32 -2145898107, i32 -2145898074, i32 -2145897991, i32 -2145897902, i32 -2145897781, i32 -2145897681, i32 -2145897655, i32 -2145897552, i32 -2145897526, i32 -2145902338, i32 -2145902271, i32 -2145902246, i32 -2145902182, i32 -2145902100, i32 -2145902077, i32 -2145902052, i32 -2145902027}
!1640 = !DILocation(line: 520, column: 2, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 520, column: 2)
!1642 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 520, column: 2)
!1643 = !{i32 -2145901046, i32 -2145901029}
!1644 = !DILocation(line: 524, column: 6, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 524, column: 6)
!1646 = !DILocation(line: 524, column: 19, scope: !1645)
!1647 = !DILocation(line: 524, column: 6, scope: !1441)
!1648 = !DILocation(line: 532, column: 2, scope: !1441)
!1649 = !DILocation(line: 532, column: 14, scope: !1441)
!1650 = !DILocation(line: 533, column: 2, scope: !1441)
!1651 = !DILocation(line: 533, column: 14, scope: !1441)
!1652 = !DILocation(line: 543, column: 6, scope: !1441)
!1653 = !DILocation(line: 544, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 544, column: 6)
!1655 = !DILocation(line: 544, column: 6, scope: !1441)
!1656 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 549, column: 2, scope: !1478)
!1658 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1657)
!1659 = !DILocation(line: 549, column: 2, scope: !1478)
!1660 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 549, column: 2, scope: !1478)
!1662 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1661)
!1663 = !DILocation(line: 549, column: 2, scope: !1479)
!1664 = !DILocation(line: 549, column: 2, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 549, column: 2)
!1666 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 549, column: 2, scope: !1475)
!1669 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1667)
!1670 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1668)
!1671 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1668)
!1672 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1668)
!1673 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1668)
!1674 = !DILocation(line: 549, column: 2, scope: !1475)
!1675 = !{i32 -2145895406, i32 -2145895393, i32 -2145895368, i32 -2145895344, i32 -2145895319, i32 -2145895244, i32 -2145895219, i32 -2145895075, i32 -2145892806, i32 -2145892717, i32 -2145892596, i32 -2145892501, i32 -2145892400, i32 -2145892373, i32 -2145892290, i32 -2145892201, i32 -2145892080, i32 -2145891980, i32 -2145891874, i32 -2145891766, i32 -2145894783, i32 -2145894730, i32 -2145894699, i32 -2145894668, i32 -2145894647, i32 -2145894625, i32 -2145894576, i32 -2145894555, i32 -2145891683, i32 -2145891594, i32 -2145891473, i32 -2145891374, i32 -2145891268, i32 -2145891166, i32 -2145891133, i32 -2145891060, i32 -2145890992, i32 -2145894178, i32 -2145894125, i32 -2145894094, i32 -2145894063, i32 -2145894042, i32 -2145894020, i32 -2145893971, i32 -2145893950, i32 -2145890938, i32 -2145890849, i32 -2145890728, i32 -2145890629, i32 -2145890523, i32 -2145890421, i32 -2145890388, i32 -2145890305, i32 -2145890216, i32 -2145890095, i32 -2145889995, i32 -2145889969, i32 -2145889866, i32 -2145889840, i32 -2145893692, i32 -2145893625, i32 -2145893600, i32 -2145893536, i32 -2145893420, i32 -2145893395, i32 -2145893370}
!1676 = !DILocation(line: 551, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 551, column: 6)
!1678 = !DILocation(line: 551, column: 27, scope: !1677)
!1679 = !{!1680, !1014, i64 8}
!1680 = !{!"lwip_netdev_data", !1010, i64 0, !1681, i64 8, !1010, i64 32, !1010, i64 40, !1010, i64 48}
!1681 = !{!"uk_netdev_info", !1014, i64 0, !1014, i64 2, !1037, i64 4, !1014, i64 8, !1014, i64 10, !1014, i64 12, !1014, i64 14, !1037, i64 16}
!1682 = !DILocation(line: 552, column: 6, scope: !1677)
!1683 = !DILocation(line: 552, column: 30, scope: !1677)
!1684 = !{!1680, !1014, i64 10}
!1685 = !DILocation(line: 552, column: 10, scope: !1677)
!1686 = !DILocation(line: 551, column: 6, scope: !1441)
!1687 = !DILocation(line: 559, column: 13, scope: !1441)
!1688 = !DILocation(line: 559, column: 19, scope: !1441)
!1689 = !{!1680, !1010, i64 0}
!1690 = !DILocation(line: 572, column: 19, scope: !1441)
!1691 = !DILocation(line: 572, column: 32, scope: !1441)
!1692 = !{!1693, !1014, i64 0}
!1693 = !{!"uk_netdev_conf", !1014, i64 0, !1014, i64 2}
!1694 = !DILocation(line: 573, column: 19, scope: !1441)
!1695 = !DILocation(line: 573, column: 32, scope: !1441)
!1696 = !{!1693, !1014, i64 2}
!1697 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 574, column: 2, scope: !1484)
!1699 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1698)
!1700 = !DILocation(line: 574, column: 2, scope: !1484)
!1701 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 574, column: 2, scope: !1484)
!1703 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1702)
!1704 = !DILocation(line: 574, column: 2, scope: !1485)
!1705 = !DILocation(line: 574, column: 2, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 574, column: 2)
!1707 = !DILocation(line: 508, column: 6, scope: !1441)
!1708 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 574, column: 2, scope: !1481)
!1711 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1709)
!1712 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1710)
!1713 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1710)
!1714 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1710)
!1715 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1710)
!1716 = !DILocation(line: 574, column: 2, scope: !1481)
!1717 = !{i32 -2145887629, i32 -2145887616, i32 -2145887591, i32 -2145887567, i32 -2145887542, i32 -2145887467, i32 -2145887442, i32 -2145887298, i32 -2145884101, i32 -2145884012, i32 -2145883891, i32 -2145883796, i32 -2145883695, i32 -2145883668, i32 -2145883585, i32 -2145883496, i32 -2145883375, i32 -2145883275, i32 -2145883169, i32 -2145883061, i32 -2145887006, i32 -2145886953, i32 -2145886922, i32 -2145886891, i32 -2145886870, i32 -2145886848, i32 -2145886799, i32 -2145886778, i32 -2145882978, i32 -2145882889, i32 -2145882768, i32 -2145882669, i32 -2145882563, i32 -2145882461, i32 -2145882428, i32 -2145882355, i32 -2145882287, i32 -2145886471, i32 -2145886412, i32 -2145886359, i32 -2145886328, i32 -2145886297, i32 -2145886276, i32 -2145886254, i32 -2145886205, i32 -2145886184, i32 -2145882232, i32 -2145882143, i32 -2145882022, i32 -2145881923, i32 -2145881817, i32 -2145881715, i32 -2145881682, i32 -2145881599, i32 -2145881510, i32 -2145881389, i32 -2145881289, i32 -2145881263, i32 -2145881160, i32 -2145881134, i32 -2145885926, i32 -2145885859, i32 -2145885834, i32 -2145885770, i32 -2145885688, i32 -2145885665, i32 -2145885640, i32 -2145885615}
!1718 = !DILocation(line: 574, column: 2, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 574, column: 2)
!1720 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 574, column: 2)
!1721 = !{i32 -2145884600, i32 -2145884583}
!1722 = !DILocation(line: 576, column: 6, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 576, column: 6)
!1724 = !DILocation(line: 576, column: 10, scope: !1723)
!1725 = !DILocation(line: 576, column: 6, scope: !1441)
!1726 = !DILocation(line: 588, column: 19, scope: !1441)
!1727 = !DILocation(line: 588, column: 21, scope: !1441)
!1728 = !{!1729, !1010, i64 16}
!1729 = !{!"uk_netdev_rxqueue_conf", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40}
!1730 = !DILocation(line: 589, column: 19, scope: !1441)
!1731 = !DILocation(line: 589, column: 32, scope: !1441)
!1732 = !{!1729, !1010, i64 24}
!1733 = !DILocation(line: 590, column: 39, scope: !1441)
!1734 = !DILocation(line: 590, column: 19, scope: !1441)
!1735 = !DILocation(line: 590, column: 37, scope: !1441)
!1736 = !{!1729, !1010, i64 32}
!1737 = !DILocation(line: 598, column: 19, scope: !1441)
!1738 = !DILocation(line: 598, column: 28, scope: !1441)
!1739 = !{!1729, !1010, i64 0}
!1740 = !DILocation(line: 599, column: 19, scope: !1441)
!1741 = !DILocation(line: 599, column: 35, scope: !1441)
!1742 = !{!1729, !1010, i64 8}
!1743 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 601, column: 2, scope: !1491)
!1745 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1744)
!1746 = !DILocation(line: 601, column: 2, scope: !1491)
!1747 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 601, column: 2, scope: !1491)
!1749 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1748)
!1750 = !DILocation(line: 601, column: 2, scope: !1492)
!1751 = !DILocation(line: 601, column: 2, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 601, column: 2)
!1753 = !{!1729, !1010, i64 40}
!1754 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 601, column: 2, scope: !1488)
!1757 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1755)
!1758 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1756)
!1759 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1756)
!1760 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1756)
!1761 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1756)
!1762 = !DILocation(line: 601, column: 2, scope: !1488)
!1763 = !{i32 -2145879104, i32 -2145879091, i32 -2145879066, i32 -2145879042, i32 -2145879017, i32 -2145878942, i32 -2145878917, i32 -2145878773, i32 -2145875566, i32 -2145875477, i32 -2145875356, i32 -2145875261, i32 -2145875160, i32 -2145875133, i32 -2145875050, i32 -2145874961, i32 -2145874840, i32 -2145874740, i32 -2145874634, i32 -2145874526, i32 -2145878490, i32 -2145878437, i32 -2145878406, i32 -2145878375, i32 -2145878354, i32 -2145878332, i32 -2145878283, i32 -2145878262, i32 -2145874443, i32 -2145874354, i32 -2145874233, i32 -2145874134, i32 -2145874028, i32 -2145873926, i32 -2145873893, i32 -2145873820, i32 -2145873752, i32 -2145877960, i32 -2145877901, i32 -2145877848, i32 -2145877817, i32 -2145877786, i32 -2145877765, i32 -2145877743, i32 -2145877694, i32 -2145877673, i32 -2145873696, i32 -2145873607, i32 -2145873486, i32 -2145873387, i32 -2145873281, i32 -2145873179, i32 -2145873146, i32 -2145873063, i32 -2145872974, i32 -2145872853, i32 -2145872753, i32 -2145872727, i32 -2145872624, i32 -2145872598, i32 -2145877415, i32 -2145877348, i32 -2145877323, i32 -2145877259, i32 -2145877177, i32 -2145877154, i32 -2145877129, i32 -2145877104}
!1764 = !DILocation(line: 601, column: 2, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 601, column: 2)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 601, column: 2)
!1767 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 601, column: 2)
!1768 = !{i32 -2145875950, i32 -2145875934}
!1769 = !DILocation(line: 602, column: 24, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 602, column: 6)
!1771 = !DILocation(line: 602, column: 7, scope: !1770)
!1772 = !DILocation(line: 602, column: 6, scope: !1441)
!1773 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 608, column: 2, scope: !1498)
!1775 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1774)
!1776 = !DILocation(line: 608, column: 2, scope: !1498)
!1777 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 608, column: 2, scope: !1498)
!1779 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1778)
!1780 = !DILocation(line: 608, column: 2, scope: !1499)
!1781 = !DILocation(line: 608, column: 2, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 608, column: 2)
!1783 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 608, column: 2, scope: !1495)
!1786 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1784)
!1787 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1785)
!1788 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1785)
!1789 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1785)
!1790 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1785)
!1791 = !DILocation(line: 608, column: 2, scope: !1495)
!1792 = !{i32 -2145870118, i32 -2145870105, i32 -2145870080, i32 -2145870056, i32 -2145870031, i32 -2145869956, i32 -2145869931, i32 -2145869787, i32 -2145869762, i32 -2145866419, i32 -2145866330, i32 -2145866209, i32 -2145866114, i32 -2145866013, i32 -2145865986, i32 -2145865903, i32 -2145865814, i32 -2145865693, i32 -2145865593, i32 -2145865487, i32 -2145865379, i32 -2145869425, i32 -2145869372, i32 -2145869341, i32 -2145869310, i32 -2145869289, i32 -2145869267, i32 -2145869218, i32 -2145869197, i32 -2145869094, i32 -2145869062, i32 -2145865296, i32 -2145865207, i32 -2145865086, i32 -2145864987, i32 -2145864881, i32 -2145864779, i32 -2145864746, i32 -2145864673, i32 -2145864605, i32 -2145868872, i32 -2145868813, i32 -2145868760, i32 -2145868729, i32 -2145868698, i32 -2145868677, i32 -2145868655, i32 -2145868606, i32 -2145868585, i32 -2145864546, i32 -2145864457, i32 -2145864336, i32 -2145864237, i32 -2145864131, i32 -2145864029, i32 -2145863996, i32 -2145863913, i32 -2145863824, i32 -2145863703, i32 -2145863603, i32 -2145863577, i32 -2145863474, i32 -2145863448, i32 -2145868327, i32 -2145868302, i32 -2145868235, i32 -2145868210, i32 -2145868146, i32 -2145868064, i32 -2145868041, i32 -2145868016, i32 -2145867991}
!1793 = !DILocation(line: 608, column: 2, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 608, column: 2)
!1795 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 608, column: 2)
!1796 = !{i32 -2145866930, i32 -2145866913}
!1797 = !DILocation(line: 611, column: 6, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 611, column: 6)
!1799 = !DILocation(line: 611, column: 10, scope: !1798)
!1800 = !DILocation(line: 611, column: 6, scope: !1441)
!1801 = !DILocation(line: 623, column: 19, scope: !1441)
!1802 = !DILocation(line: 623, column: 21, scope: !1441)
!1803 = !{!1804, !1010, i64 0}
!1804 = !{!"uk_netdev_txqueue_conf", !1010, i64 0}
!1805 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 624, column: 2, scope: !1507)
!1807 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1806)
!1808 = !DILocation(line: 624, column: 2, scope: !1507)
!1809 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 624, column: 2, scope: !1507)
!1811 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1810)
!1812 = !DILocation(line: 624, column: 2, scope: !1508)
!1813 = !DILocation(line: 624, column: 2, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 624, column: 2)
!1815 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 624, column: 2, scope: !1504)
!1818 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1816)
!1819 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1817)
!1820 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1817)
!1821 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1817)
!1822 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1817)
!1823 = !DILocation(line: 624, column: 2, scope: !1504)
!1824 = !{i32 -2145860968, i32 -2145860955, i32 -2145860930, i32 -2145860906, i32 -2145860881, i32 -2145860806, i32 -2145860781, i32 -2145860637, i32 -2145860612, i32 -2145857269, i32 -2145857180, i32 -2145857059, i32 -2145856964, i32 -2145856863, i32 -2145856836, i32 -2145856753, i32 -2145856664, i32 -2145856543, i32 -2145856443, i32 -2145856337, i32 -2145856229, i32 -2145860275, i32 -2145860222, i32 -2145860191, i32 -2145860160, i32 -2145860139, i32 -2145860117, i32 -2145860068, i32 -2145860047, i32 -2145859944, i32 -2145859912, i32 -2145856146, i32 -2145856057, i32 -2145855936, i32 -2145855837, i32 -2145855731, i32 -2145855629, i32 -2145855596, i32 -2145855523, i32 -2145855455, i32 -2145859722, i32 -2145859663, i32 -2145859610, i32 -2145859579, i32 -2145859548, i32 -2145859527, i32 -2145859505, i32 -2145859456, i32 -2145859435, i32 -2145855396, i32 -2145855307, i32 -2145855186, i32 -2145855087, i32 -2145854981, i32 -2145854879, i32 -2145854846, i32 -2145854763, i32 -2145854674, i32 -2145854553, i32 -2145854453, i32 -2145854427, i32 -2145854324, i32 -2145854298, i32 -2145859177, i32 -2145859152, i32 -2145859085, i32 -2145859060, i32 -2145858996, i32 -2145858914, i32 -2145858891, i32 -2145858866, i32 -2145858841}
!1825 = !DILocation(line: 624, column: 2, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 624, column: 2)
!1827 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 624, column: 2)
!1828 = !{i32 -2145857780, i32 -2145857763}
!1829 = !DILocation(line: 627, column: 6, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 627, column: 6)
!1831 = !DILocation(line: 627, column: 10, scope: !1830)
!1832 = !DILocation(line: 627, column: 6, scope: !1441)
!1833 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 636, column: 2, scope: !1516)
!1835 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1834)
!1836 = !DILocation(line: 636, column: 2, scope: !1516)
!1837 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 636, column: 2, scope: !1516)
!1839 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1838)
!1840 = !DILocation(line: 636, column: 2, scope: !1517)
!1841 = !DILocation(line: 636, column: 2, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 636, column: 2)
!1843 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 636, column: 2, scope: !1513)
!1846 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1844)
!1847 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1845)
!1848 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1845)
!1849 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1845)
!1850 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1845)
!1851 = !DILocation(line: 636, column: 2, scope: !1513)
!1852 = !{i32 -2145852281, i32 -2145852268, i32 -2145852243, i32 -2145852219, i32 -2145852194, i32 -2145852119, i32 -2145852094, i32 -2145851950, i32 -2145848820, i32 -2145848731, i32 -2145848610, i32 -2145848515, i32 -2145848414, i32 -2145848387, i32 -2145848304, i32 -2145848215, i32 -2145848094, i32 -2145847994, i32 -2145847888, i32 -2145847780, i32 -2145851662, i32 -2145851609, i32 -2145851578, i32 -2145851547, i32 -2145851526, i32 -2145851504, i32 -2145851455, i32 -2145851434, i32 -2145847697, i32 -2145847608, i32 -2145847487, i32 -2145847388, i32 -2145847282, i32 -2145847180, i32 -2145847147, i32 -2145847074, i32 -2145847006, i32 -2145851130, i32 -2145851071, i32 -2145851018, i32 -2145850987, i32 -2145850956, i32 -2145850935, i32 -2145850913, i32 -2145850864, i32 -2145850843, i32 -2145846955, i32 -2145846866, i32 -2145846745, i32 -2145846646, i32 -2145846540, i32 -2145846438, i32 -2145846405, i32 -2145846322, i32 -2145846233, i32 -2145846112, i32 -2145846012, i32 -2145845986, i32 -2145845883, i32 -2145845857, i32 -2145850585, i32 -2145850518, i32 -2145850493, i32 -2145850429, i32 -2145850347, i32 -2145850324, i32 -2145850299, i32 -2145850274}
!1853 = !DILocation(line: 636, column: 2, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 636, column: 2)
!1855 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 636, column: 2)
!1856 = !{i32 -2145849293, i32 -2145849276}
!1857 = !DILocation(line: 637, column: 6, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 637, column: 6)
!1859 = !DILocation(line: 637, column: 10, scope: !1858)
!1860 = !DILocation(line: 637, column: 6, scope: !1441)
!1861 = !DILocation(line: 647, column: 6, scope: !1441)
!1862 = !DILocation(line: 647, column: 13, scope: !1441)
!1863 = !{!1009, !1010, i64 192}
!1864 = !DILocation(line: 650, column: 6, scope: !1441)
!1865 = !DILocation(line: 650, column: 17, scope: !1441)
!1866 = !{!1009, !1010, i64 208}
!1867 = !DILocation(line: 652, column: 6, scope: !1441)
!1868 = !DILocation(line: 652, column: 17, scope: !1441)
!1869 = !{!1009, !1010, i64 200}
!1870 = !DILocation(line: 657, column: 2, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 657, column: 2)
!1872 = !{!1009, !1011, i64 261}
!1873 = !DILocation(line: 678, column: 2, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 678, column: 2)
!1875 = !{!1009, !1014, i64 248}
!1876 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 692, column: 2, scope: !1523)
!1878 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1877)
!1879 = !DILocation(line: 692, column: 2, scope: !1523)
!1880 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 692, column: 2, scope: !1523)
!1882 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1881)
!1883 = !DILocation(line: 692, column: 2, scope: !1524)
!1884 = !DILocation(line: 692, column: 2, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 692, column: 2)
!1886 = !DILocation(line: 506, column: 26, scope: !1441)
!1887 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 692, column: 2, scope: !1520)
!1890 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1888)
!1891 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1889)
!1892 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1889)
!1893 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1889)
!1894 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1889)
!1895 = !DILocation(line: 692, column: 2, scope: !1520)
!1896 = !{i32 -2145839124, i32 -2145839111, i32 -2145839086, i32 -2145839062, i32 -2145839037, i32 -2145838962, i32 -2145838937, i32 -2145838793, i32 -2145835629, i32 -2145835540, i32 -2145835419, i32 -2145835324, i32 -2145835223, i32 -2145835196, i32 -2145835113, i32 -2145835024, i32 -2145834903, i32 -2145834803, i32 -2145834697, i32 -2145834589, i32 -2145838505, i32 -2145838452, i32 -2145838421, i32 -2145838390, i32 -2145838369, i32 -2145838347, i32 -2145838298, i32 -2145838277, i32 -2145834506, i32 -2145834417, i32 -2145834296, i32 -2145834197, i32 -2145834091, i32 -2145833989, i32 -2145833956, i32 -2145833883, i32 -2145833815, i32 -2145837973, i32 -2145837914, i32 -2145837861, i32 -2145837830, i32 -2145837799, i32 -2145837778, i32 -2145837756, i32 -2145837707, i32 -2145837686, i32 -2145833759, i32 -2145833670, i32 -2145833549, i32 -2145833450, i32 -2145833344, i32 -2145833242, i32 -2145833209, i32 -2145833126, i32 -2145833037, i32 -2145832916, i32 -2145832816, i32 -2145832790, i32 -2145832687, i32 -2145832661, i32 -2145837428, i32 -2145837361, i32 -2145837336, i32 -2145837272, i32 -2145837190, i32 -2145837167, i32 -2145837142, i32 -2145837117}
!1897 = !DILocation(line: 692, column: 2, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 692, column: 2)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 692, column: 2)
!1900 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 692, column: 2)
!1901 = !{i32 -2145835929, i32 -2145835913}
!1902 = !DILocation(line: 694, column: 2, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 694, column: 2)
!1904 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 694, column: 2)
!1905 = !DILocation(line: 694, column: 2, scope: !1904)
!1906 = !DILocation(line: 694, column: 2, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 694, column: 2)
!1908 = !DILocation(line: 695, column: 6, scope: !1441)
!1909 = !DILocation(line: 695, column: 17, scope: !1441)
!1910 = !{!1009, !1011, i64 260}
!1911 = !DILocation(line: 507, column: 15, scope: !1441)
!1912 = !DILocation(line: 697, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 696, column: 2)
!1914 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 696, column: 2)
!1915 = !DILocation(line: 697, column: 3, scope: !1913)
!1916 = !DILocation(line: 697, column: 17, scope: !1913)
!1917 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 711, column: 2, scope: !1530)
!1919 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1918)
!1920 = !DILocation(line: 711, column: 2, scope: !1530)
!1921 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 711, column: 2, scope: !1530)
!1923 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1922)
!1924 = !DILocation(line: 711, column: 2, scope: !1531)
!1925 = !DILocation(line: 711, column: 2, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 711, column: 2)
!1927 = !{!1009, !1014, i64 250}
!1928 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 711, column: 2, scope: !1527)
!1931 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1929)
!1932 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !1930)
!1933 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !1930)
!1934 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !1930)
!1935 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !1930)
!1936 = !DILocation(line: 711, column: 2, scope: !1527)
!1937 = !{i32 -2145830257, i32 -2145830244, i32 -2145830219, i32 -2145830195, i32 -2145830170, i32 -2145830095, i32 -2145830070, i32 -2145829926, i32 -2145826760, i32 -2145826671, i32 -2145826550, i32 -2145826455, i32 -2145826354, i32 -2145826327, i32 -2145826244, i32 -2145826155, i32 -2145826034, i32 -2145825934, i32 -2145825828, i32 -2145825720, i32 -2145829638, i32 -2145829585, i32 -2145829554, i32 -2145829523, i32 -2145829502, i32 -2145829480, i32 -2145829431, i32 -2145829410, i32 -2145825637, i32 -2145825548, i32 -2145825427, i32 -2145825328, i32 -2145825222, i32 -2145825120, i32 -2145825087, i32 -2145825014, i32 -2145824946, i32 -2145829106, i32 -2145829047, i32 -2145828994, i32 -2145828963, i32 -2145828932, i32 -2145828911, i32 -2145828889, i32 -2145828840, i32 -2145828819, i32 -2145824893, i32 -2145824804, i32 -2145824683, i32 -2145824584, i32 -2145824478, i32 -2145824376, i32 -2145824343, i32 -2145824260, i32 -2145824171, i32 -2145824050, i32 -2145823950, i32 -2145823924, i32 -2145823821, i32 -2145823795, i32 -2145828561, i32 -2145828494, i32 -2145828469, i32 -2145828405, i32 -2145828323, i32 -2145828300, i32 -2145828275, i32 -2145828250}
!1938 = !DILocation(line: 711, column: 2, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 711, column: 2)
!1940 = !{i32 -2145827476, i32 -2145827459}
!1941 = !DILocation(line: 712, column: 2, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 712, column: 2)
!1943 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 712, column: 2)
!1944 = !DILocation(line: 712, column: 2, scope: !1943)
!1945 = !DILocation(line: 712, column: 2, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 712, column: 2)
!1947 = !DILocation(line: 723, column: 2, scope: !1441)
!1948 = !DILocation(line: 736, column: 2, scope: !1441)
!1949 = !DILocation(line: 0, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 544, column: 10)
!1951 = !DILocation(line: 737, column: 1, scope: !1441)
!1952 = !DILocation(line: 104, column: 65, scope: !1584)
!1953 = !DILocation(line: 106, column: 41, scope: !1584)
!1954 = !DILocation(line: 106, column: 2, scope: !1584)
!1955 = distinct !DISubprogram(name: "netif_alloc_rxpkts", scope: !3, file: !3, line: 121, type: !671, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961}
!1957 = !DILocalVariable(name: "argp", arg: 1, scope: !1955, file: !3, line: 121, type: !25)
!1958 = !DILocalVariable(name: "nb", arg: 2, scope: !1955, file: !3, line: 121, type: !122)
!1959 = !DILocalVariable(name: "count", arg: 3, scope: !1955, file: !3, line: 122, type: !27)
!1960 = !DILocalVariable(name: "lwip_data", scope: !1955, file: !3, line: 124, type: !861)
!1961 = !DILocalVariable(name: "i", scope: !1955, file: !3, line: 125, type: !27)
!1962 = !DILocation(line: 121, column: 42, scope: !1955)
!1963 = !DILocation(line: 121, column: 66, scope: !1955)
!1964 = !DILocation(line: 122, column: 17, scope: !1955)
!1965 = !DILocation(line: 127, column: 2, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 127, column: 2)
!1967 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 127, column: 2)
!1968 = !DILocation(line: 127, column: 2, scope: !1967)
!1969 = !DILocation(line: 132, column: 40, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 131, column: 30)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 131, column: 2)
!1972 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 131, column: 2)
!1973 = !DILocation(line: 125, column: 11, scope: !1955)
!1974 = !DILocation(line: 131, column: 16, scope: !1971)
!1975 = !DILocation(line: 131, column: 2, scope: !1972)
!1976 = !DILocation(line: 127, column: 2, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 127, column: 2)
!1978 = !DILocation(line: 134, column: 28, scope: !1970)
!1979 = !{!1680, !1014, i64 22}
!1980 = !DILocation(line: 134, column: 8, scope: !1970)
!1981 = !DILocation(line: 135, column: 28, scope: !1970)
!1982 = !{!1680, !1014, i64 20}
!1983 = !DILocation(line: 132, column: 11, scope: !1970)
!1984 = !DILocation(line: 132, column: 3, scope: !1970)
!1985 = !DILocation(line: 132, column: 9, scope: !1970)
!1986 = !DILocation(line: 136, column: 8, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 136, column: 7)
!1988 = !DILocation(line: 136, column: 7, scope: !1970)
!1989 = !DILocation(line: 131, column: 25, scope: !1971)
!1990 = distinct !{!1990, !1975, !1991}
!1991 = !DILocation(line: 140, column: 2, scope: !1972)
!1992 = !DILocation(line: 142, column: 2, scope: !1955)
!1993 = !DILocation(line: 0, scope: !1971)
!1994 = distinct !DISubprogram(name: "uknetdev_input", scope: !3, file: !3, line: 312, type: !4, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DILocalVariable(name: "dev", arg: 1, scope: !1994, file: !3, line: 312, type: !6)
!1997 = !DILocalVariable(name: "queue_id", arg: 2, scope: !1994, file: !3, line: 313, type: !27)
!1998 = !DILocalVariable(name: "argp", arg: 3, scope: !1994, file: !3, line: 313, type: !25)
!1999 = !DILocation(line: 312, column: 46, scope: !1994)
!2000 = !DILocation(line: 313, column: 16, scope: !1994)
!2001 = !DILocation(line: 313, column: 32, scope: !1994)
!2002 = !DILocalVariable(name: "val", arg: 1, scope: !2003, file: !2004, line: 88, type: !176)
!2003 = distinct !DISubprogram(name: "wrpkru", scope: !2004, file: !2004, line: 88, type: !2005, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2007)
!2004 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !176}
!2007 = !{!2002}
!2008 = !DILocation(line: 88, column: 67, scope: !2003, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 316, column: 2, scope: !1994)
!2010 = !DILocation(line: 91, column: 2, scope: !2003, inlinedAt: !2009)
!2011 = !{i32 50118}
!2012 = !DILocalVariable(name: "dev", arg: 1, scope: !2013, file: !3, line: 217, type: !6)
!2013 = distinct !DISubprogram(name: "_uknetdev_input", scope: !3, file: !3, line: 217, type: !4, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2014)
!2014 = !{!2012, !2015, !2016, !2017, !2023}
!2015 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2013, file: !3, line: 218, type: !27)
!2016 = !DILocalVariable(name: "argp", arg: 3, scope: !2013, file: !3, line: 218, type: !25)
!2017 = !DILocalVariable(name: "tid", scope: !2018, file: !3, line: 220, type: !176)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 220, column: 2)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 220, column: 2)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 220, column: 2)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 220, column: 2)
!2022 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 220, column: 2)
!2023 = !DILocalVariable(name: "_arg3", scope: !2018, file: !3, line: 220, type: !841)
!2024 = !DILocation(line: 217, column: 40, scope: !2013, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 318, column: 2, scope: !1994)
!2026 = !DILocation(line: 218, column: 16, scope: !2013, inlinedAt: !2025)
!2027 = !DILocation(line: 218, column: 32, scope: !2013, inlinedAt: !2025)
!2028 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 220, column: 2, scope: !2021, inlinedAt: !2025)
!2030 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2029)
!2031 = !DILocation(line: 220, column: 2, scope: !2021, inlinedAt: !2025)
!2032 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 220, column: 2, scope: !2021, inlinedAt: !2025)
!2034 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2033)
!2035 = !DILocation(line: 220, column: 2, scope: !2022, inlinedAt: !2025)
!2036 = !DILocation(line: 220, column: 2, scope: !2037, inlinedAt: !2025)
!2037 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 220, column: 2)
!2038 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 220, column: 2, scope: !2018, inlinedAt: !2025)
!2041 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2039)
!2042 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2040)
!2043 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2040)
!2044 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2040)
!2045 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2040)
!2046 = !DILocation(line: 220, column: 2, scope: !2018, inlinedAt: !2025)
!2047 = !{i32 -2146015367, i32 -2146015354, i32 -2146015329, i32 -2146015305, i32 -2146015280, i32 -2146015205, i32 -2146015180, i32 -2146015036, i32 -2146012739, i32 -2146012650, i32 -2146012529, i32 -2146012434, i32 -2146012333, i32 -2146012306, i32 -2146012223, i32 -2146012134, i32 -2146012013, i32 -2146011913, i32 -2146011807, i32 -2146011699, i32 -2146014706, i32 -2146014653, i32 -2146014622, i32 -2146014591, i32 -2146014570, i32 -2146014548, i32 -2146014499, i32 -2146014478, i32 -2146014375, i32 -2146011616, i32 -2146011527, i32 -2146011406, i32 -2146011307, i32 -2146011201, i32 -2146011099, i32 -2146011066, i32 -2146010993, i32 -2146010925, i32 -2146014115, i32 -2146014062, i32 -2146014031, i32 -2146014000, i32 -2146013979, i32 -2146013957, i32 -2146013908, i32 -2146013887, i32 -2146010873, i32 -2146010784, i32 -2146010663, i32 -2146010564, i32 -2146010458, i32 -2146010356, i32 -2146010323, i32 -2146010240, i32 -2146010151, i32 -2146010030, i32 -2146009930, i32 -2146009904, i32 -2146009801, i32 -2146009775, i32 -2146013629, i32 -2146013562, i32 -2146013537, i32 -2146013473, i32 -2146013357, i32 -2146013332, i32 -2146013307}
!2048 = !DILocation(line: 319, column: 1, scope: !1994)
!2049 = distinct !DISubprogram(name: "uknetdev_output", scope: !3, file: !3, line: 145, type: !802, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2050)
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2065, !2066, !2073, !2074}
!2051 = !DILocalVariable(name: "nf", arg: 1, scope: !2049, file: !3, line: 145, type: !733)
!2052 = !DILocalVariable(name: "p", arg: 2, scope: !2049, file: !3, line: 145, type: !779)
!2053 = !DILocalVariable(name: "dev", scope: !2049, file: !3, line: 147, type: !6)
!2054 = !DILocalVariable(name: "lwip_data", scope: !2049, file: !3, line: 148, type: !861)
!2055 = !DILocalVariable(name: "q", scope: !2049, file: !3, line: 149, type: !779)
!2056 = !DILocalVariable(name: "nb", scope: !2049, file: !3, line: 150, type: !18)
!2057 = !DILocalVariable(name: "wpos", scope: !2049, file: !3, line: 151, type: !306)
!2058 = !DILocalVariable(name: "ret", scope: !2049, file: !3, line: 152, type: !15)
!2059 = !DILocalVariable(name: "tid", scope: !2060, file: !3, line: 158, type: !176)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 158, column: 2)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 158, column: 2)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 158, column: 2)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 158, column: 2)
!2064 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 158, column: 2)
!2065 = !DILocalVariable(name: "_ret", scope: !2060, file: !3, line: 158, type: !841)
!2066 = !DILocalVariable(name: "tid", scope: !2067, file: !3, line: 192, type: !176)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 192, column: 3)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 192, column: 3)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 192, column: 3)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 192, column: 3)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 192, column: 3)
!2072 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 191, column: 5)
!2073 = !DILocalVariable(name: "_ret", scope: !2067, file: !3, line: 192, type: !841)
!2074 = !DILocalVariable(name: "_arg3", scope: !2067, file: !3, line: 192, type: !841)
!2075 = !DILocation(line: 145, column: 44, scope: !2049)
!2076 = !DILocation(line: 145, column: 61, scope: !2049)
!2077 = !DILocation(line: 148, column: 2, scope: !2049)
!2078 = !DILocation(line: 152, column: 2, scope: !2049)
!2079 = !DILocation(line: 154, column: 2, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 154, column: 2)
!2081 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 154, column: 2)
!2082 = !DILocation(line: 154, column: 2, scope: !2081)
!2083 = !DILocation(line: 154, column: 2, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 154, column: 2)
!2085 = !DILocation(line: 155, column: 8, scope: !2049)
!2086 = !DILocation(line: 147, column: 20, scope: !2049)
!2087 = !DILocation(line: 156, column: 2, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 156, column: 2)
!2089 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 156, column: 2)
!2090 = !DILocation(line: 156, column: 2, scope: !2089)
!2091 = !DILocation(line: 156, column: 2, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 156, column: 2)
!2093 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 158, column: 2, scope: !2063)
!2095 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2094)
!2096 = !DILocation(line: 158, column: 2, scope: !2063)
!2097 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 158, column: 2, scope: !2063)
!2099 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2098)
!2100 = !DILocation(line: 158, column: 2, scope: !2064)
!2101 = !DILocation(line: 104, column: 65, scope: !1584, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 158, column: 2, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 158, column: 2)
!2104 = !DILocation(line: 106, column: 41, scope: !1584, inlinedAt: !2102)
!2105 = !DILocation(line: 148, column: 27, scope: !2049)
!2106 = !DILocation(line: 158, column: 2, scope: !2103)
!2107 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 158, column: 2, scope: !2060)
!2110 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2108)
!2111 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2109)
!2112 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2109)
!2113 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2109)
!2114 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2109)
!2115 = !DILocation(line: 158, column: 2, scope: !2060)
!2116 = !{i32 -2146033330, i32 -2146033317, i32 -2146033292, i32 -2146033268, i32 -2146033243, i32 -2146033168, i32 -2146033143, i32 -2146032999, i32 -2146029819, i32 -2146029730, i32 -2146029609, i32 -2146029514, i32 -2146029413, i32 -2146029386, i32 -2146029303, i32 -2146029214, i32 -2146029093, i32 -2146028993, i32 -2146028887, i32 -2146028779, i32 -2146032711, i32 -2146032658, i32 -2146032627, i32 -2146032596, i32 -2146032575, i32 -2146032553, i32 -2146032504, i32 -2146032483, i32 -2146028696, i32 -2146028607, i32 -2146028486, i32 -2146028387, i32 -2146028281, i32 -2146028179, i32 -2146028146, i32 -2146028073, i32 -2146028005, i32 -2146032179, i32 -2146032120, i32 -2146032067, i32 -2146032036, i32 -2146032005, i32 -2146031984, i32 -2146031962, i32 -2146031913, i32 -2146031892, i32 -2146027949, i32 -2146027860, i32 -2146027739, i32 -2146027640, i32 -2146027534, i32 -2146027432, i32 -2146027399, i32 -2146027316, i32 -2146027227, i32 -2146027106, i32 -2146027006, i32 -2146026980, i32 -2146026877, i32 -2146026851, i32 -2146031634, i32 -2146031567, i32 -2146031542, i32 -2146031478, i32 -2146031396, i32 -2146031373, i32 -2146031348, i32 -2146031323}
!2117 = !DILocation(line: 158, column: 2, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 158, column: 2)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 158, column: 2)
!2120 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 158, column: 2)
!2121 = !{i32 -2146030135, i32 -2146030119}
!2122 = !DILocation(line: 159, column: 2, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 159, column: 2)
!2124 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 159, column: 2)
!2125 = !DILocation(line: 159, column: 2, scope: !2124)
!2126 = !DILocation(line: 159, column: 2, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 159, column: 2)
!2128 = !DILocation(line: 161, column: 38, scope: !2049)
!2129 = !DILocation(line: 163, column: 26, scope: !2049)
!2130 = !DILocation(line: 163, column: 6, scope: !2049)
!2131 = !DILocation(line: 164, column: 26, scope: !2049)
!2132 = !{!1680, !1014, i64 18}
!2133 = !DILocation(line: 161, column: 7, scope: !2049)
!2134 = !DILocation(line: 150, column: 20, scope: !2049)
!2135 = !DILocation(line: 166, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 166, column: 6)
!2137 = !DILocation(line: 166, column: 6, scope: !2049)
!2138 = !DILocation(line: 169, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 169, column: 6)
!2140 = !DILocalVariable(name: "m", arg: 1, scope: !2141, file: !20, line: 475, type: !18)
!2141 = distinct !DISubprogram(name: "uk_netbuf_tailroom", scope: !20, file: !20, line: 475, type: !2142, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!43, !18}
!2144 = !{!2140}
!2145 = !DILocation(line: 475, column: 59, scope: !2141, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 169, column: 6, scope: !2139)
!2147 = !DILocation(line: 478, column: 2, scope: !2148, inlinedAt: !2146)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !20, line: 478, column: 2)
!2149 = distinct !DILexicalBlock(scope: !2141, file: !20, line: 478, column: 2)
!2150 = !{!1112, !1010, i64 40}
!2151 = !DILocation(line: 478, column: 2, scope: !2149, inlinedAt: !2146)
!2152 = !DILocation(line: 478, column: 2, scope: !2153, inlinedAt: !2146)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !20, line: 478, column: 2)
!2154 = !DILocation(line: 479, column: 2, scope: !2155, inlinedAt: !2146)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !20, line: 479, column: 2)
!2156 = distinct !DILexicalBlock(scope: !2141, file: !20, line: 479, column: 2)
!2157 = !DILocation(line: 479, column: 2, scope: !2156, inlinedAt: !2146)
!2158 = !DILocation(line: 479, column: 2, scope: !2159, inlinedAt: !2146)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !20, line: 479, column: 2)
!2160 = !DILocation(line: 481, column: 21, scope: !2141, inlinedAt: !2146)
!2161 = !DILocation(line: 481, column: 61, scope: !2141, inlinedAt: !2146)
!2162 = !{!1112, !1114, i64 48}
!2163 = !DILocation(line: 482, column: 9, scope: !2141, inlinedAt: !2146)
!2164 = !DILocation(line: 482, column: 50, scope: !2141, inlinedAt: !2146)
!2165 = !DILocation(line: 482, column: 33, scope: !2141, inlinedAt: !2146)
!2166 = !DILocation(line: 482, column: 31, scope: !2141, inlinedAt: !2146)
!2167 = !DILocation(line: 481, column: 42, scope: !2141, inlinedAt: !2146)
!2168 = !DILocation(line: 482, column: 6, scope: !2141, inlinedAt: !2146)
!2169 = !DILocation(line: 169, column: 6, scope: !2049)
!2170 = !DILocation(line: 174, column: 3, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 169, column: 53)
!2172 = !DILocation(line: 175, column: 3, scope: !2171)
!2173 = !DILocation(line: 149, column: 15, scope: !2049)
!2174 = !DILocation(line: 151, column: 8, scope: !2049)
!2175 = !DILocation(line: 185, column: 19, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 184, column: 38)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 184, column: 2)
!2178 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 184, column: 2)
!2179 = !DILocation(line: 185, column: 31, scope: !2176)
!2180 = !DILocation(line: 185, column: 28, scope: !2176)
!2181 = !DILocation(line: 185, column: 3, scope: !2176)
!2182 = !DILocation(line: 186, column: 14, scope: !2176)
!2183 = !DILocation(line: 186, column: 8, scope: !2176)
!2184 = !DILocation(line: 184, column: 32, scope: !2177)
!2185 = !{!1128, !1010, i64 0}
!2186 = !DILocation(line: 184, column: 16, scope: !2177)
!2187 = !DILocation(line: 184, column: 2, scope: !2178)
!2188 = distinct !{!2188, !2187, !2189}
!2189 = !DILocation(line: 187, column: 2, scope: !2178)
!2190 = !DILocation(line: 188, column: 15, scope: !2049)
!2191 = !DILocation(line: 188, column: 10, scope: !2049)
!2192 = !DILocation(line: 191, column: 2, scope: !2049)
!2193 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 192, column: 3, scope: !2070)
!2195 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2194)
!2196 = !DILocation(line: 192, column: 3, scope: !2070)
!2197 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 192, column: 3, scope: !2070)
!2199 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2198)
!2200 = !DILocation(line: 192, column: 3, scope: !2071)
!2201 = !DILocalVariable(name: "dev", arg: 1, scope: !2202, file: !1264, line: 497, type: !6)
!2202 = distinct !DISubprogram(name: "uk_netdev_tx_one", scope: !1264, file: !1264, line: 497, type: !2203, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!15, !6, !27, !18}
!2205 = !{!2201, !2206, !2207}
!2206 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2202, file: !1264, line: 497, type: !27)
!2207 = !DILocalVariable(name: "pkt", arg: 3, scope: !2202, file: !1264, line: 498, type: !18)
!2208 = !DILocation(line: 497, column: 54, scope: !2202, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 192, column: 3, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 192, column: 3)
!2211 = !DILocation(line: 497, column: 68, scope: !2202, inlinedAt: !2209)
!2212 = !DILocation(line: 498, column: 26, scope: !2202, inlinedAt: !2209)
!2213 = !DILocation(line: 501, column: 2, scope: !2214, inlinedAt: !2209)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !1264, line: 501, column: 2)
!2215 = distinct !DILexicalBlock(scope: !2202, file: !1264, line: 501, column: 2)
!2216 = !{!1284, !1010, i64 0}
!2217 = !DILocation(line: 501, column: 2, scope: !2215, inlinedAt: !2209)
!2218 = !DILocation(line: 501, column: 2, scope: !2219, inlinedAt: !2209)
!2219 = distinct !DILexicalBlock(scope: !2214, file: !1264, line: 501, column: 2)
!2220 = !DILocation(line: 503, column: 2, scope: !2221, inlinedAt: !2209)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !1264, line: 503, column: 2)
!2222 = distinct !DILexicalBlock(scope: !2202, file: !1264, line: 503, column: 2)
!2223 = !DILocation(line: 503, column: 2, scope: !2222, inlinedAt: !2209)
!2224 = !DILocation(line: 503, column: 2, scope: !2225, inlinedAt: !2209)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !1264, line: 503, column: 2)
!2226 = !DILocation(line: 504, column: 2, scope: !2227, inlinedAt: !2209)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !1264, line: 504, column: 2)
!2228 = distinct !DILexicalBlock(scope: !2202, file: !1264, line: 504, column: 2)
!2229 = !DILocation(line: 504, column: 2, scope: !2228, inlinedAt: !2209)
!2230 = !DILocation(line: 504, column: 2, scope: !2231, inlinedAt: !2209)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !1264, line: 504, column: 2)
!2232 = !DILocation(line: 507, column: 9, scope: !2202, inlinedAt: !2209)
!2233 = !DILocation(line: 152, column: 6, scope: !2049)
!2234 = !DILocation(line: 192, column: 3, scope: !2210)
!2235 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 192, column: 3, scope: !2067)
!2238 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2236)
!2239 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2237)
!2240 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2237)
!2241 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2237)
!2242 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2237)
!2243 = !DILocation(line: 192, column: 3, scope: !2067)
!2244 = !{i32 -2146024205, i32 -2146024192, i32 -2146024167, i32 -2146024143, i32 -2146024118, i32 -2146024043, i32 -2146024018, i32 -2146023874, i32 -2146020657, i32 -2146020568, i32 -2146020447, i32 -2146020352, i32 -2146020251, i32 -2146020224, i32 -2146020141, i32 -2146020052, i32 -2146019931, i32 -2146019831, i32 -2146019725, i32 -2146019617, i32 -2146023544, i32 -2146023491, i32 -2146023460, i32 -2146023429, i32 -2146023408, i32 -2146023386, i32 -2146023337, i32 -2146023316, i32 -2146023213, i32 -2146019534, i32 -2146019445, i32 -2146019324, i32 -2146019225, i32 -2146019119, i32 -2146019017, i32 -2146018984, i32 -2146018911, i32 -2146018843, i32 -2146023023, i32 -2146022964, i32 -2146022911, i32 -2146022880, i32 -2146022849, i32 -2146022828, i32 -2146022806, i32 -2146022757, i32 -2146022736, i32 -2146018791, i32 -2146018702, i32 -2146018581, i32 -2146018482, i32 -2146018376, i32 -2146018274, i32 -2146018241, i32 -2146018158, i32 -2146018069, i32 -2146017948, i32 -2146017848, i32 -2146017822, i32 -2146017719, i32 -2146017693, i32 -2146022478, i32 -2146022411, i32 -2146022386, i32 -2146022322, i32 -2146022240, i32 -2146022217, i32 -2146022192, i32 -2146022167}
!2245 = !DILocation(line: 192, column: 3, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 192, column: 3)
!2247 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 192, column: 3)
!2248 = !{i32 -2146021129, i32 -2146021112}
!2249 = !DILocation(line: 194, column: 11, scope: !2049)
!2250 = !DILocation(line: 194, column: 2, scope: !2072)
!2251 = distinct !{!2251, !2192, !2252}
!2252 = !DILocation(line: 194, column: 41, scope: !2049)
!2253 = !DILocation(line: 195, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 195, column: 6)
!2255 = !DILocation(line: 195, column: 6, scope: !2049)
!2256 = !DILocation(line: 204, column: 3, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 195, column: 25)
!2258 = !DILocation(line: 205, column: 3, scope: !2257)
!2259 = !DILocation(line: 0, scope: !2136)
!2260 = !DILocation(line: 212, column: 1, scope: !2049)
!2261 = distinct !DISubprogram(name: "uknetdev_updown", scope: !3, file: !3, line: 399, type: !814, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2273, !2274, !2284, !2285, !2292, !2293, !2299, !2300, !2301, !2302}
!2263 = !DILocalVariable(name: "nf", arg: 1, scope: !2261, file: !3, line: 399, type: !733)
!2264 = !DILocalVariable(name: "dev", scope: !2261, file: !3, line: 401, type: !6)
!2265 = !DILocalVariable(name: "ret", scope: !2261, file: !3, line: 402, type: !15)
!2266 = !DILocalVariable(name: "lwip_data", scope: !2261, file: !3, line: 403, type: !861)
!2267 = !DILocalVariable(name: "tid", scope: !2268, file: !3, line: 409, type: !176)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 409, column: 2)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 409, column: 2)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 409, column: 2)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 409, column: 2)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 409, column: 2)
!2273 = !DILocalVariable(name: "_ret", scope: !2268, file: !3, line: 409, type: !841)
!2274 = !DILocalVariable(name: "tid", scope: !2275, file: !3, line: 415, type: !176)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 415, column: 4)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 415, column: 4)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 415, column: 4)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 415, column: 4)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 415, column: 4)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 414, column: 65)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 414, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 413, column: 33)
!2283 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 413, column: 6)
!2284 = !DILocalVariable(name: "_ret", scope: !2275, file: !3, line: 415, type: !841)
!2285 = !DILocalVariable(name: "tid", scope: !2286, file: !3, line: 449, type: !176)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 449, column: 4)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 449, column: 4)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 449, column: 4)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 449, column: 4)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 449, column: 4)
!2291 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 443, column: 10)
!2292 = !DILocalVariable(name: "_ret", scope: !2286, file: !3, line: 449, type: !841)
!2293 = !DILocalVariable(name: "tid", scope: !2294, file: !3, line: 452, type: !176)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 452, column: 4)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 452, column: 4)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 452, column: 4)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 452, column: 4)
!2298 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 452, column: 4)
!2299 = !DILocalVariable(name: "_ret", scope: !2294, file: !3, line: 452, type: !841)
!2300 = !DILocalVariable(name: "_arg3", scope: !2294, file: !3, line: 452, type: !841)
!2301 = !DILocalVariable(name: "_arg4", scope: !2294, file: !3, line: 452, type: !841)
!2302 = !DILocalVariable(name: "_arg5", scope: !2294, file: !3, line: 452, type: !841)
!2303 = !DILocation(line: 399, column: 43, scope: !2261)
!2304 = !DILocation(line: 402, column: 2, scope: !2261)
!2305 = !DILocation(line: 403, column: 2, scope: !2261)
!2306 = !DILocation(line: 405, column: 2, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 405, column: 2)
!2308 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 405, column: 2)
!2309 = !DILocation(line: 405, column: 2, scope: !2308)
!2310 = !DILocation(line: 405, column: 2, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 405, column: 2)
!2312 = !DILocation(line: 406, column: 8, scope: !2261)
!2313 = !DILocation(line: 401, column: 20, scope: !2261)
!2314 = !DILocation(line: 407, column: 2, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 407, column: 2)
!2316 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 407, column: 2)
!2317 = !DILocation(line: 407, column: 2, scope: !2316)
!2318 = !DILocation(line: 407, column: 2, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 407, column: 2)
!2320 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 409, column: 2, scope: !2271)
!2322 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2321)
!2323 = !DILocation(line: 409, column: 2, scope: !2271)
!2324 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 409, column: 2, scope: !2271)
!2326 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2325)
!2327 = !DILocation(line: 409, column: 2, scope: !2272)
!2328 = !DILocation(line: 104, column: 65, scope: !1584, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 409, column: 2, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 409, column: 2)
!2331 = !DILocation(line: 106, column: 41, scope: !1584, inlinedAt: !2329)
!2332 = !DILocation(line: 403, column: 28, scope: !2261)
!2333 = !DILocation(line: 409, column: 2, scope: !2330)
!2334 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 409, column: 2, scope: !2268)
!2337 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2335)
!2338 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2336)
!2339 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2336)
!2340 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2336)
!2341 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2336)
!2342 = !DILocation(line: 409, column: 2, scope: !2268)
!2343 = !{i32 -2145950522, i32 -2145950509, i32 -2145950484, i32 -2145950460, i32 -2145950435, i32 -2145950360, i32 -2145950335, i32 -2145950191, i32 -2145947011, i32 -2145946922, i32 -2145946801, i32 -2145946706, i32 -2145946605, i32 -2145946578, i32 -2145946495, i32 -2145946406, i32 -2145946285, i32 -2145946185, i32 -2145946079, i32 -2145945971, i32 -2145949903, i32 -2145949850, i32 -2145949819, i32 -2145949788, i32 -2145949767, i32 -2145949745, i32 -2145949696, i32 -2145949675, i32 -2145945888, i32 -2145945799, i32 -2145945678, i32 -2145945579, i32 -2145945473, i32 -2145945371, i32 -2145945338, i32 -2145945265, i32 -2145945197, i32 -2145949371, i32 -2145949312, i32 -2145949259, i32 -2145949228, i32 -2145949197, i32 -2145949176, i32 -2145949154, i32 -2145949105, i32 -2145949084, i32 -2145945141, i32 -2145945052, i32 -2145944931, i32 -2145944832, i32 -2145944726, i32 -2145944624, i32 -2145944591, i32 -2145944508, i32 -2145944419, i32 -2145944298, i32 -2145944198, i32 -2145944172, i32 -2145944069, i32 -2145944043, i32 -2145948826, i32 -2145948759, i32 -2145948734, i32 -2145948670, i32 -2145948588, i32 -2145948565, i32 -2145948540, i32 -2145948515}
!2344 = !DILocation(line: 409, column: 2, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 409, column: 2)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 409, column: 2)
!2347 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 409, column: 2)
!2348 = !{i32 -2145947327, i32 -2145947311}
!2349 = !DILocation(line: 0, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 466, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 461, column: 9)
!2352 = !DILocation(line: 413, column: 10, scope: !2283)
!2353 = !DILocation(line: 413, column: 16, scope: !2283)
!2354 = !{!1680, !1037, i64 24}
!2355 = !DILocation(line: 413, column: 6, scope: !2261)
!2356 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 0, scope: !2289)
!2358 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2357)
!2359 = !DILocation(line: 0, scope: !2289)
!2360 = !DILocation(line: 414, column: 7, scope: !2282)
!2361 = !DILocation(line: 415, column: 4, scope: !2278)
!2362 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 415, column: 4, scope: !2278)
!2364 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2363)
!2365 = !DILocation(line: 415, column: 4, scope: !2279)
!2366 = !DILocation(line: 415, column: 4, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 415, column: 4)
!2368 = !DILocation(line: 402, column: 6, scope: !2261)
!2369 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 415, column: 4, scope: !2275)
!2372 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2370)
!2373 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2371)
!2374 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2371)
!2375 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2371)
!2376 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2371)
!2377 = !DILocation(line: 415, column: 4, scope: !2275)
!2378 = !{i32 -2145941820, i32 -2145941807, i32 -2145941782, i32 -2145941758, i32 -2145941733, i32 -2145941658, i32 -2145941633, i32 -2145941489, i32 -2145938304, i32 -2145938215, i32 -2145938094, i32 -2145937999, i32 -2145937898, i32 -2145937871, i32 -2145937788, i32 -2145937699, i32 -2145937578, i32 -2145937478, i32 -2145937372, i32 -2145937264, i32 -2145941197, i32 -2145941144, i32 -2145941113, i32 -2145941082, i32 -2145941061, i32 -2145941039, i32 -2145940990, i32 -2145940969, i32 -2145937181, i32 -2145937092, i32 -2145936971, i32 -2145936872, i32 -2145936766, i32 -2145936664, i32 -2145936631, i32 -2145936558, i32 -2145936490, i32 -2145940662, i32 -2145940603, i32 -2145940550, i32 -2145940519, i32 -2145940488, i32 -2145940467, i32 -2145940445, i32 -2145940396, i32 -2145940375, i32 -2145936429, i32 -2145936340, i32 -2145936219, i32 -2145936120, i32 -2145936014, i32 -2145935912, i32 -2145935879, i32 -2145935796, i32 -2145935707, i32 -2145935586, i32 -2145935486, i32 -2145935460, i32 -2145935357, i32 -2145935331, i32 -2145940117, i32 -2145940050, i32 -2145940025, i32 -2145939961, i32 -2145939879, i32 -2145939856, i32 -2145939831, i32 -2145939806}
!2379 = !DILocation(line: 415, column: 4, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 415, column: 4)
!2381 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 415, column: 4)
!2382 = !{i32 -2145938791, i32 -2145938774}
!2383 = !DILocation(line: 434, column: 8, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 434, column: 8)
!2385 = !DILocation(line: 434, column: 12, scope: !2384)
!2386 = !DILocation(line: 434, column: 8, scope: !2280)
!2387 = !DILocation(line: 441, column: 5, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 434, column: 18)
!2389 = !DILocation(line: 442, column: 4, scope: !2388)
!2390 = !DILocation(line: 449, column: 4, scope: !2289)
!2391 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 449, column: 4, scope: !2289)
!2393 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2392)
!2394 = !DILocation(line: 449, column: 4, scope: !2290)
!2395 = !DILocation(line: 449, column: 4, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 449, column: 4)
!2397 = !{!1680, !1010, i64 48}
!2398 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 449, column: 4, scope: !2286)
!2401 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2399)
!2402 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2400)
!2403 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2400)
!2404 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2400)
!2405 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2400)
!2406 = !DILocation(line: 449, column: 4, scope: !2286)
!2407 = !{i32 -2145933309, i32 -2145933296, i32 -2145933271, i32 -2145933247, i32 -2145933222, i32 -2145933147, i32 -2145933122, i32 -2145932978, i32 -2145929787, i32 -2145929698, i32 -2145929577, i32 -2145929482, i32 -2145929381, i32 -2145929354, i32 -2145929271, i32 -2145929182, i32 -2145929061, i32 -2145928961, i32 -2145928855, i32 -2145928747, i32 -2145932695, i32 -2145932642, i32 -2145932611, i32 -2145932580, i32 -2145932559, i32 -2145932537, i32 -2145932488, i32 -2145932467, i32 -2145928664, i32 -2145928575, i32 -2145928454, i32 -2145928355, i32 -2145928249, i32 -2145928147, i32 -2145928114, i32 -2145928041, i32 -2145927973, i32 -2145932165, i32 -2145932106, i32 -2145932053, i32 -2145932022, i32 -2145931991, i32 -2145931970, i32 -2145931948, i32 -2145931899, i32 -2145931878, i32 -2145927917, i32 -2145927828, i32 -2145927707, i32 -2145927608, i32 -2145927502, i32 -2145927400, i32 -2145927367, i32 -2145927284, i32 -2145927195, i32 -2145927074, i32 -2145926974, i32 -2145926948, i32 -2145926845, i32 -2145926819, i32 -2145931620, i32 -2145931553, i32 -2145931528, i32 -2145931464, i32 -2145931382, i32 -2145931359, i32 -2145931334, i32 -2145931309}
!2408 = !DILocation(line: 449, column: 4, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 449, column: 4)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 449, column: 4)
!2411 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 449, column: 4)
!2412 = !{i32 -2145930155, i32 -2145930139}
!2413 = !DILocation(line: 451, column: 4, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 451, column: 4)
!2415 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 451, column: 4)
!2416 = !DILocation(line: 451, column: 4, scope: !2415)
!2417 = !DILocation(line: 451, column: 4, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 451, column: 4)
!2419 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 452, column: 4, scope: !2297)
!2421 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2420)
!2422 = !DILocation(line: 452, column: 4, scope: !2297)
!2423 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 452, column: 4, scope: !2297)
!2425 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2424)
!2426 = !DILocation(line: 452, column: 4, scope: !2298)
!2427 = !DILocation(line: 452, column: 4, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 452, column: 4)
!2429 = !{!1680, !1010, i64 32}
!2430 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 452, column: 4, scope: !2294)
!2433 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2431)
!2434 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2432)
!2435 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2432)
!2436 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2432)
!2437 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2432)
!2438 = !DILocation(line: 452, column: 4, scope: !2294)
!2439 = !{i32 -2145923721, i32 -2145923708, i32 -2145923683, i32 -2145923659, i32 -2145923634, i32 -2145923559, i32 -2145923534, i32 -2145923390, i32 -2145923365, i32 -2145919764, i32 -2145919675, i32 -2145919554, i32 -2145919459, i32 -2145919358, i32 -2145919331, i32 -2145919248, i32 -2145919159, i32 -2145919038, i32 -2145918938, i32 -2145918832, i32 -2145918724, i32 -2145922989, i32 -2145922936, i32 -2145922905, i32 -2145922874, i32 -2145922853, i32 -2145922831, i32 -2145922782, i32 -2145922761, i32 -2145922658, i32 -2145922626, i32 -2145918641, i32 -2145918552, i32 -2145918431, i32 -2145918332, i32 -2145918226, i32 -2145918124, i32 -2145918091, i32 -2145918018, i32 -2145917950, i32 -2145922436, i32 -2145922377, i32 -2145922324, i32 -2145922293, i32 -2145922262, i32 -2145922241, i32 -2145922219, i32 -2145922170, i32 -2145922149, i32 -2145917892, i32 -2145917803, i32 -2145917682, i32 -2145917583, i32 -2145917477, i32 -2145917375, i32 -2145917342, i32 -2145917259, i32 -2145917170, i32 -2145917049, i32 -2145916949, i32 -2145916923, i32 -2145916820, i32 -2145916794, i32 -2145921891, i32 -2145921866, i32 -2145921799, i32 -2145921774, i32 -2145921710, i32 -2145921628, i32 -2145921605, i32 -2145921580, i32 -2145921555}
!2440 = !DILocation(line: 452, column: 4, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 452, column: 4)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 452, column: 4)
!2443 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 452, column: 4)
!2444 = !{i32 -2145920264, i32 -2145920248}
!2445 = !DILocation(line: 466, column: 7, scope: !2351)
!2446 = !DILocalVariable(name: "dev", arg: 1, scope: !2447, file: !1264, line: 407, type: !6)
!2447 = distinct !DISubprogram(name: "uk_netdev_rxq_intr_disable", scope: !1264, file: !1264, line: 407, type: !576, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2448)
!2448 = !{!2446, !2449}
!2449 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2447, file: !1264, line: 408, type: !27)
!2450 = !DILocation(line: 407, column: 64, scope: !2447, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 467, column: 4, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 466, column: 65)
!2453 = !DILocation(line: 408, column: 20, scope: !2447, inlinedAt: !2451)
!2454 = !DILocation(line: 411, column: 2, scope: !2455, inlinedAt: !2451)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !1264, line: 411, column: 2)
!2456 = distinct !DILexicalBlock(scope: !2447, file: !1264, line: 411, column: 2)
!2457 = !{!1284, !1010, i64 24}
!2458 = !DILocation(line: 411, column: 2, scope: !2456, inlinedAt: !2451)
!2459 = !DILocation(line: 411, column: 2, scope: !2460, inlinedAt: !2451)
!2460 = distinct !DILexicalBlock(scope: !2455, file: !1264, line: 411, column: 2)
!2461 = !DILocation(line: 412, column: 2, scope: !2462, inlinedAt: !2451)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !1264, line: 412, column: 2)
!2463 = distinct !DILexicalBlock(scope: !2447, file: !1264, line: 412, column: 2)
!2464 = !DILocation(line: 412, column: 2, scope: !2463, inlinedAt: !2451)
!2465 = !DILocation(line: 412, column: 2, scope: !2466, inlinedAt: !2451)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !1264, line: 412, column: 2)
!2467 = !DILocation(line: 413, column: 2, scope: !2468, inlinedAt: !2451)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !1264, line: 413, column: 2)
!2469 = distinct !DILexicalBlock(scope: !2447, file: !1264, line: 413, column: 2)
!2470 = !DILocation(line: 413, column: 2, scope: !2469, inlinedAt: !2451)
!2471 = !DILocation(line: 413, column: 2, scope: !2472, inlinedAt: !2451)
!2472 = distinct !DILexicalBlock(scope: !2468, file: !1264, line: 413, column: 2)
!2473 = !DILocation(line: 415, column: 2, scope: !2474, inlinedAt: !2451)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !1264, line: 415, column: 2)
!2475 = distinct !DILexicalBlock(scope: !2447, file: !1264, line: 415, column: 2)
!2476 = !DILocation(line: 415, column: 2, scope: !2475, inlinedAt: !2451)
!2477 = !DILocation(line: 415, column: 2, scope: !2478, inlinedAt: !2451)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !1264, line: 415, column: 2)
!2479 = !DILocation(line: 417, column: 6, scope: !2480, inlinedAt: !2451)
!2480 = distinct !DILexicalBlock(scope: !2447, file: !1264, line: 417, column: 6)
!2481 = !{!2482, !1010, i64 8}
!2482 = !{!"uk_netdev_ops", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72, !1010, i64 80, !1010, i64 88, !1010, i64 96, !1010, i64 104, !1010, i64 112, !1010, i64 120}
!2483 = !DILocation(line: 417, column: 6, scope: !2447, inlinedAt: !2451)
!2484 = !DILocation(line: 419, column: 9, scope: !2447, inlinedAt: !2451)
!2485 = !DILocation(line: 419, column: 2, scope: !2447, inlinedAt: !2451)
!2486 = !DILocation(line: 475, column: 1, scope: !2261)
!2487 = !DILocation(line: 745, column: 48, scope: !884)
!2488 = !DILocation(line: 748, column: 27, scope: !884)
!2489 = !DILocation(line: 749, column: 27, scope: !884)
!2490 = !DILocation(line: 750, column: 27, scope: !884)
!2491 = !DILocation(line: 771, column: 17, scope: !884)
!2492 = !DILocalVariable(name: "a", arg: 1, scope: !2493, file: !56, line: 173, type: !54)
!2493 = distinct !DISubprogram(name: "uk_calloc", scope: !56, file: !56, line: 173, type: !68, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2494)
!2494 = !{!2492, !2495, !2496}
!2495 = !DILocalVariable(name: "nmemb", arg: 2, scope: !2493, file: !56, line: 174, type: !63)
!2496 = !DILocalVariable(name: "size", arg: 3, scope: !2493, file: !56, line: 174, type: !63)
!2497 = !DILocation(line: 173, column: 48, scope: !2493, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 771, column: 7, scope: !884)
!2499 = !DILocation(line: 174, column: 17, scope: !2493, inlinedAt: !2498)
!2500 = !DILocation(line: 174, column: 31, scope: !2493, inlinedAt: !2498)
!2501 = !DILocation(line: 176, column: 6, scope: !2502, inlinedAt: !2498)
!2502 = distinct !DILexicalBlock(scope: !2493, file: !56, line: 176, column: 6)
!2503 = !DILocation(line: 176, column: 6, scope: !2493, inlinedAt: !2498)
!2504 = !DILocation(line: 177, column: 3, scope: !2505, inlinedAt: !2498)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !56, line: 176, column: 20)
!2506 = !DILocation(line: 177, column: 9, scope: !2505, inlinedAt: !2498)
!2507 = !DILocation(line: 772, column: 6, scope: !884)
!2508 = !DILocalVariable(name: "a", arg: 1, scope: !2509, file: !56, line: 166, type: !54)
!2509 = distinct !DISubprogram(name: "uk_do_calloc", scope: !56, file: !56, line: 166, type: !68, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2510)
!2510 = !{!2508, !2511, !2512}
!2511 = !DILocalVariable(name: "nmemb", arg: 2, scope: !2509, file: !56, line: 167, type: !63)
!2512 = !DILocalVariable(name: "size", arg: 3, scope: !2509, file: !56, line: 167, type: !63)
!2513 = !DILocation(line: 166, column: 51, scope: !2509, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 180, column: 9, scope: !2493, inlinedAt: !2498)
!2515 = !DILocation(line: 167, column: 13, scope: !2509, inlinedAt: !2514)
!2516 = !DILocation(line: 167, column: 27, scope: !2509, inlinedAt: !2514)
!2517 = !DILocation(line: 170, column: 12, scope: !2509, inlinedAt: !2514)
!2518 = !DILocation(line: 170, column: 9, scope: !2509, inlinedAt: !2514)
!2519 = !DILocation(line: 772, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !884, file: !3, line: 772, column: 6)
!2521 = !DILocation(line: 771, column: 7, scope: !884)
!2522 = !DILocation(line: 767, column: 16, scope: !884)
!2523 = !DILocation(line: 779, column: 4, scope: !884)
!2524 = !DILocation(line: 779, column: 22, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !895, file: !3, line: 779, column: 22)
!2526 = !{i32 -2145823050}
!2527 = !DILocation(line: 779, column: 22, scope: !895)
!2528 = !{i32 -2145822946}
!2529 = !DILocation(line: 779, column: 22, scope: !884)
!2530 = !DILocation(line: 775, column: 8, scope: !884)
!2531 = !DILocation(line: 768, column: 16, scope: !884)
!2532 = !DILocation(line: 780, column: 2, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 780, column: 2)
!2534 = distinct !DILexicalBlock(scope: !884, file: !3, line: 780, column: 2)
!2535 = !DILocation(line: 780, column: 2, scope: !2534)
!2536 = !DILocation(line: 780, column: 2, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 780, column: 2)
!2538 = !DILocation(line: 782, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !884, file: !3, line: 782, column: 6)
!2540 = !DILocation(line: 782, column: 6, scope: !884)
!2541 = !DILocation(line: 783, column: 3, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 782, column: 12)
!2543 = !DILocation(line: 784, column: 3, scope: !2542)
!2544 = !DILocation(line: 0, scope: !2520)
!2545 = !DILocation(line: 788, column: 1, scope: !884)
!2546 = !DILocation(line: 497, column: 54, scope: !2202)
!2547 = !DILocation(line: 497, column: 68, scope: !2202)
!2548 = !DILocation(line: 498, column: 26, scope: !2202)
!2549 = !DILocation(line: 500, column: 2, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !1264, line: 500, column: 2)
!2551 = distinct !DILexicalBlock(scope: !2202, file: !1264, line: 500, column: 2)
!2552 = !DILocation(line: 500, column: 2, scope: !2551)
!2553 = !DILocation(line: 500, column: 2, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !1264, line: 500, column: 2)
!2555 = !DILocation(line: 501, column: 2, scope: !2214)
!2556 = !DILocation(line: 501, column: 2, scope: !2215)
!2557 = !DILocation(line: 501, column: 2, scope: !2219)
!2558 = !DILocation(line: 502, column: 2, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !1264, line: 502, column: 2)
!2560 = distinct !DILexicalBlock(scope: !2202, file: !1264, line: 502, column: 2)
!2561 = !DILocation(line: 502, column: 2, scope: !2560)
!2562 = !DILocation(line: 502, column: 2, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !1264, line: 502, column: 2)
!2564 = !DILocation(line: 503, column: 2, scope: !2221)
!2565 = !DILocation(line: 503, column: 2, scope: !2222)
!2566 = !DILocation(line: 503, column: 2, scope: !2225)
!2567 = !DILocation(line: 504, column: 2, scope: !2227)
!2568 = !DILocation(line: 504, column: 2, scope: !2228)
!2569 = !DILocation(line: 504, column: 2, scope: !2231)
!2570 = !DILocation(line: 505, column: 2, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !1264, line: 505, column: 2)
!2572 = distinct !DILexicalBlock(scope: !2202, file: !1264, line: 505, column: 2)
!2573 = !DILocation(line: 505, column: 2, scope: !2572)
!2574 = !DILocation(line: 505, column: 2, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !1264, line: 505, column: 2)
!2576 = !DILocation(line: 507, column: 9, scope: !2202)
!2577 = !DILocation(line: 507, column: 2, scope: !2202)
!2578 = distinct !DISubprogram(name: "uk_netdev_rxq_intr_enable", scope: !1264, file: !1264, line: 379, type: !576, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2579)
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "dev", arg: 1, scope: !2578, file: !1264, line: 379, type: !6)
!2581 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2578, file: !1264, line: 380, type: !27)
!2582 = !DILocation(line: 379, column: 63, scope: !2578)
!2583 = !DILocation(line: 380, column: 19, scope: !2578)
!2584 = !DILocation(line: 382, column: 2, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !1264, line: 382, column: 2)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 382, column: 2)
!2587 = !DILocation(line: 382, column: 2, scope: !2586)
!2588 = !DILocation(line: 382, column: 2, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !1264, line: 382, column: 2)
!2590 = !DILocation(line: 383, column: 2, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !1264, line: 383, column: 2)
!2592 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 383, column: 2)
!2593 = !DILocation(line: 383, column: 2, scope: !2592)
!2594 = !DILocation(line: 383, column: 2, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !1264, line: 383, column: 2)
!2596 = !DILocation(line: 384, column: 2, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !1264, line: 384, column: 2)
!2598 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 384, column: 2)
!2599 = !DILocation(line: 384, column: 2, scope: !2598)
!2600 = !DILocation(line: 384, column: 2, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2597, file: !1264, line: 384, column: 2)
!2602 = !DILocation(line: 385, column: 2, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !1264, line: 385, column: 2)
!2604 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 385, column: 2)
!2605 = !DILocation(line: 385, column: 2, scope: !2604)
!2606 = !DILocation(line: 385, column: 2, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !1264, line: 385, column: 2)
!2608 = !DILocation(line: 386, column: 2, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !1264, line: 386, column: 2)
!2610 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 386, column: 2)
!2611 = !DILocation(line: 386, column: 2, scope: !2610)
!2612 = !DILocation(line: 386, column: 2, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !1264, line: 386, column: 2)
!2614 = !DILocation(line: 387, column: 2, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !1264, line: 387, column: 2)
!2616 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 387, column: 2)
!2617 = !DILocation(line: 387, column: 2, scope: !2616)
!2618 = !DILocation(line: 387, column: 2, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !1264, line: 387, column: 2)
!2620 = !DILocation(line: 389, column: 6, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2578, file: !1264, line: 389, column: 6)
!2622 = !{!2482, !1010, i64 0}
!2623 = !DILocation(line: 389, column: 6, scope: !2578)
!2624 = !DILocation(line: 391, column: 9, scope: !2578)
!2625 = !DILocation(line: 391, column: 2, scope: !2578)
!2626 = !DILocation(line: 0, scope: !2578)
!2627 = !DILocation(line: 392, column: 1, scope: !2578)
!2628 = distinct !DISubprogram(name: "_poll_netif", scope: !3, file: !3, line: 390, type: !263, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2629)
!2629 = !{!2630}
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2628, file: !3, line: 390, type: !25)
!2631 = !DILocation(line: 390, column: 31, scope: !2628)
!2632 = !DILocation(line: 88, column: 67, scope: !2003, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 394, column: 2, scope: !2628)
!2634 = !DILocation(line: 91, column: 2, scope: !2003, inlinedAt: !2633)
!2635 = !DILocalVariable(name: "arg", arg: 1, scope: !2636, file: !3, line: 375, type: !25)
!2636 = distinct !DISubprogram(name: "__poll_netif", scope: !3, file: !3, line: 375, type: !263, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2637)
!2637 = !{!2635, !2638}
!2638 = !DILocalVariable(name: "tid", scope: !2639, file: !3, line: 377, type: !176)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 377, column: 2)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 377, column: 2)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 377, column: 2)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 377, column: 2)
!2643 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 377, column: 2)
!2644 = !DILocation(line: 375, column: 25, scope: !2636, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 396, column: 2, scope: !2628)
!2646 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 377, column: 2, scope: !2642, inlinedAt: !2645)
!2648 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2647)
!2649 = !DILocation(line: 377, column: 2, scope: !2642, inlinedAt: !2645)
!2650 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 377, column: 2, scope: !2642, inlinedAt: !2645)
!2652 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2651)
!2653 = !DILocation(line: 377, column: 2, scope: !2643, inlinedAt: !2645)
!2654 = !DILocation(line: 377, column: 2, scope: !2655, inlinedAt: !2645)
!2655 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 377, column: 2)
!2656 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 49, column: 21, scope: !1040, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 377, column: 2, scope: !2639, inlinedAt: !2645)
!2659 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2657)
!2660 = !DILocation(line: 49, column: 16, scope: !1040, inlinedAt: !2658)
!2661 = !DILocation(line: 50, column: 19, scope: !1040, inlinedAt: !2658)
!2662 = !DILocation(line: 50, column: 11, scope: !1040, inlinedAt: !2658)
!2663 = !DILocation(line: 50, column: 9, scope: !1040, inlinedAt: !2658)
!2664 = !DILocation(line: 377, column: 2, scope: !2639, inlinedAt: !2645)
!2665 = !{i32 -2145965924, i32 -2145965911, i32 -2145965886, i32 -2145965862, i32 -2145965837, i32 -2145965762, i32 -2145965737, i32 -2145965593, i32 -2145963387, i32 -2145963298, i32 -2145963177, i32 -2145963082, i32 -2145962981, i32 -2145962954, i32 -2145962871, i32 -2145962782, i32 -2145962661, i32 -2145962561, i32 -2145962455, i32 -2145962347, i32 -2145965305, i32 -2145965252, i32 -2145965221, i32 -2145965190, i32 -2145965169, i32 -2145965147, i32 -2145965098, i32 -2145965077, i32 -2145962264, i32 -2145962175, i32 -2145962054, i32 -2145961955, i32 -2145961849, i32 -2145961747, i32 -2145961714, i32 -2145961641, i32 -2145961573, i32 -2145964703, i32 -2145964650, i32 -2145964619, i32 -2145964588, i32 -2145964567, i32 -2145964545, i32 -2145964496, i32 -2145964475, i32 -2145961524, i32 -2145961435, i32 -2145961314, i32 -2145961215, i32 -2145961109, i32 -2145961007, i32 -2145960974, i32 -2145960891, i32 -2145960802, i32 -2145960681, i32 -2145960581, i32 -2145960555, i32 -2145960452, i32 -2145960426, i32 -2145964217, i32 -2145964150, i32 -2145964125, i32 -2145964061, i32 -2145963945, i32 -2145963920, i32 -2145963895}
!2666 = !DILocation(line: 397, column: 1, scope: !2628)
