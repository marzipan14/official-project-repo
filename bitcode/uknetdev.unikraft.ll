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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @__uknetdev_input(%struct.uk_netdev*, i16 zeroext, i8*) #0 !dbg !2 {
  %4 = alloca %struct.uk_netbuf*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast i8* %2 to %struct.netif*, !dbg !984
  %7 = bitcast %struct.uk_netbuf** %4 to i8*, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !986
  %8 = ptrtoint %struct.uk_netbuf** %4 to i64, !dbg !987
  %9 = add i64 %8, 65536, !dbg !988
  %10 = inttoptr i64 %9 to %struct.uk_netbuf**, !dbg !989
  %11 = bitcast i32* %5 to i8*, !dbg !991
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7, !dbg !991
  %12 = icmp eq %struct.uk_netdev* %0, null, !dbg !992
  br i1 %12, label %13, label %14, !dbg !995, !prof !996

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !997
  call void @ukplat_terminate(i32 3) #9, !dbg !997
  unreachable, !dbg !997

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i8* %2, null, !dbg !999
  br i1 %15, label %16, label %17, !dbg !1002, !prof !996

; <label>:16:                                     ; preds = %14
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1003
  call void @ukplat_terminate(i32 3) #9, !dbg !1003
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
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1024
  call void @ukplat_terminate(i32 3) #9, !dbg !1024
  unreachable, !dbg !1024

; <label>:28:                                     ; preds = %22, %175
  %29 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1016, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %30 = icmp ult i64 %29, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1029
  br i1 %30, label %36, label %31, !dbg !1029

; <label>:31:                                     ; preds = %28
  %32 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1030, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  %33 = icmp ugt i64 %32, ptrtoint ([0 x i8]* @_end to i64), !dbg !1029
  br i1 %33, label %36, label %34, !dbg !1034

; <label>:34:                                     ; preds = %31
  %35 = call i32 @uk_netdev_rx_one(%struct.uk_netdev* nonnull %0, i16 zeroext 0, %struct.uk_netbuf** %10) #8, !dbg !1035
  store i32 %35, i32* %5, align 4, !dbg !1035, !tbaa !1038
  br label %45, !dbg !1035

; <label>:36:                                     ; preds = %31, %28
  %37 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1040, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  %38 = and i64 %37, -65536, !dbg !1052
  %39 = or i64 %38, 4097, !dbg !1052
  %40 = add nsw i64 %39, -1, !dbg !1052
  %41 = inttoptr i64 %40 to i32*, !dbg !1053
  %42 = load i32, i32* %41, align 4096, !dbg !1054, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  %43 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rx_one\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %23, i64 0, i64 %9, i32 %42, i32 (%struct.uk_netdev*, i16, %struct.uk_netbuf**)* nonnull @uk_netdev_rx_one) #7, !dbg !1056, !srcloc !1057
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %43) #7, !dbg !1058, !srcloc !1061
  %44 = load i32, i32* %5, align 4, !dbg !1062, !tbaa !1038
  br label %45

; <label>:45:                                     ; preds = %36, %34
  %46 = phi i32 [ %44, %36 ], [ %35, %34 ], !dbg !1062
  %47 = icmp slt i32 %46, 0, !dbg !1062
  br i1 %47, label %48, label %78, !dbg !1063, !prof !996

; <label>:48:                                     ; preds = %45
  %49 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1064, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  %50 = icmp ult i64 %49, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1068
  br i1 %50, label %62, label %51, !dbg !1068

; <label>:51:                                     ; preds = %48
  %52 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1069, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  %53 = icmp ugt i64 %52, ptrtoint ([0 x i8]* @_end to i64), !dbg !1068
  br i1 %53, label %62, label %54, !dbg !1073

; <label>:54:                                     ; preds = %51
  %55 = load i8, i8* %24, align 2, !dbg !1074, !tbaa !1076
  %56 = sext i8 %55 to i32, !dbg !1074
  %57 = load i8, i8* %25, align 1, !dbg !1074, !tbaa !1076
  %58 = sext i8 %57 to i32, !dbg !1074
  %59 = load i8, i8* %26, align 8, !dbg !1074, !tbaa !1077
  %60 = zext i8 %59 to i32, !dbg !1074
  %61 = load i32, i32* %5, align 4, !dbg !1074, !tbaa !1038
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__uknetdev_input.__str, i64 0, i64 0), i32 %56, i32 %58, i32 %60, i32 %61) #8, !dbg !1074
  br label %77, !dbg !1074

; <label>:62:                                     ; preds = %51, %48
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1078, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  %64 = and i64 %63, -65536, !dbg !1084
  %65 = or i64 %64, 4097, !dbg !1084
  %66 = add nsw i64 %65, -1, !dbg !1084
  %67 = inttoptr i64 %66 to i32*, !dbg !1085
  %68 = load i32, i32* %67, align 4096, !dbg !1086, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  %69 = load i8, i8* %25, align 1, !dbg !1088, !tbaa !1076
  %70 = sext i8 %69 to i64, !dbg !1088
  %71 = load i8, i8* %26, align 8, !dbg !1088, !tbaa !1077
  %72 = zext i8 %71 to i64, !dbg !1088
  %73 = load i32, i32* %5, align 4, !dbg !1088, !tbaa !1038
  %74 = sext i32 %73 to i64, !dbg !1088
  %75 = load i8, i8* %24, align 2, !dbg !1088, !tbaa !1076
  %76 = sext i8 %75 to i64, !dbg !1088
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_crit\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([49 x i8]* @__uknetdev_input.__str.4 to i64), i64 %76, i64 %70, i64 %72, i64 %74, i32 %68, void (i8*, ...)* nonnull @uk_pr_crit) #7, !dbg !1088, !srcloc !1089
  br label %77

; <label>:77:                                     ; preds = %62, %54
  call void @netif_set_down(%struct.netif* nonnull %6) #10, !dbg !1090
  br label %179, !dbg !1091

; <label>:78:                                     ; preds = %45
  %79 = and i32 %46, -2147483647, !dbg !1092
  %80 = icmp eq i32 %79, 0, !dbg !1092
  br i1 %80, label %179, label %81, !dbg !1094

; <label>:81:                                     ; preds = %78
  %82 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1095, !tbaa !1096
  %83 = icmp eq %struct.uk_netbuf* %82, null, !dbg !1105
  br i1 %83, label %84, label %85, !dbg !1108, !prof !996

; <label>:84:                                     ; preds = %81
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !1109
  call void @ukplat_terminate(i32 3) #9, !dbg !1109
  unreachable, !dbg !1109

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %82, i64 0, i32 5, !dbg !1118
  %87 = load i8*, i8** %86, align 8, !dbg !1118, !tbaa !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  %88 = icmp eq i8* %87, null, !dbg !1124
  br i1 %88, label %89, label %90, !dbg !1127, !prof !996

; <label>:89:                                     ; preds = %85
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !1128
  call void @ukplat_terminate(i32 3) #9, !dbg !1128
  unreachable, !dbg !1128

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds i8, i8* %87, i64 21, !dbg !1131
  %92 = load i8, i8* %91, align 1, !dbg !1131, !tbaa !1134
  %93 = and i8 %92, 2, !dbg !1131
  %94 = icmp eq i8 %93, 0, !dbg !1131
  br i1 %94, label %95, label %96, !dbg !1138, !prof !996

; <label>:95:                                     ; preds = %90
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !1139
  call void @ukplat_terminate(i32 3) #9, !dbg !1139
  unreachable, !dbg !1139

; <label>:96:                                     ; preds = %90
  %97 = bitcast i8* %87 to %struct.pbuf*, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  %98 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %82, i64 0, i32 2, !dbg !1143
  %99 = bitcast i8** %98 to i64*, !dbg !1143
  %100 = load i64, i64* %99, align 8, !dbg !1143, !tbaa !1144
  %101 = getelementptr inbounds i8, i8* %87, i64 8, !dbg !1145
  %102 = bitcast i8* %101 to i64*, !dbg !1146
  store i64 %100, i64* %102, align 8, !dbg !1146, !tbaa !1147
  %103 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1148, !tbaa !1096
  %104 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %103, i64 0, i32 3, !dbg !1149
  %105 = load i16, i16* %104, align 8, !dbg !1149, !tbaa !1150
  %106 = getelementptr inbounds i8, i8* %87, i64 18, !dbg !1151
  %107 = bitcast i8* %106 to i16*, !dbg !1151
  store i16 %105, i16* %107, align 2, !dbg !1152, !tbaa !1153
  %108 = getelementptr inbounds i8, i8* %87, i64 16, !dbg !1154
  %109 = bitcast i8* %108 to i16*, !dbg !1154
  store i16 %105, i16* %109, align 8, !dbg !1155, !tbaa !1156
  %110 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1157, !tbaa !1008
  %111 = call signext i8 %110(%struct.pbuf* %97, %struct.netif* nonnull %6) #10, !dbg !1158
  switch i8 %111, label %144 [
    i8 0, label %175
    i8 -1, label %112
  ], !dbg !1160, !prof !1161

; <label>:112:                                    ; preds = %96
  %113 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1162, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %114 = icmp ult i64 %113, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1166
  br i1 %114, label %133, label %115, !dbg !1166

; <label>:115:                                    ; preds = %112
  %116 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1167, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  %117 = icmp ugt i64 %116, ptrtoint ([0 x i8]* @_end to i64), !dbg !1166
  br i1 %117, label %133, label %118, !dbg !1171

; <label>:118:                                    ; preds = %115
  %119 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1172, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  %120 = and i64 %119, -65536, !dbg !1190
  %121 = inttoptr i64 %120 to %struct.uk_thread**, !dbg !1191
  %122 = load %struct.uk_thread*, %struct.uk_thread** %121, align 65536, !dbg !1193, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  %123 = icmp eq %struct.uk_thread* %122, null, !dbg !1196
  br i1 %123, label %124, label %125, !dbg !1199, !prof !996

; <label>:124:                                    ; preds = %118
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !1200
  call void @ukplat_terminate(i32 3) #9, !dbg !1200
  unreachable, !dbg !1200

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %122, i64 0, i32 9, !dbg !1202
  %127 = load %struct.uk_sched*, %struct.uk_sched** %126, align 8, !dbg !1202, !tbaa !1203
  %128 = icmp eq %struct.uk_sched* %127, null, !dbg !1209
  br i1 %128, label %129, label %130, !dbg !1212, !prof !996

; <label>:129:                                    ; preds = %125
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1213
  call void @ukplat_terminate(i32 3) #9, !dbg !1213
  unreachable, !dbg !1213

; <label>:130:                                    ; preds = %125
  %131 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %127, i64 0, i32 0, !dbg !1215
  %132 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %131, align 8, !dbg !1215, !tbaa !1216
  call void %132(%struct.uk_sched* nonnull %127) #10, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  br label %140, !dbg !1222

; <label>:133:                                    ; preds = %115, %112
  %134 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1223, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %135 = and i64 %134, -65536, !dbg !1229
  %136 = or i64 %135, 4097, !dbg !1229
  %137 = add nsw i64 %136, -1, !dbg !1229
  %138 = inttoptr i64 %137 to i32*, !dbg !1230
  %139 = load i32, i32* %138, align 4096, !dbg !1231, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_yield\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %139, void ()* nonnull @uk_sched_yield) #7, !dbg !1233, !srcloc !1234
  br label %140

; <label>:140:                                    ; preds = %133, %130
  %141 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1235, !tbaa !1008
  %142 = call signext i8 %141(%struct.pbuf* %97, %struct.netif* nonnull %6) #10, !dbg !1236
  %143 = icmp eq i8 %142, 0, !dbg !1237
  br i1 %143, label %175, label %144, !dbg !1239, !prof !1240

; <label>:144:                                    ; preds = %96, %140
  %145 = phi i8 [ %142, %140 ], [ %111, %96 ], !dbg !1241
  %146 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1242, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  %147 = icmp ult i64 %146, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1246
  br i1 %147, label %159, label %148, !dbg !1246

; <label>:148:                                    ; preds = %144
  %149 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1247, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  %150 = icmp ugt i64 %149, ptrtoint ([0 x i8]* @_end to i64), !dbg !1246
  br i1 %150, label %159, label %151, !dbg !1251

; <label>:151:                                    ; preds = %148
  %152 = load i8, i8* %24, align 2, !dbg !1252, !tbaa !1076
  %153 = sext i8 %152 to i32, !dbg !1252
  %154 = load i8, i8* %25, align 1, !dbg !1252, !tbaa !1076
  %155 = sext i8 %154 to i32, !dbg !1252
  %156 = load i8, i8* %26, align 8, !dbg !1252, !tbaa !1077
  %157 = zext i8 %156 to i32, !dbg !1252
  %158 = sext i8 %145 to i32, !dbg !1252
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__uknetdev_input.__str.5, i64 0, i64 0), i32 %153, i32 %155, i32 %157, i32 %158) #8, !dbg !1252
  br label %173, !dbg !1252

; <label>:159:                                    ; preds = %148, %144
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1254, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  %161 = and i64 %160, -65536, !dbg !1260
  %162 = or i64 %161, 4097, !dbg !1260
  %163 = add nsw i64 %162, -1, !dbg !1260
  %164 = inttoptr i64 %163 to i32*, !dbg !1261
  %165 = load i32, i32* %164, align 4096, !dbg !1262, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  %166 = load i8, i8* %25, align 1, !dbg !1264, !tbaa !1076
  %167 = sext i8 %166 to i64, !dbg !1264
  %168 = load i8, i8* %26, align 8, !dbg !1264, !tbaa !1077
  %169 = zext i8 %168 to i64, !dbg !1264
  %170 = sext i8 %145 to i64, !dbg !1264
  %171 = load i8, i8* %24, align 2, !dbg !1264, !tbaa !1076
  %172 = sext i8 %171 to i64, !dbg !1264
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([46 x i8]* @__uknetdev_input.__str.6 to i64), i64 %172, i64 %167, i64 %169, i64 %170, i32 %165, void (i8*, ...)* nonnull @uk_pr_err) #7, !dbg !1264, !srcloc !1265
  br label %173

; <label>:173:                                    ; preds = %159, %151
  %174 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1266, !tbaa !1096
  call void @uk_netbuf_free_single(%struct.uk_netbuf* %174) #10, !dbg !1267
  br label %175, !dbg !1268

; <label>:175:                                    ; preds = %96, %173, %140
  %176 = load i32, i32* %5, align 4, !dbg !1269, !tbaa !1038
  %177 = and i32 %176, -2147483645, !dbg !1269
  %178 = icmp eq i32 %177, 3, !dbg !1269
  br i1 %178, label %28, label %179, !dbg !1270, !llvm.loop !1271

; <label>:179:                                    ; preds = %78, %175, %77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  ret void, !dbg !1274
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) #3 !dbg !898 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1276
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1276
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1278
  call void @llvm.va_start(i8* nonnull %3), !dbg !1278
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.14, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !1279
  call void @llvm.va_end(i8* nonnull %3), !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  ret void, !dbg !1283
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_rx_one(%struct.uk_netdev*, i16 zeroext, %struct.uk_netbuf**) #3 !dbg !1284 {
  %4 = icmp eq %struct.uk_netdev* %0, null, !dbg !1295
  br i1 %4, label %5, label %6, !dbg !1298, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1299
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1299
  unreachable, !dbg !1299

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 1, !dbg !1301
  %8 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)** %7, align 8, !dbg !1301, !tbaa !1304
  %9 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)* %8, null, !dbg !1301
  br i1 %9, label %10, label %11, !dbg !1306, !prof !996

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1307
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1307
  unreachable, !dbg !1307

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i16 %1, 0, !dbg !1309
  br i1 %12, label %14, label %13, !dbg !1312, !prof !1240

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1313
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1313
  unreachable, !dbg !1313

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !1315
  %16 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %15, align 8, !dbg !1315, !tbaa !1318
  %17 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %16, i64 0, i32 0, !dbg !1315
  %18 = load i32, i32* %17, align 8, !dbg !1315, !tbaa !1319
  %19 = icmp eq i32 %18, 3, !dbg !1315
  br i1 %19, label %21, label %20, !dbg !1321, !prof !1240

; <label>:20:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1322
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1322
  unreachable, !dbg !1322

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 4, i64 0, !dbg !1324
  %23 = bitcast %struct.uk_netdev_rx_queue** %22 to i64*, !dbg !1324
  %24 = load i64, i64* %23, align 8, !dbg !1324, !tbaa !1096
  %25 = add i64 %24, 512, !dbg !1324
  %26 = icmp ult i64 %25, 513, !dbg !1324
  %27 = inttoptr i64 %24 to %struct.uk_netdev_rx_queue*, !dbg !1327
  br i1 %26, label %28, label %29, !dbg !1327, !prof !996

; <label>:28:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1328
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1328
  unreachable, !dbg !1328

; <label>:29:                                     ; preds = %21
  %30 = icmp eq %struct.uk_netbuf** %2, null, !dbg !1330
  br i1 %30, label %31, label %32, !dbg !1333, !prof !996

; <label>:31:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1334
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1334
  unreachable, !dbg !1334

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 %8(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_rx_queue* %27, %struct.uk_netbuf** nonnull %2) #10, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  ret i32 %33, !dbg !1337
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @netif_set_down(%struct.netif*) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_sched_yield() #3 !dbg !1181 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1338, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  %2 = and i64 %1, -65536, !dbg !1344
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !1345
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !1347, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %5 = icmp eq %struct.uk_thread* %4, null, !dbg !1350
  br i1 %5, label %6, label %7, !dbg !1351, !prof !996

; <label>:6:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1352
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1352
  unreachable, !dbg !1352

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %4, i64 0, i32 9, !dbg !1353
  %9 = load %struct.uk_sched*, %struct.uk_sched** %8, align 8, !dbg !1353, !tbaa !1203
  %10 = icmp eq %struct.uk_sched* %9, null, !dbg !1355
  br i1 %10, label %11, label %12, !dbg !1356, !prof !996

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1357
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1357
  unreachable, !dbg !1357

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %9, i64 0, i32 0, !dbg !1358
  %14 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %13, align 8, !dbg !1358, !tbaa !1216
  tail call void %14(%struct.uk_sched* nonnull %9) #10, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  ret void, !dbg !1360
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) #3 !dbg !922 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1362
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1362
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1364
  call void @llvm.va_start(i8* nonnull %3), !dbg !1364
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_err.__str.26, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !1365
  call void @llvm.va_end(i8* nonnull %3), !dbg !1368
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  ret void, !dbg !1369
}

; Function Attrs: noredzone
declare dso_local void @uk_netbuf_free_single(%struct.uk_netbuf*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @uknetdev_poll(%struct.netif*) local_unnamed_addr #0 !dbg !1370 {
  %2 = icmp eq %struct.netif* %0, null, !dbg !1375
  br i1 %2, label %3, label %4, !dbg !1378, !prof !996

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1379
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1379
  unreachable, !dbg !1379

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 0, !dbg !1381
  %6 = load i8, i8* %5, align 2, !dbg !1381, !tbaa !1076
  %7 = icmp eq i8 %6, 101, !dbg !1381
  br i1 %7, label %9, label %8, !dbg !1384, !prof !1240

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1385
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1385
  unreachable, !dbg !1385

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 1, !dbg !1387
  %11 = load i8, i8* %10, align 1, !dbg !1387, !tbaa !1076
  %12 = icmp eq i8 %11, 110, !dbg !1387
  br i1 %12, label %14, label %13, !dbg !1390, !prof !1240

; <label>:13:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1391
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1391
  unreachable, !dbg !1391

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !1393
  %16 = bitcast i8** %15 to %struct.uk_netdev**, !dbg !1393
  %17 = load %struct.uk_netdev*, %struct.uk_netdev** %16, align 8, !dbg !1393, !tbaa !1394
  %18 = icmp eq %struct.uk_netdev* %17, null, !dbg !1396
  br i1 %18, label %19, label %20, !dbg !1399, !prof !996

; <label>:19:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1400
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1400
  unreachable, !dbg !1400

; <label>:20:                                     ; preds = %14
  %21 = bitcast %struct.netif* %0 to i8*, !dbg !1402
  tail call void @__uknetdev_input(%struct.uk_netdev* nonnull %17, i16 zeroext undef, i8* %21) #8, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  ret void, !dbg !1404
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @___poll_netif(i8*) #6 !dbg !1405 {
  %2 = bitcast i8* %0 to %struct.netif*, !dbg !1417
  br label %3, !dbg !1419

; <label>:3:                                      ; preds = %31, %1
  tail call void @uknetdev_poll(%struct.netif* %2) #8, !dbg !1420
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1421, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1425
  br i1 %5, label %24, label %6, !dbg !1425

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1426, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !1425
  br i1 %8, label %24, label %9, !dbg !1430

; <label>:9:                                      ; preds = %6
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1431, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  %11 = and i64 %10, -65536, !dbg !1439
  %12 = inttoptr i64 %11 to %struct.uk_thread**, !dbg !1440
  %13 = load %struct.uk_thread*, %struct.uk_thread** %12, align 65536, !dbg !1442, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  %14 = icmp eq %struct.uk_thread* %13, null, !dbg !1445
  br i1 %14, label %15, label %16, !dbg !1446, !prof !996

; <label>:15:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !1447
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1447
  unreachable, !dbg !1447

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %13, i64 0, i32 9, !dbg !1448
  %18 = load %struct.uk_sched*, %struct.uk_sched** %17, align 8, !dbg !1448, !tbaa !1203
  %19 = icmp eq %struct.uk_sched* %18, null, !dbg !1450
  br i1 %19, label %20, label %21, !dbg !1451, !prof !996

; <label>:20:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1452
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1452
  unreachable, !dbg !1452

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %18, i64 0, i32 0, !dbg !1453
  %23 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %22, align 8, !dbg !1453, !tbaa !1216
  tail call void %23(%struct.uk_sched* nonnull %18) #10, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br label %31, !dbg !1456

; <label>:24:                                     ; preds = %6, %3
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1457, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %26 = and i64 %25, -65536, !dbg !1463
  %27 = or i64 %26, 4097, !dbg !1463
  %28 = add nsw i64 %27, -1, !dbg !1463
  %29 = inttoptr i64 %28 to i32*, !dbg !1464
  %30 = load i32, i32* %29, align 4096, !dbg !1465, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_yield\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %30, void ()* nonnull @uk_sched_yield) #7, !dbg !1467, !srcloc !1468
  br label %31

; <label>:31:                                     ; preds = %24, %21
  br label %3, !dbg !1420, !llvm.loop !1469
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @uknetdev_init(%struct.netif*) #0 !dbg !1471 {
  %2 = alloca %struct.uk_netdev*, align 8
  %3 = alloca %struct.uk_netdev_conf, align 2
  %4 = alloca %struct.uk_netdev_rxqueue_conf, align 8
  %5 = alloca %struct.uk_netdev_txqueue_conf, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwip_netdev_data*, align 8
  %8 = alloca %struct.uk_hwaddr*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.uk_netdev** %2 to i8*, !dbg !1565
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1565
  %11 = ptrtoint %struct.uk_netdev** %2 to i64, !dbg !1566
  %12 = add i64 %11, 65536, !dbg !1567
  %13 = inttoptr i64 %12 to %struct.uk_netdev**, !dbg !1568
  %14 = bitcast %struct.uk_netdev_conf* %3 to i8*, !dbg !1570
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #7, !dbg !1570
  %15 = ptrtoint %struct.uk_netdev_conf* %3 to i64, !dbg !1571
  %16 = add i64 %15, 65536, !dbg !1572
  %17 = inttoptr i64 %16 to %struct.uk_netdev_conf*, !dbg !1573
  %18 = bitcast %struct.uk_netdev_rxqueue_conf* %4 to i8*, !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #7, !dbg !1575
  %19 = ptrtoint %struct.uk_netdev_rxqueue_conf* %4 to i64, !dbg !1576
  %20 = add i64 %19, 65536, !dbg !1577
  %21 = inttoptr i64 %20 to %struct.uk_netdev_rxqueue_conf*, !dbg !1578
  %22 = bitcast %struct.uk_netdev_txqueue_conf* %5 to i8*, !dbg !1580
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !1580
  %23 = ptrtoint %struct.uk_netdev_txqueue_conf* %5 to i64, !dbg !1581
  %24 = add i64 %23, 65536, !dbg !1582
  %25 = inttoptr i64 %24 to %struct.uk_netdev_txqueue_conf*, !dbg !1583
  %26 = bitcast i32* %6 to i8*, !dbg !1585
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #7, !dbg !1585
  %27 = bitcast %struct.lwip_netdev_data** %7 to i8*, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !1586
  %28 = bitcast %struct.uk_hwaddr** %8 to i8*, !dbg !1587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #7, !dbg !1587
  %29 = bitcast i32* %9 to i8*, !dbg !1588
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #7, !dbg !1588
  %30 = icmp eq %struct.netif* %0, null, !dbg !1589
  br i1 %30, label %31, label %32, !dbg !1592, !prof !996

; <label>:31:                                     ; preds = %1
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1593
  call void @ukplat_terminate(i32 3) #9, !dbg !1593
  unreachable, !dbg !1593

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !1595
  %34 = bitcast i8** %33 to %struct.uk_netdev**, !dbg !1595
  %35 = load %struct.uk_netdev*, %struct.uk_netdev** %34, align 8, !dbg !1595, !tbaa !1394
  store %struct.uk_netdev* %35, %struct.uk_netdev** %13, align 8, !dbg !1596, !tbaa !1096
  %36 = icmp eq %struct.uk_netdev* %35, null, !dbg !1597
  br i1 %36, label %37, label %38, !dbg !1600, !prof !996

; <label>:37:                                     ; preds = %32
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1601
  call void @ukplat_terminate(i32 3) #9, !dbg !1601
  unreachable, !dbg !1601

; <label>:38:                                     ; preds = %32
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1603, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  %40 = icmp ult i64 %39, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1607
  br i1 %40, label %50, label %41, !dbg !1607

; <label>:41:                                     ; preds = %38
  %42 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1608, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  %43 = icmp ugt i64 %42, ptrtoint ([0 x i8]* @_end to i64), !dbg !1607
  br i1 %43, label %50, label %44, !dbg !1612

; <label>:44:                                     ; preds = %41
  %45 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1613, !tbaa !1096
  %46 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %45, i64 0, i32 8, !dbg !1622
  %47 = bitcast i8** %46 to i64*, !dbg !1622
  %48 = load i64, i64* %47, align 8, !dbg !1622, !tbaa !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %49 = bitcast %struct.lwip_netdev_data** %7 to i64*, !dbg !1613
  store i64 %48, i64* %49, align 8, !dbg !1613, !tbaa !1096
  br label %60, !dbg !1613

; <label>:50:                                     ; preds = %41, %38
  %51 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1626, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  %52 = and i64 %51, -65536, !dbg !1632
  %53 = or i64 %52, 4097, !dbg !1632
  %54 = add nsw i64 %53, -1, !dbg !1632
  %55 = inttoptr i64 %54 to i32*, !dbg !1633
  %56 = load i32, i32* %55, align 4096, !dbg !1634, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  %57 = inttoptr i64 %12 to i64*, !dbg !1636
  %58 = load i64, i64* %57, align 8, !dbg !1636, !tbaa !1096
  %59 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %58, i32 %56, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #7, !dbg !1636, !srcloc !1637
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %7, i64 %59) #7, !dbg !1638, !srcloc !1642
  br label %60

