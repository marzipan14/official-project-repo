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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br i1 %12, label %13, label %14, !dbg !995, !prof !996

; <label>:13:                                     ; preds = %3
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !997
  call void @ukplat_terminate(i32 3) #9, !dbg !997
  unreachable

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i8* %2, null, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %15, label %16, label %17, !dbg !1002, !prof !996

; <label>:16:                                     ; preds = %14
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1003
  call void @ukplat_terminate(i32 3) #9, !dbg !1003
  unreachable

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds i8, i8* %2, i64 184, !dbg !1005
  %19 = bitcast i8* %18 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !1005
  %20 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1005, !tbaa !1008
  %21 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %20, null, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
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
  unreachable

; <label>:28:                                     ; preds = %22, %178
  %29 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1016, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %30 = icmp ult i64 %29, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %30, label %36, label %31, !dbg !1029

; <label>:31:                                     ; preds = %28
  %32 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1030, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  %33 = icmp ugt i64 %32, ptrtoint ([0 x i8]* @_end to i64), !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  br i1 %33, label %36, label %34, !dbg !1034

; <label>:34:                                     ; preds = %31
  %35 = call i32 @uk_netdev_rx_one(%struct.uk_netdev* nonnull %0, i16 zeroext 0, %struct.uk_netbuf** %10) #8, !dbg !1035
  store i32 %35, i32* %5, align 4, !dbg !1035, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = load i32, i32* %5, align 4, !dbg !1062, !tbaa !1038
  br label %45

; <label>:45:                                     ; preds = %36, %34
  %46 = phi i32 [ %44, %36 ], [ %35, %34 ], !dbg !1062
  %47 = icmp slt i32 %46, 0, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  br i1 %47, label %48, label %78, !dbg !1063, !prof !996

; <label>:48:                                     ; preds = %45
  %49 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1064, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  %50 = icmp ult i64 %49, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br i1 %50, label %62, label %51, !dbg !1068

; <label>:51:                                     ; preds = %48
  %52 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1069, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  %53 = icmp ugt i64 %52, ptrtoint ([0 x i8]* @_end to i64), !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @netif_set_down(%struct.netif* nonnull %6) #10, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br label %182, !dbg !1091

; <label>:78:                                     ; preds = %45
  %79 = and i32 %46, -2147483647, !dbg !1092
  %80 = icmp eq i32 %79, 0, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  br i1 %80, label %182, label %81, !dbg !1094

; <label>:81:                                     ; preds = %78
  %82 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1095, !tbaa !1096
  %83 = icmp eq %struct.uk_netbuf* %82, null, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br i1 %83, label %84, label %85, !dbg !1108, !prof !996

; <label>:84:                                     ; preds = %81
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !1109
  call void @ukplat_terminate(i32 3) #9, !dbg !1109
  unreachable

; <label>:85:                                     ; preds = %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  %86 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %82, i64 0, i32 5, !dbg !1120
  %87 = load i8*, i8** %86, align 8, !dbg !1120, !tbaa !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %88 = icmp eq i8* %87, null, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %88, label %89, label %90, !dbg !1129, !prof !996

; <label>:89:                                     ; preds = %85
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !1130
  call void @ukplat_terminate(i32 3) #9, !dbg !1130
  unreachable

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds i8, i8* %87, i64 21, !dbg !1133
  %92 = load i8, i8* %91, align 1, !dbg !1133, !tbaa !1136
  %93 = and i8 %92, 2, !dbg !1133
  %94 = icmp eq i8 %93, 0, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  br i1 %94, label %95, label %96, !dbg !1140, !prof !996

; <label>:95:                                     ; preds = %90
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !1141
  call void @ukplat_terminate(i32 3) #9, !dbg !1141
  unreachable

; <label>:96:                                     ; preds = %90
  %97 = bitcast i8* %87 to %struct.pbuf*, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  %98 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %82, i64 0, i32 2, !dbg !1145
  %99 = bitcast i8** %98 to i64*, !dbg !1145
  %100 = load i64, i64* %99, align 8, !dbg !1145, !tbaa !1146
  %101 = getelementptr inbounds i8, i8* %87, i64 8, !dbg !1147
  %102 = bitcast i8* %101 to i64*, !dbg !1148
  store i64 %100, i64* %102, align 8, !dbg !1148, !tbaa !1149
  %103 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1150, !tbaa !1096
  %104 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %103, i64 0, i32 3, !dbg !1151
  %105 = load i16, i16* %104, align 8, !dbg !1151, !tbaa !1152
  %106 = getelementptr inbounds i8, i8* %87, i64 18, !dbg !1153
  %107 = bitcast i8* %106 to i16*, !dbg !1153
  store i16 %105, i16* %107, align 2, !dbg !1154, !tbaa !1155
  %108 = getelementptr inbounds i8, i8* %87, i64 16, !dbg !1156
  %109 = bitcast i8* %108 to i16*, !dbg !1156
  store i16 %105, i16* %109, align 8, !dbg !1157, !tbaa !1158
  %110 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1159, !tbaa !1008
  %111 = call signext i8 %110(%struct.pbuf* %97, %struct.netif* nonnull %6) #10, !dbg !1160
  %112 = icmp eq i8 %111, 0, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br i1 %112, label %178, label %113, !dbg !1163, !prof !1164

; <label>:113:                                    ; preds = %96
  %114 = icmp eq i8 %111, -1, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  br i1 %114, label %115, label %147, !dbg !1166

; <label>:115:                                    ; preds = %113
  %116 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1167, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  %117 = icmp ult i64 %116, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  br i1 %117, label %136, label %118, !dbg !1171

; <label>:118:                                    ; preds = %115
  %119 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1172, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  %120 = icmp ugt i64 %119, ptrtoint ([0 x i8]* @_end to i64), !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %120, label %136, label %121, !dbg !1176

; <label>:121:                                    ; preds = %118
  %122 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1177, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  %123 = and i64 %122, -65536, !dbg !1195
  %124 = inttoptr i64 %123 to %struct.uk_thread**, !dbg !1196
  %125 = load %struct.uk_thread*, %struct.uk_thread** %124, align 65536, !dbg !1198, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  %126 = icmp eq %struct.uk_thread* %125, null, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %126, label %127, label %128, !dbg !1204, !prof !996

; <label>:127:                                    ; preds = %121
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !1205
  call void @ukplat_terminate(i32 3) #9, !dbg !1205
  unreachable

; <label>:128:                                    ; preds = %121
  %129 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %125, i64 0, i32 9, !dbg !1207
  %130 = load %struct.uk_sched*, %struct.uk_sched** %129, align 8, !dbg !1207, !tbaa !1208
  %131 = icmp eq %struct.uk_sched* %130, null, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %131, label %132, label %133, !dbg !1217, !prof !996

; <label>:132:                                    ; preds = %128
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1218
  call void @ukplat_terminate(i32 3) #9, !dbg !1218
  unreachable

; <label>:133:                                    ; preds = %128
  %134 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %130, i64 0, i32 0, !dbg !1220
  %135 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %134, align 8, !dbg !1220, !tbaa !1221
  call void %135(%struct.uk_sched* nonnull %130) #10, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  br label %143, !dbg !1227

; <label>:136:                                    ; preds = %118, %115
  %137 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1228, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  %138 = and i64 %137, -65536, !dbg !1234
  %139 = or i64 %138, 4097, !dbg !1234
  %140 = add nsw i64 %139, -1, !dbg !1234
  %141 = inttoptr i64 %140 to i32*, !dbg !1235
  %142 = load i32, i32* %141, align 4096, !dbg !1236, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_yield\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %142, void ()* nonnull @uk_sched_yield) #7, !dbg !1238, !srcloc !1239
  br label %143

; <label>:143:                                    ; preds = %136, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %144 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %19, align 8, !dbg !1240, !tbaa !1008
  %145 = call signext i8 %144(%struct.pbuf* %97, %struct.netif* nonnull %6) #10, !dbg !1241
  %146 = icmp eq i8 %145, 0, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %146, label %178, label %147, !dbg !1244, !prof !1164

; <label>:147:                                    ; preds = %113, %143
  %148 = phi i8 [ %145, %143 ], [ %111, %113 ], !dbg !1245
  %149 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1246, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  %150 = icmp ult i64 %149, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %150, label %162, label %151, !dbg !1250

; <label>:151:                                    ; preds = %147
  %152 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1251, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  %153 = icmp ugt i64 %152, ptrtoint ([0 x i8]* @_end to i64), !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  br i1 %153, label %162, label %154, !dbg !1255

; <label>:154:                                    ; preds = %151
  %155 = load i8, i8* %24, align 2, !dbg !1256, !tbaa !1076
  %156 = sext i8 %155 to i32, !dbg !1256
  %157 = load i8, i8* %25, align 1, !dbg !1256, !tbaa !1076
  %158 = sext i8 %157 to i32, !dbg !1256
  %159 = load i8, i8* %26, align 8, !dbg !1256, !tbaa !1077
  %160 = zext i8 %159 to i32, !dbg !1256
  %161 = sext i8 %148 to i32, !dbg !1256
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__uknetdev_input.__str.5, i64 0, i64 0), i32 %156, i32 %158, i32 %160, i32 %161) #8, !dbg !1256
  br label %176, !dbg !1256

; <label>:162:                                    ; preds = %151, %147
  %163 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1258, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %164 = and i64 %163, -65536, !dbg !1264
  %165 = or i64 %164, 4097, !dbg !1264
  %166 = add nsw i64 %165, -1, !dbg !1264
  %167 = inttoptr i64 %166 to i32*, !dbg !1265
  %168 = load i32, i32* %167, align 4096, !dbg !1266, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  %169 = load i8, i8* %25, align 1, !dbg !1268, !tbaa !1076
  %170 = sext i8 %169 to i64, !dbg !1268
  %171 = load i8, i8* %26, align 8, !dbg !1268, !tbaa !1077
  %172 = zext i8 %171 to i64, !dbg !1268
  %173 = sext i8 %148 to i64, !dbg !1268
  %174 = load i8, i8* %24, align 2, !dbg !1268, !tbaa !1076
  %175 = sext i8 %174 to i64, !dbg !1268
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([46 x i8]* @__uknetdev_input.__str.6 to i64), i64 %175, i64 %170, i64 %172, i64 %173, i32 %168, void (i8*, ...)* nonnull @uk_pr_err) #7, !dbg !1268, !srcloc !1269
  br label %176

; <label>:176:                                    ; preds = %162, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %177 = load %struct.uk_netbuf*, %struct.uk_netbuf** %10, align 8, !dbg !1270, !tbaa !1096
  call void @uk_netbuf_free_single(%struct.uk_netbuf* %177) #10, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br label %178, !dbg !1272

; <label>:178:                                    ; preds = %96, %176, %143
  %179 = load i32, i32* %5, align 4, !dbg !1273, !tbaa !1038
  %180 = and i32 %179, -2147483645, !dbg !1273
  %181 = icmp eq i32 %180, 3, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  br i1 %181, label %28, label %182, !dbg !1274, !llvm.loop !1275

; <label>:182:                                    ; preds = %78, %178, %77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  ret void, !dbg !1278
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) #3 !dbg !898 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1280
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1280
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1282
  call void @llvm.va_start(i8* nonnull %3), !dbg !1282
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.14, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !1283
  call void @llvm.va_end(i8* nonnull %3), !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  ret void, !dbg !1287
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_rx_one(%struct.uk_netdev*, i16 zeroext, %struct.uk_netbuf**) #3 !dbg !1288 {
  %4 = icmp eq %struct.uk_netdev* %0, null, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  br i1 %4, label %5, label %6, !dbg !1302, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1303
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1303
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 1, !dbg !1305
  %8 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)** %7, align 8, !dbg !1305, !tbaa !1308
  %9 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)* %8, null, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br i1 %9, label %10, label %11, !dbg !1310, !prof !996

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1311
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1311
  unreachable

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i16 %1, 0, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br i1 %12, label %14, label %13, !dbg !1316, !prof !1164

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1317
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1317
  unreachable

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !1319
  %16 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %15, align 8, !dbg !1319, !tbaa !1322
  %17 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %16, i64 0, i32 0, !dbg !1319
  %18 = load i32, i32* %17, align 8, !dbg !1319, !tbaa !1323
  %19 = icmp eq i32 %18, 3, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %19, label %21, label %20, !dbg !1325, !prof !1164

; <label>:20:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1326
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1326
  unreachable

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 4, i64 0, !dbg !1328
  %23 = bitcast %struct.uk_netdev_rx_queue** %22 to i64*, !dbg !1328
  %24 = load i64, i64* %23, align 8, !dbg !1328, !tbaa !1096
  %25 = icmp slt i64 %24, 1, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  %26 = inttoptr i64 %24 to %struct.uk_netdev_rx_queue*, !dbg !1328
  br i1 %25, label %27, label %30, !dbg !1328

; <label>:27:                                     ; preds = %21
  %28 = icmp sgt i64 %24, -513, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %28, label %29, label %31, !dbg !1331, !prof !996

; <label>:29:                                     ; preds = %27
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1332
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1332
  unreachable

; <label>:30:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br label %31

; <label>:31:                                     ; preds = %30, %27
  %32 = icmp eq %struct.uk_netbuf** %2, null, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %32, label %33, label %34, !dbg !1337, !prof !996

; <label>:33:                                     ; preds = %31
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1338
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1338
  unreachable

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 %8(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_rx_queue* %26, %struct.uk_netbuf** nonnull %2) #10, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  ret i32 %35, !dbg !1341
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @netif_set_down(%struct.netif*) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_sched_yield() #3 !dbg !1186 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1342, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  %2 = and i64 %1, -65536, !dbg !1348
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !1349
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !1351, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  %5 = icmp eq %struct.uk_thread* %4, null, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  br i1 %5, label %6, label %7, !dbg !1355, !prof !996

; <label>:6:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1356
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1356
  unreachable

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %4, i64 0, i32 9, !dbg !1357
  %9 = load %struct.uk_sched*, %struct.uk_sched** %8, align 8, !dbg !1357, !tbaa !1208
  %10 = icmp eq %struct.uk_sched* %9, null, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %10, label %11, label %12, !dbg !1360, !prof !996

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1361
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1361
  unreachable

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %9, i64 0, i32 0, !dbg !1362
  %14 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %13, align 8, !dbg !1362, !tbaa !1221
  tail call void %14(%struct.uk_sched* nonnull %9) #10, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  ret void, !dbg !1364
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) #3 !dbg !922 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1366
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1368
  call void @llvm.va_start(i8* nonnull %3), !dbg !1368
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_err.__str.26, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !1369
  call void @llvm.va_end(i8* nonnull %3), !dbg !1372
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  ret void, !dbg !1373
}

; Function Attrs: noredzone
declare dso_local void @uk_netbuf_free_single(%struct.uk_netbuf*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @uknetdev_poll(%struct.netif*) local_unnamed_addr #0 !dbg !1374 {
  %2 = icmp eq %struct.netif* %0, null, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br i1 %2, label %3, label %4, !dbg !1382, !prof !996

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1383
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1383
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 0, !dbg !1385
  %6 = load i8, i8* %5, align 2, !dbg !1385, !tbaa !1076
  %7 = icmp eq i8 %6, 101, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br i1 %7, label %9, label %8, !dbg !1388, !prof !1164

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1389
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1389
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 1, !dbg !1391
  %11 = load i8, i8* %10, align 1, !dbg !1391, !tbaa !1076
  %12 = icmp eq i8 %11, 110, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br i1 %12, label %14, label %13, !dbg !1394, !prof !1164

; <label>:13:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1395
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1395
  unreachable

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !1397
  %16 = bitcast i8** %15 to %struct.uk_netdev**, !dbg !1397
  %17 = load %struct.uk_netdev*, %struct.uk_netdev** %16, align 8, !dbg !1397, !tbaa !1398
  %18 = icmp eq %struct.uk_netdev* %17, null, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br i1 %18, label %19, label %20, !dbg !1403, !prof !996

; <label>:19:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1404
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1404
  unreachable

; <label>:20:                                     ; preds = %14
  %21 = bitcast %struct.netif* %0 to i8*, !dbg !1406
  tail call void @__uknetdev_input(%struct.uk_netdev* nonnull %17, i16 zeroext undef, i8* %21) #8, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  ret void, !dbg !1408
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @___poll_netif(i8*) #6 !dbg !1409 {
  %2 = bitcast i8* %0 to %struct.netif*, !dbg !1421
  br label %3, !dbg !1423

; <label>:3:                                      ; preds = %31, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  tail call void @uknetdev_poll(%struct.netif* %2) #8, !dbg !1424
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1425, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %5, label %24, label %6, !dbg !1429

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1430, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br i1 %8, label %24, label %9, !dbg !1434

; <label>:9:                                      ; preds = %6
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1435, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  %11 = and i64 %10, -65536, !dbg !1443
  %12 = inttoptr i64 %11 to %struct.uk_thread**, !dbg !1444
  %13 = load %struct.uk_thread*, %struct.uk_thread** %12, align 65536, !dbg !1446, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  %14 = icmp eq %struct.uk_thread* %13, null, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %14, label %15, label %16, !dbg !1450, !prof !996

; <label>:15:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !1451
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1451
  unreachable

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %13, i64 0, i32 9, !dbg !1452
  %18 = load %struct.uk_sched*, %struct.uk_sched** %17, align 8, !dbg !1452, !tbaa !1208
  %19 = icmp eq %struct.uk_sched* %18, null, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %19, label %20, label %21, !dbg !1455, !prof !996

; <label>:20:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1456
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1456
  unreachable

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %18, i64 0, i32 0, !dbg !1457
  %23 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %22, align 8, !dbg !1457, !tbaa !1221
  tail call void %23(%struct.uk_sched* nonnull %18) #10, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br label %31, !dbg !1460

; <label>:24:                                     ; preds = %6, %3
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1461, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  %26 = and i64 %25, -65536, !dbg !1467
  %27 = or i64 %26, 4097, !dbg !1467
  %28 = add nsw i64 %27, -1, !dbg !1467
  %29 = inttoptr i64 %28 to i32*, !dbg !1468
  %30 = load i32, i32* %29, align 4096, !dbg !1469, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1470
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_yield\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %30, void ()* nonnull @uk_sched_yield) #7, !dbg !1471, !srcloc !1472
  br label %31

; <label>:31:                                     ; preds = %24, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %3, !dbg !1423, !llvm.loop !1473
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @uknetdev_init(%struct.netif*) #0 !dbg !1475 {
  %2 = alloca %struct.uk_netdev*, align 8
  %3 = alloca %struct.uk_netdev_conf, align 2
  %4 = alloca %struct.uk_netdev_rxqueue_conf, align 8
  %5 = alloca %struct.uk_netdev_txqueue_conf, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwip_netdev_data*, align 8
  %8 = alloca %struct.uk_hwaddr*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.uk_netdev** %2 to i8*, !dbg !1569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !1569
  %11 = ptrtoint %struct.uk_netdev** %2 to i64, !dbg !1570
  %12 = add i64 %11, 65536, !dbg !1571
  %13 = inttoptr i64 %12 to %struct.uk_netdev**, !dbg !1572
  %14 = bitcast %struct.uk_netdev_conf* %3 to i8*, !dbg !1574
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #7, !dbg !1574
  %15 = ptrtoint %struct.uk_netdev_conf* %3 to i64, !dbg !1575
  %16 = add i64 %15, 65536, !dbg !1576
  %17 = inttoptr i64 %16 to %struct.uk_netdev_conf*, !dbg !1577
  %18 = bitcast %struct.uk_netdev_rxqueue_conf* %4 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #7, !dbg !1579
  %19 = ptrtoint %struct.uk_netdev_rxqueue_conf* %4 to i64, !dbg !1580
  %20 = add i64 %19, 65536, !dbg !1581
  %21 = inttoptr i64 %20 to %struct.uk_netdev_rxqueue_conf*, !dbg !1582
  %22 = bitcast %struct.uk_netdev_txqueue_conf* %5 to i8*, !dbg !1584
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !1584
  %23 = ptrtoint %struct.uk_netdev_txqueue_conf* %5 to i64, !dbg !1585
  %24 = add i64 %23, 65536, !dbg !1586
  %25 = inttoptr i64 %24 to %struct.uk_netdev_txqueue_conf*, !dbg !1587
  %26 = bitcast i32* %6 to i8*, !dbg !1589
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #7, !dbg !1589
  %27 = bitcast %struct.lwip_netdev_data** %7 to i8*, !dbg !1590
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !1590
  %28 = bitcast %struct.uk_hwaddr** %8 to i8*, !dbg !1591
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #7, !dbg !1591
  %29 = bitcast i32* %9 to i8*, !dbg !1592
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #7, !dbg !1592
  %30 = icmp eq %struct.netif* %0, null, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %30, label %31, label %32, !dbg !1596, !prof !996

; <label>:31:                                     ; preds = %1
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1597
  call void @ukplat_terminate(i32 3) #9, !dbg !1597
  unreachable

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !1599
  %34 = bitcast i8** %33 to %struct.uk_netdev**, !dbg !1599
  %35 = load %struct.uk_netdev*, %struct.uk_netdev** %34, align 8, !dbg !1599, !tbaa !1398
  store %struct.uk_netdev* %35, %struct.uk_netdev** %13, align 8, !dbg !1600, !tbaa !1096
  %36 = icmp eq %struct.uk_netdev* %35, null, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  br i1 %36, label %37, label %38, !dbg !1604, !prof !996

; <label>:37:                                     ; preds = %32
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1605
  call void @ukplat_terminate(i32 3) #9, !dbg !1605
  unreachable

; <label>:38:                                     ; preds = %32
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1607, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  %40 = icmp ult i64 %39, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %40, label %50, label %41, !dbg !1611

; <label>:41:                                     ; preds = %38
  %42 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1612, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  %43 = icmp ugt i64 %42, ptrtoint ([0 x i8]* @_end to i64), !dbg !1611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br i1 %43, label %50, label %44, !dbg !1616

; <label>:44:                                     ; preds = %41
  %45 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1617, !tbaa !1096
  %46 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %45, i64 0, i32 8, !dbg !1626
  %47 = bitcast i8** %46 to i64*, !dbg !1626
  %48 = load i64, i64* %47, align 8, !dbg !1626, !tbaa !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  %49 = bitcast %struct.lwip_netdev_data** %7 to i64*, !dbg !1617
  store i64 %48, i64* %49, align 8, !dbg !1617, !tbaa !1096
  br label %60, !dbg !1617

; <label>:50:                                     ; preds = %41, %38
  %51 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1630, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  %52 = and i64 %51, -65536, !dbg !1636
  %53 = or i64 %52, 4097, !dbg !1636
  %54 = add nsw i64 %53, -1, !dbg !1636
  %55 = inttoptr i64 %54 to i32*, !dbg !1637
  %56 = load i32, i32* %55, align 4096, !dbg !1638, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  %57 = inttoptr i64 %12 to i64*, !dbg !1640
  %58 = load i64, i64* %57, align 8, !dbg !1640, !tbaa !1096
  %59 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %58, i32 %56, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #7, !dbg !1640, !srcloc !1641
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %7, i64 %59) #7, !dbg !1642, !srcloc !1646
  br label %60

; <label>:60:                                     ; preds = %44, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 8, !dbg !1647
  %62 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %61, align 8, !dbg !1647, !tbaa !1008
  %63 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %62, null, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br i1 %63, label %64, label %65, !dbg !1650

; <label>:64:                                     ; preds = %60
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1651
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1654
  call void @ukplat_terminate(i32 3) #9, !dbg !1654
  unreachable

; <label>:65:                                     ; preds = %60
  %66 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1658, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1661
  %67 = icmp ult i64 %66, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %67, label %74, label %68, !dbg !1662

; <label>:68:                                     ; preds = %65
  %69 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1663, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  %70 = icmp ugt i64 %69, ptrtoint ([0 x i8]* @_end to i64), !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  br i1 %70, label %74, label %71, !dbg !1667

; <label>:71:                                     ; preds = %68
  %72 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1668, !tbaa !1096
  %73 = call i32 @uk_netdev_state_get(%struct.uk_netdev* %72) #10, !dbg !1668
  store i32 %73, i32* %6, align 4, !dbg !1668, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br label %85, !dbg !1668

; <label>:74:                                     ; preds = %68, %65
  %75 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1671, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  %76 = and i64 %75, -65536, !dbg !1677
  %77 = or i64 %76, 4097, !dbg !1677
  %78 = add nsw i64 %77, -1, !dbg !1677
  %79 = inttoptr i64 %78 to i32*, !dbg !1678
  %80 = load i32, i32* %79, align 4096, !dbg !1679, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  %81 = inttoptr i64 %12 to i64*, !dbg !1681
  %82 = load i64, i64* %81, align 8, !dbg !1681, !tbaa !1096
  %83 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_state_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %82, i32 %80, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_state_get) #7, !dbg !1681, !srcloc !1682
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %83) #7, !dbg !1683, !srcloc !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %84 = load i32, i32* %6, align 4, !dbg !1687, !tbaa !1076
  br label %85

; <label>:85:                                     ; preds = %74, %71
  %86 = phi i32 [ %84, %74 ], [ %73, %71 ], !dbg !1687
  %87 = icmp eq i32 %86, 1, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  br i1 %87, label %88, label %328, !dbg !1690

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 0, !dbg !1691
  store i8 101, i8* %89, align 2, !dbg !1692, !tbaa !1076
  %90 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 22, i64 1, !dbg !1693
  store i8 110, i8* %90, align 1, !dbg !1694, !tbaa !1076
  %91 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1695, !tbaa !1096
  %92 = icmp eq %struct.uk_alloc* %91, null, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  br i1 %92, label %328, label %93, !dbg !1698

; <label>:93:                                     ; preds = %88
  %94 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1699, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  %95 = icmp ult i64 %94, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  br i1 %95, label %103, label %96, !dbg !1703

; <label>:96:                                     ; preds = %93
  %97 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1704, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  %98 = icmp ugt i64 %97, ptrtoint ([0 x i8]* @_end to i64), !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  br i1 %98, label %103, label %99, !dbg !1708

; <label>:99:                                     ; preds = %96
  %100 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1709, !tbaa !1096
  %101 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1709, !tbaa !1096
  %102 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %101, i64 0, i32 1, !dbg !1709
  call void @uk_netdev_info_get(%struct.uk_netdev* %100, %struct.uk_netdev_info* nonnull %102) #10, !dbg !1709
  br label %115, !dbg !1709

