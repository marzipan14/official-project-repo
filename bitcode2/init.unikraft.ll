; ModuleID = '/root/.unikraft/libs/lwip/init.c'
source_filename = "/root/.unikraft/libs/lwip/init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.0, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.0 = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
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
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.netif_ext_callback = type { void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, %struct.netif_ext_callback* }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon.5, i8 }
%union.anon.5 = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%union.netif_ext_callback_args_t = type { %struct.ipv4_changed_s }
%struct.ipv4_changed_s = type { %struct.ip_addr*, %struct.ip_addr*, %struct.ip_addr* }
%struct.uk_netdev = type { i32 (%struct.uk_netdev*, %struct.uk_netdev_tx_queue*, %struct.uk_netbuf*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*, %struct.uk_netbuf**)*, %struct.uk_netdev_data*, %struct.uk_netdev_ops*, [1 x %struct.uk_netdev_rx_queue*], [1 x %struct.uk_netdev_tx_queue*], %struct.anon.4, %struct.uk_netdev_einfo*, i8* }
%struct.uk_netdev_tx_queue = type opaque
%struct.uk_netbuf = type { %struct.uk_netbuf*, %struct.uk_netbuf*, i8*, i16, %struct.__atomic, i8*, i8*, i64, void (%struct.uk_netbuf*)*, %struct.uk_alloc*, i8* }
%struct.__atomic = type { i32 }
%struct.uk_netdev_rx_queue = type opaque
%struct.uk_netdev_data = type { i32, %struct.uk_netdev_event_handler*, i16, i8* }
%struct.uk_netdev_event_handler = type { void (%struct.uk_netdev*, i16, i8*)*, i8*, %struct.uk_semaphore, %struct.uk_netdev*, i16, %struct.uk_thread*, i8*, %struct.uk_sched* }
%struct.uk_netdev_ops = type { i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_rx_queue*)*, %struct.uk_hwaddr* (%struct.uk_netdev*)*, i32 (%struct.uk_netdev*, %struct.uk_hwaddr*)*, i16 (%struct.uk_netdev*)*, i32 (%struct.uk_netdev*, i16)*, i32 (%struct.uk_netdev*, i32)*, i32 (%struct.uk_netdev*)*, void (%struct.uk_netdev*, %struct.uk_netdev_info*)*, i32 (%struct.uk_netdev*, i16, %struct.uk_netdev_queue_info*)*, i32 (%struct.uk_netdev*, i16, %struct.uk_netdev_queue_info*)*, i8* (%struct.uk_netdev*, i32)*, i32 (%struct.uk_netdev*, %struct.uk_netdev_conf*)*, %struct.uk_netdev_tx_queue* (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_txqueue_conf*)*, %struct.uk_netdev_rx_queue* (%struct.uk_netdev*, i16, i16, %struct.uk_netdev_rxqueue_conf*)*, i32 (%struct.uk_netdev*)* }
%struct.uk_hwaddr = type { [6 x i8] }
%struct.uk_netdev_info = type { i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.uk_netdev_queue_info = type { i16, i16, i16, i32 }
%struct.uk_netdev_conf = type { i16, i16 }
%struct.uk_netdev_txqueue_conf = type { %struct.uk_alloc* }
%struct.uk_netdev_rxqueue_conf = type { void (%struct.uk_netdev*, i16, i8*)*, i8*, %struct.uk_alloc*, i16 (i8*, %struct.uk_netbuf**, i16)*, i8*, %struct.uk_sched* }
%struct.anon.4 = type { %struct.uk_netdev*, %struct.uk_netdev** }
%struct.uk_netdev_einfo = type { i8*, i8*, i8* }
%struct.link_changed_s = type { i8 }
%struct.ipv6_set_s = type { i8, %struct.ip_addr* }
%struct.ipv6_addr_state_changed_s = type { i8, i8, %struct.ip_addr* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@_liblwip_init.__str.1 = internal global [19 x i8] c"Initializing lwip\0A\00", section ".data_shared", align 16, !dbg !0
@_lwip_init_sem = internal global %struct.uk_semaphore zeroinitializer, section ".data_shared", align 8, !dbg !710
@netif_status_print = internal global %struct.netif_ext_callback zeroinitializer, align 8, !dbg !552
@_liblwip_init.__str.3 = internal global [70 x i8] c"Skipping to add network device %u to lwIP: Not in unconfigured state\0A\00", section ".data_shared", align 16, !dbg !504
@_liblwip_init.__str.5 = internal global [37 x i8] c"Attach network device %u to lwIP...\0A\00", section ".data_shared", align 16, !dbg !511
@_liblwip_init.__str.6 = internal global [33 x i8] c"Error converting IP address: %s\0A\00", section ".data_shared", align 16, !dbg !513
@_liblwip_init.__str.7 = internal global [33 x i8] c"Error converting IP address: %s\0A\00", section ".data_shared", align 16, !dbg !518
@_liblwip_init.__str.8 = internal global [31 x i8] c"Error converting net mask: %s\0A\00", section ".data_shared", align 16, !dbg !520
@_liblwip_init.__str.9 = internal global [31 x i8] c"Error converting net mask: %s\0A\00", section ".data_shared", align 16, !dbg !525
@_liblwip_init.__str.10 = internal global [30 x i8] c"Error converting gateway: %s\0A\00", section ".data_shared", align 16, !dbg !527
@_liblwip_init.__str.11 = internal global [30 x i8] c"Error converting gateway: %s\0A\00", section ".data_shared", align 16, !dbg !530
@_liblwip_init.__str.12 = internal global [44 x i8] c"Failed to attach network device %u to lwIP\0A\00", section ".data_shared", align 16, !dbg !532
@_liblwip_init.__str.13 = internal global [44 x i8] c"Failed to attach network device %u to lwIP\0A\00", section ".data_shared", align 16, !dbg !537
@_liblwip_init.__str.15 = internal global [34 x i8] c"%c%c%u: Set as default interface\0A\00", section ".data_shared", align 16, !dbg !544
@__uk_inittab39_liblwip_init = internal constant i32 ()* @liblwip_init, section ".uk_inittab39", align 8, !dbg !546
@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !717
@uk_pr_crit.__str.17 = internal global [7 x i8] c"init.c\00", section ".data_shared", align 1, !dbg !736
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@wq_entries = external dso_local global [32 x %struct.uk_waitq_entry], align 16
@.str.19 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@_netif_status_print.__str = internal global [15 x i8] c"%c%c%u: Added\0A\00", section ".data_shared", align 1, !dbg !741
@_netif_status_print.__str.21 = internal global [15 x i8] c"%c%c%u: Added\0A\00", section ".data_shared", align 1, !dbg !840
@_netif_status_print.__str.22 = internal global [17 x i8] c"%c%c%u: Removed\0A\00", section ".data_shared", align 16, !dbg !842
@_netif_status_print.__str.23 = internal global [17 x i8] c"%c%c%u: Removed\0A\00", section ".data_shared", align 16, !dbg !844
@_netif_status_print.__str.24 = internal global [3 x i8] c"up\00", section ".data_shared", align 1, !dbg !846
@_netif_status_print.__str.25 = internal global [5 x i8] c"down\00", section ".data_shared", align 1, !dbg !849
@_netif_status_print.__str.26 = internal global [20 x i8] c"%c%c%u: Link is %s\0A\00", section ".data_shared", align 16, !dbg !854
@_netif_status_print.__str.27 = internal global [20 x i8] c"%c%c%u: Link is %s\0A\00", section ".data_shared", align 16, !dbg !859
@_netif_status_print.__str.28 = internal global [3 x i8] c"up\00", section ".data_shared", align 1, !dbg !861
@_netif_status_print.__str.29 = internal global [5 x i8] c"down\00", section ".data_shared", align 1, !dbg !863
@_netif_status_print.__str.30 = internal global [25 x i8] c"%c%c%u: Interface is %s\0A\00", section ".data_shared", align 16, !dbg !865
@_netif_status_print.__str.31 = internal global [25 x i8] c"%c%c%u: Interface is %s\0A\00", section ".data_shared", align 16, !dbg !867
@_netif_status_print.__str.32 = internal global [37 x i8] c"%c%c%u: Set IPv4 address %s mask %s\0A\00", section ".data_shared", align 16, !dbg !869
@_netif_status_print.__str.33 = internal global [37 x i8] c"%c%c%u: Set IPv4 address %s mask %s\0A\00", section ".data_shared", align 16, !dbg !871
@_netif_status_print.__str.34 = internal global [33 x i8] c"%c%c%u: Set IPv6 address %d: %s\0A\00", section ".data_shared", align 16, !dbg !873
@_netif_status_print.__str.35 = internal global [33 x i8] c"%c%c%u: Set IPv6 address %d: %s\0A\00", section ".data_shared", align 16, !dbg !875
@_netif_status_print.__str.36 = internal global [33 x i8] c"%c%c%u: Set IPv6 address %d: %s\0A\00", section ".data_shared", align 16, !dbg !877
@_netif_status_print.__str.37 = internal global [33 x i8] c"%c%c%u: Set IPv6 address %d: %s\0A\00", section ".data_shared", align 16, !dbg !879
@uk_pr_err.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !881
@uk_pr_err.__str.38 = internal global [7 x i8] c"init.c\00", section ".data_shared", align 1, !dbg !887
@__A_VARIABLE = internal global i32 0
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()** @__uk_inittab39_liblwip_init to i8*)], section "llvm.metadata"

; Function Attrs: norecurse noredzone nounwind
define dso_local void @sys_init() local_unnamed_addr #0 !dbg !1250 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  ret void, !dbg !1252
}

; Function Attrs: noredzone nounwind
define dso_local i32 @liblwip_init() #1 section ".text_shared" !dbg !1253 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1263
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !1263
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1264, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %4, label %10, label %5, !dbg !1275

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1276, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  br i1 %7, label %10, label %8, !dbg !1280

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @_liblwip_init() #9, !dbg !1281
  store i32 0, i32* %1, align 4, !dbg !1281, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  br label %19, !dbg !1281

; <label>:10:                                     ; preds = %5, %0
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1288, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  %12 = and i64 %11, -65536, !dbg !1298
  %13 = or i64 %12, 4097, !dbg !1298
  %14 = add nsw i64 %13, -1, !dbg !1298
  %15 = inttoptr i64 %14 to i32*, !dbg !1299
  %16 = load i32, i32* %15, align 4096, !dbg !1300, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  %17 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _liblwip_init\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i32 %16, i32 (...)* bitcast (i32 ()* @_liblwip_init to i32 (...)*)) #8, !dbg !1302, !srcloc !1303
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1, i64 %17) #8, !dbg !1304, !srcloc !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = load i32, i32* %1, align 4, !dbg !1308, !tbaa !1284
  br label %19

; <label>:19:                                     ; preds = %10, %8
  %20 = phi i32 [ %18, %10 ], [ 0, %8 ], !dbg !1308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  ret i32 %20, !dbg !1310
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i64 @ukarch_read_sp() unnamed_addr #4 !dbg !1265 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1311, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  ret i64 %1, !dbg !1313
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i32 @uk_thread_get_tid() unnamed_addr #4 !dbg !1290 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1314, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  %2 = and i64 %1, -65536, !dbg !1319
  %3 = or i64 %2, 4097, !dbg !1319
  %4 = add nsw i64 %3, -1, !dbg !1319
  %5 = inttoptr i64 %4 to i32*, !dbg !1320
  %6 = load i32, i32* %5, align 4096, !dbg !1321, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  ret i32 %6, !dbg !1322
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_liblwip_init() #1 !dbg !2 {
  %1 = alloca %struct.uk_netdev*, align 8
  %2 = alloca %struct.ip4_addr, align 4
  %3 = alloca %struct.ip4_addr, align 4
  %4 = alloca %struct.ip4_addr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.uk_netdev** %1 to i8*, !dbg !1323
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1323
  %8 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1324, !tbaa !1325
  %9 = icmp eq %struct.uk_alloc* %8, null, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  br i1 %9, label %10, label %12, !dbg !1336, !prof !1337

; <label>:10:                                     ; preds = %0
  %11 = tail call i32* @__errno() #10, !dbg !1338
  store i32 12, i32* %11, align 4, !dbg !1340, !tbaa !1284
  br label %16, !dbg !1341

; <label>:12:                                     ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  %13 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %8, i64 0, i32 0, !dbg !1351
  %14 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %13, align 8, !dbg !1351, !tbaa !1325
  %15 = tail call i8* %14(%struct.uk_alloc* nonnull %8, i64 8) #10, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  br label %16, !dbg !1354

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ null, %10 ], [ %15, %12 ], !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %18 = bitcast i8* %17 to i8**, !dbg !1358
  store i8* null, i8** %18, align 8, !dbg !1360, !tbaa !1325
  %19 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !1361
  %20 = bitcast %struct.ip4_addr* %3 to i8*, !dbg !1362
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !1362
  %21 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !1363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !1363
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1364, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br i1 %23, label %28, label %24, !dbg !1368

; <label>:24:                                     ; preds = %16
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1369, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  br i1 %26, label %28, label %27, !dbg !1373

; <label>:27:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br label %35, !dbg !1382

; <label>:28:                                     ; preds = %24, %16
  %29 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1383, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  %30 = and i64 %29, -65536, !dbg !1389
  %31 = or i64 %30, 4097, !dbg !1389
  %32 = add nsw i64 %31, -1, !dbg !1389
  %33 = inttoptr i64 %32 to i32*, !dbg !1390
  %34 = load i32, i32* %33, align 4096, !dbg !1391, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([19 x i8]* @_liblwip_init.__str.1 to i64), i32 %34, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1393, !srcloc !1394
  br label %35

; <label>:35:                                     ; preds = %27, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %36 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1395, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  %37 = icmp ult i64 %36, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br i1 %37, label %42, label %38, !dbg !1399

; <label>:38:                                     ; preds = %35
  %39 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1400, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  %40 = icmp ugt i64 %39, ptrtoint ([0 x i8]* @_end to i64), !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %40, label %42, label %41, !dbg !1404

; <label>:41:                                     ; preds = %38
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull @_lwip_init_sem, i64 0) #10, !dbg !1405
  br label %49, !dbg !1405

; <label>:42:                                     ; preds = %38, %35
  %43 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1407, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  %44 = and i64 %43, -65536, !dbg !1413
  %45 = or i64 %44, 4097, !dbg !1413
  %46 = add nsw i64 %45, -1, !dbg !1413
  %47 = inttoptr i64 %46 to i32*, !dbg !1414
  %48 = load i32, i32* %47, align 4096, !dbg !1415, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_init\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i64 0, i32 %48, void (%struct.uk_semaphore*, i64)* nonnull @uk_semaphore_init) #8, !dbg !1417, !srcloc !1418
  br label %49

; <label>:49:                                     ; preds = %42, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @tcpip_init(void (i8*)* nonnull @_lwip_init_done, i8* null) #10, !dbg !1419
  %50 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1420, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  %51 = icmp ult i64 %50, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br i1 %51, label %56, label %52, !dbg !1424

; <label>:52:                                     ; preds = %49
  %53 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1425, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  %54 = icmp ugt i64 %53, ptrtoint ([0 x i8]* @_end to i64), !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %54, label %56, label %55, !dbg !1429

; <label>:55:                                     ; preds = %52
  tail call void @uk_semaphore_down(%struct.uk_semaphore* nonnull @_lwip_init_sem) #9, !dbg !1430
  br label %63, !dbg !1430

; <label>:56:                                     ; preds = %52, %49
  %57 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1432, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  %58 = and i64 %57, -65536, !dbg !1438
  %59 = or i64 %58, 4097, !dbg !1438
  %60 = add nsw i64 %59, -1, !dbg !1438
  %61 = inttoptr i64 %60 to i32*, !dbg !1439
  %62 = load i32, i32* %61, align 4096, !dbg !1440, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_down\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i32 %62, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_down) #8, !dbg !1442, !srcloc !1443
  br label %63

; <label>:63:                                     ; preds = %56, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @netif_add_ext_callback(%struct.netif_ext_callback* nonnull @netif_status_print, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* nonnull @_netif_status_print) #10, !dbg !1444
  %64 = bitcast i32* %5 to i8*, !dbg !1446
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #8, !dbg !1446
  %65 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1447, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %66 = icmp ult i64 %65, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %66, label %72, label %67, !dbg !1451

; <label>:67:                                     ; preds = %63
  %68 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1452, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  %69 = icmp ugt i64 %68, ptrtoint ([0 x i8]* @_end to i64), !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %69, label %72, label %70, !dbg !1456

; <label>:70:                                     ; preds = %67
  %71 = tail call i32 @uk_netdev_count() #10, !dbg !1457
  store i32 %71, i32* %5, align 4, !dbg !1457, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br label %81, !dbg !1457

; <label>:72:                                     ; preds = %67, %63
  %73 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1460, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  %74 = and i64 %73, -65536, !dbg !1466
  %75 = or i64 %74, 4097, !dbg !1466
  %76 = add nsw i64 %75, -1, !dbg !1466
  %77 = inttoptr i64 %76 to i32*, !dbg !1467
  %78 = load i32, i32* %77, align 4096, !dbg !1468, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  %79 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_count\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %78, i32 ()* nonnull @uk_netdev_count) #8, !dbg !1470, !srcloc !1471
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %79) #8, !dbg !1472, !srcloc !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %80 = load i32, i32* %5, align 4, !dbg !1476, !tbaa !1284
  br label %81

; <label>:81:                                     ; preds = %72, %70
  %82 = phi i32 [ %80, %72 ], [ %71, %70 ], !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  %83 = icmp eq i32 %82, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %83, label %333, label %84, !dbg !1480

; <label>:84:                                     ; preds = %81
  %85 = bitcast i32* %6 to i8*
  %86 = bitcast %struct.uk_netdev** %1 to i64*
  %87 = ptrtoint i8* %17 to i64
  %88 = bitcast i8* %17 to i64*
  %89 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %3, i64 0, i32 0
  br label %90, !dbg !1480

; <label>:90:                                     ; preds = %84, %327
  %91 = phi i64 [ 0, %84 ], [ %329, %327 ]
  %92 = phi i32 [ 1, %84 ], [ %328, %327 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #8, !dbg !1481
  %93 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1482, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  %94 = icmp ult i64 %93, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  br i1 %94, label %101, label %95, !dbg !1486

; <label>:95:                                     ; preds = %90
  %96 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1487, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  %97 = icmp ugt i64 %96, ptrtoint ([0 x i8]* @_end to i64), !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %97, label %101, label %98, !dbg !1491

; <label>:98:                                     ; preds = %95
  %99 = trunc i64 %91 to i32, !dbg !1492
  %100 = call %struct.uk_netdev* @uk_netdev_get(i32 %99) #10, !dbg !1492
  store %struct.uk_netdev* %100, %struct.uk_netdev** %1, align 8, !dbg !1492, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br label %110, !dbg !1492

; <label>:101:                                    ; preds = %95, %90
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1495, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %103 = and i64 %102, -65536, !dbg !1501
  %104 = or i64 %103, 4097, !dbg !1501
  %105 = add nsw i64 %104, -1, !dbg !1501
  %106 = inttoptr i64 %105 to i32*, !dbg !1502
  %107 = load i32, i32* %106, align 4096, !dbg !1503, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  %108 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %91, i32 %107, %struct.uk_netdev* (i32)* nonnull @uk_netdev_get) #8, !dbg !1505, !srcloc !1506
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_netdev** nonnull %1, i64 %108) #8, !dbg !1507, !srcloc !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %109 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1512, !tbaa !1325
  br label %110

; <label>:110:                                    ; preds = %101, %98
  %111 = phi %struct.uk_netdev* [ %109, %101 ], [ %100, %98 ], !dbg !1512
  %112 = icmp eq %struct.uk_netdev* %111, null, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  br i1 %112, label %327, label %113, !dbg !1514

; <label>:113:                                    ; preds = %110
  %114 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1515, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  %115 = icmp ult i64 %114, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %115, label %122, label %116, !dbg !1519

; <label>:116:                                    ; preds = %113
  %117 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1520, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1523
  %118 = icmp ugt i64 %117, ptrtoint ([0 x i8]* @_end to i64), !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  br i1 %118, label %122, label %119, !dbg !1524

; <label>:119:                                    ; preds = %116
  %120 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1525, !tbaa !1325
  %121 = call i32 @uk_netdev_state_get(%struct.uk_netdev* %120) #10, !dbg !1525
  store i32 %121, i32* %6, align 4, !dbg !1525, !tbaa !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  br label %132, !dbg !1525

; <label>:122:                                    ; preds = %116, %113
  %123 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1529, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  %124 = and i64 %123, -65536, !dbg !1535
  %125 = or i64 %124, 4097, !dbg !1535
  %126 = add nsw i64 %125, -1, !dbg !1535
  %127 = inttoptr i64 %126 to i32*, !dbg !1536
  %128 = load i32, i32* %127, align 4096, !dbg !1537, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  %129 = load i64, i64* %86, align 8, !dbg !1539, !tbaa !1325
  %130 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_state_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %129, i32 %128, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_state_get) #8, !dbg !1539, !srcloc !1540
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %130) #8, !dbg !1541, !srcloc !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %131 = load i32, i32* %6, align 4, !dbg !1545, !tbaa !1528
  br label %132

; <label>:132:                                    ; preds = %122, %119
  %133 = phi i32 [ %131, %122 ], [ %121, %119 ], !dbg !1545
  %134 = icmp eq i32 %133, 1, !dbg !1546
  %135 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1547, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  %136 = icmp uge i64 %135, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br i1 %134, label %150, label %137, !dbg !1552

; <label>:137:                                    ; preds = %132
  br i1 %136, label %138, label %142, !dbg !1554

; <label>:138:                                    ; preds = %137
  %139 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1555, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  %140 = icmp ugt i64 %139, ptrtoint ([0 x i8]* @_end to i64), !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %140, label %142, label %141, !dbg !1559

; <label>:141:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br label %149, !dbg !1564

; <label>:142:                                    ; preds = %138, %137
  %143 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1565, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  %144 = and i64 %143, -65536, !dbg !1571
  %145 = or i64 %144, 4097, !dbg !1571
  %146 = add nsw i64 %145, -1, !dbg !1571
  %147 = inttoptr i64 %146 to i32*, !dbg !1572
  %148 = load i32, i32* %147, align 4096, !dbg !1573, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([70 x i8]* @_liblwip_init.__str.3 to i64), i64 %91, i32 %148, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1575, !srcloc !1576
  br label %149

; <label>:149:                                    ; preds = %142, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %327, !dbg !1577

; <label>:150:                                    ; preds = %132
  br i1 %136, label %151, label %155, !dbg !1578

; <label>:151:                                    ; preds = %150
  %152 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1579, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  %153 = icmp ugt i64 %152, ptrtoint ([0 x i8]* @_end to i64), !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  br i1 %153, label %155, label %154, !dbg !1583

; <label>:154:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  br label %162, !dbg !1588

; <label>:155:                                    ; preds = %151, %150
  %156 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1589, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  %157 = and i64 %156, -65536, !dbg !1595
  %158 = or i64 %157, 4097, !dbg !1595
  %159 = add nsw i64 %158, -1, !dbg !1595
  %160 = inttoptr i64 %159 to i32*, !dbg !1596
  %161 = load i32, i32* %160, align 4096, !dbg !1597, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([37 x i8]* @_liblwip_init.__str.5 to i64), i64 %91, i32 %161, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1599, !srcloc !1600
  br label %162

; <label>:162:                                    ; preds = %155, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %163 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1604, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  %164 = icmp ult i64 %163, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  br i1 %164, label %170, label %165, !dbg !1608

; <label>:165:                                    ; preds = %162
  %166 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1609, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  %167 = icmp ugt i64 %166, ptrtoint ([0 x i8]* @_end to i64), !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br i1 %167, label %170, label %168, !dbg !1613

; <label>:168:                                    ; preds = %165
  %169 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1614, !tbaa !1325
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %169, i32 1, i8** %18) #9, !dbg !1614
  br label %178, !dbg !1614

; <label>:170:                                    ; preds = %165, %162
  %171 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1616, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  %172 = and i64 %171, -65536, !dbg !1622
  %173 = or i64 %172, 4097, !dbg !1622
  %174 = add nsw i64 %173, -1, !dbg !1622
  %175 = inttoptr i64 %174 to i32*, !dbg !1623
  %176 = load i32, i32* %175, align 4096, !dbg !1624, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  %177 = load i64, i64* %86, align 8, !dbg !1626, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %177, i64 1, i64 %87, i32 %176, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #8, !dbg !1626, !srcloc !1627
  br label %178

; <label>:178:                                    ; preds = %170, %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %179 = load i8*, i8** %18, align 8, !dbg !1628, !tbaa !1325
  %180 = icmp eq i8* %179, null, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  br i1 %180, label %277, label %181, !dbg !1629

; <label>:181:                                    ; preds = %178
  %182 = call i32 @ip4addr_aton(i8* nonnull %179, %struct.ip4_addr* nonnull %2) #10, !dbg !1631
  %183 = icmp eq i32 %182, 1, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  %184 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1634, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  %185 = icmp ult i64 %184, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br i1 %183, label %200, label %186, !dbg !1633

; <label>:186:                                    ; preds = %181
  br i1 %185, label %192, label %187, !dbg !1639

; <label>:187:                                    ; preds = %186
  %188 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1640, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  %189 = icmp ugt i64 %188, ptrtoint ([0 x i8]* @_end to i64), !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %189, label %192, label %190, !dbg !1644

; <label>:190:                                    ; preds = %187
  %191 = load i8*, i8** %18, align 8, !dbg !1645, !tbaa !1325
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_liblwip_init.__str.6, i64 0, i64 0), i8* %191) #9, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br label %277, !dbg !1645

; <label>:192:                                    ; preds = %187, %186
  %193 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1647, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  %194 = and i64 %193, -65536, !dbg !1653
  %195 = or i64 %194, 4097, !dbg !1653
  %196 = add nsw i64 %195, -1, !dbg !1653
  %197 = inttoptr i64 %196 to i32*, !dbg !1654
  %198 = load i32, i32* %197, align 4096, !dbg !1655, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  %199 = load i64, i64* %88, align 8, !dbg !1657, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([33 x i8]* @_liblwip_init.__str.7 to i64), i64 %199, i32 %198, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1657, !srcloc !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:200:                                    ; preds = %181
  br i1 %185, label %206, label %201, !dbg !1659

; <label>:201:                                    ; preds = %200
  %202 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1660, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  %203 = icmp ugt i64 %202, ptrtoint ([0 x i8]* @_end to i64), !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  br i1 %203, label %206, label %204, !dbg !1664

; <label>:204:                                    ; preds = %201
  %205 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1665, !tbaa !1325
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %205, i32 3, i8** nonnull %18) #9, !dbg !1665
  br label %214, !dbg !1665

; <label>:206:                                    ; preds = %201, %200
  %207 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1667, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  %208 = and i64 %207, -65536, !dbg !1673
  %209 = or i64 %208, 4097, !dbg !1673
  %210 = add nsw i64 %209, -1, !dbg !1673
  %211 = inttoptr i64 %210 to i32*, !dbg !1674
  %212 = load i32, i32* %211, align 4096, !dbg !1675, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %213 = load i64, i64* %86, align 8, !dbg !1677, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %213, i64 3, i64 %87, i32 %212, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #8, !dbg !1677, !srcloc !1678
  br label %214

; <label>:214:                                    ; preds = %206, %204
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %215 = load i8*, i8** %18, align 8, !dbg !1679, !tbaa !1325
  %216 = icmp eq i8* %215, null, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br i1 %216, label %236, label %217, !dbg !1680

; <label>:217:                                    ; preds = %214
  %218 = call i32 @ip4addr_aton(i8* nonnull %215, %struct.ip4_addr* nonnull %3) #10, !dbg !1682
  %219 = icmp eq i32 %218, 1, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  br i1 %219, label %238, label %220, !dbg !1684

; <label>:220:                                    ; preds = %217
  %221 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1685, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  %222 = icmp ult i64 %221, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  br i1 %222, label %228, label %223, !dbg !1689

; <label>:223:                                    ; preds = %220
  %224 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1690, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  %225 = icmp ugt i64 %224, ptrtoint ([0 x i8]* @_end to i64), !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %225, label %228, label %226, !dbg !1694

; <label>:226:                                    ; preds = %223
  %227 = load i8*, i8** %18, align 8, !dbg !1695, !tbaa !1325
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @_liblwip_init.__str.8, i64 0, i64 0), i8* %227) #9, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  br label %277, !dbg !1695

; <label>:228:                                    ; preds = %223, %220
  %229 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1697, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  %230 = and i64 %229, -65536, !dbg !1703
  %231 = or i64 %230, 4097, !dbg !1703
  %232 = add nsw i64 %231, -1, !dbg !1703
  %233 = inttoptr i64 %232 to i32*, !dbg !1704
  %234 = load i32, i32* %233, align 4096, !dbg !1705, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  %235 = load i64, i64* %88, align 8, !dbg !1707, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([31 x i8]* @_liblwip_init.__str.9 to i64), i64 %235, i32 %234, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1707, !srcloc !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:236:                                    ; preds = %214
  %237 = call i32 @lwip_htonl(i32 -256) #10, !dbg !1709
  store i32 %237, i32* %89, align 4, !dbg !1709, !tbaa !1710
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %238

; <label>:238:                                    ; preds = %217, %236
  %239 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1712, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  %240 = icmp ult i64 %239, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br i1 %240, label %246, label %241, !dbg !1716

; <label>:241:                                    ; preds = %238
  %242 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1717, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %243 = icmp ugt i64 %242, ptrtoint ([0 x i8]* @_end to i64), !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  br i1 %243, label %246, label %244, !dbg !1721

; <label>:244:                                    ; preds = %241
  %245 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1722, !tbaa !1325
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %245, i32 5, i8** nonnull %18) #9, !dbg !1722
  br label %254, !dbg !1722

; <label>:246:                                    ; preds = %241, %238
  %247 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1724, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  %248 = and i64 %247, -65536, !dbg !1730
  %249 = or i64 %248, 4097, !dbg !1730
  %250 = add nsw i64 %249, -1, !dbg !1730
  %251 = inttoptr i64 %250 to i32*, !dbg !1731
  %252 = load i32, i32* %251, align 4096, !dbg !1732, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  %253 = load i64, i64* %86, align 8, !dbg !1734, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %253, i64 5, i64 %87, i32 %252, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #8, !dbg !1734, !srcloc !1735
  br label %254

; <label>:254:                                    ; preds = %246, %244
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %255 = load i8*, i8** %18, align 8, !dbg !1736, !tbaa !1325
  %256 = icmp eq i8* %255, null, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  br i1 %256, label %277, label %257, !dbg !1737

; <label>:257:                                    ; preds = %254
  %258 = call i32 @ip4addr_aton(i8* nonnull %255, %struct.ip4_addr* nonnull %4) #10, !dbg !1739
  %259 = icmp eq i32 %258, 1, !dbg !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  br i1 %259, label %276, label %260, !dbg !1741

; <label>:260:                                    ; preds = %257
  %261 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1742, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  %262 = icmp ult i64 %261, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  br i1 %262, label %268, label %263, !dbg !1746

; <label>:263:                                    ; preds = %260
  %264 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1747, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  %265 = icmp ugt i64 %264, ptrtoint ([0 x i8]* @_end to i64), !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %265, label %268, label %266, !dbg !1751

; <label>:266:                                    ; preds = %263
  %267 = load i8*, i8** %18, align 8, !dbg !1752, !tbaa !1325
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_liblwip_init.__str.10, i64 0, i64 0), i8* %267) #9, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  br label %277, !dbg !1752

; <label>:268:                                    ; preds = %263, %260
  %269 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1754, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  %270 = and i64 %269, -65536, !dbg !1760
  %271 = or i64 %270, 4097, !dbg !1760
  %272 = add nsw i64 %271, -1, !dbg !1760
  %273 = inttoptr i64 %272 to i32*, !dbg !1761
  %274 = load i32, i32* %273, align 4096, !dbg !1762, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  %275 = load i64, i64* %88, align 8, !dbg !1764, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([30 x i8]* @_liblwip_init.__str.11 to i64), i64 %275, i32 %274, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1764, !srcloc !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:276:                                    ; preds = %257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br label %277, !dbg !1766

; <label>:277:                                    ; preds = %254, %178, %276, %266, %268, %226, %228, %190, %192
  %278 = phi %struct.ip4_addr* [ null, %190 ], [ null, %192 ], [ null, %226 ], [ null, %228 ], [ null, %266 ], [ null, %268 ], [ %4, %276 ], [ null, %254 ], [ null, %178 ], !dbg !1767
  %279 = phi %struct.ip4_addr* [ null, %190 ], [ null, %192 ], [ null, %226 ], [ null, %228 ], [ %3, %266 ], [ %3, %268 ], [ %3, %276 ], [ %3, %254 ], [ null, %178 ], !dbg !1767
  %280 = phi %struct.ip4_addr* [ null, %190 ], [ null, %192 ], [ %2, %226 ], [ %2, %228 ], [ %2, %266 ], [ %2, %268 ], [ %2, %276 ], [ %2, %254 ], [ null, %178 ], !dbg !1767
  %281 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1768, !tbaa !1325
  %282 = call %struct.netif* @uknetdev_addif(%struct.uk_netdev* %281, %struct.ip4_addr* %280, %struct.ip4_addr* %279, %struct.ip4_addr* %278) #10, !dbg !1769
  %283 = icmp eq %struct.netif* %282, null, !dbg !1771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br i1 %283, label %284, label %300, !dbg !1772