; <label>:60:                                     ; preds = %44, %50
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 8, !dbg !1643
  %62 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %61, align 8, !dbg !1643, !tbaa !1008
  %63 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %62, null, !dbg !1643
  br i1 %63, label %64, label %65, !dbg !1646

; <label>:64:                                     ; preds = %60
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1647
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1650
  call void @ukplat_terminate(i32 3) #9, !dbg !1650
  unreachable, !dbg !1650

; <label>:65:                                     ; preds = %60
  %66 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1654, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  %67 = icmp ult i64 %66, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1658
  br i1 %67, label %74, label %68, !dbg !1658

; <label>:68:                                     ; preds = %65
  %69 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1659, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  %70 = icmp ugt i64 %69, ptrtoint ([0 x i8]* @_end to i64), !dbg !1658
  br i1 %70, label %74, label %71, !dbg !1663

; <label>:71:                                     ; preds = %68
  %72 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1664, !tbaa !1096
  %73 = call i32 @uk_netdev_state_get(%struct.uk_netdev* %72) #10, !dbg !1664
  store i32 %73, i32* %6, align 4, !dbg !1664, !tbaa !1076
  br label %85, !dbg !1664

; <label>:74:                                     ; preds = %68, %65
  %75 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1667, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  %76 = and i64 %75, -65536, !dbg !1673
  %77 = or i64 %76, 4097, !dbg !1673
  %78 = add nsw i64 %77, -1, !dbg !1673
  %79 = inttoptr i64 %78 to i32*, !dbg !1674
  %80 = load i32, i32* %79, align 4096, !dbg !1675, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %81 = inttoptr i64 %12 to i64*, !dbg !1677
  %82 = load i64, i64* %81, align 8, !dbg !1677, !tbaa !1096
  %83 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_state_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %82, i32 %80, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_state_get) #7, !dbg !1677, !srcloc !1678
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %83) #7, !dbg !1679, !srcloc !1682
  %84 = load i32, i32* %6, align 4, !dbg !1683, !tbaa !1076
  br label %85

; <label>:85:                                     ; preds = %74, %71
  %86 = phi i32 [ %84, %74 ], [ %73, %71 ], !dbg !1683
  %87 = icmp eq i32 %86, 1, !dbg !1685
  br i1 %87, label %88, label %328, !dbg !1686

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 0, !dbg !1687
  store i8 101, i8* %89, align 2, !dbg !1688, !tbaa !1076
  %90 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 1, !dbg !1689
  store i8 110, i8* %90, align 1, !dbg !1690, !tbaa !1076
  %91 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1691, !tbaa !1096
  %92 = icmp eq %struct.uk_alloc* %91, null, !dbg !1692
  br i1 %92, label %328, label %93, !dbg !1694

; <label>:93:                                     ; preds = %88
  %94 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1695, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  %95 = icmp ult i64 %94, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1699
  br i1 %95, label %103, label %96, !dbg !1699

; <label>:96:                                     ; preds = %93
  %97 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1700, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %98 = icmp ugt i64 %97, ptrtoint ([0 x i8]* @_end to i64), !dbg !1699
  br i1 %98, label %103, label %99, !dbg !1704

; <label>:99:                                     ; preds = %96
  %100 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1705, !tbaa !1096
  %101 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1705, !tbaa !1096
  %102 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %101, i64 0, i32 1, !dbg !1705
  call void @uk_netdev_info_get(%struct.uk_netdev* %100, %struct.uk_netdev_info* nonnull %102) #10, !dbg !1705
  br label %115, !dbg !1705

; <label>:103:                                    ; preds = %96, %93
  %104 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1707, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %105 = and i64 %104, -65536, !dbg !1713
  %106 = or i64 %105, 4097, !dbg !1713
  %107 = add nsw i64 %106, -1, !dbg !1713
  %108 = inttoptr i64 %107 to i32*, !dbg !1714
  %109 = load i32, i32* %108, align 4096, !dbg !1715, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  %110 = inttoptr i64 %12 to i64*, !dbg !1717
  %111 = load i64, i64* %110, align 8, !dbg !1717, !tbaa !1096
  %112 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1717, !tbaa !1096
  %113 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %112, i64 0, i32 1, !dbg !1717
  %114 = ptrtoint %struct.uk_netdev_info* %113 to i64, !dbg !1717
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_info_get\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %111, i64 %114, i32 %109, void (%struct.uk_netdev*, %struct.uk_netdev_info*)* nonnull @uk_netdev_info_get) #7, !dbg !1717, !srcloc !1718
  br label %115

; <label>:115:                                    ; preds = %103, %99
  %116 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1719, !tbaa !1096
  %117 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 1, i32 0, !dbg !1721
  %118 = load i16, i16* %117, align 8, !dbg !1721, !tbaa !1722
  %119 = icmp eq i16 %118, 0, !dbg !1719
  br i1 %119, label %328, label %120, !dbg !1725

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 1, i32 1, !dbg !1726
  %122 = load i16, i16* %121, align 2, !dbg !1726, !tbaa !1727
  %123 = icmp eq i16 %122, 0, !dbg !1728
  br i1 %123, label %328, label %124, !dbg !1729

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 0, !dbg !1730
  store %struct.uk_alloc* %91, %struct.uk_alloc** %125, align 8, !dbg !1731, !tbaa !1732
  %126 = getelementptr inbounds %struct.uk_netdev_conf, %struct.uk_netdev_conf* %17, i64 0, i32 0, !dbg !1733
  store i16 1, i16* %126, align 2, !dbg !1734, !tbaa !1735
  %127 = getelementptr inbounds %struct.uk_netdev_conf, %struct.uk_netdev_conf* %17, i64 0, i32 1, !dbg !1737
  store i16 1, i16* %127, align 2, !dbg !1738, !tbaa !1739
  %128 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1740, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  %129 = icmp ult i64 %128, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1744
  br i1 %129, label %136, label %130, !dbg !1744

; <label>:130:                                    ; preds = %124
  %131 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1745, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  %132 = icmp ugt i64 %131, ptrtoint ([0 x i8]* @_end to i64), !dbg !1744
  br i1 %132, label %136, label %133, !dbg !1749

; <label>:133:                                    ; preds = %130
  %134 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1750, !tbaa !1096
  %135 = call i32 @uk_netdev_configure(%struct.uk_netdev* %134, %struct.uk_netdev_conf* nonnull %17) #10, !dbg !1750
  store i32 %135, i32* %9, align 4, !dbg !1750, !tbaa !1038
  br label %147, !dbg !1750

; <label>:136:                                    ; preds = %130, %124
  %137 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1753, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %138 = and i64 %137, -65536, !dbg !1759
  %139 = or i64 %138, 4097, !dbg !1759
  %140 = add nsw i64 %139, -1, !dbg !1759
  %141 = inttoptr i64 %140 to i32*, !dbg !1760
  %142 = load i32, i32* %141, align 4096, !dbg !1761, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  %143 = inttoptr i64 %12 to i64*, !dbg !1763
  %144 = load i64, i64* %143, align 8, !dbg !1763, !tbaa !1096
  %145 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %144, i64 %16, i32 %142, i32 (%struct.uk_netdev*, %struct.uk_netdev_conf*)* nonnull @uk_netdev_configure) #7, !dbg !1763, !srcloc !1764
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %145) #7, !dbg !1765, !srcloc !1768
  %146 = load i32, i32* %9, align 4, !dbg !1769, !tbaa !1038
  br label %147

; <label>:147:                                    ; preds = %136, %133
  %148 = phi i32 [ %146, %136 ], [ %135, %133 ], !dbg !1769
  %149 = icmp slt i32 %148, 0, !dbg !1771
  br i1 %149, label %328, label %150, !dbg !1772

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 2, !dbg !1773
  store %struct.uk_alloc* %91, %struct.uk_alloc** %151, align 8, !dbg !1774, !tbaa !1775
  %152 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 3, !dbg !1777
  store i16 (i8*, %struct.uk_netbuf**, i16)* @netif_alloc_rxpkts, i16 (i8*, %struct.uk_netbuf**, i16)** %152, align 8, !dbg !1778, !tbaa !1779
  %153 = bitcast %struct.lwip_netdev_data** %7 to i64*, !dbg !1780
  %154 = load i64, i64* %153, align 8, !dbg !1780, !tbaa !1096
  %155 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 4, !dbg !1781
  %156 = bitcast i8** %155 to i64*, !dbg !1782
  store i64 %154, i64* %156, align 8, !dbg !1782, !tbaa !1783
  %157 = inttoptr i64 %20 to void (%struct.uk_netdev*, i16, i8*)**, !dbg !1784
  store void (%struct.uk_netdev*, i16, i8*)* @uknetdev_input, void (%struct.uk_netdev*, i16, i8*)** %157, align 8, !dbg !1785, !tbaa !1786
  %158 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 1, !dbg !1787
  %159 = bitcast i8** %158 to %struct.netif**, !dbg !1788
  store %struct.netif* %0, %struct.netif** %159, align 8, !dbg !1788, !tbaa !1789
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1790, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  %161 = icmp ult i64 %160, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1794
  br i1 %161, label %168, label %162, !dbg !1794

; <label>:162:                                    ; preds = %150
  %163 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1795, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  %164 = icmp ugt i64 %163, ptrtoint ([0 x i8]* @_end to i64), !dbg !1794
  br i1 %164, label %168, label %165, !dbg !1799

; <label>:165:                                    ; preds = %162
  %166 = call %struct.uk_sched* @uk_sched_get_default() #10, !dbg !1800
  %167 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 5, !dbg !1800
  store %struct.uk_sched* %166, %struct.uk_sched** %167, align 8, !dbg !1800, !tbaa !1802
  br label %178, !dbg !1800

; <label>:168:                                    ; preds = %162, %150
  %169 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1803, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %170 = and i64 %169, -65536, !dbg !1809
  %171 = or i64 %170, 4097, !dbg !1809
  %172 = add nsw i64 %171, -1, !dbg !1809
  %173 = inttoptr i64 %172 to i32*, !dbg !1810
  %174 = load i32, i32* %173, align 4096, !dbg !1811, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1812
  %175 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_get_default\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %174, %struct.uk_sched* ()* nonnull @uk_sched_get_default) #7, !dbg !1813, !srcloc !1814
  %176 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 5, !dbg !1815
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_sched** nonnull %176, i64 %175) #7, !dbg !1815, !srcloc !1819
  %177 = load %struct.uk_sched*, %struct.uk_sched** %176, align 8, !dbg !1820, !tbaa !1802
  br label %178

; <label>:178:                                    ; preds = %168, %165
  %179 = phi %struct.uk_sched* [ %177, %168 ], [ %166, %165 ], !dbg !1820
  %180 = icmp eq %struct.uk_sched* %179, null, !dbg !1822
  br i1 %180, label %328, label %181, !dbg !1823

; <label>:181:                                    ; preds = %178
  %182 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1824, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  %183 = icmp ult i64 %182, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1828
  br i1 %183, label %190, label %184, !dbg !1828

; <label>:184:                                    ; preds = %181
  %185 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1829, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  %186 = icmp ugt i64 %185, ptrtoint ([0 x i8]* @_end to i64), !dbg !1828
  br i1 %186, label %190, label %187, !dbg !1833

; <label>:187:                                    ; preds = %184
  %188 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1834, !tbaa !1096
  %189 = call i32 @uk_netdev_rxq_configure(%struct.uk_netdev* %188, i16 zeroext 0, i16 zeroext 0, %struct.uk_netdev_rxqueue_conf* nonnull %21) #10, !dbg !1834
  store i32 %189, i32* %9, align 4, !dbg !1834, !tbaa !1038
  br label %201, !dbg !1834

; <label>:190:                                    ; preds = %184, %181
  %191 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1836, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1840
  %192 = and i64 %191, -65536, !dbg !1842
  %193 = or i64 %192, 4097, !dbg !1842
  %194 = add nsw i64 %193, -1, !dbg !1842
  %195 = inttoptr i64 %194 to i32*, !dbg !1843
  %196 = load i32, i32* %195, align 4096, !dbg !1844, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  %197 = inttoptr i64 %12 to i64*, !dbg !1846
  %198 = load i64, i64* %197, align 8, !dbg !1846, !tbaa !1096
  %199 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rxq_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %198, i64 0, i64 0, i64 %20, i32 %196, i32 (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_rxqueue_conf*)* nonnull @uk_netdev_rxq_configure) #7, !dbg !1846, !srcloc !1847
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %199) #7, !dbg !1848, !srcloc !1851
  %200 = load i32, i32* %9, align 4, !dbg !1852, !tbaa !1038
  br label %201

; <label>:201:                                    ; preds = %190, %187
  %202 = phi i32 [ %200, %190 ], [ %189, %187 ], !dbg !1852
  %203 = icmp slt i32 %202, 0, !dbg !1854
  br i1 %203, label %328, label %204, !dbg !1855

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.uk_netdev_txqueue_conf, %struct.uk_netdev_txqueue_conf* %25, i64 0, i32 0, !dbg !1856
  store %struct.uk_alloc* %91, %struct.uk_alloc** %205, align 8, !dbg !1857, !tbaa !1858
  %206 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1860, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  %207 = icmp ult i64 %206, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1864
  br i1 %207, label %214, label %208, !dbg !1864

; <label>:208:                                    ; preds = %204
  %209 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1865, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  %210 = icmp ugt i64 %209, ptrtoint ([0 x i8]* @_end to i64), !dbg !1864
  br i1 %210, label %214, label %211, !dbg !1869

; <label>:211:                                    ; preds = %208
  %212 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1870, !tbaa !1096
  %213 = call i32 @uk_netdev_txq_configure(%struct.uk_netdev* %212, i16 zeroext 0, i16 zeroext 0, %struct.uk_netdev_txqueue_conf* nonnull %25) #10, !dbg !1870
  store i32 %213, i32* %9, align 4, !dbg !1870, !tbaa !1038
  br label %225, !dbg !1870

; <label>:214:                                    ; preds = %208, %204
  %215 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1872, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  %216 = and i64 %215, -65536, !dbg !1878
  %217 = or i64 %216, 4097, !dbg !1878
  %218 = add nsw i64 %217, -1, !dbg !1878
  %219 = inttoptr i64 %218 to i32*, !dbg !1879
  %220 = load i32, i32* %219, align 4096, !dbg !1880, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  %221 = inttoptr i64 %12 to i64*, !dbg !1882
  %222 = load i64, i64* %221, align 8, !dbg !1882, !tbaa !1096
  %223 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_txq_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %222, i64 0, i64 0, i64 %24, i32 %220, i32 (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_txqueue_conf*)* nonnull @uk_netdev_txq_configure) #7, !dbg !1882, !srcloc !1883
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %223) #7, !dbg !1884, !srcloc !1887
  %224 = load i32, i32* %9, align 4, !dbg !1888, !tbaa !1038
  br label %225

; <label>:225:                                    ; preds = %214, %211
  %226 = phi i32 [ %224, %214 ], [ %213, %211 ], !dbg !1888
  %227 = icmp slt i32 %226, 0, !dbg !1890
  br i1 %227, label %328, label %228, !dbg !1891

; <label>:228:                                    ; preds = %225
  %229 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1892, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %230 = icmp ult i64 %229, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1896
  br i1 %230, label %237, label %231, !dbg !1896

; <label>:231:                                    ; preds = %228
  %232 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1897, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %233 = icmp ugt i64 %232, ptrtoint ([0 x i8]* @_end to i64), !dbg !1896
  br i1 %233, label %237, label %234, !dbg !1901

; <label>:234:                                    ; preds = %231
  %235 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1902, !tbaa !1096
  %236 = call i32 @uk_netdev_start(%struct.uk_netdev* %235) #10, !dbg !1902
  store i32 %236, i32* %9, align 4, !dbg !1902, !tbaa !1038
  br label %248, !dbg !1902

; <label>:237:                                    ; preds = %231, %228
  %238 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1904, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  %239 = and i64 %238, -65536, !dbg !1910
  %240 = or i64 %239, 4097, !dbg !1910
  %241 = add nsw i64 %240, -1, !dbg !1910
  %242 = inttoptr i64 %241 to i32*, !dbg !1911
  %243 = load i32, i32* %242, align 4096, !dbg !1912, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  %244 = inttoptr i64 %12 to i64*, !dbg !1914
  %245 = load i64, i64* %244, align 8, !dbg !1914, !tbaa !1096
  %246 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_start\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %245, i32 %243, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_start) #7, !dbg !1914, !srcloc !1915
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %246) #7, !dbg !1916, !srcloc !1919
  %247 = load i32, i32* %9, align 4, !dbg !1920, !tbaa !1038
  br label %248

; <label>:248:                                    ; preds = %237, %234
  %249 = phi i32 [ %247, %237 ], [ %236, %234 ], !dbg !1920
  %250 = icmp slt i32 %249, 0, !dbg !1922
  br i1 %250, label %328, label %251, !dbg !1923

; <label>:251:                                    ; preds = %248
  %252 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 9, !dbg !1924
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)* @etharp_output, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %252, align 8, !dbg !1925, !tbaa !1926
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 11, !dbg !1927
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)* @ethip6_output, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %253, align 8, !dbg !1928, !tbaa !1929
  %254 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 10, !dbg !1930
  store i8 (%struct.netif*, %struct.pbuf*)* @uknetdev_output, i8 (%struct.netif*, %struct.pbuf*)** %254, align 8, !dbg !1931, !tbaa !1932
  %255 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1933
  %256 = load i8, i8* %255, align 1, !dbg !1933, !tbaa !1935
  %257 = or i8 %256, 14, !dbg !1933
  store i8 %257, i8* %255, align 1, !dbg !1933, !tbaa !1935
  %258 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1936
  store i16 31, i16* %258, align 8, !dbg !1936, !tbaa !1938
  %259 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1939, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  %260 = icmp ult i64 %259, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1943
  br i1 %260, label %267, label %261, !dbg !1943

; <label>:261:                                    ; preds = %251
  %262 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1944, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  %263 = icmp ugt i64 %262, ptrtoint ([0 x i8]* @_end to i64), !dbg !1943
  br i1 %263, label %267, label %264, !dbg !1948

; <label>:264:                                    ; preds = %261
  %265 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1949, !tbaa !1096
  %266 = call %struct.uk_hwaddr* @uk_netdev_hwaddr_get(%struct.uk_netdev* %265) #10, !dbg !1949
  store %struct.uk_hwaddr* %266, %struct.uk_hwaddr** %8, align 8, !dbg !1949, !tbaa !1096
  br label %278, !dbg !1949

; <label>:267:                                    ; preds = %261, %251
  %268 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1952, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1956
  %269 = and i64 %268, -65536, !dbg !1958
  %270 = or i64 %269, 4097, !dbg !1958
  %271 = add nsw i64 %270, -1, !dbg !1958
  %272 = inttoptr i64 %271 to i32*, !dbg !1959
  %273 = load i32, i32* %272, align 4096, !dbg !1960, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  %274 = inttoptr i64 %12 to i64*, !dbg !1962
  %275 = load i64, i64* %274, align 8, !dbg !1962, !tbaa !1096
  %276 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_hwaddr_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %275, i32 %273, %struct.uk_hwaddr* (%struct.uk_netdev*)* nonnull @uk_netdev_hwaddr_get) #7, !dbg !1962, !srcloc !1963
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_hwaddr** nonnull %8, i64 %276) #7, !dbg !1964, !srcloc !1968
  %277 = load %struct.uk_hwaddr*, %struct.uk_hwaddr** %8, align 8, !dbg !1969, !tbaa !1096
  br label %278

; <label>:278:                                    ; preds = %264, %267
  %279 = phi %struct.uk_hwaddr* [ %266, %264 ], [ %277, %267 ], !dbg !1969
  %280 = icmp eq %struct.uk_hwaddr* %279, null, !dbg !1969
  br i1 %280, label %281, label %282, !dbg !1972, !prof !996

; <label>:281:                                    ; preds = %278
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1973
  call void @ukplat_terminate(i32 3) #9, !dbg !1973
  unreachable, !dbg !1973

; <label>:282:                                    ; preds = %278
  %283 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1975
  store i8 6, i8* %283, align 4, !dbg !1976, !tbaa !1977
  %284 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 0, !dbg !1979
  %285 = load i8, i8* %284, align 1, !dbg !1979, !tbaa !1076
  %286 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1982
  store i8 %285, i8* %286, align 1, !dbg !1983, !tbaa !1076
  %287 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 1, !dbg !1979
  %288 = load i8, i8* %287, align 1, !dbg !1979, !tbaa !1076
  %289 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 1, !dbg !1982
  store i8 %288, i8* %289, align 1, !dbg !1983, !tbaa !1076
  %290 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 2, !dbg !1979
  %291 = load i8, i8* %290, align 1, !dbg !1979, !tbaa !1076
  %292 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 2, !dbg !1982
  store i8 %291, i8* %292, align 1, !dbg !1983, !tbaa !1076
  %293 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 3, !dbg !1979
  %294 = load i8, i8* %293, align 1, !dbg !1979, !tbaa !1076
  %295 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 3, !dbg !1982
  store i8 %294, i8* %295, align 1, !dbg !1983, !tbaa !1076
  %296 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 4, !dbg !1979
  %297 = load i8, i8* %296, align 1, !dbg !1979, !tbaa !1076
  %298 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 4, !dbg !1982
  store i8 %297, i8* %298, align 1, !dbg !1983, !tbaa !1076
  %299 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 5, !dbg !1979
  %300 = load i8, i8* %299, align 1, !dbg !1979, !tbaa !1076
  %301 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 5, !dbg !1982
  store i8 %300, i8* %301, align 1, !dbg !1983, !tbaa !1076
  %302 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1984, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  %303 = icmp ult i64 %302, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1988
  br i1 %303, label %311, label %304, !dbg !1988

; <label>:304:                                    ; preds = %282
  %305 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1989, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  %306 = icmp ugt i64 %305, ptrtoint ([0 x i8]* @_end to i64), !dbg !1988
  br i1 %306, label %311, label %307, !dbg !1993

; <label>:307:                                    ; preds = %304
  %308 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1994, !tbaa !1096
  %309 = call zeroext i16 @uk_netdev_mtu_get(%struct.uk_netdev* %308) #10, !dbg !1994
  %310 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !1994
  store i16 %309, i16* %310, align 2, !dbg !1994, !tbaa !1996
  br label %323, !dbg !1994

; <label>:311:                                    ; preds = %304, %282
  %312 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1997, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  %313 = and i64 %312, -65536, !dbg !2003
  %314 = or i64 %313, 4097, !dbg !2003
  %315 = add nsw i64 %314, -1, !dbg !2003
  %316 = inttoptr i64 %315 to i32*, !dbg !2004
  %317 = load i32, i32* %316, align 4096, !dbg !2005, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  %318 = inttoptr i64 %12 to i64*, !dbg !2007
  %319 = load i64, i64* %318, align 8, !dbg !2007, !tbaa !1096
  %320 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_mtu_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %319, i32 %317, i16 (%struct.uk_netdev*)* nonnull @uk_netdev_mtu_get) #7, !dbg !2007, !srcloc !2008
  %321 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !2009
  call void asm sideeffect "mov %r11w, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %321, i64 %320) #7, !dbg !2009, !srcloc !2011
  %322 = load i16, i16* %321, align 2, !dbg !2012, !tbaa !1996
  br label %323

; <label>:323:                                    ; preds = %307, %311
  %324 = phi i16 [ %309, %307 ], [ %322, %311 ], !dbg !2012
  %325 = icmp eq i16 %324, 0, !dbg !2012
  br i1 %325, label %326, label %327, !dbg !2015, !prof !996

; <label>:326:                                    ; preds = %323
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !2016
  call void @ukplat_terminate(i32 3) #9, !dbg !2016
  unreachable, !dbg !2016

; <label>:327:                                    ; preds = %323
  call void @netif_set_status_callback(%struct.netif* nonnull %0, void (%struct.netif*)* nonnull @uknetdev_updown) #10, !dbg !2018
  br label %328, !dbg !2019

; <label>:328:                                    ; preds = %248, %225, %201, %178, %147, %115, %120, %88, %85, %327
  %329 = phi i8 [ 0, %327 ], [ -10, %85 ], [ -1, %88 ], [ -12, %120 ], [ -12, %115 ], [ -12, %147 ], [ -12, %178 ], [ -12, %201 ], [ -12, %225 ], [ -12, %248 ], !dbg !2020
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  ret i8 %329, !dbg !2022
}

; Function Attrs: noredzone nounwind
define internal %struct.lwip_netdev_data* @_retrieve_scratchpad(%struct.uk_netdev* nocapture readonly) #0 !dbg !1616 {
  %2 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 8, !dbg !2024
  %3 = bitcast i8** %2 to %struct.lwip_netdev_data**, !dbg !2024
  %4 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2024, !tbaa !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2025
  ret %struct.lwip_netdev_data* %4, !dbg !2025
}

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_state_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local void @uk_netdev_info_get(%struct.uk_netdev*, %struct.uk_netdev_info*) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_configure(%struct.uk_netdev*, %struct.uk_netdev_conf*) #5

; Function Attrs: noredzone nounwind
define internal zeroext i16 @netif_alloc_rxpkts(i8* readonly, %struct.uk_netbuf** nocapture, i16 zeroext) #0 !dbg !2026 {
  %4 = icmp eq i8* %0, null, !dbg !2036
  br i1 %4, label %14, label %5, !dbg !2039, !prof !996

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to %struct.uk_alloc**, !dbg !2040
  %7 = icmp eq i16 %2, 0, !dbg !2045
  br i1 %7, label %31, label %8, !dbg !2046

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds i8, i8* %0, i64 22
  %10 = bitcast i8* %9 to i16*
  %11 = getelementptr inbounds i8, i8* %0, i64 20
  %12 = bitcast i8* %11 to i16*
  %13 = zext i16 %2 to i64, !dbg !2046
  br label %15, !dbg !2046

; <label>:14:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2047
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2047
  unreachable, !dbg !2047

; <label>:15:                                     ; preds = %8, %25
  %16 = phi i64 [ 0, %8 ], [ %26, %25 ]
  %17 = phi i16 [ 0, %8 ], [ %27, %25 ]
  %18 = load %struct.uk_alloc*, %struct.uk_alloc** %6, align 8, !dbg !2040, !tbaa !1732
  %19 = load i16, i16* %10, align 2, !dbg !2049, !tbaa !2050
  %20 = zext i16 %19 to i64, !dbg !2051
  %21 = load i16, i16* %12, align 4, !dbg !2052, !tbaa !2053
  %22 = tail call %struct.uk_netbuf* @lwip_alloc_netbuf(%struct.uk_alloc* %18, i64 2048, i64 %20, i16 zeroext %21) #10, !dbg !2054
  %23 = getelementptr inbounds %struct.uk_netbuf*, %struct.uk_netbuf** %1, i64 %16, !dbg !2055
  store %struct.uk_netbuf* %22, %struct.uk_netbuf** %23, align 8, !dbg !2056, !tbaa !1096
  %24 = icmp eq %struct.uk_netbuf* %22, null, !dbg !2057
  br i1 %24, label %29, label %25, !dbg !2059