; <label>:103:                                    ; preds = %96, %93
  %104 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1711, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  %105 = and i64 %104, -65536, !dbg !1717
  %106 = or i64 %105, 4097, !dbg !1717
  %107 = add nsw i64 %106, -1, !dbg !1717
  %108 = inttoptr i64 %107 to i32*, !dbg !1718
  %109 = load i32, i32* %108, align 4096, !dbg !1719, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %110 = inttoptr i64 %12 to i64*, !dbg !1721
  %111 = load i64, i64* %110, align 8, !dbg !1721, !tbaa !1096
  %112 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1721, !tbaa !1096
  %113 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %112, i64 0, i32 1, !dbg !1721
  %114 = ptrtoint %struct.uk_netdev_info* %113 to i64, !dbg !1721
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_info_get\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %111, i64 %114, i32 %109, void (%struct.uk_netdev*, %struct.uk_netdev_info*)* nonnull @uk_netdev_info_get) #7, !dbg !1721, !srcloc !1722
  br label %115

; <label>:115:                                    ; preds = %103, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %116 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %7, align 8, !dbg !1723, !tbaa !1096
  %117 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 1, i32 0, !dbg !1725
  %118 = load i16, i16* %117, align 8, !dbg !1725, !tbaa !1726
  %119 = icmp eq i16 %118, 0, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  br i1 %119, label %328, label %120, !dbg !1729

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 1, i32 1, !dbg !1730
  %122 = load i16, i16* %121, align 2, !dbg !1730, !tbaa !1731
  %123 = icmp eq i16 %122, 0, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br i1 %123, label %328, label %124, !dbg !1733

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 0, !dbg !1734
  store %struct.uk_alloc* %91, %struct.uk_alloc** %125, align 8, !dbg !1735, !tbaa !1736
  %126 = getelementptr inbounds %struct.uk_netdev_conf, %struct.uk_netdev_conf* %17, i64 0, i32 0, !dbg !1737
  store i16 1, i16* %126, align 2, !dbg !1738, !tbaa !1739
  %127 = getelementptr inbounds %struct.uk_netdev_conf, %struct.uk_netdev_conf* %17, i64 0, i32 1, !dbg !1741
  store i16 1, i16* %127, align 2, !dbg !1742, !tbaa !1743
  %128 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1744, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  %129 = icmp ult i64 %128, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  br i1 %129, label %136, label %130, !dbg !1748

; <label>:130:                                    ; preds = %124
  %131 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1749, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  %132 = icmp ugt i64 %131, ptrtoint ([0 x i8]* @_end to i64), !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  br i1 %132, label %136, label %133, !dbg !1753

; <label>:133:                                    ; preds = %130
  %134 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1754, !tbaa !1096
  %135 = call i32 @uk_netdev_configure(%struct.uk_netdev* %134, %struct.uk_netdev_conf* nonnull %17) #10, !dbg !1754
  store i32 %135, i32* %9, align 4, !dbg !1754, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br label %147, !dbg !1754

; <label>:136:                                    ; preds = %130, %124
  %137 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1757, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  %138 = and i64 %137, -65536, !dbg !1763
  %139 = or i64 %138, 4097, !dbg !1763
  %140 = add nsw i64 %139, -1, !dbg !1763
  %141 = inttoptr i64 %140 to i32*, !dbg !1764
  %142 = load i32, i32* %141, align 4096, !dbg !1765, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  %143 = inttoptr i64 %12 to i64*, !dbg !1767
  %144 = load i64, i64* %143, align 8, !dbg !1767, !tbaa !1096
  %145 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %144, i64 %16, i32 %142, i32 (%struct.uk_netdev*, %struct.uk_netdev_conf*)* nonnull @uk_netdev_configure) #7, !dbg !1767, !srcloc !1768
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %145) #7, !dbg !1769, !srcloc !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %146 = load i32, i32* %9, align 4, !dbg !1773, !tbaa !1038
  br label %147

; <label>:147:                                    ; preds = %136, %133
  %148 = phi i32 [ %146, %136 ], [ %135, %133 ], !dbg !1773
  %149 = icmp slt i32 %148, 0, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br i1 %149, label %328, label %150, !dbg !1776

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 2, !dbg !1777
  store %struct.uk_alloc* %91, %struct.uk_alloc** %151, align 8, !dbg !1778, !tbaa !1779
  %152 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 3, !dbg !1781
  store i16 (i8*, %struct.uk_netbuf**, i16)* @netif_alloc_rxpkts, i16 (i8*, %struct.uk_netbuf**, i16)** %152, align 8, !dbg !1782, !tbaa !1783
  %153 = bitcast %struct.lwip_netdev_data** %7 to i64*, !dbg !1784
  %154 = load i64, i64* %153, align 8, !dbg !1784, !tbaa !1096
  %155 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 4, !dbg !1785
  %156 = bitcast i8** %155 to i64*, !dbg !1786
  store i64 %154, i64* %156, align 8, !dbg !1786, !tbaa !1787
  %157 = inttoptr i64 %20 to void (%struct.uk_netdev*, i16, i8*)**, !dbg !1788
  store void (%struct.uk_netdev*, i16, i8*)* @uknetdev_input, void (%struct.uk_netdev*, i16, i8*)** %157, align 8, !dbg !1789, !tbaa !1790
  %158 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 1, !dbg !1791
  %159 = bitcast i8** %158 to %struct.netif**, !dbg !1792
  store %struct.netif* %0, %struct.netif** %159, align 8, !dbg !1792, !tbaa !1793
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1794, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1797
  %161 = icmp ult i64 %160, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br i1 %161, label %168, label %162, !dbg !1798

; <label>:162:                                    ; preds = %150
  %163 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1799, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  %164 = icmp ugt i64 %163, ptrtoint ([0 x i8]* @_end to i64), !dbg !1798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  br i1 %164, label %168, label %165, !dbg !1803

; <label>:165:                                    ; preds = %162
  %166 = call %struct.uk_sched* @uk_sched_get_default() #10, !dbg !1804
  %167 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 5, !dbg !1804
  store %struct.uk_sched* %166, %struct.uk_sched** %167, align 8, !dbg !1804, !tbaa !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  br label %178, !dbg !1804

; <label>:168:                                    ; preds = %162, %150
  %169 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1807, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  %170 = and i64 %169, -65536, !dbg !1813
  %171 = or i64 %170, 4097, !dbg !1813
  %172 = add nsw i64 %171, -1, !dbg !1813
  %173 = inttoptr i64 %172 to i32*, !dbg !1814
  %174 = load i32, i32* %173, align 4096, !dbg !1815, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  %175 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_get_default\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %174, %struct.uk_sched* ()* nonnull @uk_sched_get_default) #7, !dbg !1817, !srcloc !1818
  %176 = getelementptr inbounds %struct.uk_netdev_rxqueue_conf, %struct.uk_netdev_rxqueue_conf* %21, i64 0, i32 5, !dbg !1819
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_sched** nonnull %176, i64 %175) #7, !dbg !1819, !srcloc !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %177 = load %struct.uk_sched*, %struct.uk_sched** %176, align 8, !dbg !1824, !tbaa !1806
  br label %178

; <label>:178:                                    ; preds = %168, %165
  %179 = phi %struct.uk_sched* [ %177, %168 ], [ %166, %165 ], !dbg !1824
  %180 = icmp eq %struct.uk_sched* %179, null, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  br i1 %180, label %328, label %181, !dbg !1827

; <label>:181:                                    ; preds = %178
  %182 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1828, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  %183 = icmp ult i64 %182, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  br i1 %183, label %190, label %184, !dbg !1832

; <label>:184:                                    ; preds = %181
  %185 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1833, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  %186 = icmp ugt i64 %185, ptrtoint ([0 x i8]* @_end to i64), !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1837
  br i1 %186, label %190, label %187, !dbg !1837

; <label>:187:                                    ; preds = %184
  %188 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1838, !tbaa !1096
  %189 = call i32 @uk_netdev_rxq_configure(%struct.uk_netdev* %188, i16 zeroext 0, i16 zeroext 0, %struct.uk_netdev_rxqueue_conf* nonnull %21) #10, !dbg !1838
  store i32 %189, i32* %9, align 4, !dbg !1838, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  br label %201, !dbg !1838

; <label>:190:                                    ; preds = %184, %181
  %191 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1840, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  %192 = and i64 %191, -65536, !dbg !1846
  %193 = or i64 %192, 4097, !dbg !1846
  %194 = add nsw i64 %193, -1, !dbg !1846
  %195 = inttoptr i64 %194 to i32*, !dbg !1847
  %196 = load i32, i32* %195, align 4096, !dbg !1848, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  %197 = inttoptr i64 %12 to i64*, !dbg !1850
  %198 = load i64, i64* %197, align 8, !dbg !1850, !tbaa !1096
  %199 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rxq_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %198, i64 0, i64 0, i64 %20, i32 %196, i32 (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_rxqueue_conf*)* nonnull @uk_netdev_rxq_configure) #7, !dbg !1850, !srcloc !1851
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %199) #7, !dbg !1852, !srcloc !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %200 = load i32, i32* %9, align 4, !dbg !1856, !tbaa !1038
  br label %201

; <label>:201:                                    ; preds = %190, %187
  %202 = phi i32 [ %200, %190 ], [ %189, %187 ], !dbg !1856
  %203 = icmp slt i32 %202, 0, !dbg !1858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  br i1 %203, label %328, label %204, !dbg !1859

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.uk_netdev_txqueue_conf, %struct.uk_netdev_txqueue_conf* %25, i64 0, i32 0, !dbg !1860
  store %struct.uk_alloc* %91, %struct.uk_alloc** %205, align 8, !dbg !1861, !tbaa !1862
  %206 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1864, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  %207 = icmp ult i64 %206, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  br i1 %207, label %214, label %208, !dbg !1868

; <label>:208:                                    ; preds = %204
  %209 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1869, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1872
  %210 = icmp ugt i64 %209, ptrtoint ([0 x i8]* @_end to i64), !dbg !1868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  br i1 %210, label %214, label %211, !dbg !1873

; <label>:211:                                    ; preds = %208
  %212 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1874, !tbaa !1096
  %213 = call i32 @uk_netdev_txq_configure(%struct.uk_netdev* %212, i16 zeroext 0, i16 zeroext 0, %struct.uk_netdev_txqueue_conf* nonnull %25) #10, !dbg !1874
  store i32 %213, i32* %9, align 4, !dbg !1874, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  br label %225, !dbg !1874

; <label>:214:                                    ; preds = %208, %204
  %215 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1876, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  %216 = and i64 %215, -65536, !dbg !1882
  %217 = or i64 %216, 4097, !dbg !1882
  %218 = add nsw i64 %217, -1, !dbg !1882
  %219 = inttoptr i64 %218 to i32*, !dbg !1883
  %220 = load i32, i32* %219, align 4096, !dbg !1884, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  %221 = inttoptr i64 %12 to i64*, !dbg !1886
  %222 = load i64, i64* %221, align 8, !dbg !1886, !tbaa !1096
  %223 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_txq_configure\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %222, i64 0, i64 0, i64 %24, i32 %220, i32 (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_txqueue_conf*)* nonnull @uk_netdev_txq_configure) #7, !dbg !1886, !srcloc !1887
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %223) #7, !dbg !1888, !srcloc !1891
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %224 = load i32, i32* %9, align 4, !dbg !1892, !tbaa !1038
  br label %225

; <label>:225:                                    ; preds = %214, %211
  %226 = phi i32 [ %224, %214 ], [ %213, %211 ], !dbg !1892
  %227 = icmp slt i32 %226, 0, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  br i1 %227, label %328, label %228, !dbg !1895

; <label>:228:                                    ; preds = %225
  %229 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1896, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  %230 = icmp ult i64 %229, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  br i1 %230, label %237, label %231, !dbg !1900

; <label>:231:                                    ; preds = %228
  %232 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1901, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  %233 = icmp ugt i64 %232, ptrtoint ([0 x i8]* @_end to i64), !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %233, label %237, label %234, !dbg !1905

; <label>:234:                                    ; preds = %231
  %235 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1906, !tbaa !1096
  %236 = call i32 @uk_netdev_start(%struct.uk_netdev* %235) #10, !dbg !1906
  store i32 %236, i32* %9, align 4, !dbg !1906, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  br label %248, !dbg !1906

; <label>:237:                                    ; preds = %231, %228
  %238 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1908, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  %239 = and i64 %238, -65536, !dbg !1914
  %240 = or i64 %239, 4097, !dbg !1914
  %241 = add nsw i64 %240, -1, !dbg !1914
  %242 = inttoptr i64 %241 to i32*, !dbg !1915
  %243 = load i32, i32* %242, align 4096, !dbg !1916, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1917
  %244 = inttoptr i64 %12 to i64*, !dbg !1918
  %245 = load i64, i64* %244, align 8, !dbg !1918, !tbaa !1096
  %246 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_start\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %245, i32 %243, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_start) #7, !dbg !1918, !srcloc !1919
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %246) #7, !dbg !1920, !srcloc !1923
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %247 = load i32, i32* %9, align 4, !dbg !1924, !tbaa !1038
  br label %248

; <label>:248:                                    ; preds = %237, %234
  %249 = phi i32 [ %247, %237 ], [ %236, %234 ], !dbg !1924
  %250 = icmp slt i32 %249, 0, !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br i1 %250, label %328, label %251, !dbg !1927

; <label>:251:                                    ; preds = %248
  %252 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 9, !dbg !1928
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)* @etharp_output, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %252, align 8, !dbg !1929, !tbaa !1930
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 11, !dbg !1931
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)* @ethip6_output, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %253, align 8, !dbg !1932, !tbaa !1933
  %254 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 10, !dbg !1934
  store i8 (%struct.netif*, %struct.pbuf*)* @uknetdev_output, i8 (%struct.netif*, %struct.pbuf*)** %254, align 8, !dbg !1935, !tbaa !1936
  %255 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1937
  %256 = load i8, i8* %255, align 1, !dbg !1937, !tbaa !1939
  %257 = or i8 %256, 14, !dbg !1937
  store i8 %257, i8* %255, align 1, !dbg !1937, !tbaa !1939
  %258 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1940
  store i16 31, i16* %258, align 8, !dbg !1940, !tbaa !1942
  %259 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1943, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  %260 = icmp ult i64 %259, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  br i1 %260, label %267, label %261, !dbg !1947

; <label>:261:                                    ; preds = %251
  %262 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1948, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  %263 = icmp ugt i64 %262, ptrtoint ([0 x i8]* @_end to i64), !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  br i1 %263, label %267, label %264, !dbg !1952

; <label>:264:                                    ; preds = %261
  %265 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !1953, !tbaa !1096
  %266 = call %struct.uk_hwaddr* @uk_netdev_hwaddr_get(%struct.uk_netdev* %265) #10, !dbg !1953
  store %struct.uk_hwaddr* %266, %struct.uk_hwaddr** %8, align 8, !dbg !1953, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  br label %278, !dbg !1953

; <label>:267:                                    ; preds = %261, %251
  %268 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1956, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  %269 = and i64 %268, -65536, !dbg !1962
  %270 = or i64 %269, 4097, !dbg !1962
  %271 = add nsw i64 %270, -1, !dbg !1962
  %272 = inttoptr i64 %271 to i32*, !dbg !1963
  %273 = load i32, i32* %272, align 4096, !dbg !1964, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  %274 = inttoptr i64 %12 to i64*, !dbg !1966
  %275 = load i64, i64* %274, align 8, !dbg !1966, !tbaa !1096
  %276 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_hwaddr_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %275, i32 %273, %struct.uk_hwaddr* (%struct.uk_netdev*)* nonnull @uk_netdev_hwaddr_get) #7, !dbg !1966, !srcloc !1967
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_hwaddr** nonnull %8, i64 %276) #7, !dbg !1968, !srcloc !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %277 = load %struct.uk_hwaddr*, %struct.uk_hwaddr** %8, align 8, !dbg !1973, !tbaa !1096
  br label %278

; <label>:278:                                    ; preds = %264, %267
  %279 = phi %struct.uk_hwaddr* [ %266, %264 ], [ %277, %267 ], !dbg !1973
  %280 = icmp eq %struct.uk_hwaddr* %279, null, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %280, label %281, label %282, !dbg !1976, !prof !996

; <label>:281:                                    ; preds = %278
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1977
  call void @ukplat_terminate(i32 3) #9, !dbg !1977
  unreachable

; <label>:282:                                    ; preds = %278
  %283 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1979
  store i8 6, i8* %283, align 4, !dbg !1980, !tbaa !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %284 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 0, !dbg !1986
  %285 = load i8, i8* %284, align 1, !dbg !1986, !tbaa !1076
  %286 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1988
  store i8 %285, i8* %286, align 1, !dbg !1989, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %287 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 1, !dbg !1986
  %288 = load i8, i8* %287, align 1, !dbg !1986, !tbaa !1076
  %289 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 1, !dbg !1988
  store i8 %288, i8* %289, align 1, !dbg !1989, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %290 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 2, !dbg !1986
  %291 = load i8, i8* %290, align 1, !dbg !1986, !tbaa !1076
  %292 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 2, !dbg !1988
  store i8 %291, i8* %292, align 1, !dbg !1989, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %293 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 3, !dbg !1986
  %294 = load i8, i8* %293, align 1, !dbg !1986, !tbaa !1076
  %295 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 3, !dbg !1988
  store i8 %294, i8* %295, align 1, !dbg !1989, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %296 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 4, !dbg !1986
  %297 = load i8, i8* %296, align 1, !dbg !1986, !tbaa !1076
  %298 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 4, !dbg !1988
  store i8 %297, i8* %298, align 1, !dbg !1989, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %299 = getelementptr inbounds %struct.uk_hwaddr, %struct.uk_hwaddr* %279, i64 0, i32 0, i64 5, !dbg !1986
  %300 = load i8, i8* %299, align 1, !dbg !1986, !tbaa !1076
  %301 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 5, !dbg !1988
  store i8 %300, i8* %301, align 1, !dbg !1989, !tbaa !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  %302 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1991, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  %303 = icmp ult i64 %302, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  br i1 %303, label %311, label %304, !dbg !1995

; <label>:304:                                    ; preds = %282
  %305 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1996, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  %306 = icmp ugt i64 %305, ptrtoint ([0 x i8]* @_end to i64), !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2000
  br i1 %306, label %311, label %307, !dbg !2000

; <label>:307:                                    ; preds = %304
  %308 = load %struct.uk_netdev*, %struct.uk_netdev** %13, align 8, !dbg !2001, !tbaa !1096
  %309 = call zeroext i16 @uk_netdev_mtu_get(%struct.uk_netdev* %308) #10, !dbg !2001
  %310 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !2001
  store i16 %309, i16* %310, align 2, !dbg !2001, !tbaa !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  br label %323, !dbg !2001

; <label>:311:                                    ; preds = %304, %282
  %312 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2004, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2008
  %313 = and i64 %312, -65536, !dbg !2010
  %314 = or i64 %313, 4097, !dbg !2010
  %315 = add nsw i64 %314, -1, !dbg !2010
  %316 = inttoptr i64 %315 to i32*, !dbg !2011
  %317 = load i32, i32* %316, align 4096, !dbg !2012, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  %318 = inttoptr i64 %12 to i64*, !dbg !2014
  %319 = load i64, i64* %318, align 8, !dbg !2014, !tbaa !1096
  %320 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_mtu_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %319, i32 %317, i16 (%struct.uk_netdev*)* nonnull @uk_netdev_mtu_get) #7, !dbg !2014, !srcloc !2015
  %321 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !2016
  call void asm sideeffect "mov %r11w, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i16* nonnull %321, i64 %320) #7, !dbg !2016, !srcloc !2018
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %322 = load i16, i16* %321, align 2, !dbg !2019, !tbaa !2003
  br label %323

; <label>:323:                                    ; preds = %307, %311
  %324 = phi i16 [ %309, %307 ], [ %322, %311 ], !dbg !2019
  %325 = icmp eq i16 %324, 0, !dbg !2019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  br i1 %325, label %326, label %327, !dbg !2022, !prof !996

; <label>:326:                                    ; preds = %323
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !2023
  call void @ukplat_terminate(i32 3) #9, !dbg !2023
  unreachable

; <label>:327:                                    ; preds = %323
  call void @netif_set_status_callback(%struct.netif* nonnull %0, void (%struct.netif*)* nonnull @uknetdev_updown) #10, !dbg !2025
  br label %328, !dbg !2026

; <label>:328:                                    ; preds = %248, %225, %201, %178, %147, %115, %120, %88, %85, %327
  %329 = phi i8 [ 0, %327 ], [ -10, %85 ], [ -1, %88 ], [ -12, %120 ], [ -12, %115 ], [ -12, %147 ], [ -12, %178 ], [ -12, %201 ], [ -12, %225 ], [ -12, %248 ], !dbg !2027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  ret i8 %329, !dbg !2031
}

; Function Attrs: noredzone nounwind
define internal %struct.lwip_netdev_data* @_retrieve_scratchpad(%struct.uk_netdev* nocapture readonly) #0 !dbg !1620 {
  %2 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 8, !dbg !2033
  %3 = bitcast i8** %2 to %struct.lwip_netdev_data**, !dbg !2033
  %4 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2033, !tbaa !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  ret %struct.lwip_netdev_data* %4, !dbg !2034
}

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_state_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local void @uk_netdev_info_get(%struct.uk_netdev*, %struct.uk_netdev_info*) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_configure(%struct.uk_netdev*, %struct.uk_netdev_conf*) #5

; Function Attrs: noredzone nounwind
define internal zeroext i16 @netif_alloc_rxpkts(i8* readonly, %struct.uk_netbuf** nocapture, i16 zeroext) #0 !dbg !2035 {
  %4 = icmp eq i8* %0, null, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %4, label %5, label %6, !dbg !2048, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2049
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2049
  unreachable

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  %7 = bitcast i8* %0 to %struct.uk_alloc**, !dbg !2055
  %8 = icmp eq i16 %2, 0, !dbg !2058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2059
  br i1 %8, label %31, label %9, !dbg !2059

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds i8, i8* %0, i64 22
  %11 = bitcast i8* %10 to i16*
  %12 = getelementptr inbounds i8, i8* %0, i64 20
  %13 = bitcast i8* %12 to i16*
  %14 = zext i16 %2 to i64, !dbg !2059
  br label %15, !dbg !2059

; <label>:15:                                     ; preds = %9, %25
  %16 = phi i64 [ 0, %9 ], [ %26, %25 ]
  %17 = phi i16 [ 0, %9 ], [ %27, %25 ]
  %18 = load %struct.uk_alloc*, %struct.uk_alloc** %7, align 8, !dbg !2055, !tbaa !1736
  %19 = load i16, i16* %11, align 2, !dbg !2060, !tbaa !2061
  %20 = zext i16 %19 to i64, !dbg !2062
  %21 = load i16, i16* %13, align 4, !dbg !2063, !tbaa !2064
  %22 = tail call %struct.uk_netbuf* @lwip_alloc_netbuf(%struct.uk_alloc* %18, i64 2048, i64 %20, i16 zeroext %21) #10, !dbg !2065
  %23 = getelementptr inbounds %struct.uk_netbuf*, %struct.uk_netbuf** %1, i64 %16, !dbg !2066
  store %struct.uk_netbuf* %22, %struct.uk_netbuf** %23, align 8, !dbg !2067, !tbaa !1096
  %24 = icmp eq %struct.uk_netbuf* %22, null, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  br i1 %24, label %29, label %25, !dbg !2070

; <label>:25:                                     ; preds = %15
  %26 = add nuw nsw i64 %16, 1, !dbg !2071
  %27 = add nuw i16 %17, 1, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  %28 = icmp ult i64 %26, %14, !dbg !2058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2059
  br i1 %28, label %15, label %31, !dbg !2059, !llvm.loop !2073

; <label>:29:                                     ; preds = %15
  %30 = trunc i64 %16 to i16, !dbg !2070
  br label %31, !dbg !2075

; <label>:31:                                     ; preds = %25, %29, %6
  %32 = phi i16 [ 0, %6 ], [ %30, %29 ], [ %27, %25 ], !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2075
  ret i16 %32, !dbg !2075
}

; Function Attrs: noredzone nounwind
define internal void @uknetdev_input(%struct.uk_netdev*, i16 zeroext, i8*) #0 !dbg !2077 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #7, !dbg !2093, !srcloc !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2112, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2116
  br i1 %5, label %10, label %6, !dbg !2116

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2117, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2120
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !2116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  br i1 %8, label %10, label %9, !dbg !2121

; <label>:9:                                      ; preds = %6
  tail call void @__uknetdev_input(%struct.uk_netdev* %0, i16 zeroext undef, i8* %2) #10, !dbg !2122
  br label %20, !dbg !2122

; <label>:10:                                     ; preds = %6, %3
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2124, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  %12 = and i64 %11, -65536, !dbg !2130
  %13 = or i64 %12, 4097, !dbg !2130
  %14 = add nsw i64 %13, -1, !dbg !2130
  %15 = inttoptr i64 %14 to i32*, !dbg !2131
  %16 = load i32, i32* %15, align 4096, !dbg !2132, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2133
  %17 = ptrtoint i8* %2 to i64, !dbg !2134
  %18 = ptrtoint %struct.uk_netdev* %0 to i64, !dbg !2134
  %19 = zext i16 %1 to i64, !dbg !2134
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call __uknetdev_input\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %18, i64 %19, i64 %17, i32 %16, void (%struct.uk_netdev*, i16, i8*)* nonnull @__uknetdev_input) #7, !dbg !2134, !srcloc !2135
  br label %20

; <label>:20:                                     ; preds = %9, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  ret void, !dbg !2137
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
define internal signext i8 @uknetdev_output(%struct.netif* readonly, %struct.pbuf* readonly) #0 !dbg !2138 {
  %3 = alloca %struct.lwip_netdev_data*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.lwip_netdev_data** %3 to i8*, !dbg !2166
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2166
  %6 = bitcast i32* %4 to i8*, !dbg !2167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7, !dbg !2167
  %7 = icmp eq %struct.netif* %0, null, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br i1 %7, label %8, label %9, !dbg !2171, !prof !996

; <label>:8:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2172
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2172
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !2174
  %11 = bitcast i8** %10 to %struct.uk_netdev**, !dbg !2174
  %12 = load %struct.uk_netdev*, %struct.uk_netdev** %11, align 8, !dbg !2174, !tbaa !1398
  %13 = icmp eq %struct.uk_netdev* %12, null, !dbg !2176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2179
  br i1 %13, label %14, label %15, !dbg !2179, !prof !996

; <label>:14:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2180
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2180
  unreachable

; <label>:15:                                     ; preds = %9
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2182, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  %17 = icmp ult i64 %16, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  br i1 %17, label %25, label %18, !dbg !2186