; <label>:284:                                    ; preds = %277
  %285 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1773, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  %286 = icmp ult i64 %285, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br i1 %286, label %292, label %287, !dbg !1777

; <label>:287:                                    ; preds = %284
  %288 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1778, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  %289 = icmp ugt i64 %288, ptrtoint ([0 x i8]* @_end to i64), !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  br i1 %289, label %292, label %290, !dbg !1782

; <label>:290:                                    ; preds = %287
  %291 = trunc i64 %91 to i32, !dbg !1783
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @_liblwip_init.__str.12, i64 0, i64 0), i32 %291) #9, !dbg !1783
  br label %299, !dbg !1783

; <label>:292:                                    ; preds = %287, %284
  %293 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1785, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  %294 = and i64 %293, -65536, !dbg !1791
  %295 = or i64 %294, 4097, !dbg !1791
  %296 = add nsw i64 %295, -1, !dbg !1791
  %297 = inttoptr i64 %296 to i32*, !dbg !1792
  %298 = load i32, i32* %297, align 4096, !dbg !1793, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([44 x i8]* @_liblwip_init.__str.13 to i64), i64 %91, i32 %298, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1795, !srcloc !1796
  br label %299

; <label>:299:                                    ; preds = %292, %290
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %327, !dbg !1797

; <label>:300:                                    ; preds = %277
  %301 = icmp eq i32 %92, 0, !dbg !1798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  br i1 %301, label %326, label %302, !dbg !1799

; <label>:302:                                    ; preds = %300
  %303 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1800, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  %304 = icmp ult i64 %303, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  br i1 %304, label %309, label %305, !dbg !1804

; <label>:305:                                    ; preds = %302
  %306 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1805, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  %307 = icmp ugt i64 %306, ptrtoint ([0 x i8]* @_end to i64), !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  br i1 %307, label %309, label %308, !dbg !1809

; <label>:308:                                    ; preds = %305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  br label %325, !dbg !1814

; <label>:309:                                    ; preds = %305, %302
  %310 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1815, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  %311 = and i64 %310, -65536, !dbg !1821
  %312 = or i64 %311, 4097, !dbg !1821
  %313 = add nsw i64 %312, -1, !dbg !1821
  %314 = inttoptr i64 %313 to i32*, !dbg !1822
  %315 = load i32, i32* %314, align 4096, !dbg !1823, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  %316 = getelementptr inbounds %struct.netif, %struct.netif* %282, i64 0, i32 22, i64 1, !dbg !1825
  %317 = load i8, i8* %316, align 1, !dbg !1825, !tbaa !1528
  %318 = sext i8 %317 to i64, !dbg !1825
  %319 = getelementptr inbounds %struct.netif, %struct.netif* %282, i64 0, i32 23, !dbg !1825
  %320 = load i8, i8* %319, align 8, !dbg !1825, !tbaa !1826
  %321 = zext i8 %320 to i64, !dbg !1825
  %322 = getelementptr inbounds %struct.netif, %struct.netif* %282, i64 0, i32 22, i64 0, !dbg !1825
  %323 = load i8, i8* %322, align 2, !dbg !1825, !tbaa !1528
  %324 = sext i8 %323 to i64, !dbg !1825
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([34 x i8]* @_liblwip_init.__str.15 to i64), i64 %324, i64 %318, i64 %321, i32 %315, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1825, !srcloc !1830
  br label %325

; <label>:325:                                    ; preds = %309, %308
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @netif_set_default(%struct.netif* nonnull %282) #10, !dbg !1831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  br label %326, !dbg !1832

; <label>:326:                                    ; preds = %300, %325
  call void @netif_set_up(%struct.netif* nonnull %282) #10, !dbg !1833
  br label %327, !dbg !1834

; <label>:327:                                    ; preds = %110, %326, %299, %149
  %328 = phi i32 [ %92, %149 ], [ 0, %326 ], [ %92, %299 ], [ %92, %110 ], !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #8, !dbg !1834
  %329 = add nuw nsw i64 %91, 1, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1837
  %330 = load i32, i32* %5, align 4, !dbg !1476, !tbaa !1284
  %331 = zext i32 %330 to i64, !dbg !1479
  %332 = icmp ult i64 %329, %331, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %332, label %90, label %333, !dbg !1480, !llvm.loop !1838

; <label>:333:                                    ; preds = %327, %81
  %334 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1840, !tbaa !1325
  %335 = icmp eq %struct.uk_alloc* %334, null, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br i1 %335, label %336, label %337, !dbg !1858, !prof !1337

; <label>:336:                                    ; preds = %333
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !1859
  call void @ukplat_terminate(i32 3) #11, !dbg !1859
  unreachable

; <label>:337:                                    ; preds = %333
  %338 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %334, i64 0, i32 5, !dbg !1861
  %339 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %338, align 8, !dbg !1861, !tbaa !1325
  call void %339(%struct.uk_alloc* nonnull %334, i8* %17) #10, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #8, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  ret i32 0, !dbg !1866
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_info(i8* nocapture readnone, ...) #4 !dbg !1375 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  ret void, !dbg !1868
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) #5

; Function Attrs: noredzone
declare dso_local void @tcpip_init(void (i8*)*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @_lwip_init_done(i8* nocapture readnone) #1 !dbg !1869 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1879, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1882
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1883
  br i1 %3, label %22, label %4, !dbg !1883

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1884, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1888
  br i1 %6, label %22, label %7, !dbg !1888

; <label>:7:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1904
  %9 = load i64, i64* getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 0), align 8, !dbg !1906, !tbaa !1907
  %10 = add nsw i64 %9, 1, !dbg !1906
  store i64 %10, i64* getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 0), align 8, !dbg !1906, !tbaa !1907
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1924
  %12 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 1, i32 0), align 8, !dbg !1926, !tbaa !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  %13 = icmp eq %struct.uk_waitq_entry* %12, null, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  br i1 %13, label %21, label %14, !dbg !1930

; <label>:14:                                     ; preds = %7, %14
  %15 = phi %struct.uk_waitq_entry* [ %17, %14 ], [ %12, %7 ]
  %16 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %15, i64 0, i32 2, i32 0, !dbg !1930
  %17 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1930, !tbaa !1932
  %18 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %15, i64 0, i32 1, !dbg !1936
  %19 = load %struct.uk_thread*, %struct.uk_thread** %18, align 8, !dbg !1936, !tbaa !1937
  tail call void @uk_thread_wake(%struct.uk_thread* %19) #10, !dbg !1938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  %20 = icmp eq %struct.uk_waitq_entry* %17, null, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  br i1 %20, label %21, label %14, !dbg !1930, !llvm.loop !1939

; <label>:21:                                     ; preds = %14, %7
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #10, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #10, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  br label %29, !dbg !1946

; <label>:22:                                     ; preds = %4, %1
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1947, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  %24 = and i64 %23, -65536, !dbg !1953
  %25 = or i64 %24, 4097, !dbg !1953
  %26 = add nsw i64 %25, -1, !dbg !1953
  %27 = inttoptr i64 %26 to i32*, !dbg !1954
  %28 = load i32, i32* %27, align 4096, !dbg !1955, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1956
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_up\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i32 %28, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_up) #8, !dbg !1957, !srcloc !1958
  br label %29

; <label>:29:                                     ; preds = %21, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1959
  ret void, !dbg !1959
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_down(%struct.uk_semaphore*) #4 !dbg !1960 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %2, label %7, label %3, !dbg !1976, !prof !1337

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %8, !dbg !1977

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !1986
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1986
  unreachable

; <label>:8:                                      ; preds = %3, %104
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1977, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1993, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1997
  %11 = and i64 %10, -65536, !dbg !1999
  %12 = or i64 %11, 4097, !dbg !1999
  %13 = add nsw i64 %12, -1, !dbg !1999
  %14 = inttoptr i64 %13 to i32*, !dbg !2000
  %15 = load i32, i32* %14, align 4096, !dbg !2001, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  %16 = sext i32 %15 to i64, !dbg !2003
  %17 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, !dbg !2003
  %18 = bitcast %struct.uk_waitq_entry* %17 to i8*, !dbg !2003
  %19 = tail call i8* @memset(i8* nonnull %18, i32 0, i64 24) #10, !dbg !2003
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2004, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2008
  %21 = and i64 %20, -65536, !dbg !2010
  %22 = inttoptr i64 %21 to i64*, !dbg !2011
  %23 = load i64, i64* %22, align 65536, !dbg !2011, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  %24 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 1, !dbg !2003
  %25 = bitcast %struct.uk_thread** %24 to i64*, !dbg !2003
  store i64 %23, i64* %25, align 8, !dbg !2003, !tbaa !1937
  %26 = load i64, i64* %4, align 8, !dbg !2014, !tbaa !1907
  %27 = icmp sgt i64 %26, 0, !dbg !2016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2017
  br i1 %27, label %100, label %28, !dbg !2017

; <label>:28:                                     ; preds = %8
  %29 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %17, i64 0, i32 0
  %30 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 2, i32 0
  br label %31, !dbg !2018

; <label>:31:                                     ; preds = %28, %67
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2018, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2025
  %33 = and i64 %32, -65536, !dbg !2027
  %34 = inttoptr i64 %33 to %struct.uk_thread**, !dbg !2028
  %35 = load %struct.uk_thread*, %struct.uk_thread** %34, align 65536, !dbg !2030, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2033
  %37 = load i32, i32* %29, align 8, !dbg !2044, !tbaa !2046
  %38 = icmp eq i32 %37, 0, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %38, label %39, label %41, !dbg !2048

; <label>:39:                                     ; preds = %31
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %30, align 8, !dbg !2049, !tbaa !1932
  %40 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %5, align 8, !dbg !2049, !tbaa !2052
  store %struct.uk_waitq_entry* %17, %struct.uk_waitq_entry** %40, align 8, !dbg !2049, !tbaa !1325
  store %struct.uk_waitq_entry** %30, %struct.uk_waitq_entry*** %5, align 8, !dbg !2049, !tbaa !2052
  store i32 1, i32* %29, align 8, !dbg !2053, !tbaa !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  br label %41, !dbg !2054

; <label>:41:                                     ; preds = %31, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 6, !dbg !2065
  store i64 0, i64* %42, align 8, !dbg !2066, !tbaa !2067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 5, !dbg !2079
  %44 = load i32, i32* %43, align 8, !dbg !2080, !tbaa !2081
  %45 = and i32 %44, -2, !dbg !2080
  store i32 %45, i32* %43, align 8, !dbg !2080, !tbaa !2081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  %46 = icmp eq %struct.uk_thread* %35, null, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  br i1 %46, label %47, label %48, !dbg !2091, !prof !1337

; <label>:47:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !2092
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2092
  unreachable

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 9, !dbg !2094
  %50 = load %struct.uk_sched*, %struct.uk_sched** %49, align 8, !dbg !2094, !tbaa !2095
  %51 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %50, i64 0, i32 3, !dbg !2096
  %52 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %51, align 8, !dbg !2096, !tbaa !2097
  tail call void %52(%struct.uk_sched* %50, %struct.uk_thread* nonnull %35) #10, !dbg !2101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2102
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #10, !dbg !2103
  %53 = load i64, i64* %4, align 8, !dbg !2104, !tbaa !1907
  %54 = icmp sgt i64 %53, 0, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2107
  br i1 %54, label %70, label %55, !dbg !2107

; <label>:55:                                     ; preds = %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2108, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2117
  %57 = and i64 %56, -65536, !dbg !2119
  %58 = inttoptr i64 %57 to %struct.uk_thread**, !dbg !2120
  %59 = load %struct.uk_thread*, %struct.uk_thread** %58, align 65536, !dbg !2122, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  %60 = icmp eq %struct.uk_thread* %59, null, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  br i1 %60, label %61, label %62, !dbg !2128, !prof !1337

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !2129
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2129
  unreachable

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %59, i64 0, i32 9, !dbg !2131
  %64 = load %struct.uk_sched*, %struct.uk_sched** %63, align 8, !dbg !2131, !tbaa !2095
  %65 = icmp eq %struct.uk_sched* %64, null, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br i1 %65, label %66, label %67, !dbg !2136, !prof !1337

; <label>:66:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2137
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2137
  unreachable

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %64, i64 0, i32 0, !dbg !2139
  %69 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %68, align 8, !dbg !2139, !tbaa !2140
  tail call void %69(%struct.uk_sched* nonnull %64) #10, !dbg !2141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  br label %31, !dbg !2143, !llvm.loop !2144

; <label>:70:                                     ; preds = %48
  %71 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2147
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %35) #10, !dbg !2148
  %72 = load i32, i32* %29, align 8, !dbg !2162, !tbaa !2046
  %73 = icmp eq i32 %72, 0, !dbg !2163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2164
  br i1 %73, label %99, label %74, !dbg !2164

; <label>:74:                                     ; preds = %70
  %75 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %6, align 8, !dbg !2165, !tbaa !1928
  %76 = icmp eq %struct.uk_waitq_entry* %75, %17, !dbg !2165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  br i1 %76, label %77, label %81, !dbg !2166

; <label>:77:                                     ; preds = %74
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2167, !tbaa !1932
  store %struct.uk_waitq_entry* %78, %struct.uk_waitq_entry** %6, align 8, !dbg !2167, !tbaa !1928
  %79 = icmp eq %struct.uk_waitq_entry* %78, null, !dbg !2167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br i1 %79, label %80, label %98, !dbg !2171

; <label>:80:                                     ; preds = %77
  store %struct.uk_waitq_entry** %6, %struct.uk_waitq_entry*** %5, align 8, !dbg !2167, !tbaa !2052
  br label %97, !dbg !2167

; <label>:81:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  %82 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %75, i64 0, i32 2, i32 0, !dbg !2172
  %83 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %82, align 8, !dbg !2172, !tbaa !1932
  %84 = icmp eq %struct.uk_waitq_entry* %83, %17, !dbg !2172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  br i1 %84, label %92, label %85, !dbg !2172

; <label>:85:                                     ; preds = %81, %85
  %86 = phi %struct.uk_waitq_entry* [ %88, %85 ], [ %83, %81 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  %87 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %86, i64 0, i32 2, i32 0, !dbg !2172
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %87, align 8, !dbg !2172, !tbaa !1932
  %89 = icmp eq %struct.uk_waitq_entry* %88, %17, !dbg !2172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  br i1 %89, label %90, label %85, !dbg !2172, !llvm.loop !2173

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %86, i64 0, i32 2, i32 0, !dbg !2172
  br label %92, !dbg !2175

; <label>:92:                                     ; preds = %90, %81
  %93 = phi %struct.uk_waitq_entry** [ %82, %81 ], [ %91, %90 ], !dbg !2172
  %94 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2175, !tbaa !1932
  store %struct.uk_waitq_entry* %94, %struct.uk_waitq_entry** %93, align 8, !dbg !2175, !tbaa !1932
  %95 = icmp eq %struct.uk_waitq_entry* %94, null, !dbg !2175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  br i1 %95, label %96, label %97, !dbg !2178

; <label>:96:                                     ; preds = %92
  store %struct.uk_waitq_entry** %93, %struct.uk_waitq_entry*** %5, align 8, !dbg !2175, !tbaa !2052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  br label %97, !dbg !2175

; <label>:97:                                     ; preds = %92, %96, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %98, !dbg !2179

; <label>:98:                                     ; preds = %97, %77
  store i32 0, i32* %29, align 8, !dbg !2179, !tbaa !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2180
  br label %99, !dbg !2180

; <label>:99:                                     ; preds = %70, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  tail call void @ukplat_lcpu_restore_irqf(i64 %71) #10, !dbg !2182
  br label %100, !dbg !2183

; <label>:100:                                    ; preds = %8, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  %101 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2185
  %102 = load i64, i64* %4, align 8, !dbg !2187, !tbaa !1907
  %103 = icmp sgt i64 %102, 0, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  br i1 %103, label %105, label %104, !dbg !2190

; <label>:104:                                    ; preds = %100
  tail call void @ukplat_lcpu_restore_irqf(i64 %101) #10, !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2192
  br label %8, !dbg !2192, !llvm.loop !2193

; <label>:105:                                    ; preds = %100
  %106 = add nsw i64 %102, -1, !dbg !2196
  store i64 %106, i64* %4, align 8, !dbg !2196, !tbaa !1907
  tail call void @ukplat_lcpu_restore_irqf(i64 %101) #10, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2198
  ret void, !dbg !2198
}

; Function Attrs: noredzone
declare dso_local void @netif_add_ext_callback(%struct.netif_ext_callback*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*) local_unnamed_addr #5

; Function Attrs: noinline noredzone nounwind optnone
define internal void @_netif_status_print(%struct.netif*, i16 zeroext, %union.netif_ext_callback_args_t*) #6 !dbg !743 {
  %4 = alloca %struct.netif*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %union.netif_ext_callback_args_t*, align 8
  %7 = alloca [17 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [17 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [17 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
  %56 = alloca i32, align 4
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i8*, align 8
  store %struct.netif* %0, %struct.netif** %4, align 8, !tbaa !1325
  store i16 %1, i16* %5, align 2, !tbaa !2200
  store %union.netif_ext_callback_args_t* %2, %union.netif_ext_callback_args_t** %6, align 8, !tbaa !1325
  %62 = bitcast [17 x i8]* %7 to i8*, !dbg !2203
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %62) #8, !dbg !2203
  %63 = bitcast i8** %8 to i8*, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %63) #8, !dbg !2205
  %64 = ptrtoint [17 x i8]* %7 to i64, !dbg !2207
  %65 = add i64 %64, 65536, !dbg !2208
  %66 = inttoptr i64 %65 to i8*, !dbg !2209
  store i8* %66, i8** %8, align 8, !dbg !2206, !tbaa !1325
  %67 = bitcast [17 x i8]* %9 to i8*, !dbg !2210
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %67) #8, !dbg !2210
  %68 = bitcast i8** %10 to i8*, !dbg !2212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %68) #8, !dbg !2212
  %69 = ptrtoint [17 x i8]* %9 to i64, !dbg !2214
  %70 = add i64 %69, 65536, !dbg !2215
  %71 = inttoptr i64 %70 to i8*, !dbg !2216
  store i8* %71, i8** %10, align 8, !dbg !2213, !tbaa !1325
  %72 = bitcast [17 x i8]* %11 to i8*, !dbg !2217
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %72) #8, !dbg !2217
  %73 = bitcast i8** %12 to i8*, !dbg !2219
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #8, !dbg !2219
  %74 = ptrtoint [17 x i8]* %11 to i64, !dbg !2221
  %75 = add i64 %74, 65536, !dbg !2222
  %76 = inttoptr i64 %75 to i8*, !dbg !2223
  store i8* %76, i8** %12, align 8, !dbg !2220, !tbaa !1325
  %77 = load i16, i16* %5, align 2, !dbg !2224, !tbaa !2200
  %78 = zext i16 %77 to i32, !dbg !2224
  %79 = and i32 %78, 1, !dbg !2225
  %80 = icmp ne i32 %79, 0, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2226
  br i1 %80, label %81, label %141, !dbg !2226

; <label>:81:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2227
  br label %82, !dbg !2227

; <label>:82:                                     ; preds = %81
  %83 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2228
  %84 = icmp uge i64 %83, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2228
  br i1 %84, label %85, label %105, !dbg !2228

; <label>:85:                                     ; preds = %82
  %86 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2228
  %87 = icmp ule i64 %86, ptrtoint ([0 x i8]* @_end to i64), !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2229
  br i1 %87, label %88, label %105, !dbg !2229

; <label>:88:                                     ; preds = %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_netif_status_print.__str, i32 0, i32 0), i8** %13, align 8, !dbg !2230, !tbaa !1325
  %89 = load i8*, i8** %13, align 8, !dbg !2230, !tbaa !1325
  %90 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2233, !tbaa !1325
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %90, i32 0, i32 22, !dbg !2233
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %91, i64 0, i64 0, !dbg !2233
  %93 = load i8, i8* %92, align 2, !dbg !2233, !tbaa !1528
  %94 = sext i8 %93 to i32, !dbg !2233
  %95 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2233, !tbaa !1325
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %95, i32 0, i32 22, !dbg !2233
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %96, i64 0, i64 1, !dbg !2233
  %98 = load i8, i8* %97, align 1, !dbg !2233, !tbaa !1528
  %99 = sext i8 %98 to i32, !dbg !2233
  %100 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2233, !tbaa !1325
  %101 = getelementptr inbounds %struct.netif, %struct.netif* %100, i32 0, i32 23, !dbg !2233
  %102 = load i8, i8* %101, align 8, !dbg !2233, !tbaa !1826
  %103 = zext i8 %102 to i32, !dbg !2233
  %104 = call i32 (i8*, ...) @printf(i8* %89, i32 %94, i32 %99, i32 %103) #9, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2233
  br label %138, !dbg !2233

; <label>:105:                                    ; preds = %85, %82
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2234
  br label %106, !dbg !2234

; <label>:106:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2235
  br label %107, !dbg !2235

; <label>:107:                                    ; preds = %106
  %108 = bitcast i32* %14 to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #8, !dbg !2236
  %109 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2236
  store i32 %109, i32* %14, align 4, !dbg !2236, !tbaa !1284
  %110 = bitcast i64* %15 to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %110) #8, !dbg !2236
  %111 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2236, !tbaa !1325
  %112 = getelementptr inbounds %struct.netif, %struct.netif* %111, i32 0, i32 22, !dbg !2236
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %112, i64 0, i64 1, !dbg !2236
  %114 = load i8, i8* %113, align 1, !dbg !2236, !tbaa !1528
  %115 = sext i8 %114 to i64, !dbg !2236
  store i64 %115, i64* %15, align 8, !dbg !2236, !tbaa !2237
  %116 = bitcast i64* %16 to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %116) #8, !dbg !2236
  %117 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2236, !tbaa !1325
  %118 = getelementptr inbounds %struct.netif, %struct.netif* %117, i32 0, i32 23, !dbg !2236
  %119 = load i8, i8* %118, align 8, !dbg !2236, !tbaa !1826
  %120 = zext i8 %119 to i64, !dbg !2236
  store i64 %120, i64* %16, align 8, !dbg !2236, !tbaa !2237
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_netif_status_print.__str.21, i32 0, i32 0), i8** %17, align 8, !dbg !2238, !tbaa !1325
  %121 = load i8*, i8** %17, align 8, !dbg !2238, !tbaa !1325
  %122 = ptrtoint i8* %121 to i64, !dbg !2236
  %123 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2236, !tbaa !1325
  %124 = getelementptr inbounds %struct.netif, %struct.netif* %123, i32 0, i32 22, !dbg !2236
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %124, i64 0, i64 0, !dbg !2236
  %126 = load i8, i8* %125, align 2, !dbg !2236, !tbaa !1528
  %127 = sext i8 %126 to i64, !dbg !2236
  %128 = load i64, i64* %15, align 8, !dbg !2236, !tbaa !2237
  %129 = load i64, i64* %16, align 8, !dbg !2236, !tbaa !2237
  %130 = load i32, i32* %14, align 4, !dbg !2236, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %122, i64 %127, i64 %128, i64 %129, i32 %130, i32 (i8*, ...)* @printf) #8, !dbg !2236, !srcloc !2240
  %131 = bitcast i64* %16 to i8*, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %131) #8, !dbg !2235
  %132 = bitcast i64* %15 to i8*, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %132) #8, !dbg !2235
  %133 = bitcast i32* %14 to i8*, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #8, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2236
  br label %134, !dbg !2236

; <label>:134:                                    ; preds = %107
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2236
  br label %135, !dbg !2236

; <label>:135:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2235
  br label %136, !dbg !2235

; <label>:136:                                    ; preds = %135
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2235
  br label %137, !dbg !2235

; <label>:137:                                    ; preds = %136
  store volatile i32 42, i32* @__A_VARIABLE
  br label %138

; <label>:138:                                    ; preds = %137, %88
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2229
  br label %139, !dbg !2229

; <label>:139:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2229
  br label %140, !dbg !2229

; <label>:140:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2241
  br label %141, !dbg !2241

; <label>:141:                                    ; preds = %140, %3
  %142 = load i16, i16* %5, align 2, !dbg !2242, !tbaa !2200
  %143 = zext i16 %142 to i32, !dbg !2242
  %144 = and i32 %143, 2, !dbg !2243
  %145 = icmp ne i32 %144, 0, !dbg !2243
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2244
  br i1 %145, label %146, label %206, !dbg !2244

; <label>:146:                                    ; preds = %141
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2245
  br label %147, !dbg !2245

; <label>:147:                                    ; preds = %146
  %148 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2246
  %149 = icmp uge i64 %148, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2246
  br i1 %149, label %150, label %170, !dbg !2246

; <label>:150:                                    ; preds = %147
  %151 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2246
  %152 = icmp ule i64 %151, ptrtoint ([0 x i8]* @_end to i64), !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2247
  br i1 %152, label %153, label %170, !dbg !2247

; <label>:153:                                    ; preds = %150
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_netif_status_print.__str.22, i32 0, i32 0), i8** %18, align 8, !dbg !2248, !tbaa !1325
  %154 = load i8*, i8** %18, align 8, !dbg !2248, !tbaa !1325
  %155 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2251, !tbaa !1325
  %156 = getelementptr inbounds %struct.netif, %struct.netif* %155, i32 0, i32 22, !dbg !2251
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %156, i64 0, i64 0, !dbg !2251
  %158 = load i8, i8* %157, align 2, !dbg !2251, !tbaa !1528
  %159 = sext i8 %158 to i32, !dbg !2251
  %160 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2251, !tbaa !1325
  %161 = getelementptr inbounds %struct.netif, %struct.netif* %160, i32 0, i32 22, !dbg !2251
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %161, i64 0, i64 1, !dbg !2251
  %163 = load i8, i8* %162, align 1, !dbg !2251, !tbaa !1528
  %164 = sext i8 %163 to i32, !dbg !2251
  %165 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2251, !tbaa !1325
  %166 = getelementptr inbounds %struct.netif, %struct.netif* %165, i32 0, i32 23, !dbg !2251
  %167 = load i8, i8* %166, align 8, !dbg !2251, !tbaa !1826
  %168 = zext i8 %167 to i32, !dbg !2251
  %169 = call i32 (i8*, ...) @printf(i8* %154, i32 %159, i32 %164, i32 %168) #9, !dbg !2251
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2251
  br label %203, !dbg !2251

; <label>:170:                                    ; preds = %150, %147
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2252
  br label %171, !dbg !2252

; <label>:171:                                    ; preds = %170
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2253
  br label %172, !dbg !2253

; <label>:172:                                    ; preds = %171
  %173 = bitcast i32* %19 to i8*, !dbg !2254
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %173) #8, !dbg !2254
  %174 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2254
  store i32 %174, i32* %19, align 4, !dbg !2254, !tbaa !1284
  %175 = bitcast i64* %20 to i8*, !dbg !2254
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %175) #8, !dbg !2254
  %176 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2254, !tbaa !1325
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %176, i32 0, i32 22, !dbg !2254
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %177, i64 0, i64 1, !dbg !2254
  %179 = load i8, i8* %178, align 1, !dbg !2254, !tbaa !1528
  %180 = sext i8 %179 to i64, !dbg !2254
  store i64 %180, i64* %20, align 8, !dbg !2254, !tbaa !2237
  %181 = bitcast i64* %21 to i8*, !dbg !2254
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #8, !dbg !2254
  %182 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2254, !tbaa !1325
  %183 = getelementptr inbounds %struct.netif, %struct.netif* %182, i32 0, i32 23, !dbg !2254
  %184 = load i8, i8* %183, align 8, !dbg !2254, !tbaa !1826
  %185 = zext i8 %184 to i64, !dbg !2254
  store i64 %185, i64* %21, align 8, !dbg !2254, !tbaa !2237
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_netif_status_print.__str.23, i32 0, i32 0), i8** %22, align 8, !dbg !2255, !tbaa !1325
  %186 = load i8*, i8** %22, align 8, !dbg !2255, !tbaa !1325
  %187 = ptrtoint i8* %186 to i64, !dbg !2254
  %188 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2254, !tbaa !1325
  %189 = getelementptr inbounds %struct.netif, %struct.netif* %188, i32 0, i32 22, !dbg !2254
  %190 = getelementptr inbounds [2 x i8], [2 x i8]* %189, i64 0, i64 0, !dbg !2254
  %191 = load i8, i8* %190, align 2, !dbg !2254, !tbaa !1528
  %192 = sext i8 %191 to i64, !dbg !2254
  %193 = load i64, i64* %20, align 8, !dbg !2254, !tbaa !2237
  %194 = load i64, i64* %21, align 8, !dbg !2254, !tbaa !2237
  %195 = load i32, i32* %19, align 4, !dbg !2254, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %187, i64 %192, i64 %193, i64 %194, i32 %195, i32 (i8*, ...)* @printf) #8, !dbg !2254, !srcloc !2257
  %196 = bitcast i64* %21 to i8*, !dbg !2253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %196) #8, !dbg !2253
  %197 = bitcast i64* %20 to i8*, !dbg !2253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %197) #8, !dbg !2253
  %198 = bitcast i32* %19 to i8*, !dbg !2253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %198) #8, !dbg !2253
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2254
  br label %199, !dbg !2254

; <label>:199:                                    ; preds = %172
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2254
  br label %200, !dbg !2254

; <label>:200:                                    ; preds = %199
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2253
  br label %201, !dbg !2253

; <label>:201:                                    ; preds = %200
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2253
  br label %202, !dbg !2253

; <label>:202:                                    ; preds = %201
  store volatile i32 42, i32* @__A_VARIABLE
  br label %203

; <label>:203:                                    ; preds = %202, %153
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2247
  br label %204, !dbg !2247

; <label>:204:                                    ; preds = %203
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2247
  br label %205, !dbg !2247

; <label>:205:                                    ; preds = %204
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2258
  br label %206, !dbg !2258

; <label>:206:                                    ; preds = %205, %141
  %207 = load i16, i16* %5, align 2, !dbg !2259, !tbaa !2200
  %208 = zext i16 %207 to i32, !dbg !2259
  %209 = and i32 %208, 4, !dbg !2260
  %210 = icmp ne i32 %209, 0, !dbg !2260
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2261
  br i1 %210, label %211, label %289, !dbg !2261

; <label>:211:                                    ; preds = %206
  %212 = bitcast i8** %23 to i8*, !dbg !2262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %212) #8, !dbg !2262
  %213 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2264, !tbaa !1325
  %214 = bitcast %union.netif_ext_callback_args_t* %213 to %struct.link_changed_s*, !dbg !2265
  %215 = getelementptr inbounds %struct.link_changed_s, %struct.link_changed_s* %214, i32 0, i32 0, !dbg !2266
  %216 = load i8, i8* %215, align 8, !dbg !2266, !tbaa !1528
  %217 = zext i8 %216 to i32, !dbg !2264
  %218 = icmp ne i32 %217, 0, !dbg !2264
  %219 = zext i1 %218 to i64, !dbg !2264
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_netif_status_print.__str.24, i32 0, i32 0), i8** %24, align 8, !dbg !2267, !tbaa !1325
  %220 = load i8*, i8** %24, align 8, !dbg !2267, !tbaa !1325
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_netif_status_print.__str.25, i32 0, i32 0), i8** %25, align 8, !dbg !2269, !tbaa !1325
  %221 = load i8*, i8** %25, align 8, !dbg !2269, !tbaa !1325
  %222 = select i1 %218, i8* %220, i8* %221, !dbg !2264
  store i8* %222, i8** %23, align 8, !dbg !2263, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2271
  br label %223, !dbg !2271

; <label>:223:                                    ; preds = %211
  %224 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2272
  %225 = icmp uge i64 %224, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2272
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2272
  br i1 %225, label %226, label %247, !dbg !2272

; <label>:226:                                    ; preds = %223
  %227 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2272
  %228 = icmp ule i64 %227, ptrtoint ([0 x i8]* @_end to i64), !dbg !2272
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2273
  br i1 %228, label %229, label %247, !dbg !2273

; <label>:229:                                    ; preds = %226
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_netif_status_print.__str.26, i32 0, i32 0), i8** %26, align 8, !dbg !2274, !tbaa !1325
  %230 = load i8*, i8** %26, align 8, !dbg !2274, !tbaa !1325
  %231 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2277, !tbaa !1325
  %232 = getelementptr inbounds %struct.netif, %struct.netif* %231, i32 0, i32 22, !dbg !2277
  %233 = getelementptr inbounds [2 x i8], [2 x i8]* %232, i64 0, i64 0, !dbg !2277
  %234 = load i8, i8* %233, align 2, !dbg !2277, !tbaa !1528
  %235 = sext i8 %234 to i32, !dbg !2277
  %236 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2277, !tbaa !1325
  %237 = getelementptr inbounds %struct.netif, %struct.netif* %236, i32 0, i32 22, !dbg !2277
  %238 = getelementptr inbounds [2 x i8], [2 x i8]* %237, i64 0, i64 1, !dbg !2277
  %239 = load i8, i8* %238, align 1, !dbg !2277, !tbaa !1528
  %240 = sext i8 %239 to i32, !dbg !2277
  %241 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2277, !tbaa !1325
  %242 = getelementptr inbounds %struct.netif, %struct.netif* %241, i32 0, i32 23, !dbg !2277
  %243 = load i8, i8* %242, align 8, !dbg !2277, !tbaa !1826
  %244 = zext i8 %243 to i32, !dbg !2277
  %245 = load i8*, i8** %23, align 8, !dbg !2277, !tbaa !1325
  %246 = call i32 (i8*, ...) @printf(i8* %230, i32 %235, i32 %240, i32 %244, i8* %245) #9, !dbg !2277
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2277
  br label %285, !dbg !2277