; <label>:25:                                     ; preds = %15
  %26 = add nuw nsw i64 %16, 1, !dbg !2060
  %27 = add nuw i16 %17, 1, !dbg !2060
  %28 = icmp ult i64 %26, %13, !dbg !2045
  br i1 %28, label %15, label %31, !dbg !2046, !llvm.loop !2061

; <label>:29:                                     ; preds = %15
  %30 = trunc i64 %16 to i16, !dbg !2059
  br label %31, !dbg !2063

; <label>:31:                                     ; preds = %25, %29, %5
  %32 = phi i16 [ 0, %5 ], [ %30, %29 ], [ %27, %25 ], !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  ret i16 %32, !dbg !2063
}

; Function Attrs: noredzone nounwind
define internal void @uknetdev_input(%struct.uk_netdev*, i16 zeroext, i8*) #0 !dbg !2065 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #7, !dbg !2081, !srcloc !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2100, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2103
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2104
  br i1 %5, label %10, label %6, !dbg !2104

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2105, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2108
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !2104
  br i1 %8, label %10, label %9, !dbg !2109

; <label>:9:                                      ; preds = %6
  tail call void @__uknetdev_input(%struct.uk_netdev* %0, i16 zeroext undef, i8* %2) #10, !dbg !2110
  br label %20, !dbg !2110

; <label>:10:                                     ; preds = %6, %3
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2112, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2116
  %12 = and i64 %11, -65536, !dbg !2118
  %13 = or i64 %12, 4097, !dbg !2118
  %14 = add nsw i64 %13, -1, !dbg !2118
  %15 = inttoptr i64 %14 to i32*, !dbg !2119
  %16 = load i32, i32* %15, align 4096, !dbg !2120, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  %17 = ptrtoint i8* %2 to i64, !dbg !2122
  %18 = ptrtoint %struct.uk_netdev* %0 to i64, !dbg !2122
  %19 = zext i16 %1 to i64, !dbg !2122
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call __uknetdev_input\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %18, i64 %19, i64 %17, i32 %16, void (%struct.uk_netdev*, i16, i8*)* nonnull @__uknetdev_input) #7, !dbg !2122, !srcloc !2123
  br label %20

; <label>:20:                                     ; preds = %9, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  ret void, !dbg !2125
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
define internal signext i8 @uknetdev_output(%struct.netif* readonly, %struct.pbuf* readonly) #0 !dbg !2126 {
  %3 = alloca %struct.lwip_netdev_data*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.lwip_netdev_data** %3 to i8*, !dbg !2154
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2154
  %6 = bitcast i32* %4 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7, !dbg !2155
  %7 = icmp eq %struct.netif* %0, null, !dbg !2156
  br i1 %7, label %8, label %9, !dbg !2159, !prof !996

; <label>:8:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2160
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2160
  unreachable, !dbg !2160

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !2162
  %11 = bitcast i8** %10 to %struct.uk_netdev**, !dbg !2162
  %12 = load %struct.uk_netdev*, %struct.uk_netdev** %11, align 8, !dbg !2162, !tbaa !1394
  %13 = icmp eq %struct.uk_netdev* %12, null, !dbg !2164
  br i1 %13, label %14, label %15, !dbg !2167, !prof !996

; <label>:14:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2168
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2168
  unreachable, !dbg !2168

; <label>:15:                                     ; preds = %9
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2170, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  %17 = icmp ult i64 %16, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2174
  br i1 %17, label %25, label %18, !dbg !2174

; <label>:18:                                     ; preds = %15
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2175, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  %20 = icmp ugt i64 %19, ptrtoint ([0 x i8]* @_end to i64), !dbg !2174
  br i1 %20, label %25, label %21, !dbg !2179

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 8, !dbg !2183
  %23 = bitcast i8** %22 to %struct.lwip_netdev_data**, !dbg !2183
  %24 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %23, align 8, !dbg !2183, !tbaa !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  store %struct.lwip_netdev_data* %24, %struct.lwip_netdev_data** %3, align 8, !dbg !2186, !tbaa !1096
  br label %35, !dbg !2186

; <label>:25:                                     ; preds = %18, %15
  %26 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2187, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  %27 = and i64 %26, -65536, !dbg !2193
  %28 = or i64 %27, 4097, !dbg !2193
  %29 = add nsw i64 %28, -1, !dbg !2193
  %30 = inttoptr i64 %29 to i32*, !dbg !2194
  %31 = load i32, i32* %30, align 4096, !dbg !2195, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  %32 = ptrtoint %struct.uk_netdev* %12 to i64, !dbg !2197
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %32, i32 %31, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #7, !dbg !2197, !srcloc !2198
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %3, i64 %33) #7, !dbg !2199, !srcloc !2203
  %34 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2204, !tbaa !1096
  br label %35

; <label>:35:                                     ; preds = %21, %25
  %36 = phi %struct.lwip_netdev_data* [ %24, %21 ], [ %34, %25 ], !dbg !2204
  %37 = icmp eq %struct.lwip_netdev_data* %36, null, !dbg !2204
  br i1 %37, label %38, label %39, !dbg !2207, !prof !996

; <label>:38:                                     ; preds = %35
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !2208
  call void @ukplat_terminate(i32 3) #9, !dbg !2208
  unreachable, !dbg !2208

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 0, !dbg !2210
  %41 = load %struct.uk_alloc*, %struct.uk_alloc** %40, align 8, !dbg !2210, !tbaa !1732
  %42 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 1, i32 6, !dbg !2211
  %43 = load i16, i16* %42, align 2, !dbg !2211, !tbaa !2050
  %44 = zext i16 %43 to i64, !dbg !2212
  %45 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 1, i32 4, !dbg !2213
  %46 = load i16, i16* %45, align 2, !dbg !2213, !tbaa !2214
  %47 = call %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc* %41, i64 2048, i64 %44, i16 zeroext %46, i64 0, void (%struct.uk_netbuf*)* null) #10, !dbg !2215
  %48 = icmp eq %struct.uk_netbuf* %47, null, !dbg !2217
  br i1 %48, label %138, label %49, !dbg !2219

; <label>:49:                                     ; preds = %39
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !2220
  %51 = load i16, i16* %50, align 8, !dbg !2220, !tbaa !1156
  %52 = zext i16 %51 to i64, !dbg !2220
  %53 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 6, !dbg !2229
  %54 = load i8*, i8** %53, align 8, !dbg !2229, !tbaa !2232
  %55 = icmp eq i8* %54, null, !dbg !2229
  br i1 %55, label %56, label %57, !dbg !2233, !prof !996

; <label>:56:                                     ; preds = %49
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !2234
  call void @ukplat_terminate(i32 3) #9, !dbg !2234
  unreachable, !dbg !2234

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 2, !dbg !2236
  %59 = load i8*, i8** %58, align 8, !dbg !2236, !tbaa !1144
  %60 = icmp eq i8* %59, null, !dbg !2236
  br i1 %60, label %61, label %62, !dbg !2239, !prof !996

; <label>:61:                                     ; preds = %57
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !2240
  call void @ukplat_terminate(i32 3) #9, !dbg !2240
  unreachable, !dbg !2240

; <label>:62:                                     ; preds = %57
  %63 = ptrtoint i8* %54 to i64, !dbg !2242
  %64 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 7, !dbg !2243
  %65 = load i64, i64* %64, align 8, !dbg !2243, !tbaa !2244
  %66 = ptrtoint i8* %59 to i64, !dbg !2245
  %67 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 3, !dbg !2246
  %68 = load i16, i16* %67, align 8, !dbg !2246, !tbaa !1150
  %69 = zext i16 %68 to i64, !dbg !2247
  %70 = sub i64 %63, %66, !dbg !2248
  %71 = add i64 %70, %65, !dbg !2249
  %72 = sub i64 %71, %69, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2251
  %73 = icmp ult i64 %72, %52, !dbg !2220
  br i1 %73, label %74, label %75, !dbg !2252, !prof !996

; <label>:74:                                     ; preds = %62
  call void @uk_netbuf_free_single(%struct.uk_netbuf* nonnull %47) #10, !dbg !2253
  br label %138, !dbg !2255

; <label>:75:                                     ; preds = %62, %75
  %76 = phi %struct.pbuf* [ %88, %75 ], [ %1, %62 ]
  %77 = phi i8* [ %86, %75 ], [ %59, %62 ]
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i64 0, i32 1, !dbg !2258
  %79 = load i8*, i8** %78, align 8, !dbg !2258, !tbaa !1147
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i64 0, i32 3, !dbg !2262
  %81 = load i16, i16* %80, align 2, !dbg !2262, !tbaa !1153
  %82 = zext i16 %81 to i64, !dbg !2263
  %83 = call i8* @memcpy(i8* %77, i8* %79, i64 %82) #10, !dbg !2264
  %84 = load i16, i16* %80, align 2, !dbg !2265, !tbaa !1153
  %85 = zext i16 %84 to i64, !dbg !2266
  %86 = getelementptr inbounds i8, i8* %77, i64 %85, !dbg !2266
  %87 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i64 0, i32 0, !dbg !2267
  %88 = load %struct.pbuf*, %struct.pbuf** %87, align 8, !dbg !2267, !tbaa !2268
  %89 = icmp eq %struct.pbuf* %88, null, !dbg !2269
  br i1 %89, label %90, label %75, !dbg !2270, !llvm.loop !2271

; <label>:90:                                     ; preds = %75
  %91 = load i16, i16* %50, align 8, !dbg !2273, !tbaa !1156
  store i16 %91, i16* %67, align 8, !dbg !2274, !tbaa !1150
  %92 = ptrtoint %struct.uk_netbuf* %47 to i64
  %93 = ptrtoint %struct.uk_netdev* %12 to i64
  %94 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 0
  %95 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 2
  %96 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 5, i64 0
  %97 = bitcast %struct.uk_netdev_tx_queue** %96 to i64*
  br label %98, !dbg !2275

; <label>:98:                                     ; preds = %131, %90
  %99 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2276, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2279
  %100 = icmp ult i64 %99, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2280
  br i1 %100, label %122, label %101, !dbg !2280

; <label>:101:                                    ; preds = %98
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2281, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2284
  %103 = icmp ugt i64 %102, ptrtoint ([0 x i8]* @_end to i64), !dbg !2280
  br i1 %103, label %122, label %104, !dbg !2285

; <label>:104:                                    ; preds = %101
  %105 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)** %94, align 8, !dbg !2298, !tbaa !2301
  %106 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)* %105, null, !dbg !2298
  br i1 %106, label %107, label %108, !dbg !2302, !prof !996

; <label>:107:                                    ; preds = %104
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !2303
  call void @ukplat_terminate(i32 3) #9, !dbg !2303
  unreachable, !dbg !2303

; <label>:108:                                    ; preds = %104
  %109 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %95, align 8, !dbg !2305, !tbaa !1318
  %110 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %109, i64 0, i32 0, !dbg !2305
  %111 = load i32, i32* %110, align 8, !dbg !2305, !tbaa !1319
  %112 = icmp eq i32 %111, 3, !dbg !2305
  br i1 %112, label %114, label %113, !dbg !2308, !prof !1240

; <label>:113:                                    ; preds = %108
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !2309
  call void @ukplat_terminate(i32 3) #9, !dbg !2309
  unreachable, !dbg !2309

; <label>:114:                                    ; preds = %108
  %115 = load i64, i64* %97, align 8, !dbg !2311, !tbaa !1096
  %116 = add i64 %115, 512, !dbg !2311
  %117 = icmp ult i64 %116, 513, !dbg !2311
  br i1 %117, label %118, label %119, !dbg !2314, !prof !996

; <label>:118:                                    ; preds = %114
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !2315
  call void @ukplat_terminate(i32 3) #9, !dbg !2315
  unreachable, !dbg !2315

; <label>:119:                                    ; preds = %114
  %120 = inttoptr i64 %115 to %struct.uk_netdev_tx_queue*, !dbg !2314
  %121 = call i32 %105(%struct.uk_netdev* nonnull %12, %struct.uk_netdev_tx_queue* %120, %struct.uk_netbuf* nonnull %47) #10, !dbg !2317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store i32 %121, i32* %4, align 4, !dbg !2320, !tbaa !1038
  br label %131, !dbg !2320

; <label>:122:                                    ; preds = %101, %98
  %123 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2321, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2325
  %124 = and i64 %123, -65536, !dbg !2327
  %125 = or i64 %124, 4097, !dbg !2327
  %126 = add nsw i64 %125, -1, !dbg !2327
  %127 = inttoptr i64 %126 to i32*, !dbg !2328
  %128 = load i32, i32* %127, align 4096, !dbg !2329, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  %129 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_tx_one\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %93, i64 0, i64 %92, i32 %128, i32 (%struct.uk_netdev*, i16, %struct.uk_netbuf*)* nonnull @uk_netdev_tx_one) #7, !dbg !2331, !srcloc !2332
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %129) #7, !dbg !2333, !srcloc !2336
  %130 = load i32, i32* %4, align 4, !dbg !2337, !tbaa !1038
  br label %131

; <label>:131:                                    ; preds = %119, %122
  %132 = phi i32 [ %121, %119 ], [ %130, %122 ], !dbg !2337
  %133 = and i32 %132, -2147483647, !dbg !2337
  %134 = icmp eq i32 %133, 0, !dbg !2337
  br i1 %134, label %98, label %135, !dbg !2338, !llvm.loop !2339

; <label>:135:                                    ; preds = %131
  %136 = icmp slt i32 %132, 0, !dbg !2341
  br i1 %136, label %137, label %138, !dbg !2343, !prof !996

; <label>:137:                                    ; preds = %135
  call void @uk_netbuf_free_single(%struct.uk_netbuf* nonnull %47) #10, !dbg !2344
  br label %138, !dbg !2346

; <label>:138:                                    ; preds = %135, %39, %137, %74
  %139 = phi i8 [ -1, %74 ], [ -12, %137 ], [ -1, %39 ], [ 0, %135 ], !dbg !2347
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7, !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2348
  ret i8 %139, !dbg !2348
}

; Function Attrs: noredzone
declare dso_local %struct.uk_hwaddr* @uk_netdev_hwaddr_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @uk_netdev_mtu_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local void @netif_set_status_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @uknetdev_updown(%struct.netif*) #0 !dbg !2349 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwip_netdev_data*, align 8
  %4 = bitcast i32* %2 to i8*, !dbg !2392
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !2392
  %5 = bitcast %struct.lwip_netdev_data** %3 to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2393
  %6 = icmp eq %struct.netif* %0, null, !dbg !2394
  br i1 %6, label %7, label %8, !dbg !2397, !prof !996

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2398
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2398
  unreachable, !dbg !2398

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !2400
  %10 = bitcast i8** %9 to %struct.uk_netdev**, !dbg !2400
  %11 = load %struct.uk_netdev*, %struct.uk_netdev** %10, align 8, !dbg !2400, !tbaa !1394
  %12 = icmp eq %struct.uk_netdev* %11, null, !dbg !2402
  br i1 %12, label %13, label %14, !dbg !2405, !prof !996

; <label>:13:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2406
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2406
  unreachable, !dbg !2406

; <label>:14:                                     ; preds = %8
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2408, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %16 = icmp ult i64 %15, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2412
  br i1 %16, label %26, label %17, !dbg !2412

; <label>:17:                                     ; preds = %14
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2413, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  %19 = icmp ugt i64 %18, ptrtoint ([0 x i8]* @_end to i64), !dbg !2412
  br i1 %19, label %26, label %20, !dbg !2417

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 8, !dbg !2421
  %22 = bitcast i8** %21 to i64*, !dbg !2421
  %23 = load i64, i64* %22, align 8, !dbg !2421, !tbaa !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  %24 = bitcast %struct.lwip_netdev_data** %3 to i64*, !dbg !2424
  store i64 %23, i64* %24, align 8, !dbg !2424, !tbaa !1096
  %25 = inttoptr i64 %23 to %struct.lwip_netdev_data*, !dbg !2424
  br label %36, !dbg !2424

; <label>:26:                                     ; preds = %17, %14
  %27 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2425, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2429
  %28 = and i64 %27, -65536, !dbg !2431
  %29 = or i64 %28, 4097, !dbg !2431
  %30 = add nsw i64 %29, -1, !dbg !2431
  %31 = inttoptr i64 %30 to i32*, !dbg !2432
  %32 = load i32, i32* %31, align 4096, !dbg !2433, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2434
  %33 = ptrtoint %struct.uk_netdev* %11 to i64, !dbg !2435
  %34 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %33, i32 %32, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #7, !dbg !2435, !srcloc !2436
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %3, i64 %34) #7, !dbg !2437, !srcloc !2441
  %35 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2442, !tbaa !1096
  br label %36

; <label>:36:                                     ; preds = %26, %20
  %37 = phi %struct.lwip_netdev_data* [ %35, %26 ], [ %25, %20 ], !dbg !2442
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !2445
  %39 = load i8, i8* %38, align 1, !dbg !2445, !tbaa !1935
  %40 = and i8 %39, 1, !dbg !2446
  %41 = icmp eq i8 %40, 0, !dbg !2446
  %42 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %37, i64 0, i32 1, i32 7, !dbg !2442
  %43 = load i32, i32* %42, align 8, !dbg !2442, !tbaa !2447
  %44 = and i32 %43, 1, !dbg !2442
  %45 = icmp ne i32 %44, 0, !dbg !2442
  br i1 %41, label %123, label %46, !dbg !2448

; <label>:46:                                     ; preds = %36
  %47 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2449, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2452
  %48 = icmp uge i64 %47, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2453
  br i1 %45, label %49, label %69, !dbg !2454

; <label>:49:                                     ; preds = %46
  br i1 %48, label %50, label %55, !dbg !2455

; <label>:50:                                     ; preds = %49
  %51 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2456, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2459
  %52 = icmp ugt i64 %51, ptrtoint ([0 x i8]* @_end to i64), !dbg !2455
  br i1 %52, label %55, label %53, !dbg !2460

; <label>:53:                                     ; preds = %50
  %54 = call i32 @uk_netdev_rxq_intr_enable(%struct.uk_netdev* nonnull %11, i16 zeroext 0) #8, !dbg !2461
  store i32 %54, i32* %2, align 4, !dbg !2461, !tbaa !1038
  br label %65, !dbg !2461

; <label>:55:                                     ; preds = %50, %49
  %56 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2464, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  %57 = and i64 %56, -65536, !dbg !2470
  %58 = or i64 %57, 4097, !dbg !2470
  %59 = add nsw i64 %58, -1, !dbg !2470
  %60 = inttoptr i64 %59 to i32*, !dbg !2471
  %61 = load i32, i32* %60, align 4096, !dbg !2472, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  %62 = ptrtoint %struct.uk_netdev* %11 to i64, !dbg !2474
  %63 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rxq_intr_enable\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %62, i64 0, i32 %61, i32 (%struct.uk_netdev*, i16)* nonnull @uk_netdev_rxq_intr_enable) #7, !dbg !2474, !srcloc !2475
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %63) #7, !dbg !2476, !srcloc !2479
  %64 = load i32, i32* %2, align 4, !dbg !2480, !tbaa !1038
  br label %65

; <label>:65:                                     ; preds = %53, %55
  %66 = phi i32 [ %54, %53 ], [ %64, %55 ], !dbg !2480
  %67 = icmp eq i32 %66, 1, !dbg !2482
  br i1 %67, label %68, label %154, !dbg !2483

; <label>:68:                                     ; preds = %65
  call void @uknetdev_poll(%struct.netif* nonnull %0) #8, !dbg !2484
  br label %154, !dbg !2486

; <label>:69:                                     ; preds = %46
  br i1 %48, label %70, label %77, !dbg !2487

; <label>:70:                                     ; preds = %69
  %71 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2488, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  %72 = icmp ugt i64 %71, ptrtoint ([0 x i8]* @_end to i64), !dbg !2487
  br i1 %72, label %77, label %73, !dbg !2492

; <label>:73:                                     ; preds = %70
  %74 = call %struct.uk_sched* @uk_sched_get_default() #10, !dbg !2493
  %75 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2493, !tbaa !1096
  %76 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %75, i64 0, i32 4, !dbg !2493
  store %struct.uk_sched* %74, %struct.uk_sched** %76, align 8, !dbg !2493, !tbaa !2495
  br label %90, !dbg !2493

; <label>:77:                                     ; preds = %70, %69
  %78 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2496, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2500
  %79 = and i64 %78, -65536, !dbg !2502
  %80 = or i64 %79, 4097, !dbg !2502
  %81 = add nsw i64 %80, -1, !dbg !2502
  %82 = inttoptr i64 %81 to i32*, !dbg !2503
  %83 = load i32, i32* %82, align 4096, !dbg !2504, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %84 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_get_default\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %83, %struct.uk_sched* ()* nonnull @uk_sched_get_default) #7, !dbg !2506, !srcloc !2507
  %85 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2508, !tbaa !1096
  %86 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %85, i64 0, i32 4, !dbg !2508
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_sched** nonnull %86, i64 %84) #7, !dbg !2508, !srcloc !2512
  %87 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2513, !tbaa !1096
  %88 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %87, i64 0, i32 4
  %89 = load %struct.uk_sched*, %struct.uk_sched** %88, align 8, !dbg !2513, !tbaa !2495
  br label %90

; <label>:90:                                     ; preds = %73, %77
  %91 = phi %struct.uk_sched* [ %74, %73 ], [ %89, %77 ], !dbg !2513
  %92 = icmp eq %struct.uk_sched* %91, null, !dbg !2513
  br i1 %92, label %93, label %94, !dbg !2516, !prof !996

; <label>:93:                                     ; preds = %90
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !2517
  call void @ukplat_terminate(i32 3) #9, !dbg !2517
  unreachable, !dbg !2517

; <label>:94:                                     ; preds = %90
  %95 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2519, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  %96 = icmp ult i64 %95, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2523
  br i1 %96, label %108, label %97, !dbg !2523

; <label>:97:                                     ; preds = %94
  %98 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2524, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  %99 = icmp ugt i64 %98, ptrtoint ([0 x i8]* @_end to i64), !dbg !2523
  br i1 %99, label %108, label %100, !dbg !2528

; <label>:100:                                    ; preds = %97
  %101 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2529, !tbaa !1096
  %102 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %101, i64 0, i32 4, !dbg !2529
  %103 = load %struct.uk_sched*, %struct.uk_sched** %102, align 8, !dbg !2529, !tbaa !2495
  %104 = bitcast %struct.netif* %0 to i8*, !dbg !2529
  %105 = call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %103, i8* null, %struct.uk_thread_attr* null, void (i8*)* nonnull @_poll_netif, i8* %104) #10, !dbg !2529
  %106 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2529, !tbaa !1096
  %107 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %106, i64 0, i32 2, !dbg !2529
  store %struct.uk_thread* %105, %struct.uk_thread** %107, align 8, !dbg !2529, !tbaa !2531
  br label %154, !dbg !2529

; <label>:108:                                    ; preds = %97, %94
  %109 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2532, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  %110 = and i64 %109, -65536, !dbg !2538
  %111 = or i64 %110, 4097, !dbg !2538
  %112 = add nsw i64 %111, -1, !dbg !2538
  %113 = inttoptr i64 %112 to i32*, !dbg !2539
  %114 = load i32, i32* %113, align 4096, !dbg !2540, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2541
  %115 = ptrtoint %struct.netif* %0 to i64, !dbg !2542
  %116 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2542, !tbaa !1096
  %117 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 4, !dbg !2542
  %118 = bitcast %struct.uk_sched** %117 to i64*, !dbg !2542
  %119 = load i64, i64* %118, align 8, !dbg !2542, !tbaa !2495
  %120 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_thread_create\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %119, i64 0, i64 0, i64 ptrtoint (void (i8*)* @_poll_netif to i64), i64 %115, i32 %114, %struct.uk_thread* (%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*)* nonnull @uk_sched_thread_create) #7, !dbg !2542, !srcloc !2543
  %121 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2544, !tbaa !1096
  %122 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %121, i64 0, i32 2, !dbg !2544
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_thread** nonnull %122, i64 %120) #7, !dbg !2544, !srcloc !2548
  br label %154

; <label>:123:                                    ; preds = %36
  br i1 %45, label %124, label %154, !dbg !2549

; <label>:124:                                    ; preds = %123
  %125 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 3, !dbg !2558
  %126 = load %struct.uk_netdev_ops*, %struct.uk_netdev_ops** %125, align 8, !dbg !2558, !tbaa !2561
  %127 = icmp eq %struct.uk_netdev_ops* %126, null, !dbg !2558
  br i1 %127, label %128, label %129, !dbg !2562, !prof !996

; <label>:128:                                    ; preds = %124
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !2563
  call void @ukplat_terminate(i32 3) #9, !dbg !2563
  unreachable, !dbg !2563

; <label>:129:                                    ; preds = %124
  %130 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 2, !dbg !2565
  %131 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %130, align 8, !dbg !2565, !tbaa !1318
  %132 = icmp eq %struct.uk_netdev_data* %131, null, !dbg !2565
  br i1 %132, label %133, label %134, !dbg !2568, !prof !996

; <label>:133:                                    ; preds = %129
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !2569
  call void @ukplat_terminate(i32 3) #9, !dbg !2569
  unreachable, !dbg !2569

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %131, i64 0, i32 0, !dbg !2571
  %136 = load i32, i32* %135, align 8, !dbg !2571, !tbaa !1319
  %137 = icmp eq i32 %136, 3, !dbg !2571
  br i1 %137, label %139, label %138, !dbg !2574, !prof !1240

; <label>:138:                                    ; preds = %134
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !2575
  call void @ukplat_terminate(i32 3) #9, !dbg !2575
  unreachable, !dbg !2575

; <label>:139:                                    ; preds = %134
  %140 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 4, i64 0, !dbg !2577
  %141 = bitcast %struct.uk_netdev_rx_queue** %140 to i64*, !dbg !2577
  %142 = load i64, i64* %141, align 8, !dbg !2577, !tbaa !1096
  %143 = add i64 %142, 512, !dbg !2577
  %144 = icmp ult i64 %143, 513, !dbg !2577
  %145 = inttoptr i64 %142 to %struct.uk_netdev_rx_queue*, !dbg !2580
  br i1 %144, label %146, label %147, !dbg !2580, !prof !996

; <label>:146:                                    ; preds = %139
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2581
  call void @ukplat_terminate(i32 3) #9, !dbg !2581
  unreachable, !dbg !2581

; <label>:147:                                    ; preds = %139
  %148 = getelementptr inbounds %struct.uk_netdev_ops, %struct.uk_netdev_ops* %126, i64 0, i32 1, !dbg !2583
  %149 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)** %148, align 8, !dbg !2583, !tbaa !2585
  %150 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)* %149, null, !dbg !2583
  br i1 %150, label %153, label %151, !dbg !2587, !prof !996

; <label>:151:                                    ; preds = %147
  %152 = call i32 %149(%struct.uk_netdev* nonnull %11, %struct.uk_netdev_rx_queue* %145) #10, !dbg !2588
  br label %153, !dbg !2589

; <label>:153:                                    ; preds = %147, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2590
  br label %154, !dbg !2591