; <label>:18:                                     ; preds = %15
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2187, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  %20 = icmp ugt i64 %19, ptrtoint ([0 x i8]* @_end to i64), !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  br i1 %20, label %25, label %21, !dbg !2191

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 8, !dbg !2195
  %23 = bitcast i8** %22 to %struct.lwip_netdev_data**, !dbg !2195
  %24 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %23, align 8, !dbg !2195, !tbaa !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  store %struct.lwip_netdev_data* %24, %struct.lwip_netdev_data** %3, align 8, !dbg !2198, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2198
  br label %35, !dbg !2198

; <label>:25:                                     ; preds = %18, %15
  %26 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2199, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  %27 = and i64 %26, -65536, !dbg !2205
  %28 = or i64 %27, 4097, !dbg !2205
  %29 = add nsw i64 %28, -1, !dbg !2205
  %30 = inttoptr i64 %29 to i32*, !dbg !2206
  %31 = load i32, i32* %30, align 4096, !dbg !2207, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2208
  %32 = ptrtoint %struct.uk_netdev* %12 to i64, !dbg !2209
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %32, i32 %31, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #7, !dbg !2209, !srcloc !2210
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %3, i64 %33) #7, !dbg !2211, !srcloc !2215
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2216, !tbaa !1096
  br label %35

; <label>:35:                                     ; preds = %21, %25
  %36 = phi %struct.lwip_netdev_data* [ %24, %21 ], [ %34, %25 ], !dbg !2216
  %37 = icmp eq %struct.lwip_netdev_data* %36, null, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  br i1 %37, label %38, label %39, !dbg !2219, !prof !996

; <label>:38:                                     ; preds = %35
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !2220
  call void @ukplat_terminate(i32 3) #9, !dbg !2220
  unreachable

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 0, !dbg !2222
  %41 = load %struct.uk_alloc*, %struct.uk_alloc** %40, align 8, !dbg !2222, !tbaa !1736
  %42 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 1, i32 6, !dbg !2223
  %43 = load i16, i16* %42, align 2, !dbg !2223, !tbaa !2061
  %44 = zext i16 %43 to i64, !dbg !2224
  %45 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %36, i64 0, i32 1, i32 4, !dbg !2225
  %46 = load i16, i16* %45, align 2, !dbg !2225, !tbaa !2226
  %47 = call %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc* %41, i64 2048, i64 %44, i16 zeroext %46, i64 0, void (%struct.uk_netbuf*)* null) #10, !dbg !2227
  %48 = icmp eq %struct.uk_netbuf* %47, null, !dbg !2229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  br i1 %48, label %141, label %49, !dbg !2231

; <label>:49:                                     ; preds = %39
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !2232
  %51 = load i16, i16* %50, align 8, !dbg !2232, !tbaa !1158
  %52 = zext i16 %51 to i64, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  %53 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 6, !dbg !2243
  %54 = load i8*, i8** %53, align 8, !dbg !2243, !tbaa !2246
  %55 = icmp eq i8* %54, null, !dbg !2243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  br i1 %55, label %56, label %57, !dbg !2247, !prof !996

; <label>:56:                                     ; preds = %49
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !2248
  call void @ukplat_terminate(i32 3) #9, !dbg !2248
  unreachable

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 2, !dbg !2250
  %59 = load i8*, i8** %58, align 8, !dbg !2250, !tbaa !1146
  %60 = icmp eq i8* %59, null, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2253
  br i1 %60, label %61, label %62, !dbg !2253, !prof !996

; <label>:61:                                     ; preds = %57
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !2254
  call void @ukplat_terminate(i32 3) #9, !dbg !2254
  unreachable

; <label>:62:                                     ; preds = %57
  %63 = ptrtoint i8* %54 to i64, !dbg !2256
  %64 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 7, !dbg !2257
  %65 = load i64, i64* %64, align 8, !dbg !2257, !tbaa !2258
  %66 = ptrtoint i8* %59 to i64, !dbg !2259
  %67 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %47, i64 0, i32 3, !dbg !2260
  %68 = load i16, i16* %67, align 8, !dbg !2260, !tbaa !1152
  %69 = zext i16 %68 to i64, !dbg !2261
  %70 = sub i64 %63, %66, !dbg !2262
  %71 = add i64 %70, %65, !dbg !2263
  %72 = sub i64 %71, %69, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  %73 = icmp ult i64 %72, %52, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  br i1 %73, label %74, label %75, !dbg !2266, !prof !996

; <label>:74:                                     ; preds = %62
  call void @uk_netbuf_free_single(%struct.uk_netbuf* nonnull %47) #10, !dbg !2267
  br label %141, !dbg !2269

; <label>:75:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br label %76, !dbg !2275

; <label>:76:                                     ; preds = %75, %76
  %77 = phi %struct.pbuf* [ %89, %76 ], [ %1, %75 ]
  %78 = phi i8* [ %87, %76 ], [ %59, %75 ]
  %79 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i64 0, i32 1, !dbg !2275
  %80 = load i8*, i8** %79, align 8, !dbg !2275, !tbaa !1149
  %81 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i64 0, i32 3, !dbg !2278
  %82 = load i16, i16* %81, align 2, !dbg !2278, !tbaa !1155
  %83 = zext i16 %82 to i64, !dbg !2279
  %84 = call i8* @memcpy(i8* %78, i8* %80, i64 %83) #10, !dbg !2280
  %85 = load i16, i16* %81, align 2, !dbg !2281, !tbaa !1155
  %86 = zext i16 %85 to i64, !dbg !2282
  %87 = getelementptr inbounds i8, i8* %78, i64 %86, !dbg !2282
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i64 0, i32 0, !dbg !2283
  %89 = load %struct.pbuf*, %struct.pbuf** %88, align 8, !dbg !2283, !tbaa !2284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  %90 = icmp eq %struct.pbuf* %89, null, !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br i1 %90, label %91, label %76, !dbg !2274, !llvm.loop !2287

; <label>:91:                                     ; preds = %76
  %92 = load i16, i16* %50, align 8, !dbg !2289, !tbaa !1158
  store i16 %92, i16* %67, align 8, !dbg !2290, !tbaa !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2291
  %93 = ptrtoint %struct.uk_netbuf* %47 to i64
  %94 = ptrtoint %struct.uk_netdev* %12 to i64
  %95 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 0
  %96 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 2
  %97 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %12, i64 0, i32 5, i64 0
  %98 = bitcast %struct.uk_netdev_tx_queue** %97 to i64*
  br label %99, !dbg !2291

; <label>:99:                                     ; preds = %134, %91
  %100 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2292, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2295
  %101 = icmp ult i64 %100, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br i1 %101, label %125, label %102, !dbg !2296

; <label>:102:                                    ; preds = %99
  %103 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2297, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2300
  %104 = icmp ugt i64 %103, ptrtoint ([0 x i8]* @_end to i64), !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  br i1 %104, label %125, label %105, !dbg !2301

; <label>:105:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2314
  %106 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)** %95, align 8, !dbg !2316, !tbaa !2319
  %107 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)* %106, null, !dbg !2316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  br i1 %107, label %108, label %109, !dbg !2320, !prof !996

; <label>:108:                                    ; preds = %105
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !2321
  call void @ukplat_terminate(i32 3) #9, !dbg !2321
  unreachable

; <label>:109:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2323
  %110 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %96, align 8, !dbg !2325, !tbaa !1322
  %111 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %110, i64 0, i32 0, !dbg !2325
  %112 = load i32, i32* %111, align 8, !dbg !2325, !tbaa !1323
  %113 = icmp eq i32 %112, 3, !dbg !2325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2328
  br i1 %113, label %115, label %114, !dbg !2328, !prof !1164

; <label>:114:                                    ; preds = %109
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !2329
  call void @ukplat_terminate(i32 3) #9, !dbg !2329
  unreachable

; <label>:115:                                    ; preds = %109
  %116 = load i64, i64* %98, align 8, !dbg !2331, !tbaa !1096
  %117 = icmp slt i64 %116, 1, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2331
  %118 = inttoptr i64 %116 to %struct.uk_netdev_tx_queue*, !dbg !2331
  br i1 %117, label %119, label %122, !dbg !2331

; <label>:119:                                    ; preds = %115
  %120 = icmp sgt i64 %116, -513, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  br i1 %120, label %121, label %123, !dbg !2334, !prof !996

; <label>:121:                                    ; preds = %119
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !2335
  call void @ukplat_terminate(i32 3) #9, !dbg !2335
  unreachable

; <label>:122:                                    ; preds = %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  br label %123

; <label>:123:                                    ; preds = %119, %122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2337
  %124 = call i32 %106(%struct.uk_netdev* nonnull %12, %struct.uk_netdev_tx_queue* %118, %struct.uk_netbuf* nonnull %47) #10, !dbg !2339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  store i32 %124, i32* %4, align 4, !dbg !2342, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2342
  br label %134, !dbg !2342

; <label>:125:                                    ; preds = %102, %99
  %126 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2343, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  %127 = and i64 %126, -65536, !dbg !2349
  %128 = or i64 %127, 4097, !dbg !2349
  %129 = add nsw i64 %128, -1, !dbg !2349
  %130 = inttoptr i64 %129 to i32*, !dbg !2350
  %131 = load i32, i32* %130, align 4096, !dbg !2351, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  %132 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_tx_one\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %94, i64 0, i64 %93, i32 %131, i32 (%struct.uk_netdev*, i16, %struct.uk_netbuf*)* nonnull @uk_netdev_tx_one) #7, !dbg !2353, !srcloc !2354
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %132) #7, !dbg !2355, !srcloc !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %133 = load i32, i32* %4, align 4, !dbg !2359, !tbaa !1038
  br label %134

; <label>:134:                                    ; preds = %123, %125
  %135 = phi i32 [ %124, %123 ], [ %133, %125 ], !dbg !2359
  %136 = and i32 %135, -2147483647, !dbg !2359
  %137 = icmp eq i32 %136, 0, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  br i1 %137, label %99, label %138, !dbg !2360, !llvm.loop !2361

; <label>:138:                                    ; preds = %134
  %139 = icmp slt i32 %135, 0, !dbg !2363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  br i1 %139, label %140, label %141, !dbg !2365, !prof !996

; <label>:140:                                    ; preds = %138
  call void @uk_netbuf_free_single(%struct.uk_netbuf* nonnull %47) #10, !dbg !2366
  br label %141, !dbg !2368

; <label>:141:                                    ; preds = %138, %39, %140, %74
  %142 = phi i8 [ -1, %74 ], [ -12, %140 ], [ -1, %39 ], [ 0, %138 ], !dbg !2369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7, !dbg !2370
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2370
  ret i8 %142, !dbg !2370
}

; Function Attrs: noredzone
declare dso_local %struct.uk_hwaddr* @uk_netdev_hwaddr_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @uk_netdev_mtu_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone
declare dso_local void @netif_set_status_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @uknetdev_updown(%struct.netif*) #0 !dbg !2371 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwip_netdev_data*, align 8
  %4 = bitcast i32* %2 to i8*, !dbg !2414
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !2414
  %5 = bitcast %struct.lwip_netdev_data** %3 to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2415
  %6 = icmp eq %struct.netif* %0, null, !dbg !2416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2419
  br i1 %6, label %7, label %8, !dbg !2419, !prof !996

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2420
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2420
  unreachable

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !2422
  %10 = bitcast i8** %9 to %struct.uk_netdev**, !dbg !2422
  %11 = load %struct.uk_netdev*, %struct.uk_netdev** %10, align 8, !dbg !2422, !tbaa !1398
  %12 = icmp eq %struct.uk_netdev* %11, null, !dbg !2424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2427
  br i1 %12, label %13, label %14, !dbg !2427, !prof !996

; <label>:13:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2428
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2428
  unreachable

; <label>:14:                                     ; preds = %8
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2430, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2433
  %16 = icmp ult i64 %15, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2434
  br i1 %16, label %26, label %17, !dbg !2434

; <label>:17:                                     ; preds = %14
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2435, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  %19 = icmp ugt i64 %18, ptrtoint ([0 x i8]* @_end to i64), !dbg !2434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  br i1 %19, label %26, label %20, !dbg !2439

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 8, !dbg !2443
  %22 = bitcast i8** %21 to i64*, !dbg !2443
  %23 = load i64, i64* %22, align 8, !dbg !2443, !tbaa !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  %24 = bitcast %struct.lwip_netdev_data** %3 to i64*, !dbg !2446
  store i64 %23, i64* %24, align 8, !dbg !2446, !tbaa !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2446
  %25 = inttoptr i64 %23 to %struct.lwip_netdev_data*, !dbg !2446
  br label %36, !dbg !2446

; <label>:26:                                     ; preds = %17, %14
  %27 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2447, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  %28 = and i64 %27, -65536, !dbg !2453
  %29 = or i64 %28, 4097, !dbg !2453
  %30 = add nsw i64 %29, -1, !dbg !2453
  %31 = inttoptr i64 %30 to i32*, !dbg !2454
  %32 = load i32, i32* %31, align 4096, !dbg !2455, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2456
  %33 = ptrtoint %struct.uk_netdev* %11 to i64, !dbg !2457
  %34 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _retrieve_scratchpad\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %33, i32 %32, %struct.lwip_netdev_data* (%struct.uk_netdev*)* nonnull @_retrieve_scratchpad) #7, !dbg !2457, !srcloc !2458
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.lwip_netdev_data** nonnull %3, i64 %34) #7, !dbg !2459, !srcloc !2463
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2464, !tbaa !1096
  br label %36

; <label>:36:                                     ; preds = %26, %20
  %37 = phi %struct.lwip_netdev_data* [ %35, %26 ], [ %25, %20 ], !dbg !2464
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !2467
  %39 = load i8, i8* %38, align 1, !dbg !2467, !tbaa !1939
  %40 = and i8 %39, 1, !dbg !2468
  %41 = icmp eq i8 %40, 0, !dbg !2468
  %42 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %37, i64 0, i32 1, i32 7, !dbg !2464
  %43 = load i32, i32* %42, align 8, !dbg !2464, !tbaa !2469
  %44 = and i32 %43, 1, !dbg !2464
  %45 = icmp ne i32 %44, 0, !dbg !2464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2470
  br i1 %41, label %123, label %46, !dbg !2470

; <label>:46:                                     ; preds = %36
  %47 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2471, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  %48 = icmp uge i64 %47, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  br i1 %45, label %49, label %69, !dbg !2476

; <label>:49:                                     ; preds = %46
  br i1 %48, label %50, label %55, !dbg !2477

; <label>:50:                                     ; preds = %49
  %51 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2478, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2481
  %52 = icmp ugt i64 %51, ptrtoint ([0 x i8]* @_end to i64), !dbg !2477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  br i1 %52, label %55, label %53, !dbg !2482

; <label>:53:                                     ; preds = %50
  %54 = call i32 @uk_netdev_rxq_intr_enable(%struct.uk_netdev* nonnull %11, i16 zeroext 0) #8, !dbg !2483
  store i32 %54, i32* %2, align 4, !dbg !2483, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  br label %65, !dbg !2483

; <label>:55:                                     ; preds = %50, %49
  %56 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2486, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  %57 = and i64 %56, -65536, !dbg !2492
  %58 = or i64 %57, 4097, !dbg !2492
  %59 = add nsw i64 %58, -1, !dbg !2492
  %60 = inttoptr i64 %59 to i32*, !dbg !2493
  %61 = load i32, i32* %60, align 4096, !dbg !2494, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2495
  %62 = ptrtoint %struct.uk_netdev* %11 to i64, !dbg !2496
  %63 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_rxq_intr_enable\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %62, i64 0, i32 %61, i32 (%struct.uk_netdev*, i16)* nonnull @uk_netdev_rxq_intr_enable) #7, !dbg !2496, !srcloc !2497
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %63) #7, !dbg !2498, !srcloc !2501
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = load i32, i32* %2, align 4, !dbg !2502, !tbaa !1038
  br label %65

; <label>:65:                                     ; preds = %53, %55
  %66 = phi i32 [ %54, %53 ], [ %64, %55 ], !dbg !2502
  %67 = icmp eq i32 %66, 1, !dbg !2504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  br i1 %67, label %68, label %156, !dbg !2505

; <label>:68:                                     ; preds = %65
  call void @uknetdev_poll(%struct.netif* nonnull %0) #8, !dbg !2506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2508
  br label %156, !dbg !2508

; <label>:69:                                     ; preds = %46
  br i1 %48, label %70, label %77, !dbg !2509

; <label>:70:                                     ; preds = %69
  %71 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2510, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2513
  %72 = icmp ugt i64 %71, ptrtoint ([0 x i8]* @_end to i64), !dbg !2509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  br i1 %72, label %77, label %73, !dbg !2514

; <label>:73:                                     ; preds = %70
  %74 = call %struct.uk_sched* @uk_sched_get_default() #10, !dbg !2515
  %75 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2515, !tbaa !1096
  %76 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %75, i64 0, i32 4, !dbg !2515
  store %struct.uk_sched* %74, %struct.uk_sched** %76, align 8, !dbg !2515, !tbaa !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2515
  br label %90, !dbg !2515

; <label>:77:                                     ; preds = %70, %69
  %78 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2518, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  %79 = and i64 %78, -65536, !dbg !2524
  %80 = or i64 %79, 4097, !dbg !2524
  %81 = add nsw i64 %80, -1, !dbg !2524
  %82 = inttoptr i64 %81 to i32*, !dbg !2525
  %83 = load i32, i32* %82, align 4096, !dbg !2526, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  %84 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_get_default\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %83, %struct.uk_sched* ()* nonnull @uk_sched_get_default) #7, !dbg !2528, !srcloc !2529
  %85 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2530, !tbaa !1096
  %86 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %85, i64 0, i32 4, !dbg !2530
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_sched** nonnull %86, i64 %84) #7, !dbg !2530, !srcloc !2534
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %87 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2535, !tbaa !1096
  %88 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %87, i64 0, i32 4
  %89 = load %struct.uk_sched*, %struct.uk_sched** %88, align 8, !dbg !2535, !tbaa !2517
  br label %90

; <label>:90:                                     ; preds = %73, %77
  %91 = phi %struct.uk_sched* [ %74, %73 ], [ %89, %77 ], !dbg !2535
  %92 = icmp eq %struct.uk_sched* %91, null, !dbg !2535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2538
  br i1 %92, label %93, label %94, !dbg !2538, !prof !996

; <label>:93:                                     ; preds = %90
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !2539
  call void @ukplat_terminate(i32 3) #9, !dbg !2539
  unreachable

; <label>:94:                                     ; preds = %90
  %95 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2541, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  %96 = icmp ult i64 %95, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  br i1 %96, label %108, label %97, !dbg !2545

; <label>:97:                                     ; preds = %94
  %98 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2546, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2549
  %99 = icmp ugt i64 %98, ptrtoint ([0 x i8]* @_end to i64), !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2550
  br i1 %99, label %108, label %100, !dbg !2550

; <label>:100:                                    ; preds = %97
  %101 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2551, !tbaa !1096
  %102 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %101, i64 0, i32 4, !dbg !2551
  %103 = load %struct.uk_sched*, %struct.uk_sched** %102, align 8, !dbg !2551, !tbaa !2517
  %104 = bitcast %struct.netif* %0 to i8*, !dbg !2551
  %105 = call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %103, i8* null, %struct.uk_thread_attr* null, void (i8*)* nonnull @_poll_netif, i8* %104) #10, !dbg !2551
  %106 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2551, !tbaa !1096
  %107 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %106, i64 0, i32 2, !dbg !2551
  store %struct.uk_thread* %105, %struct.uk_thread** %107, align 8, !dbg !2551, !tbaa !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br label %156, !dbg !2551

; <label>:108:                                    ; preds = %97, %94
  %109 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2554, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  %110 = and i64 %109, -65536, !dbg !2560
  %111 = or i64 %110, 4097, !dbg !2560
  %112 = add nsw i64 %111, -1, !dbg !2560
  %113 = inttoptr i64 %112 to i32*, !dbg !2561
  %114 = load i32, i32* %113, align 4096, !dbg !2562, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2563
  %115 = ptrtoint %struct.netif* %0 to i64, !dbg !2564
  %116 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2564, !tbaa !1096
  %117 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %116, i64 0, i32 4, !dbg !2564
  %118 = bitcast %struct.uk_sched** %117 to i64*, !dbg !2564
  %119 = load i64, i64* %118, align 8, !dbg !2564, !tbaa !2517
  %120 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_sched_thread_create\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %119, i64 0, i64 0, i64 ptrtoint (void (i8*)* @_poll_netif to i64), i64 %115, i32 %114, %struct.uk_thread* (%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*)* nonnull @uk_sched_thread_create) #7, !dbg !2564, !srcloc !2565
  %121 = load %struct.lwip_netdev_data*, %struct.lwip_netdev_data** %3, align 8, !dbg !2566, !tbaa !1096
  %122 = getelementptr inbounds %struct.lwip_netdev_data, %struct.lwip_netdev_data* %121, i64 0, i32 2, !dbg !2566
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_thread** nonnull %122, i64 %120) #7, !dbg !2566, !srcloc !2570
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %156

; <label>:123:                                    ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2571
  br i1 %45, label %124, label %156, !dbg !2571

; <label>:124:                                    ; preds = %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2580
  %125 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 3, !dbg !2582
  %126 = load %struct.uk_netdev_ops*, %struct.uk_netdev_ops** %125, align 8, !dbg !2582, !tbaa !2585
  %127 = icmp eq %struct.uk_netdev_ops* %126, null, !dbg !2582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br i1 %127, label %128, label %129, !dbg !2586, !prof !996

; <label>:128:                                    ; preds = %124
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !2587
  call void @ukplat_terminate(i32 3) #9, !dbg !2587
  unreachable

; <label>:129:                                    ; preds = %124
  %130 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 2, !dbg !2589
  %131 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %130, align 8, !dbg !2589, !tbaa !1322
  %132 = icmp eq %struct.uk_netdev_data* %131, null, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2592
  br i1 %132, label %133, label %134, !dbg !2592, !prof !996

; <label>:133:                                    ; preds = %129
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !2593
  call void @ukplat_terminate(i32 3) #9, !dbg !2593
  unreachable

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %131, i64 0, i32 0, !dbg !2595
  %136 = load i32, i32* %135, align 8, !dbg !2595, !tbaa !1323
  %137 = icmp eq i32 %136, 3, !dbg !2595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  br i1 %137, label %139, label %138, !dbg !2598, !prof !1164

; <label>:138:                                    ; preds = %134
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !2599
  call void @ukplat_terminate(i32 3) #9, !dbg !2599
  unreachable

; <label>:139:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %140 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %11, i64 0, i32 4, i64 0, !dbg !2603
  %141 = bitcast %struct.uk_netdev_rx_queue** %140 to i64*, !dbg !2603
  %142 = load i64, i64* %141, align 8, !dbg !2603, !tbaa !1096
  %143 = icmp slt i64 %142, 1, !dbg !2603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2603
  %144 = inttoptr i64 %142 to %struct.uk_netdev_rx_queue*, !dbg !2603
  br i1 %143, label %145, label %148, !dbg !2603

; <label>:145:                                    ; preds = %139
  %146 = icmp sgt i64 %142, -513, !dbg !2603
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2606
  br i1 %146, label %147, label %149, !dbg !2606, !prof !996

; <label>:147:                                    ; preds = %145
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2607
  call void @ukplat_terminate(i32 3) #9, !dbg !2607
  unreachable

; <label>:148:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2606
  br label %149

; <label>:149:                                    ; preds = %148, %145
  %150 = getelementptr inbounds %struct.uk_netdev_ops, %struct.uk_netdev_ops* %126, i64 0, i32 1, !dbg !2609
  %151 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)** %150, align 8, !dbg !2609, !tbaa !2611
  %152 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)* %151, null, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  br i1 %152, label %155, label %153, !dbg !2613, !prof !996

; <label>:153:                                    ; preds = %149
  %154 = call i32 %151(%struct.uk_netdev* nonnull %11, %struct.uk_netdev_rx_queue* %144) #10, !dbg !2614
  br label %155, !dbg !2615

; <label>:155:                                    ; preds = %149, %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2618
  br label %156, !dbg !2618

; <label>:156:                                    ; preds = %123, %155, %68, %65, %108, %100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !2619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2619
  ret void, !dbg !2619
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @uknetdev_addif(%struct.uk_netdev*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !884 {
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2624, !tbaa !1096
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !2634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2636
  br i1 %6, label %7, label %9, !dbg !2636, !prof !996

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #10, !dbg !2637
  store i32 12, i32* %8, align 4, !dbg !2639, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  br label %28, !dbg !2642

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  %10 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 1, !dbg !2654
  %11 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %10, align 8, !dbg !2654, !tbaa !1096
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 1, i64 280) #10, !dbg !2655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  %13 = icmp eq i8* %12, null, !dbg !2658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  br i1 %13, label %28, label %14, !dbg !2642

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %12 to %struct.netif*, !dbg !2660
  %16 = bitcast %struct.uk_netdev* %0 to i8*, !dbg !2662
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2663, !srcloc !2665
  %17 = load volatile i8*, i8** @uknetdev_addif.pethernet_input, align 8, !dbg !2663, !tbaa !1096
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2666, !srcloc !2667
  %18 = bitcast i8* %17 to i8 (%struct.pbuf*, %struct.netif*)*, !dbg !2668
  %19 = tail call %struct.netif* @netif_add(%struct.netif* %15, %struct.ip4_addr* %1, %struct.ip4_addr* %2, %struct.ip4_addr* %3, i8* %16, i8 (%struct.netif*)* nonnull @uknetdev_init, i8 (%struct.pbuf*, %struct.netif*)* %18) #10, !dbg !2669
  %20 = getelementptr inbounds i8, i8* %12, i64 184, !dbg !2671
  %21 = bitcast i8* %20 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !2671
  %22 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %21, align 8, !dbg !2671, !tbaa !1008
  %23 = icmp eq i8 (%struct.pbuf*, %struct.netif*)* %22, null, !dbg !2671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2674
  br i1 %23, label %24, label %25, !dbg !2674, !prof !996

; <label>:24:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2675
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2675
  unreachable

; <label>:25:                                     ; preds = %14
  %26 = icmp eq %struct.netif* %19, null, !dbg !2677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2679
  br i1 %26, label %27, label %28, !dbg !2679

; <label>:27:                                     ; preds = %25
  tail call void @mem_free(i8* nonnull %12) #10, !dbg !2680
  br label %28, !dbg !2682

; <label>:28:                                     ; preds = %25, %9, %7, %27
  %29 = phi %struct.netif* [ null, %27 ], [ null, %7 ], [ null, %9 ], [ %19, %25 ], !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2684
  ret %struct.netif* %29, !dbg !2684
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
define internal i32 @uk_netdev_tx_one(%struct.uk_netdev*, i16 zeroext, %struct.uk_netbuf*) #3 !dbg !2303 {
  %4 = icmp eq %struct.uk_netdev* %0, null, !dbg !2688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  br i1 %4, label %5, label %6, !dbg !2690, !prof !996

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2691
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2691
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 0, !dbg !2693
  %8 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)** %7, align 8, !dbg !2693, !tbaa !2319
  %9 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)* %8, null, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  br i1 %9, label %10, label %11, !dbg !2694, !prof !996

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !2695
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2695
  unreachable

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i16 %1, 0, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2698
  br i1 %12, label %14, label %13, !dbg !2698, !prof !1164

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2699
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2699
  unreachable

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !2701
  %16 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %15, align 8, !dbg !2701, !tbaa !1322
  %17 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %16, i64 0, i32 0, !dbg !2701
  %18 = load i32, i32* %17, align 8, !dbg !2701, !tbaa !1323
  %19 = icmp eq i32 %18, 3, !dbg !2701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  br i1 %19, label %21, label %20, !dbg !2702, !prof !1164