; <label>:247:                                    ; preds = %226, %223
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2278
  br label %248, !dbg !2278

; <label>:248:                                    ; preds = %247
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2279
  br label %249, !dbg !2279

; <label>:249:                                    ; preds = %248
  %250 = bitcast i32* %27 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %250) #8, !dbg !2280
  %251 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2280
  store i32 %251, i32* %27, align 4, !dbg !2280, !tbaa !1284
  %252 = bitcast i64* %28 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %252) #8, !dbg !2280
  %253 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2280, !tbaa !1325
  %254 = getelementptr inbounds %struct.netif, %struct.netif* %253, i32 0, i32 22, !dbg !2280
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %254, i64 0, i64 1, !dbg !2280
  %256 = load i8, i8* %255, align 1, !dbg !2280, !tbaa !1528
  %257 = sext i8 %256 to i64, !dbg !2280
  store i64 %257, i64* %28, align 8, !dbg !2280, !tbaa !2237
  %258 = bitcast i64* %29 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %258) #8, !dbg !2280
  %259 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2280, !tbaa !1325
  %260 = getelementptr inbounds %struct.netif, %struct.netif* %259, i32 0, i32 23, !dbg !2280
  %261 = load i8, i8* %260, align 8, !dbg !2280, !tbaa !1826
  %262 = zext i8 %261 to i64, !dbg !2280
  store i64 %262, i64* %29, align 8, !dbg !2280, !tbaa !2237
  %263 = bitcast i64* %30 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %263) #8, !dbg !2280
  %264 = load i8*, i8** %23, align 8, !dbg !2280, !tbaa !1325
  %265 = ptrtoint i8* %264 to i64, !dbg !2280
  store i64 %265, i64* %30, align 8, !dbg !2280, !tbaa !2237
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_netif_status_print.__str.27, i32 0, i32 0), i8** %31, align 8, !dbg !2281, !tbaa !1325
  %266 = load i8*, i8** %31, align 8, !dbg !2281, !tbaa !1325
  %267 = ptrtoint i8* %266 to i64, !dbg !2280
  %268 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2280, !tbaa !1325
  %269 = getelementptr inbounds %struct.netif, %struct.netif* %268, i32 0, i32 22, !dbg !2280
  %270 = getelementptr inbounds [2 x i8], [2 x i8]* %269, i64 0, i64 0, !dbg !2280
  %271 = load i8, i8* %270, align 2, !dbg !2280, !tbaa !1528
  %272 = sext i8 %271 to i64, !dbg !2280
  %273 = load i64, i64* %28, align 8, !dbg !2280, !tbaa !2237
  %274 = load i64, i64* %29, align 8, !dbg !2280, !tbaa !2237
  %275 = load i64, i64* %30, align 8, !dbg !2280, !tbaa !2237
  %276 = load i32, i32* %27, align 4, !dbg !2280, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %267, i64 %272, i64 %273, i64 %274, i64 %275, i32 %276, i32 (i8*, ...)* @printf) #8, !dbg !2280, !srcloc !2283
  %277 = bitcast i64* %30 to i8*, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %277) #8, !dbg !2279
  %278 = bitcast i64* %29 to i8*, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %278) #8, !dbg !2279
  %279 = bitcast i64* %28 to i8*, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %279) #8, !dbg !2279
  %280 = bitcast i32* %27 to i8*, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %280) #8, !dbg !2279
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2280
  br label %281, !dbg !2280

; <label>:281:                                    ; preds = %249
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2280
  br label %282, !dbg !2280

; <label>:282:                                    ; preds = %281
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2279
  br label %283, !dbg !2279

; <label>:283:                                    ; preds = %282
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2279
  br label %284, !dbg !2279

; <label>:284:                                    ; preds = %283
  store volatile i32 42, i32* @__A_VARIABLE
  br label %285

; <label>:285:                                    ; preds = %284, %229
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2273
  br label %286, !dbg !2273

; <label>:286:                                    ; preds = %285
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2273
  br label %287, !dbg !2273

; <label>:287:                                    ; preds = %286
  %288 = bitcast i8** %23 to i8*, !dbg !2284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %288) #8, !dbg !2284
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2285
  br label %289, !dbg !2285

; <label>:289:                                    ; preds = %287, %206
  %290 = load i16, i16* %5, align 2, !dbg !2286, !tbaa !2200
  %291 = zext i16 %290 to i32, !dbg !2286
  %292 = and i32 %291, 8, !dbg !2287
  %293 = icmp ne i32 %292, 0, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2288
  br i1 %293, label %294, label %372, !dbg !2288

; <label>:294:                                    ; preds = %289
  %295 = bitcast i8** %32 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %295) #8, !dbg !2289
  %296 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2291, !tbaa !1325
  %297 = bitcast %union.netif_ext_callback_args_t* %296 to %struct.link_changed_s*, !dbg !2292
  %298 = getelementptr inbounds %struct.link_changed_s, %struct.link_changed_s* %297, i32 0, i32 0, !dbg !2293
  %299 = load i8, i8* %298, align 8, !dbg !2293, !tbaa !1528
  %300 = zext i8 %299 to i32, !dbg !2291
  %301 = icmp ne i32 %300, 0, !dbg !2291
  %302 = zext i1 %301 to i64, !dbg !2291
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_netif_status_print.__str.28, i32 0, i32 0), i8** %33, align 8, !dbg !2294, !tbaa !1325
  %303 = load i8*, i8** %33, align 8, !dbg !2294, !tbaa !1325
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_netif_status_print.__str.29, i32 0, i32 0), i8** %34, align 8, !dbg !2296, !tbaa !1325
  %304 = load i8*, i8** %34, align 8, !dbg !2296, !tbaa !1325
  %305 = select i1 %301, i8* %303, i8* %304, !dbg !2291
  store i8* %305, i8** %32, align 8, !dbg !2290, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2298
  br label %306, !dbg !2298

; <label>:306:                                    ; preds = %294
  %307 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2299
  %308 = icmp uge i64 %307, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2299
  br i1 %308, label %309, label %330, !dbg !2299

; <label>:309:                                    ; preds = %306
  %310 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2299
  %311 = icmp ule i64 %310, ptrtoint ([0 x i8]* @_end to i64), !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2300
  br i1 %311, label %312, label %330, !dbg !2300

; <label>:312:                                    ; preds = %309
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_netif_status_print.__str.30, i32 0, i32 0), i8** %35, align 8, !dbg !2301, !tbaa !1325
  %313 = load i8*, i8** %35, align 8, !dbg !2301, !tbaa !1325
  %314 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2304, !tbaa !1325
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %314, i32 0, i32 22, !dbg !2304
  %316 = getelementptr inbounds [2 x i8], [2 x i8]* %315, i64 0, i64 0, !dbg !2304
  %317 = load i8, i8* %316, align 2, !dbg !2304, !tbaa !1528
  %318 = sext i8 %317 to i32, !dbg !2304
  %319 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2304, !tbaa !1325
  %320 = getelementptr inbounds %struct.netif, %struct.netif* %319, i32 0, i32 22, !dbg !2304
  %321 = getelementptr inbounds [2 x i8], [2 x i8]* %320, i64 0, i64 1, !dbg !2304
  %322 = load i8, i8* %321, align 1, !dbg !2304, !tbaa !1528
  %323 = sext i8 %322 to i32, !dbg !2304
  %324 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2304, !tbaa !1325
  %325 = getelementptr inbounds %struct.netif, %struct.netif* %324, i32 0, i32 23, !dbg !2304
  %326 = load i8, i8* %325, align 8, !dbg !2304, !tbaa !1826
  %327 = zext i8 %326 to i32, !dbg !2304
  %328 = load i8*, i8** %32, align 8, !dbg !2304, !tbaa !1325
  %329 = call i32 (i8*, ...) @printf(i8* %313, i32 %318, i32 %323, i32 %327, i8* %328) #9, !dbg !2304
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2304
  br label %368, !dbg !2304

; <label>:330:                                    ; preds = %309, %306
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2305
  br label %331, !dbg !2305

; <label>:331:                                    ; preds = %330
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2306
  br label %332, !dbg !2306

; <label>:332:                                    ; preds = %331
  %333 = bitcast i32* %36 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %333) #8, !dbg !2307
  %334 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2307
  store i32 %334, i32* %36, align 4, !dbg !2307, !tbaa !1284
  %335 = bitcast i64* %37 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %335) #8, !dbg !2307
  %336 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2307, !tbaa !1325
  %337 = getelementptr inbounds %struct.netif, %struct.netif* %336, i32 0, i32 22, !dbg !2307
  %338 = getelementptr inbounds [2 x i8], [2 x i8]* %337, i64 0, i64 1, !dbg !2307
  %339 = load i8, i8* %338, align 1, !dbg !2307, !tbaa !1528
  %340 = sext i8 %339 to i64, !dbg !2307
  store i64 %340, i64* %37, align 8, !dbg !2307, !tbaa !2237
  %341 = bitcast i64* %38 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %341) #8, !dbg !2307
  %342 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2307, !tbaa !1325
  %343 = getelementptr inbounds %struct.netif, %struct.netif* %342, i32 0, i32 23, !dbg !2307
  %344 = load i8, i8* %343, align 8, !dbg !2307, !tbaa !1826
  %345 = zext i8 %344 to i64, !dbg !2307
  store i64 %345, i64* %38, align 8, !dbg !2307, !tbaa !2237
  %346 = bitcast i64* %39 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %346) #8, !dbg !2307
  %347 = load i8*, i8** %32, align 8, !dbg !2307, !tbaa !1325
  %348 = ptrtoint i8* %347 to i64, !dbg !2307
  store i64 %348, i64* %39, align 8, !dbg !2307, !tbaa !2237
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_netif_status_print.__str.31, i32 0, i32 0), i8** %40, align 8, !dbg !2308, !tbaa !1325
  %349 = load i8*, i8** %40, align 8, !dbg !2308, !tbaa !1325
  %350 = ptrtoint i8* %349 to i64, !dbg !2307
  %351 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2307, !tbaa !1325
  %352 = getelementptr inbounds %struct.netif, %struct.netif* %351, i32 0, i32 22, !dbg !2307
  %353 = getelementptr inbounds [2 x i8], [2 x i8]* %352, i64 0, i64 0, !dbg !2307
  %354 = load i8, i8* %353, align 2, !dbg !2307, !tbaa !1528
  %355 = sext i8 %354 to i64, !dbg !2307
  %356 = load i64, i64* %37, align 8, !dbg !2307, !tbaa !2237
  %357 = load i64, i64* %38, align 8, !dbg !2307, !tbaa !2237
  %358 = load i64, i64* %39, align 8, !dbg !2307, !tbaa !2237
  %359 = load i32, i32* %36, align 4, !dbg !2307, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %350, i64 %355, i64 %356, i64 %357, i64 %358, i32 %359, i32 (i8*, ...)* @printf) #8, !dbg !2307, !srcloc !2310
  %360 = bitcast i64* %39 to i8*, !dbg !2306
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %360) #8, !dbg !2306
  %361 = bitcast i64* %38 to i8*, !dbg !2306
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %361) #8, !dbg !2306
  %362 = bitcast i64* %37 to i8*, !dbg !2306
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %362) #8, !dbg !2306
  %363 = bitcast i32* %36 to i8*, !dbg !2306
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %363) #8, !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2307
  br label %364, !dbg !2307

; <label>:364:                                    ; preds = %332
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2307
  br label %365, !dbg !2307

; <label>:365:                                    ; preds = %364
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2306
  br label %366, !dbg !2306

; <label>:366:                                    ; preds = %365
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2306
  br label %367, !dbg !2306

; <label>:367:                                    ; preds = %366
  store volatile i32 42, i32* @__A_VARIABLE
  br label %368

; <label>:368:                                    ; preds = %367, %312
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2300
  br label %369, !dbg !2300

; <label>:369:                                    ; preds = %368
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2300
  br label %370, !dbg !2300

; <label>:370:                                    ; preds = %369
  %371 = bitcast i8** %32 to i8*, !dbg !2311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %371) #8, !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2312
  br label %372, !dbg !2312

; <label>:372:                                    ; preds = %370, %289
  %373 = load i16, i16* %5, align 2, !dbg !2313, !tbaa !2200
  %374 = zext i16 %373 to i32, !dbg !2313
  %375 = and i32 %374, 128, !dbg !2314
  %376 = icmp ne i32 %375, 0, !dbg !2314
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2315
  br i1 %376, label %392, label %377, !dbg !2315

; <label>:377:                                    ; preds = %372
  %378 = load i16, i16* %5, align 2, !dbg !2316, !tbaa !2200
  %379 = zext i16 %378 to i32, !dbg !2316
  %380 = and i32 %379, 16, !dbg !2317
  %381 = icmp ne i32 %380, 0, !dbg !2317
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2318
  br i1 %381, label %392, label %382, !dbg !2318

; <label>:382:                                    ; preds = %377
  %383 = load i16, i16* %5, align 2, !dbg !2319, !tbaa !2200
  %384 = zext i16 %383 to i32, !dbg !2319
  %385 = and i32 %384, 64, !dbg !2320
  %386 = icmp ne i32 %385, 0, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2321
  br i1 %386, label %392, label %387, !dbg !2321

; <label>:387:                                    ; preds = %382
  %388 = load i16, i16* %5, align 2, !dbg !2322, !tbaa !2200
  %389 = zext i16 %388 to i32, !dbg !2322
  %390 = and i32 %389, 32, !dbg !2323
  %391 = icmp ne i32 %390, 0, !dbg !2323
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2324
  br i1 %391, label %392, label %476, !dbg !2324

; <label>:392:                                    ; preds = %387, %382, %377, %372
  %393 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2325, !tbaa !1325
  %394 = getelementptr inbounds %struct.netif, %struct.netif* %393, i32 0, i32 1, !dbg !2326
  %395 = load i8*, i8** %8, align 8, !dbg !2327, !tbaa !1325
  %396 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %394, i8* %395, i32 8) #9, !dbg !2328
  %397 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2329, !tbaa !1325
  %398 = getelementptr inbounds %struct.netif, %struct.netif* %397, i32 0, i32 2, !dbg !2330
  %399 = load i8*, i8** %10, align 8, !dbg !2331, !tbaa !1325
  %400 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %398, i8* %399, i32 8) #9, !dbg !2332
  %401 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2333, !tbaa !1325
  %402 = getelementptr inbounds %struct.netif, %struct.netif* %401, i32 0, i32 3, !dbg !2334
  %403 = load i8*, i8** %12, align 8, !dbg !2335, !tbaa !1325
  %404 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %402, i8* %403, i32 8) #9, !dbg !2336
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2337
  br label %405, !dbg !2337

; <label>:405:                                    ; preds = %392
  %406 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2338
  %407 = icmp uge i64 %406, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2338
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2338
  br i1 %407, label %408, label %430, !dbg !2338

; <label>:408:                                    ; preds = %405
  %409 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2338
  %410 = icmp ule i64 %409, ptrtoint ([0 x i8]* @_end to i64), !dbg !2338
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2339
  br i1 %410, label %411, label %430, !dbg !2339

; <label>:411:                                    ; preds = %408
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_netif_status_print.__str.32, i32 0, i32 0), i8** %41, align 8, !dbg !2340, !tbaa !1325
  %412 = load i8*, i8** %41, align 8, !dbg !2340, !tbaa !1325
  %413 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2343, !tbaa !1325
  %414 = getelementptr inbounds %struct.netif, %struct.netif* %413, i32 0, i32 22, !dbg !2343
  %415 = getelementptr inbounds [2 x i8], [2 x i8]* %414, i64 0, i64 0, !dbg !2343
  %416 = load i8, i8* %415, align 2, !dbg !2343, !tbaa !1528
  %417 = sext i8 %416 to i32, !dbg !2343
  %418 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2343, !tbaa !1325
  %419 = getelementptr inbounds %struct.netif, %struct.netif* %418, i32 0, i32 22, !dbg !2343
  %420 = getelementptr inbounds [2 x i8], [2 x i8]* %419, i64 0, i64 1, !dbg !2343
  %421 = load i8, i8* %420, align 1, !dbg !2343, !tbaa !1528
  %422 = sext i8 %421 to i32, !dbg !2343
  %423 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2343, !tbaa !1325
  %424 = getelementptr inbounds %struct.netif, %struct.netif* %423, i32 0, i32 23, !dbg !2343
  %425 = load i8, i8* %424, align 8, !dbg !2343, !tbaa !1826
  %426 = zext i8 %425 to i32, !dbg !2343
  %427 = load i8*, i8** %8, align 8, !dbg !2343, !tbaa !1325
  %428 = load i8*, i8** %10, align 8, !dbg !2343, !tbaa !1325
  %429 = call i32 (i8*, ...) @printf(i8* %412, i32 %417, i32 %422, i32 %426, i8* %427, i8* %428) #9, !dbg !2343
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2343
  br label %473, !dbg !2343

; <label>:430:                                    ; preds = %408, %405
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2344
  br label %431, !dbg !2344

; <label>:431:                                    ; preds = %430
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2345
  br label %432, !dbg !2345

; <label>:432:                                    ; preds = %431
  %433 = bitcast i32* %42 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %433) #8, !dbg !2346
  %434 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2346
  store i32 %434, i32* %42, align 4, !dbg !2346, !tbaa !1284
  %435 = bitcast i64* %43 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %435) #8, !dbg !2346
  %436 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2346, !tbaa !1325
  %437 = getelementptr inbounds %struct.netif, %struct.netif* %436, i32 0, i32 22, !dbg !2346
  %438 = getelementptr inbounds [2 x i8], [2 x i8]* %437, i64 0, i64 1, !dbg !2346
  %439 = load i8, i8* %438, align 1, !dbg !2346, !tbaa !1528
  %440 = sext i8 %439 to i64, !dbg !2346
  store i64 %440, i64* %43, align 8, !dbg !2346, !tbaa !2237
  %441 = bitcast i64* %44 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %441) #8, !dbg !2346
  %442 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2346, !tbaa !1325
  %443 = getelementptr inbounds %struct.netif, %struct.netif* %442, i32 0, i32 23, !dbg !2346
  %444 = load i8, i8* %443, align 8, !dbg !2346, !tbaa !1826
  %445 = zext i8 %444 to i64, !dbg !2346
  store i64 %445, i64* %44, align 8, !dbg !2346, !tbaa !2237
  %446 = bitcast i64* %45 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %446) #8, !dbg !2346
  %447 = load i8*, i8** %8, align 8, !dbg !2346, !tbaa !1325
  %448 = ptrtoint i8* %447 to i64, !dbg !2346
  store i64 %448, i64* %45, align 8, !dbg !2346, !tbaa !2237
  %449 = bitcast i64* %46 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %449) #8, !dbg !2346
  %450 = load i8*, i8** %10, align 8, !dbg !2346, !tbaa !1325
  %451 = ptrtoint i8* %450 to i64, !dbg !2346
  store i64 %451, i64* %46, align 8, !dbg !2346, !tbaa !2237
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_netif_status_print.__str.33, i32 0, i32 0), i8** %47, align 8, !dbg !2347, !tbaa !1325
  %452 = load i8*, i8** %47, align 8, !dbg !2347, !tbaa !1325
  %453 = ptrtoint i8* %452 to i64, !dbg !2346
  %454 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2346, !tbaa !1325
  %455 = getelementptr inbounds %struct.netif, %struct.netif* %454, i32 0, i32 22, !dbg !2346
  %456 = getelementptr inbounds [2 x i8], [2 x i8]* %455, i64 0, i64 0, !dbg !2346
  %457 = load i8, i8* %456, align 2, !dbg !2346, !tbaa !1528
  %458 = sext i8 %457 to i64, !dbg !2346
  %459 = load i64, i64* %43, align 8, !dbg !2346, !tbaa !2237
  %460 = load i64, i64* %44, align 8, !dbg !2346, !tbaa !2237
  %461 = load i64, i64* %45, align 8, !dbg !2346, !tbaa !2237
  %462 = load i64, i64* %46, align 8, !dbg !2346, !tbaa !2237
  %463 = load i32, i32* %42, align 4, !dbg !2346, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %453, i64 %458, i64 %459, i64 %460, i64 %461, i64 %462, i32 %463, i32 (i8*, ...)* @printf) #8, !dbg !2346, !srcloc !2349
  %464 = bitcast i64* %46 to i8*, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %464) #8, !dbg !2345
  %465 = bitcast i64* %45 to i8*, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %465) #8, !dbg !2345
  %466 = bitcast i64* %44 to i8*, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %466) #8, !dbg !2345
  %467 = bitcast i64* %43 to i8*, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %467) #8, !dbg !2345
  %468 = bitcast i32* %42 to i8*, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %468) #8, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2346
  br label %469, !dbg !2346

; <label>:469:                                    ; preds = %432
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2346
  br label %470, !dbg !2346

; <label>:470:                                    ; preds = %469
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2345
  br label %471, !dbg !2345

; <label>:471:                                    ; preds = %470
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2345
  br label %472, !dbg !2345

; <label>:472:                                    ; preds = %471
  store volatile i32 42, i32* @__A_VARIABLE
  br label %473

; <label>:473:                                    ; preds = %472, %411
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2339
  br label %474, !dbg !2339

; <label>:474:                                    ; preds = %473
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2339
  br label %475, !dbg !2339

; <label>:475:                                    ; preds = %474
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2350
  br label %476, !dbg !2350

; <label>:476:                                    ; preds = %475, %387
  %477 = load i16, i16* %5, align 2, !dbg !2351, !tbaa !2200
  %478 = zext i16 %477 to i32, !dbg !2351
  %479 = and i32 %478, 256, !dbg !2352
  %480 = icmp ne i32 %479, 0, !dbg !2352
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2353
  br i1 %480, label %481, label %576, !dbg !2353

; <label>:481:                                    ; preds = %476
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2354
  br label %482, !dbg !2354

; <label>:482:                                    ; preds = %481
  %483 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2355
  %484 = icmp uge i64 %483, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2355
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2355
  br i1 %484, label %485, label %519, !dbg !2355

; <label>:485:                                    ; preds = %482
  %486 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2355
  %487 = icmp ule i64 %486, ptrtoint ([0 x i8]* @_end to i64), !dbg !2355
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2356
  br i1 %487, label %488, label %519, !dbg !2356

; <label>:488:                                    ; preds = %485
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.34, i32 0, i32 0), i8** %48, align 8, !dbg !2357, !tbaa !1325
  %489 = load i8*, i8** %48, align 8, !dbg !2357, !tbaa !1325
  %490 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2360, !tbaa !1325
  %491 = getelementptr inbounds %struct.netif, %struct.netif* %490, i32 0, i32 22, !dbg !2360
  %492 = getelementptr inbounds [2 x i8], [2 x i8]* %491, i64 0, i64 0, !dbg !2360
  %493 = load i8, i8* %492, align 2, !dbg !2360, !tbaa !1528
  %494 = sext i8 %493 to i32, !dbg !2360
  %495 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2360, !tbaa !1325
  %496 = getelementptr inbounds %struct.netif, %struct.netif* %495, i32 0, i32 22, !dbg !2360
  %497 = getelementptr inbounds [2 x i8], [2 x i8]* %496, i64 0, i64 1, !dbg !2360
  %498 = load i8, i8* %497, align 1, !dbg !2360, !tbaa !1528
  %499 = sext i8 %498 to i32, !dbg !2360
  %500 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2360, !tbaa !1325
  %501 = getelementptr inbounds %struct.netif, %struct.netif* %500, i32 0, i32 23, !dbg !2360
  %502 = load i8, i8* %501, align 8, !dbg !2360, !tbaa !1826
  %503 = zext i8 %502 to i32, !dbg !2360
  %504 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2360, !tbaa !1325
  %505 = bitcast %union.netif_ext_callback_args_t* %504 to %struct.ipv6_set_s*, !dbg !2360
  %506 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %505, i32 0, i32 0, !dbg !2360
  %507 = load i8, i8* %506, align 8, !dbg !2360, !tbaa !1528
  %508 = sext i8 %507 to i32, !dbg !2360
  %509 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2360, !tbaa !1325
  %510 = getelementptr inbounds %struct.netif, %struct.netif* %509, i32 0, i32 4, !dbg !2360
  %511 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2360, !tbaa !1325
  %512 = bitcast %union.netif_ext_callback_args_t* %511 to %struct.ipv6_set_s*, !dbg !2360
  %513 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %512, i32 0, i32 0, !dbg !2360
  %514 = load i8, i8* %513, align 8, !dbg !2360, !tbaa !1528
  %515 = sext i8 %514 to i64, !dbg !2360
  %516 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %510, i64 0, i64 %515, !dbg !2360
  %517 = call i8* @ipaddr_ntoa(%struct.ip_addr* %516) #9, !dbg !2360
  %518 = call i32 (i8*, ...) @printf(i8* %489, i32 %494, i32 %499, i32 %503, i32 %508, i8* %517) #9, !dbg !2360
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2360
  br label %573, !dbg !2360

; <label>:519:                                    ; preds = %485, %482
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2361
  br label %520, !dbg !2361

; <label>:520:                                    ; preds = %519
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2362
  br label %521, !dbg !2362

; <label>:521:                                    ; preds = %520
  %522 = bitcast i32* %49 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %522) #8, !dbg !2363
  %523 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2363
  store i32 %523, i32* %49, align 4, !dbg !2363, !tbaa !1284
  %524 = bitcast i64* %50 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %524) #8, !dbg !2363
  %525 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2363, !tbaa !1325
  %526 = getelementptr inbounds %struct.netif, %struct.netif* %525, i32 0, i32 22, !dbg !2363
  %527 = getelementptr inbounds [2 x i8], [2 x i8]* %526, i64 0, i64 1, !dbg !2363
  %528 = load i8, i8* %527, align 1, !dbg !2363, !tbaa !1528
  %529 = sext i8 %528 to i64, !dbg !2363
  store i64 %529, i64* %50, align 8, !dbg !2363, !tbaa !2237
  %530 = bitcast i64* %51 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %530) #8, !dbg !2363
  %531 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2363, !tbaa !1325
  %532 = getelementptr inbounds %struct.netif, %struct.netif* %531, i32 0, i32 23, !dbg !2363
  %533 = load i8, i8* %532, align 8, !dbg !2363, !tbaa !1826
  %534 = zext i8 %533 to i64, !dbg !2363
  store i64 %534, i64* %51, align 8, !dbg !2363, !tbaa !2237
  %535 = bitcast i64* %52 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %535) #8, !dbg !2363
  %536 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2363, !tbaa !1325
  %537 = bitcast %union.netif_ext_callback_args_t* %536 to %struct.ipv6_set_s*, !dbg !2363
  %538 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %537, i32 0, i32 0, !dbg !2363
  %539 = load i8, i8* %538, align 8, !dbg !2363, !tbaa !1528
  %540 = sext i8 %539 to i64, !dbg !2363
  store i64 %540, i64* %52, align 8, !dbg !2363, !tbaa !2237
  %541 = bitcast i64* %53 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %541) #8, !dbg !2363
  %542 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2363, !tbaa !1325
  %543 = getelementptr inbounds %struct.netif, %struct.netif* %542, i32 0, i32 4, !dbg !2363
  %544 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2363, !tbaa !1325
  %545 = bitcast %union.netif_ext_callback_args_t* %544 to %struct.ipv6_set_s*, !dbg !2363
  %546 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %545, i32 0, i32 0, !dbg !2363
  %547 = load i8, i8* %546, align 8, !dbg !2363, !tbaa !1528
  %548 = sext i8 %547 to i64, !dbg !2363
  %549 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %543, i64 0, i64 %548, !dbg !2363
  %550 = call i8* @ipaddr_ntoa(%struct.ip_addr* %549) #9, !dbg !2363
  %551 = ptrtoint i8* %550 to i64, !dbg !2363
  store i64 %551, i64* %53, align 8, !dbg !2363, !tbaa !2237
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.35, i32 0, i32 0), i8** %54, align 8, !dbg !2364, !tbaa !1325
  %552 = load i8*, i8** %54, align 8, !dbg !2364, !tbaa !1325
  %553 = ptrtoint i8* %552 to i64, !dbg !2363
  %554 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2363, !tbaa !1325
  %555 = getelementptr inbounds %struct.netif, %struct.netif* %554, i32 0, i32 22, !dbg !2363
  %556 = getelementptr inbounds [2 x i8], [2 x i8]* %555, i64 0, i64 0, !dbg !2363
  %557 = load i8, i8* %556, align 2, !dbg !2363, !tbaa !1528
  %558 = sext i8 %557 to i64, !dbg !2363
  %559 = load i64, i64* %50, align 8, !dbg !2363, !tbaa !2237
  %560 = load i64, i64* %51, align 8, !dbg !2363, !tbaa !2237
  %561 = load i64, i64* %52, align 8, !dbg !2363, !tbaa !2237
  %562 = load i64, i64* %53, align 8, !dbg !2363, !tbaa !2237
  %563 = load i32, i32* %49, align 4, !dbg !2363, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %553, i64 %558, i64 %559, i64 %560, i64 %561, i64 %562, i32 %563, i32 (i8*, ...)* @printf) #8, !dbg !2363, !srcloc !2366
  %564 = bitcast i64* %53 to i8*, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %564) #8, !dbg !2362
  %565 = bitcast i64* %52 to i8*, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %565) #8, !dbg !2362
  %566 = bitcast i64* %51 to i8*, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %566) #8, !dbg !2362
  %567 = bitcast i64* %50 to i8*, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %567) #8, !dbg !2362
  %568 = bitcast i32* %49 to i8*, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %568) #8, !dbg !2362
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2363
  br label %569, !dbg !2363

; <label>:569:                                    ; preds = %521
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2363
  br label %570, !dbg !2363

; <label>:570:                                    ; preds = %569
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2362
  br label %571, !dbg !2362

; <label>:571:                                    ; preds = %570
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2362
  br label %572, !dbg !2362

; <label>:572:                                    ; preds = %571
  store volatile i32 42, i32* @__A_VARIABLE
  br label %573

; <label>:573:                                    ; preds = %572, %488
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2356
  br label %574, !dbg !2356

; <label>:574:                                    ; preds = %573
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2356
  br label %575, !dbg !2356

; <label>:575:                                    ; preds = %574
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2367
  br label %576, !dbg !2367

; <label>:576:                                    ; preds = %575, %476
  %577 = load i16, i16* %5, align 2, !dbg !2368, !tbaa !2200
  %578 = zext i16 %577 to i32, !dbg !2368
  %579 = and i32 %578, 512, !dbg !2369
  %580 = icmp ne i32 %579, 0, !dbg !2369
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2370
  br i1 %580, label %581, label %676, !dbg !2370

; <label>:581:                                    ; preds = %576
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2371
  br label %582, !dbg !2371

; <label>:582:                                    ; preds = %581
  %583 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2372
  %584 = icmp uge i64 %583, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2372
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2372
  br i1 %584, label %585, label %619, !dbg !2372

; <label>:585:                                    ; preds = %582
  %586 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2372
  %587 = icmp ule i64 %586, ptrtoint ([0 x i8]* @_end to i64), !dbg !2372
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2373
  br i1 %587, label %588, label %619, !dbg !2373

; <label>:588:                                    ; preds = %585
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.36, i32 0, i32 0), i8** %55, align 8, !dbg !2374, !tbaa !1325
  %589 = load i8*, i8** %55, align 8, !dbg !2374, !tbaa !1325
  %590 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2377, !tbaa !1325
  %591 = getelementptr inbounds %struct.netif, %struct.netif* %590, i32 0, i32 22, !dbg !2377
  %592 = getelementptr inbounds [2 x i8], [2 x i8]* %591, i64 0, i64 0, !dbg !2377
  %593 = load i8, i8* %592, align 2, !dbg !2377, !tbaa !1528
  %594 = sext i8 %593 to i32, !dbg !2377
  %595 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2377, !tbaa !1325
  %596 = getelementptr inbounds %struct.netif, %struct.netif* %595, i32 0, i32 22, !dbg !2377
  %597 = getelementptr inbounds [2 x i8], [2 x i8]* %596, i64 0, i64 1, !dbg !2377
  %598 = load i8, i8* %597, align 1, !dbg !2377, !tbaa !1528
  %599 = sext i8 %598 to i32, !dbg !2377
  %600 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2377, !tbaa !1325
  %601 = getelementptr inbounds %struct.netif, %struct.netif* %600, i32 0, i32 23, !dbg !2377
  %602 = load i8, i8* %601, align 8, !dbg !2377, !tbaa !1826
  %603 = zext i8 %602 to i32, !dbg !2377
  %604 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2377, !tbaa !1325
  %605 = bitcast %union.netif_ext_callback_args_t* %604 to %struct.ipv6_set_s*, !dbg !2377
  %606 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %605, i32 0, i32 0, !dbg !2377
  %607 = load i8, i8* %606, align 8, !dbg !2377, !tbaa !1528
  %608 = sext i8 %607 to i32, !dbg !2377
  %609 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2377, !tbaa !1325
  %610 = getelementptr inbounds %struct.netif, %struct.netif* %609, i32 0, i32 4, !dbg !2377
  %611 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2377, !tbaa !1325
  %612 = bitcast %union.netif_ext_callback_args_t* %611 to %struct.ipv6_addr_state_changed_s*, !dbg !2377
  %613 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %612, i32 0, i32 0, !dbg !2377
  %614 = load i8, i8* %613, align 8, !dbg !2377, !tbaa !1528
  %615 = sext i8 %614 to i64, !dbg !2377
  %616 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %610, i64 0, i64 %615, !dbg !2377
  %617 = call i8* @ipaddr_ntoa(%struct.ip_addr* %616) #9, !dbg !2377
  %618 = call i32 (i8*, ...) @printf(i8* %589, i32 %594, i32 %599, i32 %603, i32 %608, i8* %617) #9, !dbg !2377
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2377
  br label %673, !dbg !2377