; <label>:154:                                    ; preds = %123, %153, %68, %65, %108, %100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !2592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2592
  ret void, !dbg !2592
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @uknetdev_addif(%struct.uk_netdev*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !884 {
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2597, !tbaa !1096
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !2607
  br i1 %6, label %7, label %9, !dbg !2609, !prof !996

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #10, !dbg !2610
  store i32 12, i32* %8, align 4, !dbg !2612, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  br label %28, !dbg !2614

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 1, !dbg !2624
  %11 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %10, align 8, !dbg !2624, !tbaa !1096
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 1, i64 280) #10, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  %13 = icmp eq i8* %12, null, !dbg !2627
  br i1 %13, label %28, label %14, !dbg !2614

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %12 to %struct.netif*, !dbg !2629
  %16 = bitcast %struct.uk_netdev* %0 to i8*, !dbg !2631
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2632, !srcloc !2634
  %17 = load volatile i8*, i8** @uknetdev_addif.pethernet_input, align 8, !dbg !2632, !tbaa !1096
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2635, !srcloc !2636
  %18 = bitcast i8* %17 to i8 (%struct.pbuf*, %struct.netif*)*, !dbg !2637
  %19 = tail call %struct.netif* @netif_add(%struct.netif* %15, %struct.ip4_addr* %1, %struct.ip4_addr* %2, %struct.ip4_addr* %3, i8* %16, i8 (%struct.netif*)* nonnull @uknetdev_init, i8 (%struct.pbuf*, %struct.netif*)* %18) #10, !dbg !2638
  %20 = getelementptr inbounds i8, i8* %12, i64 184, !dbg !2640
  %21 = bitcast i8* %20 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !2640
  %22 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %21, align 8, !dbg !2640, !tbaa !1008
  %23 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %22, null, !dbg !2640
  br i1 %23, label %24, label %25, !dbg !2643, !prof !996

; <label>:24:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2644
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2644
  unreachable, !dbg !2644

; <label>:25:                                     ; preds = %14
  %26 = icmp eq %struct.netif* %19, null, !dbg !2646
  br i1 %26, label %27, label %28, !dbg !2648

; <label>:27:                                     ; preds = %25
  tail call void @mem_free(i8* nonnull %12) #10, !dbg !2649
  br label %28, !dbg !2651

; <label>:28:                                     ; preds = %7, %25, %9, %27
  %29 = phi %struct.netif* [ null, %27 ], [ null, %9 ], [ %19, %25 ], [ null, %7 ], !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  ret %struct.netif* %29, !dbg !2653
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcpip_input(%struct.pbuf*, %struct.netif*) #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_add(%struct.netif*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @mem_free(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noredzone
declare dso_local %struct.uk_netbuf* @lwip_alloc_netbuf(%struct.uk_alloc*, i64, i64, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc*, i64, i64, i16 zeroext, i64, void (%struct.uk_netbuf*)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_tx_one(%struct.uk_netdev*, i16 zeroext, %struct.uk_netbuf*) #3 !dbg !2287 {
  %4 = icmp eq %struct.uk_netdev* %0, null, !dbg !2657
  br i1 %4, label %5, label %6, !dbg !2660, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2661
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2661
  unreachable, !dbg !2661

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 0, !dbg !2663
  %8 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)** %7, align 8, !dbg !2663, !tbaa !2301
  %9 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)* %8, null, !dbg !2663
  br i1 %9, label %10, label %11, !dbg !2664, !prof !996

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !2665
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2665
  unreachable, !dbg !2665

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i16 %1, 0, !dbg !2666
  br i1 %12, label %14, label %13, !dbg !2669, !prof !1240

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2670
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2670
  unreachable, !dbg !2670

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !2672
  %16 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %15, align 8, !dbg !2672, !tbaa !1318
  %17 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %16, i64 0, i32 0, !dbg !2672
  %18 = load i32, i32* %17, align 8, !dbg !2672, !tbaa !1319
  %19 = icmp eq i32 %18, 3, !dbg !2672
  br i1 %19, label %21, label %20, !dbg !2673, !prof !1240

; <label>:20:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2674
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2674
  unreachable, !dbg !2674

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 5, i64 0, !dbg !2675
  %23 = bitcast %struct.uk_netdev_tx_queue** %22 to i64*, !dbg !2675
  %24 = load i64, i64* %23, align 8, !dbg !2675, !tbaa !1096
  %25 = add i64 %24, 512, !dbg !2675
  %26 = icmp ult i64 %25, 513, !dbg !2675
  %27 = inttoptr i64 %24 to %struct.uk_netdev_tx_queue*, !dbg !2676
  br i1 %26, label %28, label %29, !dbg !2676, !prof !996

; <label>:28:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !2677
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2677
  unreachable, !dbg !2677

; <label>:29:                                     ; preds = %21
  %30 = icmp eq %struct.uk_netbuf* %2, null, !dbg !2678
  br i1 %30, label %31, label %32, !dbg !2681, !prof !996

; <label>:31:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !2682
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2682
  unreachable, !dbg !2682

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 %8(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_tx_queue* %27, %struct.uk_netbuf* nonnull %2) #10, !dbg !2684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2685
  ret i32 %33, !dbg !2685
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_rxq_intr_enable(%struct.uk_netdev*, i16 zeroext) #3 !dbg !2686 {
  %3 = icmp eq %struct.uk_netdev* %0, null, !dbg !2692
  br i1 %3, label %4, label %5, !dbg !2695, !prof !996

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2696
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2696
  unreachable, !dbg !2696

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 3, !dbg !2698
  %7 = load %struct.uk_netdev_ops*, %struct.uk_netdev_ops** %6, align 8, !dbg !2698, !tbaa !2561
  %8 = icmp eq %struct.uk_netdev_ops* %7, null, !dbg !2698
  br i1 %8, label %9, label %10, !dbg !2701, !prof !996

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !2702
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2702
  unreachable, !dbg !2702

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !2704
  %12 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %11, align 8, !dbg !2704, !tbaa !1318
  %13 = icmp eq %struct.uk_netdev_data* %12, null, !dbg !2704
  br i1 %13, label %14, label %15, !dbg !2707, !prof !996

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !2708
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2708
  unreachable, !dbg !2708

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %12, i64 0, i32 0, !dbg !2710
  %17 = load i32, i32* %16, align 8, !dbg !2710, !tbaa !1319
  %18 = icmp eq i32 %17, 3, !dbg !2710
  br i1 %18, label %20, label %19, !dbg !2713, !prof !1240

; <label>:19:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2714
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2714
  unreachable, !dbg !2714

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i16 %1, 0, !dbg !2716
  br i1 %21, label %23, label %22, !dbg !2719, !prof !1240

; <label>:22:                                     ; preds = %20
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2720
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2720
  unreachable, !dbg !2720

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 4, i64 0, !dbg !2722
  %25 = bitcast %struct.uk_netdev_rx_queue** %24 to i64*, !dbg !2722
  %26 = load i64, i64* %25, align 8, !dbg !2722, !tbaa !1096
  %27 = add i64 %26, 512, !dbg !2722
  %28 = icmp ult i64 %27, 513, !dbg !2722
  %29 = inttoptr i64 %26 to %struct.uk_netdev_rx_queue*, !dbg !2725
  br i1 %28, label %30, label %31, !dbg !2725, !prof !996

; <label>:30:                                     ; preds = %23
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !2726
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2726
  unreachable, !dbg !2726

; <label>:31:                                     ; preds = %23
  %32 = getelementptr inbounds %struct.uk_netdev_ops, %struct.uk_netdev_ops* %7, i64 0, i32 0, !dbg !2728
  %33 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)** %32, align 8, !dbg !2728, !tbaa !2730
  %34 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)* %33, null, !dbg !2728
  br i1 %34, label %37, label %35, !dbg !2731, !prof !996

; <label>:35:                                     ; preds = %31
  %36 = tail call i32 %33(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_rx_queue* %29) #10, !dbg !2732
  br label %37, !dbg !2733

; <label>:37:                                     ; preds = %31, %35
  %38 = phi i32 [ %36, %35 ], [ -134, %31 ], !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  ret i32 %38, !dbg !2735
}

; Function Attrs: noredzone
declare dso_local %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*) #5

; Function Attrs: noredzone nounwind
define internal void @_poll_netif(i8*) #0 !dbg !2736 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #7, !dbg !2742, !srcloc !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2755, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2759
  br i1 %3, label %8, label %4, !dbg !2759

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2760, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !2759
  br i1 %6, label %8, label %7, !dbg !2764

; <label>:7:                                      ; preds = %4
  tail call void @___poll_netif(i8* %0) #10, !dbg !2765
  unreachable