; <label>:20:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2703
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2703
  unreachable

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 5, i64 0, !dbg !2704
  %23 = bitcast %struct.uk_netdev_tx_queue** %22 to i64*, !dbg !2704
  %24 = load i64, i64* %23, align 8, !dbg !2704, !tbaa !1096
  %25 = icmp slt i64 %24, 1, !dbg !2704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2704
  %26 = inttoptr i64 %24 to %struct.uk_netdev_tx_queue*, !dbg !2704
  br i1 %25, label %27, label %30, !dbg !2704

; <label>:27:                                     ; preds = %21
  %28 = icmp sgt i64 %24, -513, !dbg !2704
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2705
  br i1 %28, label %29, label %31, !dbg !2705, !prof !996

; <label>:29:                                     ; preds = %27
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !2706
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2706
  unreachable

; <label>:30:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2705
  br label %31

; <label>:31:                                     ; preds = %30, %27
  %32 = icmp eq %struct.uk_netbuf* %2, null, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  br i1 %32, label %33, label %34, !dbg !2709, !prof !996

; <label>:33:                                     ; preds = %31
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !2710
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2710
  unreachable

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 %8(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_tx_queue* %26, %struct.uk_netbuf* nonnull %2) #10, !dbg !2712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  ret i32 %35, !dbg !2713
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_netdev_rxq_intr_enable(%struct.uk_netdev*, i16 zeroext) #3 !dbg !2714 {
  %3 = icmp eq %struct.uk_netdev* %0, null, !dbg !2720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2723
  br i1 %3, label %4, label %5, !dbg !2723, !prof !996

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2724
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2724
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 3, !dbg !2726
  %7 = load %struct.uk_netdev_ops*, %struct.uk_netdev_ops** %6, align 8, !dbg !2726, !tbaa !2585
  %8 = icmp eq %struct.uk_netdev_ops* %7, null, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  br i1 %8, label %9, label %10, !dbg !2729, !prof !996

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !2730
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2730
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 2, !dbg !2732
  %12 = load %struct.uk_netdev_data*, %struct.uk_netdev_data** %11, align 8, !dbg !2732, !tbaa !1322
  %13 = icmp eq %struct.uk_netdev_data* %12, null, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  br i1 %13, label %14, label %15, !dbg !2735, !prof !996

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !2736
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2736
  unreachable

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.uk_netdev_data, %struct.uk_netdev_data* %12, i64 0, i32 0, !dbg !2738
  %17 = load i32, i32* %16, align 8, !dbg !2738, !tbaa !1323
  %18 = icmp eq i32 %17, 3, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2741
  br i1 %18, label %20, label %19, !dbg !2741, !prof !1164

; <label>:19:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2742
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2742
  unreachable

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i16 %1, 0, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br i1 %21, label %23, label %22, !dbg !2747, !prof !1164

; <label>:22:                                     ; preds = %20
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2748
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2748
  unreachable

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.uk_netdev, %struct.uk_netdev* %0, i64 0, i32 4, i64 0, !dbg !2750
  %25 = bitcast %struct.uk_netdev_rx_queue** %24 to i64*, !dbg !2750
  %26 = load i64, i64* %25, align 8, !dbg !2750, !tbaa !1096
  %27 = icmp slt i64 %26, 1, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  %28 = inttoptr i64 %26 to %struct.uk_netdev_rx_queue*, !dbg !2750
  br i1 %27, label %29, label %32, !dbg !2750

; <label>:29:                                     ; preds = %23
  %30 = icmp sgt i64 %26, -513, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  br i1 %30, label %31, label %33, !dbg !2753, !prof !996

; <label>:31:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !2754
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2754
  unreachable

; <label>:32:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  br label %33

; <label>:33:                                     ; preds = %32, %29
  %34 = getelementptr inbounds %struct.uk_netdev_ops, %struct.uk_netdev_ops* %7, i64 0, i32 0, !dbg !2756
  %35 = load i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)** %34, align 8, !dbg !2756, !tbaa !2758
  %36 = icmp eq i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)* %35, null, !dbg !2756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2759
  br i1 %36, label %39, label %37, !dbg !2759, !prof !996

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 %35(%struct.uk_netdev* nonnull %0, %struct.uk_netdev_rx_queue* %28) #10, !dbg !2760
  br label %39, !dbg !2761

; <label>:39:                                     ; preds = %33, %37
  %40 = phi i32 [ %38, %37 ], [ -134, %33 ], !dbg !2762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  ret i32 %40, !dbg !2764
}

; Function Attrs: noredzone
declare dso_local %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*) #5

; Function Attrs: noredzone nounwind
define internal void @_poll_netif(i8*) #0 !dbg !2765 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #7, !dbg !2771, !srcloc !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2784, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2787
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  br i1 %3, label %8, label %4, !dbg !2788

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2789, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  br i1 %6, label %8, label %7, !dbg !2793

; <label>:7:                                      ; preds = %4
  tail call void @___poll_netif(i8* %0) #10, !dbg !2794
  unreachable