; <label>:619:                                    ; preds = %585, %582
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2378
  br label %620, !dbg !2378

; <label>:620:                                    ; preds = %619
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2379
  br label %621, !dbg !2379

; <label>:621:                                    ; preds = %620
  %622 = bitcast i32* %56 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %622) #8, !dbg !2380
  %623 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2380
  store i32 %623, i32* %56, align 4, !dbg !2380, !tbaa !1284
  %624 = bitcast i64* %57 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %624) #8, !dbg !2380
  %625 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2380, !tbaa !1325
  %626 = getelementptr inbounds %struct.netif, %struct.netif* %625, i32 0, i32 22, !dbg !2380
  %627 = getelementptr inbounds [2 x i8], [2 x i8]* %626, i64 0, i64 1, !dbg !2380
  %628 = load i8, i8* %627, align 1, !dbg !2380, !tbaa !1528
  %629 = sext i8 %628 to i64, !dbg !2380
  store i64 %629, i64* %57, align 8, !dbg !2380, !tbaa !2237
  %630 = bitcast i64* %58 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %630) #8, !dbg !2380
  %631 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2380, !tbaa !1325
  %632 = getelementptr inbounds %struct.netif, %struct.netif* %631, i32 0, i32 23, !dbg !2380
  %633 = load i8, i8* %632, align 8, !dbg !2380, !tbaa !1826
  %634 = zext i8 %633 to i64, !dbg !2380
  store i64 %634, i64* %58, align 8, !dbg !2380, !tbaa !2237
  %635 = bitcast i64* %59 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %635) #8, !dbg !2380
  %636 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2380, !tbaa !1325
  %637 = bitcast %union.netif_ext_callback_args_t* %636 to %struct.ipv6_set_s*, !dbg !2380
  %638 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %637, i32 0, i32 0, !dbg !2380
  %639 = load i8, i8* %638, align 8, !dbg !2380, !tbaa !1528
  %640 = sext i8 %639 to i64, !dbg !2380
  store i64 %640, i64* %59, align 8, !dbg !2380, !tbaa !2237
  %641 = bitcast i64* %60 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %641) #8, !dbg !2380
  %642 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2380, !tbaa !1325
  %643 = getelementptr inbounds %struct.netif, %struct.netif* %642, i32 0, i32 4, !dbg !2380
  %644 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2380, !tbaa !1325
  %645 = bitcast %union.netif_ext_callback_args_t* %644 to %struct.ipv6_addr_state_changed_s*, !dbg !2380
  %646 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %645, i32 0, i32 0, !dbg !2380
  %647 = load i8, i8* %646, align 8, !dbg !2380, !tbaa !1528
  %648 = sext i8 %647 to i64, !dbg !2380
  %649 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %643, i64 0, i64 %648, !dbg !2380
  %650 = call i8* @ipaddr_ntoa(%struct.ip_addr* %649) #9, !dbg !2380
  %651 = ptrtoint i8* %650 to i64, !dbg !2380
  store i64 %651, i64* %60, align 8, !dbg !2380, !tbaa !2237
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.37, i32 0, i32 0), i8** %61, align 8, !dbg !2381, !tbaa !1325
  %652 = load i8*, i8** %61, align 8, !dbg !2381, !tbaa !1325
  %653 = ptrtoint i8* %652 to i64, !dbg !2380
  %654 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2380, !tbaa !1325
  %655 = getelementptr inbounds %struct.netif, %struct.netif* %654, i32 0, i32 22, !dbg !2380
  %656 = getelementptr inbounds [2 x i8], [2 x i8]* %655, i64 0, i64 0, !dbg !2380
  %657 = load i8, i8* %656, align 2, !dbg !2380, !tbaa !1528
  %658 = sext i8 %657 to i64, !dbg !2380
  %659 = load i64, i64* %57, align 8, !dbg !2380, !tbaa !2237
  %660 = load i64, i64* %58, align 8, !dbg !2380, !tbaa !2237
  %661 = load i64, i64* %59, align 8, !dbg !2380, !tbaa !2237
  %662 = load i64, i64* %60, align 8, !dbg !2380, !tbaa !2237
  %663 = load i32, i32* %56, align 4, !dbg !2380, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %653, i64 %658, i64 %659, i64 %660, i64 %661, i64 %662, i32 %663, i32 (i8*, ...)* @printf) #8, !dbg !2380, !srcloc !2383
  %664 = bitcast i64* %60 to i8*, !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %664) #8, !dbg !2379
  %665 = bitcast i64* %59 to i8*, !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %665) #8, !dbg !2379
  %666 = bitcast i64* %58 to i8*, !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %666) #8, !dbg !2379
  %667 = bitcast i64* %57 to i8*, !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %667) #8, !dbg !2379
  %668 = bitcast i32* %56 to i8*, !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %668) #8, !dbg !2379
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2380
  br label %669, !dbg !2380

; <label>:669:                                    ; preds = %621
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2380
  br label %670, !dbg !2380

; <label>:670:                                    ; preds = %669
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2379
  br label %671, !dbg !2379

; <label>:671:                                    ; preds = %670
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2379
  br label %672, !dbg !2379

; <label>:672:                                    ; preds = %671
  store volatile i32 42, i32* @__A_VARIABLE
  br label %673

; <label>:673:                                    ; preds = %672, %588
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2373
  br label %674, !dbg !2373

; <label>:674:                                    ; preds = %673
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2373
  br label %675, !dbg !2373

; <label>:675:                                    ; preds = %674
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2384
  br label %676, !dbg !2384

; <label>:676:                                    ; preds = %675, %576
  %677 = bitcast i8** %12 to i8*, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %677) #8, !dbg !2385
  %678 = bitcast [17 x i8]* %11 to i8*, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %678) #8, !dbg !2385
  %679 = bitcast i8** %10 to i8*, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %679) #8, !dbg !2385
  %680 = bitcast [17 x i8]* %9 to i8*, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %680) #8, !dbg !2385
  %681 = bitcast i8** %8 to i8*, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %681) #8, !dbg !2385
  %682 = bitcast [17 x i8]* %7 to i8*, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %682) #8, !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2385
  ret void, !dbg !2385
}

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_count() #5

; Function Attrs: noredzone
declare dso_local %struct.uk_netdev* @uk_netdev_get(i32) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_state_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone nounwind
define internal void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev*, i32, i8** nocapture) #1 !dbg !2386 {
  %4 = tail call i8* @uk_netdev_einfo_get(%struct.uk_netdev* %0, i32 %1) #10, !dbg !2398
  %5 = icmp eq i8* %4, null, !dbg !2400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  br i1 %5, label %6, label %7, !dbg !2402

; <label>:6:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !2403, !tbaa !1325
  br label %31, !dbg !2405

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8, !dbg !2406, !tbaa !1325
  %9 = icmp eq i8* %8, null, !dbg !2406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2408
  br i1 %9, label %17, label %10, !dbg !2408

; <label>:10:                                     ; preds = %7
  %11 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2409, !tbaa !1325
  %12 = icmp eq %struct.uk_alloc* %11, null, !dbg !2416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2417
  br i1 %12, label %13, label %14, !dbg !2417, !prof !1337

; <label>:13:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !2418
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2418
  unreachable

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %11, i64 0, i32 5, !dbg !2419
  %16 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %15, align 8, !dbg !2419, !tbaa !1325
  tail call void %16(%struct.uk_alloc* nonnull %11, i8* nonnull %8) #10, !dbg !2420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2423
  br label %17, !dbg !2423

; <label>:17:                                     ; preds = %7, %14
  %18 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2424, !tbaa !1325
  %19 = tail call i64 @strlen(i8* nonnull %4) #10, !dbg !2425
  %20 = icmp eq %struct.uk_alloc* %18, null, !dbg !2428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2429
  br i1 %20, label %21, label %23, !dbg !2429, !prof !1337

; <label>:21:                                     ; preds = %17
  %22 = tail call i32* @__errno() #10, !dbg !2430
  store i32 12, i32* %22, align 4, !dbg !2431, !tbaa !1284
  br label %28, !dbg !2432

; <label>:23:                                     ; preds = %17
  %24 = add i64 %19, 1, !dbg !2433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  %25 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %18, i64 0, i32 0, !dbg !2439
  %26 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %25, align 8, !dbg !2439, !tbaa !1325
  %27 = tail call i8* %26(%struct.uk_alloc* nonnull %18, i64 %24) #10, !dbg !2440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  br label %28, !dbg !2442

; <label>:28:                                     ; preds = %21, %23
  %29 = phi i8* [ null, %21 ], [ %27, %23 ], !dbg !2443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2445
  store i8* %29, i8** %2, align 8, !dbg !2446, !tbaa !1325
  %30 = tail call i8* @strcpy(i8* %29, i8* nonnull %4) #10, !dbg !2447
  br label %31, !dbg !2448

; <label>:31:                                     ; preds = %28, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  ret void, !dbg !2448
}