; <label>:8:                                      ; preds = %1, %4
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2767, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  %10 = and i64 %9, -65536, !dbg !2773
  %11 = or i64 %10, 4097, !dbg !2773
  %12 = add nsw i64 %11, -1, !dbg !2773
  %13 = inttoptr i64 %12 to i32*, !dbg !2774
  %14 = load i32, i32* %13, align 4096, !dbg !2775, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2776
  %15 = ptrtoint i8* %0 to i64, !dbg !2777
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ___poll_netif\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %15, i32 %14, void (i8*)* nonnull @___poll_netif) #7, !dbg !2777, !srcloc !2778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  ret void, !dbg !2780
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind }

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
!1026 = !{i32 443592}
!1027 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1023)
!1028 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1023)
!1029 = !DILocation(line: 238, column: 3, scope: !942)
!1030 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 238, column: 3, scope: !942)
!1032 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1031)
!1033 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1031)
!1034 = !DILocation(line: 238, column: 3, scope: !943)
!1035 = !DILocation(line: 238, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !942, file: !3, line: 238, column: 3)
!1037 = !DILocation(line: 229, column: 6, scope: !2)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"int", !1011, i64 0}
!1040 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1048)
!1042 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1043, file: !1043, line: 47, type: !1044, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1046)
!1043 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!15}
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "sp", scope: !1042, file: !1043, line: 49, type: !47)
!1048 = distinct !DILocation(line: 238, column: 3, scope: !939)
!1049 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1041)
!1050 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1041)
!1051 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1048)
!1052 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1048)
!1053 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1048)
!1054 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1048)
!1055 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1048)
!1056 = !DILocation(line: 238, column: 3, scope: !939)
!1057 = !{i32 -2146006511, i32 -2146006498, i32 -2146006473, i32 -2146006449, i32 -2146006424, i32 -2146006349, i32 -2146006324, i32 -2146006180, i32 -2146002954, i32 -2146002865, i32 -2146002744, i32 -2146002649, i32 -2146002548, i32 -2146002521, i32 -2146002438, i32 -2146002349, i32 -2146002228, i32 -2146002128, i32 -2146002022, i32 -2146001914, i32 -2146005850, i32 -2146005797, i32 -2146005766, i32 -2146005735, i32 -2146005714, i32 -2146005692, i32 -2146005643, i32 -2146005622, i32 -2146005519, i32 -2146001831, i32 -2146001742, i32 -2146001621, i32 -2146001522, i32 -2146001416, i32 -2146001314, i32 -2146001281, i32 -2146001208, i32 -2146001140, i32 -2146005329, i32 -2146005270, i32 -2146005217, i32 -2146005186, i32 -2146005155, i32 -2146005134, i32 -2146005112, i32 -2146005063, i32 -2146005042, i32 -2146001088, i32 -2146000999, i32 -2146000878, i32 -2146000779, i32 -2146000673, i32 -2146000571, i32 -2146000538, i32 -2146000455, i32 -2146000366, i32 -2146000245, i32 -2146000145, i32 -2146000119, i32 -2146000016, i32 -2145999990, i32 -2146004784, i32 -2146004717, i32 -2146004692, i32 -2146004628, i32 -2146004546, i32 -2146004523, i32 -2146004498, i32 -2146004473}
!1058 = !DILocation(line: 238, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 238, column: 3)
!1060 = distinct !DILexicalBlock(scope: !939, file: !3, line: 238, column: 3)
!1061 = !{i32 -2146003435, i32 -2146003418}
!1062 = !DILocation(line: 252, column: 7, scope: !954)
!1063 = !DILocation(line: 252, column: 7, scope: !944)
!1064 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 258, column: 4, scope: !951)
!1066 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1065)
!1067 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1065)
!1068 = !DILocation(line: 258, column: 4, scope: !951)
!1069 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 258, column: 4, scope: !951)
!1071 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1070)
!1072 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1070)
!1073 = !DILocation(line: 258, column: 4, scope: !952)
!1074 = !DILocation(line: 258, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !951, file: !3, line: 258, column: 4)
!1076 = !{!1011, !1011, i64 0}
!1077 = !{!1009, !1011, i64 264}
!1078 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 258, column: 4, scope: !948)
!1081 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1079)
!1082 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1079)
!1083 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1080)
!1084 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1080)
!1085 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1080)
!1086 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1080)
!1087 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1080)
!1088 = !DILocation(line: 258, column: 4, scope: !948)
!1089 = !{i32 -2145996566, i32 -2145996553, i32 -2145996528, i32 -2145996504, i32 -2145996479, i32 -2145996404, i32 -2145996379, i32 -2145996235, i32 -2145996210, i32 -2145993405, i32 -2145993316, i32 -2145993195, i32 -2145993100, i32 -2145992999, i32 -2145992972, i32 -2145992889, i32 -2145992800, i32 -2145992679, i32 -2145992579, i32 -2145992473, i32 -2145992365, i32 -2145995834, i32 -2145995781, i32 -2145995750, i32 -2145995719, i32 -2145995698, i32 -2145995676, i32 -2145995627, i32 -2145995606, i32 -2145995503, i32 -2145995471, i32 -2145992282, i32 -2145992193, i32 -2145992072, i32 -2145991973, i32 -2145991867, i32 -2145991765, i32 -2145991732, i32 -2145991659, i32 -2145991591, i32 -2145995211, i32 -2145995158, i32 -2145995127, i32 -2145995096, i32 -2145995075, i32 -2145995053, i32 -2145995004, i32 -2145994983, i32 -2145991545, i32 -2145991456, i32 -2145991335, i32 -2145991236, i32 -2145991130, i32 -2145991028, i32 -2145990995, i32 -2145990912, i32 -2145990823, i32 -2145990702, i32 -2145990602, i32 -2145990576, i32 -2145990473, i32 -2145990447, i32 -2145994725, i32 -2145994700, i32 -2145994633, i32 -2145994608, i32 -2145994544, i32 -2145994428, i32 -2145994403, i32 -2145994378}
!1090 = !DILocation(line: 262, column: 4, scope: !953)
!1091 = !DILocation(line: 263, column: 4, scope: !953)
!1092 = !DILocation(line: 265, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !944, file: !3, line: 265, column: 7)
!1094 = !DILocation(line: 265, column: 7, scope: !944)
!1095 = !DILocation(line: 276, column: 28, scope: !944)
!1096 = !{!1010, !1010, i64 0}
!1097 = !DILocalVariable(name: "b", arg: 1, scope: !1098, file: !849, line: 69, type: !18)
!1098 = distinct !DISubprogram(name: "lwip_netbuf_to_pbuf", scope: !849, file: !849, line: 69, type: !1099, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!779, !18}
!1101 = !{!1097, !1102}
!1102 = !DILocalVariable(name: "np", scope: !1098, file: !849, line: 71, type: !847)
!1103 = !DILocation(line: 69, column: 66, scope: !1098, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 276, column: 7, scope: !944)
!1105 = !DILocation(line: 73, column: 2, scope: !1106, inlinedAt: !1104)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !849, line: 73, column: 2)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !849, line: 73, column: 2)
!1108 = !DILocation(line: 73, column: 2, scope: !1107, inlinedAt: !1104)
!1109 = !DILocation(line: 73, column: 2, scope: !1110, inlinedAt: !1104)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !849, line: 73, column: 2)
!1111 = !DILocalVariable(name: "m", arg: 1, scope: !1112, file: !20, line: 337, type: !18)
!1112 = distinct !DISubprogram(name: "uk_netbuf_get_priv", scope: !20, file: !20, line: 337, type: !1113, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!25, !18}
!1115 = !{!1111}
!1116 = !DILocation(line: 337, column: 58, scope: !1112, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 74, column: 31, scope: !1098, inlinedAt: !1104)
!1118 = !DILocation(line: 341, column: 14, scope: !1112, inlinedAt: !1117)
!1119 = !{!1120, !1010, i64 32}
!1120 = !{!"uk_netbuf", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1014, i64 24, !1121, i64 28, !1010, i64 32, !1010, i64 40, !1122, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72}
!1121 = !{!"", !1039, i64 0}
!1122 = !{!"long", !1011, i64 0}
!1123 = !DILocation(line: 341, column: 2, scope: !1112, inlinedAt: !1117)
!1124 = !DILocation(line: 75, column: 2, scope: !1125, inlinedAt: !1104)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !849, line: 75, column: 2)
!1126 = distinct !DILexicalBlock(scope: !1098, file: !849, line: 75, column: 2)
!1127 = !DILocation(line: 75, column: 2, scope: !1126, inlinedAt: !1104)
!1128 = !DILocation(line: 75, column: 2, scope: !1129, inlinedAt: !1104)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !849, line: 75, column: 2)
!1130 = !DILocation(line: 71, column: 23, scope: !1098, inlinedAt: !1104)
!1131 = !DILocation(line: 82, column: 2, scope: !1132, inlinedAt: !1104)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !849, line: 82, column: 2)
!1133 = distinct !DILexicalBlock(scope: !1098, file: !849, line: 82, column: 2)
!1134 = !{!1135, !1011, i64 21}
!1135 = !{!"_netbuf_pbuf", !1136, i64 0, !1010, i64 32}
!1136 = !{!"pbuf_custom", !1137, i64 0, !1010, i64 24}
!1137 = !{!"pbuf", !1010, i64 0, !1010, i64 8, !1014, i64 16, !1014, i64 18, !1011, i64 20, !1011, i64 21, !1011, i64 22, !1011, i64 23}
!1138 = !DILocation(line: 82, column: 2, scope: !1133, inlinedAt: !1104)
!1139 = !DILocation(line: 82, column: 2, scope: !1140, inlinedAt: !1104)
!1140 = distinct !DILexicalBlock(scope: !1132, file: !849, line: 82, column: 2)
!1141 = !DILocation(line: 84, column: 2, scope: !1098, inlinedAt: !1104)
!1142 = !DILocation(line: 227, column: 15, scope: !2)
!1143 = !DILocation(line: 277, column: 28, scope: !944)
!1144 = !{!1120, !1010, i64 16}
!1145 = !DILocation(line: 277, column: 6, scope: !944)
!1146 = !DILocation(line: 277, column: 14, scope: !944)
!1147 = !{!1137, !1010, i64 8}
!1148 = !DILocation(line: 278, column: 26, scope: !944)
!1149 = !DILocation(line: 278, column: 37, scope: !944)
!1150 = !{!1120, !1014, i64 24}
!1151 = !DILocation(line: 278, column: 19, scope: !944)
!1152 = !DILocation(line: 278, column: 23, scope: !944)
!1153 = !{!1137, !1014, i64 18}
!1154 = !DILocation(line: 278, column: 6, scope: !944)
!1155 = !DILocation(line: 278, column: 14, scope: !944)
!1156 = !{!1137, !1014, i64 16}
!1157 = !DILocation(line: 279, column: 13, scope: !944)
!1158 = !DILocation(line: 279, column: 9, scope: !944)
!1159 = !DILocation(line: 228, column: 8, scope: !2)
!1160 = !DILocation(line: 280, column: 7, scope: !944)
!1161 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!1162 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 293, column: 5, scope: !962)
!1164 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1163)
!1165 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1163)
!1166 = !DILocation(line: 293, column: 5, scope: !962)
!1167 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 293, column: 5, scope: !962)
!1169 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1168)
!1170 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1168)
!1171 = !DILocation(line: 293, column: 5, scope: !963)
!1172 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 154, column: 21, scope: !1174, inlinedAt: !1180)
!1174 = distinct !DISubprogram(name: "uk_thread_current", scope: !160, file: !160, line: 151, type: !1175, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!158}
!1177 = !{!1178, !1179}
!1178 = !DILocalVariable(name: "current", scope: !1174, file: !160, line: 153, type: !174)
!1179 = !DILocalVariable(name: "sp", scope: !1174, file: !160, line: 154, type: !47)
!1180 = distinct !DILocation(line: 117, column: 30, scope: !1181, inlinedAt: !1185)
!1181 = distinct !DISubprogram(name: "uk_sched_yield", scope: !188, file: !188, line: 114, type: !459, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1182)
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "s", scope: !1181, file: !188, line: 116, type: !186)
!1184 = !DILocalVariable(name: "current", scope: !1181, file: !188, line: 117, type: !158)
!1185 = distinct !DILocation(line: 293, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !962, file: !3, line: 293, column: 5)
!1187 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1173)
!1188 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1173)
!1189 = !DILocation(line: 154, column: 16, scope: !1174, inlinedAt: !1180)
!1190 = !DILocation(line: 156, column: 38, scope: !1174, inlinedAt: !1180)
!1191 = !DILocation(line: 156, column: 12, scope: !1174, inlinedAt: !1180)
!1192 = !DILocation(line: 153, column: 21, scope: !1174, inlinedAt: !1180)
!1193 = !DILocation(line: 158, column: 9, scope: !1174, inlinedAt: !1180)
!1194 = !DILocation(line: 158, column: 2, scope: !1174, inlinedAt: !1180)
!1195 = !DILocation(line: 117, column: 20, scope: !1181, inlinedAt: !1185)
!1196 = !DILocation(line: 119, column: 2, scope: !1197, inlinedAt: !1185)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !188, line: 119, column: 2)
!1198 = distinct !DILexicalBlock(scope: !1181, file: !188, line: 119, column: 2)
!1199 = !DILocation(line: 119, column: 2, scope: !1198, inlinedAt: !1185)
!1200 = !DILocation(line: 119, column: 2, scope: !1201, inlinedAt: !1185)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !188, line: 119, column: 2)
!1202 = !DILocation(line: 121, column: 15, scope: !1181, inlinedAt: !1185)
!1203 = !{!1204, !1010, i64 88}
!1204 = !{!"uk_thread", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1205, i64 32, !1039, i64 48, !1122, i64 56, !1206, i64 64, !1207, i64 72, !1010, i64 88, !1010, i64 96, !1039, i64 104, !1010, i64 112, !1010, i64 120}
!1205 = !{!"", !1010, i64 0, !1010, i64 8}
!1206 = !{!"_Bool", !1011, i64 0}
!1207 = !{!"uk_waitq", !1010, i64 0, !1010, i64 8}
!1208 = !DILocation(line: 116, column: 19, scope: !1181, inlinedAt: !1185)
!1209 = !DILocation(line: 122, column: 2, scope: !1210, inlinedAt: !1185)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !188, line: 122, column: 2)
!1211 = distinct !DILexicalBlock(scope: !1181, file: !188, line: 122, column: 2)
!1212 = !DILocation(line: 122, column: 2, scope: !1211, inlinedAt: !1185)
!1213 = !DILocation(line: 122, column: 2, scope: !1214, inlinedAt: !1185)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !188, line: 122, column: 2)
!1215 = !DILocation(line: 123, column: 5, scope: !1181, inlinedAt: !1185)
!1216 = !{!1217, !1010, i64 0}
!1217 = !{!"uk_sched", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1206, i64 72, !1204, i64 80, !1218, i64 208, !1219, i64 224, !1010, i64 248, !1010, i64 256, !1010, i64 264}
!1218 = !{!"uk_thread_list", !1010, i64 0, !1010, i64 8}
!1219 = !{!"ukplat_ctx_callbacks", !1010, i64 0, !1010, i64 8, !1010, i64 16}
!1220 = !DILocation(line: 123, column: 2, scope: !1181, inlinedAt: !1185)
!1221 = !DILocation(line: 124, column: 1, scope: !1181, inlinedAt: !1185)
!1222 = !DILocation(line: 293, column: 5, scope: !1186)
!1223 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 293, column: 5, scope: !959)
!1226 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1224)
!1227 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1224)
!1228 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1225)
!1229 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1225)
!1230 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1225)
!1231 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1225)
!1232 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1225)
!1233 = !DILocation(line: 293, column: 5, scope: !959)
!1234 = !{i32 -2145988393, i32 -2145988380, i32 -2145988355, i32 -2145988331, i32 -2145988306, i32 -2145988231, i32 -2145988206, i32 -2145988062, i32 -2145985916, i32 -2145985827, i32 -2145985706, i32 -2145985611, i32 -2145985510, i32 -2145985483, i32 -2145985400, i32 -2145985311, i32 -2145985190, i32 -2145985090, i32 -2145984984, i32 -2145984876, i32 -2145987779, i32 -2145987726, i32 -2145987695, i32 -2145987664, i32 -2145987643, i32 -2145987621, i32 -2145987572, i32 -2145987551, i32 -2145980732, i32 -2145980643, i32 -2145980522, i32 -2145980423, i32 -2145980317, i32 -2145980215, i32 -2145980182, i32 -2145980109, i32 -2145980041, i32 -2145987179, i32 -2145987126, i32 -2145987095, i32 -2145987064, i32 -2145987043, i32 -2145987021, i32 -2145986972, i32 -2145986951, i32 -2145979991, i32 -2145979902, i32 -2145979781, i32 -2145979682, i32 -2145979576, i32 -2145979474, i32 -2145979441, i32 -2145979358, i32 -2145979269, i32 -2145979148, i32 -2145979048, i32 -2145979022, i32 -2145978919, i32 -2145978893, i32 -2145986693, i32 -2145986626, i32 -2145986601, i32 -2145986537, i32 -2145986421, i32 -2145986396, i32 -2145986371}
!1235 = !DILocation(line: 294, column: 15, scope: !964)
!1236 = !DILocation(line: 294, column: 11, scope: !964)
!1237 = !DILocation(line: 295, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !964, file: !3, line: 295, column: 9)
!1239 = !DILocation(line: 295, column: 9, scope: !964)
!1240 = !{!"branch_weights", i32 2000, i32 1}
!1241 = !DILocation(line: 0, scope: !944)
!1242 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 303, column: 4, scope: !972)
!1244 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1243)
!1245 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1243)
!1246 = !DILocation(line: 303, column: 4, scope: !972)
!1247 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 303, column: 4, scope: !972)
!1249 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1248)
!1250 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1248)
!1251 = !DILocation(line: 303, column: 4, scope: !973)
!1252 = !DILocation(line: 303, column: 4, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !972, file: !3, line: 303, column: 4)
!1254 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 303, column: 4, scope: !969)
!1257 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1255)
!1258 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1255)
!1259 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1256)
!1260 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1256)
!1261 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1256)
!1262 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1256)
!1263 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1256)
!1264 = !DILocation(line: 303, column: 4, scope: !969)
!1265 = !{i32 -2145975492, i32 -2145975479, i32 -2145975454, i32 -2145975430, i32 -2145975405, i32 -2145975330, i32 -2145975305, i32 -2145975161, i32 -2145975136, i32 -2145972339, i32 -2145972250, i32 -2145972129, i32 -2145972034, i32 -2145971933, i32 -2145971906, i32 -2145971823, i32 -2145971734, i32 -2145971613, i32 -2145971513, i32 -2145971407, i32 -2145971299, i32 -2145974760, i32 -2145974707, i32 -2145974676, i32 -2145974645, i32 -2145974624, i32 -2145974602, i32 -2145974553, i32 -2145974532, i32 -2145974429, i32 -2145974397, i32 -2145971216, i32 -2145971127, i32 -2145971006, i32 -2145970907, i32 -2145970801, i32 -2145970699, i32 -2145970666, i32 -2145970593, i32 -2145970525, i32 -2145974137, i32 -2145974084, i32 -2145974053, i32 -2145974022, i32 -2145974001, i32 -2145973979, i32 -2145973930, i32 -2145973909, i32 -2145970480, i32 -2145970391, i32 -2145970270, i32 -2145970171, i32 -2145970065, i32 -2145969963, i32 -2145969930, i32 -2145969847, i32 -2145969758, i32 -2145969637, i32 -2145969537, i32 -2145969511, i32 -2145969408, i32 -2145969382, i32 -2145973651, i32 -2145973626, i32 -2145973559, i32 -2145973534, i32 -2145973470, i32 -2145973354, i32 -2145973329, i32 -2145973304}
!1266 = !DILocation(line: 307, column: 27, scope: !966)
!1267 = !DILocation(line: 307, column: 4, scope: !966)
!1268 = !DILocation(line: 308, column: 3, scope: !966)
!1269 = !DILocation(line: 309, column: 11, scope: !2)
!1270 = !DILocation(line: 309, column: 2, scope: !944)
!1271 = distinct !{!1271, !1272, !1273}
!1272 = !DILocation(line: 237, column: 2, scope: !2)
!1273 = !DILocation(line: 309, column: 37, scope: !2)
!1274 = !DILocation(line: 310, column: 1, scope: !2)
!1275 = !DILocation(line: 194, column: 43, scope: !898)
!1276 = !DILocation(line: 196, column: 2, scope: !898)
!1277 = !DILocation(line: 196, column: 10, scope: !898)
!1278 = !DILocation(line: 197, column: 2, scope: !898)
!1279 = !DILocation(line: 198, column: 2, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !899, line: 198, column: 2)
!1281 = distinct !DILexicalBlock(scope: !898, file: !899, line: 198, column: 2)
!1282 = !DILocation(line: 199, column: 2, scope: !898)
!1283 = !DILocation(line: 200, column: 1, scope: !898)
!1284 = distinct !DISubprogram(name: "uk_netdev_rx_one", scope: !1285, file: !1285, line: 458, type: !1286, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1288)
!1285 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netdev.h", directory: "/root/.unikraft/apps/redis/build")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!15, !6, !27, !122}
!1288 = !{!1289, !1290, !1291}
!1289 = !DILocalVariable(name: "dev", arg: 1, scope: !1284, file: !1285, line: 458, type: !6)
!1290 = !DILocalVariable(name: "queue_id", arg: 2, scope: !1284, file: !1285, line: 458, type: !27)
!1291 = !DILocalVariable(name: "pkt", arg: 3, scope: !1284, file: !1285, line: 459, type: !122)
!1292 = !DILocation(line: 458, column: 54, scope: !1284)
!1293 = !DILocation(line: 458, column: 68, scope: !1284)
!1294 = !DILocation(line: 459, column: 27, scope: !1284)
!1295 = !DILocation(line: 461, column: 2, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !1285, line: 461, column: 2)
!1297 = distinct !DILexicalBlock(scope: !1284, file: !1285, line: 461, column: 2)
!1298 = !DILocation(line: 461, column: 2, scope: !1297)
!1299 = !DILocation(line: 461, column: 2, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !1285, line: 461, column: 2)
!1301 = !DILocation(line: 462, column: 2, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !1285, line: 462, column: 2)
!1303 = distinct !DILexicalBlock(scope: !1284, file: !1285, line: 462, column: 2)
!1304 = !{!1305, !1010, i64 8}
!1305 = !{!"uk_netdev", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1011, i64 32, !1011, i64 40, !1205, i64 48, !1010, i64 64, !1010, i64 72}
!1306 = !DILocation(line: 462, column: 2, scope: !1303)
!1307 = !DILocation(line: 462, column: 2, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !1285, line: 462, column: 2)
!1309 = !DILocation(line: 463, column: 2, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !1285, line: 463, column: 2)
!1311 = distinct !DILexicalBlock(scope: !1284, file: !1285, line: 463, column: 2)
!1312 = !DILocation(line: 463, column: 2, scope: !1311)
!1313 = !DILocation(line: 463, column: 2, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !1285, line: 463, column: 2)
!1315 = !DILocation(line: 464, column: 2, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !1285, line: 464, column: 2)
!1317 = distinct !DILexicalBlock(scope: !1284, file: !1285, line: 464, column: 2)
!1318 = !{!1305, !1010, i64 16}
!1319 = !{!1320, !1011, i64 0}
!1320 = !{!"uk_netdev_data", !1011, i64 0, !1010, i64 8, !1014, i64 16, !1010, i64 24}
!1321 = !DILocation(line: 464, column: 2, scope: !1317)
!1322 = !DILocation(line: 464, column: 2, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1316, file: !1285, line: 464, column: 2)
!1324 = !DILocation(line: 465, column: 2, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !1285, line: 465, column: 2)
!1326 = distinct !DILexicalBlock(scope: !1284, file: !1285, line: 465, column: 2)
!1327 = !DILocation(line: 465, column: 2, scope: !1326)
!1328 = !DILocation(line: 465, column: 2, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !1285, line: 465, column: 2)
!1330 = !DILocation(line: 466, column: 2, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !1285, line: 466, column: 2)
!1332 = distinct !DILexicalBlock(scope: !1284, file: !1285, line: 466, column: 2)
!1333 = !DILocation(line: 466, column: 2, scope: !1332)
!1334 = !DILocation(line: 466, column: 2, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !1285, line: 466, column: 2)
!1336 = !DILocation(line: 468, column: 9, scope: !1284)
!1337 = !DILocation(line: 468, column: 2, scope: !1284)
!1338 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 154, column: 21, scope: !1174, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 117, column: 30, scope: !1181)
!1341 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1339)
!1342 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1339)
!1343 = !DILocation(line: 154, column: 16, scope: !1174, inlinedAt: !1340)
!1344 = !DILocation(line: 156, column: 38, scope: !1174, inlinedAt: !1340)
!1345 = !DILocation(line: 156, column: 12, scope: !1174, inlinedAt: !1340)
!1346 = !DILocation(line: 153, column: 21, scope: !1174, inlinedAt: !1340)
!1347 = !DILocation(line: 158, column: 9, scope: !1174, inlinedAt: !1340)
!1348 = !DILocation(line: 158, column: 2, scope: !1174, inlinedAt: !1340)
!1349 = !DILocation(line: 117, column: 20, scope: !1181)
!1350 = !DILocation(line: 119, column: 2, scope: !1197)
!1351 = !DILocation(line: 119, column: 2, scope: !1198)
!1352 = !DILocation(line: 119, column: 2, scope: !1201)
!1353 = !DILocation(line: 121, column: 15, scope: !1181)
!1354 = !DILocation(line: 116, column: 19, scope: !1181)
!1355 = !DILocation(line: 122, column: 2, scope: !1210)
!1356 = !DILocation(line: 122, column: 2, scope: !1211)
!1357 = !DILocation(line: 122, column: 2, scope: !1214)
!1358 = !DILocation(line: 123, column: 5, scope: !1181)
!1359 = !DILocation(line: 123, column: 2, scope: !1181)
!1360 = !DILocation(line: 124, column: 1, scope: !1181)
!1361 = !DILocation(line: 186, column: 42, scope: !922)
!1362 = !DILocation(line: 188, column: 2, scope: !922)
!1363 = !DILocation(line: 188, column: 10, scope: !922)
!1364 = !DILocation(line: 189, column: 2, scope: !922)
!1365 = !DILocation(line: 190, column: 2, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !899, line: 190, column: 2)
!1367 = distinct !DILexicalBlock(scope: !922, file: !899, line: 190, column: 2)
!1368 = !DILocation(line: 191, column: 2, scope: !922)
!1369 = !DILocation(line: 192, column: 1, scope: !922)
!1370 = distinct !DISubprogram(name: "uknetdev_poll", scope: !3, file: !3, line: 328, type: !814, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1371)
!1371 = !{!1372, !1373}
!1372 = !DILocalVariable(name: "nf", arg: 1, scope: !1370, file: !3, line: 328, type: !733)
!1373 = !DILocalVariable(name: "dev", scope: !1370, file: !3, line: 330, type: !6)
!1374 = !DILocation(line: 328, column: 34, scope: !1370)
!1375 = !DILocation(line: 332, column: 2, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 332, column: 2)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 332, column: 2)
!1378 = !DILocation(line: 332, column: 2, scope: !1377)
!1379 = !DILocation(line: 332, column: 2, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 332, column: 2)
!1381 = !DILocation(line: 338, column: 2, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 338, column: 2)
!1383 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 338, column: 2)
!1384 = !DILocation(line: 338, column: 2, scope: !1383)
!1385 = !DILocation(line: 338, column: 2, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 338, column: 2)
!1387 = !DILocation(line: 339, column: 2, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 339, column: 2)
!1389 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 339, column: 2)
!1390 = !DILocation(line: 339, column: 2, scope: !1389)
!1391 = !DILocation(line: 339, column: 2, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 339, column: 2)
!1393 = !DILocation(line: 341, column: 8, scope: !1370)
!1394 = !{!1009, !1010, i64 232}
!1395 = !DILocation(line: 330, column: 20, scope: !1370)
!1396 = !DILocation(line: 342, column: 2, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 342, column: 2)
!1398 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 342, column: 2)
!1399 = !DILocation(line: 342, column: 2, scope: !1398)
!1400 = !DILocation(line: 342, column: 2, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 342, column: 2)
!1402 = !DILocation(line: 348, column: 27, scope: !1370)
!1403 = !DILocation(line: 348, column: 2, scope: !1370)
!1404 = !DILocation(line: 350, column: 1, scope: !1370)
!1405 = distinct !DISubprogram(name: "___poll_netif", scope: !3, file: !3, line: 380, type: !263, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DILocalVariable(name: "arg", arg: 1, scope: !1405, file: !3, line: 380, type: !25)
!1408 = !DILocalVariable(name: "nf", scope: !1405, file: !3, line: 381, type: !733)
!1409 = !DILocalVariable(name: "tid", scope: !1410, file: !3, line: 386, type: !176)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 386, column: 3)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 386, column: 3)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 386, column: 3)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 386, column: 3)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 386, column: 3)
!1415 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 383, column: 12)
!1416 = !DILocation(line: 380, column: 26, scope: !1405)
!1417 = !DILocation(line: 381, column: 21, scope: !1405)
!1418 = !DILocation(line: 381, column: 16, scope: !1405)
!1419 = !DILocation(line: 383, column: 2, scope: !1405)
!1420 = !DILocation(line: 385, column: 3, scope: !1415)
!1421 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 386, column: 3, scope: !1413)
!1423 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1422)
!1424 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1422)
!1425 = !DILocation(line: 386, column: 3, scope: !1413)
!1426 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 386, column: 3, scope: !1413)
!1428 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1427)
!1429 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1427)
!1430 = !DILocation(line: 386, column: 3, scope: !1414)
!1431 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 154, column: 21, scope: !1174, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 117, column: 30, scope: !1181, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 386, column: 3, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 386, column: 3)
!1436 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1432)
!1437 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1432)
!1438 = !DILocation(line: 154, column: 16, scope: !1174, inlinedAt: !1433)
!1439 = !DILocation(line: 156, column: 38, scope: !1174, inlinedAt: !1433)
!1440 = !DILocation(line: 156, column: 12, scope: !1174, inlinedAt: !1433)
!1441 = !DILocation(line: 153, column: 21, scope: !1174, inlinedAt: !1433)
!1442 = !DILocation(line: 158, column: 9, scope: !1174, inlinedAt: !1433)
!1443 = !DILocation(line: 158, column: 2, scope: !1174, inlinedAt: !1433)
!1444 = !DILocation(line: 117, column: 20, scope: !1181, inlinedAt: !1434)
!1445 = !DILocation(line: 119, column: 2, scope: !1197, inlinedAt: !1434)
!1446 = !DILocation(line: 119, column: 2, scope: !1198, inlinedAt: !1434)
!1447 = !DILocation(line: 119, column: 2, scope: !1201, inlinedAt: !1434)
!1448 = !DILocation(line: 121, column: 15, scope: !1181, inlinedAt: !1434)
!1449 = !DILocation(line: 116, column: 19, scope: !1181, inlinedAt: !1434)
!1450 = !DILocation(line: 122, column: 2, scope: !1210, inlinedAt: !1434)
!1451 = !DILocation(line: 122, column: 2, scope: !1211, inlinedAt: !1434)
!1452 = !DILocation(line: 122, column: 2, scope: !1214, inlinedAt: !1434)
!1453 = !DILocation(line: 123, column: 5, scope: !1181, inlinedAt: !1434)
!1454 = !DILocation(line: 123, column: 2, scope: !1181, inlinedAt: !1434)
!1455 = !DILocation(line: 124, column: 1, scope: !1181, inlinedAt: !1434)
!1456 = !DILocation(line: 386, column: 3, scope: !1435)
!1457 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 386, column: 3, scope: !1410)
!1460 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1458)
!1461 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1458)
!1462 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1459)
!1463 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1459)
!1464 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1459)
!1465 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1459)
!1466 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1459)
!1467 = !DILocation(line: 386, column: 3, scope: !1410)
!1468 = !{i32 -2145958610, i32 -2145958597, i32 -2145958572, i32 -2145958548, i32 -2145958523, i32 -2145958448, i32 -2145958423, i32 -2145958279, i32 -2145956133, i32 -2145956044, i32 -2145955923, i32 -2145955828, i32 -2145955727, i32 -2145955700, i32 -2145955617, i32 -2145955528, i32 -2145955407, i32 -2145955307, i32 -2145955201, i32 -2145955093, i32 -2145957996, i32 -2145957943, i32 -2145957912, i32 -2145957881, i32 -2145957860, i32 -2145957838, i32 -2145957789, i32 -2145957768, i32 -2145955010, i32 -2145954921, i32 -2145954800, i32 -2145954701, i32 -2145954595, i32 -2145954493, i32 -2145954460, i32 -2145954387, i32 -2145954319, i32 -2145957396, i32 -2145957343, i32 -2145957312, i32 -2145957281, i32 -2145957260, i32 -2145957238, i32 -2145957189, i32 -2145957168, i32 -2145954269, i32 -2145954180, i32 -2145954059, i32 -2145953960, i32 -2145953854, i32 -2145953752, i32 -2145953719, i32 -2145953636, i32 -2145953547, i32 -2145953426, i32 -2145953326, i32 -2145953300, i32 -2145953197, i32 -2145953171, i32 -2145956910, i32 -2145956843, i32 -2145956818, i32 -2145956754, i32 -2145956638, i32 -2145956613, i32 -2145956588}
!1469 = distinct !{!1469, !1419, !1470}
!1470 = !DILocation(line: 387, column: 2, scope: !1405)
!1471 = distinct !DISubprogram(name: "uknetdev_init", scope: !3, file: !3, line: 493, type: !1472, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!777, !733}
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1496, !1497, !1503, !1504, !1510, !1516, !1517, !1523, !1524, !1530, !1531, !1532, !1533, !1539, !1540, !1541, !1542, !1548, !1549, !1555, !1556, !1562}
!1475 = !DILocalVariable(name: "nf", arg: 1, scope: !1471, file: !3, line: 493, type: !733)
!1476 = !DILocalVariable(name: "a", scope: !1471, file: !3, line: 495, type: !54)
!1477 = !DILocalVariable(name: "dev", scope: !1471, file: !3, line: 496, type: !6)
!1478 = !DILocalVariable(name: "_dss_dev", scope: !1471, file: !3, line: 497, type: !689)
!1479 = !DILocalVariable(name: "dev_conf", scope: !1471, file: !3, line: 498, type: !644)
!1480 = !DILocalVariable(name: "_dss_dev_conf", scope: !1471, file: !3, line: 499, type: !843)
!1481 = !DILocalVariable(name: "rxq_conf", scope: !1471, file: !3, line: 500, type: !663)
!1482 = !DILocalVariable(name: "_dss_rxq_conf", scope: !1471, file: !3, line: 501, type: !662)
!1483 = !DILocalVariable(name: "txq_conf", scope: !1471, file: !3, line: 502, type: !654)
!1484 = !DILocalVariable(name: "_dss_txq_conf", scope: !1471, file: !3, line: 503, type: !653)
!1485 = !DILocalVariable(name: "netdev_state", scope: !1471, file: !3, line: 504, type: !128)
!1486 = !DILocalVariable(name: "lwip_data", scope: !1471, file: !3, line: 505, type: !861)
!1487 = !DILocalVariable(name: "hwaddr", scope: !1471, file: !3, line: 506, type: !553)
!1488 = !DILocalVariable(name: "i", scope: !1471, file: !3, line: 507, type: !39)
!1489 = !DILocalVariable(name: "ret", scope: !1471, file: !3, line: 508, type: !15)
!1490 = !DILocalVariable(name: "tid", scope: !1491, file: !3, line: 514, type: !176)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 514, column: 2)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 514, column: 2)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 514, column: 2)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 514, column: 2)
!1495 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 514, column: 2)
!1496 = !DILocalVariable(name: "_ret", scope: !1491, file: !3, line: 514, type: !841)
!1497 = !DILocalVariable(name: "tid", scope: !1498, file: !3, line: 520, type: !176)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 520, column: 2)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 520, column: 2)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 520, column: 2)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 520, column: 2)
!1502 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 520, column: 2)
!1503 = !DILocalVariable(name: "_ret", scope: !1498, file: !3, line: 520, type: !841)
!1504 = !DILocalVariable(name: "tid", scope: !1505, file: !3, line: 549, type: !176)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 549, column: 2)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 549, column: 2)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 549, column: 2)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 549, column: 2)
!1509 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 549, column: 2)
!1510 = !DILocalVariable(name: "tid", scope: !1511, file: !3, line: 574, type: !176)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 574, column: 2)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 574, column: 2)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 574, column: 2)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 574, column: 2)
!1515 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 574, column: 2)
!1516 = !DILocalVariable(name: "_ret", scope: !1511, file: !3, line: 574, type: !841)
!1517 = !DILocalVariable(name: "tid", scope: !1518, file: !3, line: 601, type: !176)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 601, column: 2)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 601, column: 2)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 601, column: 2)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 601, column: 2)
!1522 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 601, column: 2)
!1523 = !DILocalVariable(name: "_ret", scope: !1518, file: !3, line: 601, type: !841)
!1524 = !DILocalVariable(name: "tid", scope: !1525, file: !3, line: 608, type: !176)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 608, column: 2)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 608, column: 2)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 608, column: 2)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 608, column: 2)
!1529 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 608, column: 2)
!1530 = !DILocalVariable(name: "_ret", scope: !1525, file: !3, line: 608, type: !841)
!1531 = !DILocalVariable(name: "_arg3", scope: !1525, file: !3, line: 608, type: !841)
!1532 = !DILocalVariable(name: "_arg4", scope: !1525, file: !3, line: 608, type: !841)
!1533 = !DILocalVariable(name: "tid", scope: !1534, file: !3, line: 624, type: !176)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 624, column: 2)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 624, column: 2)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 624, column: 2)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 624, column: 2)
!1538 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 624, column: 2)
!1539 = !DILocalVariable(name: "_ret", scope: !1534, file: !3, line: 624, type: !841)
!1540 = !DILocalVariable(name: "_arg3", scope: !1534, file: !3, line: 624, type: !841)
!1541 = !DILocalVariable(name: "_arg4", scope: !1534, file: !3, line: 624, type: !841)
!1542 = !DILocalVariable(name: "tid", scope: !1543, file: !3, line: 636, type: !176)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 636, column: 2)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 636, column: 2)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 636, column: 2)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 636, column: 2)
!1547 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 636, column: 2)
!1548 = !DILocalVariable(name: "_ret", scope: !1543, file: !3, line: 636, type: !841)
!1549 = !DILocalVariable(name: "tid", scope: !1550, file: !3, line: 692, type: !176)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 692, column: 2)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 692, column: 2)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 692, column: 2)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 692, column: 2)
!1554 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 692, column: 2)
!1555 = !DILocalVariable(name: "_ret", scope: !1550, file: !3, line: 692, type: !841)
!1556 = !DILocalVariable(name: "tid", scope: !1557, file: !3, line: 711, type: !176)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 711, column: 2)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 711, column: 2)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 711, column: 2)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 711, column: 2)
!1561 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 711, column: 2)
!1562 = !DILocalVariable(name: "_ret", scope: !1557, file: !3, line: 711, type: !841)
!1563 = !DILocation(line: 493, column: 35, scope: !1471)
!1564 = !DILocation(line: 495, column: 19, scope: !1471)
!1565 = !DILocation(line: 496, column: 2, scope: !1471)
!1566 = !DILocation(line: 497, column: 55, scope: !1471)
!1567 = !DILocation(line: 497, column: 74, scope: !1471)
!1568 = !DILocation(line: 497, column: 32, scope: !1471)
!1569 = !DILocation(line: 497, column: 21, scope: !1471)
!1570 = !DILocation(line: 498, column: 2, scope: !1471)
!1571 = !DILocation(line: 499, column: 68, scope: !1471)
!1572 = !DILocation(line: 499, column: 92, scope: !1471)
!1573 = !DILocation(line: 499, column: 41, scope: !1471)
!1574 = !DILocation(line: 499, column: 25, scope: !1471)
!1575 = !DILocation(line: 500, column: 2, scope: !1471)
!1576 = !DILocation(line: 501, column: 84, scope: !1471)
!1577 = !DILocation(line: 501, column: 108, scope: !1471)
!1578 = !DILocation(line: 501, column: 49, scope: !1471)
!1579 = !DILocation(line: 501, column: 33, scope: !1471)
!1580 = !DILocation(line: 502, column: 2, scope: !1471)
!1581 = !DILocation(line: 503, column: 84, scope: !1471)
!1582 = !DILocation(line: 503, column: 108, scope: !1471)
!1583 = !DILocation(line: 503, column: 49, scope: !1471)
!1584 = !DILocation(line: 503, column: 33, scope: !1471)
!1585 = !DILocation(line: 504, column: 2, scope: !1471)
!1586 = !DILocation(line: 505, column: 2, scope: !1471)
!1587 = !DILocation(line: 506, column: 2, scope: !1471)
!1588 = !DILocation(line: 508, column: 2, scope: !1471)
!1589 = !DILocation(line: 510, column: 2, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 510, column: 2)
!1591 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 510, column: 2)
!1592 = !DILocation(line: 510, column: 2, scope: !1591)
!1593 = !DILocation(line: 510, column: 2, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 510, column: 2)
!1595 = !DILocation(line: 511, column: 16, scope: !1471)
!1596 = !DILocation(line: 511, column: 14, scope: !1471)
!1597 = !DILocation(line: 512, column: 2, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 512, column: 2)
!1599 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 512, column: 2)
!1600 = !DILocation(line: 512, column: 2, scope: !1599)
!1601 = !DILocation(line: 512, column: 2, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 512, column: 2)
!1603 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 514, column: 2, scope: !1494)
!1605 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1604)
!1606 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1604)
!1607 = !DILocation(line: 514, column: 2, scope: !1494)
!1608 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 514, column: 2, scope: !1494)
!1610 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1609)
!1611 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1609)
!1612 = !DILocation(line: 514, column: 2, scope: !1495)
!1613 = !DILocation(line: 514, column: 2, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 514, column: 2)
!1615 = !DILocalVariable(name: "dev", arg: 1, scope: !1616, file: !3, line: 104, type: !6)
!1616 = distinct !DISubprogram(name: "_retrieve_scratchpad", scope: !3, file: !3, line: 104, type: !1617, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!861, !6}
!1619 = !{!1615}
!1620 = !DILocation(line: 104, column: 65, scope: !1616, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 514, column: 2, scope: !1614)
!1622 = !DILocation(line: 106, column: 41, scope: !1616, inlinedAt: !1621)
!1623 = !{!1305, !1010, i64 72}
!1624 = !DILocation(line: 106, column: 2, scope: !1616, inlinedAt: !1621)
!1625 = !DILocation(line: 505, column: 27, scope: !1471)
!1626 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 514, column: 2, scope: !1491)
!1629 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1627)
!1630 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1627)
!1631 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1628)
!1632 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1628)
!1633 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1628)
!1634 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1628)
!1635 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1628)
!1636 = !DILocation(line: 514, column: 2, scope: !1491)
!1637 = !{i32 -2145913228, i32 -2145913215, i32 -2145913190, i32 -2145913166, i32 -2145913141, i32 -2145913066, i32 -2145913041, i32 -2145912897, i32 -2145909709, i32 -2145909620, i32 -2145909499, i32 -2145909404, i32 -2145909303, i32 -2145909276, i32 -2145909193, i32 -2145909104, i32 -2145908983, i32 -2145908883, i32 -2145908777, i32 -2145908669, i32 -2145912609, i32 -2145912556, i32 -2145912525, i32 -2145912494, i32 -2145912473, i32 -2145912451, i32 -2145912402, i32 -2145912381, i32 -2145908586, i32 -2145908497, i32 -2145908376, i32 -2145908277, i32 -2145908171, i32 -2145908069, i32 -2145908036, i32 -2145907963, i32 -2145907895, i32 -2145912077, i32 -2145912018, i32 -2145911965, i32 -2145911934, i32 -2145911903, i32 -2145911882, i32 -2145911860, i32 -2145911811, i32 -2145911790, i32 -2145907839, i32 -2145907750, i32 -2145907629, i32 -2145907530, i32 -2145907424, i32 -2145907322, i32 -2145907289, i32 -2145907206, i32 -2145907117, i32 -2145906996, i32 -2145906896, i32 -2145906870, i32 -2145906767, i32 -2145906741, i32 -2145911532, i32 -2145911465, i32 -2145911440, i32 -2145911376, i32 -2145911294, i32 -2145911271, i32 -2145911246, i32 -2145911221}
!1638 = !DILocation(line: 514, column: 2, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 514, column: 2)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 514, column: 2)
!1641 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 514, column: 2)
!1642 = !{i32 -2145910033, i32 -2145910017}
!1643 = !DILocation(line: 517, column: 2, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 517, column: 2)
!1645 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 517, column: 2)
!1646 = !DILocation(line: 517, column: 2, scope: !1645)
!1647 = !DILocation(line: 517, column: 2, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 517, column: 2)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 517, column: 2)
!1650 = !DILocation(line: 517, column: 2, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 517, column: 2)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 517, column: 2)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 517, column: 2)
!1654 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 520, column: 2, scope: !1501)
!1656 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1655)
!1657 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1655)
!1658 = !DILocation(line: 520, column: 2, scope: !1501)
!1659 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 520, column: 2, scope: !1501)
!1661 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1660)
!1662 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1660)
!1663 = !DILocation(line: 520, column: 2, scope: !1502)
!1664 = !DILocation(line: 520, column: 2, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 520, column: 2)
!1666 = !DILocation(line: 504, column: 23, scope: !1471)
!1667 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 520, column: 2, scope: !1498)
!1670 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1668)
!1671 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1668)
!1672 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1669)
!1673 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1669)
!1674 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1669)
!1675 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1669)
!1676 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1669)
!1677 = !DILocation(line: 520, column: 2, scope: !1498)
!1678 = !{i32 -2145904058, i32 -2145904045, i32 -2145904020, i32 -2145903996, i32 -2145903971, i32 -2145903896, i32 -2145903871, i32 -2145903727, i32 -2145900517, i32 -2145900428, i32 -2145900307, i32 -2145900212, i32 -2145900111, i32 -2145900084, i32 -2145900001, i32 -2145899912, i32 -2145899791, i32 -2145899691, i32 -2145899585, i32 -2145899477, i32 -2145903439, i32 -2145903386, i32 -2145903355, i32 -2145903324, i32 -2145903303, i32 -2145903281, i32 -2145903232, i32 -2145903211, i32 -2145899394, i32 -2145899305, i32 -2145899184, i32 -2145899085, i32 -2145898979, i32 -2145898877, i32 -2145898844, i32 -2145898771, i32 -2145898703, i32 -2145902907, i32 -2145902848, i32 -2145902795, i32 -2145902764, i32 -2145902733, i32 -2145902712, i32 -2145902690, i32 -2145902641, i32 -2145902620, i32 -2145898648, i32 -2145898559, i32 -2145898438, i32 -2145898339, i32 -2145898233, i32 -2145898131, i32 -2145898098, i32 -2145898015, i32 -2145897926, i32 -2145897805, i32 -2145897705, i32 -2145897679, i32 -2145897576, i32 -2145897550, i32 -2145902362, i32 -2145902295, i32 -2145902270, i32 -2145902206, i32 -2145902124, i32 -2145902101, i32 -2145902076, i32 -2145902051}
!1679 = !DILocation(line: 520, column: 2, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 520, column: 2)
!1681 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 520, column: 2)
!1682 = !{i32 -2145901070, i32 -2145901053}
!1683 = !DILocation(line: 524, column: 6, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 524, column: 6)
!1685 = !DILocation(line: 524, column: 19, scope: !1684)
!1686 = !DILocation(line: 524, column: 6, scope: !1471)
!1687 = !DILocation(line: 532, column: 2, scope: !1471)
!1688 = !DILocation(line: 532, column: 14, scope: !1471)
!1689 = !DILocation(line: 533, column: 2, scope: !1471)
!1690 = !DILocation(line: 533, column: 14, scope: !1471)
!1691 = !DILocation(line: 543, column: 6, scope: !1471)
!1692 = !DILocation(line: 544, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 544, column: 6)
!1694 = !DILocation(line: 544, column: 6, scope: !1471)
!1695 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 549, column: 2, scope: !1508)
!1697 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1696)
!1698 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1696)
!1699 = !DILocation(line: 549, column: 2, scope: !1508)
!1700 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 549, column: 2, scope: !1508)
!1702 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1701)
!1703 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1701)
!1704 = !DILocation(line: 549, column: 2, scope: !1509)
!1705 = !DILocation(line: 549, column: 2, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 549, column: 2)
!1707 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 549, column: 2, scope: !1505)
!1710 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1708)
!1711 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1708)
!1712 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1709)
!1713 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1709)
!1714 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1709)
!1715 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1709)
!1716 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1709)
!1717 = !DILocation(line: 549, column: 2, scope: !1505)
!1718 = !{i32 -2145895430, i32 -2145895417, i32 -2145895392, i32 -2145895368, i32 -2145895343, i32 -2145895268, i32 -2145895243, i32 -2145895099, i32 -2145892830, i32 -2145892741, i32 -2145892620, i32 -2145892525, i32 -2145892424, i32 -2145892397, i32 -2145892314, i32 -2145892225, i32 -2145892104, i32 -2145892004, i32 -2145891898, i32 -2145891790, i32 -2145894807, i32 -2145894754, i32 -2145894723, i32 -2145894692, i32 -2145894671, i32 -2145894649, i32 -2145894600, i32 -2145894579, i32 -2145891707, i32 -2145891618, i32 -2145891497, i32 -2145891398, i32 -2145891292, i32 -2145891190, i32 -2145891157, i32 -2145891084, i32 -2145891016, i32 -2145894202, i32 -2145894149, i32 -2145894118, i32 -2145894087, i32 -2145894066, i32 -2145894044, i32 -2145893995, i32 -2145893974, i32 -2145890962, i32 -2145890873, i32 -2145890752, i32 -2145890653, i32 -2145890547, i32 -2145890445, i32 -2145890412, i32 -2145890329, i32 -2145890240, i32 -2145890119, i32 -2145890019, i32 -2145889993, i32 -2145889890, i32 -2145889864, i32 -2145893716, i32 -2145893649, i32 -2145893624, i32 -2145893560, i32 -2145893444, i32 -2145893419, i32 -2145893394}
!1719 = !DILocation(line: 551, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 551, column: 6)
!1721 = !DILocation(line: 551, column: 27, scope: !1720)
!1722 = !{!1723, !1014, i64 8}
!1723 = !{!"lwip_netdev_data", !1010, i64 0, !1724, i64 8, !1010, i64 32, !1010, i64 40, !1010, i64 48}
!1724 = !{!"uk_netdev_info", !1014, i64 0, !1014, i64 2, !1039, i64 4, !1014, i64 8, !1014, i64 10, !1014, i64 12, !1014, i64 14, !1039, i64 16}
!1725 = !DILocation(line: 552, column: 6, scope: !1720)
!1726 = !DILocation(line: 552, column: 30, scope: !1720)
!1727 = !{!1723, !1014, i64 10}
!1728 = !DILocation(line: 552, column: 10, scope: !1720)
!1729 = !DILocation(line: 551, column: 6, scope: !1471)
!1730 = !DILocation(line: 559, column: 13, scope: !1471)
!1731 = !DILocation(line: 559, column: 19, scope: !1471)
!1732 = !{!1723, !1010, i64 0}
!1733 = !DILocation(line: 572, column: 19, scope: !1471)
!1734 = !DILocation(line: 572, column: 32, scope: !1471)
!1735 = !{!1736, !1014, i64 0}
!1736 = !{!"uk_netdev_conf", !1014, i64 0, !1014, i64 2}
!1737 = !DILocation(line: 573, column: 19, scope: !1471)
!1738 = !DILocation(line: 573, column: 32, scope: !1471)
!1739 = !{!1736, !1014, i64 2}
!1740 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 574, column: 2, scope: !1514)
!1742 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1741)
!1743 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1741)
!1744 = !DILocation(line: 574, column: 2, scope: !1514)
!1745 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 574, column: 2, scope: !1514)
!1747 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1746)
!1748 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1746)
!1749 = !DILocation(line: 574, column: 2, scope: !1515)
!1750 = !DILocation(line: 574, column: 2, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 574, column: 2)
!1752 = !DILocation(line: 508, column: 6, scope: !1471)
!1753 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 574, column: 2, scope: !1511)
!1756 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1754)
!1757 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1754)
!1758 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1755)
!1759 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1755)
!1760 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1755)
!1761 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1755)
!1762 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1755)
!1763 = !DILocation(line: 574, column: 2, scope: !1511)
!1764 = !{i32 -2145887653, i32 -2145887640, i32 -2145887615, i32 -2145887591, i32 -2145887566, i32 -2145887491, i32 -2145887466, i32 -2145887322, i32 -2145884125, i32 -2145884036, i32 -2145883915, i32 -2145883820, i32 -2145883719, i32 -2145883692, i32 -2145883609, i32 -2145883520, i32 -2145883399, i32 -2145883299, i32 -2145883193, i32 -2145883085, i32 -2145887030, i32 -2145886977, i32 -2145886946, i32 -2145886915, i32 -2145886894, i32 -2145886872, i32 -2145886823, i32 -2145886802, i32 -2145883002, i32 -2145882913, i32 -2145882792, i32 -2145882693, i32 -2145882587, i32 -2145882485, i32 -2145882452, i32 -2145882379, i32 -2145882311, i32 -2145886495, i32 -2145886436, i32 -2145886383, i32 -2145886352, i32 -2145886321, i32 -2145886300, i32 -2145886278, i32 -2145886229, i32 -2145886208, i32 -2145882256, i32 -2145882167, i32 -2145882046, i32 -2145881947, i32 -2145881841, i32 -2145881739, i32 -2145881706, i32 -2145881623, i32 -2145881534, i32 -2145881413, i32 -2145881313, i32 -2145881287, i32 -2145881184, i32 -2145881158, i32 -2145885950, i32 -2145885883, i32 -2145885858, i32 -2145885794, i32 -2145885712, i32 -2145885689, i32 -2145885664, i32 -2145885639}
!1765 = !DILocation(line: 574, column: 2, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 574, column: 2)
!1767 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 574, column: 2)
!1768 = !{i32 -2145884624, i32 -2145884607}
!1769 = !DILocation(line: 576, column: 6, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 576, column: 6)
!1771 = !DILocation(line: 576, column: 10, scope: !1770)
!1772 = !DILocation(line: 576, column: 6, scope: !1471)
!1773 = !DILocation(line: 588, column: 19, scope: !1471)
!1774 = !DILocation(line: 588, column: 21, scope: !1471)
!1775 = !{!1776, !1010, i64 16}
!1776 = !{!"uk_netdev_rxqueue_conf", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40}
!1777 = !DILocation(line: 589, column: 19, scope: !1471)
!1778 = !DILocation(line: 589, column: 32, scope: !1471)
!1779 = !{!1776, !1010, i64 24}
!1780 = !DILocation(line: 590, column: 39, scope: !1471)
!1781 = !DILocation(line: 590, column: 19, scope: !1471)
!1782 = !DILocation(line: 590, column: 37, scope: !1471)
!1783 = !{!1776, !1010, i64 32}
!1784 = !DILocation(line: 598, column: 19, scope: !1471)
!1785 = !DILocation(line: 598, column: 28, scope: !1471)
!1786 = !{!1776, !1010, i64 0}
!1787 = !DILocation(line: 599, column: 19, scope: !1471)
!1788 = !DILocation(line: 599, column: 35, scope: !1471)
!1789 = !{!1776, !1010, i64 8}
!1790 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 601, column: 2, scope: !1521)
!1792 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1791)
!1793 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1791)
!1794 = !DILocation(line: 601, column: 2, scope: !1521)
!1795 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 601, column: 2, scope: !1521)
!1797 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1796)
!1798 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1796)
!1799 = !DILocation(line: 601, column: 2, scope: !1522)
!1800 = !DILocation(line: 601, column: 2, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 601, column: 2)
!1802 = !{!1776, !1010, i64 40}
!1803 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 601, column: 2, scope: !1518)
!1806 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1804)
!1807 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1804)
!1808 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1805)
!1809 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1805)
!1810 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1805)
!1811 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1805)
!1812 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1805)
!1813 = !DILocation(line: 601, column: 2, scope: !1518)
!1814 = !{i32 -2145879128, i32 -2145879115, i32 -2145879090, i32 -2145879066, i32 -2145879041, i32 -2145878966, i32 -2145878941, i32 -2145878797, i32 -2145875590, i32 -2145875501, i32 -2145875380, i32 -2145875285, i32 -2145875184, i32 -2145875157, i32 -2145875074, i32 -2145874985, i32 -2145874864, i32 -2145874764, i32 -2145874658, i32 -2145874550, i32 -2145878514, i32 -2145878461, i32 -2145878430, i32 -2145878399, i32 -2145878378, i32 -2145878356, i32 -2145878307, i32 -2145878286, i32 -2145874467, i32 -2145874378, i32 -2145874257, i32 -2145874158, i32 -2145874052, i32 -2145873950, i32 -2145873917, i32 -2145873844, i32 -2145873776, i32 -2145877984, i32 -2145877925, i32 -2145877872, i32 -2145877841, i32 -2145877810, i32 -2145877789, i32 -2145877767, i32 -2145877718, i32 -2145877697, i32 -2145873720, i32 -2145873631, i32 -2145873510, i32 -2145873411, i32 -2145873305, i32 -2145873203, i32 -2145873170, i32 -2145873087, i32 -2145872998, i32 -2145872877, i32 -2145872777, i32 -2145872751, i32 -2145872648, i32 -2145872622, i32 -2145877439, i32 -2145877372, i32 -2145877347, i32 -2145877283, i32 -2145877201, i32 -2145877178, i32 -2145877153, i32 -2145877128}
!1815 = !DILocation(line: 601, column: 2, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 601, column: 2)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 601, column: 2)
!1818 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 601, column: 2)
!1819 = !{i32 -2145875974, i32 -2145875958}
!1820 = !DILocation(line: 602, column: 24, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 602, column: 6)
!1822 = !DILocation(line: 602, column: 7, scope: !1821)
!1823 = !DILocation(line: 602, column: 6, scope: !1471)
!1824 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 608, column: 2, scope: !1528)
!1826 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1825)
!1827 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1825)
!1828 = !DILocation(line: 608, column: 2, scope: !1528)
!1829 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 608, column: 2, scope: !1528)
!1831 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1830)
!1832 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1830)
!1833 = !DILocation(line: 608, column: 2, scope: !1529)
!1834 = !DILocation(line: 608, column: 2, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 608, column: 2)
!1836 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 608, column: 2, scope: !1525)
!1839 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1837)
!1840 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1837)
!1841 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1838)
!1842 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1838)
!1843 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1838)
!1844 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1838)
!1845 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1838)
!1846 = !DILocation(line: 608, column: 2, scope: !1525)
!1847 = !{i32 -2145870142, i32 -2145870129, i32 -2145870104, i32 -2145870080, i32 -2145870055, i32 -2145869980, i32 -2145869955, i32 -2145869811, i32 -2145869786, i32 -2145866443, i32 -2145866354, i32 -2145866233, i32 -2145866138, i32 -2145866037, i32 -2145866010, i32 -2145865927, i32 -2145865838, i32 -2145865717, i32 -2145865617, i32 -2145865511, i32 -2145865403, i32 -2145869449, i32 -2145869396, i32 -2145869365, i32 -2145869334, i32 -2145869313, i32 -2145869291, i32 -2145869242, i32 -2145869221, i32 -2145869118, i32 -2145869086, i32 -2145865320, i32 -2145865231, i32 -2145865110, i32 -2145865011, i32 -2145864905, i32 -2145864803, i32 -2145864770, i32 -2145864697, i32 -2145864629, i32 -2145868896, i32 -2145868837, i32 -2145868784, i32 -2145868753, i32 -2145868722, i32 -2145868701, i32 -2145868679, i32 -2145868630, i32 -2145868609, i32 -2145864570, i32 -2145864481, i32 -2145864360, i32 -2145864261, i32 -2145864155, i32 -2145864053, i32 -2145864020, i32 -2145863937, i32 -2145863848, i32 -2145863727, i32 -2145863627, i32 -2145863601, i32 -2145863498, i32 -2145863472, i32 -2145868351, i32 -2145868326, i32 -2145868259, i32 -2145868234, i32 -2145868170, i32 -2145868088, i32 -2145868065, i32 -2145868040, i32 -2145868015}
!1848 = !DILocation(line: 608, column: 2, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 608, column: 2)
!1850 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 608, column: 2)
!1851 = !{i32 -2145866954, i32 -2145866937}
!1852 = !DILocation(line: 611, column: 6, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 611, column: 6)
!1854 = !DILocation(line: 611, column: 10, scope: !1853)
!1855 = !DILocation(line: 611, column: 6, scope: !1471)
!1856 = !DILocation(line: 623, column: 19, scope: !1471)
!1857 = !DILocation(line: 623, column: 21, scope: !1471)
!1858 = !{!1859, !1010, i64 0}
!1859 = !{!"uk_netdev_txqueue_conf", !1010, i64 0}
!1860 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 624, column: 2, scope: !1537)
!1862 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1861)
!1863 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1861)
!1864 = !DILocation(line: 624, column: 2, scope: !1537)
!1865 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 624, column: 2, scope: !1537)
!1867 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1866)
!1868 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1866)
!1869 = !DILocation(line: 624, column: 2, scope: !1538)
!1870 = !DILocation(line: 624, column: 2, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 624, column: 2)
!1872 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 624, column: 2, scope: !1534)
!1875 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1873)
!1876 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1873)
!1877 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1874)
!1878 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1874)
!1879 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1874)
!1880 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1874)
!1881 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1874)
!1882 = !DILocation(line: 624, column: 2, scope: !1534)
!1883 = !{i32 -2145860992, i32 -2145860979, i32 -2145860954, i32 -2145860930, i32 -2145860905, i32 -2145860830, i32 -2145860805, i32 -2145860661, i32 -2145860636, i32 -2145857293, i32 -2145857204, i32 -2145857083, i32 -2145856988, i32 -2145856887, i32 -2145856860, i32 -2145856777, i32 -2145856688, i32 -2145856567, i32 -2145856467, i32 -2145856361, i32 -2145856253, i32 -2145860299, i32 -2145860246, i32 -2145860215, i32 -2145860184, i32 -2145860163, i32 -2145860141, i32 -2145860092, i32 -2145860071, i32 -2145859968, i32 -2145859936, i32 -2145856170, i32 -2145856081, i32 -2145855960, i32 -2145855861, i32 -2145855755, i32 -2145855653, i32 -2145855620, i32 -2145855547, i32 -2145855479, i32 -2145859746, i32 -2145859687, i32 -2145859634, i32 -2145859603, i32 -2145859572, i32 -2145859551, i32 -2145859529, i32 -2145859480, i32 -2145859459, i32 -2145855420, i32 -2145855331, i32 -2145855210, i32 -2145855111, i32 -2145855005, i32 -2145854903, i32 -2145854870, i32 -2145854787, i32 -2145854698, i32 -2145854577, i32 -2145854477, i32 -2145854451, i32 -2145854348, i32 -2145854322, i32 -2145859201, i32 -2145859176, i32 -2145859109, i32 -2145859084, i32 -2145859020, i32 -2145858938, i32 -2145858915, i32 -2145858890, i32 -2145858865}
!1884 = !DILocation(line: 624, column: 2, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 624, column: 2)
!1886 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 624, column: 2)
!1887 = !{i32 -2145857804, i32 -2145857787}
!1888 = !DILocation(line: 627, column: 6, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 627, column: 6)
!1890 = !DILocation(line: 627, column: 10, scope: !1889)
!1891 = !DILocation(line: 627, column: 6, scope: !1471)
!1892 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 636, column: 2, scope: !1546)
!1894 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1893)
!1895 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1893)
!1896 = !DILocation(line: 636, column: 2, scope: !1546)
!1897 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 636, column: 2, scope: !1546)
!1899 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1898)
!1900 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1898)
!1901 = !DILocation(line: 636, column: 2, scope: !1547)
!1902 = !DILocation(line: 636, column: 2, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 636, column: 2)
!1904 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 636, column: 2, scope: !1543)
!1907 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1905)
!1908 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1905)
!1909 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1906)
!1910 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1906)
!1911 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1906)
!1912 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1906)
!1913 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1906)
!1914 = !DILocation(line: 636, column: 2, scope: !1543)
!1915 = !{i32 -2145852305, i32 -2145852292, i32 -2145852267, i32 -2145852243, i32 -2145852218, i32 -2145852143, i32 -2145852118, i32 -2145851974, i32 -2145848844, i32 -2145848755, i32 -2145848634, i32 -2145848539, i32 -2145848438, i32 -2145848411, i32 -2145848328, i32 -2145848239, i32 -2145848118, i32 -2145848018, i32 -2145847912, i32 -2145847804, i32 -2145851686, i32 -2145851633, i32 -2145851602, i32 -2145851571, i32 -2145851550, i32 -2145851528, i32 -2145851479, i32 -2145851458, i32 -2145847721, i32 -2145847632, i32 -2145847511, i32 -2145847412, i32 -2145847306, i32 -2145847204, i32 -2145847171, i32 -2145847098, i32 -2145847030, i32 -2145851154, i32 -2145851095, i32 -2145851042, i32 -2145851011, i32 -2145850980, i32 -2145850959, i32 -2145850937, i32 -2145850888, i32 -2145850867, i32 -2145846979, i32 -2145846890, i32 -2145846769, i32 -2145846670, i32 -2145846564, i32 -2145846462, i32 -2145846429, i32 -2145846346, i32 -2145846257, i32 -2145846136, i32 -2145846036, i32 -2145846010, i32 -2145845907, i32 -2145845881, i32 -2145850609, i32 -2145850542, i32 -2145850517, i32 -2145850453, i32 -2145850371, i32 -2145850348, i32 -2145850323, i32 -2145850298}
!1916 = !DILocation(line: 636, column: 2, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 636, column: 2)
!1918 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 636, column: 2)
!1919 = !{i32 -2145849317, i32 -2145849300}
!1920 = !DILocation(line: 637, column: 6, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 637, column: 6)
!1922 = !DILocation(line: 637, column: 10, scope: !1921)
!1923 = !DILocation(line: 637, column: 6, scope: !1471)
!1924 = !DILocation(line: 647, column: 6, scope: !1471)
!1925 = !DILocation(line: 647, column: 13, scope: !1471)
!1926 = !{!1009, !1010, i64 192}
!1927 = !DILocation(line: 650, column: 6, scope: !1471)
!1928 = !DILocation(line: 650, column: 17, scope: !1471)
!1929 = !{!1009, !1010, i64 208}
!1930 = !DILocation(line: 652, column: 6, scope: !1471)
!1931 = !DILocation(line: 652, column: 17, scope: !1471)
!1932 = !{!1009, !1010, i64 200}
!1933 = !DILocation(line: 657, column: 2, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 657, column: 2)
!1935 = !{!1009, !1011, i64 261}
!1936 = !DILocation(line: 678, column: 2, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 678, column: 2)
!1938 = !{!1009, !1014, i64 248}
!1939 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 692, column: 2, scope: !1553)
!1941 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1940)
!1942 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1940)
!1943 = !DILocation(line: 692, column: 2, scope: !1553)
!1944 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 692, column: 2, scope: !1553)
!1946 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1945)
!1947 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1945)
!1948 = !DILocation(line: 692, column: 2, scope: !1554)
!1949 = !DILocation(line: 692, column: 2, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 692, column: 2)
!1951 = !DILocation(line: 506, column: 26, scope: !1471)
!1952 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 692, column: 2, scope: !1550)
!1955 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1953)
!1956 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1953)
!1957 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1954)
!1958 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1954)
!1959 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1954)
!1960 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1954)
!1961 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1954)
!1962 = !DILocation(line: 692, column: 2, scope: !1550)
!1963 = !{i32 -2145839148, i32 -2145839135, i32 -2145839110, i32 -2145839086, i32 -2145839061, i32 -2145838986, i32 -2145838961, i32 -2145838817, i32 -2145835653, i32 -2145835564, i32 -2145835443, i32 -2145835348, i32 -2145835247, i32 -2145835220, i32 -2145835137, i32 -2145835048, i32 -2145834927, i32 -2145834827, i32 -2145834721, i32 -2145834613, i32 -2145838529, i32 -2145838476, i32 -2145838445, i32 -2145838414, i32 -2145838393, i32 -2145838371, i32 -2145838322, i32 -2145838301, i32 -2145834530, i32 -2145834441, i32 -2145834320, i32 -2145834221, i32 -2145834115, i32 -2145834013, i32 -2145833980, i32 -2145833907, i32 -2145833839, i32 -2145837997, i32 -2145837938, i32 -2145837885, i32 -2145837854, i32 -2145837823, i32 -2145837802, i32 -2145837780, i32 -2145837731, i32 -2145837710, i32 -2145833783, i32 -2145833694, i32 -2145833573, i32 -2145833474, i32 -2145833368, i32 -2145833266, i32 -2145833233, i32 -2145833150, i32 -2145833061, i32 -2145832940, i32 -2145832840, i32 -2145832814, i32 -2145832711, i32 -2145832685, i32 -2145837452, i32 -2145837385, i32 -2145837360, i32 -2145837296, i32 -2145837214, i32 -2145837191, i32 -2145837166, i32 -2145837141}
!1964 = !DILocation(line: 692, column: 2, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 692, column: 2)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 692, column: 2)
!1967 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 692, column: 2)
!1968 = !{i32 -2145835953, i32 -2145835937}
!1969 = !DILocation(line: 694, column: 2, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 694, column: 2)
!1971 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 694, column: 2)
!1972 = !DILocation(line: 694, column: 2, scope: !1971)
!1973 = !DILocation(line: 694, column: 2, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 694, column: 2)
!1975 = !DILocation(line: 695, column: 6, scope: !1471)
!1976 = !DILocation(line: 695, column: 17, scope: !1471)
!1977 = !{!1009, !1011, i64 260}
!1978 = !DILocation(line: 507, column: 15, scope: !1471)
!1979 = !DILocation(line: 697, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 696, column: 2)
!1981 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 696, column: 2)
!1982 = !DILocation(line: 697, column: 3, scope: !1980)
!1983 = !DILocation(line: 697, column: 17, scope: !1980)
!1984 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 711, column: 2, scope: !1560)
!1986 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1985)
!1987 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1985)
!1988 = !DILocation(line: 711, column: 2, scope: !1560)
!1989 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 711, column: 2, scope: !1560)
!1991 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1990)
!1992 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1990)
!1993 = !DILocation(line: 711, column: 2, scope: !1561)
!1994 = !DILocation(line: 711, column: 2, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 711, column: 2)
!1996 = !{!1009, !1014, i64 250}
!1997 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 711, column: 2, scope: !1557)
!2000 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1998)
!2001 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1998)
!2002 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1999)
!2003 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1999)
!2004 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1999)
!2005 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1999)
!2006 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1999)
!2007 = !DILocation(line: 711, column: 2, scope: !1557)
!2008 = !{i32 -2145830281, i32 -2145830268, i32 -2145830243, i32 -2145830219, i32 -2145830194, i32 -2145830119, i32 -2145830094, i32 -2145829950, i32 -2145826784, i32 -2145826695, i32 -2145826574, i32 -2145826479, i32 -2145826378, i32 -2145826351, i32 -2145826268, i32 -2145826179, i32 -2145826058, i32 -2145825958, i32 -2145825852, i32 -2145825744, i32 -2145829662, i32 -2145829609, i32 -2145829578, i32 -2145829547, i32 -2145829526, i32 -2145829504, i32 -2145829455, i32 -2145829434, i32 -2145825661, i32 -2145825572, i32 -2145825451, i32 -2145825352, i32 -2145825246, i32 -2145825144, i32 -2145825111, i32 -2145825038, i32 -2145824970, i32 -2145829130, i32 -2145829071, i32 -2145829018, i32 -2145828987, i32 -2145828956, i32 -2145828935, i32 -2145828913, i32 -2145828864, i32 -2145828843, i32 -2145824917, i32 -2145824828, i32 -2145824707, i32 -2145824608, i32 -2145824502, i32 -2145824400, i32 -2145824367, i32 -2145824284, i32 -2145824195, i32 -2145824074, i32 -2145823974, i32 -2145823948, i32 -2145823845, i32 -2145823819, i32 -2145828585, i32 -2145828518, i32 -2145828493, i32 -2145828429, i32 -2145828347, i32 -2145828324, i32 -2145828299, i32 -2145828274}
!2009 = !DILocation(line: 711, column: 2, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 711, column: 2)
!2011 = !{i32 -2145827500, i32 -2145827483}
!2012 = !DILocation(line: 712, column: 2, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 712, column: 2)
!2014 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 712, column: 2)
!2015 = !DILocation(line: 712, column: 2, scope: !2014)
!2016 = !DILocation(line: 712, column: 2, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 712, column: 2)
!2018 = !DILocation(line: 723, column: 2, scope: !1471)
!2019 = !DILocation(line: 736, column: 2, scope: !1471)
!2020 = !DILocation(line: 0, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 544, column: 10)
!2022 = !DILocation(line: 737, column: 1, scope: !1471)
!2023 = !DILocation(line: 104, column: 65, scope: !1616)
!2024 = !DILocation(line: 106, column: 41, scope: !1616)
!2025 = !DILocation(line: 106, column: 2, scope: !1616)
!2026 = distinct !DISubprogram(name: "netif_alloc_rxpkts", scope: !3, file: !3, line: 121, type: !671, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032}
!2028 = !DILocalVariable(name: "argp", arg: 1, scope: !2026, file: !3, line: 121, type: !25)
!2029 = !DILocalVariable(name: "nb", arg: 2, scope: !2026, file: !3, line: 121, type: !122)
!2030 = !DILocalVariable(name: "count", arg: 3, scope: !2026, file: !3, line: 122, type: !27)
!2031 = !DILocalVariable(name: "lwip_data", scope: !2026, file: !3, line: 124, type: !861)
!2032 = !DILocalVariable(name: "i", scope: !2026, file: !3, line: 125, type: !27)
!2033 = !DILocation(line: 121, column: 42, scope: !2026)
!2034 = !DILocation(line: 121, column: 66, scope: !2026)
!2035 = !DILocation(line: 122, column: 17, scope: !2026)
!2036 = !DILocation(line: 127, column: 2, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 127, column: 2)
!2038 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 127, column: 2)
!2039 = !DILocation(line: 127, column: 2, scope: !2038)
!2040 = !DILocation(line: 132, column: 40, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 131, column: 30)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 131, column: 2)
!2043 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 131, column: 2)
!2044 = !DILocation(line: 125, column: 11, scope: !2026)
!2045 = !DILocation(line: 131, column: 16, scope: !2042)
!2046 = !DILocation(line: 131, column: 2, scope: !2043)
!2047 = !DILocation(line: 127, column: 2, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 127, column: 2)
!2049 = !DILocation(line: 134, column: 28, scope: !2041)
!2050 = !{!1723, !1014, i64 22}
!2051 = !DILocation(line: 134, column: 8, scope: !2041)
!2052 = !DILocation(line: 135, column: 28, scope: !2041)
!2053 = !{!1723, !1014, i64 20}
!2054 = !DILocation(line: 132, column: 11, scope: !2041)
!2055 = !DILocation(line: 132, column: 3, scope: !2041)
!2056 = !DILocation(line: 132, column: 9, scope: !2041)
!2057 = !DILocation(line: 136, column: 8, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 136, column: 7)
!2059 = !DILocation(line: 136, column: 7, scope: !2041)
!2060 = !DILocation(line: 131, column: 25, scope: !2042)
!2061 = distinct !{!2061, !2046, !2062}
!2062 = !DILocation(line: 140, column: 2, scope: !2043)
!2063 = !DILocation(line: 142, column: 2, scope: !2026)
!2064 = !DILocation(line: 0, scope: !2042)
!2065 = distinct !DISubprogram(name: "uknetdev_input", scope: !3, file: !3, line: 312, type: !4, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2066)
!2066 = !{!2067, !2068, !2069}
!2067 = !DILocalVariable(name: "dev", arg: 1, scope: !2065, file: !3, line: 312, type: !6)
!2068 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2065, file: !3, line: 313, type: !27)
!2069 = !DILocalVariable(name: "argp", arg: 3, scope: !2065, file: !3, line: 313, type: !25)
!2070 = !DILocation(line: 312, column: 46, scope: !2065)
!2071 = !DILocation(line: 313, column: 16, scope: !2065)
!2072 = !DILocation(line: 313, column: 32, scope: !2065)
!2073 = !DILocalVariable(name: "val", arg: 1, scope: !2074, file: !2075, line: 88, type: !176)
!2074 = distinct !DISubprogram(name: "wrpkru", scope: !2075, file: !2075, line: 88, type: !2076, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2078)
!2075 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !176}
!2078 = !{!2073}
!2079 = !DILocation(line: 88, column: 67, scope: !2074, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 316, column: 2, scope: !2065)
!2081 = !DILocation(line: 91, column: 2, scope: !2074, inlinedAt: !2080)
!2082 = !{i32 50100}
!2083 = !DILocation(line: 97, column: 1, scope: !2074, inlinedAt: !2080)
!2084 = !DILocalVariable(name: "dev", arg: 1, scope: !2085, file: !3, line: 217, type: !6)
!2085 = distinct !DISubprogram(name: "_uknetdev_input", scope: !3, file: !3, line: 217, type: !4, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2086)
!2086 = !{!2084, !2087, !2088, !2089, !2095}
!2087 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2085, file: !3, line: 218, type: !27)
!2088 = !DILocalVariable(name: "argp", arg: 3, scope: !2085, file: !3, line: 218, type: !25)
!2089 = !DILocalVariable(name: "tid", scope: !2090, file: !3, line: 220, type: !176)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 220, column: 2)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 220, column: 2)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 220, column: 2)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 220, column: 2)
!2094 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 220, column: 2)
!2095 = !DILocalVariable(name: "_arg3", scope: !2090, file: !3, line: 220, type: !841)
!2096 = !DILocation(line: 217, column: 40, scope: !2085, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 318, column: 2, scope: !2065)
!2098 = !DILocation(line: 218, column: 16, scope: !2085, inlinedAt: !2097)
!2099 = !DILocation(line: 218, column: 32, scope: !2085, inlinedAt: !2097)
!2100 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 220, column: 2, scope: !2093, inlinedAt: !2097)
!2102 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2101)
!2103 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2101)
!2104 = !DILocation(line: 220, column: 2, scope: !2093, inlinedAt: !2097)
!2105 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 220, column: 2, scope: !2093, inlinedAt: !2097)
!2107 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2106)
!2108 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2106)
!2109 = !DILocation(line: 220, column: 2, scope: !2094, inlinedAt: !2097)
!2110 = !DILocation(line: 220, column: 2, scope: !2111, inlinedAt: !2097)
!2111 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 220, column: 2)
!2112 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 220, column: 2, scope: !2090, inlinedAt: !2097)
!2115 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2113)
!2116 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2113)
!2117 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2114)
!2118 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2114)
!2119 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2114)
!2120 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2114)
!2121 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2114)
!2122 = !DILocation(line: 220, column: 2, scope: !2090, inlinedAt: !2097)
!2123 = !{i32 -2146015391, i32 -2146015378, i32 -2146015353, i32 -2146015329, i32 -2146015304, i32 -2146015229, i32 -2146015204, i32 -2146015060, i32 -2146012763, i32 -2146012674, i32 -2146012553, i32 -2146012458, i32 -2146012357, i32 -2146012330, i32 -2146012247, i32 -2146012158, i32 -2146012037, i32 -2146011937, i32 -2146011831, i32 -2146011723, i32 -2146014730, i32 -2146014677, i32 -2146014646, i32 -2146014615, i32 -2146014594, i32 -2146014572, i32 -2146014523, i32 -2146014502, i32 -2146014399, i32 -2146011640, i32 -2146011551, i32 -2146011430, i32 -2146011331, i32 -2146011225, i32 -2146011123, i32 -2146011090, i32 -2146011017, i32 -2146010949, i32 -2146014139, i32 -2146014086, i32 -2146014055, i32 -2146014024, i32 -2146014003, i32 -2146013981, i32 -2146013932, i32 -2146013911, i32 -2146010897, i32 -2146010808, i32 -2146010687, i32 -2146010588, i32 -2146010482, i32 -2146010380, i32 -2146010347, i32 -2146010264, i32 -2146010175, i32 -2146010054, i32 -2146009954, i32 -2146009928, i32 -2146009825, i32 -2146009799, i32 -2146013653, i32 -2146013586, i32 -2146013561, i32 -2146013497, i32 -2146013381, i32 -2146013356, i32 -2146013331}
!2124 = !DILocation(line: 221, column: 1, scope: !2085, inlinedAt: !2097)
!2125 = !DILocation(line: 319, column: 1, scope: !2065)
!2126 = distinct !DISubprogram(name: "uknetdev_output", scope: !3, file: !3, line: 145, type: !802, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2142, !2143, !2150, !2151}
!2128 = !DILocalVariable(name: "nf", arg: 1, scope: !2126, file: !3, line: 145, type: !733)
!2129 = !DILocalVariable(name: "p", arg: 2, scope: !2126, file: !3, line: 145, type: !779)
!2130 = !DILocalVariable(name: "dev", scope: !2126, file: !3, line: 147, type: !6)
!2131 = !DILocalVariable(name: "lwip_data", scope: !2126, file: !3, line: 148, type: !861)
!2132 = !DILocalVariable(name: "q", scope: !2126, file: !3, line: 149, type: !779)
!2133 = !DILocalVariable(name: "nb", scope: !2126, file: !3, line: 150, type: !18)
!2134 = !DILocalVariable(name: "wpos", scope: !2126, file: !3, line: 151, type: !306)
!2135 = !DILocalVariable(name: "ret", scope: !2126, file: !3, line: 152, type: !15)
!2136 = !DILocalVariable(name: "tid", scope: !2137, file: !3, line: 158, type: !176)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 158, column: 2)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 158, column: 2)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 158, column: 2)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 158, column: 2)
!2141 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 158, column: 2)
!2142 = !DILocalVariable(name: "_ret", scope: !2137, file: !3, line: 158, type: !841)
!2143 = !DILocalVariable(name: "tid", scope: !2144, file: !3, line: 192, type: !176)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 192, column: 3)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 192, column: 3)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 192, column: 3)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 192, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 192, column: 3)
!2149 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 191, column: 5)
!2150 = !DILocalVariable(name: "_ret", scope: !2144, file: !3, line: 192, type: !841)
!2151 = !DILocalVariable(name: "_arg3", scope: !2144, file: !3, line: 192, type: !841)
!2152 = !DILocation(line: 145, column: 44, scope: !2126)
!2153 = !DILocation(line: 145, column: 61, scope: !2126)
!2154 = !DILocation(line: 148, column: 2, scope: !2126)
!2155 = !DILocation(line: 152, column: 2, scope: !2126)
!2156 = !DILocation(line: 154, column: 2, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 154, column: 2)
!2158 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 154, column: 2)
!2159 = !DILocation(line: 154, column: 2, scope: !2158)
!2160 = !DILocation(line: 154, column: 2, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 154, column: 2)
!2162 = !DILocation(line: 155, column: 8, scope: !2126)
!2163 = !DILocation(line: 147, column: 20, scope: !2126)
!2164 = !DILocation(line: 156, column: 2, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 156, column: 2)
!2166 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 156, column: 2)
!2167 = !DILocation(line: 156, column: 2, scope: !2166)
!2168 = !DILocation(line: 156, column: 2, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 156, column: 2)
!2170 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 158, column: 2, scope: !2140)
!2172 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2171)
!2173 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2171)
!2174 = !DILocation(line: 158, column: 2, scope: !2140)
!2175 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 158, column: 2, scope: !2140)
!2177 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2176)
!2178 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2176)
!2179 = !DILocation(line: 158, column: 2, scope: !2141)
!2180 = !DILocation(line: 104, column: 65, scope: !1616, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 158, column: 2, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 158, column: 2)
!2183 = !DILocation(line: 106, column: 41, scope: !1616, inlinedAt: !2181)
!2184 = !DILocation(line: 106, column: 2, scope: !1616, inlinedAt: !2181)
!2185 = !DILocation(line: 148, column: 27, scope: !2126)
!2186 = !DILocation(line: 158, column: 2, scope: !2182)
!2187 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 158, column: 2, scope: !2137)
!2190 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2188)
!2191 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2188)
!2192 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2189)
!2193 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2189)
!2194 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2189)
!2195 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2189)
!2196 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2189)
!2197 = !DILocation(line: 158, column: 2, scope: !2137)
!2198 = !{i32 -2146033354, i32 -2146033341, i32 -2146033316, i32 -2146033292, i32 -2146033267, i32 -2146033192, i32 -2146033167, i32 -2146033023, i32 -2146029843, i32 -2146029754, i32 -2146029633, i32 -2146029538, i32 -2146029437, i32 -2146029410, i32 -2146029327, i32 -2146029238, i32 -2146029117, i32 -2146029017, i32 -2146028911, i32 -2146028803, i32 -2146032735, i32 -2146032682, i32 -2146032651, i32 -2146032620, i32 -2146032599, i32 -2146032577, i32 -2146032528, i32 -2146032507, i32 -2146028720, i32 -2146028631, i32 -2146028510, i32 -2146028411, i32 -2146028305, i32 -2146028203, i32 -2146028170, i32 -2146028097, i32 -2146028029, i32 -2146032203, i32 -2146032144, i32 -2146032091, i32 -2146032060, i32 -2146032029, i32 -2146032008, i32 -2146031986, i32 -2146031937, i32 -2146031916, i32 -2146027973, i32 -2146027884, i32 -2146027763, i32 -2146027664, i32 -2146027558, i32 -2146027456, i32 -2146027423, i32 -2146027340, i32 -2146027251, i32 -2146027130, i32 -2146027030, i32 -2146027004, i32 -2146026901, i32 -2146026875, i32 -2146031658, i32 -2146031591, i32 -2146031566, i32 -2146031502, i32 -2146031420, i32 -2146031397, i32 -2146031372, i32 -2146031347}
!2199 = !DILocation(line: 158, column: 2, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 158, column: 2)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 158, column: 2)
!2202 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 158, column: 2)
!2203 = !{i32 -2146030159, i32 -2146030143}
!2204 = !DILocation(line: 159, column: 2, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 159, column: 2)
!2206 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 159, column: 2)
!2207 = !DILocation(line: 159, column: 2, scope: !2206)
!2208 = !DILocation(line: 159, column: 2, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 159, column: 2)
!2210 = !DILocation(line: 161, column: 38, scope: !2126)
!2211 = !DILocation(line: 163, column: 26, scope: !2126)
!2212 = !DILocation(line: 163, column: 6, scope: !2126)
!2213 = !DILocation(line: 164, column: 26, scope: !2126)
!2214 = !{!1723, !1014, i64 18}
!2215 = !DILocation(line: 161, column: 7, scope: !2126)
!2216 = !DILocation(line: 150, column: 20, scope: !2126)
!2217 = !DILocation(line: 166, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 166, column: 6)
!2219 = !DILocation(line: 166, column: 6, scope: !2126)
!2220 = !DILocation(line: 169, column: 6, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 169, column: 6)
!2222 = !DILocalVariable(name: "m", arg: 1, scope: !2223, file: !20, line: 475, type: !18)
!2223 = distinct !DISubprogram(name: "uk_netbuf_tailroom", scope: !20, file: !20, line: 475, type: !2224, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!43, !18}
!2226 = !{!2222}
!2227 = !DILocation(line: 475, column: 59, scope: !2223, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 169, column: 6, scope: !2221)
!2229 = !DILocation(line: 478, column: 2, scope: !2230, inlinedAt: !2228)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !20, line: 478, column: 2)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !20, line: 478, column: 2)
!2232 = !{!1120, !1010, i64 40}
!2233 = !DILocation(line: 478, column: 2, scope: !2231, inlinedAt: !2228)
!2234 = !DILocation(line: 478, column: 2, scope: !2235, inlinedAt: !2228)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !20, line: 478, column: 2)
!2236 = !DILocation(line: 479, column: 2, scope: !2237, inlinedAt: !2228)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !20, line: 479, column: 2)
!2238 = distinct !DILexicalBlock(scope: !2223, file: !20, line: 479, column: 2)
!2239 = !DILocation(line: 479, column: 2, scope: !2238, inlinedAt: !2228)
!2240 = !DILocation(line: 479, column: 2, scope: !2241, inlinedAt: !2228)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !20, line: 479, column: 2)
!2242 = !DILocation(line: 481, column: 21, scope: !2223, inlinedAt: !2228)
!2243 = !DILocation(line: 481, column: 61, scope: !2223, inlinedAt: !2228)
!2244 = !{!1120, !1122, i64 48}
!2245 = !DILocation(line: 482, column: 9, scope: !2223, inlinedAt: !2228)
!2246 = !DILocation(line: 482, column: 50, scope: !2223, inlinedAt: !2228)
!2247 = !DILocation(line: 482, column: 33, scope: !2223, inlinedAt: !2228)
!2248 = !DILocation(line: 482, column: 31, scope: !2223, inlinedAt: !2228)
!2249 = !DILocation(line: 481, column: 42, scope: !2223, inlinedAt: !2228)
!2250 = !DILocation(line: 482, column: 6, scope: !2223, inlinedAt: !2228)
!2251 = !DILocation(line: 481, column: 2, scope: !2223, inlinedAt: !2228)
!2252 = !DILocation(line: 169, column: 6, scope: !2126)
!2253 = !DILocation(line: 174, column: 3, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 169, column: 53)
!2255 = !DILocation(line: 175, column: 3, scope: !2254)
!2256 = !DILocation(line: 149, column: 15, scope: !2126)
!2257 = !DILocation(line: 151, column: 8, scope: !2126)
!2258 = !DILocation(line: 185, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 184, column: 38)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 184, column: 2)
!2261 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 184, column: 2)
!2262 = !DILocation(line: 185, column: 31, scope: !2259)
!2263 = !DILocation(line: 185, column: 28, scope: !2259)
!2264 = !DILocation(line: 185, column: 3, scope: !2259)
!2265 = !DILocation(line: 186, column: 14, scope: !2259)
!2266 = !DILocation(line: 186, column: 8, scope: !2259)
!2267 = !DILocation(line: 184, column: 32, scope: !2260)
!2268 = !{!1137, !1010, i64 0}
!2269 = !DILocation(line: 184, column: 16, scope: !2260)
!2270 = !DILocation(line: 184, column: 2, scope: !2261)
!2271 = distinct !{!2271, !2270, !2272}
!2272 = !DILocation(line: 187, column: 2, scope: !2261)
!2273 = !DILocation(line: 188, column: 15, scope: !2126)
!2274 = !DILocation(line: 188, column: 10, scope: !2126)
!2275 = !DILocation(line: 191, column: 2, scope: !2126)
!2276 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 192, column: 3, scope: !2147)
!2278 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2277)
!2279 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2277)
!2280 = !DILocation(line: 192, column: 3, scope: !2147)
!2281 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 192, column: 3, scope: !2147)
!2283 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2282)
!2284 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2282)
!2285 = !DILocation(line: 192, column: 3, scope: !2148)
!2286 = !DILocalVariable(name: "dev", arg: 1, scope: !2287, file: !1285, line: 497, type: !6)
!2287 = distinct !DISubprogram(name: "uk_netdev_tx_one", scope: !1285, file: !1285, line: 497, type: !2288, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!15, !6, !27, !18}
!2290 = !{!2286, !2291, !2292}
!2291 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2287, file: !1285, line: 497, type: !27)
!2292 = !DILocalVariable(name: "pkt", arg: 3, scope: !2287, file: !1285, line: 498, type: !18)
!2293 = !DILocation(line: 497, column: 54, scope: !2287, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 192, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 192, column: 3)
!2296 = !DILocation(line: 497, column: 68, scope: !2287, inlinedAt: !2294)
!2297 = !DILocation(line: 498, column: 26, scope: !2287, inlinedAt: !2294)
!2298 = !DILocation(line: 501, column: 2, scope: !2299, inlinedAt: !2294)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !1285, line: 501, column: 2)
!2300 = distinct !DILexicalBlock(scope: !2287, file: !1285, line: 501, column: 2)
!2301 = !{!1305, !1010, i64 0}
!2302 = !DILocation(line: 501, column: 2, scope: !2300, inlinedAt: !2294)
!2303 = !DILocation(line: 501, column: 2, scope: !2304, inlinedAt: !2294)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !1285, line: 501, column: 2)
!2305 = !DILocation(line: 503, column: 2, scope: !2306, inlinedAt: !2294)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !1285, line: 503, column: 2)
!2307 = distinct !DILexicalBlock(scope: !2287, file: !1285, line: 503, column: 2)
!2308 = !DILocation(line: 503, column: 2, scope: !2307, inlinedAt: !2294)
!2309 = !DILocation(line: 503, column: 2, scope: !2310, inlinedAt: !2294)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !1285, line: 503, column: 2)
!2311 = !DILocation(line: 504, column: 2, scope: !2312, inlinedAt: !2294)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !1285, line: 504, column: 2)
!2313 = distinct !DILexicalBlock(scope: !2287, file: !1285, line: 504, column: 2)
!2314 = !DILocation(line: 504, column: 2, scope: !2313, inlinedAt: !2294)
!2315 = !DILocation(line: 504, column: 2, scope: !2316, inlinedAt: !2294)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !1285, line: 504, column: 2)
!2317 = !DILocation(line: 507, column: 9, scope: !2287, inlinedAt: !2294)
!2318 = !DILocation(line: 507, column: 2, scope: !2287, inlinedAt: !2294)
!2319 = !DILocation(line: 152, column: 6, scope: !2126)
!2320 = !DILocation(line: 192, column: 3, scope: !2295)
!2321 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 192, column: 3, scope: !2144)
!2324 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2322)
!2325 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2322)
!2326 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2323)
!2327 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2323)
!2328 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2323)
!2329 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2323)
!2330 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2323)
!2331 = !DILocation(line: 192, column: 3, scope: !2144)
!2332 = !{i32 -2146024229, i32 -2146024216, i32 -2146024191, i32 -2146024167, i32 -2146024142, i32 -2146024067, i32 -2146024042, i32 -2146023898, i32 -2146020681, i32 -2146020592, i32 -2146020471, i32 -2146020376, i32 -2146020275, i32 -2146020248, i32 -2146020165, i32 -2146020076, i32 -2146019955, i32 -2146019855, i32 -2146019749, i32 -2146019641, i32 -2146023568, i32 -2146023515, i32 -2146023484, i32 -2146023453, i32 -2146023432, i32 -2146023410, i32 -2146023361, i32 -2146023340, i32 -2146023237, i32 -2146019558, i32 -2146019469, i32 -2146019348, i32 -2146019249, i32 -2146019143, i32 -2146019041, i32 -2146019008, i32 -2146018935, i32 -2146018867, i32 -2146023047, i32 -2146022988, i32 -2146022935, i32 -2146022904, i32 -2146022873, i32 -2146022852, i32 -2146022830, i32 -2146022781, i32 -2146022760, i32 -2146018815, i32 -2146018726, i32 -2146018605, i32 -2146018506, i32 -2146018400, i32 -2146018298, i32 -2146018265, i32 -2146018182, i32 -2146018093, i32 -2146017972, i32 -2146017872, i32 -2146017846, i32 -2146017743, i32 -2146017717, i32 -2146022502, i32 -2146022435, i32 -2146022410, i32 -2146022346, i32 -2146022264, i32 -2146022241, i32 -2146022216, i32 -2146022191}
!2333 = !DILocation(line: 192, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 192, column: 3)
!2335 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 192, column: 3)
!2336 = !{i32 -2146021153, i32 -2146021136}
!2337 = !DILocation(line: 194, column: 11, scope: !2126)
!2338 = !DILocation(line: 194, column: 2, scope: !2149)
!2339 = distinct !{!2339, !2275, !2340}
!2340 = !DILocation(line: 194, column: 41, scope: !2126)
!2341 = !DILocation(line: 195, column: 6, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 195, column: 6)
!2343 = !DILocation(line: 195, column: 6, scope: !2126)
!2344 = !DILocation(line: 204, column: 3, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 195, column: 25)
!2346 = !DILocation(line: 205, column: 3, scope: !2345)
!2347 = !DILocation(line: 0, scope: !2218)
!2348 = !DILocation(line: 212, column: 1, scope: !2126)
!2349 = distinct !DISubprogram(name: "uknetdev_updown", scope: !3, file: !3, line: 399, type: !814, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2361, !2362, !2372, !2373, !2380, !2381, !2387, !2388, !2389, !2390}
!2351 = !DILocalVariable(name: "nf", arg: 1, scope: !2349, file: !3, line: 399, type: !733)
!2352 = !DILocalVariable(name: "dev", scope: !2349, file: !3, line: 401, type: !6)
!2353 = !DILocalVariable(name: "ret", scope: !2349, file: !3, line: 402, type: !15)
!2354 = !DILocalVariable(name: "lwip_data", scope: !2349, file: !3, line: 403, type: !861)
!2355 = !DILocalVariable(name: "tid", scope: !2356, file: !3, line: 409, type: !176)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 409, column: 2)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 409, column: 2)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 409, column: 2)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 409, column: 2)
!2360 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 409, column: 2)
!2361 = !DILocalVariable(name: "_ret", scope: !2356, file: !3, line: 409, type: !841)
!2362 = !DILocalVariable(name: "tid", scope: !2363, file: !3, line: 415, type: !176)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 415, column: 4)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 415, column: 4)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 415, column: 4)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 415, column: 4)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 415, column: 4)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 414, column: 65)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 414, column: 7)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 413, column: 33)
!2371 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 413, column: 6)
!2372 = !DILocalVariable(name: "_ret", scope: !2363, file: !3, line: 415, type: !841)
!2373 = !DILocalVariable(name: "tid", scope: !2374, file: !3, line: 449, type: !176)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 449, column: 4)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 449, column: 4)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 449, column: 4)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 449, column: 4)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 449, column: 4)
!2379 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 443, column: 10)
!2380 = !DILocalVariable(name: "_ret", scope: !2374, file: !3, line: 449, type: !841)
!2381 = !DILocalVariable(name: "tid", scope: !2382, file: !3, line: 452, type: !176)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 452, column: 4)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 452, column: 4)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 452, column: 4)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 452, column: 4)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 452, column: 4)
!2387 = !DILocalVariable(name: "_ret", scope: !2382, file: !3, line: 452, type: !841)
!2388 = !DILocalVariable(name: "_arg3", scope: !2382, file: !3, line: 452, type: !841)
!2389 = !DILocalVariable(name: "_arg4", scope: !2382, file: !3, line: 452, type: !841)
!2390 = !DILocalVariable(name: "_arg5", scope: !2382, file: !3, line: 452, type: !841)
!2391 = !DILocation(line: 399, column: 43, scope: !2349)
!2392 = !DILocation(line: 402, column: 2, scope: !2349)
!2393 = !DILocation(line: 403, column: 2, scope: !2349)
!2394 = !DILocation(line: 405, column: 2, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 405, column: 2)
!2396 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 405, column: 2)
!2397 = !DILocation(line: 405, column: 2, scope: !2396)
!2398 = !DILocation(line: 405, column: 2, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 405, column: 2)
!2400 = !DILocation(line: 406, column: 8, scope: !2349)
!2401 = !DILocation(line: 401, column: 20, scope: !2349)
!2402 = !DILocation(line: 407, column: 2, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 407, column: 2)
!2404 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 407, column: 2)
!2405 = !DILocation(line: 407, column: 2, scope: !2404)
!2406 = !DILocation(line: 407, column: 2, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 407, column: 2)
!2408 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 409, column: 2, scope: !2359)
!2410 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2409)
!2411 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2409)
!2412 = !DILocation(line: 409, column: 2, scope: !2359)
!2413 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 409, column: 2, scope: !2359)
!2415 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2414)
!2416 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2414)
!2417 = !DILocation(line: 409, column: 2, scope: !2360)
!2418 = !DILocation(line: 104, column: 65, scope: !1616, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 409, column: 2, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 409, column: 2)
!2421 = !DILocation(line: 106, column: 41, scope: !1616, inlinedAt: !2419)
!2422 = !DILocation(line: 106, column: 2, scope: !1616, inlinedAt: !2419)
!2423 = !DILocation(line: 403, column: 28, scope: !2349)
!2424 = !DILocation(line: 409, column: 2, scope: !2420)
!2425 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 409, column: 2, scope: !2356)
!2428 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2426)
!2429 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2426)
!2430 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2427)
!2431 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2427)
!2432 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2427)
!2433 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2427)
!2434 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2427)
!2435 = !DILocation(line: 409, column: 2, scope: !2356)
!2436 = !{i32 -2145950546, i32 -2145950533, i32 -2145950508, i32 -2145950484, i32 -2145950459, i32 -2145950384, i32 -2145950359, i32 -2145950215, i32 -2145947035, i32 -2145946946, i32 -2145946825, i32 -2145946730, i32 -2145946629, i32 -2145946602, i32 -2145946519, i32 -2145946430, i32 -2145946309, i32 -2145946209, i32 -2145946103, i32 -2145945995, i32 -2145949927, i32 -2145949874, i32 -2145949843, i32 -2145949812, i32 -2145949791, i32 -2145949769, i32 -2145949720, i32 -2145949699, i32 -2145945912, i32 -2145945823, i32 -2145945702, i32 -2145945603, i32 -2145945497, i32 -2145945395, i32 -2145945362, i32 -2145945289, i32 -2145945221, i32 -2145949395, i32 -2145949336, i32 -2145949283, i32 -2145949252, i32 -2145949221, i32 -2145949200, i32 -2145949178, i32 -2145949129, i32 -2145949108, i32 -2145945165, i32 -2145945076, i32 -2145944955, i32 -2145944856, i32 -2145944750, i32 -2145944648, i32 -2145944615, i32 -2145944532, i32 -2145944443, i32 -2145944322, i32 -2145944222, i32 -2145944196, i32 -2145944093, i32 -2145944067, i32 -2145948850, i32 -2145948783, i32 -2145948758, i32 -2145948694, i32 -2145948612, i32 -2145948589, i32 -2145948564, i32 -2145948539}
!2437 = !DILocation(line: 409, column: 2, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 409, column: 2)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 409, column: 2)
!2440 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 409, column: 2)
!2441 = !{i32 -2145947351, i32 -2145947335}
!2442 = !DILocation(line: 0, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 466, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 461, column: 9)
!2445 = !DILocation(line: 413, column: 10, scope: !2371)
!2446 = !DILocation(line: 413, column: 16, scope: !2371)
!2447 = !{!1723, !1039, i64 24}
!2448 = !DILocation(line: 413, column: 6, scope: !2349)
!2449 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 0, scope: !2377)
!2451 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2450)
!2452 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2450)
!2453 = !DILocation(line: 0, scope: !2377)
!2454 = !DILocation(line: 414, column: 7, scope: !2370)
!2455 = !DILocation(line: 415, column: 4, scope: !2366)
!2456 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 415, column: 4, scope: !2366)
!2458 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2457)
!2459 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2457)
!2460 = !DILocation(line: 415, column: 4, scope: !2367)
!2461 = !DILocation(line: 415, column: 4, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 415, column: 4)
!2463 = !DILocation(line: 402, column: 6, scope: !2349)
!2464 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 415, column: 4, scope: !2363)
!2467 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2465)
!2468 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2465)
!2469 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2466)
!2470 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2466)
!2471 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2466)
!2472 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2466)
!2473 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2466)
!2474 = !DILocation(line: 415, column: 4, scope: !2363)
!2475 = !{i32 -2145941844, i32 -2145941831, i32 -2145941806, i32 -2145941782, i32 -2145941757, i32 -2145941682, i32 -2145941657, i32 -2145941513, i32 -2145938328, i32 -2145938239, i32 -2145938118, i32 -2145938023, i32 -2145937922, i32 -2145937895, i32 -2145937812, i32 -2145937723, i32 -2145937602, i32 -2145937502, i32 -2145937396, i32 -2145937288, i32 -2145941221, i32 -2145941168, i32 -2145941137, i32 -2145941106, i32 -2145941085, i32 -2145941063, i32 -2145941014, i32 -2145940993, i32 -2145937205, i32 -2145937116, i32 -2145936995, i32 -2145936896, i32 -2145936790, i32 -2145936688, i32 -2145936655, i32 -2145936582, i32 -2145936514, i32 -2145940686, i32 -2145940627, i32 -2145940574, i32 -2145940543, i32 -2145940512, i32 -2145940491, i32 -2145940469, i32 -2145940420, i32 -2145940399, i32 -2145936453, i32 -2145936364, i32 -2145936243, i32 -2145936144, i32 -2145936038, i32 -2145935936, i32 -2145935903, i32 -2145935820, i32 -2145935731, i32 -2145935610, i32 -2145935510, i32 -2145935484, i32 -2145935381, i32 -2145935355, i32 -2145940141, i32 -2145940074, i32 -2145940049, i32 -2145939985, i32 -2145939903, i32 -2145939880, i32 -2145939855, i32 -2145939830}
!2476 = !DILocation(line: 415, column: 4, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 415, column: 4)
!2478 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 415, column: 4)
!2479 = !{i32 -2145938815, i32 -2145938798}
!2480 = !DILocation(line: 434, column: 8, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 434, column: 8)
!2482 = !DILocation(line: 434, column: 12, scope: !2481)
!2483 = !DILocation(line: 434, column: 8, scope: !2368)
!2484 = !DILocation(line: 441, column: 5, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 434, column: 18)
!2486 = !DILocation(line: 442, column: 4, scope: !2485)
!2487 = !DILocation(line: 449, column: 4, scope: !2377)
!2488 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 449, column: 4, scope: !2377)
!2490 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2489)
!2491 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2489)
!2492 = !DILocation(line: 449, column: 4, scope: !2378)
!2493 = !DILocation(line: 449, column: 4, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 449, column: 4)
!2495 = !{!1723, !1010, i64 48}
!2496 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 449, column: 4, scope: !2374)
!2499 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2497)
!2500 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2497)
!2501 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2498)
!2502 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2498)
!2503 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2498)
!2504 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2498)
!2505 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2498)
!2506 = !DILocation(line: 449, column: 4, scope: !2374)
!2507 = !{i32 -2145933333, i32 -2145933320, i32 -2145933295, i32 -2145933271, i32 -2145933246, i32 -2145933171, i32 -2145933146, i32 -2145933002, i32 -2145929811, i32 -2145929722, i32 -2145929601, i32 -2145929506, i32 -2145929405, i32 -2145929378, i32 -2145929295, i32 -2145929206, i32 -2145929085, i32 -2145928985, i32 -2145928879, i32 -2145928771, i32 -2145932719, i32 -2145932666, i32 -2145932635, i32 -2145932604, i32 -2145932583, i32 -2145932561, i32 -2145932512, i32 -2145932491, i32 -2145928688, i32 -2145928599, i32 -2145928478, i32 -2145928379, i32 -2145928273, i32 -2145928171, i32 -2145928138, i32 -2145928065, i32 -2145927997, i32 -2145932189, i32 -2145932130, i32 -2145932077, i32 -2145932046, i32 -2145932015, i32 -2145931994, i32 -2145931972, i32 -2145931923, i32 -2145931902, i32 -2145927941, i32 -2145927852, i32 -2145927731, i32 -2145927632, i32 -2145927526, i32 -2145927424, i32 -2145927391, i32 -2145927308, i32 -2145927219, i32 -2145927098, i32 -2145926998, i32 -2145926972, i32 -2145926869, i32 -2145926843, i32 -2145931644, i32 -2145931577, i32 -2145931552, i32 -2145931488, i32 -2145931406, i32 -2145931383, i32 -2145931358, i32 -2145931333}
!2508 = !DILocation(line: 449, column: 4, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 449, column: 4)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 449, column: 4)
!2511 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 449, column: 4)
!2512 = !{i32 -2145930179, i32 -2145930163}
!2513 = !DILocation(line: 451, column: 4, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 451, column: 4)
!2515 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 451, column: 4)
!2516 = !DILocation(line: 451, column: 4, scope: !2515)
!2517 = !DILocation(line: 451, column: 4, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 451, column: 4)
!2519 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 452, column: 4, scope: !2385)
!2521 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2520)
!2522 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2520)
!2523 = !DILocation(line: 452, column: 4, scope: !2385)
!2524 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 452, column: 4, scope: !2385)
!2526 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2525)
!2527 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2525)
!2528 = !DILocation(line: 452, column: 4, scope: !2386)
!2529 = !DILocation(line: 452, column: 4, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 452, column: 4)
!2531 = !{!1723, !1010, i64 32}
!2532 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 452, column: 4, scope: !2382)
!2535 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2533)
!2536 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2533)
!2537 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2534)
!2538 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2534)
!2539 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2534)
!2540 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2534)
!2541 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2534)
!2542 = !DILocation(line: 452, column: 4, scope: !2382)
!2543 = !{i32 -2145923745, i32 -2145923732, i32 -2145923707, i32 -2145923683, i32 -2145923658, i32 -2145923583, i32 -2145923558, i32 -2145923414, i32 -2145923389, i32 -2145919788, i32 -2145919699, i32 -2145919578, i32 -2145919483, i32 -2145919382, i32 -2145919355, i32 -2145919272, i32 -2145919183, i32 -2145919062, i32 -2145918962, i32 -2145918856, i32 -2145918748, i32 -2145923013, i32 -2145922960, i32 -2145922929, i32 -2145922898, i32 -2145922877, i32 -2145922855, i32 -2145922806, i32 -2145922785, i32 -2145922682, i32 -2145922650, i32 -2145918665, i32 -2145918576, i32 -2145918455, i32 -2145918356, i32 -2145918250, i32 -2145918148, i32 -2145918115, i32 -2145918042, i32 -2145917974, i32 -2145922460, i32 -2145922401, i32 -2145922348, i32 -2145922317, i32 -2145922286, i32 -2145922265, i32 -2145922243, i32 -2145922194, i32 -2145922173, i32 -2145917916, i32 -2145917827, i32 -2145917706, i32 -2145917607, i32 -2145917501, i32 -2145917399, i32 -2145917366, i32 -2145917283, i32 -2145917194, i32 -2145917073, i32 -2145916973, i32 -2145916947, i32 -2145916844, i32 -2145916818, i32 -2145921915, i32 -2145921890, i32 -2145921823, i32 -2145921798, i32 -2145921734, i32 -2145921652, i32 -2145921629, i32 -2145921604, i32 -2145921579}
!2544 = !DILocation(line: 452, column: 4, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 452, column: 4)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 452, column: 4)
!2547 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 452, column: 4)
!2548 = !{i32 -2145920288, i32 -2145920272}
!2549 = !DILocation(line: 466, column: 7, scope: !2444)
!2550 = !DILocalVariable(name: "dev", arg: 1, scope: !2551, file: !1285, line: 407, type: !6)
!2551 = distinct !DISubprogram(name: "uk_netdev_rxq_intr_disable", scope: !1285, file: !1285, line: 407, type: !576, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2552)
!2552 = !{!2550, !2553}
!2553 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2551, file: !1285, line: 408, type: !27)
!2554 = !DILocation(line: 407, column: 64, scope: !2551, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 467, column: 4, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 466, column: 65)
!2557 = !DILocation(line: 408, column: 20, scope: !2551, inlinedAt: !2555)
!2558 = !DILocation(line: 411, column: 2, scope: !2559, inlinedAt: !2555)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !1285, line: 411, column: 2)
!2560 = distinct !DILexicalBlock(scope: !2551, file: !1285, line: 411, column: 2)
!2561 = !{!1305, !1010, i64 24}
!2562 = !DILocation(line: 411, column: 2, scope: !2560, inlinedAt: !2555)
!2563 = !DILocation(line: 411, column: 2, scope: !2564, inlinedAt: !2555)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !1285, line: 411, column: 2)
!2565 = !DILocation(line: 412, column: 2, scope: !2566, inlinedAt: !2555)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !1285, line: 412, column: 2)
!2567 = distinct !DILexicalBlock(scope: !2551, file: !1285, line: 412, column: 2)
!2568 = !DILocation(line: 412, column: 2, scope: !2567, inlinedAt: !2555)
!2569 = !DILocation(line: 412, column: 2, scope: !2570, inlinedAt: !2555)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !1285, line: 412, column: 2)
!2571 = !DILocation(line: 413, column: 2, scope: !2572, inlinedAt: !2555)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !1285, line: 413, column: 2)
!2573 = distinct !DILexicalBlock(scope: !2551, file: !1285, line: 413, column: 2)
!2574 = !DILocation(line: 413, column: 2, scope: !2573, inlinedAt: !2555)
!2575 = !DILocation(line: 413, column: 2, scope: !2576, inlinedAt: !2555)
!2576 = distinct !DILexicalBlock(scope: !2572, file: !1285, line: 413, column: 2)
!2577 = !DILocation(line: 415, column: 2, scope: !2578, inlinedAt: !2555)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !1285, line: 415, column: 2)
!2579 = distinct !DILexicalBlock(scope: !2551, file: !1285, line: 415, column: 2)
!2580 = !DILocation(line: 415, column: 2, scope: !2579, inlinedAt: !2555)
!2581 = !DILocation(line: 415, column: 2, scope: !2582, inlinedAt: !2555)
!2582 = distinct !DILexicalBlock(scope: !2578, file: !1285, line: 415, column: 2)
!2583 = !DILocation(line: 417, column: 6, scope: !2584, inlinedAt: !2555)
!2584 = distinct !DILexicalBlock(scope: !2551, file: !1285, line: 417, column: 6)
!2585 = !{!2586, !1010, i64 8}
!2586 = !{!"uk_netdev_ops", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72, !1010, i64 80, !1010, i64 88, !1010, i64 96, !1010, i64 104, !1010, i64 112, !1010, i64 120}
!2587 = !DILocation(line: 417, column: 6, scope: !2551, inlinedAt: !2555)
!2588 = !DILocation(line: 419, column: 9, scope: !2551, inlinedAt: !2555)
!2589 = !DILocation(line: 419, column: 2, scope: !2551, inlinedAt: !2555)
!2590 = !DILocation(line: 420, column: 1, scope: !2551, inlinedAt: !2555)
!2591 = !DILocation(line: 472, column: 3, scope: !2556)
!2592 = !DILocation(line: 475, column: 1, scope: !2349)
!2593 = !DILocation(line: 745, column: 48, scope: !884)
!2594 = !DILocation(line: 748, column: 27, scope: !884)
!2595 = !DILocation(line: 749, column: 27, scope: !884)
!2596 = !DILocation(line: 750, column: 27, scope: !884)
!2597 = !DILocation(line: 771, column: 17, scope: !884)
!2598 = !DILocalVariable(name: "a", arg: 1, scope: !2599, file: !56, line: 173, type: !54)
!2599 = distinct !DISubprogram(name: "uk_calloc", scope: !56, file: !56, line: 173, type: !68, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2600)
!2600 = !{!2598, !2601, !2602}
!2601 = !DILocalVariable(name: "nmemb", arg: 2, scope: !2599, file: !56, line: 174, type: !63)
!2602 = !DILocalVariable(name: "size", arg: 3, scope: !2599, file: !56, line: 174, type: !63)
!2603 = !DILocation(line: 173, column: 48, scope: !2599, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 771, column: 7, scope: !884)
!2605 = !DILocation(line: 174, column: 17, scope: !2599, inlinedAt: !2604)
!2606 = !DILocation(line: 174, column: 31, scope: !2599, inlinedAt: !2604)
!2607 = !DILocation(line: 176, column: 6, scope: !2608, inlinedAt: !2604)
!2608 = distinct !DILexicalBlock(scope: !2599, file: !56, line: 176, column: 6)
!2609 = !DILocation(line: 176, column: 6, scope: !2599, inlinedAt: !2604)
!2610 = !DILocation(line: 177, column: 3, scope: !2611, inlinedAt: !2604)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !56, line: 176, column: 20)
!2612 = !DILocation(line: 177, column: 9, scope: !2611, inlinedAt: !2604)
!2613 = !DILocation(line: 181, column: 1, scope: !2599, inlinedAt: !2604)
!2614 = !DILocation(line: 772, column: 6, scope: !884)
!2615 = !DILocalVariable(name: "a", arg: 1, scope: !2616, file: !56, line: 166, type: !54)
!2616 = distinct !DISubprogram(name: "uk_do_calloc", scope: !56, file: !56, line: 166, type: !68, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2617)
!2617 = !{!2615, !2618, !2619}
!2618 = !DILocalVariable(name: "nmemb", arg: 2, scope: !2616, file: !56, line: 167, type: !63)
!2619 = !DILocalVariable(name: "size", arg: 3, scope: !2616, file: !56, line: 167, type: !63)
!2620 = !DILocation(line: 166, column: 51, scope: !2616, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 180, column: 9, scope: !2599, inlinedAt: !2604)
!2622 = !DILocation(line: 167, column: 13, scope: !2616, inlinedAt: !2621)
!2623 = !DILocation(line: 167, column: 27, scope: !2616, inlinedAt: !2621)
!2624 = !DILocation(line: 170, column: 12, scope: !2616, inlinedAt: !2621)
!2625 = !DILocation(line: 170, column: 9, scope: !2616, inlinedAt: !2621)
!2626 = !DILocation(line: 170, column: 2, scope: !2616, inlinedAt: !2621)
!2627 = !DILocation(line: 772, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !884, file: !3, line: 772, column: 6)
!2629 = !DILocation(line: 771, column: 7, scope: !884)
!2630 = !DILocation(line: 767, column: 16, scope: !884)
!2631 = !DILocation(line: 779, column: 4, scope: !884)
!2632 = !DILocation(line: 779, column: 22, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !895, file: !3, line: 779, column: 22)
!2634 = !{i32 -2145823074}
!2635 = !DILocation(line: 779, column: 22, scope: !895)
!2636 = !{i32 -2145822970}
!2637 = !DILocation(line: 779, column: 22, scope: !884)
!2638 = !DILocation(line: 775, column: 8, scope: !884)
!2639 = !DILocation(line: 768, column: 16, scope: !884)
!2640 = !DILocation(line: 780, column: 2, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 780, column: 2)
!2642 = distinct !DILexicalBlock(scope: !884, file: !3, line: 780, column: 2)
!2643 = !DILocation(line: 780, column: 2, scope: !2642)
!2644 = !DILocation(line: 780, column: 2, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 780, column: 2)
!2646 = !DILocation(line: 782, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !884, file: !3, line: 782, column: 6)
!2648 = !DILocation(line: 782, column: 6, scope: !884)
!2649 = !DILocation(line: 783, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 782, column: 12)
!2651 = !DILocation(line: 784, column: 3, scope: !2650)
!2652 = !DILocation(line: 0, scope: !2628)
!2653 = !DILocation(line: 788, column: 1, scope: !884)
!2654 = !DILocation(line: 497, column: 54, scope: !2287)
!2655 = !DILocation(line: 497, column: 68, scope: !2287)
!2656 = !DILocation(line: 498, column: 26, scope: !2287)
!2657 = !DILocation(line: 500, column: 2, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !1285, line: 500, column: 2)
!2659 = distinct !DILexicalBlock(scope: !2287, file: !1285, line: 500, column: 2)
!2660 = !DILocation(line: 500, column: 2, scope: !2659)
!2661 = !DILocation(line: 500, column: 2, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !1285, line: 500, column: 2)
!2663 = !DILocation(line: 501, column: 2, scope: !2299)
!2664 = !DILocation(line: 501, column: 2, scope: !2300)
!2665 = !DILocation(line: 501, column: 2, scope: !2304)
!2666 = !DILocation(line: 502, column: 2, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !1285, line: 502, column: 2)
!2668 = distinct !DILexicalBlock(scope: !2287, file: !1285, line: 502, column: 2)
!2669 = !DILocation(line: 502, column: 2, scope: !2668)
!2670 = !DILocation(line: 502, column: 2, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !1285, line: 502, column: 2)
!2672 = !DILocation(line: 503, column: 2, scope: !2306)
!2673 = !DILocation(line: 503, column: 2, scope: !2307)
!2674 = !DILocation(line: 503, column: 2, scope: !2310)
!2675 = !DILocation(line: 504, column: 2, scope: !2312)
!2676 = !DILocation(line: 504, column: 2, scope: !2313)
!2677 = !DILocation(line: 504, column: 2, scope: !2316)
!2678 = !DILocation(line: 505, column: 2, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !1285, line: 505, column: 2)
!2680 = distinct !DILexicalBlock(scope: !2287, file: !1285, line: 505, column: 2)
!2681 = !DILocation(line: 505, column: 2, scope: !2680)
!2682 = !DILocation(line: 505, column: 2, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !1285, line: 505, column: 2)
!2684 = !DILocation(line: 507, column: 9, scope: !2287)
!2685 = !DILocation(line: 507, column: 2, scope: !2287)
!2686 = distinct !DISubprogram(name: "uk_netdev_rxq_intr_enable", scope: !1285, file: !1285, line: 379, type: !576, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2687)
!2687 = !{!2688, !2689}
!2688 = !DILocalVariable(name: "dev", arg: 1, scope: !2686, file: !1285, line: 379, type: !6)
!2689 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2686, file: !1285, line: 380, type: !27)
!2690 = !DILocation(line: 379, column: 63, scope: !2686)
!2691 = !DILocation(line: 380, column: 19, scope: !2686)
!2692 = !DILocation(line: 382, column: 2, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !1285, line: 382, column: 2)
!2694 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 382, column: 2)
!2695 = !DILocation(line: 382, column: 2, scope: !2694)
!2696 = !DILocation(line: 382, column: 2, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !1285, line: 382, column: 2)
!2698 = !DILocation(line: 383, column: 2, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !1285, line: 383, column: 2)
!2700 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 383, column: 2)
!2701 = !DILocation(line: 383, column: 2, scope: !2700)
!2702 = !DILocation(line: 383, column: 2, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !1285, line: 383, column: 2)
!2704 = !DILocation(line: 384, column: 2, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !1285, line: 384, column: 2)
!2706 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 384, column: 2)
!2707 = !DILocation(line: 384, column: 2, scope: !2706)
!2708 = !DILocation(line: 384, column: 2, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !1285, line: 384, column: 2)
!2710 = !DILocation(line: 385, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !1285, line: 385, column: 2)
!2712 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 385, column: 2)
!2713 = !DILocation(line: 385, column: 2, scope: !2712)
!2714 = !DILocation(line: 385, column: 2, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !1285, line: 385, column: 2)
!2716 = !DILocation(line: 386, column: 2, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !1285, line: 386, column: 2)
!2718 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 386, column: 2)
!2719 = !DILocation(line: 386, column: 2, scope: !2718)
!2720 = !DILocation(line: 386, column: 2, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2717, file: !1285, line: 386, column: 2)
!2722 = !DILocation(line: 387, column: 2, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !1285, line: 387, column: 2)
!2724 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 387, column: 2)
!2725 = !DILocation(line: 387, column: 2, scope: !2724)
!2726 = !DILocation(line: 387, column: 2, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !1285, line: 387, column: 2)
!2728 = !DILocation(line: 389, column: 6, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2686, file: !1285, line: 389, column: 6)
!2730 = !{!2586, !1010, i64 0}
!2731 = !DILocation(line: 389, column: 6, scope: !2686)
!2732 = !DILocation(line: 391, column: 9, scope: !2686)
!2733 = !DILocation(line: 391, column: 2, scope: !2686)
!2734 = !DILocation(line: 0, scope: !2686)
!2735 = !DILocation(line: 392, column: 1, scope: !2686)
!2736 = distinct !DISubprogram(name: "_poll_netif", scope: !3, file: !3, line: 390, type: !263, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2737)
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !3, line: 390, type: !25)
!2739 = !DILocation(line: 390, column: 31, scope: !2736)
!2740 = !DILocation(line: 88, column: 67, scope: !2074, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 394, column: 2, scope: !2736)
!2742 = !DILocation(line: 91, column: 2, scope: !2074, inlinedAt: !2741)
!2743 = !DILocation(line: 97, column: 1, scope: !2074, inlinedAt: !2741)
!2744 = !DILocalVariable(name: "arg", arg: 1, scope: !2745, file: !3, line: 375, type: !25)
!2745 = distinct !DISubprogram(name: "__poll_netif", scope: !3, file: !3, line: 375, type: !263, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2746)
!2746 = !{!2744, !2747}
!2747 = !DILocalVariable(name: "tid", scope: !2748, file: !3, line: 377, type: !176)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 377, column: 2)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 377, column: 2)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 377, column: 2)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 377, column: 2)
!2752 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 377, column: 2)
!2753 = !DILocation(line: 375, column: 25, scope: !2745, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 396, column: 2, scope: !2736)
!2755 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 377, column: 2, scope: !2751, inlinedAt: !2754)
!2757 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2756)
!2758 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2756)
!2759 = !DILocation(line: 377, column: 2, scope: !2751, inlinedAt: !2754)
!2760 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 377, column: 2, scope: !2751, inlinedAt: !2754)
!2762 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2761)
!2763 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2761)
!2764 = !DILocation(line: 377, column: 2, scope: !2752, inlinedAt: !2754)
!2765 = !DILocation(line: 377, column: 2, scope: !2766, inlinedAt: !2754)
!2766 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 377, column: 2)
!2767 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 377, column: 2, scope: !2748, inlinedAt: !2754)
!2770 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2768)
!2771 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2768)
!2772 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2769)
!2773 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2769)
!2774 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2769)
!2775 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2769)
!2776 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2769)
!2777 = !DILocation(line: 377, column: 2, scope: !2748, inlinedAt: !2754)
!2778 = !{i32 -2145965948, i32 -2145965935, i32 -2145965910, i32 -2145965886, i32 -2145965861, i32 -2145965786, i32 -2145965761, i32 -2145965617, i32 -2145963411, i32 -2145963322, i32 -2145963201, i32 -2145963106, i32 -2145963005, i32 -2145962978, i32 -2145962895, i32 -2145962806, i32 -2145962685, i32 -2145962585, i32 -2145962479, i32 -2145962371, i32 -2145965329, i32 -2145965276, i32 -2145965245, i32 -2145965214, i32 -2145965193, i32 -2145965171, i32 -2145965122, i32 -2145965101, i32 -2145962288, i32 -2145962199, i32 -2145962078, i32 -2145961979, i32 -2145961873, i32 -2145961771, i32 -2145961738, i32 -2145961665, i32 -2145961597, i32 -2145964727, i32 -2145964674, i32 -2145964643, i32 -2145964612, i32 -2145964591, i32 -2145964569, i32 -2145964520, i32 -2145964499, i32 -2145961548, i32 -2145961459, i32 -2145961338, i32 -2145961239, i32 -2145961133, i32 -2145961031, i32 -2145960998, i32 -2145960915, i32 -2145960826, i32 -2145960705, i32 -2145960605, i32 -2145960579, i32 -2145960476, i32 -2145960450, i32 -2145964241, i32 -2145964174, i32 -2145964149, i32 -2145964085, i32 -2145963969, i32 -2145963944, i32 -2145963919}
!2779 = !DILocation(line: 378, column: 1, scope: !2745, inlinedAt: !2754)
!2780 = !DILocation(line: 397, column: 1, scope: !2736)