; <label>:8:                                      ; preds = %1, %4
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2796, !srcloc !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2800
  %10 = and i64 %9, -65536, !dbg !2802
  %11 = or i64 %10, 4097, !dbg !2802
  %12 = add nsw i64 %11, -1, !dbg !2802
  %13 = inttoptr i64 %12 to i32*, !dbg !2803
  %14 = load i32, i32* %13, align 4096, !dbg !2804, !tbaa !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2805
  %15 = ptrtoint i8* %0 to i64, !dbg !2806
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ___poll_netif\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %15, i32 %14, void (i8*)* nonnull @___poll_netif) #7, !dbg !2806, !srcloc !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2809
  ret void, !dbg !2809
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
!1026 = !{i32 443614}
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
!1057 = !{i32 -2146006477, i32 -2146006464, i32 -2146006439, i32 -2146006415, i32 -2146006390, i32 -2146006315, i32 -2146006290, i32 -2146006146, i32 -2146002920, i32 -2146002831, i32 -2146002710, i32 -2146002615, i32 -2146002514, i32 -2146002487, i32 -2146002404, i32 -2146002315, i32 -2146002194, i32 -2146002094, i32 -2146001988, i32 -2146001880, i32 -2146005816, i32 -2146005763, i32 -2146005732, i32 -2146005701, i32 -2146005680, i32 -2146005658, i32 -2146005609, i32 -2146005588, i32 -2146005485, i32 -2146001797, i32 -2146001708, i32 -2146001587, i32 -2146001488, i32 -2146001382, i32 -2146001280, i32 -2146001247, i32 -2146001174, i32 -2146001106, i32 -2146005295, i32 -2146005236, i32 -2146005183, i32 -2146005152, i32 -2146005121, i32 -2146005100, i32 -2146005078, i32 -2146005029, i32 -2146005008, i32 -2146001054, i32 -2146000965, i32 -2146000844, i32 -2146000745, i32 -2146000639, i32 -2146000537, i32 -2146000504, i32 -2146000421, i32 -2146000332, i32 -2146000211, i32 -2146000111, i32 -2146000085, i32 -2145999982, i32 -2145999956, i32 -2146004750, i32 -2146004683, i32 -2146004658, i32 -2146004594, i32 -2146004512, i32 -2146004489, i32 -2146004464, i32 -2146004439}
!1058 = !DILocation(line: 238, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 238, column: 3)
!1060 = distinct !DILexicalBlock(scope: !939, file: !3, line: 238, column: 3)
!1061 = !{i32 -2146003401, i32 -2146003384}
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
!1089 = !{i32 -2145996532, i32 -2145996519, i32 -2145996494, i32 -2145996470, i32 -2145996445, i32 -2145996370, i32 -2145996345, i32 -2145996201, i32 -2145996176, i32 -2145993371, i32 -2145993282, i32 -2145993161, i32 -2145993066, i32 -2145992965, i32 -2145992938, i32 -2145992855, i32 -2145992766, i32 -2145992645, i32 -2145992545, i32 -2145992439, i32 -2145992331, i32 -2145995800, i32 -2145995747, i32 -2145995716, i32 -2145995685, i32 -2145995664, i32 -2145995642, i32 -2145995593, i32 -2145995572, i32 -2145995469, i32 -2145995437, i32 -2145992248, i32 -2145992159, i32 -2145992038, i32 -2145991939, i32 -2145991833, i32 -2145991731, i32 -2145991698, i32 -2145991625, i32 -2145991557, i32 -2145995177, i32 -2145995124, i32 -2145995093, i32 -2145995062, i32 -2145995041, i32 -2145995019, i32 -2145994970, i32 -2145994949, i32 -2145991511, i32 -2145991422, i32 -2145991301, i32 -2145991202, i32 -2145991096, i32 -2145990994, i32 -2145990961, i32 -2145990878, i32 -2145990789, i32 -2145990668, i32 -2145990568, i32 -2145990542, i32 -2145990439, i32 -2145990413, i32 -2145994691, i32 -2145994666, i32 -2145994599, i32 -2145994574, i32 -2145994510, i32 -2145994394, i32 -2145994369, i32 -2145994344}
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
!1118 = !DILocation(line: 339, column: 2, scope: !1119, inlinedAt: !1117)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !20, line: 339, column: 2)
!1120 = !DILocation(line: 341, column: 14, scope: !1112, inlinedAt: !1117)
!1121 = !{!1122, !1010, i64 32}
!1122 = !{!"uk_netbuf", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1014, i64 24, !1123, i64 28, !1010, i64 32, !1010, i64 40, !1124, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72}
!1123 = !{!"", !1039, i64 0}
!1124 = !{!"long", !1011, i64 0}
!1125 = !DILocation(line: 341, column: 2, scope: !1112, inlinedAt: !1117)
!1126 = !DILocation(line: 75, column: 2, scope: !1127, inlinedAt: !1104)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !849, line: 75, column: 2)
!1128 = distinct !DILexicalBlock(scope: !1098, file: !849, line: 75, column: 2)
!1129 = !DILocation(line: 75, column: 2, scope: !1128, inlinedAt: !1104)
!1130 = !DILocation(line: 75, column: 2, scope: !1131, inlinedAt: !1104)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !849, line: 75, column: 2)
!1132 = !DILocation(line: 71, column: 23, scope: !1098, inlinedAt: !1104)
!1133 = !DILocation(line: 82, column: 2, scope: !1134, inlinedAt: !1104)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !849, line: 82, column: 2)
!1135 = distinct !DILexicalBlock(scope: !1098, file: !849, line: 82, column: 2)
!1136 = !{!1137, !1011, i64 21}
!1137 = !{!"_netbuf_pbuf", !1138, i64 0, !1010, i64 32}
!1138 = !{!"pbuf_custom", !1139, i64 0, !1010, i64 24}
!1139 = !{!"pbuf", !1010, i64 0, !1010, i64 8, !1014, i64 16, !1014, i64 18, !1011, i64 20, !1011, i64 21, !1011, i64 22, !1011, i64 23}
!1140 = !DILocation(line: 82, column: 2, scope: !1135, inlinedAt: !1104)
!1141 = !DILocation(line: 82, column: 2, scope: !1142, inlinedAt: !1104)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !849, line: 82, column: 2)
!1143 = !DILocation(line: 84, column: 2, scope: !1098, inlinedAt: !1104)
!1144 = !DILocation(line: 227, column: 15, scope: !2)
!1145 = !DILocation(line: 277, column: 28, scope: !944)
!1146 = !{!1122, !1010, i64 16}
!1147 = !DILocation(line: 277, column: 6, scope: !944)
!1148 = !DILocation(line: 277, column: 14, scope: !944)
!1149 = !{!1139, !1010, i64 8}
!1150 = !DILocation(line: 278, column: 26, scope: !944)
!1151 = !DILocation(line: 278, column: 37, scope: !944)
!1152 = !{!1122, !1014, i64 24}
!1153 = !DILocation(line: 278, column: 19, scope: !944)
!1154 = !DILocation(line: 278, column: 23, scope: !944)
!1155 = !{!1139, !1014, i64 18}
!1156 = !DILocation(line: 278, column: 6, scope: !944)
!1157 = !DILocation(line: 278, column: 14, scope: !944)
!1158 = !{!1139, !1014, i64 16}
!1159 = !DILocation(line: 279, column: 13, scope: !944)
!1160 = !DILocation(line: 279, column: 9, scope: !944)
!1161 = !DILocation(line: 228, column: 8, scope: !2)
!1162 = !DILocation(line: 280, column: 7, scope: !967)
!1163 = !DILocation(line: 280, column: 7, scope: !944)
!1164 = !{!"branch_weights", i32 2000, i32 1}
!1165 = !DILocation(line: 288, column: 12, scope: !965)
!1166 = !DILocation(line: 288, column: 8, scope: !966)
!1167 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 293, column: 5, scope: !962)
!1169 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1168)
!1170 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1168)
!1171 = !DILocation(line: 293, column: 5, scope: !962)
!1172 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 293, column: 5, scope: !962)
!1174 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1173)
!1175 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1173)
!1176 = !DILocation(line: 293, column: 5, scope: !963)
!1177 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 154, column: 21, scope: !1179, inlinedAt: !1185)
!1179 = distinct !DISubprogram(name: "uk_thread_current", scope: !160, file: !160, line: 151, type: !1180, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!158}
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "current", scope: !1179, file: !160, line: 153, type: !174)
!1184 = !DILocalVariable(name: "sp", scope: !1179, file: !160, line: 154, type: !47)
!1185 = distinct !DILocation(line: 117, column: 30, scope: !1186, inlinedAt: !1190)
!1186 = distinct !DISubprogram(name: "uk_sched_yield", scope: !188, file: !188, line: 114, type: !459, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1187)
!1187 = !{!1188, !1189}
!1188 = !DILocalVariable(name: "s", scope: !1186, file: !188, line: 116, type: !186)
!1189 = !DILocalVariable(name: "current", scope: !1186, file: !188, line: 117, type: !158)
!1190 = distinct !DILocation(line: 293, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !962, file: !3, line: 293, column: 5)
!1192 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1178)
!1193 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1178)
!1194 = !DILocation(line: 154, column: 16, scope: !1179, inlinedAt: !1185)
!1195 = !DILocation(line: 156, column: 38, scope: !1179, inlinedAt: !1185)
!1196 = !DILocation(line: 156, column: 12, scope: !1179, inlinedAt: !1185)
!1197 = !DILocation(line: 153, column: 21, scope: !1179, inlinedAt: !1185)
!1198 = !DILocation(line: 158, column: 9, scope: !1179, inlinedAt: !1185)
!1199 = !DILocation(line: 158, column: 2, scope: !1179, inlinedAt: !1185)
!1200 = !DILocation(line: 117, column: 20, scope: !1186, inlinedAt: !1190)
!1201 = !DILocation(line: 119, column: 2, scope: !1202, inlinedAt: !1190)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !188, line: 119, column: 2)
!1203 = distinct !DILexicalBlock(scope: !1186, file: !188, line: 119, column: 2)
!1204 = !DILocation(line: 119, column: 2, scope: !1203, inlinedAt: !1190)
!1205 = !DILocation(line: 119, column: 2, scope: !1206, inlinedAt: !1190)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !188, line: 119, column: 2)
!1207 = !DILocation(line: 121, column: 15, scope: !1186, inlinedAt: !1190)
!1208 = !{!1209, !1010, i64 88}
!1209 = !{!"uk_thread", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1210, i64 32, !1039, i64 48, !1124, i64 56, !1211, i64 64, !1212, i64 72, !1010, i64 88, !1010, i64 96, !1039, i64 104, !1010, i64 112, !1010, i64 120}
!1210 = !{!"", !1010, i64 0, !1010, i64 8}
!1211 = !{!"_Bool", !1011, i64 0}
!1212 = !{!"uk_waitq", !1010, i64 0, !1010, i64 8}
!1213 = !DILocation(line: 116, column: 19, scope: !1186, inlinedAt: !1190)
!1214 = !DILocation(line: 122, column: 2, scope: !1215, inlinedAt: !1190)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !188, line: 122, column: 2)
!1216 = distinct !DILexicalBlock(scope: !1186, file: !188, line: 122, column: 2)
!1217 = !DILocation(line: 122, column: 2, scope: !1216, inlinedAt: !1190)
!1218 = !DILocation(line: 122, column: 2, scope: !1219, inlinedAt: !1190)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !188, line: 122, column: 2)
!1220 = !DILocation(line: 123, column: 5, scope: !1186, inlinedAt: !1190)
!1221 = !{!1222, !1010, i64 0}
!1222 = !{!"uk_sched", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1211, i64 72, !1209, i64 80, !1223, i64 208, !1224, i64 224, !1010, i64 248, !1010, i64 256, !1010, i64 264}
!1223 = !{!"uk_thread_list", !1010, i64 0, !1010, i64 8}
!1224 = !{!"ukplat_ctx_callbacks", !1010, i64 0, !1010, i64 8, !1010, i64 16}
!1225 = !DILocation(line: 123, column: 2, scope: !1186, inlinedAt: !1190)
!1226 = !DILocation(line: 124, column: 1, scope: !1186, inlinedAt: !1190)
!1227 = !DILocation(line: 293, column: 5, scope: !1191)
!1228 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 293, column: 5, scope: !959)
!1231 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1229)
!1232 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1229)
!1233 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1230)
!1234 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1230)
!1235 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1230)
!1236 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1230)
!1237 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1230)
!1238 = !DILocation(line: 293, column: 5, scope: !959)
!1239 = !{i32 -2145988359, i32 -2145988346, i32 -2145988321, i32 -2145988297, i32 -2145988272, i32 -2145988197, i32 -2145988172, i32 -2145988028, i32 -2145985882, i32 -2145985793, i32 -2145985672, i32 -2145985577, i32 -2145985476, i32 -2145985449, i32 -2145985366, i32 -2145985277, i32 -2145985156, i32 -2145985056, i32 -2145984950, i32 -2145984842, i32 -2145987745, i32 -2145987692, i32 -2145987661, i32 -2145987630, i32 -2145987609, i32 -2145987587, i32 -2145987538, i32 -2145987517, i32 -2145980698, i32 -2145980609, i32 -2145980488, i32 -2145980389, i32 -2145980283, i32 -2145980181, i32 -2145980148, i32 -2145980075, i32 -2145980007, i32 -2145987145, i32 -2145987092, i32 -2145987061, i32 -2145987030, i32 -2145987009, i32 -2145986987, i32 -2145986938, i32 -2145986917, i32 -2145979957, i32 -2145979868, i32 -2145979747, i32 -2145979648, i32 -2145979542, i32 -2145979440, i32 -2145979407, i32 -2145979324, i32 -2145979235, i32 -2145979114, i32 -2145979014, i32 -2145978988, i32 -2145978885, i32 -2145978859, i32 -2145986659, i32 -2145986592, i32 -2145986567, i32 -2145986503, i32 -2145986387, i32 -2145986362, i32 -2145986337}
!1240 = !DILocation(line: 294, column: 15, scope: !964)
!1241 = !DILocation(line: 294, column: 11, scope: !964)
!1242 = !DILocation(line: 295, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !964, file: !3, line: 295, column: 9)
!1244 = !DILocation(line: 295, column: 9, scope: !964)
!1245 = !DILocation(line: 0, scope: !944)
!1246 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 303, column: 4, scope: !972)
!1248 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1247)
!1249 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1247)
!1250 = !DILocation(line: 303, column: 4, scope: !972)
!1251 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 303, column: 4, scope: !972)
!1253 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1252)
!1254 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1252)
!1255 = !DILocation(line: 303, column: 4, scope: !973)
!1256 = !DILocation(line: 303, column: 4, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !972, file: !3, line: 303, column: 4)
!1258 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 303, column: 4, scope: !969)
!1261 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1259)
!1262 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1259)
!1263 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1260)
!1264 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1260)
!1265 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1260)
!1266 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1260)
!1267 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1260)
!1268 = !DILocation(line: 303, column: 4, scope: !969)
!1269 = !{i32 -2145975458, i32 -2145975445, i32 -2145975420, i32 -2145975396, i32 -2145975371, i32 -2145975296, i32 -2145975271, i32 -2145975127, i32 -2145975102, i32 -2145972305, i32 -2145972216, i32 -2145972095, i32 -2145972000, i32 -2145971899, i32 -2145971872, i32 -2145971789, i32 -2145971700, i32 -2145971579, i32 -2145971479, i32 -2145971373, i32 -2145971265, i32 -2145974726, i32 -2145974673, i32 -2145974642, i32 -2145974611, i32 -2145974590, i32 -2145974568, i32 -2145974519, i32 -2145974498, i32 -2145974395, i32 -2145974363, i32 -2145971182, i32 -2145971093, i32 -2145970972, i32 -2145970873, i32 -2145970767, i32 -2145970665, i32 -2145970632, i32 -2145970559, i32 -2145970491, i32 -2145974103, i32 -2145974050, i32 -2145974019, i32 -2145973988, i32 -2145973967, i32 -2145973945, i32 -2145973896, i32 -2145973875, i32 -2145970446, i32 -2145970357, i32 -2145970236, i32 -2145970137, i32 -2145970031, i32 -2145969929, i32 -2145969896, i32 -2145969813, i32 -2145969724, i32 -2145969603, i32 -2145969503, i32 -2145969477, i32 -2145969374, i32 -2145969348, i32 -2145973617, i32 -2145973592, i32 -2145973525, i32 -2145973500, i32 -2145973436, i32 -2145973320, i32 -2145973295, i32 -2145973270}
!1270 = !DILocation(line: 307, column: 27, scope: !966)
!1271 = !DILocation(line: 307, column: 4, scope: !966)
!1272 = !DILocation(line: 308, column: 3, scope: !966)
!1273 = !DILocation(line: 309, column: 11, scope: !2)
!1274 = !DILocation(line: 309, column: 2, scope: !944)
!1275 = distinct !{!1275, !1276, !1277}
!1276 = !DILocation(line: 237, column: 2, scope: !2)
!1277 = !DILocation(line: 309, column: 37, scope: !2)
!1278 = !DILocation(line: 310, column: 1, scope: !2)
!1279 = !DILocation(line: 194, column: 43, scope: !898)
!1280 = !DILocation(line: 196, column: 2, scope: !898)
!1281 = !DILocation(line: 196, column: 10, scope: !898)
!1282 = !DILocation(line: 197, column: 2, scope: !898)
!1283 = !DILocation(line: 198, column: 2, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !899, line: 198, column: 2)
!1285 = distinct !DILexicalBlock(scope: !898, file: !899, line: 198, column: 2)
!1286 = !DILocation(line: 199, column: 2, scope: !898)
!1287 = !DILocation(line: 200, column: 1, scope: !898)
!1288 = distinct !DISubprogram(name: "uk_netdev_rx_one", scope: !1289, file: !1289, line: 458, type: !1290, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1292)
!1289 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netdev.h", directory: "/root/.unikraft/apps/redis/build")
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!15, !6, !27, !122}
!1292 = !{!1293, !1294, !1295}
!1293 = !DILocalVariable(name: "dev", arg: 1, scope: !1288, file: !1289, line: 458, type: !6)
!1294 = !DILocalVariable(name: "queue_id", arg: 2, scope: !1288, file: !1289, line: 458, type: !27)
!1295 = !DILocalVariable(name: "pkt", arg: 3, scope: !1288, file: !1289, line: 459, type: !122)
!1296 = !DILocation(line: 458, column: 54, scope: !1288)
!1297 = !DILocation(line: 458, column: 68, scope: !1288)
!1298 = !DILocation(line: 459, column: 27, scope: !1288)
!1299 = !DILocation(line: 461, column: 2, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !1289, line: 461, column: 2)
!1301 = distinct !DILexicalBlock(scope: !1288, file: !1289, line: 461, column: 2)
!1302 = !DILocation(line: 461, column: 2, scope: !1301)
!1303 = !DILocation(line: 461, column: 2, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !1289, line: 461, column: 2)
!1305 = !DILocation(line: 462, column: 2, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !1289, line: 462, column: 2)
!1307 = distinct !DILexicalBlock(scope: !1288, file: !1289, line: 462, column: 2)
!1308 = !{!1309, !1010, i64 8}
!1309 = !{!"uk_netdev", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1011, i64 32, !1011, i64 40, !1210, i64 48, !1010, i64 64, !1010, i64 72}
!1310 = !DILocation(line: 462, column: 2, scope: !1307)
!1311 = !DILocation(line: 462, column: 2, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !1289, line: 462, column: 2)
!1313 = !DILocation(line: 463, column: 2, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !1289, line: 463, column: 2)
!1315 = distinct !DILexicalBlock(scope: !1288, file: !1289, line: 463, column: 2)
!1316 = !DILocation(line: 463, column: 2, scope: !1315)
!1317 = !DILocation(line: 463, column: 2, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !1289, line: 463, column: 2)
!1319 = !DILocation(line: 464, column: 2, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !1289, line: 464, column: 2)
!1321 = distinct !DILexicalBlock(scope: !1288, file: !1289, line: 464, column: 2)
!1322 = !{!1309, !1010, i64 16}
!1323 = !{!1324, !1011, i64 0}
!1324 = !{!"uk_netdev_data", !1011, i64 0, !1010, i64 8, !1014, i64 16, !1010, i64 24}
!1325 = !DILocation(line: 464, column: 2, scope: !1321)
!1326 = !DILocation(line: 464, column: 2, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !1289, line: 464, column: 2)
!1328 = !DILocation(line: 465, column: 2, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !1289, line: 465, column: 2)
!1330 = distinct !DILexicalBlock(scope: !1288, file: !1289, line: 465, column: 2)
!1331 = !DILocation(line: 465, column: 2, scope: !1330)
!1332 = !DILocation(line: 465, column: 2, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !1289, line: 465, column: 2)
!1334 = !DILocation(line: 466, column: 2, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1289, line: 466, column: 2)
!1336 = distinct !DILexicalBlock(scope: !1288, file: !1289, line: 466, column: 2)
!1337 = !DILocation(line: 466, column: 2, scope: !1336)
!1338 = !DILocation(line: 466, column: 2, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !1289, line: 466, column: 2)
!1340 = !DILocation(line: 468, column: 9, scope: !1288)
!1341 = !DILocation(line: 468, column: 2, scope: !1288)
!1342 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 154, column: 21, scope: !1179, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 117, column: 30, scope: !1186)
!1345 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1343)
!1346 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1343)
!1347 = !DILocation(line: 154, column: 16, scope: !1179, inlinedAt: !1344)
!1348 = !DILocation(line: 156, column: 38, scope: !1179, inlinedAt: !1344)
!1349 = !DILocation(line: 156, column: 12, scope: !1179, inlinedAt: !1344)
!1350 = !DILocation(line: 153, column: 21, scope: !1179, inlinedAt: !1344)
!1351 = !DILocation(line: 158, column: 9, scope: !1179, inlinedAt: !1344)
!1352 = !DILocation(line: 158, column: 2, scope: !1179, inlinedAt: !1344)
!1353 = !DILocation(line: 117, column: 20, scope: !1186)
!1354 = !DILocation(line: 119, column: 2, scope: !1202)
!1355 = !DILocation(line: 119, column: 2, scope: !1203)
!1356 = !DILocation(line: 119, column: 2, scope: !1206)
!1357 = !DILocation(line: 121, column: 15, scope: !1186)
!1358 = !DILocation(line: 116, column: 19, scope: !1186)
!1359 = !DILocation(line: 122, column: 2, scope: !1215)
!1360 = !DILocation(line: 122, column: 2, scope: !1216)
!1361 = !DILocation(line: 122, column: 2, scope: !1219)
!1362 = !DILocation(line: 123, column: 5, scope: !1186)
!1363 = !DILocation(line: 123, column: 2, scope: !1186)
!1364 = !DILocation(line: 124, column: 1, scope: !1186)
!1365 = !DILocation(line: 186, column: 42, scope: !922)
!1366 = !DILocation(line: 188, column: 2, scope: !922)
!1367 = !DILocation(line: 188, column: 10, scope: !922)
!1368 = !DILocation(line: 189, column: 2, scope: !922)
!1369 = !DILocation(line: 190, column: 2, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !899, line: 190, column: 2)
!1371 = distinct !DILexicalBlock(scope: !922, file: !899, line: 190, column: 2)
!1372 = !DILocation(line: 191, column: 2, scope: !922)
!1373 = !DILocation(line: 192, column: 1, scope: !922)
!1374 = distinct !DISubprogram(name: "uknetdev_poll", scope: !3, file: !3, line: 328, type: !814, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1375)
!1375 = !{!1376, !1377}
!1376 = !DILocalVariable(name: "nf", arg: 1, scope: !1374, file: !3, line: 328, type: !733)
!1377 = !DILocalVariable(name: "dev", scope: !1374, file: !3, line: 330, type: !6)
!1378 = !DILocation(line: 328, column: 34, scope: !1374)
!1379 = !DILocation(line: 332, column: 2, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 332, column: 2)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 332, column: 2)
!1382 = !DILocation(line: 332, column: 2, scope: !1381)
!1383 = !DILocation(line: 332, column: 2, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 332, column: 2)
!1385 = !DILocation(line: 338, column: 2, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 338, column: 2)
!1387 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 338, column: 2)
!1388 = !DILocation(line: 338, column: 2, scope: !1387)
!1389 = !DILocation(line: 338, column: 2, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 338, column: 2)
!1391 = !DILocation(line: 339, column: 2, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 339, column: 2)
!1393 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 339, column: 2)
!1394 = !DILocation(line: 339, column: 2, scope: !1393)
!1395 = !DILocation(line: 339, column: 2, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 339, column: 2)
!1397 = !DILocation(line: 341, column: 8, scope: !1374)
!1398 = !{!1009, !1010, i64 232}
!1399 = !DILocation(line: 330, column: 20, scope: !1374)
!1400 = !DILocation(line: 342, column: 2, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 342, column: 2)
!1402 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 342, column: 2)
!1403 = !DILocation(line: 342, column: 2, scope: !1402)
!1404 = !DILocation(line: 342, column: 2, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 342, column: 2)
!1406 = !DILocation(line: 348, column: 27, scope: !1374)
!1407 = !DILocation(line: 348, column: 2, scope: !1374)
!1408 = !DILocation(line: 350, column: 1, scope: !1374)
!1409 = distinct !DISubprogram(name: "___poll_netif", scope: !3, file: !3, line: 380, type: !263, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "arg", arg: 1, scope: !1409, file: !3, line: 380, type: !25)
!1412 = !DILocalVariable(name: "nf", scope: !1409, file: !3, line: 381, type: !733)
!1413 = !DILocalVariable(name: "tid", scope: !1414, file: !3, line: 386, type: !176)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 386, column: 3)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 386, column: 3)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 386, column: 3)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 386, column: 3)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 386, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 383, column: 12)
!1420 = !DILocation(line: 380, column: 26, scope: !1409)
!1421 = !DILocation(line: 381, column: 21, scope: !1409)
!1422 = !DILocation(line: 381, column: 16, scope: !1409)
!1423 = !DILocation(line: 383, column: 2, scope: !1409)
!1424 = !DILocation(line: 385, column: 3, scope: !1419)
!1425 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 386, column: 3, scope: !1417)
!1427 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1426)
!1428 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1426)
!1429 = !DILocation(line: 386, column: 3, scope: !1417)
!1430 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 386, column: 3, scope: !1417)
!1432 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1431)
!1433 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1431)
!1434 = !DILocation(line: 386, column: 3, scope: !1418)
!1435 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 154, column: 21, scope: !1179, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 117, column: 30, scope: !1186, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 386, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 386, column: 3)
!1440 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1436)
!1441 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1436)
!1442 = !DILocation(line: 154, column: 16, scope: !1179, inlinedAt: !1437)
!1443 = !DILocation(line: 156, column: 38, scope: !1179, inlinedAt: !1437)
!1444 = !DILocation(line: 156, column: 12, scope: !1179, inlinedAt: !1437)
!1445 = !DILocation(line: 153, column: 21, scope: !1179, inlinedAt: !1437)
!1446 = !DILocation(line: 158, column: 9, scope: !1179, inlinedAt: !1437)
!1447 = !DILocation(line: 158, column: 2, scope: !1179, inlinedAt: !1437)
!1448 = !DILocation(line: 117, column: 20, scope: !1186, inlinedAt: !1438)
!1449 = !DILocation(line: 119, column: 2, scope: !1202, inlinedAt: !1438)
!1450 = !DILocation(line: 119, column: 2, scope: !1203, inlinedAt: !1438)
!1451 = !DILocation(line: 119, column: 2, scope: !1206, inlinedAt: !1438)
!1452 = !DILocation(line: 121, column: 15, scope: !1186, inlinedAt: !1438)
!1453 = !DILocation(line: 116, column: 19, scope: !1186, inlinedAt: !1438)
!1454 = !DILocation(line: 122, column: 2, scope: !1215, inlinedAt: !1438)
!1455 = !DILocation(line: 122, column: 2, scope: !1216, inlinedAt: !1438)
!1456 = !DILocation(line: 122, column: 2, scope: !1219, inlinedAt: !1438)
!1457 = !DILocation(line: 123, column: 5, scope: !1186, inlinedAt: !1438)
!1458 = !DILocation(line: 123, column: 2, scope: !1186, inlinedAt: !1438)
!1459 = !DILocation(line: 124, column: 1, scope: !1186, inlinedAt: !1438)
!1460 = !DILocation(line: 386, column: 3, scope: !1439)
!1461 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 386, column: 3, scope: !1414)
!1464 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1462)
!1465 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1462)
!1466 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1463)
!1467 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1463)
!1468 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1463)
!1469 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1463)
!1470 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1463)
!1471 = !DILocation(line: 386, column: 3, scope: !1414)
!1472 = !{i32 -2145958576, i32 -2145958563, i32 -2145958538, i32 -2145958514, i32 -2145958489, i32 -2145958414, i32 -2145958389, i32 -2145958245, i32 -2145956099, i32 -2145956010, i32 -2145955889, i32 -2145955794, i32 -2145955693, i32 -2145955666, i32 -2145955583, i32 -2145955494, i32 -2145955373, i32 -2145955273, i32 -2145955167, i32 -2145955059, i32 -2145957962, i32 -2145957909, i32 -2145957878, i32 -2145957847, i32 -2145957826, i32 -2145957804, i32 -2145957755, i32 -2145957734, i32 -2145954976, i32 -2145954887, i32 -2145954766, i32 -2145954667, i32 -2145954561, i32 -2145954459, i32 -2145954426, i32 -2145954353, i32 -2145954285, i32 -2145957362, i32 -2145957309, i32 -2145957278, i32 -2145957247, i32 -2145957226, i32 -2145957204, i32 -2145957155, i32 -2145957134, i32 -2145954235, i32 -2145954146, i32 -2145954025, i32 -2145953926, i32 -2145953820, i32 -2145953718, i32 -2145953685, i32 -2145953602, i32 -2145953513, i32 -2145953392, i32 -2145953292, i32 -2145953266, i32 -2145953163, i32 -2145953137, i32 -2145956876, i32 -2145956809, i32 -2145956784, i32 -2145956720, i32 -2145956604, i32 -2145956579, i32 -2145956554}
!1473 = distinct !{!1473, !1423, !1474}
!1474 = !DILocation(line: 387, column: 2, scope: !1409)
!1475 = distinct !DISubprogram(name: "uknetdev_init", scope: !3, file: !3, line: 493, type: !1476, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!777, !733}
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1500, !1501, !1507, !1508, !1514, !1520, !1521, !1527, !1528, !1534, !1535, !1536, !1537, !1543, !1544, !1545, !1546, !1552, !1553, !1559, !1560, !1566}
!1479 = !DILocalVariable(name: "nf", arg: 1, scope: !1475, file: !3, line: 493, type: !733)
!1480 = !DILocalVariable(name: "a", scope: !1475, file: !3, line: 495, type: !54)
!1481 = !DILocalVariable(name: "dev", scope: !1475, file: !3, line: 496, type: !6)
!1482 = !DILocalVariable(name: "_dss_dev", scope: !1475, file: !3, line: 497, type: !689)
!1483 = !DILocalVariable(name: "dev_conf", scope: !1475, file: !3, line: 498, type: !644)
!1484 = !DILocalVariable(name: "_dss_dev_conf", scope: !1475, file: !3, line: 499, type: !843)
!1485 = !DILocalVariable(name: "rxq_conf", scope: !1475, file: !3, line: 500, type: !663)
!1486 = !DILocalVariable(name: "_dss_rxq_conf", scope: !1475, file: !3, line: 501, type: !662)
!1487 = !DILocalVariable(name: "txq_conf", scope: !1475, file: !3, line: 502, type: !654)
!1488 = !DILocalVariable(name: "_dss_txq_conf", scope: !1475, file: !3, line: 503, type: !653)
!1489 = !DILocalVariable(name: "netdev_state", scope: !1475, file: !3, line: 504, type: !128)
!1490 = !DILocalVariable(name: "lwip_data", scope: !1475, file: !3, line: 505, type: !861)
!1491 = !DILocalVariable(name: "hwaddr", scope: !1475, file: !3, line: 506, type: !553)
!1492 = !DILocalVariable(name: "i", scope: !1475, file: !3, line: 507, type: !39)
!1493 = !DILocalVariable(name: "ret", scope: !1475, file: !3, line: 508, type: !15)
!1494 = !DILocalVariable(name: "tid", scope: !1495, file: !3, line: 514, type: !176)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 514, column: 2)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 514, column: 2)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 514, column: 2)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 514, column: 2)
!1499 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 514, column: 2)
!1500 = !DILocalVariable(name: "_ret", scope: !1495, file: !3, line: 514, type: !841)
!1501 = !DILocalVariable(name: "tid", scope: !1502, file: !3, line: 520, type: !176)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 520, column: 2)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 520, column: 2)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 520, column: 2)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 520, column: 2)
!1506 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 520, column: 2)
!1507 = !DILocalVariable(name: "_ret", scope: !1502, file: !3, line: 520, type: !841)
!1508 = !DILocalVariable(name: "tid", scope: !1509, file: !3, line: 549, type: !176)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 549, column: 2)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 549, column: 2)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 549, column: 2)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 549, column: 2)
!1513 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 549, column: 2)
!1514 = !DILocalVariable(name: "tid", scope: !1515, file: !3, line: 574, type: !176)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 574, column: 2)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 574, column: 2)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 574, column: 2)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 574, column: 2)
!1519 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 574, column: 2)
!1520 = !DILocalVariable(name: "_ret", scope: !1515, file: !3, line: 574, type: !841)
!1521 = !DILocalVariable(name: "tid", scope: !1522, file: !3, line: 601, type: !176)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 601, column: 2)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 601, column: 2)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 601, column: 2)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 601, column: 2)
!1526 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 601, column: 2)
!1527 = !DILocalVariable(name: "_ret", scope: !1522, file: !3, line: 601, type: !841)
!1528 = !DILocalVariable(name: "tid", scope: !1529, file: !3, line: 608, type: !176)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 608, column: 2)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 608, column: 2)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 608, column: 2)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 608, column: 2)
!1533 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 608, column: 2)
!1534 = !DILocalVariable(name: "_ret", scope: !1529, file: !3, line: 608, type: !841)
!1535 = !DILocalVariable(name: "_arg3", scope: !1529, file: !3, line: 608, type: !841)
!1536 = !DILocalVariable(name: "_arg4", scope: !1529, file: !3, line: 608, type: !841)
!1537 = !DILocalVariable(name: "tid", scope: !1538, file: !3, line: 624, type: !176)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 624, column: 2)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 624, column: 2)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 624, column: 2)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 624, column: 2)
!1542 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 624, column: 2)
!1543 = !DILocalVariable(name: "_ret", scope: !1538, file: !3, line: 624, type: !841)
!1544 = !DILocalVariable(name: "_arg3", scope: !1538, file: !3, line: 624, type: !841)
!1545 = !DILocalVariable(name: "_arg4", scope: !1538, file: !3, line: 624, type: !841)
!1546 = !DILocalVariable(name: "tid", scope: !1547, file: !3, line: 636, type: !176)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 636, column: 2)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 636, column: 2)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 636, column: 2)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 636, column: 2)
!1551 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 636, column: 2)
!1552 = !DILocalVariable(name: "_ret", scope: !1547, file: !3, line: 636, type: !841)
!1553 = !DILocalVariable(name: "tid", scope: !1554, file: !3, line: 692, type: !176)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 692, column: 2)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 692, column: 2)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 692, column: 2)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 692, column: 2)
!1558 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 692, column: 2)
!1559 = !DILocalVariable(name: "_ret", scope: !1554, file: !3, line: 692, type: !841)
!1560 = !DILocalVariable(name: "tid", scope: !1561, file: !3, line: 711, type: !176)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 711, column: 2)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 711, column: 2)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 711, column: 2)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 711, column: 2)
!1565 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 711, column: 2)
!1566 = !DILocalVariable(name: "_ret", scope: !1561, file: !3, line: 711, type: !841)
!1567 = !DILocation(line: 493, column: 35, scope: !1475)
!1568 = !DILocation(line: 495, column: 19, scope: !1475)
!1569 = !DILocation(line: 496, column: 2, scope: !1475)
!1570 = !DILocation(line: 497, column: 55, scope: !1475)
!1571 = !DILocation(line: 497, column: 74, scope: !1475)
!1572 = !DILocation(line: 497, column: 32, scope: !1475)
!1573 = !DILocation(line: 497, column: 21, scope: !1475)
!1574 = !DILocation(line: 498, column: 2, scope: !1475)
!1575 = !DILocation(line: 499, column: 68, scope: !1475)
!1576 = !DILocation(line: 499, column: 92, scope: !1475)
!1577 = !DILocation(line: 499, column: 41, scope: !1475)
!1578 = !DILocation(line: 499, column: 25, scope: !1475)
!1579 = !DILocation(line: 500, column: 2, scope: !1475)
!1580 = !DILocation(line: 501, column: 84, scope: !1475)
!1581 = !DILocation(line: 501, column: 108, scope: !1475)
!1582 = !DILocation(line: 501, column: 49, scope: !1475)
!1583 = !DILocation(line: 501, column: 33, scope: !1475)
!1584 = !DILocation(line: 502, column: 2, scope: !1475)
!1585 = !DILocation(line: 503, column: 84, scope: !1475)
!1586 = !DILocation(line: 503, column: 108, scope: !1475)
!1587 = !DILocation(line: 503, column: 49, scope: !1475)
!1588 = !DILocation(line: 503, column: 33, scope: !1475)
!1589 = !DILocation(line: 504, column: 2, scope: !1475)
!1590 = !DILocation(line: 505, column: 2, scope: !1475)
!1591 = !DILocation(line: 506, column: 2, scope: !1475)
!1592 = !DILocation(line: 508, column: 2, scope: !1475)
!1593 = !DILocation(line: 510, column: 2, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 510, column: 2)
!1595 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 510, column: 2)
!1596 = !DILocation(line: 510, column: 2, scope: !1595)
!1597 = !DILocation(line: 510, column: 2, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 510, column: 2)
!1599 = !DILocation(line: 511, column: 16, scope: !1475)
!1600 = !DILocation(line: 511, column: 14, scope: !1475)
!1601 = !DILocation(line: 512, column: 2, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 512, column: 2)
!1603 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 512, column: 2)
!1604 = !DILocation(line: 512, column: 2, scope: !1603)
!1605 = !DILocation(line: 512, column: 2, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 512, column: 2)
!1607 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 514, column: 2, scope: !1498)
!1609 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1608)
!1610 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1608)
!1611 = !DILocation(line: 514, column: 2, scope: !1498)
!1612 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 514, column: 2, scope: !1498)
!1614 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1613)
!1615 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1613)
!1616 = !DILocation(line: 514, column: 2, scope: !1499)
!1617 = !DILocation(line: 514, column: 2, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 514, column: 2)
!1619 = !DILocalVariable(name: "dev", arg: 1, scope: !1620, file: !3, line: 104, type: !6)
!1620 = distinct !DISubprogram(name: "_retrieve_scratchpad", scope: !3, file: !3, line: 104, type: !1621, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!861, !6}
!1623 = !{!1619}
!1624 = !DILocation(line: 104, column: 65, scope: !1620, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 514, column: 2, scope: !1618)
!1626 = !DILocation(line: 106, column: 41, scope: !1620, inlinedAt: !1625)
!1627 = !{!1309, !1010, i64 72}
!1628 = !DILocation(line: 106, column: 2, scope: !1620, inlinedAt: !1625)
!1629 = !DILocation(line: 505, column: 27, scope: !1475)
!1630 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 514, column: 2, scope: !1495)
!1633 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1631)
!1634 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1631)
!1635 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1632)
!1636 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1632)
!1637 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1632)
!1638 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1632)
!1639 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1632)
!1640 = !DILocation(line: 514, column: 2, scope: !1495)
!1641 = !{i32 -2145913194, i32 -2145913181, i32 -2145913156, i32 -2145913132, i32 -2145913107, i32 -2145913032, i32 -2145913007, i32 -2145912863, i32 -2145909675, i32 -2145909586, i32 -2145909465, i32 -2145909370, i32 -2145909269, i32 -2145909242, i32 -2145909159, i32 -2145909070, i32 -2145908949, i32 -2145908849, i32 -2145908743, i32 -2145908635, i32 -2145912575, i32 -2145912522, i32 -2145912491, i32 -2145912460, i32 -2145912439, i32 -2145912417, i32 -2145912368, i32 -2145912347, i32 -2145908552, i32 -2145908463, i32 -2145908342, i32 -2145908243, i32 -2145908137, i32 -2145908035, i32 -2145908002, i32 -2145907929, i32 -2145907861, i32 -2145912043, i32 -2145911984, i32 -2145911931, i32 -2145911900, i32 -2145911869, i32 -2145911848, i32 -2145911826, i32 -2145911777, i32 -2145911756, i32 -2145907805, i32 -2145907716, i32 -2145907595, i32 -2145907496, i32 -2145907390, i32 -2145907288, i32 -2145907255, i32 -2145907172, i32 -2145907083, i32 -2145906962, i32 -2145906862, i32 -2145906836, i32 -2145906733, i32 -2145906707, i32 -2145911498, i32 -2145911431, i32 -2145911406, i32 -2145911342, i32 -2145911260, i32 -2145911237, i32 -2145911212, i32 -2145911187}
!1642 = !DILocation(line: 514, column: 2, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 514, column: 2)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 514, column: 2)
!1645 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 514, column: 2)
!1646 = !{i32 -2145909999, i32 -2145909983}
!1647 = !DILocation(line: 517, column: 2, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 517, column: 2)
!1649 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 517, column: 2)
!1650 = !DILocation(line: 517, column: 2, scope: !1649)
!1651 = !DILocation(line: 517, column: 2, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 517, column: 2)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 517, column: 2)
!1654 = !DILocation(line: 517, column: 2, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 517, column: 2)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 517, column: 2)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 517, column: 2)
!1658 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 520, column: 2, scope: !1505)
!1660 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1659)
!1661 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1659)
!1662 = !DILocation(line: 520, column: 2, scope: !1505)
!1663 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 520, column: 2, scope: !1505)
!1665 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1664)
!1666 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1664)
!1667 = !DILocation(line: 520, column: 2, scope: !1506)
!1668 = !DILocation(line: 520, column: 2, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 520, column: 2)
!1670 = !DILocation(line: 504, column: 23, scope: !1475)
!1671 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 520, column: 2, scope: !1502)
!1674 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1672)
!1675 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1672)
!1676 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1673)
!1677 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1673)
!1678 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1673)
!1679 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1673)
!1680 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1673)
!1681 = !DILocation(line: 520, column: 2, scope: !1502)
!1682 = !{i32 -2145904024, i32 -2145904011, i32 -2145903986, i32 -2145903962, i32 -2145903937, i32 -2145903862, i32 -2145903837, i32 -2145903693, i32 -2145900483, i32 -2145900394, i32 -2145900273, i32 -2145900178, i32 -2145900077, i32 -2145900050, i32 -2145899967, i32 -2145899878, i32 -2145899757, i32 -2145899657, i32 -2145899551, i32 -2145899443, i32 -2145903405, i32 -2145903352, i32 -2145903321, i32 -2145903290, i32 -2145903269, i32 -2145903247, i32 -2145903198, i32 -2145903177, i32 -2145899360, i32 -2145899271, i32 -2145899150, i32 -2145899051, i32 -2145898945, i32 -2145898843, i32 -2145898810, i32 -2145898737, i32 -2145898669, i32 -2145902873, i32 -2145902814, i32 -2145902761, i32 -2145902730, i32 -2145902699, i32 -2145902678, i32 -2145902656, i32 -2145902607, i32 -2145902586, i32 -2145898614, i32 -2145898525, i32 -2145898404, i32 -2145898305, i32 -2145898199, i32 -2145898097, i32 -2145898064, i32 -2145897981, i32 -2145897892, i32 -2145897771, i32 -2145897671, i32 -2145897645, i32 -2145897542, i32 -2145897516, i32 -2145902328, i32 -2145902261, i32 -2145902236, i32 -2145902172, i32 -2145902090, i32 -2145902067, i32 -2145902042, i32 -2145902017}
!1683 = !DILocation(line: 520, column: 2, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 520, column: 2)
!1685 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 520, column: 2)
!1686 = !{i32 -2145901036, i32 -2145901019}
!1687 = !DILocation(line: 524, column: 6, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 524, column: 6)
!1689 = !DILocation(line: 524, column: 19, scope: !1688)
!1690 = !DILocation(line: 524, column: 6, scope: !1475)
!1691 = !DILocation(line: 532, column: 2, scope: !1475)
!1692 = !DILocation(line: 532, column: 14, scope: !1475)
!1693 = !DILocation(line: 533, column: 2, scope: !1475)
!1694 = !DILocation(line: 533, column: 14, scope: !1475)
!1695 = !DILocation(line: 543, column: 6, scope: !1475)
!1696 = !DILocation(line: 544, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 544, column: 6)
!1698 = !DILocation(line: 544, column: 6, scope: !1475)
!1699 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 549, column: 2, scope: !1512)
!1701 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1700)
!1702 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1700)
!1703 = !DILocation(line: 549, column: 2, scope: !1512)
!1704 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 549, column: 2, scope: !1512)
!1706 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1705)
!1707 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1705)
!1708 = !DILocation(line: 549, column: 2, scope: !1513)
!1709 = !DILocation(line: 549, column: 2, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 549, column: 2)
!1711 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 549, column: 2, scope: !1509)
!1714 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1712)
!1715 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1712)
!1716 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1713)
!1717 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1713)
!1718 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1713)
!1719 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1713)
!1720 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1713)
!1721 = !DILocation(line: 549, column: 2, scope: !1509)
!1722 = !{i32 -2145895396, i32 -2145895383, i32 -2145895358, i32 -2145895334, i32 -2145895309, i32 -2145895234, i32 -2145895209, i32 -2145895065, i32 -2145892796, i32 -2145892707, i32 -2145892586, i32 -2145892491, i32 -2145892390, i32 -2145892363, i32 -2145892280, i32 -2145892191, i32 -2145892070, i32 -2145891970, i32 -2145891864, i32 -2145891756, i32 -2145894773, i32 -2145894720, i32 -2145894689, i32 -2145894658, i32 -2145894637, i32 -2145894615, i32 -2145894566, i32 -2145894545, i32 -2145891673, i32 -2145891584, i32 -2145891463, i32 -2145891364, i32 -2145891258, i32 -2145891156, i32 -2145891123, i32 -2145891050, i32 -2145890982, i32 -2145894168, i32 -2145894115, i32 -2145894084, i32 -2145894053, i32 -2145894032, i32 -2145894010, i32 -2145893961, i32 -2145893940, i32 -2145890928, i32 -2145890839, i32 -2145890718, i32 -2145890619, i32 -2145890513, i32 -2145890411, i32 -2145890378, i32 -2145890295, i32 -2145890206, i32 -2145890085, i32 -2145889985, i32 -2145889959, i32 -2145889856, i32 -2145889830, i32 -2145893682, i32 -2145893615, i32 -2145893590, i32 -2145893526, i32 -2145893410, i32 -2145893385, i32 -2145893360}
!1723 = !DILocation(line: 551, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 551, column: 6)
!1725 = !DILocation(line: 551, column: 27, scope: !1724)
!1726 = !{!1727, !1014, i64 8}
!1727 = !{!"lwip_netdev_data", !1010, i64 0, !1728, i64 8, !1010, i64 32, !1010, i64 40, !1010, i64 48}
!1728 = !{!"uk_netdev_info", !1014, i64 0, !1014, i64 2, !1039, i64 4, !1014, i64 8, !1014, i64 10, !1014, i64 12, !1014, i64 14, !1039, i64 16}
!1729 = !DILocation(line: 552, column: 6, scope: !1724)
!1730 = !DILocation(line: 552, column: 30, scope: !1724)
!1731 = !{!1727, !1014, i64 10}
!1732 = !DILocation(line: 552, column: 10, scope: !1724)
!1733 = !DILocation(line: 551, column: 6, scope: !1475)
!1734 = !DILocation(line: 559, column: 13, scope: !1475)
!1735 = !DILocation(line: 559, column: 19, scope: !1475)
!1736 = !{!1727, !1010, i64 0}
!1737 = !DILocation(line: 572, column: 19, scope: !1475)
!1738 = !DILocation(line: 572, column: 32, scope: !1475)
!1739 = !{!1740, !1014, i64 0}
!1740 = !{!"uk_netdev_conf", !1014, i64 0, !1014, i64 2}
!1741 = !DILocation(line: 573, column: 19, scope: !1475)
!1742 = !DILocation(line: 573, column: 32, scope: !1475)
!1743 = !{!1740, !1014, i64 2}
!1744 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 574, column: 2, scope: !1518)
!1746 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1745)
!1747 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1745)
!1748 = !DILocation(line: 574, column: 2, scope: !1518)
!1749 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 574, column: 2, scope: !1518)
!1751 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1750)
!1752 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1750)
!1753 = !DILocation(line: 574, column: 2, scope: !1519)
!1754 = !DILocation(line: 574, column: 2, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 574, column: 2)
!1756 = !DILocation(line: 508, column: 6, scope: !1475)
!1757 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 574, column: 2, scope: !1515)
!1760 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1758)
!1761 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1758)
!1762 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1759)
!1763 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1759)
!1764 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1759)
!1765 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1759)
!1766 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1759)
!1767 = !DILocation(line: 574, column: 2, scope: !1515)
!1768 = !{i32 -2145887619, i32 -2145887606, i32 -2145887581, i32 -2145887557, i32 -2145887532, i32 -2145887457, i32 -2145887432, i32 -2145887288, i32 -2145884091, i32 -2145884002, i32 -2145883881, i32 -2145883786, i32 -2145883685, i32 -2145883658, i32 -2145883575, i32 -2145883486, i32 -2145883365, i32 -2145883265, i32 -2145883159, i32 -2145883051, i32 -2145886996, i32 -2145886943, i32 -2145886912, i32 -2145886881, i32 -2145886860, i32 -2145886838, i32 -2145886789, i32 -2145886768, i32 -2145882968, i32 -2145882879, i32 -2145882758, i32 -2145882659, i32 -2145882553, i32 -2145882451, i32 -2145882418, i32 -2145882345, i32 -2145882277, i32 -2145886461, i32 -2145886402, i32 -2145886349, i32 -2145886318, i32 -2145886287, i32 -2145886266, i32 -2145886244, i32 -2145886195, i32 -2145886174, i32 -2145882222, i32 -2145882133, i32 -2145882012, i32 -2145881913, i32 -2145881807, i32 -2145881705, i32 -2145881672, i32 -2145881589, i32 -2145881500, i32 -2145881379, i32 -2145881279, i32 -2145881253, i32 -2145881150, i32 -2145881124, i32 -2145885916, i32 -2145885849, i32 -2145885824, i32 -2145885760, i32 -2145885678, i32 -2145885655, i32 -2145885630, i32 -2145885605}
!1769 = !DILocation(line: 574, column: 2, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 574, column: 2)
!1771 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 574, column: 2)
!1772 = !{i32 -2145884590, i32 -2145884573}
!1773 = !DILocation(line: 576, column: 6, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 576, column: 6)
!1775 = !DILocation(line: 576, column: 10, scope: !1774)
!1776 = !DILocation(line: 576, column: 6, scope: !1475)
!1777 = !DILocation(line: 588, column: 19, scope: !1475)
!1778 = !DILocation(line: 588, column: 21, scope: !1475)
!1779 = !{!1780, !1010, i64 16}
!1780 = !{!"uk_netdev_rxqueue_conf", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40}
!1781 = !DILocation(line: 589, column: 19, scope: !1475)
!1782 = !DILocation(line: 589, column: 32, scope: !1475)
!1783 = !{!1780, !1010, i64 24}
!1784 = !DILocation(line: 590, column: 39, scope: !1475)
!1785 = !DILocation(line: 590, column: 19, scope: !1475)
!1786 = !DILocation(line: 590, column: 37, scope: !1475)
!1787 = !{!1780, !1010, i64 32}
!1788 = !DILocation(line: 598, column: 19, scope: !1475)
!1789 = !DILocation(line: 598, column: 28, scope: !1475)
!1790 = !{!1780, !1010, i64 0}
!1791 = !DILocation(line: 599, column: 19, scope: !1475)
!1792 = !DILocation(line: 599, column: 35, scope: !1475)
!1793 = !{!1780, !1010, i64 8}
!1794 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 601, column: 2, scope: !1525)
!1796 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1795)
!1797 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1795)
!1798 = !DILocation(line: 601, column: 2, scope: !1525)
!1799 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 601, column: 2, scope: !1525)
!1801 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1800)
!1802 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1800)
!1803 = !DILocation(line: 601, column: 2, scope: !1526)
!1804 = !DILocation(line: 601, column: 2, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 601, column: 2)
!1806 = !{!1780, !1010, i64 40}
!1807 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 601, column: 2, scope: !1522)
!1810 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1808)
!1811 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1808)
!1812 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1809)
!1813 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1809)
!1814 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1809)
!1815 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1809)
!1816 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1809)
!1817 = !DILocation(line: 601, column: 2, scope: !1522)
!1818 = !{i32 -2145879094, i32 -2145879081, i32 -2145879056, i32 -2145879032, i32 -2145879007, i32 -2145878932, i32 -2145878907, i32 -2145878763, i32 -2145875556, i32 -2145875467, i32 -2145875346, i32 -2145875251, i32 -2145875150, i32 -2145875123, i32 -2145875040, i32 -2145874951, i32 -2145874830, i32 -2145874730, i32 -2145874624, i32 -2145874516, i32 -2145878480, i32 -2145878427, i32 -2145878396, i32 -2145878365, i32 -2145878344, i32 -2145878322, i32 -2145878273, i32 -2145878252, i32 -2145874433, i32 -2145874344, i32 -2145874223, i32 -2145874124, i32 -2145874018, i32 -2145873916, i32 -2145873883, i32 -2145873810, i32 -2145873742, i32 -2145877950, i32 -2145877891, i32 -2145877838, i32 -2145877807, i32 -2145877776, i32 -2145877755, i32 -2145877733, i32 -2145877684, i32 -2145877663, i32 -2145873686, i32 -2145873597, i32 -2145873476, i32 -2145873377, i32 -2145873271, i32 -2145873169, i32 -2145873136, i32 -2145873053, i32 -2145872964, i32 -2145872843, i32 -2145872743, i32 -2145872717, i32 -2145872614, i32 -2145872588, i32 -2145877405, i32 -2145877338, i32 -2145877313, i32 -2145877249, i32 -2145877167, i32 -2145877144, i32 -2145877119, i32 -2145877094}
!1819 = !DILocation(line: 601, column: 2, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 601, column: 2)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 601, column: 2)
!1822 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 601, column: 2)
!1823 = !{i32 -2145875940, i32 -2145875924}
!1824 = !DILocation(line: 602, column: 24, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 602, column: 6)
!1826 = !DILocation(line: 602, column: 7, scope: !1825)
!1827 = !DILocation(line: 602, column: 6, scope: !1475)
!1828 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 608, column: 2, scope: !1532)
!1830 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1829)
!1831 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1829)
!1832 = !DILocation(line: 608, column: 2, scope: !1532)
!1833 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 608, column: 2, scope: !1532)
!1835 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1834)
!1836 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1834)
!1837 = !DILocation(line: 608, column: 2, scope: !1533)
!1838 = !DILocation(line: 608, column: 2, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 608, column: 2)
!1840 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 608, column: 2, scope: !1529)
!1843 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1841)
!1844 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1841)
!1845 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1842)
!1846 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1842)
!1847 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1842)
!1848 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1842)
!1849 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1842)
!1850 = !DILocation(line: 608, column: 2, scope: !1529)
!1851 = !{i32 -2145870108, i32 -2145870095, i32 -2145870070, i32 -2145870046, i32 -2145870021, i32 -2145869946, i32 -2145869921, i32 -2145869777, i32 -2145869752, i32 -2145866409, i32 -2145866320, i32 -2145866199, i32 -2145866104, i32 -2145866003, i32 -2145865976, i32 -2145865893, i32 -2145865804, i32 -2145865683, i32 -2145865583, i32 -2145865477, i32 -2145865369, i32 -2145869415, i32 -2145869362, i32 -2145869331, i32 -2145869300, i32 -2145869279, i32 -2145869257, i32 -2145869208, i32 -2145869187, i32 -2145869084, i32 -2145869052, i32 -2145865286, i32 -2145865197, i32 -2145865076, i32 -2145864977, i32 -2145864871, i32 -2145864769, i32 -2145864736, i32 -2145864663, i32 -2145864595, i32 -2145868862, i32 -2145868803, i32 -2145868750, i32 -2145868719, i32 -2145868688, i32 -2145868667, i32 -2145868645, i32 -2145868596, i32 -2145868575, i32 -2145864536, i32 -2145864447, i32 -2145864326, i32 -2145864227, i32 -2145864121, i32 -2145864019, i32 -2145863986, i32 -2145863903, i32 -2145863814, i32 -2145863693, i32 -2145863593, i32 -2145863567, i32 -2145863464, i32 -2145863438, i32 -2145868317, i32 -2145868292, i32 -2145868225, i32 -2145868200, i32 -2145868136, i32 -2145868054, i32 -2145868031, i32 -2145868006, i32 -2145867981}
!1852 = !DILocation(line: 608, column: 2, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 608, column: 2)
!1854 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 608, column: 2)
!1855 = !{i32 -2145866920, i32 -2145866903}
!1856 = !DILocation(line: 611, column: 6, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 611, column: 6)
!1858 = !DILocation(line: 611, column: 10, scope: !1857)
!1859 = !DILocation(line: 611, column: 6, scope: !1475)
!1860 = !DILocation(line: 623, column: 19, scope: !1475)
!1861 = !DILocation(line: 623, column: 21, scope: !1475)
!1862 = !{!1863, !1010, i64 0}
!1863 = !{!"uk_netdev_txqueue_conf", !1010, i64 0}
!1864 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 624, column: 2, scope: !1541)
!1866 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1865)
!1867 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1865)
!1868 = !DILocation(line: 624, column: 2, scope: !1541)
!1869 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 624, column: 2, scope: !1541)
!1871 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1870)
!1872 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1870)
!1873 = !DILocation(line: 624, column: 2, scope: !1542)
!1874 = !DILocation(line: 624, column: 2, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 624, column: 2)
!1876 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 624, column: 2, scope: !1538)
!1879 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1877)
!1880 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1877)
!1881 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1878)
!1882 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1878)
!1883 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1878)
!1884 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1878)
!1885 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1878)
!1886 = !DILocation(line: 624, column: 2, scope: !1538)
!1887 = !{i32 -2145860958, i32 -2145860945, i32 -2145860920, i32 -2145860896, i32 -2145860871, i32 -2145860796, i32 -2145860771, i32 -2145860627, i32 -2145860602, i32 -2145857259, i32 -2145857170, i32 -2145857049, i32 -2145856954, i32 -2145856853, i32 -2145856826, i32 -2145856743, i32 -2145856654, i32 -2145856533, i32 -2145856433, i32 -2145856327, i32 -2145856219, i32 -2145860265, i32 -2145860212, i32 -2145860181, i32 -2145860150, i32 -2145860129, i32 -2145860107, i32 -2145860058, i32 -2145860037, i32 -2145859934, i32 -2145859902, i32 -2145856136, i32 -2145856047, i32 -2145855926, i32 -2145855827, i32 -2145855721, i32 -2145855619, i32 -2145855586, i32 -2145855513, i32 -2145855445, i32 -2145859712, i32 -2145859653, i32 -2145859600, i32 -2145859569, i32 -2145859538, i32 -2145859517, i32 -2145859495, i32 -2145859446, i32 -2145859425, i32 -2145855386, i32 -2145855297, i32 -2145855176, i32 -2145855077, i32 -2145854971, i32 -2145854869, i32 -2145854836, i32 -2145854753, i32 -2145854664, i32 -2145854543, i32 -2145854443, i32 -2145854417, i32 -2145854314, i32 -2145854288, i32 -2145859167, i32 -2145859142, i32 -2145859075, i32 -2145859050, i32 -2145858986, i32 -2145858904, i32 -2145858881, i32 -2145858856, i32 -2145858831}
!1888 = !DILocation(line: 624, column: 2, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 624, column: 2)
!1890 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 624, column: 2)
!1891 = !{i32 -2145857770, i32 -2145857753}
!1892 = !DILocation(line: 627, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 627, column: 6)
!1894 = !DILocation(line: 627, column: 10, scope: !1893)
!1895 = !DILocation(line: 627, column: 6, scope: !1475)
!1896 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 636, column: 2, scope: !1550)
!1898 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1897)
!1899 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1897)
!1900 = !DILocation(line: 636, column: 2, scope: !1550)
!1901 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 636, column: 2, scope: !1550)
!1903 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1902)
!1904 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1902)
!1905 = !DILocation(line: 636, column: 2, scope: !1551)
!1906 = !DILocation(line: 636, column: 2, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 636, column: 2)
!1908 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 636, column: 2, scope: !1547)
!1911 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1909)
!1912 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1909)
!1913 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1910)
!1914 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1910)
!1915 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1910)
!1916 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1910)
!1917 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1910)
!1918 = !DILocation(line: 636, column: 2, scope: !1547)
!1919 = !{i32 -2145852271, i32 -2145852258, i32 -2145852233, i32 -2145852209, i32 -2145852184, i32 -2145852109, i32 -2145852084, i32 -2145851940, i32 -2145848810, i32 -2145848721, i32 -2145848600, i32 -2145848505, i32 -2145848404, i32 -2145848377, i32 -2145848294, i32 -2145848205, i32 -2145848084, i32 -2145847984, i32 -2145847878, i32 -2145847770, i32 -2145851652, i32 -2145851599, i32 -2145851568, i32 -2145851537, i32 -2145851516, i32 -2145851494, i32 -2145851445, i32 -2145851424, i32 -2145847687, i32 -2145847598, i32 -2145847477, i32 -2145847378, i32 -2145847272, i32 -2145847170, i32 -2145847137, i32 -2145847064, i32 -2145846996, i32 -2145851120, i32 -2145851061, i32 -2145851008, i32 -2145850977, i32 -2145850946, i32 -2145850925, i32 -2145850903, i32 -2145850854, i32 -2145850833, i32 -2145846945, i32 -2145846856, i32 -2145846735, i32 -2145846636, i32 -2145846530, i32 -2145846428, i32 -2145846395, i32 -2145846312, i32 -2145846223, i32 -2145846102, i32 -2145846002, i32 -2145845976, i32 -2145845873, i32 -2145845847, i32 -2145850575, i32 -2145850508, i32 -2145850483, i32 -2145850419, i32 -2145850337, i32 -2145850314, i32 -2145850289, i32 -2145850264}
!1920 = !DILocation(line: 636, column: 2, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 636, column: 2)
!1922 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 636, column: 2)
!1923 = !{i32 -2145849283, i32 -2145849266}
!1924 = !DILocation(line: 637, column: 6, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 637, column: 6)
!1926 = !DILocation(line: 637, column: 10, scope: !1925)
!1927 = !DILocation(line: 637, column: 6, scope: !1475)
!1928 = !DILocation(line: 647, column: 6, scope: !1475)
!1929 = !DILocation(line: 647, column: 13, scope: !1475)
!1930 = !{!1009, !1010, i64 192}
!1931 = !DILocation(line: 650, column: 6, scope: !1475)
!1932 = !DILocation(line: 650, column: 17, scope: !1475)
!1933 = !{!1009, !1010, i64 208}
!1934 = !DILocation(line: 652, column: 6, scope: !1475)
!1935 = !DILocation(line: 652, column: 17, scope: !1475)
!1936 = !{!1009, !1010, i64 200}
!1937 = !DILocation(line: 657, column: 2, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 657, column: 2)
!1939 = !{!1009, !1011, i64 261}
!1940 = !DILocation(line: 678, column: 2, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 678, column: 2)
!1942 = !{!1009, !1014, i64 248}
!1943 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 692, column: 2, scope: !1557)
!1945 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1944)
!1946 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1944)
!1947 = !DILocation(line: 692, column: 2, scope: !1557)
!1948 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 692, column: 2, scope: !1557)
!1950 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1949)
!1951 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1949)
!1952 = !DILocation(line: 692, column: 2, scope: !1558)
!1953 = !DILocation(line: 692, column: 2, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 692, column: 2)
!1955 = !DILocation(line: 506, column: 26, scope: !1475)
!1956 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 692, column: 2, scope: !1554)
!1959 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1957)
!1960 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1957)
!1961 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !1958)
!1962 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !1958)
!1963 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !1958)
!1964 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !1958)
!1965 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !1958)
!1966 = !DILocation(line: 692, column: 2, scope: !1554)
!1967 = !{i32 -2145839114, i32 -2145839101, i32 -2145839076, i32 -2145839052, i32 -2145839027, i32 -2145838952, i32 -2145838927, i32 -2145838783, i32 -2145835619, i32 -2145835530, i32 -2145835409, i32 -2145835314, i32 -2145835213, i32 -2145835186, i32 -2145835103, i32 -2145835014, i32 -2145834893, i32 -2145834793, i32 -2145834687, i32 -2145834579, i32 -2145838495, i32 -2145838442, i32 -2145838411, i32 -2145838380, i32 -2145838359, i32 -2145838337, i32 -2145838288, i32 -2145838267, i32 -2145834496, i32 -2145834407, i32 -2145834286, i32 -2145834187, i32 -2145834081, i32 -2145833979, i32 -2145833946, i32 -2145833873, i32 -2145833805, i32 -2145837963, i32 -2145837904, i32 -2145837851, i32 -2145837820, i32 -2145837789, i32 -2145837768, i32 -2145837746, i32 -2145837697, i32 -2145837676, i32 -2145833749, i32 -2145833660, i32 -2145833539, i32 -2145833440, i32 -2145833334, i32 -2145833232, i32 -2145833199, i32 -2145833116, i32 -2145833027, i32 -2145832906, i32 -2145832806, i32 -2145832780, i32 -2145832677, i32 -2145832651, i32 -2145837418, i32 -2145837351, i32 -2145837326, i32 -2145837262, i32 -2145837180, i32 -2145837157, i32 -2145837132, i32 -2145837107}
!1968 = !DILocation(line: 692, column: 2, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 692, column: 2)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 692, column: 2)
!1971 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 692, column: 2)
!1972 = !{i32 -2145835919, i32 -2145835903}
!1973 = !DILocation(line: 694, column: 2, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 694, column: 2)
!1975 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 694, column: 2)
!1976 = !DILocation(line: 694, column: 2, scope: !1975)
!1977 = !DILocation(line: 694, column: 2, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 694, column: 2)
!1979 = !DILocation(line: 695, column: 6, scope: !1475)
!1980 = !DILocation(line: 695, column: 17, scope: !1475)
!1981 = !{!1009, !1011, i64 260}
!1982 = !DILocation(line: 507, column: 15, scope: !1475)
!1983 = !DILocation(line: 696, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 696, column: 2)
!1985 = !DILocation(line: 696, column: 2, scope: !1984)
!1986 = !DILocation(line: 697, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 696, column: 2)
!1988 = !DILocation(line: 697, column: 3, scope: !1987)
!1989 = !DILocation(line: 697, column: 17, scope: !1987)
!1990 = !DILocation(line: 696, column: 2, scope: !1987)
!1991 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 711, column: 2, scope: !1564)
!1993 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1992)
!1994 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1992)
!1995 = !DILocation(line: 711, column: 2, scope: !1564)
!1996 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 711, column: 2, scope: !1564)
!1998 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !1997)
!1999 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !1997)
!2000 = !DILocation(line: 711, column: 2, scope: !1565)
!2001 = !DILocation(line: 711, column: 2, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 711, column: 2)
!2003 = !{!1009, !1014, i64 250}
!2004 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 711, column: 2, scope: !1561)
!2007 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2005)
!2008 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2005)
!2009 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2006)
!2010 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2006)
!2011 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2006)
!2012 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2006)
!2013 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2006)
!2014 = !DILocation(line: 711, column: 2, scope: !1561)
!2015 = !{i32 -2145830247, i32 -2145830234, i32 -2145830209, i32 -2145830185, i32 -2145830160, i32 -2145830085, i32 -2145830060, i32 -2145829916, i32 -2145826750, i32 -2145826661, i32 -2145826540, i32 -2145826445, i32 -2145826344, i32 -2145826317, i32 -2145826234, i32 -2145826145, i32 -2145826024, i32 -2145825924, i32 -2145825818, i32 -2145825710, i32 -2145829628, i32 -2145829575, i32 -2145829544, i32 -2145829513, i32 -2145829492, i32 -2145829470, i32 -2145829421, i32 -2145829400, i32 -2145825627, i32 -2145825538, i32 -2145825417, i32 -2145825318, i32 -2145825212, i32 -2145825110, i32 -2145825077, i32 -2145825004, i32 -2145824936, i32 -2145829096, i32 -2145829037, i32 -2145828984, i32 -2145828953, i32 -2145828922, i32 -2145828901, i32 -2145828879, i32 -2145828830, i32 -2145828809, i32 -2145824883, i32 -2145824794, i32 -2145824673, i32 -2145824574, i32 -2145824468, i32 -2145824366, i32 -2145824333, i32 -2145824250, i32 -2145824161, i32 -2145824040, i32 -2145823940, i32 -2145823914, i32 -2145823811, i32 -2145823785, i32 -2145828551, i32 -2145828484, i32 -2145828459, i32 -2145828395, i32 -2145828313, i32 -2145828290, i32 -2145828265, i32 -2145828240}
!2016 = !DILocation(line: 711, column: 2, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 711, column: 2)
!2018 = !{i32 -2145827466, i32 -2145827449}
!2019 = !DILocation(line: 712, column: 2, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 712, column: 2)
!2021 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 712, column: 2)
!2022 = !DILocation(line: 712, column: 2, scope: !2021)
!2023 = !DILocation(line: 712, column: 2, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 712, column: 2)
!2025 = !DILocation(line: 723, column: 2, scope: !1475)
!2026 = !DILocation(line: 736, column: 2, scope: !1475)
!2027 = !DILocation(line: 0, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 544, column: 10)
!2029 = !DILocation(line: 0, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 524, column: 46)
!2031 = !DILocation(line: 737, column: 1, scope: !1475)
!2032 = !DILocation(line: 104, column: 65, scope: !1620)
!2033 = !DILocation(line: 106, column: 41, scope: !1620)
!2034 = !DILocation(line: 106, column: 2, scope: !1620)
!2035 = distinct !DISubprogram(name: "netif_alloc_rxpkts", scope: !3, file: !3, line: 121, type: !671, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2041}
!2037 = !DILocalVariable(name: "argp", arg: 1, scope: !2035, file: !3, line: 121, type: !25)
!2038 = !DILocalVariable(name: "nb", arg: 2, scope: !2035, file: !3, line: 121, type: !122)
!2039 = !DILocalVariable(name: "count", arg: 3, scope: !2035, file: !3, line: 122, type: !27)
!2040 = !DILocalVariable(name: "lwip_data", scope: !2035, file: !3, line: 124, type: !861)
!2041 = !DILocalVariable(name: "i", scope: !2035, file: !3, line: 125, type: !27)
!2042 = !DILocation(line: 121, column: 42, scope: !2035)
!2043 = !DILocation(line: 121, column: 66, scope: !2035)
!2044 = !DILocation(line: 122, column: 17, scope: !2035)
!2045 = !DILocation(line: 127, column: 2, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 127, column: 2)
!2047 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 127, column: 2)
!2048 = !DILocation(line: 127, column: 2, scope: !2047)
!2049 = !DILocation(line: 127, column: 2, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 127, column: 2)
!2051 = !DILocation(line: 124, column: 27, scope: !2035)
!2052 = !DILocation(line: 125, column: 11, scope: !2035)
!2053 = !DILocation(line: 131, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 131, column: 2)
!2055 = !DILocation(line: 132, column: 40, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 131, column: 30)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 131, column: 2)
!2058 = !DILocation(line: 131, column: 16, scope: !2057)
!2059 = !DILocation(line: 131, column: 2, scope: !2054)
!2060 = !DILocation(line: 134, column: 28, scope: !2056)
!2061 = !{!1727, !1014, i64 22}
!2062 = !DILocation(line: 134, column: 8, scope: !2056)
!2063 = !DILocation(line: 135, column: 28, scope: !2056)
!2064 = !{!1727, !1014, i64 20}
!2065 = !DILocation(line: 132, column: 11, scope: !2056)
!2066 = !DILocation(line: 132, column: 3, scope: !2056)
!2067 = !DILocation(line: 132, column: 9, scope: !2056)
!2068 = !DILocation(line: 136, column: 8, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 136, column: 7)
!2070 = !DILocation(line: 136, column: 7, scope: !2056)
!2071 = !DILocation(line: 131, column: 25, scope: !2057)
!2072 = !DILocation(line: 131, column: 2, scope: !2057)
!2073 = distinct !{!2073, !2059, !2074}
!2074 = !DILocation(line: 140, column: 2, scope: !2054)
!2075 = !DILocation(line: 142, column: 2, scope: !2035)
!2076 = !DILocation(line: 0, scope: !2057)
!2077 = distinct !DISubprogram(name: "uknetdev_input", scope: !3, file: !3, line: 312, type: !4, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2078)
!2078 = !{!2079, !2080, !2081}
!2079 = !DILocalVariable(name: "dev", arg: 1, scope: !2077, file: !3, line: 312, type: !6)
!2080 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2077, file: !3, line: 313, type: !27)
!2081 = !DILocalVariable(name: "argp", arg: 3, scope: !2077, file: !3, line: 313, type: !25)
!2082 = !DILocation(line: 312, column: 46, scope: !2077)
!2083 = !DILocation(line: 313, column: 16, scope: !2077)
!2084 = !DILocation(line: 313, column: 32, scope: !2077)
!2085 = !DILocalVariable(name: "val", arg: 1, scope: !2086, file: !2087, line: 88, type: !176)
!2086 = distinct !DISubprogram(name: "wrpkru", scope: !2087, file: !2087, line: 88, type: !2088, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2090)
!2087 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !176}
!2090 = !{!2085}
!2091 = !DILocation(line: 88, column: 67, scope: !2086, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 316, column: 2, scope: !2077)
!2093 = !DILocation(line: 91, column: 2, scope: !2086, inlinedAt: !2092)
!2094 = !{i32 50122}
!2095 = !DILocation(line: 97, column: 1, scope: !2086, inlinedAt: !2092)
!2096 = !DILocalVariable(name: "dev", arg: 1, scope: !2097, file: !3, line: 217, type: !6)
!2097 = distinct !DISubprogram(name: "_uknetdev_input", scope: !3, file: !3, line: 217, type: !4, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2098)
!2098 = !{!2096, !2099, !2100, !2101, !2107}
!2099 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2097, file: !3, line: 218, type: !27)
!2100 = !DILocalVariable(name: "argp", arg: 3, scope: !2097, file: !3, line: 218, type: !25)
!2101 = !DILocalVariable(name: "tid", scope: !2102, file: !3, line: 220, type: !176)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 220, column: 2)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 220, column: 2)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 220, column: 2)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 220, column: 2)
!2106 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 220, column: 2)
!2107 = !DILocalVariable(name: "_arg3", scope: !2102, file: !3, line: 220, type: !841)
!2108 = !DILocation(line: 217, column: 40, scope: !2097, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 318, column: 2, scope: !2077)
!2110 = !DILocation(line: 218, column: 16, scope: !2097, inlinedAt: !2109)
!2111 = !DILocation(line: 218, column: 32, scope: !2097, inlinedAt: !2109)
!2112 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 220, column: 2, scope: !2105, inlinedAt: !2109)
!2114 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2113)
!2115 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2113)
!2116 = !DILocation(line: 220, column: 2, scope: !2105, inlinedAt: !2109)
!2117 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 220, column: 2, scope: !2105, inlinedAt: !2109)
!2119 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2118)
!2120 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2118)
!2121 = !DILocation(line: 220, column: 2, scope: !2106, inlinedAt: !2109)
!2122 = !DILocation(line: 220, column: 2, scope: !2123, inlinedAt: !2109)
!2123 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 220, column: 2)
!2124 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 220, column: 2, scope: !2102, inlinedAt: !2109)
!2127 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2125)
!2128 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2125)
!2129 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2126)
!2130 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2126)
!2131 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2126)
!2132 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2126)
!2133 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2126)
!2134 = !DILocation(line: 220, column: 2, scope: !2102, inlinedAt: !2109)
!2135 = !{i32 -2146015357, i32 -2146015344, i32 -2146015319, i32 -2146015295, i32 -2146015270, i32 -2146015195, i32 -2146015170, i32 -2146015026, i32 -2146012729, i32 -2146012640, i32 -2146012519, i32 -2146012424, i32 -2146012323, i32 -2146012296, i32 -2146012213, i32 -2146012124, i32 -2146012003, i32 -2146011903, i32 -2146011797, i32 -2146011689, i32 -2146014696, i32 -2146014643, i32 -2146014612, i32 -2146014581, i32 -2146014560, i32 -2146014538, i32 -2146014489, i32 -2146014468, i32 -2146014365, i32 -2146011606, i32 -2146011517, i32 -2146011396, i32 -2146011297, i32 -2146011191, i32 -2146011089, i32 -2146011056, i32 -2146010983, i32 -2146010915, i32 -2146014105, i32 -2146014052, i32 -2146014021, i32 -2146013990, i32 -2146013969, i32 -2146013947, i32 -2146013898, i32 -2146013877, i32 -2146010863, i32 -2146010774, i32 -2146010653, i32 -2146010554, i32 -2146010448, i32 -2146010346, i32 -2146010313, i32 -2146010230, i32 -2146010141, i32 -2146010020, i32 -2146009920, i32 -2146009894, i32 -2146009791, i32 -2146009765, i32 -2146013619, i32 -2146013552, i32 -2146013527, i32 -2146013463, i32 -2146013347, i32 -2146013322, i32 -2146013297}
!2136 = !DILocation(line: 221, column: 1, scope: !2097, inlinedAt: !2109)
!2137 = !DILocation(line: 319, column: 1, scope: !2077)
!2138 = distinct !DISubprogram(name: "uknetdev_output", scope: !3, file: !3, line: 145, type: !802, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2154, !2155, !2162, !2163}
!2140 = !DILocalVariable(name: "nf", arg: 1, scope: !2138, file: !3, line: 145, type: !733)
!2141 = !DILocalVariable(name: "p", arg: 2, scope: !2138, file: !3, line: 145, type: !779)
!2142 = !DILocalVariable(name: "dev", scope: !2138, file: !3, line: 147, type: !6)
!2143 = !DILocalVariable(name: "lwip_data", scope: !2138, file: !3, line: 148, type: !861)
!2144 = !DILocalVariable(name: "q", scope: !2138, file: !3, line: 149, type: !779)
!2145 = !DILocalVariable(name: "nb", scope: !2138, file: !3, line: 150, type: !18)
!2146 = !DILocalVariable(name: "wpos", scope: !2138, file: !3, line: 151, type: !306)
!2147 = !DILocalVariable(name: "ret", scope: !2138, file: !3, line: 152, type: !15)
!2148 = !DILocalVariable(name: "tid", scope: !2149, file: !3, line: 158, type: !176)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 158, column: 2)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 158, column: 2)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 158, column: 2)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 158, column: 2)
!2153 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 158, column: 2)
!2154 = !DILocalVariable(name: "_ret", scope: !2149, file: !3, line: 158, type: !841)
!2155 = !DILocalVariable(name: "tid", scope: !2156, file: !3, line: 192, type: !176)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 192, column: 3)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 192, column: 3)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 192, column: 3)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 192, column: 3)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 192, column: 3)
!2161 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 191, column: 5)
!2162 = !DILocalVariable(name: "_ret", scope: !2156, file: !3, line: 192, type: !841)
!2163 = !DILocalVariable(name: "_arg3", scope: !2156, file: !3, line: 192, type: !841)
!2164 = !DILocation(line: 145, column: 44, scope: !2138)
!2165 = !DILocation(line: 145, column: 61, scope: !2138)
!2166 = !DILocation(line: 148, column: 2, scope: !2138)
!2167 = !DILocation(line: 152, column: 2, scope: !2138)
!2168 = !DILocation(line: 154, column: 2, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 154, column: 2)
!2170 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 154, column: 2)
!2171 = !DILocation(line: 154, column: 2, scope: !2170)
!2172 = !DILocation(line: 154, column: 2, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 154, column: 2)
!2174 = !DILocation(line: 155, column: 8, scope: !2138)
!2175 = !DILocation(line: 147, column: 20, scope: !2138)
!2176 = !DILocation(line: 156, column: 2, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 156, column: 2)
!2178 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 156, column: 2)
!2179 = !DILocation(line: 156, column: 2, scope: !2178)
!2180 = !DILocation(line: 156, column: 2, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 156, column: 2)
!2182 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 158, column: 2, scope: !2152)
!2184 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2183)
!2185 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2183)
!2186 = !DILocation(line: 158, column: 2, scope: !2152)
!2187 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 158, column: 2, scope: !2152)
!2189 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2188)
!2190 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2188)
!2191 = !DILocation(line: 158, column: 2, scope: !2153)
!2192 = !DILocation(line: 104, column: 65, scope: !1620, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 158, column: 2, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 158, column: 2)
!2195 = !DILocation(line: 106, column: 41, scope: !1620, inlinedAt: !2193)
!2196 = !DILocation(line: 106, column: 2, scope: !1620, inlinedAt: !2193)
!2197 = !DILocation(line: 148, column: 27, scope: !2138)
!2198 = !DILocation(line: 158, column: 2, scope: !2194)
!2199 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 158, column: 2, scope: !2149)
!2202 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2200)
!2203 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2200)
!2204 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2201)
!2205 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2201)
!2206 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2201)
!2207 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2201)
!2208 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2201)
!2209 = !DILocation(line: 158, column: 2, scope: !2149)
!2210 = !{i32 -2146033320, i32 -2146033307, i32 -2146033282, i32 -2146033258, i32 -2146033233, i32 -2146033158, i32 -2146033133, i32 -2146032989, i32 -2146029809, i32 -2146029720, i32 -2146029599, i32 -2146029504, i32 -2146029403, i32 -2146029376, i32 -2146029293, i32 -2146029204, i32 -2146029083, i32 -2146028983, i32 -2146028877, i32 -2146028769, i32 -2146032701, i32 -2146032648, i32 -2146032617, i32 -2146032586, i32 -2146032565, i32 -2146032543, i32 -2146032494, i32 -2146032473, i32 -2146028686, i32 -2146028597, i32 -2146028476, i32 -2146028377, i32 -2146028271, i32 -2146028169, i32 -2146028136, i32 -2146028063, i32 -2146027995, i32 -2146032169, i32 -2146032110, i32 -2146032057, i32 -2146032026, i32 -2146031995, i32 -2146031974, i32 -2146031952, i32 -2146031903, i32 -2146031882, i32 -2146027939, i32 -2146027850, i32 -2146027729, i32 -2146027630, i32 -2146027524, i32 -2146027422, i32 -2146027389, i32 -2146027306, i32 -2146027217, i32 -2146027096, i32 -2146026996, i32 -2146026970, i32 -2146026867, i32 -2146026841, i32 -2146031624, i32 -2146031557, i32 -2146031532, i32 -2146031468, i32 -2146031386, i32 -2146031363, i32 -2146031338, i32 -2146031313}
!2211 = !DILocation(line: 158, column: 2, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 158, column: 2)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 158, column: 2)
!2214 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 158, column: 2)
!2215 = !{i32 -2146030125, i32 -2146030109}
!2216 = !DILocation(line: 159, column: 2, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 159, column: 2)
!2218 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 159, column: 2)
!2219 = !DILocation(line: 159, column: 2, scope: !2218)
!2220 = !DILocation(line: 159, column: 2, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 159, column: 2)
!2222 = !DILocation(line: 161, column: 38, scope: !2138)
!2223 = !DILocation(line: 163, column: 26, scope: !2138)
!2224 = !DILocation(line: 163, column: 6, scope: !2138)
!2225 = !DILocation(line: 164, column: 26, scope: !2138)
!2226 = !{!1727, !1014, i64 18}
!2227 = !DILocation(line: 161, column: 7, scope: !2138)
!2228 = !DILocation(line: 150, column: 20, scope: !2138)
!2229 = !DILocation(line: 166, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 166, column: 6)
!2231 = !DILocation(line: 166, column: 6, scope: !2138)
!2232 = !DILocation(line: 169, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 169, column: 6)
!2234 = !DILocalVariable(name: "m", arg: 1, scope: !2235, file: !20, line: 475, type: !18)
!2235 = distinct !DISubprogram(name: "uk_netbuf_tailroom", scope: !20, file: !20, line: 475, type: !2236, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!43, !18}
!2238 = !{!2234}
!2239 = !DILocation(line: 475, column: 59, scope: !2235, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 169, column: 6, scope: !2233)
!2241 = !DILocation(line: 477, column: 2, scope: !2242, inlinedAt: !2240)
!2242 = distinct !DILexicalBlock(scope: !2235, file: !20, line: 477, column: 2)
!2243 = !DILocation(line: 478, column: 2, scope: !2244, inlinedAt: !2240)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !20, line: 478, column: 2)
!2245 = distinct !DILexicalBlock(scope: !2235, file: !20, line: 478, column: 2)
!2246 = !{!1122, !1010, i64 40}
!2247 = !DILocation(line: 478, column: 2, scope: !2245, inlinedAt: !2240)
!2248 = !DILocation(line: 478, column: 2, scope: !2249, inlinedAt: !2240)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !20, line: 478, column: 2)
!2250 = !DILocation(line: 479, column: 2, scope: !2251, inlinedAt: !2240)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !20, line: 479, column: 2)
!2252 = distinct !DILexicalBlock(scope: !2235, file: !20, line: 479, column: 2)
!2253 = !DILocation(line: 479, column: 2, scope: !2252, inlinedAt: !2240)
!2254 = !DILocation(line: 479, column: 2, scope: !2255, inlinedAt: !2240)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !20, line: 479, column: 2)
!2256 = !DILocation(line: 481, column: 21, scope: !2235, inlinedAt: !2240)
!2257 = !DILocation(line: 481, column: 61, scope: !2235, inlinedAt: !2240)
!2258 = !{!1122, !1124, i64 48}
!2259 = !DILocation(line: 482, column: 9, scope: !2235, inlinedAt: !2240)
!2260 = !DILocation(line: 482, column: 50, scope: !2235, inlinedAt: !2240)
!2261 = !DILocation(line: 482, column: 33, scope: !2235, inlinedAt: !2240)
!2262 = !DILocation(line: 482, column: 31, scope: !2235, inlinedAt: !2240)
!2263 = !DILocation(line: 481, column: 42, scope: !2235, inlinedAt: !2240)
!2264 = !DILocation(line: 482, column: 6, scope: !2235, inlinedAt: !2240)
!2265 = !DILocation(line: 481, column: 2, scope: !2235, inlinedAt: !2240)
!2266 = !DILocation(line: 169, column: 6, scope: !2138)
!2267 = !DILocation(line: 174, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 169, column: 53)
!2269 = !DILocation(line: 175, column: 3, scope: !2268)
!2270 = !DILocation(line: 151, column: 8, scope: !2138)
!2271 = !DILocation(line: 149, column: 15, scope: !2138)
!2272 = !DILocation(line: 184, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 184, column: 2)
!2274 = !DILocation(line: 184, column: 2, scope: !2273)
!2275 = !DILocation(line: 185, column: 19, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 184, column: 38)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 184, column: 2)
!2278 = !DILocation(line: 185, column: 31, scope: !2276)
!2279 = !DILocation(line: 185, column: 28, scope: !2276)
!2280 = !DILocation(line: 185, column: 3, scope: !2276)
!2281 = !DILocation(line: 186, column: 14, scope: !2276)
!2282 = !DILocation(line: 186, column: 8, scope: !2276)
!2283 = !DILocation(line: 184, column: 32, scope: !2277)
!2284 = !{!1139, !1010, i64 0}
!2285 = !DILocation(line: 184, column: 2, scope: !2277)
!2286 = !DILocation(line: 184, column: 16, scope: !2277)
!2287 = distinct !{!2287, !2274, !2288}
!2288 = !DILocation(line: 187, column: 2, scope: !2273)
!2289 = !DILocation(line: 188, column: 15, scope: !2138)
!2290 = !DILocation(line: 188, column: 10, scope: !2138)
!2291 = !DILocation(line: 191, column: 2, scope: !2138)
!2292 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 192, column: 3, scope: !2159)
!2294 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2293)
!2295 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2293)
!2296 = !DILocation(line: 192, column: 3, scope: !2159)
!2297 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 192, column: 3, scope: !2159)
!2299 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2298)
!2300 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2298)
!2301 = !DILocation(line: 192, column: 3, scope: !2160)
!2302 = !DILocalVariable(name: "dev", arg: 1, scope: !2303, file: !1289, line: 497, type: !6)
!2303 = distinct !DISubprogram(name: "uk_netdev_tx_one", scope: !1289, file: !1289, line: 497, type: !2304, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!15, !6, !27, !18}
!2306 = !{!2302, !2307, !2308}
!2307 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2303, file: !1289, line: 497, type: !27)
!2308 = !DILocalVariable(name: "pkt", arg: 3, scope: !2303, file: !1289, line: 498, type: !18)
!2309 = !DILocation(line: 497, column: 54, scope: !2303, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 192, column: 3, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 192, column: 3)
!2312 = !DILocation(line: 497, column: 68, scope: !2303, inlinedAt: !2310)
!2313 = !DILocation(line: 498, column: 26, scope: !2303, inlinedAt: !2310)
!2314 = !DILocation(line: 500, column: 2, scope: !2315, inlinedAt: !2310)
!2315 = distinct !DILexicalBlock(scope: !2303, file: !1289, line: 500, column: 2)
!2316 = !DILocation(line: 501, column: 2, scope: !2317, inlinedAt: !2310)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !1289, line: 501, column: 2)
!2318 = distinct !DILexicalBlock(scope: !2303, file: !1289, line: 501, column: 2)
!2319 = !{!1309, !1010, i64 0}
!2320 = !DILocation(line: 501, column: 2, scope: !2318, inlinedAt: !2310)
!2321 = !DILocation(line: 501, column: 2, scope: !2322, inlinedAt: !2310)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !1289, line: 501, column: 2)
!2323 = !DILocation(line: 502, column: 2, scope: !2324, inlinedAt: !2310)
!2324 = distinct !DILexicalBlock(scope: !2303, file: !1289, line: 502, column: 2)
!2325 = !DILocation(line: 503, column: 2, scope: !2326, inlinedAt: !2310)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !1289, line: 503, column: 2)
!2327 = distinct !DILexicalBlock(scope: !2303, file: !1289, line: 503, column: 2)
!2328 = !DILocation(line: 503, column: 2, scope: !2327, inlinedAt: !2310)
!2329 = !DILocation(line: 503, column: 2, scope: !2330, inlinedAt: !2310)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !1289, line: 503, column: 2)
!2331 = !DILocation(line: 504, column: 2, scope: !2332, inlinedAt: !2310)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !1289, line: 504, column: 2)
!2333 = distinct !DILexicalBlock(scope: !2303, file: !1289, line: 504, column: 2)
!2334 = !DILocation(line: 504, column: 2, scope: !2333, inlinedAt: !2310)
!2335 = !DILocation(line: 504, column: 2, scope: !2336, inlinedAt: !2310)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !1289, line: 504, column: 2)
!2337 = !DILocation(line: 505, column: 2, scope: !2338, inlinedAt: !2310)
!2338 = distinct !DILexicalBlock(scope: !2303, file: !1289, line: 505, column: 2)
!2339 = !DILocation(line: 507, column: 9, scope: !2303, inlinedAt: !2310)
!2340 = !DILocation(line: 507, column: 2, scope: !2303, inlinedAt: !2310)
!2341 = !DILocation(line: 152, column: 6, scope: !2138)
!2342 = !DILocation(line: 192, column: 3, scope: !2311)
!2343 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 192, column: 3, scope: !2156)
!2346 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2344)
!2347 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2344)
!2348 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2345)
!2349 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2345)
!2350 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2345)
!2351 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2345)
!2352 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2345)
!2353 = !DILocation(line: 192, column: 3, scope: !2156)
!2354 = !{i32 -2146024195, i32 -2146024182, i32 -2146024157, i32 -2146024133, i32 -2146024108, i32 -2146024033, i32 -2146024008, i32 -2146023864, i32 -2146020647, i32 -2146020558, i32 -2146020437, i32 -2146020342, i32 -2146020241, i32 -2146020214, i32 -2146020131, i32 -2146020042, i32 -2146019921, i32 -2146019821, i32 -2146019715, i32 -2146019607, i32 -2146023534, i32 -2146023481, i32 -2146023450, i32 -2146023419, i32 -2146023398, i32 -2146023376, i32 -2146023327, i32 -2146023306, i32 -2146023203, i32 -2146019524, i32 -2146019435, i32 -2146019314, i32 -2146019215, i32 -2146019109, i32 -2146019007, i32 -2146018974, i32 -2146018901, i32 -2146018833, i32 -2146023013, i32 -2146022954, i32 -2146022901, i32 -2146022870, i32 -2146022839, i32 -2146022818, i32 -2146022796, i32 -2146022747, i32 -2146022726, i32 -2146018781, i32 -2146018692, i32 -2146018571, i32 -2146018472, i32 -2146018366, i32 -2146018264, i32 -2146018231, i32 -2146018148, i32 -2146018059, i32 -2146017938, i32 -2146017838, i32 -2146017812, i32 -2146017709, i32 -2146017683, i32 -2146022468, i32 -2146022401, i32 -2146022376, i32 -2146022312, i32 -2146022230, i32 -2146022207, i32 -2146022182, i32 -2146022157}
!2355 = !DILocation(line: 192, column: 3, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 192, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 192, column: 3)
!2358 = !{i32 -2146021119, i32 -2146021102}
!2359 = !DILocation(line: 194, column: 11, scope: !2138)
!2360 = !DILocation(line: 194, column: 2, scope: !2161)
!2361 = distinct !{!2361, !2291, !2362}
!2362 = !DILocation(line: 194, column: 41, scope: !2138)
!2363 = !DILocation(line: 195, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 195, column: 6)
!2365 = !DILocation(line: 195, column: 6, scope: !2138)
!2366 = !DILocation(line: 204, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 195, column: 25)
!2368 = !DILocation(line: 205, column: 3, scope: !2367)
!2369 = !DILocation(line: 0, scope: !2230)
!2370 = !DILocation(line: 212, column: 1, scope: !2138)
!2371 = distinct !DISubprogram(name: "uknetdev_updown", scope: !3, file: !3, line: 399, type: !814, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2372)
!2372 = !{!2373, !2374, !2375, !2376, !2377, !2383, !2384, !2394, !2395, !2402, !2403, !2409, !2410, !2411, !2412}
!2373 = !DILocalVariable(name: "nf", arg: 1, scope: !2371, file: !3, line: 399, type: !733)
!2374 = !DILocalVariable(name: "dev", scope: !2371, file: !3, line: 401, type: !6)
!2375 = !DILocalVariable(name: "ret", scope: !2371, file: !3, line: 402, type: !15)
!2376 = !DILocalVariable(name: "lwip_data", scope: !2371, file: !3, line: 403, type: !861)
!2377 = !DILocalVariable(name: "tid", scope: !2378, file: !3, line: 409, type: !176)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 409, column: 2)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 409, column: 2)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 409, column: 2)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 409, column: 2)
!2382 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 409, column: 2)
!2383 = !DILocalVariable(name: "_ret", scope: !2378, file: !3, line: 409, type: !841)
!2384 = !DILocalVariable(name: "tid", scope: !2385, file: !3, line: 415, type: !176)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 415, column: 4)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 415, column: 4)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 415, column: 4)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 415, column: 4)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 415, column: 4)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 414, column: 65)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 414, column: 7)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 413, column: 33)
!2393 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 413, column: 6)
!2394 = !DILocalVariable(name: "_ret", scope: !2385, file: !3, line: 415, type: !841)
!2395 = !DILocalVariable(name: "tid", scope: !2396, file: !3, line: 449, type: !176)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 449, column: 4)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 449, column: 4)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 449, column: 4)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 449, column: 4)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 449, column: 4)
!2401 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 443, column: 10)
!2402 = !DILocalVariable(name: "_ret", scope: !2396, file: !3, line: 449, type: !841)
!2403 = !DILocalVariable(name: "tid", scope: !2404, file: !3, line: 452, type: !176)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 452, column: 4)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 452, column: 4)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 452, column: 4)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 452, column: 4)
!2408 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 452, column: 4)
!2409 = !DILocalVariable(name: "_ret", scope: !2404, file: !3, line: 452, type: !841)
!2410 = !DILocalVariable(name: "_arg3", scope: !2404, file: !3, line: 452, type: !841)
!2411 = !DILocalVariable(name: "_arg4", scope: !2404, file: !3, line: 452, type: !841)
!2412 = !DILocalVariable(name: "_arg5", scope: !2404, file: !3, line: 452, type: !841)
!2413 = !DILocation(line: 399, column: 43, scope: !2371)
!2414 = !DILocation(line: 402, column: 2, scope: !2371)
!2415 = !DILocation(line: 403, column: 2, scope: !2371)
!2416 = !DILocation(line: 405, column: 2, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 405, column: 2)
!2418 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 405, column: 2)
!2419 = !DILocation(line: 405, column: 2, scope: !2418)
!2420 = !DILocation(line: 405, column: 2, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 405, column: 2)
!2422 = !DILocation(line: 406, column: 8, scope: !2371)
!2423 = !DILocation(line: 401, column: 20, scope: !2371)
!2424 = !DILocation(line: 407, column: 2, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 407, column: 2)
!2426 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 407, column: 2)
!2427 = !DILocation(line: 407, column: 2, scope: !2426)
!2428 = !DILocation(line: 407, column: 2, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 407, column: 2)
!2430 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 409, column: 2, scope: !2381)
!2432 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2431)
!2433 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2431)
!2434 = !DILocation(line: 409, column: 2, scope: !2381)
!2435 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 409, column: 2, scope: !2381)
!2437 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2436)
!2438 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2436)
!2439 = !DILocation(line: 409, column: 2, scope: !2382)
!2440 = !DILocation(line: 104, column: 65, scope: !1620, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 409, column: 2, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 409, column: 2)
!2443 = !DILocation(line: 106, column: 41, scope: !1620, inlinedAt: !2441)
!2444 = !DILocation(line: 106, column: 2, scope: !1620, inlinedAt: !2441)
!2445 = !DILocation(line: 403, column: 28, scope: !2371)
!2446 = !DILocation(line: 409, column: 2, scope: !2442)
!2447 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 409, column: 2, scope: !2378)
!2450 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2448)
!2451 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2448)
!2452 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2449)
!2453 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2449)
!2454 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2449)
!2455 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2449)
!2456 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2449)
!2457 = !DILocation(line: 409, column: 2, scope: !2378)
!2458 = !{i32 -2145950512, i32 -2145950499, i32 -2145950474, i32 -2145950450, i32 -2145950425, i32 -2145950350, i32 -2145950325, i32 -2145950181, i32 -2145947001, i32 -2145946912, i32 -2145946791, i32 -2145946696, i32 -2145946595, i32 -2145946568, i32 -2145946485, i32 -2145946396, i32 -2145946275, i32 -2145946175, i32 -2145946069, i32 -2145945961, i32 -2145949893, i32 -2145949840, i32 -2145949809, i32 -2145949778, i32 -2145949757, i32 -2145949735, i32 -2145949686, i32 -2145949665, i32 -2145945878, i32 -2145945789, i32 -2145945668, i32 -2145945569, i32 -2145945463, i32 -2145945361, i32 -2145945328, i32 -2145945255, i32 -2145945187, i32 -2145949361, i32 -2145949302, i32 -2145949249, i32 -2145949218, i32 -2145949187, i32 -2145949166, i32 -2145949144, i32 -2145949095, i32 -2145949074, i32 -2145945131, i32 -2145945042, i32 -2145944921, i32 -2145944822, i32 -2145944716, i32 -2145944614, i32 -2145944581, i32 -2145944498, i32 -2145944409, i32 -2145944288, i32 -2145944188, i32 -2145944162, i32 -2145944059, i32 -2145944033, i32 -2145948816, i32 -2145948749, i32 -2145948724, i32 -2145948660, i32 -2145948578, i32 -2145948555, i32 -2145948530, i32 -2145948505}
!2459 = !DILocation(line: 409, column: 2, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 409, column: 2)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 409, column: 2)
!2462 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 409, column: 2)
!2463 = !{i32 -2145947317, i32 -2145947301}
!2464 = !DILocation(line: 0, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 466, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 461, column: 9)
!2467 = !DILocation(line: 413, column: 10, scope: !2393)
!2468 = !DILocation(line: 413, column: 16, scope: !2393)
!2469 = !{!1727, !1039, i64 24}
!2470 = !DILocation(line: 413, column: 6, scope: !2371)
!2471 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 0, scope: !2399)
!2473 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2472)
!2474 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2472)
!2475 = !DILocation(line: 0, scope: !2399)
!2476 = !DILocation(line: 414, column: 7, scope: !2392)
!2477 = !DILocation(line: 415, column: 4, scope: !2388)
!2478 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 415, column: 4, scope: !2388)
!2480 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2479)
!2481 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2479)
!2482 = !DILocation(line: 415, column: 4, scope: !2389)
!2483 = !DILocation(line: 415, column: 4, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 415, column: 4)
!2485 = !DILocation(line: 402, column: 6, scope: !2371)
!2486 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 415, column: 4, scope: !2385)
!2489 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2487)
!2490 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2487)
!2491 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2488)
!2492 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2488)
!2493 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2488)
!2494 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2488)
!2495 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2488)
!2496 = !DILocation(line: 415, column: 4, scope: !2385)
!2497 = !{i32 -2145941810, i32 -2145941797, i32 -2145941772, i32 -2145941748, i32 -2145941723, i32 -2145941648, i32 -2145941623, i32 -2145941479, i32 -2145938294, i32 -2145938205, i32 -2145938084, i32 -2145937989, i32 -2145937888, i32 -2145937861, i32 -2145937778, i32 -2145937689, i32 -2145937568, i32 -2145937468, i32 -2145937362, i32 -2145937254, i32 -2145941187, i32 -2145941134, i32 -2145941103, i32 -2145941072, i32 -2145941051, i32 -2145941029, i32 -2145940980, i32 -2145940959, i32 -2145937171, i32 -2145937082, i32 -2145936961, i32 -2145936862, i32 -2145936756, i32 -2145936654, i32 -2145936621, i32 -2145936548, i32 -2145936480, i32 -2145940652, i32 -2145940593, i32 -2145940540, i32 -2145940509, i32 -2145940478, i32 -2145940457, i32 -2145940435, i32 -2145940386, i32 -2145940365, i32 -2145936419, i32 -2145936330, i32 -2145936209, i32 -2145936110, i32 -2145936004, i32 -2145935902, i32 -2145935869, i32 -2145935786, i32 -2145935697, i32 -2145935576, i32 -2145935476, i32 -2145935450, i32 -2145935347, i32 -2145935321, i32 -2145940107, i32 -2145940040, i32 -2145940015, i32 -2145939951, i32 -2145939869, i32 -2145939846, i32 -2145939821, i32 -2145939796}
!2498 = !DILocation(line: 415, column: 4, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 415, column: 4)
!2500 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 415, column: 4)
!2501 = !{i32 -2145938781, i32 -2145938764}
!2502 = !DILocation(line: 434, column: 8, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 434, column: 8)
!2504 = !DILocation(line: 434, column: 12, scope: !2503)
!2505 = !DILocation(line: 434, column: 8, scope: !2390)
!2506 = !DILocation(line: 441, column: 5, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 434, column: 18)
!2508 = !DILocation(line: 442, column: 4, scope: !2507)
!2509 = !DILocation(line: 449, column: 4, scope: !2399)
!2510 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 449, column: 4, scope: !2399)
!2512 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2511)
!2513 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2511)
!2514 = !DILocation(line: 449, column: 4, scope: !2400)
!2515 = !DILocation(line: 449, column: 4, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 449, column: 4)
!2517 = !{!1727, !1010, i64 48}
!2518 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 449, column: 4, scope: !2396)
!2521 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2519)
!2522 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2519)
!2523 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2520)
!2524 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2520)
!2525 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2520)
!2526 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2520)
!2527 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2520)
!2528 = !DILocation(line: 449, column: 4, scope: !2396)
!2529 = !{i32 -2145933299, i32 -2145933286, i32 -2145933261, i32 -2145933237, i32 -2145933212, i32 -2145933137, i32 -2145933112, i32 -2145932968, i32 -2145929777, i32 -2145929688, i32 -2145929567, i32 -2145929472, i32 -2145929371, i32 -2145929344, i32 -2145929261, i32 -2145929172, i32 -2145929051, i32 -2145928951, i32 -2145928845, i32 -2145928737, i32 -2145932685, i32 -2145932632, i32 -2145932601, i32 -2145932570, i32 -2145932549, i32 -2145932527, i32 -2145932478, i32 -2145932457, i32 -2145928654, i32 -2145928565, i32 -2145928444, i32 -2145928345, i32 -2145928239, i32 -2145928137, i32 -2145928104, i32 -2145928031, i32 -2145927963, i32 -2145932155, i32 -2145932096, i32 -2145932043, i32 -2145932012, i32 -2145931981, i32 -2145931960, i32 -2145931938, i32 -2145931889, i32 -2145931868, i32 -2145927907, i32 -2145927818, i32 -2145927697, i32 -2145927598, i32 -2145927492, i32 -2145927390, i32 -2145927357, i32 -2145927274, i32 -2145927185, i32 -2145927064, i32 -2145926964, i32 -2145926938, i32 -2145926835, i32 -2145926809, i32 -2145931610, i32 -2145931543, i32 -2145931518, i32 -2145931454, i32 -2145931372, i32 -2145931349, i32 -2145931324, i32 -2145931299}
!2530 = !DILocation(line: 449, column: 4, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 449, column: 4)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 449, column: 4)
!2533 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 449, column: 4)
!2534 = !{i32 -2145930145, i32 -2145930129}
!2535 = !DILocation(line: 451, column: 4, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 451, column: 4)
!2537 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 451, column: 4)
!2538 = !DILocation(line: 451, column: 4, scope: !2537)
!2539 = !DILocation(line: 451, column: 4, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 451, column: 4)
!2541 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 452, column: 4, scope: !2407)
!2543 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2542)
!2544 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2542)
!2545 = !DILocation(line: 452, column: 4, scope: !2407)
!2546 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 452, column: 4, scope: !2407)
!2548 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2547)
!2549 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2547)
!2550 = !DILocation(line: 452, column: 4, scope: !2408)
!2551 = !DILocation(line: 452, column: 4, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 452, column: 4)
!2553 = !{!1727, !1010, i64 32}
!2554 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 452, column: 4, scope: !2404)
!2557 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2555)
!2558 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2555)
!2559 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2556)
!2560 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2556)
!2561 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2556)
!2562 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2556)
!2563 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2556)
!2564 = !DILocation(line: 452, column: 4, scope: !2404)
!2565 = !{i32 -2145923711, i32 -2145923698, i32 -2145923673, i32 -2145923649, i32 -2145923624, i32 -2145923549, i32 -2145923524, i32 -2145923380, i32 -2145923355, i32 -2145919754, i32 -2145919665, i32 -2145919544, i32 -2145919449, i32 -2145919348, i32 -2145919321, i32 -2145919238, i32 -2145919149, i32 -2145919028, i32 -2145918928, i32 -2145918822, i32 -2145918714, i32 -2145922979, i32 -2145922926, i32 -2145922895, i32 -2145922864, i32 -2145922843, i32 -2145922821, i32 -2145922772, i32 -2145922751, i32 -2145922648, i32 -2145922616, i32 -2145918631, i32 -2145918542, i32 -2145918421, i32 -2145918322, i32 -2145918216, i32 -2145918114, i32 -2145918081, i32 -2145918008, i32 -2145917940, i32 -2145922426, i32 -2145922367, i32 -2145922314, i32 -2145922283, i32 -2145922252, i32 -2145922231, i32 -2145922209, i32 -2145922160, i32 -2145922139, i32 -2145917882, i32 -2145917793, i32 -2145917672, i32 -2145917573, i32 -2145917467, i32 -2145917365, i32 -2145917332, i32 -2145917249, i32 -2145917160, i32 -2145917039, i32 -2145916939, i32 -2145916913, i32 -2145916810, i32 -2145916784, i32 -2145921881, i32 -2145921856, i32 -2145921789, i32 -2145921764, i32 -2145921700, i32 -2145921618, i32 -2145921595, i32 -2145921570, i32 -2145921545}
!2566 = !DILocation(line: 452, column: 4, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 452, column: 4)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 452, column: 4)
!2569 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 452, column: 4)
!2570 = !{i32 -2145920254, i32 -2145920238}
!2571 = !DILocation(line: 466, column: 7, scope: !2466)
!2572 = !DILocalVariable(name: "dev", arg: 1, scope: !2573, file: !1289, line: 407, type: !6)
!2573 = distinct !DISubprogram(name: "uk_netdev_rxq_intr_disable", scope: !1289, file: !1289, line: 407, type: !576, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2574)
!2574 = !{!2572, !2575}
!2575 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2573, file: !1289, line: 408, type: !27)
!2576 = !DILocation(line: 407, column: 64, scope: !2573, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 467, column: 4, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 466, column: 65)
!2579 = !DILocation(line: 408, column: 20, scope: !2573, inlinedAt: !2577)
!2580 = !DILocation(line: 410, column: 2, scope: !2581, inlinedAt: !2577)
!2581 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 410, column: 2)
!2582 = !DILocation(line: 411, column: 2, scope: !2583, inlinedAt: !2577)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !1289, line: 411, column: 2)
!2584 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 411, column: 2)
!2585 = !{!1309, !1010, i64 24}
!2586 = !DILocation(line: 411, column: 2, scope: !2584, inlinedAt: !2577)
!2587 = !DILocation(line: 411, column: 2, scope: !2588, inlinedAt: !2577)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !1289, line: 411, column: 2)
!2589 = !DILocation(line: 412, column: 2, scope: !2590, inlinedAt: !2577)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !1289, line: 412, column: 2)
!2591 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 412, column: 2)
!2592 = !DILocation(line: 412, column: 2, scope: !2591, inlinedAt: !2577)
!2593 = !DILocation(line: 412, column: 2, scope: !2594, inlinedAt: !2577)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !1289, line: 412, column: 2)
!2595 = !DILocation(line: 413, column: 2, scope: !2596, inlinedAt: !2577)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !1289, line: 413, column: 2)
!2597 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 413, column: 2)
!2598 = !DILocation(line: 413, column: 2, scope: !2597, inlinedAt: !2577)
!2599 = !DILocation(line: 413, column: 2, scope: !2600, inlinedAt: !2577)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !1289, line: 413, column: 2)
!2601 = !DILocation(line: 414, column: 2, scope: !2602, inlinedAt: !2577)
!2602 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 414, column: 2)
!2603 = !DILocation(line: 415, column: 2, scope: !2604, inlinedAt: !2577)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !1289, line: 415, column: 2)
!2605 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 415, column: 2)
!2606 = !DILocation(line: 415, column: 2, scope: !2605, inlinedAt: !2577)
!2607 = !DILocation(line: 415, column: 2, scope: !2608, inlinedAt: !2577)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !1289, line: 415, column: 2)
!2609 = !DILocation(line: 417, column: 6, scope: !2610, inlinedAt: !2577)
!2610 = distinct !DILexicalBlock(scope: !2573, file: !1289, line: 417, column: 6)
!2611 = !{!2612, !1010, i64 8}
!2612 = !{!"uk_netdev_ops", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1010, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72, !1010, i64 80, !1010, i64 88, !1010, i64 96, !1010, i64 104, !1010, i64 112, !1010, i64 120}
!2613 = !DILocation(line: 417, column: 6, scope: !2573, inlinedAt: !2577)
!2614 = !DILocation(line: 419, column: 9, scope: !2573, inlinedAt: !2577)
!2615 = !DILocation(line: 419, column: 2, scope: !2573, inlinedAt: !2577)
!2616 = !DILocation(line: 0, scope: !2578)
!2617 = !DILocation(line: 420, column: 1, scope: !2573, inlinedAt: !2577)
!2618 = !DILocation(line: 472, column: 3, scope: !2578)
!2619 = !DILocation(line: 475, column: 1, scope: !2371)
!2620 = !DILocation(line: 745, column: 48, scope: !884)
!2621 = !DILocation(line: 748, column: 27, scope: !884)
!2622 = !DILocation(line: 749, column: 27, scope: !884)
!2623 = !DILocation(line: 750, column: 27, scope: !884)
!2624 = !DILocation(line: 771, column: 17, scope: !884)
!2625 = !DILocalVariable(name: "a", arg: 1, scope: !2626, file: !56, line: 173, type: !54)
!2626 = distinct !DISubprogram(name: "uk_calloc", scope: !56, file: !56, line: 173, type: !68, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2627)
!2627 = !{!2625, !2628, !2629}
!2628 = !DILocalVariable(name: "nmemb", arg: 2, scope: !2626, file: !56, line: 174, type: !63)
!2629 = !DILocalVariable(name: "size", arg: 3, scope: !2626, file: !56, line: 174, type: !63)
!2630 = !DILocation(line: 173, column: 48, scope: !2626, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 771, column: 7, scope: !884)
!2632 = !DILocation(line: 174, column: 17, scope: !2626, inlinedAt: !2631)
!2633 = !DILocation(line: 174, column: 31, scope: !2626, inlinedAt: !2631)
!2634 = !DILocation(line: 176, column: 6, scope: !2635, inlinedAt: !2631)
!2635 = distinct !DILexicalBlock(scope: !2626, file: !56, line: 176, column: 6)
!2636 = !DILocation(line: 176, column: 6, scope: !2626, inlinedAt: !2631)
!2637 = !DILocation(line: 177, column: 3, scope: !2638, inlinedAt: !2631)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !56, line: 176, column: 20)
!2639 = !DILocation(line: 177, column: 9, scope: !2638, inlinedAt: !2631)
!2640 = !DILocation(line: 178, column: 3, scope: !2638, inlinedAt: !2631)
!2641 = !DILocation(line: 181, column: 1, scope: !2626, inlinedAt: !2631)
!2642 = !DILocation(line: 772, column: 6, scope: !884)
!2643 = !DILocalVariable(name: "a", arg: 1, scope: !2644, file: !56, line: 166, type: !54)
!2644 = distinct !DISubprogram(name: "uk_do_calloc", scope: !56, file: !56, line: 166, type: !68, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2645)
!2645 = !{!2643, !2646, !2647}
!2646 = !DILocalVariable(name: "nmemb", arg: 2, scope: !2644, file: !56, line: 167, type: !63)
!2647 = !DILocalVariable(name: "size", arg: 3, scope: !2644, file: !56, line: 167, type: !63)
!2648 = !DILocation(line: 166, column: 51, scope: !2644, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 180, column: 9, scope: !2626, inlinedAt: !2631)
!2650 = !DILocation(line: 167, column: 13, scope: !2644, inlinedAt: !2649)
!2651 = !DILocation(line: 167, column: 27, scope: !2644, inlinedAt: !2649)
!2652 = !DILocation(line: 169, column: 2, scope: !2653, inlinedAt: !2649)
!2653 = distinct !DILexicalBlock(scope: !2644, file: !56, line: 169, column: 2)
!2654 = !DILocation(line: 170, column: 12, scope: !2644, inlinedAt: !2649)
!2655 = !DILocation(line: 170, column: 9, scope: !2644, inlinedAt: !2649)
!2656 = !DILocation(line: 170, column: 2, scope: !2644, inlinedAt: !2649)
!2657 = !DILocation(line: 180, column: 2, scope: !2626, inlinedAt: !2631)
!2658 = !DILocation(line: 772, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !884, file: !3, line: 772, column: 6)
!2660 = !DILocation(line: 771, column: 7, scope: !884)
!2661 = !DILocation(line: 767, column: 16, scope: !884)
!2662 = !DILocation(line: 779, column: 4, scope: !884)
!2663 = !DILocation(line: 779, column: 22, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !895, file: !3, line: 779, column: 22)
!2665 = !{i32 -2145823040}
!2666 = !DILocation(line: 779, column: 22, scope: !895)
!2667 = !{i32 -2145822936}
!2668 = !DILocation(line: 779, column: 22, scope: !884)
!2669 = !DILocation(line: 775, column: 8, scope: !884)
!2670 = !DILocation(line: 768, column: 16, scope: !884)
!2671 = !DILocation(line: 780, column: 2, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 780, column: 2)
!2673 = distinct !DILexicalBlock(scope: !884, file: !3, line: 780, column: 2)
!2674 = !DILocation(line: 780, column: 2, scope: !2673)
!2675 = !DILocation(line: 780, column: 2, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 780, column: 2)
!2677 = !DILocation(line: 782, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !884, file: !3, line: 782, column: 6)
!2679 = !DILocation(line: 782, column: 6, scope: !884)
!2680 = !DILocation(line: 783, column: 3, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 782, column: 12)
!2682 = !DILocation(line: 784, column: 3, scope: !2681)
!2683 = !DILocation(line: 0, scope: !2659)
!2684 = !DILocation(line: 788, column: 1, scope: !884)
!2685 = !DILocation(line: 497, column: 54, scope: !2303)
!2686 = !DILocation(line: 497, column: 68, scope: !2303)
!2687 = !DILocation(line: 498, column: 26, scope: !2303)
!2688 = !DILocation(line: 500, column: 2, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2315, file: !1289, line: 500, column: 2)
!2690 = !DILocation(line: 500, column: 2, scope: !2315)
!2691 = !DILocation(line: 500, column: 2, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !1289, line: 500, column: 2)
!2693 = !DILocation(line: 501, column: 2, scope: !2317)
!2694 = !DILocation(line: 501, column: 2, scope: !2318)
!2695 = !DILocation(line: 501, column: 2, scope: !2322)
!2696 = !DILocation(line: 502, column: 2, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2324, file: !1289, line: 502, column: 2)
!2698 = !DILocation(line: 502, column: 2, scope: !2324)
!2699 = !DILocation(line: 502, column: 2, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !1289, line: 502, column: 2)
!2701 = !DILocation(line: 503, column: 2, scope: !2326)
!2702 = !DILocation(line: 503, column: 2, scope: !2327)
!2703 = !DILocation(line: 503, column: 2, scope: !2330)
!2704 = !DILocation(line: 504, column: 2, scope: !2332)
!2705 = !DILocation(line: 504, column: 2, scope: !2333)
!2706 = !DILocation(line: 504, column: 2, scope: !2336)
!2707 = !DILocation(line: 505, column: 2, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2338, file: !1289, line: 505, column: 2)
!2709 = !DILocation(line: 505, column: 2, scope: !2338)
!2710 = !DILocation(line: 505, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !1289, line: 505, column: 2)
!2712 = !DILocation(line: 507, column: 9, scope: !2303)
!2713 = !DILocation(line: 507, column: 2, scope: !2303)
!2714 = distinct !DISubprogram(name: "uk_netdev_rxq_intr_enable", scope: !1289, file: !1289, line: 379, type: !576, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2715)
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "dev", arg: 1, scope: !2714, file: !1289, line: 379, type: !6)
!2717 = !DILocalVariable(name: "queue_id", arg: 2, scope: !2714, file: !1289, line: 380, type: !27)
!2718 = !DILocation(line: 379, column: 63, scope: !2714)
!2719 = !DILocation(line: 380, column: 19, scope: !2714)
!2720 = !DILocation(line: 382, column: 2, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !1289, line: 382, column: 2)
!2722 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 382, column: 2)
!2723 = !DILocation(line: 382, column: 2, scope: !2722)
!2724 = !DILocation(line: 382, column: 2, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !1289, line: 382, column: 2)
!2726 = !DILocation(line: 383, column: 2, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !1289, line: 383, column: 2)
!2728 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 383, column: 2)
!2729 = !DILocation(line: 383, column: 2, scope: !2728)
!2730 = !DILocation(line: 383, column: 2, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !1289, line: 383, column: 2)
!2732 = !DILocation(line: 384, column: 2, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !1289, line: 384, column: 2)
!2734 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 384, column: 2)
!2735 = !DILocation(line: 384, column: 2, scope: !2734)
!2736 = !DILocation(line: 384, column: 2, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !1289, line: 384, column: 2)
!2738 = !DILocation(line: 385, column: 2, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !1289, line: 385, column: 2)
!2740 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 385, column: 2)
!2741 = !DILocation(line: 385, column: 2, scope: !2740)
!2742 = !DILocation(line: 385, column: 2, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !1289, line: 385, column: 2)
!2744 = !DILocation(line: 386, column: 2, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !1289, line: 386, column: 2)
!2746 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 386, column: 2)
!2747 = !DILocation(line: 386, column: 2, scope: !2746)
!2748 = !DILocation(line: 386, column: 2, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !1289, line: 386, column: 2)
!2750 = !DILocation(line: 387, column: 2, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !1289, line: 387, column: 2)
!2752 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 387, column: 2)
!2753 = !DILocation(line: 387, column: 2, scope: !2752)
!2754 = !DILocation(line: 387, column: 2, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !1289, line: 387, column: 2)
!2756 = !DILocation(line: 389, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2714, file: !1289, line: 389, column: 6)
!2758 = !{!2612, !1010, i64 0}
!2759 = !DILocation(line: 389, column: 6, scope: !2714)
!2760 = !DILocation(line: 391, column: 9, scope: !2714)
!2761 = !DILocation(line: 391, column: 2, scope: !2714)
!2762 = !DILocation(line: 0, scope: !2714)
!2763 = !DILocation(line: 0, scope: !2757)
!2764 = !DILocation(line: 392, column: 1, scope: !2714)
!2765 = distinct !DISubprogram(name: "_poll_netif", scope: !3, file: !3, line: 390, type: !263, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2766)
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !3, line: 390, type: !25)
!2768 = !DILocation(line: 390, column: 31, scope: !2765)
!2769 = !DILocation(line: 88, column: 67, scope: !2086, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 394, column: 2, scope: !2765)
!2771 = !DILocation(line: 91, column: 2, scope: !2086, inlinedAt: !2770)
!2772 = !DILocation(line: 97, column: 1, scope: !2086, inlinedAt: !2770)
!2773 = !DILocalVariable(name: "arg", arg: 1, scope: !2774, file: !3, line: 375, type: !25)
!2774 = distinct !DISubprogram(name: "__poll_netif", scope: !3, file: !3, line: 375, type: !263, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true, unit: !698, retainedNodes: !2775)
!2775 = !{!2773, !2776}
!2776 = !DILocalVariable(name: "tid", scope: !2777, file: !3, line: 377, type: !176)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 377, column: 2)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 377, column: 2)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 377, column: 2)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 377, column: 2)
!2781 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 377, column: 2)
!2782 = !DILocation(line: 375, column: 25, scope: !2774, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 396, column: 2, scope: !2765)
!2784 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 377, column: 2, scope: !2780, inlinedAt: !2783)
!2786 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2785)
!2787 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2785)
!2788 = !DILocation(line: 377, column: 2, scope: !2780, inlinedAt: !2783)
!2789 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 377, column: 2, scope: !2780, inlinedAt: !2783)
!2791 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2790)
!2792 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2790)
!2793 = !DILocation(line: 377, column: 2, scope: !2781, inlinedAt: !2783)
!2794 = !DILocation(line: 377, column: 2, scope: !2795, inlinedAt: !2783)
!2795 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 377, column: 2)
!2796 = !DILocation(line: 120, column: 2, scope: !1017, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 49, column: 21, scope: !1042, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 377, column: 2, scope: !2777, inlinedAt: !2783)
!2799 = !DILocation(line: 118, column: 16, scope: !1017, inlinedAt: !2797)
!2800 = !DILocation(line: 121, column: 2, scope: !1017, inlinedAt: !2797)
!2801 = !DILocation(line: 49, column: 16, scope: !1042, inlinedAt: !2798)
!2802 = !DILocation(line: 50, column: 19, scope: !1042, inlinedAt: !2798)
!2803 = !DILocation(line: 50, column: 11, scope: !1042, inlinedAt: !2798)
!2804 = !DILocation(line: 50, column: 9, scope: !1042, inlinedAt: !2798)
!2805 = !DILocation(line: 50, column: 2, scope: !1042, inlinedAt: !2798)
!2806 = !DILocation(line: 377, column: 2, scope: !2777, inlinedAt: !2783)
!2807 = !{i32 -2145965914, i32 -2145965901, i32 -2145965876, i32 -2145965852, i32 -2145965827, i32 -2145965752, i32 -2145965727, i32 -2145965583, i32 -2145963377, i32 -2145963288, i32 -2145963167, i32 -2145963072, i32 -2145962971, i32 -2145962944, i32 -2145962861, i32 -2145962772, i32 -2145962651, i32 -2145962551, i32 -2145962445, i32 -2145962337, i32 -2145965295, i32 -2145965242, i32 -2145965211, i32 -2145965180, i32 -2145965159, i32 -2145965137, i32 -2145965088, i32 -2145965067, i32 -2145962254, i32 -2145962165, i32 -2145962044, i32 -2145961945, i32 -2145961839, i32 -2145961737, i32 -2145961704, i32 -2145961631, i32 -2145961563, i32 -2145964693, i32 -2145964640, i32 -2145964609, i32 -2145964578, i32 -2145964557, i32 -2145964535, i32 -2145964486, i32 -2145964465, i32 -2145961514, i32 -2145961425, i32 -2145961304, i32 -2145961205, i32 -2145961099, i32 -2145960997, i32 -2145960964, i32 -2145960881, i32 -2145960792, i32 -2145960671, i32 -2145960571, i32 -2145960545, i32 -2145960442, i32 -2145960416, i32 -2145964207, i32 -2145964140, i32 -2145964115, i32 -2145964051, i32 -2145963935, i32 -2145963910, i32 -2145963885}
!2808 = !DILocation(line: 378, column: 1, scope: !2774, inlinedAt: !2783)
!2809 = !DILocation(line: 397, column: 1, scope: !2765)