; Function Attrs: noredzone
declare dso_local i32 @ip4addr_aton(i8*, %struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) #4 !dbg !883 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2451
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2453
  call void @llvm.va_start(i8* nonnull %3), !dbg !2453
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_err.__str.38, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !2454
  call void @llvm.va_end(i8* nonnull %3), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2458
  ret void, !dbg !2458
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @uknetdev_addif(%struct.uk_netdev*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @netif_set_default(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @netif_set_up(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !719 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2459
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2461
  call void @llvm.va_start(i8* nonnull %3), !dbg !2461
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.17, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #10, !dbg !2462
  call void @llvm.va_end(i8* nonnull %3), !dbg !2465
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  ret void, !dbg !2466
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_up(%struct.uk_semaphore*) #4 !dbg !1890 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2470
  br i1 %2, label %3, label %4, !dbg !2470, !prof !1337

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2471
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2471
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2473
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0, !dbg !2475
  %7 = load i64, i64* %6, align 8, !dbg !2476, !tbaa !1907
  %8 = add nsw i64 %7, 1, !dbg !2476
  store i64 %8, i64* %6, align 8, !dbg !2476, !tbaa !1907
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2480
  %10 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0, !dbg !2482
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !2482, !tbaa !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !2484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  br i1 %12, label %20, label %13, !dbg !2484

; <label>:13:                                     ; preds = %4, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !2484
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !2484, !tbaa !1932
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !2486
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !2486, !tbaa !1937
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #10, !dbg !2487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !2484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  br i1 %19, label %20, label %13, !dbg !2484, !llvm.loop !1939

; <label>:20:                                     ; preds = %13, %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #10, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2489
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #10, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  ret void, !dbg !2491
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @uk_thread_wake(%struct.uk_thread*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local i8* @ipaddr_ntoa_r(%struct.ip_addr*, i8*, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @ipaddr_ntoa(%struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @uk_netdev_einfo_get(%struct.uk_netdev*, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noredzone nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind }
attributes #11 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!1246, !1247, !1248}
!llvm.ident = !{!1249}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 228, type: !496, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_liblwip_init", scope: !3, file: !3, line: 209, type: !4, isLocal: false, isDefinition: true, scopeLine: 209, isOptimized: true, unit: !7, retainedNodes: !889)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/init.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !47, globals: !493)
!8 = !{!9, !17, !23, !35, !40}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_netdev_state", file: !10, line: 181, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netdev_core.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16}
!13 = !DIEnumerator(name: "UK_NETDEV_INVALID", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "UK_NETDEV_UNCONFIGURED", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "UK_NETDEV_CONFIGURED", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "UK_NETDEV_RUNNING", value: 3, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !18, line: 92, baseType: !11, size: 32, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_netdev_einfo_type", file: !10, line: 205, baseType: !11, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!25 = !DIEnumerator(name: "UK_NETDEV_IPV4_ADDR_NINT16", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "UK_NETDEV_IPV4_ADDR_STR", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "UK_NETDEV_IPV4_MASK_NINT16", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "UK_NETDEV_IPV4_MASK_STR", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "UK_NETDEV_IPV4_GW_NINT16", value: 4, isUnsigned: true)
!30 = !DIEnumerator(name: "UK_NETDEV_IPV4_GW_STR", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS0_NINT16", value: 6, isUnsigned: true)
!32 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS0_STR", value: 7, isUnsigned: true)
!33 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS1_NINT16", value: 8, isUnsigned: true)
!34 = !DIEnumerator(name: "UK_NETDEV_IPV4_DNS1_STR", value: 9, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !36, line: 156, baseType: !11, size: 32, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !41, line: 68, baseType: !11, size: 32, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!47 = !{!48, !49, !53, !54, !55, !280, !491}
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 60, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 105, baseType: !48)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !58, line: 59, size: 1024, elements: !59)
!58 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !{!60, !64, !65, !66, !67, !72, !75, !81, !83, !99, !246, !247, !248, !461}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 60, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !57, file: !58, line: 61, baseType: !53, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !57, file: !58, line: 62, baseType: !53, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !57, file: !58, line: 63, baseType: !53, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !57, file: !58, line: 64, baseType: !68, size: 128, offset: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !57, file: !58, line: 64, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !68, file: !58, line: 64, baseType: !56, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !68, file: !58, line: 64, baseType: !55, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !58, line: 65, baseType: !73, size: 32, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 48, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 79, baseType: !11)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !57, file: !58, line: 66, baseType: !76, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !77, line: 49, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !79, line: 128, baseType: !80)
!79 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !57, file: !58, line: 67, baseType: !82, size: 8, offset: 512)
!82 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !57, file: !58, line: 68, baseType: !84, size: 128, offset: 576)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !85, line: 42, size: 128, elements: !86)
!85 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !{!87, !97}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !84, file: !85, line: 42, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !85, line: 35, size: 192, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !89, file: !85, line: 36, baseType: !6, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !89, file: !85, line: 37, baseType: !56, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !89, file: !85, line: 38, baseType: !94, size: 64, offset: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 38, size: 64, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !94, file: !85, line: 38, baseType: !88, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !84, file: !85, line: 42, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !57, file: !58, line: 69, baseType: !100, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !102, line: 90, size: 2176, elements: !103)
!102 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !{!104, !109, !126, !131, !133, !135, !140, !148, !153, !158, !159, !160, !165, !243, !244, !245}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !101, file: !102, line: 91, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !102, line: 68, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !100}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !101, file: !102, line: 93, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !102, line: 71, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!6, !100, !56, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !117, line: 62, baseType: !118)
!117 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !117, line: 55, size: 128, elements: !119)
!119 = !{!120, !121, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !118, file: !117, line: 57, baseType: !82, size: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !118, file: !117, line: 59, baseType: !122, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !117, line: 53, baseType: !6)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !118, file: !117, line: 61, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !77, line: 48, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !79, line: 129, baseType: !48)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !101, file: !102, line: 94, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !102, line: 74, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !100, !56}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !101, file: !102, line: 95, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !102, line: 76, baseType: !128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !101, file: !102, line: 96, baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !102, line: 78, baseType: !128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !101, file: !102, line: 98, baseType: !136, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !102, line: 81, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!6, !100, !56, !122}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !101, file: !102, line: 99, baseType: !141, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !102, line: 83, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!6, !100, !145, !147}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !101, file: !102, line: 100, baseType: !149, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !102, line: 85, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!6, !100, !56, !6}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !101, file: !102, line: 101, baseType: !154, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !102, line: 87, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!6, !100, !145, !54}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !101, file: !102, line: 104, baseType: !82, size: 8, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !101, file: !102, line: 105, baseType: !57, size: 1024, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !101, file: !102, line: 106, baseType: !161, size: 128, offset: 1664)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !58, line: 93, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !161, file: !58, line: 93, baseType: !56, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !161, file: !58, line: 93, baseType: !55, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !101, file: !102, line: 107, baseType: !166, size: 192, offset: 1792)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !167, line: 59, size: 192, elements: !168)
!167 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!168 = !{!169, !234, !238}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !166, file: !167, line: 61, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !167, line: 51, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!53, !174, !48, !48}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !176, line: 77, size: 832, elements: !177)
!176 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!177 = !{!178, !185, !190, !195, !201, !203, !208, !209, !210, !215, !220, !225, !226, !227}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !175, file: !176, line: 79, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !176, line: 54, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!53, !174, !183}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 58, baseType: !48)
!184 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !175, file: !176, line: 80, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !176, line: 56, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!53, !174, !183, !183}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !175, file: !176, line: 81, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !176, line: 62, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!53, !174, !53, !183}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !175, file: !176, line: 82, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !176, line: 58, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!6, !174, !200, !183, !183}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !175, file: !176, line: 83, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !176, line: 60, baseType: !187)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !175, file: !176, line: 84, baseType: !204, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !176, line: 64, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !174, !53}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !175, file: !176, line: 87, baseType: !204, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !175, file: !176, line: 88, baseType: !179, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !175, file: !176, line: 92, baseType: !211, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !176, line: 66, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!53, !174, !48}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !175, file: !176, line: 93, baseType: !216, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !176, line: 68, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !174, !53, !48}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !175, file: !176, line: 99, baseType: !221, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !176, line: 70, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!6, !174, !53, !183}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !175, file: !176, line: 100, baseType: !183, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !176, line: 103, baseType: !174, size: 64, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !175, file: !176, line: 104, baseType: !228, offset: 832)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !232)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !50, line: 20, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !52, line: 41, baseType: !231)
!231 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!232 = !{!233}
!233 = !DISubrange(count: -1)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !166, file: !167, line: 63, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !53}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !166, file: !167, line: 65, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !167, line: 56, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !53, !53}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !101, file: !102, line: 108, baseType: !174, size: 64, offset: 1984)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !101, file: !102, line: 109, baseType: !100, size: 64, offset: 2048)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !101, file: !102, line: 110, baseType: !53, size: 64, offset: 2112)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !57, file: !58, line: 70, baseType: !53, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !57, file: !58, line: 72, baseType: !6, size: 32, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !57, file: !58, line: 82, baseType: !249, size: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !251, line: 569, size: 14912, elements: !252)
!251 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!252 = !{!253, !254, !329, !330, !331, !332, !336, !337, !340, !341, !345, !357, !358, !359, !361, !362, !363, !425, !446, !447, !452, !459}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !250, file: !251, line: 571, baseType: !6, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !250, file: !251, line: 576, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !251, line: 287, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !251, line: 181, size: 1408, elements: !258)
!258 = !{!259, !262, !263, !264, !266, !267, !272, !273, !274, !281, !285, !290, !294, !295, !296, !297, !301, !305, !306, !307, !309, !310, !314, !328}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !257, file: !251, line: 182, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !257, file: !251, line: 183, baseType: !6, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !257, file: !251, line: 184, baseType: !6, size: 32, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !257, file: !251, line: 185, baseType: !265, size: 16, offset: 128)
!265 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !257, file: !251, line: 186, baseType: !265, size: 16, offset: 144)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !257, file: !251, line: 187, baseType: !268, size: 128, offset: 192)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !251, line: 117, size: 128, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !268, file: !251, line: 118, baseType: !260, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !268, file: !251, line: 119, baseType: !6, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !257, file: !251, line: 188, baseType: !6, size: 32, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !257, file: !251, line: 195, baseType: !53, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !257, file: !251, line: 197, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !249, !53, !280, !6}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !279, line: 145, baseType: !80)
!279 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !257, file: !251, line: 199, baseType: !282, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!278, !249, !53, !61, !6}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !257, file: !251, line: 202, baseType: !286, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !249, !53, !289, !6}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !279, line: 114, baseType: !80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !257, file: !251, line: 203, baseType: !291, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!6, !249, !53}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !257, file: !251, line: 206, baseType: !268, size: 128, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !257, file: !251, line: 207, baseType: !260, size: 64, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !257, file: !251, line: 208, baseType: !6, size: 32, offset: 896)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !257, file: !251, line: 211, baseType: !298, size: 24, offset: 928)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 24, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 3)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !257, file: !251, line: 212, baseType: !302, size: 8, offset: 952)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 8, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 1)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !257, file: !251, line: 215, baseType: !268, size: 128, offset: 960)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !257, file: !251, line: 218, baseType: !6, size: 32, offset: 1088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !257, file: !251, line: 219, baseType: !308, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !279, line: 44, baseType: !80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !257, file: !251, line: 222, baseType: !249, size: 64, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !257, file: !251, line: 226, baseType: !311, size: 32, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !279, line: 175, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !313, line: 12, baseType: !6)
!313 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !257, file: !251, line: 228, baseType: !315, size: 64, offset: 1312)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !279, line: 171, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 163, size: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !316, file: !279, line: 165, baseType: !6, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !316, file: !279, line: 170, baseType: !320, size: 32, offset: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !279, line: 166, size: 32, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !320, file: !279, line: 168, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !184, line: 124, baseType: !11)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !320, file: !279, line: 169, baseType: !325, size: 32)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 32, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 4)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !257, file: !251, line: 229, baseType: !6, size: 32, offset: 1376)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !250, file: !251, line: 576, baseType: !255, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !250, file: !251, line: 576, baseType: !255, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !250, file: !251, line: 578, baseType: !6, size: 32, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !250, file: !251, line: 579, baseType: !333, size: 200, offset: 288)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 200, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 25)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !250, file: !251, line: 582, baseType: !6, size: 32, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !250, file: !251, line: 583, baseType: !338, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !251, line: 40, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !250, file: !251, line: 585, baseType: !6, size: 32, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !250, file: !251, line: 587, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !249}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !250, file: !251, line: 590, baseType: !346, size: 64, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !251, line: 47, size: 256, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !347, file: !251, line: 49, baseType: !346, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !347, file: !251, line: 50, baseType: !6, size: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !347, file: !251, line: 50, baseType: !6, size: 32, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !347, file: !251, line: 50, baseType: !6, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !347, file: !251, line: 50, baseType: !6, size: 32, offset: 160)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !347, file: !251, line: 51, baseType: !355, size: 32, offset: 192)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 32, elements: !303)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !251, line: 25, baseType: !11)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !250, file: !251, line: 591, baseType: !6, size: 32, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !250, file: !251, line: 592, baseType: !346, size: 64, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !250, file: !251, line: 593, baseType: !360, size: 64, offset: 960)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !250, file: !251, line: 596, baseType: !6, size: 32, offset: 1024)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !250, file: !251, line: 597, baseType: !280, size: 64, offset: 1088)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !250, file: !251, line: 632, baseType: !364, size: 2880, offset: 1152)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !251, line: 599, size: 2880, elements: !365)
!365 = !{!366, !416}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !364, file: !251, line: 622, baseType: !367, size: 1728)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !251, line: 601, size: 1728, elements: !368)
!368 = !{!369, !370, !371, !375, !387, !388, !390, !398, !399, !400, !401, !405, !409, !410, !411, !412, !413, !414, !415}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !367, file: !251, line: 603, baseType: !11, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !367, file: !251, line: 604, baseType: !280, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !367, file: !251, line: 605, baseType: !372, size: 208, offset: 128)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 208, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 26)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !367, file: !251, line: 606, baseType: !376, size: 288, offset: 352)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !251, line: 55, size: 288, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !376, file: !251, line: 57, baseType: !6, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !376, file: !251, line: 58, baseType: !6, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !376, file: !251, line: 59, baseType: !6, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !376, file: !251, line: 60, baseType: !6, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !376, file: !251, line: 61, baseType: !6, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !376, file: !251, line: 62, baseType: !6, size: 32, offset: 160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !376, file: !251, line: 63, baseType: !6, size: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !376, file: !251, line: 64, baseType: !6, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !376, file: !251, line: 65, baseType: !6, size: 32, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !367, file: !251, line: 607, baseType: !6, size: 32, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !367, file: !251, line: 608, baseType: !389, size: 64, offset: 704)
!389 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !367, file: !251, line: 609, baseType: !391, size: 112, offset: 768)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !251, line: 319, size: 112, elements: !392)
!392 = !{!393, !396, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !391, file: !251, line: 320, baseType: !394, size: 48)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 48, elements: !299)
!395 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !391, file: !251, line: 321, baseType: !394, size: 48, offset: 48)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !391, file: !251, line: 322, baseType: !395, size: 16, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !367, file: !251, line: 610, baseType: !315, size: 64, offset: 896)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !367, file: !251, line: 611, baseType: !315, size: 64, offset: 960)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !367, file: !251, line: 612, baseType: !315, size: 64, offset: 1024)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !367, file: !251, line: 613, baseType: !402, size: 64, offset: 1088)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 8)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !367, file: !251, line: 614, baseType: !406, size: 192, offset: 1152)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 24)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !367, file: !251, line: 615, baseType: !6, size: 32, offset: 1344)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !367, file: !251, line: 616, baseType: !315, size: 64, offset: 1376)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !367, file: !251, line: 617, baseType: !315, size: 64, offset: 1440)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !367, file: !251, line: 618, baseType: !315, size: 64, offset: 1504)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !367, file: !251, line: 619, baseType: !315, size: 64, offset: 1568)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !367, file: !251, line: 620, baseType: !315, size: 64, offset: 1632)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !367, file: !251, line: 621, baseType: !6, size: 32, offset: 1696)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !364, file: !251, line: 631, baseType: !417, size: 2880)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !251, line: 626, size: 2880, elements: !418)
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !417, file: !251, line: 629, baseType: !420, size: 1920)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1920, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 30)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !417, file: !251, line: 630, baseType: !424, size: 960, offset: 1920)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 960, elements: !421)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !250, file: !251, line: 636, baseType: !426, size: 64, offset: 4032)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !251, line: 93, size: 6336, elements: !428)
!428 = !{!429, !430, !431, !438}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !427, file: !251, line: 94, baseType: !426, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !427, file: !251, line: 95, baseType: !6, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !427, file: !251, line: 97, baseType: !432, size: 2048, offset: 128)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2048, elements: !436)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null}
!436 = !{!437}
!437 = !DISubrange(count: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !427, file: !251, line: 98, baseType: !439, size: 4160, offset: 2176)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !251, line: 74, size: 4160, elements: !440)
!440 = !{!441, !443, !444, !445}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !439, file: !251, line: 75, baseType: !442, size: 2048)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !436)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !439, file: !251, line: 76, baseType: !442, size: 2048, offset: 2048)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !439, file: !251, line: 78, baseType: !356, size: 32, offset: 4096)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !439, file: !251, line: 81, baseType: !356, size: 32, offset: 4128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !250, file: !251, line: 637, baseType: !427, size: 6336, offset: 4096)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !250, file: !251, line: 641, baseType: !448, size: 64, offset: 10432)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !6}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !250, file: !251, line: 646, baseType: !453, size: 192, offset: 10496)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !251, line: 291, size: 192, elements: !454)
!454 = !{!455, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !453, file: !251, line: 293, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !453, file: !251, line: 294, baseType: !6, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !453, file: !251, line: 295, baseType: !255, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !250, file: !251, line: 648, baseType: !460, size: 4224, offset: 10688)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 4224, elements: !299)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !57, file: !58, line: 85, baseType: !462, size: 64, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !18, line: 114, size: 640, elements: !464)
!464 = !{!465, !469, !470, !477, !490}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !463, file: !18, line: 116, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !467, line: 64, baseType: !468)
!467 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !467, line: 63, baseType: !48)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !463, file: !18, line: 118, baseType: !466, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !463, file: !18, line: 120, baseType: !471, size: 128, offset: 128)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !472, line: 51, size: 128, elements: !473)
!472 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!473 = !{!474, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !472, line: 52, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !471, file: !472, line: 53, baseType: !475, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !463, file: !18, line: 122, baseType: !478, size: 256, offset: 256)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !18, line: 98, size: 256, elements: !479)
!479 = !{!480, !481, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !478, file: !18, line: 107, baseType: !17, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !478, file: !18, line: 109, baseType: !466, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !478, file: !18, line: 111, baseType: !483, size: 96, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !467, line: 72, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 68, size: 96, elements: !485)
!485 = !{!486, !487, !488}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !484, file: !467, line: 69, baseType: !6, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !484, file: !467, line: 70, baseType: !6, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !484, file: !467, line: 71, baseType: !489, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !467, line: 61, baseType: !6)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !463, file: !18, line: 124, baseType: !471, size: 128, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !50, line: 82, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !52, line: 232, baseType: !48)
!493 = !{!494, !0, !499, !504, !506, !511, !513, !518, !520, !525, !527, !530, !532, !537, !539, !544, !546, !552, !710, !717, !736, !741, !840, !842, !844, !846, !849, !854, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !887}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 228, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 152, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 19)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 264, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 560, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 70)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 264, type: !501, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 270, type: !508, isLocal: true, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 296, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 37)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 270, type: !508, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 285, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 264, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 33)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 285, type: !515, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 300, type: !522, isLocal: true, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 248, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 31)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 300, type: !522, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 316, type: !529, isLocal: true, isDefinition: true)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 240, elements: !421)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 316, type: !529, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 334, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 352, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 44)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 334, type: !534, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 342, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 272, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 34)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 342, type: !541, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "__uk_inittab39_liblwip_init", scope: !7, file: !3, line: 371, type: !548, isLocal: true, isDefinition: true)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_init_func_t", file: !550, line: 43, baseType: !551)
!550 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/init.h", directory: "/root/.unikraft/apps/redis/build")
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "netif_status_print", scope: !7, file: !3, line: 158, type: !554, isLocal: true, isDefinition: true)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_t", file: !36, line: 652, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif_ext_callback", file: !36, line: 648, size: 128, elements: !556)
!556 = !{!557, !708}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "callback_fn", scope: !555, file: !36, line: 650, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_fn", file: !36, line: 644, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562, !675, !676}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !36, line: 260, size: 2240, elements: !564)
!564 = !{!565, !566, !594, !595, !596, !598, !600, !602, !603, !626, !633, !638, !645, !650, !651, !652, !654, !655, !656, !657, !661, !662, !663, !667, !668, !669, !670}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !36, line: 263, baseType: !562, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !563, file: !36, line: 268, baseType: !567, size: 192, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !568, line: 76, baseType: !569)
!568 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !568, line: 69, size: 192, elements: !570)
!570 = !{!571, !593}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !569, file: !568, line: 73, baseType: !572, size: 160)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !568, line: 70, size: 160, elements: !573)
!573 = !{!574, !587}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !572, file: !568, line: 71, baseType: !575, size: 160)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !576, line: 67, baseType: !577)
!576 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !576, line: 59, size: 160, elements: !578)
!578 = !{!579, !583}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !577, file: !576, line: 60, baseType: !580, size: 128)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 128, elements: !326)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !582, line: 129, baseType: !73)
!582 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !577, file: !576, line: 62, baseType: !584, size: 8, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !582, line: 125, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 43, baseType: !261)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !572, file: !568, line: 72, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !589, line: 57, baseType: !590)
!589 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !589, line: 51, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !590, file: !589, line: 52, baseType: !581, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !568, line: 75, baseType: !584, size: 8, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !563, file: !36, line: 269, baseType: !567, size: 192, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !563, file: !36, line: 270, baseType: !567, size: 192, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !563, file: !36, line: 274, baseType: !597, size: 576, offset: 640)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 576, elements: !299)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !563, file: !36, line: 277, baseType: !599, size: 24, offset: 1216)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 24, elements: !299)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !563, file: !36, line: 282, baseType: !601, size: 96, offset: 1248)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 96, elements: !299)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !563, file: !36, line: 283, baseType: !601, size: 96, offset: 1344)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !563, file: !36, line: 288, baseType: !604, size: 64, offset: 1472)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !36, line: 178, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !611, !562}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !609, line: 96, baseType: !610)
!609 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !582, line: 126, baseType: !229)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !613, line: 186, size: 192, elements: !614)
!613 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!614 = !{!615, !616, !617, !621, !622, !623, !624, !625}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !613, line: 188, baseType: !611, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !612, file: !613, line: 191, baseType: !53, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !612, file: !613, line: 200, baseType: !618, size: 16, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !582, line: 127, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 36, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 57, baseType: !395)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !612, file: !613, line: 203, baseType: !618, size: 16, offset: 144)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !612, file: !613, line: 208, baseType: !584, size: 8, offset: 160)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !613, line: 211, baseType: !584, size: 8, offset: 168)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !612, file: !613, line: 218, baseType: !584, size: 8, offset: 176)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !612, file: !613, line: 221, baseType: !584, size: 8, offset: 184)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !563, file: !36, line: 294, baseType: !627, size: 64, offset: 1536)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !36, line: 189, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!608, !562, !611, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !563, file: !36, line: 299, baseType: !634, size: 64, offset: 1600)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !36, line: 212, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!608, !562, !611}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !563, file: !36, line: 305, baseType: !639, size: 64, offset: 1664)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !36, line: 202, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!608, !562, !611, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !563, file: !36, line: 310, baseType: !646, size: 64, offset: 1728)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !36, line: 214, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !562}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !563, file: !36, line: 319, baseType: !646, size: 64, offset: 1792)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !563, file: !36, line: 323, baseType: !53, size: 64, offset: 1856)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !563, file: !36, line: 325, baseType: !653, size: 64, offset: 1920)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !303)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !563, file: !36, line: 332, baseType: !618, size: 16, offset: 1984)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !563, file: !36, line: 335, baseType: !618, size: 16, offset: 2000)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !563, file: !36, line: 338, baseType: !618, size: 16, offset: 2016)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !563, file: !36, line: 341, baseType: !658, size: 48, offset: 2032)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 48, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 6)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !563, file: !36, line: 343, baseType: !584, size: 8, offset: 2080)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !36, line: 345, baseType: !584, size: 8, offset: 2088)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !36, line: 347, baseType: !664, size: 16, offset: 2096)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 16, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 2)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !563, file: !36, line: 350, baseType: !584, size: 8, offset: 2112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !563, file: !36, line: 353, baseType: !584, size: 8, offset: 2120)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !563, file: !36, line: 357, baseType: !584, size: 8, offset: 2128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !563, file: !36, line: 377, baseType: !671, size: 64, offset: 2176)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !36, line: 222, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!608, !562, !643, !35}
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_nsc_reason_t", file: !36, line: 564, baseType: !618)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_args_t", file: !36, line: 634, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !36, line: 594, size: 192, elements: !680)
!680 = !{!681, !685, !689, !697, !702}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "link_changed", scope: !679, file: !36, line: 601, baseType: !682, size: 8)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link_changed_s", file: !36, line: 597, size: 8, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !682, file: !36, line: 600, baseType: !584, size: 8)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "status_changed", scope: !679, file: !36, line: 607, baseType: !686, size: 8)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "status_changed_s", file: !36, line: 603, size: 8, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !686, file: !36, line: 606, baseType: !584, size: 8)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_changed", scope: !679, file: !36, line: 615, baseType: !690, size: 192)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_changed_s", file: !36, line: 609, size: 192, elements: !691)
!691 = !{!692, !695, !696}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "old_address", scope: !690, file: !36, line: 612, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "old_netmask", scope: !690, file: !36, line: 613, baseType: !693, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "old_gw", scope: !690, file: !36, line: 614, baseType: !693, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_set", scope: !679, file: !36, line: 623, baseType: !698, size: 128)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_set_s", file: !36, line: 617, size: 128, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "addr_index", scope: !698, file: !36, line: 620, baseType: !610, size: 8)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "old_address", scope: !698, file: !36, line: 622, baseType: !693, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_addr_state_changed", scope: !679, file: !36, line: 633, baseType: !703, size: 128)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_addr_state_changed_s", file: !36, line: 625, size: 128, elements: !704)
!704 = !{!705, !706, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "addr_index", scope: !703, file: !36, line: 628, baseType: !610, size: 8)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !703, file: !36, line: 630, baseType: !584, size: 8, offset: 8)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !703, file: !36, line: 632, baseType: !693, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !36, line: 651, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "_lwip_init_sem", scope: !7, file: !3, line: 173, type: !712, isLocal: true, isDefinition: true)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !713, line: 51, size: 192, elements: !714)
!713 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !712, file: !713, line: 52, baseType: !80, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !712, file: !713, line: 53, baseType: !84, size: 128, offset: 64)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "__str", scope: !719, file: !720, line: 198, type: !402, isLocal: true, isDefinition: true)
!719 = distinct !DISubprogram(name: "uk_pr_crit", scope: !720, file: !720, line: 194, type: !721, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !723)
!720 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!721 = !DISubroutineType(types: !722)
!722 = !{null, !61, null}
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "fmt", arg: 1, scope: !719, file: !720, line: 194, type: !61)
!725 = !DILocalVariable(name: "argp", scope: !719, file: !720, line: 196, type: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !727, line: 32, baseType: !728)
!727 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !729)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 192, elements: !303)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !731)
!731 = !{!732, !733, !734, !735}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !730, file: !3, line: 196, baseType: !11, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !730, file: !3, line: 196, baseType: !11, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !730, file: !3, line: 196, baseType: !53, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !730, file: !3, line: 196, baseType: !53, size: 64, offset: 128)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "__str", scope: !719, file: !720, line: 198, type: !738, isLocal: true, isDefinition: true)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 56, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 7)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 72, type: !837, isLocal: true, isDefinition: true)
!743 = distinct !DISubprogram(name: "_netif_status_print", scope: !3, file: !3, line: 61, type: !560, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !744)
!744 = !{!745, !746, !747, !748, !752, !753, !754, !755, !756, !757, !765, !766, !767, !775, !776, !777, !780, !786, !787, !788, !789, !792, !798, !799, !800, !801, !809, !810, !811, !812, !813, !821, !822, !823, !824, !825, !833, !834, !835, !836}
!745 = !DILocalVariable(name: "nf", arg: 1, scope: !743, file: !3, line: 61, type: !562)
!746 = !DILocalVariable(name: "reason", arg: 2, scope: !743, file: !3, line: 61, type: !675)
!747 = !DILocalVariable(name: "args", arg: 3, scope: !743, file: !3, line: 62, type: !676)
!748 = !DILocalVariable(name: "str_ip4_addr", scope: !743, file: !3, line: 64, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 136, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 17)
!752 = !DILocalVariable(name: "_dss_str_ip4_addr", scope: !743, file: !3, line: 65, type: !280)
!753 = !DILocalVariable(name: "str_ip4_mask", scope: !743, file: !3, line: 66, type: !749)
!754 = !DILocalVariable(name: "_dss_str_ip4_mask", scope: !743, file: !3, line: 67, type: !280)
!755 = !DILocalVariable(name: "str_ip4_gw", scope: !743, file: !3, line: 68, type: !749)
!756 = !DILocalVariable(name: "_dss_str_ip4_gw", scope: !743, file: !3, line: 69, type: !280)
!757 = !DILocalVariable(name: "tid", scope: !758, file: !3, line: 72, type: !73)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 72, column: 3)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 72, column: 3)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 72, column: 3)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 72, column: 3)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 72, column: 3)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 71, column: 37)
!764 = distinct !DILexicalBlock(scope: !743, file: !3, line: 71, column: 6)
!765 = !DILocalVariable(name: "_arg3", scope: !758, file: !3, line: 72, type: !49)
!766 = !DILocalVariable(name: "_arg4", scope: !758, file: !3, line: 72, type: !49)
!767 = !DILocalVariable(name: "tid", scope: !768, file: !3, line: 77, type: !73)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 77, column: 3)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 77, column: 3)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 77, column: 3)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 77, column: 3)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 77, column: 3)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 76, column: 39)
!774 = distinct !DILexicalBlock(scope: !743, file: !3, line: 76, column: 6)
!775 = !DILocalVariable(name: "_arg3", scope: !768, file: !3, line: 77, type: !49)
!776 = !DILocalVariable(name: "_arg4", scope: !768, file: !3, line: 77, type: !49)
!777 = !DILocalVariable(name: "state", scope: !778, file: !3, line: 82, type: !280)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 81, column: 38)
!779 = distinct !DILexicalBlock(scope: !743, file: !3, line: 81, column: 6)
!780 = !DILocalVariable(name: "tid", scope: !781, file: !3, line: 83, type: !73)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 83, column: 3)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 83, column: 3)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 83, column: 3)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 83, column: 3)
!785 = distinct !DILexicalBlock(scope: !778, file: !3, line: 83, column: 3)
!786 = !DILocalVariable(name: "_arg3", scope: !781, file: !3, line: 83, type: !49)
!787 = !DILocalVariable(name: "_arg4", scope: !781, file: !3, line: 83, type: !49)
!788 = !DILocalVariable(name: "_arg5", scope: !781, file: !3, line: 83, type: !49)
!789 = !DILocalVariable(name: "state", scope: !790, file: !3, line: 88, type: !280)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 87, column: 40)
!791 = distinct !DILexicalBlock(scope: !743, file: !3, line: 87, column: 6)
!792 = !DILocalVariable(name: "tid", scope: !793, file: !3, line: 89, type: !73)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 89, column: 3)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 89, column: 3)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 89, column: 3)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 89, column: 3)
!797 = distinct !DILexicalBlock(scope: !790, file: !3, line: 89, column: 3)
!798 = !DILocalVariable(name: "_arg3", scope: !793, file: !3, line: 89, type: !49)
!799 = !DILocalVariable(name: "_arg4", scope: !793, file: !3, line: 89, type: !49)
!800 = !DILocalVariable(name: "_arg5", scope: !793, file: !3, line: 89, type: !49)
!801 = !DILocalVariable(name: "tid", scope: !802, file: !3, line: 112, type: !73)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 112, column: 3)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 112, column: 3)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 112, column: 3)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 112, column: 3)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 112, column: 3)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 98, column: 51)
!808 = distinct !DILexicalBlock(scope: !743, file: !3, line: 95, column: 6)
!809 = !DILocalVariable(name: "_arg3", scope: !802, file: !3, line: 112, type: !49)
!810 = !DILocalVariable(name: "_arg4", scope: !802, file: !3, line: 112, type: !49)
!811 = !DILocalVariable(name: "_arg5", scope: !802, file: !3, line: 112, type: !49)
!812 = !DILocalVariable(name: "_arg6", scope: !802, file: !3, line: 112, type: !49)
!813 = !DILocalVariable(name: "tid", scope: !814, file: !3, line: 129, type: !73)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 129, column: 3)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 129, column: 3)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 129, column: 3)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 129, column: 3)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 129, column: 3)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 120, column: 34)
!820 = distinct !DILexicalBlock(scope: !743, file: !3, line: 120, column: 6)
!821 = !DILocalVariable(name: "_arg3", scope: !814, file: !3, line: 129, type: !49)
!822 = !DILocalVariable(name: "_arg4", scope: !814, file: !3, line: 129, type: !49)
!823 = !DILocalVariable(name: "_arg5", scope: !814, file: !3, line: 129, type: !49)
!824 = !DILocalVariable(name: "_arg6", scope: !814, file: !3, line: 129, type: !49)
!825 = !DILocalVariable(name: "tid", scope: !826, file: !3, line: 146, type: !73)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 146, column: 3)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 146, column: 3)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 146, column: 3)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 146, column: 3)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 146, column: 3)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 135, column: 49)
!832 = distinct !DILexicalBlock(scope: !743, file: !3, line: 135, column: 6)
!833 = !DILocalVariable(name: "_arg3", scope: !826, file: !3, line: 146, type: !49)
!834 = !DILocalVariable(name: "_arg4", scope: !826, file: !3, line: 146, type: !49)
!835 = !DILocalVariable(name: "_arg5", scope: !826, file: !3, line: 146, type: !49)
!836 = !DILocalVariable(name: "_arg6", scope: !826, file: !3, line: 146, type: !49)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 120, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 15)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 72, type: !837, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 77, type: !749, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 77, type: !749, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 82, type: !848, isLocal: true, isDefinition: true)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 24, elements: !299)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 82, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 40, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 5)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 83, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 20)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 83, type: !856, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 88, type: !848, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 88, type: !851, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 89, type: !333, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 89, type: !333, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 112, type: !508, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 112, type: !508, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 129, type: !515, isLocal: true, isDefinition: true)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 129, type: !515, isLocal: true, isDefinition: true)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 146, type: !515, isLocal: true, isDefinition: true)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(name: "__str", scope: !743, file: !3, line: 146, type: !515, isLocal: true, isDefinition: true)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(name: "__str", scope: !883, file: !720, line: 190, type: !402, isLocal: true, isDefinition: true)
!883 = distinct !DISubprogram(name: "uk_pr_err", scope: !720, file: !720, line: 186, type: !721, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !884)
!884 = !{!885, !886}
!885 = !DILocalVariable(name: "fmt", arg: 1, scope: !883, file: !720, line: 186, type: !61)
!886 = !DILocalVariable(name: "argp", scope: !883, file: !720, line: 188, type: !726)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(name: "__str", scope: !883, file: !720, line: 190, type: !738, isLocal: true, isDefinition: true)
!889 = !{!890, !891, !1107, !1108, !1110, !1111, !1112, !1113, !1115, !1116, !1117, !1118, !1119, !1125, !1131, !1137, !1138, !1144, !1145, !1149, !1155, !1156, !1162, !1163, !1171, !1177, !1183, !1184, !1194, !1200, !1201, !1211, !1217, !1218, !1228, !1236, !1244, !1245}
!890 = !DILocalVariable(name: "devid", scope: !2, file: !3, line: 211, type: !11)
!891 = !DILocalVariable(name: "dev", scope: !2, file: !3, line: 212, type: !892)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev", file: !10, line: 450, size: 640, elements: !894)
!894 = !{!895, !929, !937, !961, !1089, !1091, !1093, !1099, !1106}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "tx_one", scope: !893, file: !10, line: 452, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_tx_one_t", file: !10, line: 367, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!6, !892, !900, !902}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_tx_queue", file: !10, line: 175, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netbuf", file: !904, line: 104, size: 640, elements: !905)
!904 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!905 = !{!906, !907, !908, !909, !910, !916, !917, !918, !922, !927, !928}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !904, line: 105, baseType: !902, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !903, file: !904, line: 106, baseType: !902, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !903, file: !904, line: 108, baseType: !53, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !903, file: !904, line: 109, baseType: !619, size: 16, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !903, file: !904, line: 110, baseType: !911, size: 32, offset: 224)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic", file: !79, line: 253, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 251, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !912, file: !79, line: 252, baseType: !915, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !79, line: 88, baseType: !11)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !903, file: !904, line: 112, baseType: !53, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !903, file: !904, line: 114, baseType: !53, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !903, file: !904, line: 115, baseType: !919, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !920, line: 40, baseType: !921)
!920 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !279, line: 129, baseType: !48)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !903, file: !904, line: 117, baseType: !923, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netbuf_dtor_t", file: !904, line: 51, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !902}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_a", scope: !903, file: !904, line: 118, baseType: !174, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_b", scope: !903, file: !904, line: 119, baseType: !53, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rx_one", scope: !893, file: !10, line: 455, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rx_one_t", file: !10, line: 362, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!6, !892, !934, !936}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_rx_queue", file: !10, line: 176, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !893, file: !10, line: 458, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_data", file: !10, line: 426, size: 256, elements: !940)
!940 = !{!941, !942, !958, !960}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !939, file: !10, line: 427, baseType: !9, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_handler", scope: !939, file: !10, line: 429, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_event_handler", file: !10, line: 408, size: 640, elements: !945)
!945 = !{!946, !951, !952, !953, !954, !955, !956, !957}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !944, file: !10, line: 409, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_queue_event_t", file: !10, line: 235, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !892, !619, !53}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !944, file: !10, line: 410, baseType: !53, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !944, file: !10, line: 413, baseType: !712, size: 192, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !944, file: !10, line: 414, baseType: !892, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "queue_id", scope: !944, file: !10, line: 415, baseType: !619, size: 16, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dispatcher", scope: !944, file: !10, line: 416, baseType: !56, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dispatcher_name", scope: !944, file: !10, line: 417, baseType: !280, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dispatcher_s", scope: !944, file: !10, line: 418, baseType: !100, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !939, file: !10, line: 431, baseType: !959, size: 16, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "drv_name", scope: !939, file: !10, line: 432, baseType: !61, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !893, file: !10, line: 461, baseType: !962, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_ops", file: !10, line: 374, size: 1024, elements: !965)
!965 = !{!966, !971, !973, !984, !989, !994, !999, !1004, !1009, !1025, !1037, !1039, !1046, !1057, !1066, !1084}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_intr_enable", scope: !964, file: !10, line: 376, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_intr_enable_t", file: !10, line: 341, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!6, !892, !934}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_intr_disable", scope: !964, file: !10, line: 377, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_intr_disable_t", file: !10, line: 345, baseType: !968)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_get", scope: !964, file: !10, line: 380, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_hwaddr_get_t", file: !10, line: 320, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!978, !892}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_hwaddr", file: !10, line: 122, size: 48, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !980, file: !10, line: 123, baseType: !983, size: 48)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 48, elements: !659)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_set", scope: !964, file: !10, line: 381, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_hwaddr_set_t", file: !10, line: 324, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!6, !892, !978}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_get", scope: !964, file: !10, line: 384, baseType: !990, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_mtu_get_t", file: !10, line: 335, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!619, !892}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_set", scope: !964, file: !10, line: 385, baseType: !995, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_mtu_set_t", file: !10, line: 338, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!6, !892, !619}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "promiscuous_set", scope: !964, file: !10, line: 388, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_promiscuous_set_t", file: !10, line: 331, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!6, !892, !11}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "promiscuous_get", scope: !964, file: !10, line: 389, baseType: !1005, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_promiscuous_get_t", file: !10, line: 328, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!11, !892}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "info_get", scope: !964, file: !10, line: 392, baseType: !1010, size: 64, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_info_get_t", file: !10, line: 283, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !892, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_info", file: !10, line: 141, size: 160, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "max_rx_queues", scope: !1015, file: !10, line: 142, baseType: !619, size: 16)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "max_tx_queues", scope: !1015, file: !10, line: 143, baseType: !619, size: 16, offset: 16)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "in_queue_pairs", scope: !1015, file: !10, line: 144, baseType: !6, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !1015, file: !10, line: 145, baseType: !619, size: 16, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nb_encap_tx", scope: !1015, file: !10, line: 146, baseType: !619, size: 16, offset: 80)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nb_encap_rx", scope: !1015, file: !10, line: 147, baseType: !619, size: 16, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ioalign", scope: !1015, file: !10, line: 148, baseType: !619, size: 16, offset: 112)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !1015, file: !10, line: 149, baseType: !73, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "txq_info_get", scope: !964, file: !10, line: 393, baseType: !1026, size: 64, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_txq_info_get_t", file: !10, line: 303, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!6, !892, !619, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_queue_info", file: !10, line: 155, size: 96, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !1031, file: !10, line: 156, baseType: !619, size: 16)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !1031, file: !10, line: 157, baseType: !619, size: 16, offset: 16)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nb_align", scope: !1031, file: !10, line: 158, baseType: !619, size: 16, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nb_is_power_of_two", scope: !1031, file: !10, line: 159, baseType: !6, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_info_get", scope: !964, file: !10, line: 394, baseType: !1038, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_info_get_t", file: !10, line: 297, baseType: !1027)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "einfo_get", scope: !964, file: !10, line: 395, baseType: !1040, size: 64, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_einfo_get_t", file: !10, line: 287, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1044, !892, !23}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !964, file: !10, line: 398, baseType: !1047, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_configure_t", file: !10, line: 291, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!6, !892, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_conf", file: !10, line: 165, size: 32, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rx_queues", scope: !1053, file: !10, line: 166, baseType: !619, size: 16)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nb_tx_queues", scope: !1053, file: !10, line: 167, baseType: !619, size: 16, offset: 16)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "txq_configure", scope: !964, file: !10, line: 399, baseType: !1058, size: 64, offset: 832)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_txq_configure_t", file: !10, line: 307, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!900, !892, !619, !619, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_txqueue_conf", file: !10, line: 276, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1063, file: !10, line: 277, baseType: !174, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rxq_configure", scope: !964, file: !10, line: 400, baseType: !1067, size: 64, offset: 896)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_rxq_configure_t", file: !10, line: 312, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!934, !892, !619, !619, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_rxqueue_conf", file: !10, line: 260, size: 384, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1082, !1083}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1072, file: !10, line: 261, baseType: !947, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "callback_cookie", scope: !1072, file: !10, line: 262, baseType: !53, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1072, file: !10, line: 264, baseType: !174, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_rxpkts", scope: !1072, file: !10, line: 266, baseType: !1078, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_alloc_rxpkts", file: !10, line: 253, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!619, !53, !936, !619}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_rxpkts_argp", scope: !1072, file: !10, line: 267, baseType: !53, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1072, file: !10, line: 269, baseType: !100, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !964, file: !10, line: 401, baseType: !1085, size: 64, offset: 960)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netdev_start_t", file: !10, line: 317, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!6, !892}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_queue", scope: !893, file: !10, line: 464, baseType: !1090, size: 64, offset: 256)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 64, elements: !303)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_queue", scope: !893, file: !10, line: 465, baseType: !1092, size: 64, offset: 320)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 64, elements: !303)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_list", scope: !893, file: !10, line: 467, baseType: !1094, size: 128, offset: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !10, line: 467, size: 128, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1094, file: !10, line: 467, baseType: !892, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1094, file: !10, line: 467, baseType: !1098, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_einfo", scope: !893, file: !10, line: 470, baseType: !1100, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netdev_einfo", file: !10, line: 435, size: 192, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_addr", scope: !1101, file: !10, line: 436, baseType: !61, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_net_mask", scope: !1101, file: !10, line: 437, baseType: !61, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_gw_addr", scope: !1101, file: !10, line: 438, baseType: !61, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_pad", scope: !893, file: !10, line: 473, baseType: !280, size: 64, offset: 576)
!1107 = !DILocalVariable(name: "nf", scope: !2, file: !3, line: 213, type: !562)
!1108 = !DILocalVariable(name: "strcfg", scope: !2, file: !3, line: 214, type: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1110 = !DILocalVariable(name: "int16cfg", scope: !2, file: !3, line: 216, type: !619)
!1111 = !DILocalVariable(name: "is_first_nf", scope: !2, file: !3, line: 217, type: !6)
!1112 = !DILocalVariable(name: "ip4", scope: !2, file: !3, line: 219, type: !588)
!1113 = !DILocalVariable(name: "ip4_arg", scope: !2, file: !3, line: 220, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1115 = !DILocalVariable(name: "mask4", scope: !2, file: !3, line: 221, type: !588)
!1116 = !DILocalVariable(name: "mask4_arg", scope: !2, file: !3, line: 222, type: !1114)
!1117 = !DILocalVariable(name: "gw4", scope: !2, file: !3, line: 223, type: !588)
!1118 = !DILocalVariable(name: "gw4_arg", scope: !2, file: !3, line: 224, type: !1114)
!1119 = !DILocalVariable(name: "tid", scope: !1120, file: !3, line: 228, type: !73)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 228, column: 2)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 228, column: 2)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 228, column: 2)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 228, column: 2)
!1124 = distinct !DILexicalBlock(scope: !2, file: !3, line: 228, column: 2)
!1125 = !DILocalVariable(name: "tid", scope: !1126, file: !3, line: 231, type: !73)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 231, column: 2)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 231, column: 2)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 231, column: 2)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 231, column: 2)
!1130 = distinct !DILexicalBlock(scope: !2, file: !3, line: 231, column: 2)
!1131 = !DILocalVariable(name: "tid", scope: !1132, file: !3, line: 240, type: !73)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 240, column: 2)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 240, column: 2)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 240, column: 2)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 240, column: 2)
!1136 = distinct !DILexicalBlock(scope: !2, file: !3, line: 240, column: 2)
!1137 = !DILocalVariable(name: "netdev_count", scope: !2, file: !3, line: 250, type: !11)
!1138 = !DILocalVariable(name: "tid", scope: !1139, file: !3, line: 252, type: !73)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 252, column: 2)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 252, column: 2)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 252, column: 2)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 252, column: 2)
!1143 = distinct !DILexicalBlock(scope: !2, file: !3, line: 252, column: 2)
!1144 = !DILocalVariable(name: "_ret", scope: !1139, file: !3, line: 252, type: !49)
!1145 = !DILocalVariable(name: "netdev_state", scope: !1146, file: !3, line: 255, type: !9)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 254, column: 49)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 254, column: 2)
!1148 = distinct !DILexicalBlock(scope: !2, file: !3, line: 254, column: 2)
!1149 = !DILocalVariable(name: "tid", scope: !1150, file: !3, line: 256, type: !73)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 256, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 256, column: 3)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 256, column: 3)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 256, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 256, column: 3)
!1155 = !DILocalVariable(name: "_ret", scope: !1150, file: !3, line: 256, type: !49)
!1156 = !DILocalVariable(name: "tid", scope: !1157, file: !3, line: 260, type: !73)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 260, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 260, column: 3)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 260, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 260, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 260, column: 3)
!1162 = !DILocalVariable(name: "_ret", scope: !1157, file: !3, line: 260, type: !49)
!1163 = !DILocalVariable(name: "tid", scope: !1164, file: !3, line: 264, type: !73)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 264, column: 4)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 264, column: 4)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 264, column: 4)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 264, column: 4)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 264, column: 4)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 263, column: 47)
!1170 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 263, column: 7)
!1171 = !DILocalVariable(name: "tid", scope: !1172, file: !3, line: 270, type: !73)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 270, column: 3)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 270, column: 3)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 270, column: 3)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 270, column: 3)
!1176 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 270, column: 3)
!1177 = !DILocalVariable(name: "tid", scope: !1178, file: !3, line: 280, type: !73)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 280, column: 3)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 280, column: 3)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 280, column: 3)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 280, column: 3)
!1182 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 280, column: 3)
!1183 = !DILocalVariable(name: "_arg3", scope: !1178, file: !3, line: 280, type: !49)
!1184 = !DILocalVariable(name: "tid", scope: !1185, file: !3, line: 285, type: !73)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 285, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 285, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 285, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 285, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 285, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 284, column: 42)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 284, column: 8)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 283, column: 16)
!1193 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 283, column: 7)
!1194 = !DILocalVariable(name: "tid", scope: !1195, file: !3, line: 295, type: !73)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 295, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 295, column: 3)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 295, column: 3)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 295, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 295, column: 3)
!1200 = !DILocalVariable(name: "_arg3", scope: !1195, file: !3, line: 295, type: !49)
!1201 = !DILocalVariable(name: "tid", scope: !1202, file: !3, line: 300, type: !73)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 300, column: 5)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 300, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 300, column: 5)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 300, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 300, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 299, column: 44)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 299, column: 8)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 298, column: 16)
!1210 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 298, column: 7)
!1211 = !DILocalVariable(name: "tid", scope: !1212, file: !3, line: 311, type: !73)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 311, column: 3)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 311, column: 3)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 311, column: 3)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 311, column: 3)
!1216 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 311, column: 3)
!1217 = !DILocalVariable(name: "_arg3", scope: !1212, file: !3, line: 311, type: !49)
!1218 = !DILocalVariable(name: "tid", scope: !1219, file: !3, line: 316, type: !73)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 316, column: 5)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 316, column: 5)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 316, column: 5)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 316, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 316, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 315, column: 42)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 315, column: 8)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 314, column: 16)
!1227 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 314, column: 7)
!1228 = !DILocalVariable(name: "tid", scope: !1229, file: !3, line: 334, type: !73)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 334, column: 4)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 334, column: 4)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 334, column: 4)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 334, column: 4)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 334, column: 4)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 333, column: 12)
!1235 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 333, column: 7)
!1236 = !DILocalVariable(name: "tid", scope: !1237, file: !3, line: 342, type: !73)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 342, column: 4)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 342, column: 4)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 342, column: 4)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 342, column: 4)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 342, column: 4)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 341, column: 20)
!1243 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 341, column: 7)
!1244 = !DILocalVariable(name: "_arg3", scope: !1237, file: !3, line: 342, type: !49)
!1245 = !DILocalVariable(name: "_arg4", scope: !1237, file: !3, line: 342, type: !49)
!1246 = !{i32 2, !"Dwarf Version", i32 4}
!1247 = !{i32 2, !"Debug Info Version", i32 3}
!1248 = !{i32 1, !"wchar_size", i32 4}
!1249 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!1250 = distinct !DISubprogram(name: "sys_init", scope: !3, file: !3, line: 161, type: !434, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1251)
!1251 = !{}
!1252 = !DILocation(line: 169, column: 1, scope: !1250)
!1253 = distinct !DISubprogram(name: "liblwip_init", scope: !3, file: !3, line: 203, type: !4, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1254)
!1254 = !{!1255, !1256, !1262}
!1255 = !DILocalVariable(name: "ret", scope: !1253, file: !3, line: 204, type: !6)
!1256 = !DILocalVariable(name: "tid", scope: !1257, file: !3, line: 205, type: !73)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 205, column: 2)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 205, column: 2)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 205, column: 2)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 205, column: 2)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 205, column: 2)
!1262 = !DILocalVariable(name: "_ret", scope: !1257, file: !3, line: 205, type: !49)
!1263 = !DILocation(line: 204, column: 2, scope: !1253)
!1264 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1271)
!1265 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !1266, file: !1266, line: 116, type: !1267, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1269)
!1266 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!48}
!1269 = !{!1270}
!1270 = !DILocalVariable(name: "sp", scope: !1265, file: !1266, line: 118, type: !48)
!1271 = distinct !DILocation(line: 205, column: 2, scope: !1260)
!1272 = !{i32 431578}
!1273 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1271)
!1274 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1271)
!1275 = !DILocation(line: 205, column: 2, scope: !1260)
!1276 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 205, column: 2, scope: !1260)
!1278 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1277)
!1279 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1277)
!1280 = !DILocation(line: 205, column: 2, scope: !1261)
!1281 = !DILocation(line: 205, column: 2, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 205, column: 2)
!1283 = !DILocation(line: 204, column: 6, scope: !1253)
!1284 = !{!1285, !1285, i64 0}
!1285 = !{!"int", !1286, i64 0}
!1286 = !{!"omnipotent char", !1287, i64 0}
!1287 = !{!"Simple C/C++ TBAA"}
!1288 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1294)
!1290 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1291, file: !1291, line: 47, type: !4, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1292)
!1291 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1292 = !{!1293}
!1293 = !DILocalVariable(name: "sp", scope: !1290, file: !1291, line: 49, type: !48)
!1294 = distinct !DILocation(line: 205, column: 2, scope: !1257)
!1295 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1289)
!1296 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1289)
!1297 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1294)
!1298 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1294)
!1299 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1294)
!1300 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1294)
!1301 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1294)
!1302 = !DILocation(line: 205, column: 2, scope: !1257)
!1303 = !{i32 -2145990730, i32 -2145990717, i32 -2145990692, i32 -2145990668, i32 -2145990643, i32 -2145990568, i32 -2145990543, i32 -2145990399, i32 -2145987326, i32 -2145987237, i32 -2145987116, i32 -2145987021, i32 -2145986920, i32 -2145986893, i32 -2145986810, i32 -2145986721, i32 -2145986600, i32 -2145986500, i32 -2145986394, i32 -2145986286, i32 -2145990116, i32 -2145990063, i32 -2145990032, i32 -2145990001, i32 -2145989980, i32 -2145989958, i32 -2145989909, i32 -2145989888, i32 -2145986203, i32 -2145986114, i32 -2145985993, i32 -2145985894, i32 -2145985788, i32 -2145985686, i32 -2145985653, i32 -2145985580, i32 -2145985512, i32 -2145989586, i32 -2145989527, i32 -2145989474, i32 -2145989443, i32 -2145989412, i32 -2145989391, i32 -2145989369, i32 -2145989320, i32 -2145989299, i32 -2145985463, i32 -2145985374, i32 -2145985253, i32 -2145985154, i32 -2145985048, i32 -2145984946, i32 -2145984913, i32 -2145984830, i32 -2145984741, i32 -2145984620, i32 -2145984520, i32 -2145984494, i32 -2145984391, i32 -2145984365, i32 -2145989041, i32 -2145988974, i32 -2145988949, i32 -2145988885, i32 -2145988803, i32 -2145988780, i32 -2145988755, i32 -2145988730}
!1304 = !DILocation(line: 205, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 205, column: 2)
!1306 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 205, column: 2)
!1307 = !{i32 -2145987783, i32 -2145987766}
!1308 = !DILocation(line: 206, column: 9, scope: !1253)
!1309 = !DILocation(line: 207, column: 1, scope: !1253)
!1310 = !DILocation(line: 206, column: 2, scope: !1253)
!1311 = !DILocation(line: 120, column: 2, scope: !1265)
!1312 = !DILocation(line: 118, column: 16, scope: !1265)
!1313 = !DILocation(line: 121, column: 2, scope: !1265)
!1314 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 49, column: 21, scope: !1290)
!1316 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1315)
!1317 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1315)
!1318 = !DILocation(line: 49, column: 16, scope: !1290)
!1319 = !DILocation(line: 50, column: 19, scope: !1290)
!1320 = !DILocation(line: 50, column: 11, scope: !1290)
!1321 = !DILocation(line: 50, column: 9, scope: !1290)
!1322 = !DILocation(line: 50, column: 2, scope: !1290)
!1323 = !DILocation(line: 212, column: 2, scope: !2)
!1324 = !DILocation(line: 214, column: 50, scope: !2)
!1325 = !{!1326, !1326, i64 0}
!1326 = !{!"any pointer", !1286, i64 0}
!1327 = !DILocalVariable(name: "a", arg: 1, scope: !1328, file: !176, line: 157, type: !174)
!1328 = distinct !DISubprogram(name: "uk_malloc", scope: !176, file: !176, line: 157, type: !181, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1329)
!1329 = !{!1327, !1330}
!1330 = !DILocalVariable(name: "size", arg: 2, scope: !1328, file: !176, line: 157, type: !183)
!1331 = !DILocation(line: 157, column: 48, scope: !1328, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 214, column: 40, scope: !2)
!1333 = !DILocation(line: 157, column: 58, scope: !1328, inlinedAt: !1332)
!1334 = !DILocation(line: 159, column: 6, scope: !1335, inlinedAt: !1332)
!1335 = distinct !DILexicalBlock(scope: !1328, file: !176, line: 159, column: 6)
!1336 = !DILocation(line: 159, column: 6, scope: !1328, inlinedAt: !1332)
!1337 = !{!"branch_weights", i32 1, i32 2000}
!1338 = !DILocation(line: 160, column: 3, scope: !1339, inlinedAt: !1332)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !176, line: 159, column: 20)
!1340 = !DILocation(line: 160, column: 9, scope: !1339, inlinedAt: !1332)
!1341 = !DILocation(line: 161, column: 3, scope: !1339, inlinedAt: !1332)
!1342 = !DILocalVariable(name: "a", arg: 1, scope: !1343, file: !176, line: 151, type: !174)
!1343 = distinct !DISubprogram(name: "uk_do_malloc", scope: !176, file: !176, line: 151, type: !181, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1344)
!1344 = !{!1342, !1345}
!1345 = !DILocalVariable(name: "size", arg: 2, scope: !1343, file: !176, line: 151, type: !183)
!1346 = !DILocation(line: 151, column: 51, scope: !1343, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 163, column: 9, scope: !1328, inlinedAt: !1332)
!1348 = !DILocation(line: 151, column: 61, scope: !1343, inlinedAt: !1347)
!1349 = !DILocation(line: 153, column: 2, scope: !1350, inlinedAt: !1347)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !176, line: 153, column: 2)
!1351 = !DILocation(line: 154, column: 12, scope: !1343, inlinedAt: !1347)
!1352 = !DILocation(line: 154, column: 9, scope: !1343, inlinedAt: !1347)
!1353 = !DILocation(line: 154, column: 2, scope: !1343, inlinedAt: !1347)
!1354 = !DILocation(line: 163, column: 2, scope: !1328, inlinedAt: !1332)
!1355 = !DILocation(line: 0, scope: !1328, inlinedAt: !1332)
!1356 = !DILocation(line: 0, scope: !2)
!1357 = !DILocation(line: 164, column: 1, scope: !1328, inlinedAt: !1332)
!1358 = !DILocation(line: 214, column: 40, scope: !2)
!1359 = !DILocation(line: 214, column: 31, scope: !2)
!1360 = !DILocation(line: 215, column: 10, scope: !2)
!1361 = !DILocation(line: 219, column: 2, scope: !2)
!1362 = !DILocation(line: 221, column: 2, scope: !2)
!1363 = !DILocation(line: 223, column: 2, scope: !2)
!1364 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 228, column: 2, scope: !1123)
!1366 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1365)
!1367 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1365)
!1368 = !DILocation(line: 228, column: 2, scope: !1123)
!1369 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 228, column: 2, scope: !1123)
!1371 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1370)
!1372 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1370)
!1373 = !DILocation(line: 228, column: 2, scope: !1124)
!1374 = !DILocalVariable(name: "fmt", arg: 1, scope: !1375, file: !720, line: 170, type: !61)
!1375 = distinct !DISubprogram(name: "uk_pr_info", scope: !720, file: !720, line: 170, type: !721, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1376)
!1376 = !{!1374, !1377}
!1377 = !DILocalVariable(name: "argp", scope: !1375, file: !720, line: 172, type: !726)
!1378 = !DILocation(line: 170, column: 43, scope: !1375, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 228, column: 2, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 228, column: 2)
!1381 = !DILocation(line: 176, column: 1, scope: !1375, inlinedAt: !1379)
!1382 = !DILocation(line: 228, column: 2, scope: !1380)
!1383 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 228, column: 2, scope: !1120)
!1386 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1384)
!1387 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1384)
!1388 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1385)
!1389 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1385)
!1390 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1385)
!1391 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1385)
!1392 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1385)
!1393 = !DILocation(line: 228, column: 2, scope: !1120)
!1394 = !{i32 -2145981761, i32 -2145981748, i32 -2145981723, i32 -2145981699, i32 -2145981674, i32 -2145981599, i32 -2145981574, i32 -2145981430, i32 -2145978941, i32 -2145978852, i32 -2145978731, i32 -2145978636, i32 -2145978535, i32 -2145978508, i32 -2145978425, i32 -2145978336, i32 -2145978215, i32 -2145978115, i32 -2145978009, i32 -2145977901, i32 -2145981142, i32 -2145981089, i32 -2145981058, i32 -2145981027, i32 -2145981006, i32 -2145980984, i32 -2145980935, i32 -2145980914, i32 -2145977818, i32 -2145977729, i32 -2145977608, i32 -2145977509, i32 -2145977403, i32 -2145977301, i32 -2145977268, i32 -2145977195, i32 -2145977127, i32 -2145980540, i32 -2145980487, i32 -2145980456, i32 -2145980425, i32 -2145980404, i32 -2145980382, i32 -2145980333, i32 -2145980312, i32 -2145977081, i32 -2145976992, i32 -2145976871, i32 -2145976772, i32 -2145976666, i32 -2145976564, i32 -2145976531, i32 -2145976448, i32 -2145976359, i32 -2145976238, i32 -2145976138, i32 -2145976112, i32 -2145976009, i32 -2145975983, i32 -2145980054, i32 -2145979987, i32 -2145979962, i32 -2145979898, i32 -2145979782, i32 -2145979757, i32 -2145979732}
!1395 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 231, column: 2, scope: !1129)
!1397 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1396)
!1398 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1396)
!1399 = !DILocation(line: 231, column: 2, scope: !1129)
!1400 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 231, column: 2, scope: !1129)
!1402 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1401)
!1403 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1401)
!1404 = !DILocation(line: 231, column: 2, scope: !1130)
!1405 = !DILocation(line: 231, column: 2, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 231, column: 2)
!1407 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 231, column: 2, scope: !1126)
!1410 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1408)
!1411 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1408)
!1412 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1409)
!1413 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1409)
!1414 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1409)
!1415 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1409)
!1416 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1409)
!1417 = !DILocation(line: 231, column: 2, scope: !1126)
!1418 = !{i32 -2145974014, i32 -2145974001, i32 -2145973976, i32 -2145973952, i32 -2145973927, i32 -2145973852, i32 -2145973827, i32 -2145973683, i32 -2145971431, i32 -2145971342, i32 -2145971221, i32 -2145971126, i32 -2145971025, i32 -2145970998, i32 -2145970915, i32 -2145970826, i32 -2145970705, i32 -2145970605, i32 -2145970499, i32 -2145970391, i32 -2145973391, i32 -2145973338, i32 -2145973307, i32 -2145973276, i32 -2145973255, i32 -2145973233, i32 -2145973184, i32 -2145973163, i32 -2145970308, i32 -2145970219, i32 -2145970098, i32 -2145969999, i32 -2145969893, i32 -2145969791, i32 -2145969758, i32 -2145969685, i32 -2145969617, i32 -2145972786, i32 -2145972733, i32 -2145972702, i32 -2145972671, i32 -2145972650, i32 -2145972628, i32 -2145972579, i32 -2145972558, i32 -2145969564, i32 -2145969475, i32 -2145969354, i32 -2145969255, i32 -2145969149, i32 -2145969047, i32 -2145969014, i32 -2145968931, i32 -2145968842, i32 -2145968721, i32 -2145968621, i32 -2145968595, i32 -2145968492, i32 -2145968466, i32 -2145972300, i32 -2145972233, i32 -2145972208, i32 -2145972144, i32 -2145972028, i32 -2145972003, i32 -2145971978}
!1419 = !DILocation(line: 237, column: 2, scope: !2)
!1420 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 240, column: 2, scope: !1135)
!1422 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1421)
!1423 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1421)
!1424 = !DILocation(line: 240, column: 2, scope: !1135)
!1425 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 240, column: 2, scope: !1135)
!1427 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1426)
!1428 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1426)
!1429 = !DILocation(line: 240, column: 2, scope: !1136)
!1430 = !DILocation(line: 240, column: 2, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 240, column: 2)
!1432 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 240, column: 2, scope: !1132)
!1435 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1433)
!1436 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1433)
!1437 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1434)
!1438 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1434)
!1439 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1434)
!1440 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1434)
!1441 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1434)
!1442 = !DILocation(line: 240, column: 2, scope: !1132)
!1443 = !{i32 -2145966503, i32 -2145966490, i32 -2145966465, i32 -2145966441, i32 -2145966416, i32 -2145966341, i32 -2145966316, i32 -2145966172, i32 -2145963946, i32 -2145963857, i32 -2145963736, i32 -2145963641, i32 -2145963540, i32 -2145963513, i32 -2145963430, i32 -2145963341, i32 -2145963220, i32 -2145963120, i32 -2145963014, i32 -2145962906, i32 -2145965884, i32 -2145965831, i32 -2145965800, i32 -2145965769, i32 -2145965748, i32 -2145965726, i32 -2145965677, i32 -2145965656, i32 -2145962823, i32 -2145962734, i32 -2145962613, i32 -2145962514, i32 -2145962408, i32 -2145962306, i32 -2145962273, i32 -2145962200, i32 -2145962132, i32 -2145965282, i32 -2145965229, i32 -2145965198, i32 -2145965167, i32 -2145965146, i32 -2145965124, i32 -2145965075, i32 -2145965054, i32 -2145962079, i32 -2145961990, i32 -2145961869, i32 -2145961770, i32 -2145961664, i32 -2145961562, i32 -2145961529, i32 -2145961446, i32 -2145961357, i32 -2145961236, i32 -2145961136, i32 -2145961110, i32 -2145961007, i32 -2145960981, i32 -2145964796, i32 -2145964729, i32 -2145964704, i32 -2145964640, i32 -2145964524, i32 -2145964499, i32 -2145964474}
!1444 = !DILocation(line: 245, column: 2, scope: !2)
!1445 = !DILocation(line: 217, column: 6, scope: !2)
!1446 = !DILocation(line: 250, column: 2, scope: !2)
!1447 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 252, column: 2, scope: !1142)
!1449 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1448)
!1450 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1448)
!1451 = !DILocation(line: 252, column: 2, scope: !1142)
!1452 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 252, column: 2, scope: !1142)
!1454 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1453)
!1455 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1453)
!1456 = !DILocation(line: 252, column: 2, scope: !1143)
!1457 = !DILocation(line: 252, column: 2, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 252, column: 2)
!1459 = !DILocation(line: 250, column: 15, scope: !2)
!1460 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 252, column: 2, scope: !1139)
!1463 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1461)
!1464 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1461)
!1465 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1462)
!1466 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1462)
!1467 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1462)
!1468 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1462)
!1469 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1462)
!1470 = !DILocation(line: 252, column: 2, scope: !1139)
!1471 = !{i32 -2145958992, i32 -2145958979, i32 -2145958954, i32 -2145958930, i32 -2145958905, i32 -2145958830, i32 -2145958805, i32 -2145958661, i32 -2145955512, i32 -2145955423, i32 -2145955302, i32 -2145955207, i32 -2145955106, i32 -2145955079, i32 -2145954996, i32 -2145954907, i32 -2145954786, i32 -2145954686, i32 -2145954580, i32 -2145954472, i32 -2145958378, i32 -2145958325, i32 -2145958294, i32 -2145958263, i32 -2145958242, i32 -2145958220, i32 -2145958171, i32 -2145958150, i32 -2145954389, i32 -2145954300, i32 -2145954179, i32 -2145954080, i32 -2145953974, i32 -2145953872, i32 -2145953839, i32 -2145953766, i32 -2145953698, i32 -2145957848, i32 -2145957789, i32 -2145957736, i32 -2145957705, i32 -2145957674, i32 -2145957653, i32 -2145957631, i32 -2145957582, i32 -2145957561, i32 -2145953647, i32 -2145953558, i32 -2145953437, i32 -2145953338, i32 -2145953232, i32 -2145953130, i32 -2145953097, i32 -2145953014, i32 -2145952925, i32 -2145952804, i32 -2145952704, i32 -2145952678, i32 -2145952575, i32 -2145952549, i32 -2145957303, i32 -2145957236, i32 -2145957211, i32 -2145957147, i32 -2145957065, i32 -2145957042, i32 -2145957017, i32 -2145956992}
!1472 = !DILocation(line: 252, column: 2, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 252, column: 2)
!1474 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 252, column: 2)
!1475 = !{i32 -2145956045, i32 -2145956028}
!1476 = !DILocation(line: 254, column: 26, scope: !1147)
!1477 = !DILocation(line: 211, column: 15, scope: !2)
!1478 = !DILocation(line: 254, column: 7, scope: !1148)
!1479 = !DILocation(line: 254, column: 24, scope: !1147)
!1480 = !DILocation(line: 254, column: 2, scope: !1148)
!1481 = !DILocation(line: 255, column: 3, scope: !1146)
!1482 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 256, column: 3, scope: !1153)
!1484 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1483)
!1485 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1483)
!1486 = !DILocation(line: 256, column: 3, scope: !1153)
!1487 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 256, column: 3, scope: !1153)
!1489 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1488)
!1490 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1488)
!1491 = !DILocation(line: 256, column: 3, scope: !1154)
!1492 = !DILocation(line: 256, column: 3, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 256, column: 3)
!1494 = !DILocation(line: 212, column: 20, scope: !2)
!1495 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 256, column: 3, scope: !1150)
!1498 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1496)
!1499 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1496)
!1500 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1497)
!1501 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1497)
!1502 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1497)
!1503 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1497)
!1504 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1497)
!1505 = !DILocation(line: 256, column: 3, scope: !1150)
!1506 = !{i32 -2145950578, i32 -2145950565, i32 -2145950540, i32 -2145950516, i32 -2145950491, i32 -2145950416, i32 -2145950391, i32 -2145950247, i32 -2145947127, i32 -2145947038, i32 -2145946917, i32 -2145946822, i32 -2145946721, i32 -2145946694, i32 -2145946611, i32 -2145946522, i32 -2145946401, i32 -2145946301, i32 -2145946195, i32 -2145946087, i32 -2145949959, i32 -2145949906, i32 -2145949875, i32 -2145949844, i32 -2145949823, i32 -2145949801, i32 -2145949752, i32 -2145949731, i32 -2145946004, i32 -2145945915, i32 -2145945794, i32 -2145945695, i32 -2145945589, i32 -2145945487, i32 -2145945454, i32 -2145945381, i32 -2145945313, i32 -2145949427, i32 -2145949368, i32 -2145949315, i32 -2145949284, i32 -2145949253, i32 -2145949232, i32 -2145949210, i32 -2145949161, i32 -2145949140, i32 -2145945264, i32 -2145945175, i32 -2145945054, i32 -2145944955, i32 -2145944849, i32 -2145944747, i32 -2145944714, i32 -2145944631, i32 -2145944542, i32 -2145944421, i32 -2145944321, i32 -2145944295, i32 -2145944192, i32 -2145944166, i32 -2145948882, i32 -2145948815, i32 -2145948790, i32 -2145948726, i32 -2145948644, i32 -2145948621, i32 -2145948596, i32 -2145948571}
!1507 = !DILocation(line: 256, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 256, column: 3)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 256, column: 3)
!1510 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 256, column: 3)
!1511 = !{i32 -2145947383, i32 -2145947367}
!1512 = !DILocation(line: 257, column: 8, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 257, column: 7)
!1514 = !DILocation(line: 257, column: 7, scope: !1146)
!1515 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 260, column: 3, scope: !1160)
!1517 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1516)
!1518 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1516)
!1519 = !DILocation(line: 260, column: 3, scope: !1160)
!1520 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 260, column: 3, scope: !1160)
!1522 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1521)
!1523 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1521)
!1524 = !DILocation(line: 260, column: 3, scope: !1161)
!1525 = !DILocation(line: 260, column: 3, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 260, column: 3)
!1527 = !DILocation(line: 255, column: 24, scope: !1146)
!1528 = !{!1286, !1286, i64 0}
!1529 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 260, column: 3, scope: !1157)
!1532 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1530)
!1533 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1530)
!1534 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1531)
!1535 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1531)
!1536 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1531)
!1537 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1531)
!1538 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1531)
!1539 = !DILocation(line: 260, column: 3, scope: !1157)
!1540 = !{i32 -2145942141, i32 -2145942128, i32 -2145942103, i32 -2145942079, i32 -2145942054, i32 -2145941979, i32 -2145941954, i32 -2145941810, i32 -2145938608, i32 -2145938519, i32 -2145938398, i32 -2145938303, i32 -2145938202, i32 -2145938175, i32 -2145938092, i32 -2145938003, i32 -2145937882, i32 -2145937782, i32 -2145937676, i32 -2145937568, i32 -2145941522, i32 -2145941469, i32 -2145941438, i32 -2145941407, i32 -2145941386, i32 -2145941364, i32 -2145941315, i32 -2145941294, i32 -2145937485, i32 -2145937396, i32 -2145937275, i32 -2145937176, i32 -2145937070, i32 -2145936968, i32 -2145936935, i32 -2145936862, i32 -2145936794, i32 -2145940990, i32 -2145940931, i32 -2145940878, i32 -2145940847, i32 -2145940816, i32 -2145940795, i32 -2145940773, i32 -2145940724, i32 -2145940703, i32 -2145936739, i32 -2145936650, i32 -2145936529, i32 -2145936430, i32 -2145936324, i32 -2145936222, i32 -2145936189, i32 -2145936106, i32 -2145936017, i32 -2145935896, i32 -2145935796, i32 -2145935770, i32 -2145935667, i32 -2145935641, i32 -2145940445, i32 -2145940378, i32 -2145940353, i32 -2145940289, i32 -2145940207, i32 -2145940184, i32 -2145940159, i32 -2145940134}
!1541 = !DILocation(line: 260, column: 3, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 260, column: 3)
!1543 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 260, column: 3)
!1544 = !{i32 -2145939153, i32 -2145939136}
!1545 = !DILocation(line: 263, column: 7, scope: !1170)
!1546 = !DILocation(line: 263, column: 20, scope: !1170)
!1547 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 0, scope: !1175)
!1549 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1548)
!1550 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1548)
!1551 = !DILocation(line: 0, scope: !1175)
!1552 = !DILocation(line: 263, column: 7, scope: !1146)
!1553 = !DILocation(line: 0, scope: !1167)
!1554 = !DILocation(line: 264, column: 4, scope: !1167)
!1555 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 264, column: 4, scope: !1167)
!1557 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1556)
!1558 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1556)
!1559 = !DILocation(line: 264, column: 4, scope: !1168)
!1560 = !DILocation(line: 170, column: 43, scope: !1375, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 264, column: 4, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 264, column: 4)
!1563 = !DILocation(line: 176, column: 1, scope: !1375, inlinedAt: !1561)
!1564 = !DILocation(line: 264, column: 4, scope: !1562)
!1565 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 264, column: 4, scope: !1164)
!1568 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1566)
!1569 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1566)
!1570 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1567)
!1571 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1567)
!1572 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1567)
!1573 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1567)
!1574 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1567)
!1575 = !DILocation(line: 264, column: 4, scope: !1164)
!1576 = !{i32 -2145932638, i32 -2145932625, i32 -2145932600, i32 -2145932576, i32 -2145932551, i32 -2145932476, i32 -2145932451, i32 -2145932307, i32 -2145929686, i32 -2145929597, i32 -2145929476, i32 -2145929381, i32 -2145929280, i32 -2145929253, i32 -2145929170, i32 -2145929081, i32 -2145928960, i32 -2145928860, i32 -2145928754, i32 -2145928646, i32 -2145932015, i32 -2145931962, i32 -2145931931, i32 -2145931900, i32 -2145931879, i32 -2145931857, i32 -2145931808, i32 -2145931787, i32 -2145928563, i32 -2145928474, i32 -2145928353, i32 -2145928254, i32 -2145928148, i32 -2145928046, i32 -2145928013, i32 -2145927940, i32 -2145927872, i32 -2145931410, i32 -2145931357, i32 -2145931326, i32 -2145931295, i32 -2145931274, i32 -2145931252, i32 -2145931203, i32 -2145931182, i32 -2145927826, i32 -2145927737, i32 -2145927616, i32 -2145927517, i32 -2145927411, i32 -2145927309, i32 -2145927276, i32 -2145927193, i32 -2145927104, i32 -2145926983, i32 -2145926883, i32 -2145926857, i32 -2145926754, i32 -2145926728, i32 -2145930924, i32 -2145930857, i32 -2145930832, i32 -2145930768, i32 -2145930652, i32 -2145930627, i32 -2145930602}
!1577 = !DILocation(line: 267, column: 4, scope: !1169)
!1578 = !DILocation(line: 270, column: 3, scope: !1175)
!1579 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 270, column: 3, scope: !1175)
!1581 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1580)
!1582 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1580)
!1583 = !DILocation(line: 270, column: 3, scope: !1176)
!1584 = !DILocation(line: 170, column: 43, scope: !1375, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 270, column: 3, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 270, column: 3)
!1587 = !DILocation(line: 176, column: 1, scope: !1375, inlinedAt: !1585)
!1588 = !DILocation(line: 270, column: 3, scope: !1586)
!1589 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 270, column: 3, scope: !1172)
!1592 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1590)
!1593 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1590)
!1594 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1591)
!1595 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1591)
!1596 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1591)
!1597 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1591)
!1598 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1591)
!1599 = !DILocation(line: 270, column: 3, scope: !1172)
!1600 = !{i32 -2145923965, i32 -2145923952, i32 -2145923927, i32 -2145923903, i32 -2145923878, i32 -2145923803, i32 -2145923778, i32 -2145923634, i32 -2145921079, i32 -2145920990, i32 -2145920869, i32 -2145920774, i32 -2145920673, i32 -2145920646, i32 -2145920563, i32 -2145920474, i32 -2145920353, i32 -2145920253, i32 -2145920147, i32 -2145920039, i32 -2145923342, i32 -2145923289, i32 -2145923258, i32 -2145923227, i32 -2145923206, i32 -2145923184, i32 -2145923135, i32 -2145923114, i32 -2145919956, i32 -2145919867, i32 -2145919746, i32 -2145919647, i32 -2145919541, i32 -2145919439, i32 -2145919406, i32 -2145919333, i32 -2145919265, i32 -2145922737, i32 -2145922684, i32 -2145922653, i32 -2145922622, i32 -2145922601, i32 -2145922579, i32 -2145922530, i32 -2145922509, i32 -2145919219, i32 -2145919130, i32 -2145919009, i32 -2145918910, i32 -2145918804, i32 -2145918702, i32 -2145918669, i32 -2145918586, i32 -2145918497, i32 -2145918376, i32 -2145918276, i32 -2145918250, i32 -2145918147, i32 -2145918121, i32 -2145922251, i32 -2145922184, i32 -2145922159, i32 -2145922095, i32 -2145921979, i32 -2145921954, i32 -2145921929}
!1601 = !DILocation(line: 220, column: 14, scope: !2)
!1602 = !DILocation(line: 222, column: 14, scope: !2)
!1603 = !DILocation(line: 224, column: 14, scope: !2)
!1604 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 280, column: 3, scope: !1181)
!1606 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1605)
!1607 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1605)
!1608 = !DILocation(line: 280, column: 3, scope: !1181)
!1609 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 280, column: 3, scope: !1181)
!1611 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1610)
!1612 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1610)
!1613 = !DILocation(line: 280, column: 3, scope: !1182)
!1614 = !DILocation(line: 280, column: 3, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 280, column: 3)
!1616 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 280, column: 3, scope: !1178)
!1619 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1617)
!1620 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1617)
!1621 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1618)
!1622 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1618)
!1623 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1618)
!1624 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1618)
!1625 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1618)
!1626 = !DILocation(line: 280, column: 3, scope: !1178)
!1627 = !{i32 -2145915740, i32 -2145915727, i32 -2145915702, i32 -2145915678, i32 -2145915653, i32 -2145915578, i32 -2145915553, i32 -2145915409, i32 -2145913069, i32 -2145912980, i32 -2145912859, i32 -2145912764, i32 -2145912663, i32 -2145912636, i32 -2145912553, i32 -2145912464, i32 -2145912343, i32 -2145912243, i32 -2145912137, i32 -2145912029, i32 -2145915079, i32 -2145915026, i32 -2145914995, i32 -2145914964, i32 -2145914943, i32 -2145914921, i32 -2145914872, i32 -2145914851, i32 -2145914748, i32 -2145911946, i32 -2145911857, i32 -2145911736, i32 -2145911637, i32 -2145911531, i32 -2145911429, i32 -2145911396, i32 -2145911323, i32 -2145911255, i32 -2145914488, i32 -2145914435, i32 -2145914404, i32 -2145914373, i32 -2145914352, i32 -2145914330, i32 -2145914281, i32 -2145914260, i32 -2145911190, i32 -2145911101, i32 -2145910980, i32 -2145910881, i32 -2145910775, i32 -2145910673, i32 -2145910640, i32 -2145910557, i32 -2145910468, i32 -2145910347, i32 -2145910247, i32 -2145910221, i32 -2145910118, i32 -2145910092, i32 -2145914002, i32 -2145913935, i32 -2145913910, i32 -2145913846, i32 -2145913730, i32 -2145913705, i32 -2145913680}
!1628 = !DILocation(line: 283, column: 7, scope: !1193)
!1629 = !DILocation(line: 283, column: 7, scope: !1146)
!1630 = !DILocation(line: 219, column: 13, scope: !2)
!1631 = !DILocation(line: 284, column: 8, scope: !1191)
!1632 = !DILocation(line: 284, column: 36, scope: !1191)
!1633 = !DILocation(line: 284, column: 8, scope: !1192)
!1634 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 0, scope: !1188)
!1636 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1635)
!1637 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1635)
!1638 = !DILocation(line: 0, scope: !1188)
!1639 = !DILocation(line: 285, column: 5, scope: !1188)
!1640 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 285, column: 5, scope: !1188)
!1642 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1641)
!1643 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1641)
!1644 = !DILocation(line: 285, column: 5, scope: !1189)
!1645 = !DILocation(line: 285, column: 5, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 285, column: 5)
!1647 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 285, column: 5, scope: !1185)
!1650 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1648)
!1651 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1648)
!1652 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1649)
!1653 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1649)
!1654 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1649)
!1655 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1649)
!1656 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1649)
!1657 = !DILocation(line: 285, column: 5, scope: !1185)
!1658 = !{i32 -2145907338, i32 -2145907325, i32 -2145907300, i32 -2145907276, i32 -2145907251, i32 -2145907176, i32 -2145907151, i32 -2145907007, i32 -2145904460, i32 -2145904371, i32 -2145904250, i32 -2145904155, i32 -2145904054, i32 -2145904027, i32 -2145903944, i32 -2145903855, i32 -2145903734, i32 -2145903634, i32 -2145903528, i32 -2145903420, i32 -2145906715, i32 -2145906662, i32 -2145906631, i32 -2145906600, i32 -2145906579, i32 -2145906557, i32 -2145906508, i32 -2145906487, i32 -2145903337, i32 -2145903248, i32 -2145903127, i32 -2145903028, i32 -2145902922, i32 -2145902820, i32 -2145902787, i32 -2145902714, i32 -2145902646, i32 -2145906110, i32 -2145906057, i32 -2145906026, i32 -2145905995, i32 -2145905974, i32 -2145905952, i32 -2145905903, i32 -2145905882, i32 -2145902601, i32 -2145902512, i32 -2145902391, i32 -2145902292, i32 -2145902186, i32 -2145902084, i32 -2145902051, i32 -2145901968, i32 -2145901879, i32 -2145901758, i32 -2145901658, i32 -2145901632, i32 -2145901529, i32 -2145901503, i32 -2145905624, i32 -2145905557, i32 -2145905532, i32 -2145905468, i32 -2145905352, i32 -2145905327, i32 -2145905302}
!1659 = !DILocation(line: 295, column: 3, scope: !1198)
!1660 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 295, column: 3, scope: !1198)
!1662 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1661)
!1663 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1661)
!1664 = !DILocation(line: 295, column: 3, scope: !1199)
!1665 = !DILocation(line: 295, column: 3, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 295, column: 3)
!1667 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 295, column: 3, scope: !1195)
!1670 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1668)
!1671 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1668)
!1672 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1669)
!1673 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1669)
!1674 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1669)
!1675 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1669)
!1676 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1669)
!1677 = !DILocation(line: 295, column: 3, scope: !1195)
!1678 = !{i32 -2145899160, i32 -2145899147, i32 -2145899122, i32 -2145899098, i32 -2145899073, i32 -2145898998, i32 -2145898973, i32 -2145898829, i32 -2145896489, i32 -2145896400, i32 -2145896279, i32 -2145896184, i32 -2145896083, i32 -2145896056, i32 -2145895973, i32 -2145895884, i32 -2145895763, i32 -2145895663, i32 -2145895557, i32 -2145895449, i32 -2145898499, i32 -2145898446, i32 -2145898415, i32 -2145898384, i32 -2145898363, i32 -2145898341, i32 -2145898292, i32 -2145898271, i32 -2145898168, i32 -2145895366, i32 -2145895277, i32 -2145895156, i32 -2145895057, i32 -2145894951, i32 -2145894849, i32 -2145894816, i32 -2145894743, i32 -2145894675, i32 -2145897908, i32 -2145897855, i32 -2145897824, i32 -2145897793, i32 -2145897772, i32 -2145897750, i32 -2145897701, i32 -2145897680, i32 -2145894610, i32 -2145894521, i32 -2145894400, i32 -2145894301, i32 -2145894195, i32 -2145894093, i32 -2145894060, i32 -2145893977, i32 -2145893888, i32 -2145893767, i32 -2145893667, i32 -2145893641, i32 -2145893538, i32 -2145893512, i32 -2145897422, i32 -2145897355, i32 -2145897330, i32 -2145897266, i32 -2145897150, i32 -2145897125, i32 -2145897100}
!1679 = !DILocation(line: 298, column: 7, scope: !1210)
!1680 = !DILocation(line: 298, column: 7, scope: !1146)
!1681 = !DILocation(line: 221, column: 13, scope: !2)
!1682 = !DILocation(line: 299, column: 8, scope: !1208)
!1683 = !DILocation(line: 299, column: 38, scope: !1208)
!1684 = !DILocation(line: 299, column: 8, scope: !1209)
!1685 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 300, column: 5, scope: !1205)
!1687 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1686)
!1688 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1686)
!1689 = !DILocation(line: 300, column: 5, scope: !1205)
!1690 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 300, column: 5, scope: !1205)
!1692 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1691)
!1693 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1691)
!1694 = !DILocation(line: 300, column: 5, scope: !1206)
!1695 = !DILocation(line: 300, column: 5, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 300, column: 5)
!1697 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 300, column: 5, scope: !1202)
!1700 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1698)
!1701 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1698)
!1702 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1699)
!1703 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1699)
!1704 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1699)
!1705 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1699)
!1706 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1699)
!1707 = !DILocation(line: 300, column: 5, scope: !1202)
!1708 = !{i32 -2145890772, i32 -2145890759, i32 -2145890734, i32 -2145890710, i32 -2145890685, i32 -2145890610, i32 -2145890585, i32 -2145890441, i32 -2145887898, i32 -2145887809, i32 -2145887688, i32 -2145887593, i32 -2145887492, i32 -2145887465, i32 -2145887382, i32 -2145887293, i32 -2145887172, i32 -2145887072, i32 -2145886966, i32 -2145886858, i32 -2145890149, i32 -2145890096, i32 -2145890065, i32 -2145890034, i32 -2145890013, i32 -2145889991, i32 -2145889942, i32 -2145889921, i32 -2145886775, i32 -2145886686, i32 -2145886565, i32 -2145886466, i32 -2145886360, i32 -2145886258, i32 -2145886225, i32 -2145886152, i32 -2145886084, i32 -2145889544, i32 -2145889491, i32 -2145889460, i32 -2145889429, i32 -2145889408, i32 -2145889386, i32 -2145889337, i32 -2145889316, i32 -2145886039, i32 -2145885950, i32 -2145885829, i32 -2145885730, i32 -2145885624, i32 -2145885522, i32 -2145885489, i32 -2145885406, i32 -2145885317, i32 -2145885196, i32 -2145885096, i32 -2145885070, i32 -2145884967, i32 -2145884941, i32 -2145889058, i32 -2145888991, i32 -2145888966, i32 -2145888902, i32 -2145888786, i32 -2145888761, i32 -2145888736}
!1709 = !DILocation(line: 307, column: 4, scope: !1210)
!1710 = !{!1711, !1285, i64 0}
!1711 = !{!"ip4_addr", !1285, i64 0}
!1712 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 311, column: 3, scope: !1215)
!1714 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1713)
!1715 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1713)
!1716 = !DILocation(line: 311, column: 3, scope: !1215)
!1717 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 311, column: 3, scope: !1215)
!1719 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1718)
!1720 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1718)
!1721 = !DILocation(line: 311, column: 3, scope: !1216)
!1722 = !DILocation(line: 311, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 311, column: 3)
!1724 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 311, column: 3, scope: !1212)
!1727 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1725)
!1728 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1725)
!1729 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1726)
!1730 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1726)
!1731 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1726)
!1732 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1726)
!1733 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1726)
!1734 = !DILocation(line: 311, column: 3, scope: !1212)
!1735 = !{i32 -2145882533, i32 -2145882520, i32 -2145882495, i32 -2145882471, i32 -2145882446, i32 -2145882371, i32 -2145882346, i32 -2145882202, i32 -2145879864, i32 -2145879775, i32 -2145879654, i32 -2145879559, i32 -2145879458, i32 -2145879431, i32 -2145879348, i32 -2145879259, i32 -2145879138, i32 -2145879038, i32 -2145878932, i32 -2145878824, i32 -2145881872, i32 -2145881819, i32 -2145881788, i32 -2145881757, i32 -2145881736, i32 -2145881714, i32 -2145881665, i32 -2145881644, i32 -2145881541, i32 -2145878741, i32 -2145878652, i32 -2145878531, i32 -2145878432, i32 -2145878326, i32 -2145878224, i32 -2145878191, i32 -2145878118, i32 -2145878050, i32 -2145881281, i32 -2145881228, i32 -2145881197, i32 -2145881166, i32 -2145881145, i32 -2145881123, i32 -2145881074, i32 -2145881053, i32 -2145877985, i32 -2145877896, i32 -2145877775, i32 -2145877676, i32 -2145877570, i32 -2145877468, i32 -2145877435, i32 -2145877352, i32 -2145877263, i32 -2145877142, i32 -2145877042, i32 -2145877016, i32 -2145876913, i32 -2145876887, i32 -2145880795, i32 -2145880728, i32 -2145880703, i32 -2145880639, i32 -2145880523, i32 -2145880498, i32 -2145880473}
!1736 = !DILocation(line: 314, column: 7, scope: !1227)
!1737 = !DILocation(line: 314, column: 7, scope: !1146)
!1738 = !DILocation(line: 223, column: 13, scope: !2)
!1739 = !DILocation(line: 315, column: 8, scope: !1225)
!1740 = !DILocation(line: 315, column: 36, scope: !1225)
!1741 = !DILocation(line: 315, column: 8, scope: !1226)
!1742 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 316, column: 5, scope: !1222)
!1744 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1743)
!1745 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1743)
!1746 = !DILocation(line: 316, column: 5, scope: !1222)
!1747 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 316, column: 5, scope: !1222)
!1749 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1748)
!1750 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1748)
!1751 = !DILocation(line: 316, column: 5, scope: !1223)
!1752 = !DILocation(line: 316, column: 5, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 316, column: 5)
!1754 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 316, column: 5, scope: !1219)
!1757 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1755)
!1758 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1755)
!1759 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1756)
!1760 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1756)
!1761 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1756)
!1762 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1756)
!1763 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1756)
!1764 = !DILocation(line: 316, column: 5, scope: !1219)
!1765 = !{i32 -2145874154, i32 -2145874141, i32 -2145874116, i32 -2145874092, i32 -2145874067, i32 -2145873992, i32 -2145873967, i32 -2145873823, i32 -2145871282, i32 -2145871193, i32 -2145871072, i32 -2145870977, i32 -2145870876, i32 -2145870849, i32 -2145870766, i32 -2145870677, i32 -2145870556, i32 -2145870456, i32 -2145870350, i32 -2145870242, i32 -2145873531, i32 -2145873478, i32 -2145873447, i32 -2145873416, i32 -2145873395, i32 -2145873373, i32 -2145873324, i32 -2145873303, i32 -2145870159, i32 -2145870070, i32 -2145869949, i32 -2145869850, i32 -2145869744, i32 -2145869642, i32 -2145869609, i32 -2145869536, i32 -2145869468, i32 -2145872926, i32 -2145872873, i32 -2145872842, i32 -2145872811, i32 -2145872790, i32 -2145872768, i32 -2145872719, i32 -2145872698, i32 -2145869423, i32 -2145869334, i32 -2145869213, i32 -2145869114, i32 -2145869008, i32 -2145868906, i32 -2145868873, i32 -2145868790, i32 -2145868701, i32 -2145868580, i32 -2145868480, i32 -2145868454, i32 -2145868351, i32 -2145868325, i32 -2145872440, i32 -2145872373, i32 -2145872348, i32 -2145872284, i32 -2145872168, i32 -2145872143, i32 -2145872118}
!1766 = !DILocation(line: 322, column: 3, scope: !1226)
!1767 = !DILocation(line: 0, scope: !1146)
!1768 = !DILocation(line: 324, column: 23, scope: !1146)
!1769 = !DILocation(line: 324, column: 8, scope: !1146)
!1770 = !DILocation(line: 213, column: 16, scope: !2)
!1771 = !DILocation(line: 333, column: 8, scope: !1235)
!1772 = !DILocation(line: 333, column: 7, scope: !1146)
!1773 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 334, column: 4, scope: !1232)
!1775 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1774)
!1776 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1774)
!1777 = !DILocation(line: 334, column: 4, scope: !1232)
!1778 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 334, column: 4, scope: !1232)
!1780 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1779)
!1781 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1779)
!1782 = !DILocation(line: 334, column: 4, scope: !1233)
!1783 = !DILocation(line: 334, column: 4, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 334, column: 4)
!1785 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 334, column: 4, scope: !1229)
!1788 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1786)
!1789 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1786)
!1790 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1787)
!1791 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1787)
!1792 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1787)
!1793 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1787)
!1794 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1787)
!1795 = !DILocation(line: 334, column: 4, scope: !1229)
!1796 = !{i32 -2145865512, i32 -2145865499, i32 -2145865474, i32 -2145865450, i32 -2145865425, i32 -2145865350, i32 -2145865325, i32 -2145865181, i32 -2145862614, i32 -2145862525, i32 -2145862404, i32 -2145862309, i32 -2145862208, i32 -2145862181, i32 -2145862098, i32 -2145862009, i32 -2145861888, i32 -2145861788, i32 -2145861682, i32 -2145861574, i32 -2145864889, i32 -2145864836, i32 -2145864805, i32 -2145864774, i32 -2145864753, i32 -2145864731, i32 -2145864682, i32 -2145864661, i32 -2145861491, i32 -2145861402, i32 -2145861281, i32 -2145861182, i32 -2145861076, i32 -2145860974, i32 -2145860941, i32 -2145860868, i32 -2145860800, i32 -2145864284, i32 -2145864231, i32 -2145864200, i32 -2145864169, i32 -2145864148, i32 -2145864126, i32 -2145864077, i32 -2145864056, i32 -2145860755, i32 -2145860666, i32 -2145860545, i32 -2145860446, i32 -2145860340, i32 -2145860238, i32 -2145860205, i32 -2145860122, i32 -2145860033, i32 -2145859912, i32 -2145859812, i32 -2145859786, i32 -2145859683, i32 -2145859657, i32 -2145863798, i32 -2145863731, i32 -2145863706, i32 -2145863642, i32 -2145863526, i32 -2145863501, i32 -2145863476}
!1797 = !DILocation(line: 337, column: 4, scope: !1234)
!1798 = !DILocation(line: 341, column: 7, scope: !1243)
!1799 = !DILocation(line: 341, column: 7, scope: !1146)
!1800 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 342, column: 4, scope: !1240)
!1802 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1801)
!1803 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1801)
!1804 = !DILocation(line: 342, column: 4, scope: !1240)
!1805 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 342, column: 4, scope: !1240)
!1807 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1806)
!1808 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1806)
!1809 = !DILocation(line: 342, column: 4, scope: !1241)
!1810 = !DILocation(line: 170, column: 43, scope: !1375, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 342, column: 4, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 342, column: 4)
!1813 = !DILocation(line: 176, column: 1, scope: !1375, inlinedAt: !1811)
!1814 = !DILocation(line: 342, column: 4, scope: !1812)
!1815 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 342, column: 4, scope: !1237)
!1818 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1816)
!1819 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1816)
!1820 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1817)
!1821 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1817)
!1822 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1817)
!1823 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1817)
!1824 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1817)
!1825 = !DILocation(line: 342, column: 4, scope: !1237)
!1826 = !{!1827, !1286, i64 264}
!1827 = !{!"netif", !1326, i64 0, !1828, i64 8, !1828, i64 32, !1828, i64 56, !1286, i64 80, !1286, i64 152, !1286, i64 156, !1286, i64 168, !1326, i64 184, !1326, i64 192, !1326, i64 200, !1326, i64 208, !1326, i64 216, !1326, i64 224, !1326, i64 232, !1286, i64 240, !1829, i64 248, !1829, i64 250, !1829, i64 252, !1286, i64 254, !1286, i64 260, !1286, i64 261, !1286, i64 262, !1286, i64 264, !1286, i64 265, !1286, i64 266, !1326, i64 272}
!1828 = !{!"ip_addr", !1286, i64 0, !1286, i64 20}
!1829 = !{!"short", !1286, i64 0}
!1830 = !{i32 -2145856468, i32 -2145856455, i32 -2145856430, i32 -2145856406, i32 -2145856381, i32 -2145856306, i32 -2145856281, i32 -2145856137, i32 -2145856112, i32 -2145853403, i32 -2145853314, i32 -2145853193, i32 -2145853098, i32 -2145852997, i32 -2145852970, i32 -2145852887, i32 -2145852798, i32 -2145852677, i32 -2145852577, i32 -2145852471, i32 -2145852363, i32 -2145855775, i32 -2145855722, i32 -2145855691, i32 -2145855660, i32 -2145855639, i32 -2145855617, i32 -2145855568, i32 -2145855547, i32 -2145855444, i32 -2145855412, i32 -2145852280, i32 -2145852191, i32 -2145852070, i32 -2145851971, i32 -2145851865, i32 -2145851763, i32 -2145851730, i32 -2145851657, i32 -2145851589, i32 -2145855152, i32 -2145855099, i32 -2145855068, i32 -2145855037, i32 -2145855016, i32 -2145854994, i32 -2145854945, i32 -2145854924, i32 -2145851543, i32 -2145851454, i32 -2145851333, i32 -2145851234, i32 -2145851128, i32 -2145851026, i32 -2145850993, i32 -2145850910, i32 -2145850821, i32 -2145850700, i32 -2145850600, i32 -2145850574, i32 -2145850471, i32 -2145850445, i32 -2145854666, i32 -2145854641, i32 -2145854574, i32 -2145854549, i32 -2145854485, i32 -2145854369, i32 -2145854344, i32 -2145854319}
!1831 = !DILocation(line: 346, column: 4, scope: !1242)
!1832 = !DILocation(line: 348, column: 3, scope: !1242)
!1833 = !DILocation(line: 349, column: 3, scope: !1146)
!1834 = !DILocation(line: 360, column: 2, scope: !1147)
!1835 = !DILocation(line: 0, scope: !1513)
!1836 = !DILocation(line: 254, column: 40, scope: !1147)
!1837 = !DILocation(line: 254, column: 2, scope: !1147)
!1838 = distinct !{!1838, !1480, !1839}
!1839 = !DILocation(line: 360, column: 2, scope: !1148)
!1840 = !DILocation(line: 363, column: 10, scope: !2)
!1841 = !DILocalVariable(name: "a", arg: 1, scope: !1842, file: !176, line: 237, type: !174)
!1842 = distinct !DISubprogram(name: "uk_free", scope: !176, file: !176, line: 237, type: !206, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1843)
!1843 = !{!1841, !1844}
!1844 = !DILocalVariable(name: "ptr", arg: 2, scope: !1842, file: !176, line: 237, type: !53)
!1845 = !DILocation(line: 237, column: 45, scope: !1842, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 363, column: 2, scope: !2)
!1847 = !DILocation(line: 237, column: 54, scope: !1842, inlinedAt: !1846)
!1848 = !DILocalVariable(name: "a", arg: 1, scope: !1849, file: !176, line: 231, type: !174)
!1849 = distinct !DISubprogram(name: "uk_do_free", scope: !176, file: !176, line: 231, type: !206, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1850)
!1850 = !{!1848, !1851}
!1851 = !DILocalVariable(name: "ptr", arg: 2, scope: !1849, file: !176, line: 231, type: !53)
!1852 = !DILocation(line: 231, column: 48, scope: !1849, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 239, column: 2, scope: !1842, inlinedAt: !1846)
!1854 = !DILocation(line: 231, column: 57, scope: !1849, inlinedAt: !1853)
!1855 = !DILocation(line: 233, column: 2, scope: !1856, inlinedAt: !1853)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !176, line: 233, column: 2)
!1857 = distinct !DILexicalBlock(scope: !1849, file: !176, line: 233, column: 2)
!1858 = !DILocation(line: 233, column: 2, scope: !1857, inlinedAt: !1853)
!1859 = !DILocation(line: 233, column: 2, scope: !1860, inlinedAt: !1853)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !176, line: 233, column: 2)
!1861 = !DILocation(line: 234, column: 5, scope: !1849, inlinedAt: !1853)
!1862 = !DILocation(line: 234, column: 2, scope: !1849, inlinedAt: !1853)
!1863 = !DILocation(line: 235, column: 1, scope: !1849, inlinedAt: !1853)
!1864 = !DILocation(line: 240, column: 1, scope: !1842, inlinedAt: !1846)
!1865 = !DILocation(line: 366, column: 1, scope: !2)
!1866 = !DILocation(line: 365, column: 2, scope: !2)
!1867 = !DILocation(line: 170, column: 43, scope: !1375)
!1868 = !DILocation(line: 176, column: 1, scope: !1375)
!1869 = distinct !DISubprogram(name: "_lwip_init_done", scope: !3, file: !3, line: 175, type: !236, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1870)
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "arg", arg: 1, scope: !1869, file: !3, line: 175, type: !53)
!1872 = !DILocalVariable(name: "tid", scope: !1873, file: !3, line: 177, type: !73)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 177, column: 2)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 177, column: 2)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 177, column: 2)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 177, column: 2)
!1877 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 177, column: 2)
!1878 = !DILocation(line: 175, column: 35, scope: !1869)
!1879 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 177, column: 2, scope: !1876)
!1881 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1880)
!1882 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1880)
!1883 = !DILocation(line: 177, column: 2, scope: !1876)
!1884 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 177, column: 2, scope: !1876)
!1886 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1885)
!1887 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1885)
!1888 = !DILocation(line: 177, column: 2, scope: !1877)
!1889 = !DILocalVariable(name: "s", arg: 1, scope: !1890, file: !713, line: 194, type: !1893)
!1890 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !713, file: !713, line: 194, type: !1891, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1894)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!1894 = !{!1889, !1895, !1896}
!1895 = !DILocalVariable(name: "irqf", scope: !1890, file: !713, line: 196, type: !48)
!1896 = !DILocalVariable(name: "wq", scope: !1890, file: !713, line: 209, type: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!1899 = !DILocation(line: 194, column: 57, scope: !1890, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 177, column: 2, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 177, column: 2)
!1902 = !DILocation(line: 198, column: 2, scope: !1903, inlinedAt: !1900)
!1903 = distinct !DILexicalBlock(scope: !1890, file: !713, line: 198, column: 2)
!1904 = !DILocation(line: 200, column: 9, scope: !1890, inlinedAt: !1900)
!1905 = !DILocation(line: 196, column: 16, scope: !1890, inlinedAt: !1900)
!1906 = !DILocation(line: 201, column: 2, scope: !1890, inlinedAt: !1900)
!1907 = !{!1908, !1909, i64 0}
!1908 = !{!"uk_semaphore", !1909, i64 0, !1910, i64 8}
!1909 = !{!"long", !1286, i64 0}
!1910 = !{!"uk_waitq", !1326, i64 0, !1326, i64 8}
!1911 = !DILocation(line: 209, column: 28, scope: !1890, inlinedAt: !1900)
!1912 = !DILocalVariable(name: "wq", arg: 1, scope: !1913, file: !1914, line: 99, type: !1917)
!1913 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !1914, file: !1914, line: 99, type: !1915, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1918)
!1914 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1918 = !{!1912, !1919, !1920, !1921}
!1919 = !DILocalVariable(name: "flags", scope: !1913, file: !1914, line: 101, type: !48)
!1920 = !DILocalVariable(name: "curr", scope: !1913, file: !1914, line: 102, type: !88)
!1921 = !DILocalVariable(name: "tmp", scope: !1913, file: !1914, line: 102, type: !88)
!1922 = !DILocation(line: 99, column: 40, scope: !1913, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 210, column: 2, scope: !1890, inlinedAt: !1900)
!1924 = !DILocation(line: 104, column: 10, scope: !1913, inlinedAt: !1923)
!1925 = !DILocation(line: 101, column: 16, scope: !1913, inlinedAt: !1923)
!1926 = !DILocation(line: 105, column: 2, scope: !1927, inlinedAt: !1923)
!1927 = distinct !DILexicalBlock(scope: !1913, file: !1914, line: 105, column: 2)
!1928 = !{!1910, !1326, i64 0}
!1929 = !DILocation(line: 102, column: 25, scope: !1913, inlinedAt: !1923)
!1930 = !DILocation(line: 105, column: 2, scope: !1931, inlinedAt: !1923)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !1914, line: 105, column: 2)
!1932 = !{!1933, !1326, i64 16}
!1933 = !{!"uk_waitq_entry", !1285, i64 0, !1326, i64 8, !1934, i64 16}
!1934 = !{!"", !1326, i64 0}
!1935 = !DILocation(line: 102, column: 32, scope: !1913, inlinedAt: !1923)
!1936 = !DILocation(line: 106, column: 24, scope: !1931, inlinedAt: !1923)
!1937 = !{!1933, !1326, i64 8}
!1938 = !DILocation(line: 106, column: 3, scope: !1931, inlinedAt: !1923)
!1939 = distinct !{!1939, !1940, !1941}
!1940 = !DILocation(line: 105, column: 2, scope: !1927)
!1941 = !DILocation(line: 106, column: 30, scope: !1927)
!1942 = !DILocation(line: 107, column: 2, scope: !1913, inlinedAt: !1923)
!1943 = !DILocation(line: 108, column: 1, scope: !1913, inlinedAt: !1923)
!1944 = !DILocation(line: 211, column: 2, scope: !1890, inlinedAt: !1900)
!1945 = !DILocation(line: 212, column: 1, scope: !1890, inlinedAt: !1900)
!1946 = !DILocation(line: 177, column: 2, scope: !1901)
!1947 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 177, column: 2, scope: !1873)
!1950 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1948)
!1951 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1948)
!1952 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1949)
!1953 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1949)
!1954 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1949)
!1955 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1949)
!1956 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1949)
!1957 = !DILocation(line: 177, column: 2, scope: !1873)
!1958 = !{i32 -2146002254, i32 -2146002241, i32 -2146002216, i32 -2146002192, i32 -2146002167, i32 -2146002092, i32 -2146002067, i32 -2146001923, i32 -2145999701, i32 -2145999612, i32 -2145999491, i32 -2145999396, i32 -2145999295, i32 -2145999268, i32 -2145995124, i32 -2145995035, i32 -2145994914, i32 -2145994814, i32 -2145994708, i32 -2145994600, i32 -2146001635, i32 -2146001582, i32 -2146001551, i32 -2146001520, i32 -2146001499, i32 -2146001477, i32 -2146001428, i32 -2146001407, i32 -2145994517, i32 -2145994428, i32 -2145994307, i32 -2145994208, i32 -2145994102, i32 -2145994000, i32 -2145993967, i32 -2145993894, i32 -2145993826, i32 -2146001033, i32 -2146000980, i32 -2146000949, i32 -2146000918, i32 -2146000897, i32 -2146000875, i32 -2146000826, i32 -2146000805, i32 -2145993775, i32 -2145993686, i32 -2145993565, i32 -2145993466, i32 -2145993360, i32 -2145993258, i32 -2145993225, i32 -2145993142, i32 -2145993053, i32 -2145992932, i32 -2145992832, i32 -2145992806, i32 -2145992703, i32 -2145992677, i32 -2146000547, i32 -2146000480, i32 -2146000455, i32 -2146000391, i32 -2146000275, i32 -2146000250, i32 -2146000225}
!1959 = !DILocation(line: 178, column: 1, scope: !1869)
!1960 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !713, file: !713, line: 58, type: !1891, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1961)
!1961 = !{!1962, !1963, !1964, !1969, !1970, !1971}
!1962 = !DILocalVariable(name: "s", arg: 1, scope: !1960, file: !713, line: 58, type: !1893)
!1963 = !DILocalVariable(name: "irqf", scope: !1960, file: !713, line: 60, type: !48)
!1964 = !DILocalVariable(name: "__current", scope: !1965, file: !713, line: 66, type: !56)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !713, line: 65, column: 6)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !713, line: 64, column: 11)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !713, line: 64, column: 2)
!1968 = distinct !DILexicalBlock(scope: !1960, file: !713, line: 64, column: 2)
!1969 = !DILocalVariable(name: "flags", scope: !1965, file: !713, line: 67, type: !48)
!1970 = !DILocalVariable(name: "__cur", scope: !1965, file: !713, line: 68, type: !56)
!1971 = !DILocalVariable(name: "__wait", scope: !1965, file: !713, line: 68, type: !88)
!1972 = !DILocation(line: 58, column: 59, scope: !1960)
!1973 = !DILocation(line: 62, column: 2, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !713, line: 62, column: 2)
!1975 = distinct !DILexicalBlock(scope: !1960, file: !713, line: 62, column: 2)
!1976 = !DILocation(line: 62, column: 2, scope: !1975)
!1977 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 154, column: 21, scope: !1979, inlinedAt: !1985)
!1979 = distinct !DISubprogram(name: "uk_thread_current", scope: !58, file: !58, line: 151, type: !1980, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!56}
!1982 = !{!1983, !1984}
!1983 = !DILocalVariable(name: "current", scope: !1979, file: !58, line: 153, type: !55)
!1984 = !DILocalVariable(name: "sp", scope: !1979, file: !58, line: 154, type: !48)
!1985 = distinct !DILocation(line: 68, column: 4, scope: !1965)
!1986 = !DILocation(line: 62, column: 2, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1974, file: !713, line: 62, column: 2)
!1988 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1978)
!1989 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1978)
!1990 = !DILocation(line: 154, column: 16, scope: !1979, inlinedAt: !1985)
!1991 = !DILocation(line: 153, column: 21, scope: !1979, inlinedAt: !1985)
!1992 = !DILocation(line: 158, column: 2, scope: !1979, inlinedAt: !1985)
!1993 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 68, column: 4, scope: !1965)
!1996 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1994)
!1997 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1994)
!1998 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1995)
!1999 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1995)
!2000 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1995)
!2001 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1995)
!2002 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1995)
!2003 = !DILocation(line: 68, column: 4, scope: !1965)
!2004 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 154, column: 21, scope: !1979, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 68, column: 4, scope: !1965)
!2007 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !2005)
!2008 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !2005)
!2009 = !DILocation(line: 154, column: 16, scope: !1979, inlinedAt: !2006)
!2010 = !DILocation(line: 156, column: 38, scope: !1979, inlinedAt: !2006)
!2011 = !DILocation(line: 158, column: 9, scope: !1979, inlinedAt: !2006)
!2012 = !DILocation(line: 153, column: 21, scope: !1979, inlinedAt: !2006)
!2013 = !DILocation(line: 158, column: 2, scope: !1979, inlinedAt: !2006)
!2014 = !DILocation(line: 69, column: 11, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1965, file: !713, line: 69, column: 8)
!2016 = !DILocation(line: 69, column: 17, scope: !2015)
!2017 = !DILocation(line: 69, column: 8, scope: !1965)
!2018 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 154, column: 21, scope: !1979, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 72, column: 17, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !713, line: 71, column: 13)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !713, line: 71, column: 4)
!2023 = distinct !DILexicalBlock(scope: !1965, file: !713, line: 71, column: 4)
!2024 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !2019)
!2025 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !2019)
!2026 = !DILocation(line: 154, column: 16, scope: !1979, inlinedAt: !2020)
!2027 = !DILocation(line: 156, column: 38, scope: !1979, inlinedAt: !2020)
!2028 = !DILocation(line: 156, column: 12, scope: !1979, inlinedAt: !2020)
!2029 = !DILocation(line: 153, column: 21, scope: !1979, inlinedAt: !2020)
!2030 = !DILocation(line: 158, column: 9, scope: !1979, inlinedAt: !2020)
!2031 = !DILocation(line: 158, column: 2, scope: !1979, inlinedAt: !2020)
!2032 = !DILocation(line: 66, column: 22, scope: !1965)
!2033 = !DILocation(line: 74, column: 13, scope: !2021)
!2034 = !DILocation(line: 67, column: 18, scope: !1965)
!2035 = !DILocalVariable(name: "wq", arg: 1, scope: !2036, file: !1914, line: 58, type: !1917)
!2036 = distinct !DISubprogram(name: "uk_waitq_add", scope: !1914, file: !1914, line: 58, type: !2037, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !1917, !88}
!2039 = !{!2035, !2040}
!2040 = !DILocalVariable(name: "entry", arg: 2, scope: !2036, file: !1914, line: 59, type: !88)
!2041 = !DILocation(line: 58, column: 36, scope: !2036, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 75, column: 5, scope: !2021)
!2043 = !DILocation(line: 59, column: 26, scope: !2036, inlinedAt: !2042)
!2044 = !DILocation(line: 61, column: 14, scope: !2045, inlinedAt: !2042)
!2045 = distinct !DILexicalBlock(scope: !2036, file: !1914, line: 61, column: 6)
!2046 = !{!1933, !1285, i64 0}
!2047 = !DILocation(line: 61, column: 7, scope: !2045, inlinedAt: !2042)
!2048 = !DILocation(line: 61, column: 6, scope: !2036, inlinedAt: !2042)
!2049 = !DILocation(line: 62, column: 3, scope: !2050, inlinedAt: !2042)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1914, line: 62, column: 3)
!2051 = distinct !DILexicalBlock(scope: !2045, file: !1914, line: 61, column: 23)
!2052 = !{!1910, !1326, i64 8}
!2053 = !DILocation(line: 63, column: 18, scope: !2051, inlinedAt: !2042)
!2054 = !DILocation(line: 64, column: 2, scope: !2051, inlinedAt: !2042)
!2055 = !DILocation(line: 65, column: 1, scope: !2036, inlinedAt: !2042)
!2056 = !DILocalVariable(name: "thread", arg: 1, scope: !2057, file: !58, line: 122, type: !56)
!2057 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !58, file: !58, line: 122, type: !2058, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !56, !76}
!2060 = !{!2056, !2061}
!2061 = !DILocalVariable(name: "time", arg: 2, scope: !2057, file: !58, line: 122, type: !76)
!2062 = !DILocation(line: 122, column: 64, scope: !2057, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 76, column: 5, scope: !2021)
!2064 = !DILocation(line: 122, column: 80, scope: !2057, inlinedAt: !2063)
!2065 = !DILocation(line: 124, column: 10, scope: !2057, inlinedAt: !2063)
!2066 = !DILocation(line: 124, column: 22, scope: !2057, inlinedAt: !2063)
!2067 = !{!2068, !1909, i64 56}
!2068 = !{!"uk_thread", !1326, i64 0, !1326, i64 8, !1326, i64 16, !1326, i64 24, !2069, i64 32, !1285, i64 48, !1909, i64 56, !2070, i64 64, !1910, i64 72, !1326, i64 88, !1326, i64 96, !1285, i64 104, !1326, i64 112, !1326, i64 120}
!2069 = !{!"", !1326, i64 0, !1326, i64 8}
!2070 = !{!"_Bool", !1286, i64 0}
!2071 = !DILocation(line: 125, column: 1, scope: !2057, inlinedAt: !2063)
!2072 = !DILocalVariable(name: "thread", arg: 1, scope: !2073, file: !58, line: 183, type: !56)
!2073 = distinct !DISubprogram(name: "clear_runnable", scope: !58, file: !58, line: 183, type: !2074, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !56}
!2076 = !{!2072}
!2077 = !DILocation(line: 183, column: 53, scope: !2073, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 79, column: 5, scope: !2021)
!2079 = !DILocation(line: 185, column: 10, scope: !2073, inlinedAt: !2078)
!2080 = !DILocation(line: 185, column: 16, scope: !2073, inlinedAt: !2078)
!2081 = !{!2068, !1285, i64 48}
!2082 = !DILocation(line: 186, column: 1, scope: !2073, inlinedAt: !2078)
!2083 = !DILocalVariable(name: "t", arg: 1, scope: !2084, file: !102, line: 151, type: !56)
!2084 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !102, file: !102, line: 151, type: !2074, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2085)
!2085 = !{!2083}
!2086 = !DILocation(line: 151, column: 62, scope: !2084, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 81, column: 5, scope: !2021)
!2088 = !DILocation(line: 153, column: 2, scope: !2089, inlinedAt: !2087)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !102, line: 153, column: 2)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !102, line: 153, column: 2)
!2091 = !DILocation(line: 153, column: 2, scope: !2090, inlinedAt: !2087)
!2092 = !DILocation(line: 153, column: 2, scope: !2093, inlinedAt: !2087)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !102, line: 153, column: 2)
!2094 = !DILocation(line: 154, column: 6, scope: !2084, inlinedAt: !2087)
!2095 = !{!2068, !1326, i64 88}
!2096 = !DILocation(line: 154, column: 14, scope: !2084, inlinedAt: !2087)
!2097 = !{!2098, !1326, i64 24}
!2098 = !{!"uk_sched", !1326, i64 0, !1326, i64 8, !1326, i64 16, !1326, i64 24, !1326, i64 32, !1326, i64 40, !1326, i64 48, !1326, i64 56, !1326, i64 64, !2070, i64 72, !2068, i64 80, !2099, i64 208, !2100, i64 224, !1326, i64 248, !1326, i64 256, !1326, i64 264}
!2099 = !{!"uk_thread_list", !1326, i64 0, !1326, i64 8}
!2100 = !{!"ukplat_ctx_callbacks", !1326, i64 0, !1326, i64 8, !1326, i64 16}
!2101 = !DILocation(line: 154, column: 2, scope: !2084, inlinedAt: !2087)
!2102 = !DILocation(line: 155, column: 1, scope: !2084, inlinedAt: !2087)
!2103 = !DILocation(line: 83, column: 5, scope: !2021)
!2104 = !DILocation(line: 84, column: 12, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2021, file: !713, line: 84, column: 9)
!2106 = !DILocation(line: 84, column: 18, scope: !2105)
!2107 = !DILocation(line: 84, column: 9, scope: !2021)
!2108 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 154, column: 21, scope: !1979, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 117, column: 30, scope: !2111, inlinedAt: !2115)
!2111 = distinct !DISubprogram(name: "uk_sched_yield", scope: !102, file: !102, line: 114, type: !434, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2112)
!2112 = !{!2113, !2114}
!2113 = !DILocalVariable(name: "s", scope: !2111, file: !102, line: 116, type: !100)
!2114 = !DILocalVariable(name: "current", scope: !2111, file: !102, line: 117, type: !56)
!2115 = distinct !DILocation(line: 86, column: 5, scope: !2021)
!2116 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !2109)
!2117 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !2109)
!2118 = !DILocation(line: 154, column: 16, scope: !1979, inlinedAt: !2110)
!2119 = !DILocation(line: 156, column: 38, scope: !1979, inlinedAt: !2110)
!2120 = !DILocation(line: 156, column: 12, scope: !1979, inlinedAt: !2110)
!2121 = !DILocation(line: 153, column: 21, scope: !1979, inlinedAt: !2110)
!2122 = !DILocation(line: 158, column: 9, scope: !1979, inlinedAt: !2110)
!2123 = !DILocation(line: 158, column: 2, scope: !1979, inlinedAt: !2110)
!2124 = !DILocation(line: 117, column: 20, scope: !2111, inlinedAt: !2115)
!2125 = !DILocation(line: 119, column: 2, scope: !2126, inlinedAt: !2115)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !102, line: 119, column: 2)
!2127 = distinct !DILexicalBlock(scope: !2111, file: !102, line: 119, column: 2)
!2128 = !DILocation(line: 119, column: 2, scope: !2127, inlinedAt: !2115)
!2129 = !DILocation(line: 119, column: 2, scope: !2130, inlinedAt: !2115)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !102, line: 119, column: 2)
!2131 = !DILocation(line: 121, column: 15, scope: !2111, inlinedAt: !2115)
!2132 = !DILocation(line: 116, column: 19, scope: !2111, inlinedAt: !2115)
!2133 = !DILocation(line: 122, column: 2, scope: !2134, inlinedAt: !2115)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !102, line: 122, column: 2)
!2135 = distinct !DILexicalBlock(scope: !2111, file: !102, line: 122, column: 2)
!2136 = !DILocation(line: 122, column: 2, scope: !2135, inlinedAt: !2115)
!2137 = !DILocation(line: 122, column: 2, scope: !2138, inlinedAt: !2115)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !102, line: 122, column: 2)
!2139 = !DILocation(line: 123, column: 5, scope: !2111, inlinedAt: !2115)
!2140 = !{!2098, !1326, i64 0}
!2141 = !DILocation(line: 123, column: 2, scope: !2111, inlinedAt: !2115)
!2142 = !DILocation(line: 124, column: 1, scope: !2111, inlinedAt: !2115)
!2143 = !DILocation(line: 71, column: 4, scope: !2022)
!2144 = distinct !{!2144, !2145, !2146}
!2145 = !DILocation(line: 71, column: 4, scope: !2023)
!2146 = !DILocation(line: 87, column: 4, scope: !2023)
!2147 = !DILocation(line: 88, column: 12, scope: !1965)
!2148 = !DILocation(line: 90, column: 4, scope: !1965)
!2149 = !DILocalVariable(name: "wq", arg: 1, scope: !2150, file: !1914, line: 68, type: !1917)
!2150 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !1914, file: !1914, line: 68, type: !2037, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2151)
!2151 = !{!2149, !2152, !2153}
!2152 = !DILocalVariable(name: "entry", arg: 2, scope: !2150, file: !1914, line: 69, type: !88)
!2153 = !DILocalVariable(name: "curelm", scope: !2154, file: !1914, line: 72, type: !88)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1914, line: 72, column: 3)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !1914, line: 72, column: 3)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !1914, line: 72, column: 3)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !1914, line: 71, column: 22)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !1914, line: 71, column: 6)
!2159 = !DILocation(line: 68, column: 39, scope: !2150, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 91, column: 4, scope: !1965)
!2161 = !DILocation(line: 69, column: 26, scope: !2150, inlinedAt: !2160)
!2162 = !DILocation(line: 71, column: 13, scope: !2158, inlinedAt: !2160)
!2163 = !DILocation(line: 71, column: 6, scope: !2158, inlinedAt: !2160)
!2164 = !DILocation(line: 71, column: 6, scope: !2150, inlinedAt: !2160)
!2165 = !DILocation(line: 72, column: 3, scope: !2155, inlinedAt: !2160)
!2166 = !DILocation(line: 72, column: 3, scope: !2156, inlinedAt: !2160)
!2167 = !DILocation(line: 72, column: 3, scope: !2168, inlinedAt: !2160)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !1914, line: 72, column: 3)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !1914, line: 72, column: 3)
!2170 = distinct !DILexicalBlock(scope: !2155, file: !1914, line: 72, column: 3)
!2171 = !DILocation(line: 72, column: 3, scope: !2169, inlinedAt: !2160)
!2172 = !DILocation(line: 72, column: 3, scope: !2154, inlinedAt: !2160)
!2173 = distinct !{!2173, !2174, !2174}
!2174 = !DILocation(line: 72, column: 3, scope: !2154)
!2175 = !DILocation(line: 72, column: 3, scope: !2176, inlinedAt: !2160)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !1914, line: 72, column: 3)
!2177 = distinct !DILexicalBlock(scope: !2154, file: !1914, line: 72, column: 3)
!2178 = !DILocation(line: 72, column: 3, scope: !2177, inlinedAt: !2160)
!2179 = !DILocation(line: 73, column: 18, scope: !2157, inlinedAt: !2160)
!2180 = !DILocation(line: 74, column: 2, scope: !2157, inlinedAt: !2160)
!2181 = !DILocation(line: 75, column: 1, scope: !2150, inlinedAt: !2160)
!2182 = !DILocation(line: 92, column: 4, scope: !1965)
!2183 = !DILocation(line: 93, column: 3, scope: !1966)
!2184 = !DILocation(line: 0, scope: !2015)
!2185 = !DILocation(line: 95, column: 10, scope: !1966)
!2186 = !DILocation(line: 60, column: 16, scope: !1960)
!2187 = !DILocation(line: 96, column: 10, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1966, file: !713, line: 96, column: 7)
!2189 = !DILocation(line: 96, column: 16, scope: !2188)
!2190 = !DILocation(line: 96, column: 7, scope: !1966)
!2191 = !DILocation(line: 98, column: 3, scope: !1966)
!2192 = !DILocation(line: 64, column: 2, scope: !1967)
!2193 = distinct !{!2193, !2194, !2195}
!2194 = !DILocation(line: 64, column: 2, scope: !1968)
!2195 = !DILocation(line: 99, column: 2, scope: !1968)
!2196 = !DILocation(line: 100, column: 2, scope: !1960)
!2197 = !DILocation(line: 104, column: 2, scope: !1960)
!2198 = !DILocation(line: 105, column: 1, scope: !1960)
!2199 = !DILocation(line: 61, column: 47, scope: !743)
!2200 = !{!1829, !1829, i64 0}
!2201 = !DILocation(line: 61, column: 70, scope: !743)
!2202 = !DILocation(line: 62, column: 38, scope: !743)
!2203 = !DILocation(line: 64, column: 2, scope: !743)
!2204 = !DILocation(line: 64, column: 7, scope: !743)
!2205 = !DILocation(line: 65, column: 2, scope: !743)
!2206 = !DILocation(line: 65, column: 8, scope: !743)
!2207 = !DILocation(line: 65, column: 38, scope: !743)
!2208 = !DILocation(line: 65, column: 66, scope: !743)
!2209 = !DILocation(line: 65, column: 28, scope: !743)
!2210 = !DILocation(line: 66, column: 2, scope: !743)
!2211 = !DILocation(line: 66, column: 7, scope: !743)
!2212 = !DILocation(line: 67, column: 2, scope: !743)
!2213 = !DILocation(line: 67, column: 8, scope: !743)
!2214 = !DILocation(line: 67, column: 38, scope: !743)
!2215 = !DILocation(line: 67, column: 66, scope: !743)
!2216 = !DILocation(line: 67, column: 28, scope: !743)
!2217 = !DILocation(line: 68, column: 2, scope: !743)
!2218 = !DILocation(line: 68, column: 7, scope: !743)
!2219 = !DILocation(line: 69, column: 2, scope: !743)
!2220 = !DILocation(line: 69, column: 8, scope: !743)
!2221 = !DILocation(line: 69, column: 36, scope: !743)
!2222 = !DILocation(line: 69, column: 62, scope: !743)
!2223 = !DILocation(line: 69, column: 26, scope: !743)
!2224 = !DILocation(line: 71, column: 6, scope: !764)
!2225 = !DILocation(line: 71, column: 13, scope: !764)
!2226 = !DILocation(line: 71, column: 6, scope: !743)
!2227 = !DILocation(line: 72, column: 3, scope: !763)
!2228 = !DILocation(line: 72, column: 3, scope: !761)
!2229 = !DILocation(line: 72, column: 3, scope: !762)
!2230 = !DILocation(line: 72, column: 3, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 72, column: 3)
!2232 = distinct !DILexicalBlock(scope: !761, file: !3, line: 72, column: 3)
!2233 = !DILocation(line: 72, column: 3, scope: !2232)
!2234 = !DILocation(line: 72, column: 3, scope: !760)
!2235 = !DILocation(line: 72, column: 3, scope: !759)
!2236 = !DILocation(line: 72, column: 3, scope: !758)
!2237 = !{!1909, !1909, i64 0}
!2238 = !DILocation(line: 72, column: 3, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !758, file: !3, line: 72, column: 3)
!2240 = !{i32 -2146067907, i32 -2146067894, i32 -2146067869, i32 -2146067845, i32 -2146067820, i32 -2146067745, i32 -2146067720, i32 -2146067576, i32 -2146067551, i32 -2146064888, i32 -2146064799, i32 -2146064678, i32 -2146064583, i32 -2146064482, i32 -2146064455, i32 -2146064372, i32 -2146064283, i32 -2146064162, i32 -2146064062, i32 -2146063956, i32 -2146063848, i32 -2146067214, i32 -2146067161, i32 -2146067130, i32 -2146067099, i32 -2146067078, i32 -2146067056, i32 -2146067007, i32 -2146066986, i32 -2146066883, i32 -2146066851, i32 -2146063765, i32 -2146063676, i32 -2146063555, i32 -2146063456, i32 -2146063350, i32 -2146063248, i32 -2146063215, i32 -2146063142, i32 -2146063074, i32 -2146066591, i32 -2146066538, i32 -2146066507, i32 -2146066476, i32 -2146066455, i32 -2146066433, i32 -2146066384, i32 -2146066363, i32 -2146063032, i32 -2146062943, i32 -2146062822, i32 -2146062723, i32 -2146062617, i32 -2146062515, i32 -2146062482, i32 -2146062399, i32 -2146062310, i32 -2146062189, i32 -2146062089, i32 -2146062063, i32 -2146061960, i32 -2146061934, i32 -2146066105, i32 -2146066080, i32 -2146066013, i32 -2146065988, i32 -2146065924, i32 -2146065808, i32 -2146065783, i32 -2146065758}
!2241 = !DILocation(line: 75, column: 2, scope: !763)
!2242 = !DILocation(line: 76, column: 6, scope: !774)
!2243 = !DILocation(line: 76, column: 13, scope: !774)
!2244 = !DILocation(line: 76, column: 6, scope: !743)
!2245 = !DILocation(line: 77, column: 3, scope: !773)
!2246 = !DILocation(line: 77, column: 3, scope: !771)
!2247 = !DILocation(line: 77, column: 3, scope: !772)
!2248 = !DILocation(line: 77, column: 3, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 77, column: 3)
!2250 = distinct !DILexicalBlock(scope: !771, file: !3, line: 77, column: 3)
!2251 = !DILocation(line: 77, column: 3, scope: !2250)
!2252 = !DILocation(line: 77, column: 3, scope: !770)
!2253 = !DILocation(line: 77, column: 3, scope: !769)
!2254 = !DILocation(line: 77, column: 3, scope: !768)
!2255 = !DILocation(line: 77, column: 3, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !768, file: !3, line: 77, column: 3)
!2257 = !{i32 -2146058947, i32 -2146058934, i32 -2146058909, i32 -2146058885, i32 -2146058860, i32 -2146058785, i32 -2146058760, i32 -2146058616, i32 -2146058591, i32 -2146055924, i32 -2146055835, i32 -2146055714, i32 -2146055619, i32 -2146055518, i32 -2146055491, i32 -2146055408, i32 -2146055319, i32 -2146055198, i32 -2146055098, i32 -2146054992, i32 -2146054884, i32 -2146058254, i32 -2146058201, i32 -2146058170, i32 -2146058139, i32 -2146058118, i32 -2146058096, i32 -2146058047, i32 -2146058026, i32 -2146057923, i32 -2146057891, i32 -2146054801, i32 -2146054712, i32 -2146054591, i32 -2146054492, i32 -2146054386, i32 -2146054284, i32 -2146054251, i32 -2146054178, i32 -2146054110, i32 -2146057631, i32 -2146057578, i32 -2146057547, i32 -2146057516, i32 -2146057495, i32 -2146057473, i32 -2146057424, i32 -2146057403, i32 -2146054068, i32 -2146053979, i32 -2146053858, i32 -2146053759, i32 -2146053653, i32 -2146053551, i32 -2146053518, i32 -2146053435, i32 -2146053346, i32 -2146053225, i32 -2146053125, i32 -2146053099, i32 -2146052996, i32 -2146052970, i32 -2146057145, i32 -2146057120, i32 -2146057053, i32 -2146057028, i32 -2146056964, i32 -2146056848, i32 -2146056823, i32 -2146056798}
!2258 = !DILocation(line: 80, column: 2, scope: !773)
!2259 = !DILocation(line: 81, column: 6, scope: !779)
!2260 = !DILocation(line: 81, column: 13, scope: !779)
!2261 = !DILocation(line: 81, column: 6, scope: !743)
!2262 = !DILocation(line: 82, column: 3, scope: !778)
!2263 = !DILocation(line: 82, column: 9, scope: !778)
!2264 = !DILocation(line: 82, column: 17, scope: !778)
!2265 = !DILocation(line: 82, column: 23, scope: !778)
!2266 = !DILocation(line: 82, column: 36, scope: !778)
!2267 = !DILocation(line: 82, column: 44, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !778, file: !3, line: 82, column: 44)
!2269 = !DILocation(line: 82, column: 74, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !778, file: !3, line: 82, column: 74)
!2271 = !DILocation(line: 83, column: 3, scope: !778)
!2272 = !DILocation(line: 83, column: 3, scope: !784)
!2273 = !DILocation(line: 83, column: 3, scope: !785)
!2274 = !DILocation(line: 83, column: 3, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 83, column: 3)
!2276 = distinct !DILexicalBlock(scope: !784, file: !3, line: 83, column: 3)
!2277 = !DILocation(line: 83, column: 3, scope: !2276)
!2278 = !DILocation(line: 83, column: 3, scope: !783)
!2279 = !DILocation(line: 83, column: 3, scope: !782)
!2280 = !DILocation(line: 83, column: 3, scope: !781)
!2281 = !DILocation(line: 83, column: 3, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !781, file: !3, line: 83, column: 3)
!2283 = !{i32 -2146049598, i32 -2146049585, i32 -2146049560, i32 -2146049536, i32 -2146049511, i32 -2146049436, i32 -2146049411, i32 -2146049267, i32 -2146049242, i32 -2146046501, i32 -2146046412, i32 -2146046291, i32 -2146046196, i32 -2146046095, i32 -2146046068, i32 -2146045985, i32 -2146045896, i32 -2146045775, i32 -2146045675, i32 -2146045569, i32 -2146045461, i32 -2146048866, i32 -2146048813, i32 -2146048782, i32 -2146048751, i32 -2146048730, i32 -2146048708, i32 -2146048659, i32 -2146048638, i32 -2146048535, i32 -2146048503, i32 -2146045378, i32 -2146045289, i32 -2146045168, i32 -2146045069, i32 -2146044963, i32 -2146044861, i32 -2146044828, i32 -2146044755, i32 -2146044687, i32 -2146048243, i32 -2146048190, i32 -2146048159, i32 -2146048128, i32 -2146048107, i32 -2146048085, i32 -2146048036, i32 -2146048015, i32 -2146044645, i32 -2146044556, i32 -2146044435, i32 -2146044336, i32 -2146044230, i32 -2146044128, i32 -2146044095, i32 -2146044012, i32 -2146043923, i32 -2146043802, i32 -2146043702, i32 -2146043676, i32 -2146043573, i32 -2146043547, i32 -2146047757, i32 -2146047732, i32 -2146047665, i32 -2146047640, i32 -2146047576, i32 -2146047460, i32 -2146047435, i32 -2146047410}
!2284 = !DILocation(line: 86, column: 2, scope: !779)
!2285 = !DILocation(line: 86, column: 2, scope: !778)
!2286 = !DILocation(line: 87, column: 6, scope: !791)
!2287 = !DILocation(line: 87, column: 13, scope: !791)
!2288 = !DILocation(line: 87, column: 6, scope: !743)
!2289 = !DILocation(line: 88, column: 3, scope: !790)
!2290 = !DILocation(line: 88, column: 9, scope: !790)
!2291 = !DILocation(line: 88, column: 17, scope: !790)
!2292 = !DILocation(line: 88, column: 23, scope: !790)
!2293 = !DILocation(line: 88, column: 36, scope: !790)
!2294 = !DILocation(line: 88, column: 44, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !790, file: !3, line: 88, column: 44)
!2296 = !DILocation(line: 88, column: 74, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !790, file: !3, line: 88, column: 74)
!2298 = !DILocation(line: 89, column: 3, scope: !790)
!2299 = !DILocation(line: 89, column: 3, scope: !796)
!2300 = !DILocation(line: 89, column: 3, scope: !797)
!2301 = !DILocation(line: 89, column: 3, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 89, column: 3)
!2303 = distinct !DILexicalBlock(scope: !796, file: !3, line: 89, column: 3)
!2304 = !DILocation(line: 89, column: 3, scope: !2303)
!2305 = !DILocation(line: 89, column: 3, scope: !795)
!2306 = !DILocation(line: 89, column: 3, scope: !794)
!2307 = !DILocation(line: 89, column: 3, scope: !793)
!2308 = !DILocation(line: 89, column: 3, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !793, file: !3, line: 89, column: 3)
!2310 = !{i32 -2146040140, i32 -2146040127, i32 -2146040102, i32 -2146040078, i32 -2146040053, i32 -2146039978, i32 -2146039953, i32 -2146039809, i32 -2146039784, i32 -2146037033, i32 -2146036944, i32 -2146036823, i32 -2146036728, i32 -2146036627, i32 -2146036600, i32 -2146036517, i32 -2146036428, i32 -2146036307, i32 -2146036207, i32 -2146036101, i32 -2146035993, i32 -2146039408, i32 -2146039355, i32 -2146039324, i32 -2146039293, i32 -2146039272, i32 -2146039250, i32 -2146039201, i32 -2146039180, i32 -2146039077, i32 -2146039045, i32 -2146035910, i32 -2146035821, i32 -2146035700, i32 -2146035601, i32 -2146035495, i32 -2146035393, i32 -2146035360, i32 -2146035287, i32 -2146035219, i32 -2146038785, i32 -2146038732, i32 -2146038701, i32 -2146038670, i32 -2146038649, i32 -2146038627, i32 -2146038578, i32 -2146038557, i32 -2146035177, i32 -2146035088, i32 -2146034967, i32 -2146034868, i32 -2146034762, i32 -2146034660, i32 -2146034627, i32 -2146034544, i32 -2146034455, i32 -2146034334, i32 -2146034234, i32 -2146034208, i32 -2146034105, i32 -2146034079, i32 -2146038299, i32 -2146038274, i32 -2146038207, i32 -2146038182, i32 -2146038118, i32 -2146038002, i32 -2146037977, i32 -2146037952}
!2311 = !DILocation(line: 92, column: 2, scope: !791)
!2312 = !DILocation(line: 92, column: 2, scope: !790)
!2313 = !DILocation(line: 95, column: 7, scope: !808)
!2314 = !DILocation(line: 95, column: 14, scope: !808)
!2315 = !DILocation(line: 96, column: 6, scope: !808)
!2316 = !DILocation(line: 96, column: 10, scope: !808)
!2317 = !DILocation(line: 96, column: 17, scope: !808)
!2318 = !DILocation(line: 97, column: 6, scope: !808)
!2319 = !DILocation(line: 97, column: 10, scope: !808)
!2320 = !DILocation(line: 97, column: 17, scope: !808)
!2321 = !DILocation(line: 98, column: 6, scope: !808)
!2322 = !DILocation(line: 98, column: 10, scope: !808)
!2323 = !DILocation(line: 98, column: 17, scope: !808)
!2324 = !DILocation(line: 95, column: 6, scope: !743)
!2325 = !DILocation(line: 99, column: 18, scope: !807)
!2326 = !DILocation(line: 99, column: 22, scope: !807)
!2327 = !DILocation(line: 99, column: 31, scope: !807)
!2328 = !DILocation(line: 99, column: 3, scope: !807)
!2329 = !DILocation(line: 101, column: 18, scope: !807)
!2330 = !DILocation(line: 101, column: 22, scope: !807)
!2331 = !DILocation(line: 101, column: 31, scope: !807)
!2332 = !DILocation(line: 101, column: 3, scope: !807)
!2333 = !DILocation(line: 103, column: 18, scope: !807)
!2334 = !DILocation(line: 103, column: 22, scope: !807)
!2335 = !DILocation(line: 103, column: 31, scope: !807)
!2336 = !DILocation(line: 103, column: 3, scope: !807)
!2337 = !DILocation(line: 112, column: 3, scope: !807)
!2338 = !DILocation(line: 112, column: 3, scope: !805)
!2339 = !DILocation(line: 112, column: 3, scope: !806)
!2340 = !DILocation(line: 112, column: 3, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 112, column: 3)
!2342 = distinct !DILexicalBlock(scope: !805, file: !3, line: 112, column: 3)
!2343 = !DILocation(line: 112, column: 3, scope: !2342)
!2344 = !DILocation(line: 112, column: 3, scope: !804)
!2345 = !DILocation(line: 112, column: 3, scope: !803)
!2346 = !DILocation(line: 112, column: 3, scope: !802)
!2347 = !DILocation(line: 112, column: 3, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !802, file: !3, line: 112, column: 3)
!2349 = !{i32 -2146030526, i32 -2146030513, i32 -2146030488, i32 -2146030464, i32 -2146030439, i32 -2146030364, i32 -2146030339, i32 -2146030195, i32 -2146030170, i32 -2146027337, i32 -2146027248, i32 -2146027127, i32 -2146027032, i32 -2146026931, i32 -2146026904, i32 -2146026821, i32 -2146026732, i32 -2146026611, i32 -2146026511, i32 -2146026405, i32 -2146026297, i32 -2146029789, i32 -2146029736, i32 -2146029705, i32 -2146029674, i32 -2146029653, i32 -2146029631, i32 -2146029582, i32 -2146029561, i32 -2146029458, i32 -2146029426, i32 -2146026214, i32 -2146026125, i32 -2146026004, i32 -2146025905, i32 -2146025799, i32 -2146025697, i32 -2146025664, i32 -2146025591, i32 -2146025523, i32 -2146029166, i32 -2146029113, i32 -2146029082, i32 -2146029051, i32 -2146029030, i32 -2146029008, i32 -2146028959, i32 -2146028938, i32 -2146025481, i32 -2146025392, i32 -2146025271, i32 -2146025172, i32 -2146025066, i32 -2146024964, i32 -2146024931, i32 -2146024848, i32 -2146024759, i32 -2146024638, i32 -2146024538, i32 -2146024512, i32 -2146024409, i32 -2146024383, i32 -2146028680, i32 -2146028655, i32 -2146028588, i32 -2146028563, i32 -2146028499, i32 -2146028383, i32 -2146028358, i32 -2146028333}
!2350 = !DILocation(line: 116, column: 2, scope: !807)
!2351 = !DILocation(line: 120, column: 6, scope: !820)
!2352 = !DILocation(line: 120, column: 13, scope: !820)
!2353 = !DILocation(line: 120, column: 6, scope: !743)
!2354 = !DILocation(line: 129, column: 3, scope: !819)
!2355 = !DILocation(line: 129, column: 3, scope: !817)
!2356 = !DILocation(line: 129, column: 3, scope: !818)
!2357 = !DILocation(line: 129, column: 3, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 129, column: 3)
!2359 = distinct !DILexicalBlock(scope: !817, file: !3, line: 129, column: 3)
!2360 = !DILocation(line: 129, column: 3, scope: !2359)
!2361 = !DILocation(line: 129, column: 3, scope: !816)
!2362 = !DILocation(line: 129, column: 3, scope: !815)
!2363 = !DILocation(line: 129, column: 3, scope: !814)
!2364 = !DILocation(line: 129, column: 3, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !814, file: !3, line: 129, column: 3)
!2366 = !{i32 -2146020561, i32 -2146020548, i32 -2146020523, i32 -2146020499, i32 -2146020474, i32 -2146020399, i32 -2146020374, i32 -2146020230, i32 -2146020205, i32 -2146017336, i32 -2146017247, i32 -2146017126, i32 -2146017031, i32 -2146016930, i32 -2146016903, i32 -2146016820, i32 -2146016731, i32 -2146016610, i32 -2146016510, i32 -2146016404, i32 -2146016296, i32 -2146019824, i32 -2146019771, i32 -2146019740, i32 -2146019709, i32 -2146019688, i32 -2146019666, i32 -2146019617, i32 -2146019596, i32 -2146019493, i32 -2146019461, i32 -2146016213, i32 -2146016124, i32 -2146016003, i32 -2146015904, i32 -2146015798, i32 -2146015696, i32 -2146015663, i32 -2146015590, i32 -2146015522, i32 -2146019201, i32 -2146019148, i32 -2146019117, i32 -2146019086, i32 -2146019065, i32 -2146019043, i32 -2146018994, i32 -2146018973, i32 -2146015480, i32 -2146015391, i32 -2146015270, i32 -2146015171, i32 -2146015065, i32 -2146014963, i32 -2146014930, i32 -2146014847, i32 -2146014758, i32 -2146014637, i32 -2146014537, i32 -2146014511, i32 -2146014408, i32 -2146014382, i32 -2146018715, i32 -2146018690, i32 -2146018623, i32 -2146018598, i32 -2146018534, i32 -2146018418, i32 -2146018393, i32 -2146018368}
!2367 = !DILocation(line: 134, column: 2, scope: !819)
!2368 = !DILocation(line: 135, column: 6, scope: !832)
!2369 = !DILocation(line: 135, column: 13, scope: !832)
!2370 = !DILocation(line: 135, column: 6, scope: !743)
!2371 = !DILocation(line: 146, column: 3, scope: !831)
!2372 = !DILocation(line: 146, column: 3, scope: !829)
!2373 = !DILocation(line: 146, column: 3, scope: !830)
!2374 = !DILocation(line: 146, column: 3, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 146, column: 3)
!2376 = distinct !DILexicalBlock(scope: !829, file: !3, line: 146, column: 3)
!2377 = !DILocation(line: 146, column: 3, scope: !2376)
!2378 = !DILocation(line: 146, column: 3, scope: !828)
!2379 = !DILocation(line: 146, column: 3, scope: !827)
!2380 = !DILocation(line: 146, column: 3, scope: !826)
!2381 = !DILocation(line: 146, column: 3, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !826, file: !3, line: 146, column: 3)
!2383 = !{i32 -2146010472, i32 -2146010459, i32 -2146010434, i32 -2146010410, i32 -2146010385, i32 -2146010310, i32 -2146010285, i32 -2146010141, i32 -2146010116, i32 -2146007232, i32 -2146007143, i32 -2146007022, i32 -2146006927, i32 -2146006826, i32 -2146006799, i32 -2146006716, i32 -2146006627, i32 -2146006506, i32 -2146006406, i32 -2146006300, i32 -2146006192, i32 -2146009735, i32 -2146009682, i32 -2146009651, i32 -2146009620, i32 -2146009599, i32 -2146009577, i32 -2146009528, i32 -2146009507, i32 -2146009404, i32 -2146009372, i32 -2146006109, i32 -2146006020, i32 -2146005899, i32 -2146005800, i32 -2146005694, i32 -2146005592, i32 -2146005559, i32 -2146005486, i32 -2146005418, i32 -2146009112, i32 -2146009059, i32 -2146009028, i32 -2146008997, i32 -2146008976, i32 -2146008954, i32 -2146008905, i32 -2146008884, i32 -2146005376, i32 -2146005287, i32 -2146005166, i32 -2146005067, i32 -2146004961, i32 -2146004859, i32 -2146004826, i32 -2146004743, i32 -2146004654, i32 -2146004533, i32 -2146004433, i32 -2146004407, i32 -2146004304, i32 -2146004278, i32 -2146008626, i32 -2146008601, i32 -2146008534, i32 -2146008509, i32 -2146008445, i32 -2146008329, i32 -2146008304, i32 -2146008279}
!2384 = !DILocation(line: 151, column: 2, scope: !831)
!2385 = !DILocation(line: 153, column: 1, scope: !743)
!2386 = distinct !DISubprogram(name: "uk_netdev_einfo_get_with_copy", scope: !3, file: !3, line: 184, type: !2387, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2390)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !892, !23, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "dev", arg: 1, scope: !2386, file: !3, line: 184, type: !892)
!2392 = !DILocalVariable(name: "einfo", arg: 2, scope: !2386, file: !3, line: 185, type: !23)
!2393 = !DILocalVariable(name: "strcfg", arg: 3, scope: !2386, file: !3, line: 185, type: !2389)
!2394 = !DILocalVariable(name: "_tmp", scope: !2386, file: !3, line: 187, type: !280)
!2395 = !DILocation(line: 184, column: 54, scope: !2386)
!2396 = !DILocation(line: 185, column: 28, scope: !2386)
!2397 = !DILocation(line: 185, column: 42, scope: !2386)
!2398 = !DILocation(line: 187, column: 15, scope: !2386)
!2399 = !DILocation(line: 187, column: 8, scope: !2386)
!2400 = !DILocation(line: 188, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 188, column: 6)
!2402 = !DILocation(line: 188, column: 6, scope: !2386)
!2403 = !DILocation(line: 189, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 188, column: 13)
!2405 = !DILocation(line: 190, column: 3, scope: !2404)
!2406 = !DILocation(line: 193, column: 6, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 193, column: 6)
!2408 = !DILocation(line: 193, column: 6, scope: !2386)
!2409 = !DILocation(line: 193, column: 23, scope: !2407)
!2410 = !DILocation(line: 237, column: 45, scope: !1842, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 193, column: 15, scope: !2407)
!2412 = !DILocation(line: 237, column: 54, scope: !1842, inlinedAt: !2411)
!2413 = !DILocation(line: 231, column: 48, scope: !1849, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 239, column: 2, scope: !1842, inlinedAt: !2411)
!2415 = !DILocation(line: 231, column: 57, scope: !1849, inlinedAt: !2414)
!2416 = !DILocation(line: 233, column: 2, scope: !1856, inlinedAt: !2414)
!2417 = !DILocation(line: 233, column: 2, scope: !1857, inlinedAt: !2414)
!2418 = !DILocation(line: 233, column: 2, scope: !1860, inlinedAt: !2414)
!2419 = !DILocation(line: 234, column: 5, scope: !1849, inlinedAt: !2414)
!2420 = !DILocation(line: 234, column: 2, scope: !1849, inlinedAt: !2414)
!2421 = !DILocation(line: 235, column: 1, scope: !1849, inlinedAt: !2414)
!2422 = !DILocation(line: 240, column: 1, scope: !1842, inlinedAt: !2411)
!2423 = !DILocation(line: 193, column: 15, scope: !2407)
!2424 = !DILocation(line: 194, column: 22, scope: !2386)
!2425 = !DILocation(line: 194, column: 43, scope: !2386)
!2426 = !DILocation(line: 157, column: 48, scope: !1328, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 194, column: 12, scope: !2386)
!2428 = !DILocation(line: 159, column: 6, scope: !1335, inlinedAt: !2427)
!2429 = !DILocation(line: 159, column: 6, scope: !1328, inlinedAt: !2427)
!2430 = !DILocation(line: 160, column: 3, scope: !1339, inlinedAt: !2427)
!2431 = !DILocation(line: 160, column: 9, scope: !1339, inlinedAt: !2427)
!2432 = !DILocation(line: 161, column: 3, scope: !1339, inlinedAt: !2427)
!2433 = !DILocation(line: 194, column: 56, scope: !2386)
!2434 = !DILocation(line: 157, column: 58, scope: !1328, inlinedAt: !2427)
!2435 = !DILocation(line: 151, column: 51, scope: !1343, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 163, column: 9, scope: !1328, inlinedAt: !2427)
!2437 = !DILocation(line: 151, column: 61, scope: !1343, inlinedAt: !2436)
!2438 = !DILocation(line: 153, column: 2, scope: !1350, inlinedAt: !2436)
!2439 = !DILocation(line: 154, column: 12, scope: !1343, inlinedAt: !2436)
!2440 = !DILocation(line: 154, column: 9, scope: !1343, inlinedAt: !2436)
!2441 = !DILocation(line: 154, column: 2, scope: !1343, inlinedAt: !2436)
!2442 = !DILocation(line: 163, column: 2, scope: !1328, inlinedAt: !2427)
!2443 = !DILocation(line: 0, scope: !1328, inlinedAt: !2427)
!2444 = !DILocation(line: 0, scope: !2386)
!2445 = !DILocation(line: 164, column: 1, scope: !1328, inlinedAt: !2427)
!2446 = !DILocation(line: 194, column: 10, scope: !2386)
!2447 = !DILocation(line: 195, column: 2, scope: !2386)
!2448 = !DILocation(line: 196, column: 1, scope: !2386)
!2449 = !DILocation(line: 0, scope: !2404)
!2450 = !DILocation(line: 186, column: 42, scope: !883)
!2451 = !DILocation(line: 188, column: 2, scope: !883)
!2452 = !DILocation(line: 188, column: 10, scope: !883)
!2453 = !DILocation(line: 189, column: 2, scope: !883)
!2454 = !DILocation(line: 190, column: 2, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !720, line: 190, column: 2)
!2456 = distinct !DILexicalBlock(scope: !883, file: !720, line: 190, column: 2)
!2457 = !DILocation(line: 191, column: 2, scope: !883)
!2458 = !DILocation(line: 192, column: 1, scope: !883)
!2459 = !DILocation(line: 196, column: 2, scope: !719)
!2460 = !DILocation(line: 196, column: 10, scope: !719)
!2461 = !DILocation(line: 197, column: 2, scope: !719)
!2462 = !DILocation(line: 198, column: 2, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !720, line: 198, column: 2)
!2464 = distinct !DILexicalBlock(scope: !719, file: !720, line: 198, column: 2)
!2465 = !DILocation(line: 199, column: 2, scope: !719)
!2466 = !DILocation(line: 200, column: 1, scope: !719)
!2467 = !DILocation(line: 194, column: 57, scope: !1890)
!2468 = !DILocation(line: 198, column: 2, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !1903, file: !713, line: 198, column: 2)
!2470 = !DILocation(line: 198, column: 2, scope: !1903)
!2471 = !DILocation(line: 198, column: 2, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2469, file: !713, line: 198, column: 2)
!2473 = !DILocation(line: 200, column: 9, scope: !1890)
!2474 = !DILocation(line: 196, column: 16, scope: !1890)
!2475 = !DILocation(line: 201, column: 7, scope: !1890)
!2476 = !DILocation(line: 201, column: 2, scope: !1890)
!2477 = !DILocation(line: 209, column: 28, scope: !1890)
!2478 = !DILocation(line: 99, column: 40, scope: !1913, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 210, column: 2, scope: !1890)
!2480 = !DILocation(line: 104, column: 10, scope: !1913, inlinedAt: !2479)
!2481 = !DILocation(line: 101, column: 16, scope: !1913, inlinedAt: !2479)
!2482 = !DILocation(line: 105, column: 2, scope: !1927, inlinedAt: !2479)
!2483 = !DILocation(line: 102, column: 25, scope: !1913, inlinedAt: !2479)
!2484 = !DILocation(line: 105, column: 2, scope: !1931, inlinedAt: !2479)
!2485 = !DILocation(line: 102, column: 32, scope: !1913, inlinedAt: !2479)
!2486 = !DILocation(line: 106, column: 24, scope: !1931, inlinedAt: !2479)
!2487 = !DILocation(line: 106, column: 3, scope: !1931, inlinedAt: !2479)
!2488 = !DILocation(line: 107, column: 2, scope: !1913, inlinedAt: !2479)
!2489 = !DILocation(line: 108, column: 1, scope: !1913, inlinedAt: !2479)
!2490 = !DILocation(line: 211, column: 2, scope: !1890)
!2491 = !DILocation(line: 212, column: 1, scope: !1890)
