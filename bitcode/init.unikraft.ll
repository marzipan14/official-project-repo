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
  br i1 %4, label %10, label %5, !dbg !1275

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1276, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !1275
  br i1 %7, label %10, label %8, !dbg !1280

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @_liblwip_init() #9, !dbg !1281
  store i32 0, i32* %1, align 4, !dbg !1281, !tbaa !1284
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
  br i1 %9, label %10, label %12, !dbg !1336, !prof !1337

; <label>:10:                                     ; preds = %0
  %11 = tail call i32* @__errno() #10, !dbg !1338
  store i32 12, i32* %11, align 4, !dbg !1340, !tbaa !1284
  br label %16, !dbg !1341

; <label>:12:                                     ; preds = %0
  %13 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %8, i64 0, i32 0, !dbg !1349
  %14 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %13, align 8, !dbg !1349, !tbaa !1325
  %15 = tail call i8* %14(%struct.uk_alloc* nonnull %8, i64 8) #10, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br label %16, !dbg !1352

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ null, %10 ], [ %15, %12 ], !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  %18 = bitcast i8* %17 to i8**, !dbg !1355
  store i8* null, i8** %18, align 8, !dbg !1357, !tbaa !1325
  %19 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !1358
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !1358
  %20 = bitcast %struct.ip4_addr* %3 to i8*, !dbg !1359
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !1359
  %21 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !1360
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !1360
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1361, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1365
  br i1 %23, label %28, label %24, !dbg !1365

; <label>:24:                                     ; preds = %16
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1366, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !1365
  br i1 %26, label %28, label %27, !dbg !1370

; <label>:27:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br label %35, !dbg !1379

; <label>:28:                                     ; preds = %24, %16
  %29 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1380, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  %30 = and i64 %29, -65536, !dbg !1386
  %31 = or i64 %30, 4097, !dbg !1386
  %32 = add nsw i64 %31, -1, !dbg !1386
  %33 = inttoptr i64 %32 to i32*, !dbg !1387
  %34 = load i32, i32* %33, align 4096, !dbg !1388, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([19 x i8]* @_liblwip_init.__str.1 to i64), i32 %34, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1390, !srcloc !1391
  br label %35

; <label>:35:                                     ; preds = %27, %28
  %36 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1392, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  %37 = icmp ult i64 %36, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1396
  br i1 %37, label %42, label %38, !dbg !1396

; <label>:38:                                     ; preds = %35
  %39 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1397, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  %40 = icmp ugt i64 %39, ptrtoint ([0 x i8]* @_end to i64), !dbg !1396
  br i1 %40, label %42, label %41, !dbg !1401

; <label>:41:                                     ; preds = %38
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull @_lwip_init_sem, i64 0) #10, !dbg !1402
  br label %49, !dbg !1402

; <label>:42:                                     ; preds = %38, %35
  %43 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1404, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  %44 = and i64 %43, -65536, !dbg !1410
  %45 = or i64 %44, 4097, !dbg !1410
  %46 = add nsw i64 %45, -1, !dbg !1410
  %47 = inttoptr i64 %46 to i32*, !dbg !1411
  %48 = load i32, i32* %47, align 4096, !dbg !1412, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_init\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i64 0, i32 %48, void (%struct.uk_semaphore*, i64)* nonnull @uk_semaphore_init) #8, !dbg !1414, !srcloc !1415
  br label %49

; <label>:49:                                     ; preds = %42, %41
  tail call void @tcpip_init(void (i8*)* nonnull @_lwip_init_done, i8* null) #10, !dbg !1416
  %50 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1417, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  %51 = icmp ult i64 %50, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1421
  br i1 %51, label %56, label %52, !dbg !1421

; <label>:52:                                     ; preds = %49
  %53 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1422, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  %54 = icmp ugt i64 %53, ptrtoint ([0 x i8]* @_end to i64), !dbg !1421
  br i1 %54, label %56, label %55, !dbg !1426

; <label>:55:                                     ; preds = %52
  tail call void @uk_semaphore_down(%struct.uk_semaphore* nonnull @_lwip_init_sem) #9, !dbg !1427
  br label %63, !dbg !1427

; <label>:56:                                     ; preds = %52, %49
  %57 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1429, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  %58 = and i64 %57, -65536, !dbg !1435
  %59 = or i64 %58, 4097, !dbg !1435
  %60 = add nsw i64 %59, -1, !dbg !1435
  %61 = inttoptr i64 %60 to i32*, !dbg !1436
  %62 = load i32, i32* %61, align 4096, !dbg !1437, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_down\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i32 %62, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_down) #8, !dbg !1439, !srcloc !1440
  br label %63

; <label>:63:                                     ; preds = %56, %55
  tail call void @netif_add_ext_callback(%struct.netif_ext_callback* nonnull @netif_status_print, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* nonnull @_netif_status_print) #10, !dbg !1441
  %64 = bitcast i32* %5 to i8*, !dbg !1443
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #8, !dbg !1443
  %65 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1444, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  %66 = icmp ult i64 %65, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1448
  br i1 %66, label %72, label %67, !dbg !1448

; <label>:67:                                     ; preds = %63
  %68 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1449, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  %69 = icmp ugt i64 %68, ptrtoint ([0 x i8]* @_end to i64), !dbg !1448
  br i1 %69, label %72, label %70, !dbg !1453

; <label>:70:                                     ; preds = %67
  %71 = tail call i32 @uk_netdev_count() #10, !dbg !1454
  store i32 %71, i32* %5, align 4, !dbg !1454, !tbaa !1284
  br label %81, !dbg !1454

; <label>:72:                                     ; preds = %67, %63
  %73 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1457, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %74 = and i64 %73, -65536, !dbg !1463
  %75 = or i64 %74, 4097, !dbg !1463
  %76 = add nsw i64 %75, -1, !dbg !1463
  %77 = inttoptr i64 %76 to i32*, !dbg !1464
  %78 = load i32, i32* %77, align 4096, !dbg !1465, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  %79 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_count\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %78, i32 ()* nonnull @uk_netdev_count) #8, !dbg !1467, !srcloc !1468
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %79) #8, !dbg !1469, !srcloc !1472
  %80 = load i32, i32* %5, align 4, !dbg !1473, !tbaa !1284
  br label %81

; <label>:81:                                     ; preds = %72, %70
  %82 = phi i32 [ %80, %72 ], [ %71, %70 ], !dbg !1473
  %83 = icmp eq i32 %82, 0, !dbg !1475
  br i1 %83, label %330, label %84, !dbg !1476

; <label>:84:                                     ; preds = %81
  %85 = bitcast i32* %6 to i8*
  %86 = bitcast %struct.uk_netdev** %1 to i64*
  %87 = ptrtoint i8* %17 to i64
  %88 = bitcast i8* %17 to i64*
  %89 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %3, i64 0, i32 0
  br label %90, !dbg !1476

; <label>:90:                                     ; preds = %84, %324
  %91 = phi i64 [ 0, %84 ], [ %326, %324 ]
  %92 = phi i32 [ 1, %84 ], [ %325, %324 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #8, !dbg !1477
  %93 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1478, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  %94 = icmp ult i64 %93, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1482
  br i1 %94, label %101, label %95, !dbg !1482

; <label>:95:                                     ; preds = %90
  %96 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1483, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  %97 = icmp ugt i64 %96, ptrtoint ([0 x i8]* @_end to i64), !dbg !1482
  br i1 %97, label %101, label %98, !dbg !1487

; <label>:98:                                     ; preds = %95
  %99 = trunc i64 %91 to i32, !dbg !1488
  %100 = call %struct.uk_netdev* @uk_netdev_get(i32 %99) #10, !dbg !1488
  store %struct.uk_netdev* %100, %struct.uk_netdev** %1, align 8, !dbg !1488, !tbaa !1325
  br label %110, !dbg !1488

; <label>:101:                                    ; preds = %95, %90
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1491, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  %103 = and i64 %102, -65536, !dbg !1497
  %104 = or i64 %103, 4097, !dbg !1497
  %105 = add nsw i64 %104, -1, !dbg !1497
  %106 = inttoptr i64 %105 to i32*, !dbg !1498
  %107 = load i32, i32* %106, align 4096, !dbg !1499, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  %108 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %91, i32 %107, %struct.uk_netdev* (i32)* nonnull @uk_netdev_get) #8, !dbg !1501, !srcloc !1502
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_netdev** nonnull %1, i64 %108) #8, !dbg !1503, !srcloc !1507
  %109 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1508, !tbaa !1325
  br label %110

; <label>:110:                                    ; preds = %101, %98
  %111 = phi %struct.uk_netdev* [ %109, %101 ], [ %100, %98 ], !dbg !1508
  %112 = icmp eq %struct.uk_netdev* %111, null, !dbg !1508
  br i1 %112, label %324, label %113, !dbg !1510

; <label>:113:                                    ; preds = %110
  %114 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1511, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  %115 = icmp ult i64 %114, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1515
  br i1 %115, label %122, label %116, !dbg !1515

; <label>:116:                                    ; preds = %113
  %117 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1516, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %118 = icmp ugt i64 %117, ptrtoint ([0 x i8]* @_end to i64), !dbg !1515
  br i1 %118, label %122, label %119, !dbg !1520

; <label>:119:                                    ; preds = %116
  %120 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1521, !tbaa !1325
  %121 = call i32 @uk_netdev_state_get(%struct.uk_netdev* %120) #10, !dbg !1521
  store i32 %121, i32* %6, align 4, !dbg !1521, !tbaa !1524
  br label %132, !dbg !1521

; <label>:122:                                    ; preds = %116, %113
  %123 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1525, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  %124 = and i64 %123, -65536, !dbg !1531
  %125 = or i64 %124, 4097, !dbg !1531
  %126 = add nsw i64 %125, -1, !dbg !1531
  %127 = inttoptr i64 %126 to i32*, !dbg !1532
  %128 = load i32, i32* %127, align 4096, !dbg !1533, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  %129 = load i64, i64* %86, align 8, !dbg !1535, !tbaa !1325
  %130 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_state_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %129, i32 %128, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_state_get) #8, !dbg !1535, !srcloc !1536
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %130) #8, !dbg !1537, !srcloc !1540
  %131 = load i32, i32* %6, align 4, !dbg !1541, !tbaa !1524
  br label %132

; <label>:132:                                    ; preds = %122, %119
  %133 = phi i32 [ %131, %122 ], [ %121, %119 ], !dbg !1541
  %134 = icmp eq i32 %133, 1, !dbg !1542
  %135 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1543, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  %136 = icmp uge i64 %135, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1547
  br i1 %134, label %149, label %137, !dbg !1548

; <label>:137:                                    ; preds = %132
  br i1 %136, label %138, label %142, !dbg !1549

; <label>:138:                                    ; preds = %137
  %139 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1550, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %140 = icmp ugt i64 %139, ptrtoint ([0 x i8]* @_end to i64), !dbg !1549
  br i1 %140, label %142, label %141, !dbg !1554

; <label>:141:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  br label %324, !dbg !1559

; <label>:142:                                    ; preds = %138, %137
  %143 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1560, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  %144 = and i64 %143, -65536, !dbg !1566
  %145 = or i64 %144, 4097, !dbg !1566
  %146 = add nsw i64 %145, -1, !dbg !1566
  %147 = inttoptr i64 %146 to i32*, !dbg !1567
  %148 = load i32, i32* %147, align 4096, !dbg !1568, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([70 x i8]* @_liblwip_init.__str.3 to i64), i64 %91, i32 %148, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1570, !srcloc !1571
  br label %324

; <label>:149:                                    ; preds = %132
  br i1 %136, label %150, label %154, !dbg !1572

; <label>:150:                                    ; preds = %149
  %151 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1573, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  %152 = icmp ugt i64 %151, ptrtoint ([0 x i8]* @_end to i64), !dbg !1572
  br i1 %152, label %154, label %153, !dbg !1577

; <label>:153:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br label %161, !dbg !1582

; <label>:154:                                    ; preds = %150, %149
  %155 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1583, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  %156 = and i64 %155, -65536, !dbg !1589
  %157 = or i64 %156, 4097, !dbg !1589
  %158 = add nsw i64 %157, -1, !dbg !1589
  %159 = inttoptr i64 %158 to i32*, !dbg !1590
  %160 = load i32, i32* %159, align 4096, !dbg !1591, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([37 x i8]* @_liblwip_init.__str.5 to i64), i64 %91, i32 %160, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1593, !srcloc !1594
  br label %161

; <label>:161:                                    ; preds = %154, %153
  %162 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1598, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  %163 = icmp ult i64 %162, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1602
  br i1 %163, label %169, label %164, !dbg !1602

; <label>:164:                                    ; preds = %161
  %165 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1603, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  %166 = icmp ugt i64 %165, ptrtoint ([0 x i8]* @_end to i64), !dbg !1602
  br i1 %166, label %169, label %167, !dbg !1607

; <label>:167:                                    ; preds = %164
  %168 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1608, !tbaa !1325
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %168, i32 1, i8** %18) #9, !dbg !1608
  br label %177, !dbg !1608

; <label>:169:                                    ; preds = %164, %161
  %170 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1610, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  %171 = and i64 %170, -65536, !dbg !1616
  %172 = or i64 %171, 4097, !dbg !1616
  %173 = add nsw i64 %172, -1, !dbg !1616
  %174 = inttoptr i64 %173 to i32*, !dbg !1617
  %175 = load i32, i32* %174, align 4096, !dbg !1618, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  %176 = load i64, i64* %86, align 8, !dbg !1620, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %176, i64 1, i64 %87, i32 %175, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #8, !dbg !1620, !srcloc !1621
  br label %177

; <label>:177:                                    ; preds = %169, %167
  %178 = load i8*, i8** %18, align 8, !dbg !1622, !tbaa !1325
  %179 = icmp eq i8* %178, null, !dbg !1622
  br i1 %179, label %275, label %180, !dbg !1623

; <label>:180:                                    ; preds = %177
  %181 = call i32 @ip4addr_aton(i8* nonnull %178, %struct.ip4_addr* nonnull %2) #10, !dbg !1625
  %182 = icmp eq i32 %181, 1, !dbg !1626
  %183 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1627, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  %184 = icmp ult i64 %183, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1631
  br i1 %182, label %199, label %185, !dbg !1632

; <label>:185:                                    ; preds = %180
  br i1 %184, label %191, label %186, !dbg !1633

; <label>:186:                                    ; preds = %185
  %187 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1634, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  %188 = icmp ugt i64 %187, ptrtoint ([0 x i8]* @_end to i64), !dbg !1633
  br i1 %188, label %191, label %189, !dbg !1638

; <label>:189:                                    ; preds = %186
  %190 = load i8*, i8** %18, align 8, !dbg !1639, !tbaa !1325
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_liblwip_init.__str.6, i64 0, i64 0), i8* %190) #9, !dbg !1639
  br label %275, !dbg !1639

; <label>:191:                                    ; preds = %186, %185
  %192 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1641, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  %193 = and i64 %192, -65536, !dbg !1647
  %194 = or i64 %193, 4097, !dbg !1647
  %195 = add nsw i64 %194, -1, !dbg !1647
  %196 = inttoptr i64 %195 to i32*, !dbg !1648
  %197 = load i32, i32* %196, align 4096, !dbg !1649, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  %198 = load i64, i64* %88, align 8, !dbg !1651, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([33 x i8]* @_liblwip_init.__str.7 to i64), i64 %198, i32 %197, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1651, !srcloc !1652
  br label %275

; <label>:199:                                    ; preds = %180
  br i1 %184, label %205, label %200, !dbg !1653

; <label>:200:                                    ; preds = %199
  %201 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1654, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  %202 = icmp ugt i64 %201, ptrtoint ([0 x i8]* @_end to i64), !dbg !1653
  br i1 %202, label %205, label %203, !dbg !1658

; <label>:203:                                    ; preds = %200
  %204 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1659, !tbaa !1325
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %204, i32 3, i8** nonnull %18) #9, !dbg !1659
  br label %213, !dbg !1659

; <label>:205:                                    ; preds = %200, %199
  %206 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1661, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  %207 = and i64 %206, -65536, !dbg !1667
  %208 = or i64 %207, 4097, !dbg !1667
  %209 = add nsw i64 %208, -1, !dbg !1667
  %210 = inttoptr i64 %209 to i32*, !dbg !1668
  %211 = load i32, i32* %210, align 4096, !dbg !1669, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  %212 = load i64, i64* %86, align 8, !dbg !1671, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %212, i64 3, i64 %87, i32 %211, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #8, !dbg !1671, !srcloc !1672
  br label %213

; <label>:213:                                    ; preds = %205, %203
  %214 = load i8*, i8** %18, align 8, !dbg !1673, !tbaa !1325
  %215 = icmp eq i8* %214, null, !dbg !1673
  br i1 %215, label %235, label %216, !dbg !1674

; <label>:216:                                    ; preds = %213
  %217 = call i32 @ip4addr_aton(i8* nonnull %214, %struct.ip4_addr* nonnull %3) #10, !dbg !1676
  %218 = icmp eq i32 %217, 1, !dbg !1677
  br i1 %218, label %237, label %219, !dbg !1678

; <label>:219:                                    ; preds = %216
  %220 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1679, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  %221 = icmp ult i64 %220, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1683
  br i1 %221, label %227, label %222, !dbg !1683

; <label>:222:                                    ; preds = %219
  %223 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1684, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  %224 = icmp ugt i64 %223, ptrtoint ([0 x i8]* @_end to i64), !dbg !1683
  br i1 %224, label %227, label %225, !dbg !1688

; <label>:225:                                    ; preds = %222
  %226 = load i8*, i8** %18, align 8, !dbg !1689, !tbaa !1325
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @_liblwip_init.__str.8, i64 0, i64 0), i8* %226) #9, !dbg !1689
  br label %275, !dbg !1689

; <label>:227:                                    ; preds = %222, %219
  %228 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1691, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  %229 = and i64 %228, -65536, !dbg !1697
  %230 = or i64 %229, 4097, !dbg !1697
  %231 = add nsw i64 %230, -1, !dbg !1697
  %232 = inttoptr i64 %231 to i32*, !dbg !1698
  %233 = load i32, i32* %232, align 4096, !dbg !1699, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  %234 = load i64, i64* %88, align 8, !dbg !1701, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([31 x i8]* @_liblwip_init.__str.9 to i64), i64 %234, i32 %233, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1701, !srcloc !1702
  br label %275

; <label>:235:                                    ; preds = %213
  %236 = call i32 @lwip_htonl(i32 -256) #10, !dbg !1703
  store i32 %236, i32* %89, align 4, !dbg !1703, !tbaa !1704
  br label %237

; <label>:237:                                    ; preds = %216, %235
  %238 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1706, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  %239 = icmp ult i64 %238, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1710
  br i1 %239, label %245, label %240, !dbg !1710

; <label>:240:                                    ; preds = %237
  %241 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1711, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %242 = icmp ugt i64 %241, ptrtoint ([0 x i8]* @_end to i64), !dbg !1710
  br i1 %242, label %245, label %243, !dbg !1715

; <label>:243:                                    ; preds = %240
  %244 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1716, !tbaa !1325
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %244, i32 5, i8** nonnull %18) #9, !dbg !1716
  br label %253, !dbg !1716

; <label>:245:                                    ; preds = %240, %237
  %246 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1718, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  %247 = and i64 %246, -65536, !dbg !1724
  %248 = or i64 %247, 4097, !dbg !1724
  %249 = add nsw i64 %248, -1, !dbg !1724
  %250 = inttoptr i64 %249 to i32*, !dbg !1725
  %251 = load i32, i32* %250, align 4096, !dbg !1726, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  %252 = load i64, i64* %86, align 8, !dbg !1728, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %252, i64 5, i64 %87, i32 %251, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #8, !dbg !1728, !srcloc !1729
  br label %253

; <label>:253:                                    ; preds = %245, %243
  %254 = load i8*, i8** %18, align 8, !dbg !1730, !tbaa !1325
  %255 = icmp eq i8* %254, null, !dbg !1730
  br i1 %255, label %275, label %256, !dbg !1731

; <label>:256:                                    ; preds = %253
  %257 = call i32 @ip4addr_aton(i8* nonnull %254, %struct.ip4_addr* nonnull %4) #10, !dbg !1733
  %258 = icmp eq i32 %257, 1, !dbg !1734
  br i1 %258, label %275, label %259, !dbg !1735

; <label>:259:                                    ; preds = %256
  %260 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1736, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  %261 = icmp ult i64 %260, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1740
  br i1 %261, label %267, label %262, !dbg !1740

; <label>:262:                                    ; preds = %259
  %263 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1741, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1744
  %264 = icmp ugt i64 %263, ptrtoint ([0 x i8]* @_end to i64), !dbg !1740
  br i1 %264, label %267, label %265, !dbg !1745

; <label>:265:                                    ; preds = %262
  %266 = load i8*, i8** %18, align 8, !dbg !1746, !tbaa !1325
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_liblwip_init.__str.10, i64 0, i64 0), i8* %266) #9, !dbg !1746
  br label %275, !dbg !1746

; <label>:267:                                    ; preds = %262, %259
  %268 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1748, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  %269 = and i64 %268, -65536, !dbg !1754
  %270 = or i64 %269, 4097, !dbg !1754
  %271 = add nsw i64 %270, -1, !dbg !1754
  %272 = inttoptr i64 %271 to i32*, !dbg !1755
  %273 = load i32, i32* %272, align 4096, !dbg !1756, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %274 = load i64, i64* %88, align 8, !dbg !1758, !tbaa !1325
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([30 x i8]* @_liblwip_init.__str.11 to i64), i64 %274, i32 %273, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1758, !srcloc !1759
  br label %275

; <label>:275:                                    ; preds = %256, %253, %177, %265, %267, %225, %227, %189, %191
  %276 = phi %struct.ip4_addr* [ null, %189 ], [ null, %191 ], [ null, %225 ], [ null, %227 ], [ null, %265 ], [ null, %267 ], [ null, %253 ], [ null, %177 ], [ %4, %256 ], !dbg !1760
  %277 = phi %struct.ip4_addr* [ null, %189 ], [ null, %191 ], [ null, %225 ], [ null, %227 ], [ %3, %265 ], [ %3, %267 ], [ %3, %253 ], [ null, %177 ], [ %3, %256 ], !dbg !1760
  %278 = phi %struct.ip4_addr* [ null, %189 ], [ null, %191 ], [ %2, %225 ], [ %2, %227 ], [ %2, %265 ], [ %2, %267 ], [ %2, %253 ], [ null, %177 ], [ %2, %256 ], !dbg !1760
  %279 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1761, !tbaa !1325
  %280 = call %struct.netif* @uknetdev_addif(%struct.uk_netdev* %279, %struct.ip4_addr* %278, %struct.ip4_addr* %277, %struct.ip4_addr* %276) #10, !dbg !1762
  %281 = icmp eq %struct.netif* %280, null, !dbg !1764
  br i1 %281, label %282, label %297, !dbg !1765

; <label>:282:                                    ; preds = %275
  %283 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1766, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  %284 = icmp ult i64 %283, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1770
  br i1 %284, label %290, label %285, !dbg !1770

; <label>:285:                                    ; preds = %282
  %286 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1771, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  %287 = icmp ugt i64 %286, ptrtoint ([0 x i8]* @_end to i64), !dbg !1770
  br i1 %287, label %290, label %288, !dbg !1775

; <label>:288:                                    ; preds = %285
  %289 = trunc i64 %91 to i32, !dbg !1776
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @_liblwip_init.__str.12, i64 0, i64 0), i32 %289) #9, !dbg !1776
  br label %324, !dbg !1776

; <label>:290:                                    ; preds = %285, %282
  %291 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1778, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  %292 = and i64 %291, -65536, !dbg !1784
  %293 = or i64 %292, 4097, !dbg !1784
  %294 = add nsw i64 %293, -1, !dbg !1784
  %295 = inttoptr i64 %294 to i32*, !dbg !1785
  %296 = load i32, i32* %295, align 4096, !dbg !1786, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([44 x i8]* @_liblwip_init.__str.13 to i64), i64 %91, i32 %296, void (i8*, ...)* nonnull @uk_pr_err) #8, !dbg !1788, !srcloc !1789
  br label %324

; <label>:297:                                    ; preds = %275
  %298 = icmp eq i32 %92, 0, !dbg !1790
  br i1 %298, label %323, label %299, !dbg !1791

; <label>:299:                                    ; preds = %297
  %300 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1792, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1795
  %301 = icmp ult i64 %300, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1796
  br i1 %301, label %306, label %302, !dbg !1796

; <label>:302:                                    ; preds = %299
  %303 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1797, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1800
  %304 = icmp ugt i64 %303, ptrtoint ([0 x i8]* @_end to i64), !dbg !1796
  br i1 %304, label %306, label %305, !dbg !1801

; <label>:305:                                    ; preds = %302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br label %322, !dbg !1806

; <label>:306:                                    ; preds = %302, %299
  %307 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1807, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  %308 = and i64 %307, -65536, !dbg !1813
  %309 = or i64 %308, 4097, !dbg !1813
  %310 = add nsw i64 %309, -1, !dbg !1813
  %311 = inttoptr i64 %310 to i32*, !dbg !1814
  %312 = load i32, i32* %311, align 4096, !dbg !1815, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  %313 = getelementptr inbounds %struct.netif, %struct.netif* %280, i64 0, i32 22, i64 1, !dbg !1817
  %314 = load i8, i8* %313, align 1, !dbg !1817, !tbaa !1524
  %315 = sext i8 %314 to i64, !dbg !1817
  %316 = getelementptr inbounds %struct.netif, %struct.netif* %280, i64 0, i32 23, !dbg !1817
  %317 = load i8, i8* %316, align 8, !dbg !1817, !tbaa !1818
  %318 = zext i8 %317 to i64, !dbg !1817
  %319 = getelementptr inbounds %struct.netif, %struct.netif* %280, i64 0, i32 22, i64 0, !dbg !1817
  %320 = load i8, i8* %319, align 2, !dbg !1817, !tbaa !1524
  %321 = sext i8 %320 to i64, !dbg !1817
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([34 x i8]* @_liblwip_init.__str.15 to i64), i64 %321, i64 %315, i64 %318, i32 %312, void (i8*, ...)* nonnull @uk_pr_info) #8, !dbg !1817, !srcloc !1822
  br label %322

; <label>:322:                                    ; preds = %306, %305
  call void @netif_set_default(%struct.netif* nonnull %280) #10, !dbg !1823
  br label %323, !dbg !1824

; <label>:323:                                    ; preds = %297, %322
  call void @netif_set_up(%struct.netif* nonnull %280) #10, !dbg !1825
  br label %324, !dbg !1826

; <label>:324:                                    ; preds = %288, %290, %141, %142, %110, %323
  %325 = phi i32 [ 0, %323 ], [ %92, %110 ], [ %92, %142 ], [ %92, %141 ], [ %92, %290 ], [ %92, %288 ], !dbg !1827
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #8, !dbg !1826
  %326 = add nuw nsw i64 %91, 1, !dbg !1828
  %327 = load i32, i32* %5, align 4, !dbg !1473, !tbaa !1284
  %328 = zext i32 %327 to i64, !dbg !1475
  %329 = icmp ult i64 %326, %328, !dbg !1475
  br i1 %329, label %90, label %330, !dbg !1476, !llvm.loop !1829

; <label>:330:                                    ; preds = %324, %81
  %331 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1831, !tbaa !1325
  %332 = icmp eq %struct.uk_alloc* %331, null, !dbg !1846
  br i1 %332, label %333, label %334, !dbg !1849, !prof !1337

; <label>:333:                                    ; preds = %330
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !1850
  call void @ukplat_terminate(i32 3) #11, !dbg !1850
  unreachable, !dbg !1850

; <label>:334:                                    ; preds = %330
  %335 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %331, i64 0, i32 5, !dbg !1852
  %336 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %335, align 8, !dbg !1852, !tbaa !1325
  call void %336(%struct.uk_alloc* nonnull %331, i8* %17) #10, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #8, !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  ret i32 0, !dbg !1857
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_info(i8* nocapture readnone, ...) #4 !dbg !1372 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  ret void, !dbg !1859
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) #5

; Function Attrs: noredzone
declare dso_local void @tcpip_init(void (i8*)*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @_lwip_init_done(i8* nocapture readnone) #1 !dbg !1860 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1870, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1874
  br i1 %3, label %22, label %4, !dbg !1874

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1875, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !1874
  br i1 %6, label %22, label %7, !dbg !1879

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1893
  %9 = load i64, i64* getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 0), align 8, !dbg !1895, !tbaa !1896
  %10 = add nsw i64 %9, 1, !dbg !1895
  store i64 %10, i64* getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 0), align 8, !dbg !1895, !tbaa !1896
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1913
  %12 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 1, i32 0), align 8, !dbg !1915, !tbaa !1917
  %13 = icmp eq %struct.uk_waitq_entry* %12, null, !dbg !1919
  br i1 %13, label %21, label %14, !dbg !1919

; <label>:14:                                     ; preds = %7, %14
  %15 = phi %struct.uk_waitq_entry* [ %17, %14 ], [ %12, %7 ]
  %16 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %15, i64 0, i32 2, i32 0, !dbg !1919
  %17 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1919, !tbaa !1921
  %18 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %15, i64 0, i32 1, !dbg !1925
  %19 = load %struct.uk_thread*, %struct.uk_thread** %18, align 8, !dbg !1925, !tbaa !1926
  tail call void @uk_thread_wake(%struct.uk_thread* %19) #10, !dbg !1927
  %20 = icmp eq %struct.uk_waitq_entry* %17, null, !dbg !1919
  br i1 %20, label %21, label %14, !dbg !1919, !llvm.loop !1928

; <label>:21:                                     ; preds = %14, %7
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #10, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #10, !dbg !1933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1934
  br label %29, !dbg !1935

; <label>:22:                                     ; preds = %4, %1
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1936, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  %24 = and i64 %23, -65536, !dbg !1942
  %25 = or i64 %24, 4097, !dbg !1942
  %26 = add nsw i64 %25, -1, !dbg !1942
  %27 = inttoptr i64 %26 to i32*, !dbg !1943
  %28 = load i32, i32* %27, align 4096, !dbg !1944, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_up\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i32 %28, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_up) #8, !dbg !1946, !srcloc !1947
  br label %29

; <label>:29:                                     ; preds = %21, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  ret void, !dbg !1948
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_down(%struct.uk_semaphore*) #4 !dbg !1949 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1962
  br i1 %2, label %7, label %3, !dbg !1965, !prof !1337

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %8, !dbg !1966

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !1975
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1975
  unreachable, !dbg !1975

; <label>:8:                                      ; preds = %3, %97
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1966, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1982, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  %11 = and i64 %10, -65536, !dbg !1988
  %12 = or i64 %11, 4097, !dbg !1988
  %13 = add nsw i64 %12, -1, !dbg !1988
  %14 = inttoptr i64 %13 to i32*, !dbg !1989
  %15 = load i32, i32* %14, align 4096, !dbg !1990, !tbaa !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  %16 = sext i32 %15 to i64, !dbg !1992
  %17 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, !dbg !1992
  %18 = bitcast %struct.uk_waitq_entry* %17 to i8*, !dbg !1992
  %19 = tail call i8* @memset(i8* nonnull %18, i32 0, i64 24) #10, !dbg !1992
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1993, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1997
  %21 = and i64 %20, -65536, !dbg !1999
  %22 = inttoptr i64 %21 to i64*, !dbg !2000
  %23 = load i64, i64* %22, align 65536, !dbg !2000, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  %24 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 1, !dbg !1992
  %25 = bitcast %struct.uk_thread** %24 to i64*, !dbg !1992
  store i64 %23, i64* %25, align 8, !dbg !1992, !tbaa !1926
  %26 = load i64, i64* %4, align 8, !dbg !2003, !tbaa !1896
  %27 = icmp sgt i64 %26, 0, !dbg !2005
  br i1 %27, label %93, label %28, !dbg !2006

; <label>:28:                                     ; preds = %8
  %29 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %17, i64 0, i32 0
  %30 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 2, i32 0
  br label %31, !dbg !2007

; <label>:31:                                     ; preds = %28, %67
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2007, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  %33 = and i64 %32, -65536, !dbg !2016
  %34 = inttoptr i64 %33 to %struct.uk_thread**, !dbg !2017
  %35 = load %struct.uk_thread*, %struct.uk_thread** %34, align 65536, !dbg !2019, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2022
  %37 = load i32, i32* %29, align 8, !dbg !2033, !tbaa !2035
  %38 = icmp eq i32 %37, 0, !dbg !2036
  br i1 %38, label %39, label %41, !dbg !2037

; <label>:39:                                     ; preds = %31
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %30, align 8, !dbg !2038, !tbaa !1921
  %40 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %5, align 8, !dbg !2038, !tbaa !2041
  store %struct.uk_waitq_entry* %17, %struct.uk_waitq_entry** %40, align 8, !dbg !2038, !tbaa !1325
  store %struct.uk_waitq_entry** %30, %struct.uk_waitq_entry*** %5, align 8, !dbg !2038, !tbaa !2041
  store i32 1, i32* %29, align 8, !dbg !2042, !tbaa !2035
  br label %41, !dbg !2043

; <label>:41:                                     ; preds = %31, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2044
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 6, !dbg !2054
  store i64 0, i64* %42, align 8, !dbg !2055, !tbaa !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2060
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 5, !dbg !2068
  %44 = load i32, i32* %43, align 8, !dbg !2069, !tbaa !2070
  %45 = and i32 %44, -2, !dbg !2069
  store i32 %45, i32* %43, align 8, !dbg !2069, !tbaa !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %46 = icmp eq %struct.uk_thread* %35, null, !dbg !2077
  br i1 %46, label %47, label %48, !dbg !2080, !prof !1337

; <label>:47:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !2081
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2081
  unreachable, !dbg !2081

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 9, !dbg !2083
  %50 = load %struct.uk_sched*, %struct.uk_sched** %49, align 8, !dbg !2083, !tbaa !2084
  %51 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %50, i64 0, i32 3, !dbg !2085
  %52 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %51, align 8, !dbg !2085, !tbaa !2086
  tail call void %52(%struct.uk_sched* %50, %struct.uk_thread* nonnull %35) #10, !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #10, !dbg !2092
  %53 = load i64, i64* %4, align 8, !dbg !2093, !tbaa !1896
  %54 = icmp sgt i64 %53, 0, !dbg !2095
  br i1 %54, label %70, label %55, !dbg !2096

; <label>:55:                                     ; preds = %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2097, !srcloc !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %57 = and i64 %56, -65536, !dbg !2108
  %58 = inttoptr i64 %57 to %struct.uk_thread**, !dbg !2109
  %59 = load %struct.uk_thread*, %struct.uk_thread** %58, align 65536, !dbg !2111, !tbaa !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2112
  %60 = icmp eq %struct.uk_thread* %59, null, !dbg !2114
  br i1 %60, label %61, label %62, !dbg !2117, !prof !1337

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !2118
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2118
  unreachable, !dbg !2118

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %59, i64 0, i32 9, !dbg !2120
  %64 = load %struct.uk_sched*, %struct.uk_sched** %63, align 8, !dbg !2120, !tbaa !2084
  %65 = icmp eq %struct.uk_sched* %64, null, !dbg !2122
  br i1 %65, label %66, label %67, !dbg !2125, !prof !1337

; <label>:66:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2126
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2126
  unreachable, !dbg !2126

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %64, i64 0, i32 0, !dbg !2128
  %69 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %68, align 8, !dbg !2128, !tbaa !2129
  tail call void %69(%struct.uk_sched* nonnull %64) #10, !dbg !2130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br label %31, !dbg !2132, !llvm.loop !2133

; <label>:70:                                     ; preds = %48
  %71 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2136
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %35) #10, !dbg !2137
  %72 = load i32, i32* %29, align 8, !dbg !2151, !tbaa !2035
  %73 = icmp eq i32 %72, 0, !dbg !2152
  br i1 %73, label %92, label %74, !dbg !2153

; <label>:74:                                     ; preds = %70
  %75 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %6, align 8, !dbg !2154, !tbaa !1917
  %76 = icmp eq %struct.uk_waitq_entry* %75, %17, !dbg !2154
  br i1 %76, label %77, label %81, !dbg !2155

; <label>:77:                                     ; preds = %74
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2156, !tbaa !1921
  store %struct.uk_waitq_entry* %78, %struct.uk_waitq_entry** %6, align 8, !dbg !2156, !tbaa !1917
  %79 = icmp eq %struct.uk_waitq_entry* %78, null, !dbg !2156
  br i1 %79, label %80, label %91, !dbg !2160

; <label>:80:                                     ; preds = %77
  store %struct.uk_waitq_entry** %6, %struct.uk_waitq_entry*** %5, align 8, !dbg !2156, !tbaa !2041
  br label %91, !dbg !2156

; <label>:81:                                     ; preds = %74, %81
  %82 = phi %struct.uk_waitq_entry* [ %84, %81 ], [ %75, %74 ], !dbg !2161
  %83 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !2161
  %84 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %83, align 8, !dbg !2161, !tbaa !1921
  %85 = icmp eq %struct.uk_waitq_entry* %84, %17, !dbg !2161
  br i1 %85, label %86, label %81, !dbg !2161, !llvm.loop !2162

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !2161
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2164, !tbaa !1921
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %87, align 8, !dbg !2164, !tbaa !1921
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !2164
  br i1 %89, label %90, label %91, !dbg !2167

; <label>:90:                                     ; preds = %86
  store %struct.uk_waitq_entry** %87, %struct.uk_waitq_entry*** %5, align 8, !dbg !2164, !tbaa !2041
  br label %91, !dbg !2164

; <label>:91:                                     ; preds = %90, %86, %80, %77
  store i32 0, i32* %29, align 8, !dbg !2168, !tbaa !2035
  br label %92, !dbg !2169

; <label>:92:                                     ; preds = %70, %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  tail call void @ukplat_lcpu_restore_irqf(i64 %71) #10, !dbg !2171
  br label %93, !dbg !2172

; <label>:93:                                     ; preds = %8, %92
  %94 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2173
  %95 = load i64, i64* %4, align 8, !dbg !2175, !tbaa !1896
  %96 = icmp sgt i64 %95, 0, !dbg !2177
  br i1 %96, label %98, label %97, !dbg !2178

; <label>:97:                                     ; preds = %93
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #10, !dbg !2179
  br label %8, !dbg !2180, !llvm.loop !2181

; <label>:98:                                     ; preds = %93
  %99 = add nsw i64 %95, -1, !dbg !2184
  store i64 %99, i64* %4, align 8, !dbg !2184, !tbaa !1896
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #10, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  ret void, !dbg !2186
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
  store i16 %1, i16* %5, align 2, !tbaa !2188
  store %union.netif_ext_callback_args_t* %2, %union.netif_ext_callback_args_t** %6, align 8, !tbaa !1325
  %62 = bitcast [17 x i8]* %7 to i8*, !dbg !2191
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %62) #8, !dbg !2191
  %63 = bitcast i8** %8 to i8*, !dbg !2193
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %63) #8, !dbg !2193
  %64 = ptrtoint [17 x i8]* %7 to i64, !dbg !2195
  %65 = add i64 %64, 65536, !dbg !2196
  %66 = inttoptr i64 %65 to i8*, !dbg !2197
  store i8* %66, i8** %8, align 8, !dbg !2194, !tbaa !1325
  %67 = bitcast [17 x i8]* %9 to i8*, !dbg !2198
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %67) #8, !dbg !2198
  %68 = bitcast i8** %10 to i8*, !dbg !2200
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %68) #8, !dbg !2200
  %69 = ptrtoint [17 x i8]* %9 to i64, !dbg !2202
  %70 = add i64 %69, 65536, !dbg !2203
  %71 = inttoptr i64 %70 to i8*, !dbg !2204
  store i8* %71, i8** %10, align 8, !dbg !2201, !tbaa !1325
  %72 = bitcast [17 x i8]* %11 to i8*, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %72) #8, !dbg !2205
  %73 = bitcast i8** %12 to i8*, !dbg !2207
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #8, !dbg !2207
  %74 = ptrtoint [17 x i8]* %11 to i64, !dbg !2209
  %75 = add i64 %74, 65536, !dbg !2210
  %76 = inttoptr i64 %75 to i8*, !dbg !2211
  store i8* %76, i8** %12, align 8, !dbg !2208, !tbaa !1325
  %77 = load i16, i16* %5, align 2, !dbg !2212, !tbaa !2188
  %78 = zext i16 %77 to i32, !dbg !2212
  %79 = and i32 %78, 1, !dbg !2213
  %80 = icmp ne i32 %79, 0, !dbg !2213
  br i1 %80, label %81, label %141, !dbg !2214

; <label>:81:                                     ; preds = %3
  br label %82, !dbg !2215

; <label>:82:                                     ; preds = %81
  %83 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2216
  %84 = icmp uge i64 %83, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2216
  br i1 %84, label %85, label %105, !dbg !2216

; <label>:85:                                     ; preds = %82
  %86 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2216
  %87 = icmp ule i64 %86, ptrtoint ([0 x i8]* @_end to i64), !dbg !2216
  br i1 %87, label %88, label %105, !dbg !2217

; <label>:88:                                     ; preds = %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_netif_status_print.__str, i32 0, i32 0), i8** %13, align 8, !dbg !2218, !tbaa !1325
  %89 = load i8*, i8** %13, align 8, !dbg !2218, !tbaa !1325
  %90 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2221, !tbaa !1325
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %90, i32 0, i32 22, !dbg !2221
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %91, i64 0, i64 0, !dbg !2221
  %93 = load i8, i8* %92, align 2, !dbg !2221, !tbaa !1524
  %94 = sext i8 %93 to i32, !dbg !2221
  %95 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2221, !tbaa !1325
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %95, i32 0, i32 22, !dbg !2221
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %96, i64 0, i64 1, !dbg !2221
  %98 = load i8, i8* %97, align 1, !dbg !2221, !tbaa !1524
  %99 = sext i8 %98 to i32, !dbg !2221
  %100 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2221, !tbaa !1325
  %101 = getelementptr inbounds %struct.netif, %struct.netif* %100, i32 0, i32 23, !dbg !2221
  %102 = load i8, i8* %101, align 8, !dbg !2221, !tbaa !1818
  %103 = zext i8 %102 to i32, !dbg !2221
  %104 = call i32 (i8*, ...) @printf(i8* %89, i32 %94, i32 %99, i32 %103) #9, !dbg !2221
  br label %138, !dbg !2221

; <label>:105:                                    ; preds = %85, %82
  br label %106, !dbg !2222

; <label>:106:                                    ; preds = %105
  br label %107, !dbg !2223

; <label>:107:                                    ; preds = %106
  %108 = bitcast i32* %14 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #8, !dbg !2224
  %109 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2224
  store i32 %109, i32* %14, align 4, !dbg !2224, !tbaa !1284
  %110 = bitcast i64* %15 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %110) #8, !dbg !2224
  %111 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2224, !tbaa !1325
  %112 = getelementptr inbounds %struct.netif, %struct.netif* %111, i32 0, i32 22, !dbg !2224
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %112, i64 0, i64 1, !dbg !2224
  %114 = load i8, i8* %113, align 1, !dbg !2224, !tbaa !1524
  %115 = sext i8 %114 to i64, !dbg !2224
  store i64 %115, i64* %15, align 8, !dbg !2224, !tbaa !2225
  %116 = bitcast i64* %16 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %116) #8, !dbg !2224
  %117 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2224, !tbaa !1325
  %118 = getelementptr inbounds %struct.netif, %struct.netif* %117, i32 0, i32 23, !dbg !2224
  %119 = load i8, i8* %118, align 8, !dbg !2224, !tbaa !1818
  %120 = zext i8 %119 to i64, !dbg !2224
  store i64 %120, i64* %16, align 8, !dbg !2224, !tbaa !2225
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_netif_status_print.__str.21, i32 0, i32 0), i8** %17, align 8, !dbg !2226, !tbaa !1325
  %121 = load i8*, i8** %17, align 8, !dbg !2226, !tbaa !1325
  %122 = ptrtoint i8* %121 to i64, !dbg !2224
  %123 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2224, !tbaa !1325
  %124 = getelementptr inbounds %struct.netif, %struct.netif* %123, i32 0, i32 22, !dbg !2224
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %124, i64 0, i64 0, !dbg !2224
  %126 = load i8, i8* %125, align 2, !dbg !2224, !tbaa !1524
  %127 = sext i8 %126 to i64, !dbg !2224
  %128 = load i64, i64* %15, align 8, !dbg !2224, !tbaa !2225
  %129 = load i64, i64* %16, align 8, !dbg !2224, !tbaa !2225
  %130 = load i32, i32* %14, align 4, !dbg !2224, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %122, i64 %127, i64 %128, i64 %129, i32 %130, i32 (i8*, ...)* @printf) #8, !dbg !2224, !srcloc !2228
  %131 = bitcast i64* %16 to i8*, !dbg !2223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %131) #8, !dbg !2223
  %132 = bitcast i64* %15 to i8*, !dbg !2223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %132) #8, !dbg !2223
  %133 = bitcast i32* %14 to i8*, !dbg !2223
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #8, !dbg !2223
  br label %134, !dbg !2224

; <label>:134:                                    ; preds = %107
  br label %135, !dbg !2224

; <label>:135:                                    ; preds = %134
  br label %136, !dbg !2223

; <label>:136:                                    ; preds = %135
  br label %137, !dbg !2223

; <label>:137:                                    ; preds = %136
  br label %138

; <label>:138:                                    ; preds = %137, %88
  br label %139, !dbg !2217

; <label>:139:                                    ; preds = %138
  br label %140, !dbg !2217

; <label>:140:                                    ; preds = %139
  br label %141, !dbg !2229

; <label>:141:                                    ; preds = %140, %3
  %142 = load i16, i16* %5, align 2, !dbg !2230, !tbaa !2188
  %143 = zext i16 %142 to i32, !dbg !2230
  %144 = and i32 %143, 2, !dbg !2231
  %145 = icmp ne i32 %144, 0, !dbg !2231
  br i1 %145, label %146, label %206, !dbg !2232

; <label>:146:                                    ; preds = %141
  br label %147, !dbg !2233

; <label>:147:                                    ; preds = %146
  %148 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2234
  %149 = icmp uge i64 %148, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2234
  br i1 %149, label %150, label %170, !dbg !2234

; <label>:150:                                    ; preds = %147
  %151 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2234
  %152 = icmp ule i64 %151, ptrtoint ([0 x i8]* @_end to i64), !dbg !2234
  br i1 %152, label %153, label %170, !dbg !2235

; <label>:153:                                    ; preds = %150
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_netif_status_print.__str.22, i32 0, i32 0), i8** %18, align 8, !dbg !2236, !tbaa !1325
  %154 = load i8*, i8** %18, align 8, !dbg !2236, !tbaa !1325
  %155 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2239, !tbaa !1325
  %156 = getelementptr inbounds %struct.netif, %struct.netif* %155, i32 0, i32 22, !dbg !2239
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %156, i64 0, i64 0, !dbg !2239
  %158 = load i8, i8* %157, align 2, !dbg !2239, !tbaa !1524
  %159 = sext i8 %158 to i32, !dbg !2239
  %160 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2239, !tbaa !1325
  %161 = getelementptr inbounds %struct.netif, %struct.netif* %160, i32 0, i32 22, !dbg !2239
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %161, i64 0, i64 1, !dbg !2239
  %163 = load i8, i8* %162, align 1, !dbg !2239, !tbaa !1524
  %164 = sext i8 %163 to i32, !dbg !2239
  %165 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2239, !tbaa !1325
  %166 = getelementptr inbounds %struct.netif, %struct.netif* %165, i32 0, i32 23, !dbg !2239
  %167 = load i8, i8* %166, align 8, !dbg !2239, !tbaa !1818
  %168 = zext i8 %167 to i32, !dbg !2239
  %169 = call i32 (i8*, ...) @printf(i8* %154, i32 %159, i32 %164, i32 %168) #9, !dbg !2239
  br label %203, !dbg !2239

; <label>:170:                                    ; preds = %150, %147
  br label %171, !dbg !2240

; <label>:171:                                    ; preds = %170
  br label %172, !dbg !2241

; <label>:172:                                    ; preds = %171
  %173 = bitcast i32* %19 to i8*, !dbg !2242
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %173) #8, !dbg !2242
  %174 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2242
  store i32 %174, i32* %19, align 4, !dbg !2242, !tbaa !1284
  %175 = bitcast i64* %20 to i8*, !dbg !2242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %175) #8, !dbg !2242
  %176 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2242, !tbaa !1325
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %176, i32 0, i32 22, !dbg !2242
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %177, i64 0, i64 1, !dbg !2242
  %179 = load i8, i8* %178, align 1, !dbg !2242, !tbaa !1524
  %180 = sext i8 %179 to i64, !dbg !2242
  store i64 %180, i64* %20, align 8, !dbg !2242, !tbaa !2225
  %181 = bitcast i64* %21 to i8*, !dbg !2242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #8, !dbg !2242
  %182 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2242, !tbaa !1325
  %183 = getelementptr inbounds %struct.netif, %struct.netif* %182, i32 0, i32 23, !dbg !2242
  %184 = load i8, i8* %183, align 8, !dbg !2242, !tbaa !1818
  %185 = zext i8 %184 to i64, !dbg !2242
  store i64 %185, i64* %21, align 8, !dbg !2242, !tbaa !2225
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_netif_status_print.__str.23, i32 0, i32 0), i8** %22, align 8, !dbg !2243, !tbaa !1325
  %186 = load i8*, i8** %22, align 8, !dbg !2243, !tbaa !1325
  %187 = ptrtoint i8* %186 to i64, !dbg !2242
  %188 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2242, !tbaa !1325
  %189 = getelementptr inbounds %struct.netif, %struct.netif* %188, i32 0, i32 22, !dbg !2242
  %190 = getelementptr inbounds [2 x i8], [2 x i8]* %189, i64 0, i64 0, !dbg !2242
  %191 = load i8, i8* %190, align 2, !dbg !2242, !tbaa !1524
  %192 = sext i8 %191 to i64, !dbg !2242
  %193 = load i64, i64* %20, align 8, !dbg !2242, !tbaa !2225
  %194 = load i64, i64* %21, align 8, !dbg !2242, !tbaa !2225
  %195 = load i32, i32* %19, align 4, !dbg !2242, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %187, i64 %192, i64 %193, i64 %194, i32 %195, i32 (i8*, ...)* @printf) #8, !dbg !2242, !srcloc !2245
  %196 = bitcast i64* %21 to i8*, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %196) #8, !dbg !2241
  %197 = bitcast i64* %20 to i8*, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %197) #8, !dbg !2241
  %198 = bitcast i32* %19 to i8*, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %198) #8, !dbg !2241
  br label %199, !dbg !2242

; <label>:199:                                    ; preds = %172
  br label %200, !dbg !2242

; <label>:200:                                    ; preds = %199
  br label %201, !dbg !2241

; <label>:201:                                    ; preds = %200
  br label %202, !dbg !2241

; <label>:202:                                    ; preds = %201
  br label %203

; <label>:203:                                    ; preds = %202, %153
  br label %204, !dbg !2235

; <label>:204:                                    ; preds = %203
  br label %205, !dbg !2235

; <label>:205:                                    ; preds = %204
  br label %206, !dbg !2246

; <label>:206:                                    ; preds = %205, %141
  %207 = load i16, i16* %5, align 2, !dbg !2247, !tbaa !2188
  %208 = zext i16 %207 to i32, !dbg !2247
  %209 = and i32 %208, 4, !dbg !2248
  %210 = icmp ne i32 %209, 0, !dbg !2248
  br i1 %210, label %211, label %289, !dbg !2249

; <label>:211:                                    ; preds = %206
  %212 = bitcast i8** %23 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %212) #8, !dbg !2250
  %213 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2252, !tbaa !1325
  %214 = bitcast %union.netif_ext_callback_args_t* %213 to %struct.link_changed_s*, !dbg !2253
  %215 = getelementptr inbounds %struct.link_changed_s, %struct.link_changed_s* %214, i32 0, i32 0, !dbg !2254
  %216 = load i8, i8* %215, align 8, !dbg !2254, !tbaa !1524
  %217 = zext i8 %216 to i32, !dbg !2252
  %218 = icmp ne i32 %217, 0, !dbg !2252
  %219 = zext i1 %218 to i64, !dbg !2252
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_netif_status_print.__str.24, i32 0, i32 0), i8** %24, align 8, !dbg !2255, !tbaa !1325
  %220 = load i8*, i8** %24, align 8, !dbg !2255, !tbaa !1325
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_netif_status_print.__str.25, i32 0, i32 0), i8** %25, align 8, !dbg !2257, !tbaa !1325
  %221 = load i8*, i8** %25, align 8, !dbg !2257, !tbaa !1325
  %222 = select i1 %218, i8* %220, i8* %221, !dbg !2252
  store i8* %222, i8** %23, align 8, !dbg !2251, !tbaa !1325
  br label %223, !dbg !2259

; <label>:223:                                    ; preds = %211
  %224 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2260
  %225 = icmp uge i64 %224, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2260
  br i1 %225, label %226, label %247, !dbg !2260

; <label>:226:                                    ; preds = %223
  %227 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2260
  %228 = icmp ule i64 %227, ptrtoint ([0 x i8]* @_end to i64), !dbg !2260
  br i1 %228, label %229, label %247, !dbg !2261

; <label>:229:                                    ; preds = %226
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_netif_status_print.__str.26, i32 0, i32 0), i8** %26, align 8, !dbg !2262, !tbaa !1325
  %230 = load i8*, i8** %26, align 8, !dbg !2262, !tbaa !1325
  %231 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2265, !tbaa !1325
  %232 = getelementptr inbounds %struct.netif, %struct.netif* %231, i32 0, i32 22, !dbg !2265
  %233 = getelementptr inbounds [2 x i8], [2 x i8]* %232, i64 0, i64 0, !dbg !2265
  %234 = load i8, i8* %233, align 2, !dbg !2265, !tbaa !1524
  %235 = sext i8 %234 to i32, !dbg !2265
  %236 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2265, !tbaa !1325
  %237 = getelementptr inbounds %struct.netif, %struct.netif* %236, i32 0, i32 22, !dbg !2265
  %238 = getelementptr inbounds [2 x i8], [2 x i8]* %237, i64 0, i64 1, !dbg !2265
  %239 = load i8, i8* %238, align 1, !dbg !2265, !tbaa !1524
  %240 = sext i8 %239 to i32, !dbg !2265
  %241 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2265, !tbaa !1325
  %242 = getelementptr inbounds %struct.netif, %struct.netif* %241, i32 0, i32 23, !dbg !2265
  %243 = load i8, i8* %242, align 8, !dbg !2265, !tbaa !1818
  %244 = zext i8 %243 to i32, !dbg !2265
  %245 = load i8*, i8** %23, align 8, !dbg !2265, !tbaa !1325
  %246 = call i32 (i8*, ...) @printf(i8* %230, i32 %235, i32 %240, i32 %244, i8* %245) #9, !dbg !2265
  br label %285, !dbg !2265

; <label>:247:                                    ; preds = %226, %223
  br label %248, !dbg !2266

; <label>:248:                                    ; preds = %247
  br label %249, !dbg !2267

; <label>:249:                                    ; preds = %248
  %250 = bitcast i32* %27 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %250) #8, !dbg !2268
  %251 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2268
  store i32 %251, i32* %27, align 4, !dbg !2268, !tbaa !1284
  %252 = bitcast i64* %28 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %252) #8, !dbg !2268
  %253 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2268, !tbaa !1325
  %254 = getelementptr inbounds %struct.netif, %struct.netif* %253, i32 0, i32 22, !dbg !2268
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %254, i64 0, i64 1, !dbg !2268
  %256 = load i8, i8* %255, align 1, !dbg !2268, !tbaa !1524
  %257 = sext i8 %256 to i64, !dbg !2268
  store i64 %257, i64* %28, align 8, !dbg !2268, !tbaa !2225
  %258 = bitcast i64* %29 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %258) #8, !dbg !2268
  %259 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2268, !tbaa !1325
  %260 = getelementptr inbounds %struct.netif, %struct.netif* %259, i32 0, i32 23, !dbg !2268
  %261 = load i8, i8* %260, align 8, !dbg !2268, !tbaa !1818
  %262 = zext i8 %261 to i64, !dbg !2268
  store i64 %262, i64* %29, align 8, !dbg !2268, !tbaa !2225
  %263 = bitcast i64* %30 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %263) #8, !dbg !2268
  %264 = load i8*, i8** %23, align 8, !dbg !2268, !tbaa !1325
  %265 = ptrtoint i8* %264 to i64, !dbg !2268
  store i64 %265, i64* %30, align 8, !dbg !2268, !tbaa !2225
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_netif_status_print.__str.27, i32 0, i32 0), i8** %31, align 8, !dbg !2269, !tbaa !1325
  %266 = load i8*, i8** %31, align 8, !dbg !2269, !tbaa !1325
  %267 = ptrtoint i8* %266 to i64, !dbg !2268
  %268 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2268, !tbaa !1325
  %269 = getelementptr inbounds %struct.netif, %struct.netif* %268, i32 0, i32 22, !dbg !2268
  %270 = getelementptr inbounds [2 x i8], [2 x i8]* %269, i64 0, i64 0, !dbg !2268
  %271 = load i8, i8* %270, align 2, !dbg !2268, !tbaa !1524
  %272 = sext i8 %271 to i64, !dbg !2268
  %273 = load i64, i64* %28, align 8, !dbg !2268, !tbaa !2225
  %274 = load i64, i64* %29, align 8, !dbg !2268, !tbaa !2225
  %275 = load i64, i64* %30, align 8, !dbg !2268, !tbaa !2225
  %276 = load i32, i32* %27, align 4, !dbg !2268, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %267, i64 %272, i64 %273, i64 %274, i64 %275, i32 %276, i32 (i8*, ...)* @printf) #8, !dbg !2268, !srcloc !2271
  %277 = bitcast i64* %30 to i8*, !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %277) #8, !dbg !2267
  %278 = bitcast i64* %29 to i8*, !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %278) #8, !dbg !2267
  %279 = bitcast i64* %28 to i8*, !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %279) #8, !dbg !2267
  %280 = bitcast i32* %27 to i8*, !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %280) #8, !dbg !2267
  br label %281, !dbg !2268

; <label>:281:                                    ; preds = %249
  br label %282, !dbg !2268

; <label>:282:                                    ; preds = %281
  br label %283, !dbg !2267

; <label>:283:                                    ; preds = %282
  br label %284, !dbg !2267

; <label>:284:                                    ; preds = %283
  br label %285

; <label>:285:                                    ; preds = %284, %229
  br label %286, !dbg !2261

; <label>:286:                                    ; preds = %285
  br label %287, !dbg !2261

; <label>:287:                                    ; preds = %286
  %288 = bitcast i8** %23 to i8*, !dbg !2272
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %288) #8, !dbg !2272
  br label %289, !dbg !2273

; <label>:289:                                    ; preds = %287, %206
  %290 = load i16, i16* %5, align 2, !dbg !2274, !tbaa !2188
  %291 = zext i16 %290 to i32, !dbg !2274
  %292 = and i32 %291, 8, !dbg !2275
  %293 = icmp ne i32 %292, 0, !dbg !2275
  br i1 %293, label %294, label %372, !dbg !2276

; <label>:294:                                    ; preds = %289
  %295 = bitcast i8** %32 to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %295) #8, !dbg !2277
  %296 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2279, !tbaa !1325
  %297 = bitcast %union.netif_ext_callback_args_t* %296 to %struct.link_changed_s*, !dbg !2280
  %298 = getelementptr inbounds %struct.link_changed_s, %struct.link_changed_s* %297, i32 0, i32 0, !dbg !2281
  %299 = load i8, i8* %298, align 8, !dbg !2281, !tbaa !1524
  %300 = zext i8 %299 to i32, !dbg !2279
  %301 = icmp ne i32 %300, 0, !dbg !2279
  %302 = zext i1 %301 to i64, !dbg !2279
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_netif_status_print.__str.28, i32 0, i32 0), i8** %33, align 8, !dbg !2282, !tbaa !1325
  %303 = load i8*, i8** %33, align 8, !dbg !2282, !tbaa !1325
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_netif_status_print.__str.29, i32 0, i32 0), i8** %34, align 8, !dbg !2284, !tbaa !1325
  %304 = load i8*, i8** %34, align 8, !dbg !2284, !tbaa !1325
  %305 = select i1 %301, i8* %303, i8* %304, !dbg !2279
  store i8* %305, i8** %32, align 8, !dbg !2278, !tbaa !1325
  br label %306, !dbg !2286

; <label>:306:                                    ; preds = %294
  %307 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2287
  %308 = icmp uge i64 %307, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2287
  br i1 %308, label %309, label %330, !dbg !2287

; <label>:309:                                    ; preds = %306
  %310 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2287
  %311 = icmp ule i64 %310, ptrtoint ([0 x i8]* @_end to i64), !dbg !2287
  br i1 %311, label %312, label %330, !dbg !2288

; <label>:312:                                    ; preds = %309
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_netif_status_print.__str.30, i32 0, i32 0), i8** %35, align 8, !dbg !2289, !tbaa !1325
  %313 = load i8*, i8** %35, align 8, !dbg !2289, !tbaa !1325
  %314 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2292, !tbaa !1325
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %314, i32 0, i32 22, !dbg !2292
  %316 = getelementptr inbounds [2 x i8], [2 x i8]* %315, i64 0, i64 0, !dbg !2292
  %317 = load i8, i8* %316, align 2, !dbg !2292, !tbaa !1524
  %318 = sext i8 %317 to i32, !dbg !2292
  %319 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2292, !tbaa !1325
  %320 = getelementptr inbounds %struct.netif, %struct.netif* %319, i32 0, i32 22, !dbg !2292
  %321 = getelementptr inbounds [2 x i8], [2 x i8]* %320, i64 0, i64 1, !dbg !2292
  %322 = load i8, i8* %321, align 1, !dbg !2292, !tbaa !1524
  %323 = sext i8 %322 to i32, !dbg !2292
  %324 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2292, !tbaa !1325
  %325 = getelementptr inbounds %struct.netif, %struct.netif* %324, i32 0, i32 23, !dbg !2292
  %326 = load i8, i8* %325, align 8, !dbg !2292, !tbaa !1818
  %327 = zext i8 %326 to i32, !dbg !2292
  %328 = load i8*, i8** %32, align 8, !dbg !2292, !tbaa !1325
  %329 = call i32 (i8*, ...) @printf(i8* %313, i32 %318, i32 %323, i32 %327, i8* %328) #9, !dbg !2292
  br label %368, !dbg !2292

; <label>:330:                                    ; preds = %309, %306
  br label %331, !dbg !2293

; <label>:331:                                    ; preds = %330
  br label %332, !dbg !2294

; <label>:332:                                    ; preds = %331
  %333 = bitcast i32* %36 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %333) #8, !dbg !2295
  %334 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2295
  store i32 %334, i32* %36, align 4, !dbg !2295, !tbaa !1284
  %335 = bitcast i64* %37 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %335) #8, !dbg !2295
  %336 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2295, !tbaa !1325
  %337 = getelementptr inbounds %struct.netif, %struct.netif* %336, i32 0, i32 22, !dbg !2295
  %338 = getelementptr inbounds [2 x i8], [2 x i8]* %337, i64 0, i64 1, !dbg !2295
  %339 = load i8, i8* %338, align 1, !dbg !2295, !tbaa !1524
  %340 = sext i8 %339 to i64, !dbg !2295
  store i64 %340, i64* %37, align 8, !dbg !2295, !tbaa !2225
  %341 = bitcast i64* %38 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %341) #8, !dbg !2295
  %342 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2295, !tbaa !1325
  %343 = getelementptr inbounds %struct.netif, %struct.netif* %342, i32 0, i32 23, !dbg !2295
  %344 = load i8, i8* %343, align 8, !dbg !2295, !tbaa !1818
  %345 = zext i8 %344 to i64, !dbg !2295
  store i64 %345, i64* %38, align 8, !dbg !2295, !tbaa !2225
  %346 = bitcast i64* %39 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %346) #8, !dbg !2295
  %347 = load i8*, i8** %32, align 8, !dbg !2295, !tbaa !1325
  %348 = ptrtoint i8* %347 to i64, !dbg !2295
  store i64 %348, i64* %39, align 8, !dbg !2295, !tbaa !2225
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_netif_status_print.__str.31, i32 0, i32 0), i8** %40, align 8, !dbg !2296, !tbaa !1325
  %349 = load i8*, i8** %40, align 8, !dbg !2296, !tbaa !1325
  %350 = ptrtoint i8* %349 to i64, !dbg !2295
  %351 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2295, !tbaa !1325
  %352 = getelementptr inbounds %struct.netif, %struct.netif* %351, i32 0, i32 22, !dbg !2295
  %353 = getelementptr inbounds [2 x i8], [2 x i8]* %352, i64 0, i64 0, !dbg !2295
  %354 = load i8, i8* %353, align 2, !dbg !2295, !tbaa !1524
  %355 = sext i8 %354 to i64, !dbg !2295
  %356 = load i64, i64* %37, align 8, !dbg !2295, !tbaa !2225
  %357 = load i64, i64* %38, align 8, !dbg !2295, !tbaa !2225
  %358 = load i64, i64* %39, align 8, !dbg !2295, !tbaa !2225
  %359 = load i32, i32* %36, align 4, !dbg !2295, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %350, i64 %355, i64 %356, i64 %357, i64 %358, i32 %359, i32 (i8*, ...)* @printf) #8, !dbg !2295, !srcloc !2298
  %360 = bitcast i64* %39 to i8*, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %360) #8, !dbg !2294
  %361 = bitcast i64* %38 to i8*, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %361) #8, !dbg !2294
  %362 = bitcast i64* %37 to i8*, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %362) #8, !dbg !2294
  %363 = bitcast i32* %36 to i8*, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %363) #8, !dbg !2294
  br label %364, !dbg !2295

; <label>:364:                                    ; preds = %332
  br label %365, !dbg !2295

; <label>:365:                                    ; preds = %364
  br label %366, !dbg !2294

; <label>:366:                                    ; preds = %365
  br label %367, !dbg !2294

; <label>:367:                                    ; preds = %366
  br label %368

; <label>:368:                                    ; preds = %367, %312
  br label %369, !dbg !2288

; <label>:369:                                    ; preds = %368
  br label %370, !dbg !2288

; <label>:370:                                    ; preds = %369
  %371 = bitcast i8** %32 to i8*, !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %371) #8, !dbg !2299
  br label %372, !dbg !2300

; <label>:372:                                    ; preds = %370, %289
  %373 = load i16, i16* %5, align 2, !dbg !2301, !tbaa !2188
  %374 = zext i16 %373 to i32, !dbg !2301
  %375 = and i32 %374, 128, !dbg !2302
  %376 = icmp ne i32 %375, 0, !dbg !2302
  br i1 %376, label %392, label %377, !dbg !2303

; <label>:377:                                    ; preds = %372
  %378 = load i16, i16* %5, align 2, !dbg !2304, !tbaa !2188
  %379 = zext i16 %378 to i32, !dbg !2304
  %380 = and i32 %379, 16, !dbg !2305
  %381 = icmp ne i32 %380, 0, !dbg !2305
  br i1 %381, label %392, label %382, !dbg !2306

; <label>:382:                                    ; preds = %377
  %383 = load i16, i16* %5, align 2, !dbg !2307, !tbaa !2188
  %384 = zext i16 %383 to i32, !dbg !2307
  %385 = and i32 %384, 64, !dbg !2308
  %386 = icmp ne i32 %385, 0, !dbg !2308
  br i1 %386, label %392, label %387, !dbg !2309

; <label>:387:                                    ; preds = %382
  %388 = load i16, i16* %5, align 2, !dbg !2310, !tbaa !2188
  %389 = zext i16 %388 to i32, !dbg !2310
  %390 = and i32 %389, 32, !dbg !2311
  %391 = icmp ne i32 %390, 0, !dbg !2311
  br i1 %391, label %392, label %476, !dbg !2312

; <label>:392:                                    ; preds = %387, %382, %377, %372
  %393 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2313, !tbaa !1325
  %394 = getelementptr inbounds %struct.netif, %struct.netif* %393, i32 0, i32 1, !dbg !2314
  %395 = load i8*, i8** %8, align 8, !dbg !2315, !tbaa !1325
  %396 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %394, i8* %395, i32 8) #9, !dbg !2316
  %397 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2317, !tbaa !1325
  %398 = getelementptr inbounds %struct.netif, %struct.netif* %397, i32 0, i32 2, !dbg !2318
  %399 = load i8*, i8** %10, align 8, !dbg !2319, !tbaa !1325
  %400 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %398, i8* %399, i32 8) #9, !dbg !2320
  %401 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2321, !tbaa !1325
  %402 = getelementptr inbounds %struct.netif, %struct.netif* %401, i32 0, i32 3, !dbg !2322
  %403 = load i8*, i8** %12, align 8, !dbg !2323, !tbaa !1325
  %404 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %402, i8* %403, i32 8) #9, !dbg !2324
  br label %405, !dbg !2325

; <label>:405:                                    ; preds = %392
  %406 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2326
  %407 = icmp uge i64 %406, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2326
  br i1 %407, label %408, label %430, !dbg !2326

; <label>:408:                                    ; preds = %405
  %409 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2326
  %410 = icmp ule i64 %409, ptrtoint ([0 x i8]* @_end to i64), !dbg !2326
  br i1 %410, label %411, label %430, !dbg !2327

; <label>:411:                                    ; preds = %408
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_netif_status_print.__str.32, i32 0, i32 0), i8** %41, align 8, !dbg !2328, !tbaa !1325
  %412 = load i8*, i8** %41, align 8, !dbg !2328, !tbaa !1325
  %413 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2331, !tbaa !1325
  %414 = getelementptr inbounds %struct.netif, %struct.netif* %413, i32 0, i32 22, !dbg !2331
  %415 = getelementptr inbounds [2 x i8], [2 x i8]* %414, i64 0, i64 0, !dbg !2331
  %416 = load i8, i8* %415, align 2, !dbg !2331, !tbaa !1524
  %417 = sext i8 %416 to i32, !dbg !2331
  %418 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2331, !tbaa !1325
  %419 = getelementptr inbounds %struct.netif, %struct.netif* %418, i32 0, i32 22, !dbg !2331
  %420 = getelementptr inbounds [2 x i8], [2 x i8]* %419, i64 0, i64 1, !dbg !2331
  %421 = load i8, i8* %420, align 1, !dbg !2331, !tbaa !1524
  %422 = sext i8 %421 to i32, !dbg !2331
  %423 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2331, !tbaa !1325
  %424 = getelementptr inbounds %struct.netif, %struct.netif* %423, i32 0, i32 23, !dbg !2331
  %425 = load i8, i8* %424, align 8, !dbg !2331, !tbaa !1818
  %426 = zext i8 %425 to i32, !dbg !2331
  %427 = load i8*, i8** %8, align 8, !dbg !2331, !tbaa !1325
  %428 = load i8*, i8** %10, align 8, !dbg !2331, !tbaa !1325
  %429 = call i32 (i8*, ...) @printf(i8* %412, i32 %417, i32 %422, i32 %426, i8* %427, i8* %428) #9, !dbg !2331
  br label %473, !dbg !2331

; <label>:430:                                    ; preds = %408, %405
  br label %431, !dbg !2332

; <label>:431:                                    ; preds = %430
  br label %432, !dbg !2333

; <label>:432:                                    ; preds = %431
  %433 = bitcast i32* %42 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %433) #8, !dbg !2334
  %434 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2334
  store i32 %434, i32* %42, align 4, !dbg !2334, !tbaa !1284
  %435 = bitcast i64* %43 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %435) #8, !dbg !2334
  %436 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2334, !tbaa !1325
  %437 = getelementptr inbounds %struct.netif, %struct.netif* %436, i32 0, i32 22, !dbg !2334
  %438 = getelementptr inbounds [2 x i8], [2 x i8]* %437, i64 0, i64 1, !dbg !2334
  %439 = load i8, i8* %438, align 1, !dbg !2334, !tbaa !1524
  %440 = sext i8 %439 to i64, !dbg !2334
  store i64 %440, i64* %43, align 8, !dbg !2334, !tbaa !2225
  %441 = bitcast i64* %44 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %441) #8, !dbg !2334
  %442 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2334, !tbaa !1325
  %443 = getelementptr inbounds %struct.netif, %struct.netif* %442, i32 0, i32 23, !dbg !2334
  %444 = load i8, i8* %443, align 8, !dbg !2334, !tbaa !1818
  %445 = zext i8 %444 to i64, !dbg !2334
  store i64 %445, i64* %44, align 8, !dbg !2334, !tbaa !2225
  %446 = bitcast i64* %45 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %446) #8, !dbg !2334
  %447 = load i8*, i8** %8, align 8, !dbg !2334, !tbaa !1325
  %448 = ptrtoint i8* %447 to i64, !dbg !2334
  store i64 %448, i64* %45, align 8, !dbg !2334, !tbaa !2225
  %449 = bitcast i64* %46 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %449) #8, !dbg !2334
  %450 = load i8*, i8** %10, align 8, !dbg !2334, !tbaa !1325
  %451 = ptrtoint i8* %450 to i64, !dbg !2334
  store i64 %451, i64* %46, align 8, !dbg !2334, !tbaa !2225
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_netif_status_print.__str.33, i32 0, i32 0), i8** %47, align 8, !dbg !2335, !tbaa !1325
  %452 = load i8*, i8** %47, align 8, !dbg !2335, !tbaa !1325
  %453 = ptrtoint i8* %452 to i64, !dbg !2334
  %454 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2334, !tbaa !1325
  %455 = getelementptr inbounds %struct.netif, %struct.netif* %454, i32 0, i32 22, !dbg !2334
  %456 = getelementptr inbounds [2 x i8], [2 x i8]* %455, i64 0, i64 0, !dbg !2334
  %457 = load i8, i8* %456, align 2, !dbg !2334, !tbaa !1524
  %458 = sext i8 %457 to i64, !dbg !2334
  %459 = load i64, i64* %43, align 8, !dbg !2334, !tbaa !2225
  %460 = load i64, i64* %44, align 8, !dbg !2334, !tbaa !2225
  %461 = load i64, i64* %45, align 8, !dbg !2334, !tbaa !2225
  %462 = load i64, i64* %46, align 8, !dbg !2334, !tbaa !2225
  %463 = load i32, i32* %42, align 4, !dbg !2334, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %453, i64 %458, i64 %459, i64 %460, i64 %461, i64 %462, i32 %463, i32 (i8*, ...)* @printf) #8, !dbg !2334, !srcloc !2337
  %464 = bitcast i64* %46 to i8*, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %464) #8, !dbg !2333
  %465 = bitcast i64* %45 to i8*, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %465) #8, !dbg !2333
  %466 = bitcast i64* %44 to i8*, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %466) #8, !dbg !2333
  %467 = bitcast i64* %43 to i8*, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %467) #8, !dbg !2333
  %468 = bitcast i32* %42 to i8*, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %468) #8, !dbg !2333
  br label %469, !dbg !2334

; <label>:469:                                    ; preds = %432
  br label %470, !dbg !2334

; <label>:470:                                    ; preds = %469
  br label %471, !dbg !2333

; <label>:471:                                    ; preds = %470
  br label %472, !dbg !2333

; <label>:472:                                    ; preds = %471
  br label %473

; <label>:473:                                    ; preds = %472, %411
  br label %474, !dbg !2327

; <label>:474:                                    ; preds = %473
  br label %475, !dbg !2327

; <label>:475:                                    ; preds = %474
  br label %476, !dbg !2338

; <label>:476:                                    ; preds = %475, %387
  %477 = load i16, i16* %5, align 2, !dbg !2339, !tbaa !2188
  %478 = zext i16 %477 to i32, !dbg !2339
  %479 = and i32 %478, 256, !dbg !2340
  %480 = icmp ne i32 %479, 0, !dbg !2340
  br i1 %480, label %481, label %576, !dbg !2341

; <label>:481:                                    ; preds = %476
  br label %482, !dbg !2342

; <label>:482:                                    ; preds = %481
  %483 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2343
  %484 = icmp uge i64 %483, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2343
  br i1 %484, label %485, label %519, !dbg !2343

; <label>:485:                                    ; preds = %482
  %486 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2343
  %487 = icmp ule i64 %486, ptrtoint ([0 x i8]* @_end to i64), !dbg !2343
  br i1 %487, label %488, label %519, !dbg !2344

; <label>:488:                                    ; preds = %485
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.34, i32 0, i32 0), i8** %48, align 8, !dbg !2345, !tbaa !1325
  %489 = load i8*, i8** %48, align 8, !dbg !2345, !tbaa !1325
  %490 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2348, !tbaa !1325
  %491 = getelementptr inbounds %struct.netif, %struct.netif* %490, i32 0, i32 22, !dbg !2348
  %492 = getelementptr inbounds [2 x i8], [2 x i8]* %491, i64 0, i64 0, !dbg !2348
  %493 = load i8, i8* %492, align 2, !dbg !2348, !tbaa !1524
  %494 = sext i8 %493 to i32, !dbg !2348
  %495 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2348, !tbaa !1325
  %496 = getelementptr inbounds %struct.netif, %struct.netif* %495, i32 0, i32 22, !dbg !2348
  %497 = getelementptr inbounds [2 x i8], [2 x i8]* %496, i64 0, i64 1, !dbg !2348
  %498 = load i8, i8* %497, align 1, !dbg !2348, !tbaa !1524
  %499 = sext i8 %498 to i32, !dbg !2348
  %500 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2348, !tbaa !1325
  %501 = getelementptr inbounds %struct.netif, %struct.netif* %500, i32 0, i32 23, !dbg !2348
  %502 = load i8, i8* %501, align 8, !dbg !2348, !tbaa !1818
  %503 = zext i8 %502 to i32, !dbg !2348
  %504 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2348, !tbaa !1325
  %505 = bitcast %union.netif_ext_callback_args_t* %504 to %struct.ipv6_set_s*, !dbg !2348
  %506 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %505, i32 0, i32 0, !dbg !2348
  %507 = load i8, i8* %506, align 8, !dbg !2348, !tbaa !1524
  %508 = sext i8 %507 to i32, !dbg !2348
  %509 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2348, !tbaa !1325
  %510 = getelementptr inbounds %struct.netif, %struct.netif* %509, i32 0, i32 4, !dbg !2348
  %511 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2348, !tbaa !1325
  %512 = bitcast %union.netif_ext_callback_args_t* %511 to %struct.ipv6_set_s*, !dbg !2348
  %513 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %512, i32 0, i32 0, !dbg !2348
  %514 = load i8, i8* %513, align 8, !dbg !2348, !tbaa !1524
  %515 = sext i8 %514 to i64, !dbg !2348
  %516 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %510, i64 0, i64 %515, !dbg !2348
  %517 = call i8* @ipaddr_ntoa(%struct.ip_addr* %516) #9, !dbg !2348
  %518 = call i32 (i8*, ...) @printf(i8* %489, i32 %494, i32 %499, i32 %503, i32 %508, i8* %517) #9, !dbg !2348
  br label %573, !dbg !2348

; <label>:519:                                    ; preds = %485, %482
  br label %520, !dbg !2349

; <label>:520:                                    ; preds = %519
  br label %521, !dbg !2350

; <label>:521:                                    ; preds = %520
  %522 = bitcast i32* %49 to i8*, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %522) #8, !dbg !2351
  %523 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2351
  store i32 %523, i32* %49, align 4, !dbg !2351, !tbaa !1284
  %524 = bitcast i64* %50 to i8*, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %524) #8, !dbg !2351
  %525 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2351, !tbaa !1325
  %526 = getelementptr inbounds %struct.netif, %struct.netif* %525, i32 0, i32 22, !dbg !2351
  %527 = getelementptr inbounds [2 x i8], [2 x i8]* %526, i64 0, i64 1, !dbg !2351
  %528 = load i8, i8* %527, align 1, !dbg !2351, !tbaa !1524
  %529 = sext i8 %528 to i64, !dbg !2351
  store i64 %529, i64* %50, align 8, !dbg !2351, !tbaa !2225
  %530 = bitcast i64* %51 to i8*, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %530) #8, !dbg !2351
  %531 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2351, !tbaa !1325
  %532 = getelementptr inbounds %struct.netif, %struct.netif* %531, i32 0, i32 23, !dbg !2351
  %533 = load i8, i8* %532, align 8, !dbg !2351, !tbaa !1818
  %534 = zext i8 %533 to i64, !dbg !2351
  store i64 %534, i64* %51, align 8, !dbg !2351, !tbaa !2225
  %535 = bitcast i64* %52 to i8*, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %535) #8, !dbg !2351
  %536 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2351, !tbaa !1325
  %537 = bitcast %union.netif_ext_callback_args_t* %536 to %struct.ipv6_set_s*, !dbg !2351
  %538 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %537, i32 0, i32 0, !dbg !2351
  %539 = load i8, i8* %538, align 8, !dbg !2351, !tbaa !1524
  %540 = sext i8 %539 to i64, !dbg !2351
  store i64 %540, i64* %52, align 8, !dbg !2351, !tbaa !2225
  %541 = bitcast i64* %53 to i8*, !dbg !2351
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %541) #8, !dbg !2351
  %542 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2351, !tbaa !1325
  %543 = getelementptr inbounds %struct.netif, %struct.netif* %542, i32 0, i32 4, !dbg !2351
  %544 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2351, !tbaa !1325
  %545 = bitcast %union.netif_ext_callback_args_t* %544 to %struct.ipv6_set_s*, !dbg !2351
  %546 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %545, i32 0, i32 0, !dbg !2351
  %547 = load i8, i8* %546, align 8, !dbg !2351, !tbaa !1524
  %548 = sext i8 %547 to i64, !dbg !2351
  %549 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %543, i64 0, i64 %548, !dbg !2351
  %550 = call i8* @ipaddr_ntoa(%struct.ip_addr* %549) #9, !dbg !2351
  %551 = ptrtoint i8* %550 to i64, !dbg !2351
  store i64 %551, i64* %53, align 8, !dbg !2351, !tbaa !2225
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.35, i32 0, i32 0), i8** %54, align 8, !dbg !2352, !tbaa !1325
  %552 = load i8*, i8** %54, align 8, !dbg !2352, !tbaa !1325
  %553 = ptrtoint i8* %552 to i64, !dbg !2351
  %554 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2351, !tbaa !1325
  %555 = getelementptr inbounds %struct.netif, %struct.netif* %554, i32 0, i32 22, !dbg !2351
  %556 = getelementptr inbounds [2 x i8], [2 x i8]* %555, i64 0, i64 0, !dbg !2351
  %557 = load i8, i8* %556, align 2, !dbg !2351, !tbaa !1524
  %558 = sext i8 %557 to i64, !dbg !2351
  %559 = load i64, i64* %50, align 8, !dbg !2351, !tbaa !2225
  %560 = load i64, i64* %51, align 8, !dbg !2351, !tbaa !2225
  %561 = load i64, i64* %52, align 8, !dbg !2351, !tbaa !2225
  %562 = load i64, i64* %53, align 8, !dbg !2351, !tbaa !2225
  %563 = load i32, i32* %49, align 4, !dbg !2351, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %553, i64 %558, i64 %559, i64 %560, i64 %561, i64 %562, i32 %563, i32 (i8*, ...)* @printf) #8, !dbg !2351, !srcloc !2354
  %564 = bitcast i64* %53 to i8*, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %564) #8, !dbg !2350
  %565 = bitcast i64* %52 to i8*, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %565) #8, !dbg !2350
  %566 = bitcast i64* %51 to i8*, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %566) #8, !dbg !2350
  %567 = bitcast i64* %50 to i8*, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %567) #8, !dbg !2350
  %568 = bitcast i32* %49 to i8*, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %568) #8, !dbg !2350
  br label %569, !dbg !2351

; <label>:569:                                    ; preds = %521
  br label %570, !dbg !2351

; <label>:570:                                    ; preds = %569
  br label %571, !dbg !2350

; <label>:571:                                    ; preds = %570
  br label %572, !dbg !2350

; <label>:572:                                    ; preds = %571
  br label %573

; <label>:573:                                    ; preds = %572, %488
  br label %574, !dbg !2344

; <label>:574:                                    ; preds = %573
  br label %575, !dbg !2344

; <label>:575:                                    ; preds = %574
  br label %576, !dbg !2355

; <label>:576:                                    ; preds = %575, %476
  %577 = load i16, i16* %5, align 2, !dbg !2356, !tbaa !2188
  %578 = zext i16 %577 to i32, !dbg !2356
  %579 = and i32 %578, 512, !dbg !2357
  %580 = icmp ne i32 %579, 0, !dbg !2357
  br i1 %580, label %581, label %676, !dbg !2358

; <label>:581:                                    ; preds = %576
  br label %582, !dbg !2359

; <label>:582:                                    ; preds = %581
  %583 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2360
  %584 = icmp uge i64 %583, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2360
  br i1 %584, label %585, label %619, !dbg !2360

; <label>:585:                                    ; preds = %582
  %586 = call fastcc i64 @ukarch_read_sp() #9, !dbg !2360
  %587 = icmp ule i64 %586, ptrtoint ([0 x i8]* @_end to i64), !dbg !2360
  br i1 %587, label %588, label %619, !dbg !2361

; <label>:588:                                    ; preds = %585
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.36, i32 0, i32 0), i8** %55, align 8, !dbg !2362, !tbaa !1325
  %589 = load i8*, i8** %55, align 8, !dbg !2362, !tbaa !1325
  %590 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2365, !tbaa !1325
  %591 = getelementptr inbounds %struct.netif, %struct.netif* %590, i32 0, i32 22, !dbg !2365
  %592 = getelementptr inbounds [2 x i8], [2 x i8]* %591, i64 0, i64 0, !dbg !2365
  %593 = load i8, i8* %592, align 2, !dbg !2365, !tbaa !1524
  %594 = sext i8 %593 to i32, !dbg !2365
  %595 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2365, !tbaa !1325
  %596 = getelementptr inbounds %struct.netif, %struct.netif* %595, i32 0, i32 22, !dbg !2365
  %597 = getelementptr inbounds [2 x i8], [2 x i8]* %596, i64 0, i64 1, !dbg !2365
  %598 = load i8, i8* %597, align 1, !dbg !2365, !tbaa !1524
  %599 = sext i8 %598 to i32, !dbg !2365
  %600 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2365, !tbaa !1325
  %601 = getelementptr inbounds %struct.netif, %struct.netif* %600, i32 0, i32 23, !dbg !2365
  %602 = load i8, i8* %601, align 8, !dbg !2365, !tbaa !1818
  %603 = zext i8 %602 to i32, !dbg !2365
  %604 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2365, !tbaa !1325
  %605 = bitcast %union.netif_ext_callback_args_t* %604 to %struct.ipv6_set_s*, !dbg !2365
  %606 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %605, i32 0, i32 0, !dbg !2365
  %607 = load i8, i8* %606, align 8, !dbg !2365, !tbaa !1524
  %608 = sext i8 %607 to i32, !dbg !2365
  %609 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2365, !tbaa !1325
  %610 = getelementptr inbounds %struct.netif, %struct.netif* %609, i32 0, i32 4, !dbg !2365
  %611 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2365, !tbaa !1325
  %612 = bitcast %union.netif_ext_callback_args_t* %611 to %struct.ipv6_addr_state_changed_s*, !dbg !2365
  %613 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %612, i32 0, i32 0, !dbg !2365
  %614 = load i8, i8* %613, align 8, !dbg !2365, !tbaa !1524
  %615 = sext i8 %614 to i64, !dbg !2365
  %616 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %610, i64 0, i64 %615, !dbg !2365
  %617 = call i8* @ipaddr_ntoa(%struct.ip_addr* %616) #9, !dbg !2365
  %618 = call i32 (i8*, ...) @printf(i8* %589, i32 %594, i32 %599, i32 %603, i32 %608, i8* %617) #9, !dbg !2365
  br label %673, !dbg !2365

; <label>:619:                                    ; preds = %585, %582
  br label %620, !dbg !2366

; <label>:620:                                    ; preds = %619
  br label %621, !dbg !2367

; <label>:621:                                    ; preds = %620
  %622 = bitcast i32* %56 to i8*, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %622) #8, !dbg !2368
  %623 = call fastcc i32 @uk_thread_get_tid() #9, !dbg !2368
  store i32 %623, i32* %56, align 4, !dbg !2368, !tbaa !1284
  %624 = bitcast i64* %57 to i8*, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %624) #8, !dbg !2368
  %625 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2368, !tbaa !1325
  %626 = getelementptr inbounds %struct.netif, %struct.netif* %625, i32 0, i32 22, !dbg !2368
  %627 = getelementptr inbounds [2 x i8], [2 x i8]* %626, i64 0, i64 1, !dbg !2368
  %628 = load i8, i8* %627, align 1, !dbg !2368, !tbaa !1524
  %629 = sext i8 %628 to i64, !dbg !2368
  store i64 %629, i64* %57, align 8, !dbg !2368, !tbaa !2225
  %630 = bitcast i64* %58 to i8*, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %630) #8, !dbg !2368
  %631 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2368, !tbaa !1325
  %632 = getelementptr inbounds %struct.netif, %struct.netif* %631, i32 0, i32 23, !dbg !2368
  %633 = load i8, i8* %632, align 8, !dbg !2368, !tbaa !1818
  %634 = zext i8 %633 to i64, !dbg !2368
  store i64 %634, i64* %58, align 8, !dbg !2368, !tbaa !2225
  %635 = bitcast i64* %59 to i8*, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %635) #8, !dbg !2368
  %636 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2368, !tbaa !1325
  %637 = bitcast %union.netif_ext_callback_args_t* %636 to %struct.ipv6_set_s*, !dbg !2368
  %638 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %637, i32 0, i32 0, !dbg !2368
  %639 = load i8, i8* %638, align 8, !dbg !2368, !tbaa !1524
  %640 = sext i8 %639 to i64, !dbg !2368
  store i64 %640, i64* %59, align 8, !dbg !2368, !tbaa !2225
  %641 = bitcast i64* %60 to i8*, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %641) #8, !dbg !2368
  %642 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2368, !tbaa !1325
  %643 = getelementptr inbounds %struct.netif, %struct.netif* %642, i32 0, i32 4, !dbg !2368
  %644 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2368, !tbaa !1325
  %645 = bitcast %union.netif_ext_callback_args_t* %644 to %struct.ipv6_addr_state_changed_s*, !dbg !2368
  %646 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %645, i32 0, i32 0, !dbg !2368
  %647 = load i8, i8* %646, align 8, !dbg !2368, !tbaa !1524
  %648 = sext i8 %647 to i64, !dbg !2368
  %649 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %643, i64 0, i64 %648, !dbg !2368
  %650 = call i8* @ipaddr_ntoa(%struct.ip_addr* %649) #9, !dbg !2368
  %651 = ptrtoint i8* %650 to i64, !dbg !2368
  store i64 %651, i64* %60, align 8, !dbg !2368, !tbaa !2225
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.37, i32 0, i32 0), i8** %61, align 8, !dbg !2369, !tbaa !1325
  %652 = load i8*, i8** %61, align 8, !dbg !2369, !tbaa !1325
  %653 = ptrtoint i8* %652 to i64, !dbg !2368
  %654 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2368, !tbaa !1325
  %655 = getelementptr inbounds %struct.netif, %struct.netif* %654, i32 0, i32 22, !dbg !2368
  %656 = getelementptr inbounds [2 x i8], [2 x i8]* %655, i64 0, i64 0, !dbg !2368
  %657 = load i8, i8* %656, align 2, !dbg !2368, !tbaa !1524
  %658 = sext i8 %657 to i64, !dbg !2368
  %659 = load i64, i64* %57, align 8, !dbg !2368, !tbaa !2225
  %660 = load i64, i64* %58, align 8, !dbg !2368, !tbaa !2225
  %661 = load i64, i64* %59, align 8, !dbg !2368, !tbaa !2225
  %662 = load i64, i64* %60, align 8, !dbg !2368, !tbaa !2225
  %663 = load i32, i32* %56, align 4, !dbg !2368, !tbaa !1284
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %653, i64 %658, i64 %659, i64 %660, i64 %661, i64 %662, i32 %663, i32 (i8*, ...)* @printf) #8, !dbg !2368, !srcloc !2371
  %664 = bitcast i64* %60 to i8*, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %664) #8, !dbg !2367
  %665 = bitcast i64* %59 to i8*, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %665) #8, !dbg !2367
  %666 = bitcast i64* %58 to i8*, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %666) #8, !dbg !2367
  %667 = bitcast i64* %57 to i8*, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %667) #8, !dbg !2367
  %668 = bitcast i32* %56 to i8*, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %668) #8, !dbg !2367
  br label %669, !dbg !2368

; <label>:669:                                    ; preds = %621
  br label %670, !dbg !2368

; <label>:670:                                    ; preds = %669
  br label %671, !dbg !2367

; <label>:671:                                    ; preds = %670
  br label %672, !dbg !2367

; <label>:672:                                    ; preds = %671
  br label %673

; <label>:673:                                    ; preds = %672, %588
  br label %674, !dbg !2361

; <label>:674:                                    ; preds = %673
  br label %675, !dbg !2361

; <label>:675:                                    ; preds = %674
  br label %676, !dbg !2372

; <label>:676:                                    ; preds = %675, %576
  %677 = bitcast i8** %12 to i8*, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %677) #8, !dbg !2373
  %678 = bitcast [17 x i8]* %11 to i8*, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %678) #8, !dbg !2373
  %679 = bitcast i8** %10 to i8*, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %679) #8, !dbg !2373
  %680 = bitcast [17 x i8]* %9 to i8*, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %680) #8, !dbg !2373
  %681 = bitcast i8** %8 to i8*, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %681) #8, !dbg !2373
  %682 = bitcast [17 x i8]* %7 to i8*, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %682) #8, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !2373
  ret void, !dbg !2373
}

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_count() #5

; Function Attrs: noredzone
declare dso_local %struct.uk_netdev* @uk_netdev_get(i32) #5

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_state_get(%struct.uk_netdev*) #5

; Function Attrs: noredzone nounwind
define internal void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev*, i32, i8** nocapture) #1 !dbg !2374 {
  %4 = tail call i8* @uk_netdev_einfo_get(%struct.uk_netdev* %0, i32 %1) #10, !dbg !2386
  %5 = icmp eq i8* %4, null, !dbg !2388
  br i1 %5, label %6, label %7, !dbg !2390

; <label>:6:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !2391, !tbaa !1325
  br label %31, !dbg !2393

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8, !dbg !2394, !tbaa !1325
  %9 = icmp eq i8* %8, null, !dbg !2394
  br i1 %9, label %17, label %10, !dbg !2396

; <label>:10:                                     ; preds = %7
  %11 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2397, !tbaa !1325
  %12 = icmp eq %struct.uk_alloc* %11, null, !dbg !2404
  br i1 %12, label %13, label %14, !dbg !2405, !prof !1337

; <label>:13:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !2406
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2406
  unreachable, !dbg !2406

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %11, i64 0, i32 5, !dbg !2407
  %16 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %15, align 8, !dbg !2407, !tbaa !1325
  tail call void %16(%struct.uk_alloc* nonnull %11, i8* nonnull %8) #10, !dbg !2408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  br label %17, !dbg !2411

; <label>:17:                                     ; preds = %7, %14
  %18 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2412, !tbaa !1325
  %19 = tail call i64 @strlen(i8* nonnull %4) #10, !dbg !2413
  %20 = icmp eq %struct.uk_alloc* %18, null, !dbg !2416
  br i1 %20, label %21, label %23, !dbg !2417, !prof !1337

; <label>:21:                                     ; preds = %17
  %22 = tail call i32* @__errno() #10, !dbg !2418
  store i32 12, i32* %22, align 4, !dbg !2419, !tbaa !1284
  br label %28, !dbg !2420

; <label>:23:                                     ; preds = %17
  %24 = add i64 %19, 1, !dbg !2421
  %25 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %18, i64 0, i32 0, !dbg !2426
  %26 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %25, align 8, !dbg !2426, !tbaa !1325
  %27 = tail call i8* %26(%struct.uk_alloc* nonnull %18, i64 %24) #10, !dbg !2427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  br label %28, !dbg !2429

; <label>:28:                                     ; preds = %21, %23
  %29 = phi i8* [ null, %21 ], [ %27, %23 ], !dbg !2430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2431
  store i8* %29, i8** %2, align 8, !dbg !2432, !tbaa !1325
  %30 = tail call i8* @strcpy(i8* %29, i8* nonnull %4) #10, !dbg !2433
  br label %31, !dbg !2434

; <label>:31:                                     ; preds = %28, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2434
  ret void, !dbg !2434
}

; Function Attrs: noredzone
declare dso_local i32 @ip4addr_aton(i8*, %struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) #4 !dbg !883 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2436
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2436
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2438
  call void @llvm.va_start(i8* nonnull %3), !dbg !2438
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_err.__str.38, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !2439
  call void @llvm.va_end(i8* nonnull %3), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  ret void, !dbg !2443
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
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2444
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2446
  call void @llvm.va_start(i8* nonnull %3), !dbg !2446
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.17, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #10, !dbg !2447
  call void @llvm.va_end(i8* nonnull %3), !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  ret void, !dbg !2451
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
define internal void @uk_semaphore_up(%struct.uk_semaphore*) #4 !dbg !1881 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !2453
  br i1 %2, label %3, label %4, !dbg !2456, !prof !1337

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !2457
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2457
  unreachable, !dbg !2457

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2459
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0, !dbg !2461
  %7 = load i64, i64* %6, align 8, !dbg !2462, !tbaa !1896
  %8 = add nsw i64 %7, 1, !dbg !2462
  store i64 %8, i64* %6, align 8, !dbg !2462, !tbaa !1896
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2466
  %10 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0, !dbg !2468
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !2468, !tbaa !1917
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !2470
  br i1 %12, label %20, label %13, !dbg !2470

; <label>:13:                                     ; preds = %4, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !2470
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !2470, !tbaa !1921
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !2472
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !2472, !tbaa !1926
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #10, !dbg !2473
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !2470
  br i1 %19, label %20, label %13, !dbg !2470, !llvm.loop !1928

; <label>:20:                                     ; preds = %13, %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #10, !dbg !2474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #10, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  ret void, !dbg !2477
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
!1272 = !{i32 431560}
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
!1303 = !{i32 -2145990760, i32 -2145990747, i32 -2145990722, i32 -2145990698, i32 -2145990673, i32 -2145990598, i32 -2145990573, i32 -2145990429, i32 -2145987356, i32 -2145987267, i32 -2145987146, i32 -2145987051, i32 -2145986950, i32 -2145986923, i32 -2145986840, i32 -2145986751, i32 -2145986630, i32 -2145986530, i32 -2145986424, i32 -2145986316, i32 -2145990146, i32 -2145990093, i32 -2145990062, i32 -2145990031, i32 -2145990010, i32 -2145989988, i32 -2145989939, i32 -2145989918, i32 -2145986233, i32 -2145986144, i32 -2145986023, i32 -2145985924, i32 -2145985818, i32 -2145985716, i32 -2145985683, i32 -2145985610, i32 -2145985542, i32 -2145989616, i32 -2145989557, i32 -2145989504, i32 -2145989473, i32 -2145989442, i32 -2145989421, i32 -2145989399, i32 -2145989350, i32 -2145989329, i32 -2145985493, i32 -2145985404, i32 -2145985283, i32 -2145985184, i32 -2145985078, i32 -2145984976, i32 -2145984943, i32 -2145984860, i32 -2145984771, i32 -2145984650, i32 -2145984550, i32 -2145984524, i32 -2145984421, i32 -2145984395, i32 -2145989071, i32 -2145989004, i32 -2145988979, i32 -2145988915, i32 -2145988833, i32 -2145988810, i32 -2145988785, i32 -2145988760}
!1304 = !DILocation(line: 205, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 205, column: 2)
!1306 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 205, column: 2)
!1307 = !{i32 -2145987813, i32 -2145987796}
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
!1349 = !DILocation(line: 154, column: 12, scope: !1343, inlinedAt: !1347)
!1350 = !DILocation(line: 154, column: 9, scope: !1343, inlinedAt: !1347)
!1351 = !DILocation(line: 154, column: 2, scope: !1343, inlinedAt: !1347)
!1352 = !DILocation(line: 163, column: 2, scope: !1328, inlinedAt: !1332)
!1353 = !DILocation(line: 0, scope: !1328, inlinedAt: !1332)
!1354 = !DILocation(line: 164, column: 1, scope: !1328, inlinedAt: !1332)
!1355 = !DILocation(line: 214, column: 40, scope: !2)
!1356 = !DILocation(line: 214, column: 31, scope: !2)
!1357 = !DILocation(line: 215, column: 10, scope: !2)
!1358 = !DILocation(line: 219, column: 2, scope: !2)
!1359 = !DILocation(line: 221, column: 2, scope: !2)
!1360 = !DILocation(line: 223, column: 2, scope: !2)
!1361 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 228, column: 2, scope: !1123)
!1363 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1362)
!1364 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1362)
!1365 = !DILocation(line: 228, column: 2, scope: !1123)
!1366 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 228, column: 2, scope: !1123)
!1368 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1367)
!1369 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1367)
!1370 = !DILocation(line: 228, column: 2, scope: !1124)
!1371 = !DILocalVariable(name: "fmt", arg: 1, scope: !1372, file: !720, line: 170, type: !61)
!1372 = distinct !DISubprogram(name: "uk_pr_info", scope: !720, file: !720, line: 170, type: !721, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1373)
!1373 = !{!1371, !1374}
!1374 = !DILocalVariable(name: "argp", scope: !1372, file: !720, line: 172, type: !726)
!1375 = !DILocation(line: 170, column: 43, scope: !1372, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 228, column: 2, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 228, column: 2)
!1378 = !DILocation(line: 176, column: 1, scope: !1372, inlinedAt: !1376)
!1379 = !DILocation(line: 228, column: 2, scope: !1377)
!1380 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 228, column: 2, scope: !1120)
!1383 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1381)
!1384 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1381)
!1385 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1382)
!1386 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1382)
!1387 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1382)
!1388 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1382)
!1389 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1382)
!1390 = !DILocation(line: 228, column: 2, scope: !1120)
!1391 = !{i32 -2145981791, i32 -2145981778, i32 -2145981753, i32 -2145981729, i32 -2145981704, i32 -2145981629, i32 -2145981604, i32 -2145981460, i32 -2145978971, i32 -2145978882, i32 -2145978761, i32 -2145978666, i32 -2145978565, i32 -2145978538, i32 -2145978455, i32 -2145978366, i32 -2145978245, i32 -2145978145, i32 -2145978039, i32 -2145977931, i32 -2145981172, i32 -2145981119, i32 -2145981088, i32 -2145981057, i32 -2145981036, i32 -2145981014, i32 -2145980965, i32 -2145980944, i32 -2145977848, i32 -2145977759, i32 -2145977638, i32 -2145977539, i32 -2145977433, i32 -2145977331, i32 -2145977298, i32 -2145977225, i32 -2145977157, i32 -2145980570, i32 -2145980517, i32 -2145980486, i32 -2145980455, i32 -2145980434, i32 -2145980412, i32 -2145980363, i32 -2145980342, i32 -2145977111, i32 -2145977022, i32 -2145976901, i32 -2145976802, i32 -2145976696, i32 -2145976594, i32 -2145976561, i32 -2145976478, i32 -2145976389, i32 -2145976268, i32 -2145976168, i32 -2145976142, i32 -2145976039, i32 -2145976013, i32 -2145980084, i32 -2145980017, i32 -2145979992, i32 -2145979928, i32 -2145979812, i32 -2145979787, i32 -2145979762}
!1392 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 231, column: 2, scope: !1129)
!1394 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1393)
!1395 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1393)
!1396 = !DILocation(line: 231, column: 2, scope: !1129)
!1397 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 231, column: 2, scope: !1129)
!1399 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1398)
!1400 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1398)
!1401 = !DILocation(line: 231, column: 2, scope: !1130)
!1402 = !DILocation(line: 231, column: 2, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 231, column: 2)
!1404 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 231, column: 2, scope: !1126)
!1407 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1405)
!1408 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1405)
!1409 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1406)
!1410 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1406)
!1411 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1406)
!1412 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1406)
!1413 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1406)
!1414 = !DILocation(line: 231, column: 2, scope: !1126)
!1415 = !{i32 -2145974044, i32 -2145974031, i32 -2145974006, i32 -2145973982, i32 -2145973957, i32 -2145973882, i32 -2145973857, i32 -2145973713, i32 -2145971461, i32 -2145971372, i32 -2145971251, i32 -2145971156, i32 -2145971055, i32 -2145971028, i32 -2145970945, i32 -2145970856, i32 -2145970735, i32 -2145970635, i32 -2145970529, i32 -2145970421, i32 -2145973421, i32 -2145973368, i32 -2145973337, i32 -2145973306, i32 -2145973285, i32 -2145973263, i32 -2145973214, i32 -2145973193, i32 -2145970338, i32 -2145970249, i32 -2145970128, i32 -2145970029, i32 -2145969923, i32 -2145969821, i32 -2145969788, i32 -2145969715, i32 -2145969647, i32 -2145972816, i32 -2145972763, i32 -2145972732, i32 -2145972701, i32 -2145972680, i32 -2145972658, i32 -2145972609, i32 -2145972588, i32 -2145969594, i32 -2145969505, i32 -2145969384, i32 -2145969285, i32 -2145969179, i32 -2145969077, i32 -2145969044, i32 -2145968961, i32 -2145968872, i32 -2145968751, i32 -2145968651, i32 -2145968625, i32 -2145968522, i32 -2145968496, i32 -2145972330, i32 -2145972263, i32 -2145972238, i32 -2145972174, i32 -2145972058, i32 -2145972033, i32 -2145972008}
!1416 = !DILocation(line: 237, column: 2, scope: !2)
!1417 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 240, column: 2, scope: !1135)
!1419 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1418)
!1420 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1418)
!1421 = !DILocation(line: 240, column: 2, scope: !1135)
!1422 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 240, column: 2, scope: !1135)
!1424 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1423)
!1425 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1423)
!1426 = !DILocation(line: 240, column: 2, scope: !1136)
!1427 = !DILocation(line: 240, column: 2, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 240, column: 2)
!1429 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 240, column: 2, scope: !1132)
!1432 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1430)
!1433 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1430)
!1434 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1431)
!1435 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1431)
!1436 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1431)
!1437 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1431)
!1438 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1431)
!1439 = !DILocation(line: 240, column: 2, scope: !1132)
!1440 = !{i32 -2145966533, i32 -2145966520, i32 -2145966495, i32 -2145966471, i32 -2145966446, i32 -2145966371, i32 -2145966346, i32 -2145966202, i32 -2145963976, i32 -2145963887, i32 -2145963766, i32 -2145963671, i32 -2145963570, i32 -2145963543, i32 -2145963460, i32 -2145963371, i32 -2145963250, i32 -2145963150, i32 -2145963044, i32 -2145962936, i32 -2145965914, i32 -2145965861, i32 -2145965830, i32 -2145965799, i32 -2145965778, i32 -2145965756, i32 -2145965707, i32 -2145965686, i32 -2145962853, i32 -2145962764, i32 -2145962643, i32 -2145962544, i32 -2145962438, i32 -2145962336, i32 -2145962303, i32 -2145962230, i32 -2145962162, i32 -2145965312, i32 -2145965259, i32 -2145965228, i32 -2145965197, i32 -2145965176, i32 -2145965154, i32 -2145965105, i32 -2145965084, i32 -2145962109, i32 -2145962020, i32 -2145961899, i32 -2145961800, i32 -2145961694, i32 -2145961592, i32 -2145961559, i32 -2145961476, i32 -2145961387, i32 -2145961266, i32 -2145961166, i32 -2145961140, i32 -2145961037, i32 -2145961011, i32 -2145964826, i32 -2145964759, i32 -2145964734, i32 -2145964670, i32 -2145964554, i32 -2145964529, i32 -2145964504}
!1441 = !DILocation(line: 245, column: 2, scope: !2)
!1442 = !DILocation(line: 217, column: 6, scope: !2)
!1443 = !DILocation(line: 250, column: 2, scope: !2)
!1444 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 252, column: 2, scope: !1142)
!1446 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1445)
!1447 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1445)
!1448 = !DILocation(line: 252, column: 2, scope: !1142)
!1449 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 252, column: 2, scope: !1142)
!1451 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1450)
!1452 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1450)
!1453 = !DILocation(line: 252, column: 2, scope: !1143)
!1454 = !DILocation(line: 252, column: 2, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 252, column: 2)
!1456 = !DILocation(line: 250, column: 15, scope: !2)
!1457 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 252, column: 2, scope: !1139)
!1460 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1458)
!1461 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1458)
!1462 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1459)
!1463 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1459)
!1464 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1459)
!1465 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1459)
!1466 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1459)
!1467 = !DILocation(line: 252, column: 2, scope: !1139)
!1468 = !{i32 -2145959022, i32 -2145959009, i32 -2145958984, i32 -2145958960, i32 -2145958935, i32 -2145958860, i32 -2145958835, i32 -2145958691, i32 -2145955542, i32 -2145955453, i32 -2145955332, i32 -2145955237, i32 -2145955136, i32 -2145955109, i32 -2145955026, i32 -2145954937, i32 -2145954816, i32 -2145954716, i32 -2145954610, i32 -2145954502, i32 -2145958408, i32 -2145958355, i32 -2145958324, i32 -2145958293, i32 -2145958272, i32 -2145958250, i32 -2145958201, i32 -2145958180, i32 -2145954419, i32 -2145954330, i32 -2145954209, i32 -2145954110, i32 -2145954004, i32 -2145953902, i32 -2145953869, i32 -2145953796, i32 -2145953728, i32 -2145957878, i32 -2145957819, i32 -2145957766, i32 -2145957735, i32 -2145957704, i32 -2145957683, i32 -2145957661, i32 -2145957612, i32 -2145957591, i32 -2145953677, i32 -2145953588, i32 -2145953467, i32 -2145953368, i32 -2145953262, i32 -2145953160, i32 -2145953127, i32 -2145953044, i32 -2145952955, i32 -2145952834, i32 -2145952734, i32 -2145952708, i32 -2145952605, i32 -2145952579, i32 -2145957333, i32 -2145957266, i32 -2145957241, i32 -2145957177, i32 -2145957095, i32 -2145957072, i32 -2145957047, i32 -2145957022}
!1469 = !DILocation(line: 252, column: 2, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 252, column: 2)
!1471 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 252, column: 2)
!1472 = !{i32 -2145956075, i32 -2145956058}
!1473 = !DILocation(line: 254, column: 26, scope: !1147)
!1474 = !DILocation(line: 211, column: 15, scope: !2)
!1475 = !DILocation(line: 254, column: 24, scope: !1147)
!1476 = !DILocation(line: 254, column: 2, scope: !1148)
!1477 = !DILocation(line: 255, column: 3, scope: !1146)
!1478 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 256, column: 3, scope: !1153)
!1480 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1479)
!1481 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1479)
!1482 = !DILocation(line: 256, column: 3, scope: !1153)
!1483 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 256, column: 3, scope: !1153)
!1485 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1484)
!1486 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1484)
!1487 = !DILocation(line: 256, column: 3, scope: !1154)
!1488 = !DILocation(line: 256, column: 3, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 256, column: 3)
!1490 = !DILocation(line: 212, column: 20, scope: !2)
!1491 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 256, column: 3, scope: !1150)
!1494 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1492)
!1495 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1492)
!1496 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1493)
!1497 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1493)
!1498 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1493)
!1499 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1493)
!1500 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1493)
!1501 = !DILocation(line: 256, column: 3, scope: !1150)
!1502 = !{i32 -2145950608, i32 -2145950595, i32 -2145950570, i32 -2145950546, i32 -2145950521, i32 -2145950446, i32 -2145950421, i32 -2145950277, i32 -2145947157, i32 -2145947068, i32 -2145946947, i32 -2145946852, i32 -2145946751, i32 -2145946724, i32 -2145946641, i32 -2145946552, i32 -2145946431, i32 -2145946331, i32 -2145946225, i32 -2145946117, i32 -2145949989, i32 -2145949936, i32 -2145949905, i32 -2145949874, i32 -2145949853, i32 -2145949831, i32 -2145949782, i32 -2145949761, i32 -2145946034, i32 -2145945945, i32 -2145945824, i32 -2145945725, i32 -2145945619, i32 -2145945517, i32 -2145945484, i32 -2145945411, i32 -2145945343, i32 -2145949457, i32 -2145949398, i32 -2145949345, i32 -2145949314, i32 -2145949283, i32 -2145949262, i32 -2145949240, i32 -2145949191, i32 -2145949170, i32 -2145945294, i32 -2145945205, i32 -2145945084, i32 -2145944985, i32 -2145944879, i32 -2145944777, i32 -2145944744, i32 -2145944661, i32 -2145944572, i32 -2145944451, i32 -2145944351, i32 -2145944325, i32 -2145944222, i32 -2145944196, i32 -2145948912, i32 -2145948845, i32 -2145948820, i32 -2145948756, i32 -2145948674, i32 -2145948651, i32 -2145948626, i32 -2145948601}
!1503 = !DILocation(line: 256, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 256, column: 3)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 256, column: 3)
!1506 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 256, column: 3)
!1507 = !{i32 -2145947413, i32 -2145947397}
!1508 = !DILocation(line: 257, column: 8, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 257, column: 7)
!1510 = !DILocation(line: 257, column: 7, scope: !1146)
!1511 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 260, column: 3, scope: !1160)
!1513 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1512)
!1514 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1512)
!1515 = !DILocation(line: 260, column: 3, scope: !1160)
!1516 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 260, column: 3, scope: !1160)
!1518 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1517)
!1519 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1517)
!1520 = !DILocation(line: 260, column: 3, scope: !1161)
!1521 = !DILocation(line: 260, column: 3, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 260, column: 3)
!1523 = !DILocation(line: 255, column: 24, scope: !1146)
!1524 = !{!1286, !1286, i64 0}
!1525 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 260, column: 3, scope: !1157)
!1528 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1526)
!1529 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1526)
!1530 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1527)
!1531 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1527)
!1532 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1527)
!1533 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1527)
!1534 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1527)
!1535 = !DILocation(line: 260, column: 3, scope: !1157)
!1536 = !{i32 -2145942171, i32 -2145942158, i32 -2145942133, i32 -2145942109, i32 -2145942084, i32 -2145942009, i32 -2145941984, i32 -2145941840, i32 -2145938638, i32 -2145938549, i32 -2145938428, i32 -2145938333, i32 -2145938232, i32 -2145938205, i32 -2145938122, i32 -2145938033, i32 -2145937912, i32 -2145937812, i32 -2145937706, i32 -2145937598, i32 -2145941552, i32 -2145941499, i32 -2145941468, i32 -2145941437, i32 -2145941416, i32 -2145941394, i32 -2145941345, i32 -2145941324, i32 -2145937515, i32 -2145937426, i32 -2145937305, i32 -2145937206, i32 -2145937100, i32 -2145936998, i32 -2145936965, i32 -2145936892, i32 -2145936824, i32 -2145941020, i32 -2145940961, i32 -2145940908, i32 -2145940877, i32 -2145940846, i32 -2145940825, i32 -2145940803, i32 -2145940754, i32 -2145940733, i32 -2145936769, i32 -2145936680, i32 -2145936559, i32 -2145936460, i32 -2145936354, i32 -2145936252, i32 -2145936219, i32 -2145936136, i32 -2145936047, i32 -2145935926, i32 -2145935826, i32 -2145935800, i32 -2145935697, i32 -2145935671, i32 -2145940475, i32 -2145940408, i32 -2145940383, i32 -2145940319, i32 -2145940237, i32 -2145940214, i32 -2145940189, i32 -2145940164}
!1537 = !DILocation(line: 260, column: 3, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 260, column: 3)
!1539 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 260, column: 3)
!1540 = !{i32 -2145939183, i32 -2145939166}
!1541 = !DILocation(line: 263, column: 7, scope: !1170)
!1542 = !DILocation(line: 263, column: 20, scope: !1170)
!1543 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 0, scope: !1175)
!1545 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1544)
!1546 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1544)
!1547 = !DILocation(line: 0, scope: !1175)
!1548 = !DILocation(line: 263, column: 7, scope: !1146)
!1549 = !DILocation(line: 264, column: 4, scope: !1167)
!1550 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 264, column: 4, scope: !1167)
!1552 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1551)
!1553 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1551)
!1554 = !DILocation(line: 264, column: 4, scope: !1168)
!1555 = !DILocation(line: 170, column: 43, scope: !1372, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 264, column: 4, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 264, column: 4)
!1558 = !DILocation(line: 176, column: 1, scope: !1372, inlinedAt: !1556)
!1559 = !DILocation(line: 264, column: 4, scope: !1557)
!1560 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 264, column: 4, scope: !1164)
!1563 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1561)
!1564 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1561)
!1565 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1562)
!1566 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1562)
!1567 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1562)
!1568 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1562)
!1569 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1562)
!1570 = !DILocation(line: 264, column: 4, scope: !1164)
!1571 = !{i32 -2145932668, i32 -2145932655, i32 -2145932630, i32 -2145932606, i32 -2145932581, i32 -2145932506, i32 -2145932481, i32 -2145932337, i32 -2145929716, i32 -2145929627, i32 -2145929506, i32 -2145929411, i32 -2145929310, i32 -2145929283, i32 -2145929200, i32 -2145929111, i32 -2145928990, i32 -2145928890, i32 -2145928784, i32 -2145928676, i32 -2145932045, i32 -2145931992, i32 -2145931961, i32 -2145931930, i32 -2145931909, i32 -2145931887, i32 -2145931838, i32 -2145931817, i32 -2145928593, i32 -2145928504, i32 -2145928383, i32 -2145928284, i32 -2145928178, i32 -2145928076, i32 -2145928043, i32 -2145927970, i32 -2145927902, i32 -2145931440, i32 -2145931387, i32 -2145931356, i32 -2145931325, i32 -2145931304, i32 -2145931282, i32 -2145931233, i32 -2145931212, i32 -2145927856, i32 -2145927767, i32 -2145927646, i32 -2145927547, i32 -2145927441, i32 -2145927339, i32 -2145927306, i32 -2145927223, i32 -2145927134, i32 -2145927013, i32 -2145926913, i32 -2145926887, i32 -2145926784, i32 -2145926758, i32 -2145930954, i32 -2145930887, i32 -2145930862, i32 -2145930798, i32 -2145930682, i32 -2145930657, i32 -2145930632}
!1572 = !DILocation(line: 270, column: 3, scope: !1175)
!1573 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 270, column: 3, scope: !1175)
!1575 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1574)
!1576 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1574)
!1577 = !DILocation(line: 270, column: 3, scope: !1176)
!1578 = !DILocation(line: 170, column: 43, scope: !1372, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 270, column: 3, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 270, column: 3)
!1581 = !DILocation(line: 176, column: 1, scope: !1372, inlinedAt: !1579)
!1582 = !DILocation(line: 270, column: 3, scope: !1580)
!1583 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 270, column: 3, scope: !1172)
!1586 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1584)
!1587 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1584)
!1588 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1585)
!1589 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1585)
!1590 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1585)
!1591 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1585)
!1592 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1585)
!1593 = !DILocation(line: 270, column: 3, scope: !1172)
!1594 = !{i32 -2145923995, i32 -2145923982, i32 -2145923957, i32 -2145923933, i32 -2145923908, i32 -2145923833, i32 -2145923808, i32 -2145923664, i32 -2145921109, i32 -2145921020, i32 -2145920899, i32 -2145920804, i32 -2145920703, i32 -2145920676, i32 -2145920593, i32 -2145920504, i32 -2145920383, i32 -2145920283, i32 -2145920177, i32 -2145920069, i32 -2145923372, i32 -2145923319, i32 -2145923288, i32 -2145923257, i32 -2145923236, i32 -2145923214, i32 -2145923165, i32 -2145923144, i32 -2145919986, i32 -2145919897, i32 -2145919776, i32 -2145919677, i32 -2145919571, i32 -2145919469, i32 -2145919436, i32 -2145919363, i32 -2145919295, i32 -2145922767, i32 -2145922714, i32 -2145922683, i32 -2145922652, i32 -2145922631, i32 -2145922609, i32 -2145922560, i32 -2145922539, i32 -2145919249, i32 -2145919160, i32 -2145919039, i32 -2145918940, i32 -2145918834, i32 -2145918732, i32 -2145918699, i32 -2145918616, i32 -2145918527, i32 -2145918406, i32 -2145918306, i32 -2145918280, i32 -2145918177, i32 -2145918151, i32 -2145922281, i32 -2145922214, i32 -2145922189, i32 -2145922125, i32 -2145922009, i32 -2145921984, i32 -2145921959}
!1595 = !DILocation(line: 220, column: 14, scope: !2)
!1596 = !DILocation(line: 222, column: 14, scope: !2)
!1597 = !DILocation(line: 224, column: 14, scope: !2)
!1598 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 280, column: 3, scope: !1181)
!1600 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1599)
!1601 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1599)
!1602 = !DILocation(line: 280, column: 3, scope: !1181)
!1603 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 280, column: 3, scope: !1181)
!1605 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1604)
!1606 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1604)
!1607 = !DILocation(line: 280, column: 3, scope: !1182)
!1608 = !DILocation(line: 280, column: 3, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 280, column: 3)
!1610 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 280, column: 3, scope: !1178)
!1613 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1611)
!1614 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1611)
!1615 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1612)
!1616 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1612)
!1617 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1612)
!1618 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1612)
!1619 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1612)
!1620 = !DILocation(line: 280, column: 3, scope: !1178)
!1621 = !{i32 -2145915770, i32 -2145915757, i32 -2145915732, i32 -2145915708, i32 -2145915683, i32 -2145915608, i32 -2145915583, i32 -2145915439, i32 -2145913099, i32 -2145913010, i32 -2145912889, i32 -2145912794, i32 -2145912693, i32 -2145912666, i32 -2145912583, i32 -2145912494, i32 -2145912373, i32 -2145912273, i32 -2145912167, i32 -2145912059, i32 -2145915109, i32 -2145915056, i32 -2145915025, i32 -2145914994, i32 -2145914973, i32 -2145914951, i32 -2145914902, i32 -2145914881, i32 -2145914778, i32 -2145911976, i32 -2145911887, i32 -2145911766, i32 -2145911667, i32 -2145911561, i32 -2145911459, i32 -2145911426, i32 -2145911353, i32 -2145911285, i32 -2145914518, i32 -2145914465, i32 -2145914434, i32 -2145914403, i32 -2145914382, i32 -2145914360, i32 -2145914311, i32 -2145914290, i32 -2145911220, i32 -2145911131, i32 -2145911010, i32 -2145910911, i32 -2145910805, i32 -2145910703, i32 -2145910670, i32 -2145910587, i32 -2145910498, i32 -2145910377, i32 -2145910277, i32 -2145910251, i32 -2145910148, i32 -2145910122, i32 -2145914032, i32 -2145913965, i32 -2145913940, i32 -2145913876, i32 -2145913760, i32 -2145913735, i32 -2145913710}
!1622 = !DILocation(line: 283, column: 7, scope: !1193)
!1623 = !DILocation(line: 283, column: 7, scope: !1146)
!1624 = !DILocation(line: 219, column: 13, scope: !2)
!1625 = !DILocation(line: 284, column: 8, scope: !1191)
!1626 = !DILocation(line: 284, column: 36, scope: !1191)
!1627 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 0, scope: !1188)
!1629 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1628)
!1630 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1628)
!1631 = !DILocation(line: 0, scope: !1188)
!1632 = !DILocation(line: 284, column: 8, scope: !1192)
!1633 = !DILocation(line: 285, column: 5, scope: !1188)
!1634 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 285, column: 5, scope: !1188)
!1636 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1635)
!1637 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1635)
!1638 = !DILocation(line: 285, column: 5, scope: !1189)
!1639 = !DILocation(line: 285, column: 5, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 285, column: 5)
!1641 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 285, column: 5, scope: !1185)
!1644 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1642)
!1645 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1642)
!1646 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1643)
!1647 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1643)
!1648 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1643)
!1649 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1643)
!1650 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1643)
!1651 = !DILocation(line: 285, column: 5, scope: !1185)
!1652 = !{i32 -2145907368, i32 -2145907355, i32 -2145907330, i32 -2145907306, i32 -2145907281, i32 -2145907206, i32 -2145907181, i32 -2145907037, i32 -2145904490, i32 -2145904401, i32 -2145904280, i32 -2145904185, i32 -2145904084, i32 -2145904057, i32 -2145903974, i32 -2145903885, i32 -2145903764, i32 -2145903664, i32 -2145903558, i32 -2145903450, i32 -2145906745, i32 -2145906692, i32 -2145906661, i32 -2145906630, i32 -2145906609, i32 -2145906587, i32 -2145906538, i32 -2145906517, i32 -2145903367, i32 -2145903278, i32 -2145903157, i32 -2145903058, i32 -2145902952, i32 -2145902850, i32 -2145902817, i32 -2145902744, i32 -2145902676, i32 -2145906140, i32 -2145906087, i32 -2145906056, i32 -2145906025, i32 -2145906004, i32 -2145905982, i32 -2145905933, i32 -2145905912, i32 -2145902631, i32 -2145902542, i32 -2145902421, i32 -2145902322, i32 -2145902216, i32 -2145902114, i32 -2145902081, i32 -2145901998, i32 -2145901909, i32 -2145901788, i32 -2145901688, i32 -2145901662, i32 -2145901559, i32 -2145901533, i32 -2145905654, i32 -2145905587, i32 -2145905562, i32 -2145905498, i32 -2145905382, i32 -2145905357, i32 -2145905332}
!1653 = !DILocation(line: 295, column: 3, scope: !1198)
!1654 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 295, column: 3, scope: !1198)
!1656 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1655)
!1657 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1655)
!1658 = !DILocation(line: 295, column: 3, scope: !1199)
!1659 = !DILocation(line: 295, column: 3, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 295, column: 3)
!1661 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 295, column: 3, scope: !1195)
!1664 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1662)
!1665 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1662)
!1666 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1663)
!1667 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1663)
!1668 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1663)
!1669 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1663)
!1670 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1663)
!1671 = !DILocation(line: 295, column: 3, scope: !1195)
!1672 = !{i32 -2145899190, i32 -2145899177, i32 -2145899152, i32 -2145899128, i32 -2145899103, i32 -2145899028, i32 -2145899003, i32 -2145898859, i32 -2145896519, i32 -2145896430, i32 -2145896309, i32 -2145896214, i32 -2145896113, i32 -2145896086, i32 -2145896003, i32 -2145895914, i32 -2145895793, i32 -2145895693, i32 -2145895587, i32 -2145895479, i32 -2145898529, i32 -2145898476, i32 -2145898445, i32 -2145898414, i32 -2145898393, i32 -2145898371, i32 -2145898322, i32 -2145898301, i32 -2145898198, i32 -2145895396, i32 -2145895307, i32 -2145895186, i32 -2145895087, i32 -2145894981, i32 -2145894879, i32 -2145894846, i32 -2145894773, i32 -2145894705, i32 -2145897938, i32 -2145897885, i32 -2145897854, i32 -2145897823, i32 -2145897802, i32 -2145897780, i32 -2145897731, i32 -2145897710, i32 -2145894640, i32 -2145894551, i32 -2145894430, i32 -2145894331, i32 -2145894225, i32 -2145894123, i32 -2145894090, i32 -2145894007, i32 -2145893918, i32 -2145893797, i32 -2145893697, i32 -2145893671, i32 -2145893568, i32 -2145893542, i32 -2145897452, i32 -2145897385, i32 -2145897360, i32 -2145897296, i32 -2145897180, i32 -2145897155, i32 -2145897130}
!1673 = !DILocation(line: 298, column: 7, scope: !1210)
!1674 = !DILocation(line: 298, column: 7, scope: !1146)
!1675 = !DILocation(line: 221, column: 13, scope: !2)
!1676 = !DILocation(line: 299, column: 8, scope: !1208)
!1677 = !DILocation(line: 299, column: 38, scope: !1208)
!1678 = !DILocation(line: 299, column: 8, scope: !1209)
!1679 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 300, column: 5, scope: !1205)
!1681 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1680)
!1682 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1680)
!1683 = !DILocation(line: 300, column: 5, scope: !1205)
!1684 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 300, column: 5, scope: !1205)
!1686 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1685)
!1687 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1685)
!1688 = !DILocation(line: 300, column: 5, scope: !1206)
!1689 = !DILocation(line: 300, column: 5, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 300, column: 5)
!1691 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 300, column: 5, scope: !1202)
!1694 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1692)
!1695 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1692)
!1696 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1693)
!1697 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1693)
!1698 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1693)
!1699 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1693)
!1700 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1693)
!1701 = !DILocation(line: 300, column: 5, scope: !1202)
!1702 = !{i32 -2145890802, i32 -2145890789, i32 -2145890764, i32 -2145890740, i32 -2145890715, i32 -2145890640, i32 -2145890615, i32 -2145890471, i32 -2145887928, i32 -2145887839, i32 -2145887718, i32 -2145887623, i32 -2145887522, i32 -2145887495, i32 -2145887412, i32 -2145887323, i32 -2145887202, i32 -2145887102, i32 -2145886996, i32 -2145886888, i32 -2145890179, i32 -2145890126, i32 -2145890095, i32 -2145890064, i32 -2145890043, i32 -2145890021, i32 -2145889972, i32 -2145889951, i32 -2145886805, i32 -2145886716, i32 -2145886595, i32 -2145886496, i32 -2145886390, i32 -2145886288, i32 -2145886255, i32 -2145886182, i32 -2145886114, i32 -2145889574, i32 -2145889521, i32 -2145889490, i32 -2145889459, i32 -2145889438, i32 -2145889416, i32 -2145889367, i32 -2145889346, i32 -2145886069, i32 -2145885980, i32 -2145885859, i32 -2145885760, i32 -2145885654, i32 -2145885552, i32 -2145885519, i32 -2145885436, i32 -2145885347, i32 -2145885226, i32 -2145885126, i32 -2145885100, i32 -2145884997, i32 -2145884971, i32 -2145889088, i32 -2145889021, i32 -2145888996, i32 -2145888932, i32 -2145888816, i32 -2145888791, i32 -2145888766}
!1703 = !DILocation(line: 307, column: 4, scope: !1210)
!1704 = !{!1705, !1285, i64 0}
!1705 = !{!"ip4_addr", !1285, i64 0}
!1706 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 311, column: 3, scope: !1215)
!1708 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1707)
!1709 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1707)
!1710 = !DILocation(line: 311, column: 3, scope: !1215)
!1711 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 311, column: 3, scope: !1215)
!1713 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1712)
!1714 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1712)
!1715 = !DILocation(line: 311, column: 3, scope: !1216)
!1716 = !DILocation(line: 311, column: 3, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 311, column: 3)
!1718 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 311, column: 3, scope: !1212)
!1721 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1719)
!1722 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1719)
!1723 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1720)
!1724 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1720)
!1725 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1720)
!1726 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1720)
!1727 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1720)
!1728 = !DILocation(line: 311, column: 3, scope: !1212)
!1729 = !{i32 -2145882563, i32 -2145882550, i32 -2145882525, i32 -2145882501, i32 -2145882476, i32 -2145882401, i32 -2145882376, i32 -2145882232, i32 -2145879894, i32 -2145879805, i32 -2145879684, i32 -2145879589, i32 -2145879488, i32 -2145879461, i32 -2145879378, i32 -2145879289, i32 -2145879168, i32 -2145879068, i32 -2145878962, i32 -2145878854, i32 -2145881902, i32 -2145881849, i32 -2145881818, i32 -2145881787, i32 -2145881766, i32 -2145881744, i32 -2145881695, i32 -2145881674, i32 -2145881571, i32 -2145878771, i32 -2145878682, i32 -2145878561, i32 -2145878462, i32 -2145878356, i32 -2145878254, i32 -2145878221, i32 -2145878148, i32 -2145878080, i32 -2145881311, i32 -2145881258, i32 -2145881227, i32 -2145881196, i32 -2145881175, i32 -2145881153, i32 -2145881104, i32 -2145881083, i32 -2145878015, i32 -2145877926, i32 -2145877805, i32 -2145877706, i32 -2145877600, i32 -2145877498, i32 -2145877465, i32 -2145877382, i32 -2145877293, i32 -2145877172, i32 -2145877072, i32 -2145877046, i32 -2145876943, i32 -2145876917, i32 -2145880825, i32 -2145880758, i32 -2145880733, i32 -2145880669, i32 -2145880553, i32 -2145880528, i32 -2145880503}
!1730 = !DILocation(line: 314, column: 7, scope: !1227)
!1731 = !DILocation(line: 314, column: 7, scope: !1146)
!1732 = !DILocation(line: 223, column: 13, scope: !2)
!1733 = !DILocation(line: 315, column: 8, scope: !1225)
!1734 = !DILocation(line: 315, column: 36, scope: !1225)
!1735 = !DILocation(line: 315, column: 8, scope: !1226)
!1736 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 316, column: 5, scope: !1222)
!1738 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1737)
!1739 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1737)
!1740 = !DILocation(line: 316, column: 5, scope: !1222)
!1741 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 316, column: 5, scope: !1222)
!1743 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1742)
!1744 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1742)
!1745 = !DILocation(line: 316, column: 5, scope: !1223)
!1746 = !DILocation(line: 316, column: 5, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 316, column: 5)
!1748 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 316, column: 5, scope: !1219)
!1751 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1749)
!1752 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1749)
!1753 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1750)
!1754 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1750)
!1755 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1750)
!1756 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1750)
!1757 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1750)
!1758 = !DILocation(line: 316, column: 5, scope: !1219)
!1759 = !{i32 -2145874184, i32 -2145874171, i32 -2145874146, i32 -2145874122, i32 -2145874097, i32 -2145874022, i32 -2145873997, i32 -2145873853, i32 -2145871312, i32 -2145871223, i32 -2145871102, i32 -2145871007, i32 -2145870906, i32 -2145870879, i32 -2145870796, i32 -2145870707, i32 -2145870586, i32 -2145870486, i32 -2145870380, i32 -2145870272, i32 -2145873561, i32 -2145873508, i32 -2145873477, i32 -2145873446, i32 -2145873425, i32 -2145873403, i32 -2145873354, i32 -2145873333, i32 -2145870189, i32 -2145870100, i32 -2145869979, i32 -2145869880, i32 -2145869774, i32 -2145869672, i32 -2145869639, i32 -2145869566, i32 -2145869498, i32 -2145872956, i32 -2145872903, i32 -2145872872, i32 -2145872841, i32 -2145872820, i32 -2145872798, i32 -2145872749, i32 -2145872728, i32 -2145869453, i32 -2145869364, i32 -2145869243, i32 -2145869144, i32 -2145869038, i32 -2145868936, i32 -2145868903, i32 -2145868820, i32 -2145868731, i32 -2145868610, i32 -2145868510, i32 -2145868484, i32 -2145868381, i32 -2145868355, i32 -2145872470, i32 -2145872403, i32 -2145872378, i32 -2145872314, i32 -2145872198, i32 -2145872173, i32 -2145872148}
!1760 = !DILocation(line: 0, scope: !1146)
!1761 = !DILocation(line: 324, column: 23, scope: !1146)
!1762 = !DILocation(line: 324, column: 8, scope: !1146)
!1763 = !DILocation(line: 213, column: 16, scope: !2)
!1764 = !DILocation(line: 333, column: 8, scope: !1235)
!1765 = !DILocation(line: 333, column: 7, scope: !1146)
!1766 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 334, column: 4, scope: !1232)
!1768 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1767)
!1769 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1767)
!1770 = !DILocation(line: 334, column: 4, scope: !1232)
!1771 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 334, column: 4, scope: !1232)
!1773 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1772)
!1774 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1772)
!1775 = !DILocation(line: 334, column: 4, scope: !1233)
!1776 = !DILocation(line: 334, column: 4, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 334, column: 4)
!1778 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 334, column: 4, scope: !1229)
!1781 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1779)
!1782 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1779)
!1783 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1780)
!1784 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1780)
!1785 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1780)
!1786 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1780)
!1787 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1780)
!1788 = !DILocation(line: 334, column: 4, scope: !1229)
!1789 = !{i32 -2145865542, i32 -2145865529, i32 -2145865504, i32 -2145865480, i32 -2145865455, i32 -2145865380, i32 -2145865355, i32 -2145865211, i32 -2145862644, i32 -2145862555, i32 -2145862434, i32 -2145862339, i32 -2145862238, i32 -2145862211, i32 -2145862128, i32 -2145862039, i32 -2145861918, i32 -2145861818, i32 -2145861712, i32 -2145861604, i32 -2145864919, i32 -2145864866, i32 -2145864835, i32 -2145864804, i32 -2145864783, i32 -2145864761, i32 -2145864712, i32 -2145864691, i32 -2145861521, i32 -2145861432, i32 -2145861311, i32 -2145861212, i32 -2145861106, i32 -2145861004, i32 -2145860971, i32 -2145860898, i32 -2145860830, i32 -2145864314, i32 -2145864261, i32 -2145864230, i32 -2145864199, i32 -2145864178, i32 -2145864156, i32 -2145864107, i32 -2145864086, i32 -2145860785, i32 -2145860696, i32 -2145860575, i32 -2145860476, i32 -2145860370, i32 -2145860268, i32 -2145860235, i32 -2145860152, i32 -2145860063, i32 -2145859942, i32 -2145859842, i32 -2145859816, i32 -2145859713, i32 -2145859687, i32 -2145863828, i32 -2145863761, i32 -2145863736, i32 -2145863672, i32 -2145863556, i32 -2145863531, i32 -2145863506}
!1790 = !DILocation(line: 341, column: 7, scope: !1243)
!1791 = !DILocation(line: 341, column: 7, scope: !1146)
!1792 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 342, column: 4, scope: !1240)
!1794 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1793)
!1795 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1793)
!1796 = !DILocation(line: 342, column: 4, scope: !1240)
!1797 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 342, column: 4, scope: !1240)
!1799 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1798)
!1800 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1798)
!1801 = !DILocation(line: 342, column: 4, scope: !1241)
!1802 = !DILocation(line: 170, column: 43, scope: !1372, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 342, column: 4, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 342, column: 4)
!1805 = !DILocation(line: 176, column: 1, scope: !1372, inlinedAt: !1803)
!1806 = !DILocation(line: 342, column: 4, scope: !1804)
!1807 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 342, column: 4, scope: !1237)
!1810 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1808)
!1811 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1808)
!1812 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1809)
!1813 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1809)
!1814 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1809)
!1815 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1809)
!1816 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1809)
!1817 = !DILocation(line: 342, column: 4, scope: !1237)
!1818 = !{!1819, !1286, i64 264}
!1819 = !{!"netif", !1326, i64 0, !1820, i64 8, !1820, i64 32, !1820, i64 56, !1286, i64 80, !1286, i64 152, !1286, i64 156, !1286, i64 168, !1326, i64 184, !1326, i64 192, !1326, i64 200, !1326, i64 208, !1326, i64 216, !1326, i64 224, !1326, i64 232, !1286, i64 240, !1821, i64 248, !1821, i64 250, !1821, i64 252, !1286, i64 254, !1286, i64 260, !1286, i64 261, !1286, i64 262, !1286, i64 264, !1286, i64 265, !1286, i64 266, !1326, i64 272}
!1820 = !{!"ip_addr", !1286, i64 0, !1286, i64 20}
!1821 = !{!"short", !1286, i64 0}
!1822 = !{i32 -2145856498, i32 -2145856485, i32 -2145856460, i32 -2145856436, i32 -2145856411, i32 -2145856336, i32 -2145856311, i32 -2145856167, i32 -2145856142, i32 -2145853433, i32 -2145853344, i32 -2145853223, i32 -2145853128, i32 -2145853027, i32 -2145853000, i32 -2145852917, i32 -2145852828, i32 -2145852707, i32 -2145852607, i32 -2145852501, i32 -2145852393, i32 -2145855805, i32 -2145855752, i32 -2145855721, i32 -2145855690, i32 -2145855669, i32 -2145855647, i32 -2145855598, i32 -2145855577, i32 -2145855474, i32 -2145855442, i32 -2145852310, i32 -2145852221, i32 -2145852100, i32 -2145852001, i32 -2145851895, i32 -2145851793, i32 -2145851760, i32 -2145851687, i32 -2145851619, i32 -2145855182, i32 -2145855129, i32 -2145855098, i32 -2145855067, i32 -2145855046, i32 -2145855024, i32 -2145854975, i32 -2145854954, i32 -2145851573, i32 -2145851484, i32 -2145851363, i32 -2145851264, i32 -2145851158, i32 -2145851056, i32 -2145851023, i32 -2145850940, i32 -2145850851, i32 -2145850730, i32 -2145850630, i32 -2145850604, i32 -2145850501, i32 -2145850475, i32 -2145854696, i32 -2145854671, i32 -2145854604, i32 -2145854579, i32 -2145854515, i32 -2145854399, i32 -2145854374, i32 -2145854349}
!1823 = !DILocation(line: 346, column: 4, scope: !1242)
!1824 = !DILocation(line: 348, column: 3, scope: !1242)
!1825 = !DILocation(line: 349, column: 3, scope: !1146)
!1826 = !DILocation(line: 360, column: 2, scope: !1147)
!1827 = !DILocation(line: 0, scope: !2)
!1828 = !DILocation(line: 254, column: 40, scope: !1147)
!1829 = distinct !{!1829, !1476, !1830}
!1830 = !DILocation(line: 360, column: 2, scope: !1148)
!1831 = !DILocation(line: 363, column: 10, scope: !2)
!1832 = !DILocalVariable(name: "a", arg: 1, scope: !1833, file: !176, line: 237, type: !174)
!1833 = distinct !DISubprogram(name: "uk_free", scope: !176, file: !176, line: 237, type: !206, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1834)
!1834 = !{!1832, !1835}
!1835 = !DILocalVariable(name: "ptr", arg: 2, scope: !1833, file: !176, line: 237, type: !53)
!1836 = !DILocation(line: 237, column: 45, scope: !1833, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 363, column: 2, scope: !2)
!1838 = !DILocation(line: 237, column: 54, scope: !1833, inlinedAt: !1837)
!1839 = !DILocalVariable(name: "a", arg: 1, scope: !1840, file: !176, line: 231, type: !174)
!1840 = distinct !DISubprogram(name: "uk_do_free", scope: !176, file: !176, line: 231, type: !206, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1841)
!1841 = !{!1839, !1842}
!1842 = !DILocalVariable(name: "ptr", arg: 2, scope: !1840, file: !176, line: 231, type: !53)
!1843 = !DILocation(line: 231, column: 48, scope: !1840, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 239, column: 2, scope: !1833, inlinedAt: !1837)
!1845 = !DILocation(line: 231, column: 57, scope: !1840, inlinedAt: !1844)
!1846 = !DILocation(line: 233, column: 2, scope: !1847, inlinedAt: !1844)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !176, line: 233, column: 2)
!1848 = distinct !DILexicalBlock(scope: !1840, file: !176, line: 233, column: 2)
!1849 = !DILocation(line: 233, column: 2, scope: !1848, inlinedAt: !1844)
!1850 = !DILocation(line: 233, column: 2, scope: !1851, inlinedAt: !1844)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !176, line: 233, column: 2)
!1852 = !DILocation(line: 234, column: 5, scope: !1840, inlinedAt: !1844)
!1853 = !DILocation(line: 234, column: 2, scope: !1840, inlinedAt: !1844)
!1854 = !DILocation(line: 235, column: 1, scope: !1840, inlinedAt: !1844)
!1855 = !DILocation(line: 240, column: 1, scope: !1833, inlinedAt: !1837)
!1856 = !DILocation(line: 366, column: 1, scope: !2)
!1857 = !DILocation(line: 365, column: 2, scope: !2)
!1858 = !DILocation(line: 170, column: 43, scope: !1372)
!1859 = !DILocation(line: 176, column: 1, scope: !1372)
!1860 = distinct !DISubprogram(name: "_lwip_init_done", scope: !3, file: !3, line: 175, type: !236, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1861)
!1861 = !{!1862, !1863}
!1862 = !DILocalVariable(name: "arg", arg: 1, scope: !1860, file: !3, line: 175, type: !53)
!1863 = !DILocalVariable(name: "tid", scope: !1864, file: !3, line: 177, type: !73)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 177, column: 2)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 177, column: 2)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 177, column: 2)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 177, column: 2)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 177, column: 2)
!1869 = !DILocation(line: 175, column: 35, scope: !1860)
!1870 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 177, column: 2, scope: !1867)
!1872 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1871)
!1873 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1871)
!1874 = !DILocation(line: 177, column: 2, scope: !1867)
!1875 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 177, column: 2, scope: !1867)
!1877 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1876)
!1878 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1876)
!1879 = !DILocation(line: 177, column: 2, scope: !1868)
!1880 = !DILocalVariable(name: "s", arg: 1, scope: !1881, file: !713, line: 194, type: !1884)
!1881 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !713, file: !713, line: 194, type: !1882, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1885)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!1885 = !{!1880, !1886, !1887}
!1886 = !DILocalVariable(name: "irqf", scope: !1881, file: !713, line: 196, type: !48)
!1887 = !DILocalVariable(name: "wq", scope: !1881, file: !713, line: 209, type: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!1890 = !DILocation(line: 194, column: 57, scope: !1881, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 177, column: 2, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 177, column: 2)
!1893 = !DILocation(line: 200, column: 9, scope: !1881, inlinedAt: !1891)
!1894 = !DILocation(line: 196, column: 16, scope: !1881, inlinedAt: !1891)
!1895 = !DILocation(line: 201, column: 2, scope: !1881, inlinedAt: !1891)
!1896 = !{!1897, !1898, i64 0}
!1897 = !{!"uk_semaphore", !1898, i64 0, !1899, i64 8}
!1898 = !{!"long", !1286, i64 0}
!1899 = !{!"uk_waitq", !1326, i64 0, !1326, i64 8}
!1900 = !DILocation(line: 209, column: 28, scope: !1881, inlinedAt: !1891)
!1901 = !DILocalVariable(name: "wq", arg: 1, scope: !1902, file: !1903, line: 99, type: !1906)
!1902 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !1903, file: !1903, line: 99, type: !1904, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1907)
!1903 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1907 = !{!1901, !1908, !1909, !1910}
!1908 = !DILocalVariable(name: "flags", scope: !1902, file: !1903, line: 101, type: !48)
!1909 = !DILocalVariable(name: "curr", scope: !1902, file: !1903, line: 102, type: !88)
!1910 = !DILocalVariable(name: "tmp", scope: !1902, file: !1903, line: 102, type: !88)
!1911 = !DILocation(line: 99, column: 40, scope: !1902, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 210, column: 2, scope: !1881, inlinedAt: !1891)
!1913 = !DILocation(line: 104, column: 10, scope: !1902, inlinedAt: !1912)
!1914 = !DILocation(line: 101, column: 16, scope: !1902, inlinedAt: !1912)
!1915 = !DILocation(line: 105, column: 2, scope: !1916, inlinedAt: !1912)
!1916 = distinct !DILexicalBlock(scope: !1902, file: !1903, line: 105, column: 2)
!1917 = !{!1899, !1326, i64 0}
!1918 = !DILocation(line: 102, column: 25, scope: !1902, inlinedAt: !1912)
!1919 = !DILocation(line: 105, column: 2, scope: !1920, inlinedAt: !1912)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !1903, line: 105, column: 2)
!1921 = !{!1922, !1326, i64 16}
!1922 = !{!"uk_waitq_entry", !1285, i64 0, !1326, i64 8, !1923, i64 16}
!1923 = !{!"", !1326, i64 0}
!1924 = !DILocation(line: 102, column: 32, scope: !1902, inlinedAt: !1912)
!1925 = !DILocation(line: 106, column: 24, scope: !1920, inlinedAt: !1912)
!1926 = !{!1922, !1326, i64 8}
!1927 = !DILocation(line: 106, column: 3, scope: !1920, inlinedAt: !1912)
!1928 = distinct !{!1928, !1929, !1930}
!1929 = !DILocation(line: 105, column: 2, scope: !1916)
!1930 = !DILocation(line: 106, column: 30, scope: !1916)
!1931 = !DILocation(line: 107, column: 2, scope: !1902, inlinedAt: !1912)
!1932 = !DILocation(line: 108, column: 1, scope: !1902, inlinedAt: !1912)
!1933 = !DILocation(line: 211, column: 2, scope: !1881, inlinedAt: !1891)
!1934 = !DILocation(line: 212, column: 1, scope: !1881, inlinedAt: !1891)
!1935 = !DILocation(line: 177, column: 2, scope: !1892)
!1936 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 177, column: 2, scope: !1864)
!1939 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1937)
!1940 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1937)
!1941 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1938)
!1942 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1938)
!1943 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1938)
!1944 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1938)
!1945 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1938)
!1946 = !DILocation(line: 177, column: 2, scope: !1864)
!1947 = !{i32 -2146002284, i32 -2146002271, i32 -2146002246, i32 -2146002222, i32 -2146002197, i32 -2146002122, i32 -2146002097, i32 -2146001953, i32 -2145999731, i32 -2145999642, i32 -2145999521, i32 -2145999426, i32 -2145999325, i32 -2145999298, i32 -2145995154, i32 -2145995065, i32 -2145994944, i32 -2145994844, i32 -2145994738, i32 -2145994630, i32 -2146001665, i32 -2146001612, i32 -2146001581, i32 -2146001550, i32 -2146001529, i32 -2146001507, i32 -2146001458, i32 -2146001437, i32 -2145994547, i32 -2145994458, i32 -2145994337, i32 -2145994238, i32 -2145994132, i32 -2145994030, i32 -2145993997, i32 -2145993924, i32 -2145993856, i32 -2146001063, i32 -2146001010, i32 -2146000979, i32 -2146000948, i32 -2146000927, i32 -2146000905, i32 -2146000856, i32 -2146000835, i32 -2145993805, i32 -2145993716, i32 -2145993595, i32 -2145993496, i32 -2145993390, i32 -2145993288, i32 -2145993255, i32 -2145993172, i32 -2145993083, i32 -2145992962, i32 -2145992862, i32 -2145992836, i32 -2145992733, i32 -2145992707, i32 -2146000577, i32 -2146000510, i32 -2146000485, i32 -2146000421, i32 -2146000305, i32 -2146000280, i32 -2146000255}
!1948 = !DILocation(line: 178, column: 1, scope: !1860)
!1949 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !713, file: !713, line: 58, type: !1882, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1950)
!1950 = !{!1951, !1952, !1953, !1958, !1959, !1960}
!1951 = !DILocalVariable(name: "s", arg: 1, scope: !1949, file: !713, line: 58, type: !1884)
!1952 = !DILocalVariable(name: "irqf", scope: !1949, file: !713, line: 60, type: !48)
!1953 = !DILocalVariable(name: "__current", scope: !1954, file: !713, line: 66, type: !56)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !713, line: 65, column: 6)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !713, line: 64, column: 11)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !713, line: 64, column: 2)
!1957 = distinct !DILexicalBlock(scope: !1949, file: !713, line: 64, column: 2)
!1958 = !DILocalVariable(name: "flags", scope: !1954, file: !713, line: 67, type: !48)
!1959 = !DILocalVariable(name: "__cur", scope: !1954, file: !713, line: 68, type: !56)
!1960 = !DILocalVariable(name: "__wait", scope: !1954, file: !713, line: 68, type: !88)
!1961 = !DILocation(line: 58, column: 59, scope: !1949)
!1962 = !DILocation(line: 62, column: 2, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !713, line: 62, column: 2)
!1964 = distinct !DILexicalBlock(scope: !1949, file: !713, line: 62, column: 2)
!1965 = !DILocation(line: 62, column: 2, scope: !1964)
!1966 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 154, column: 21, scope: !1968, inlinedAt: !1974)
!1968 = distinct !DISubprogram(name: "uk_thread_current", scope: !58, file: !58, line: 151, type: !1969, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!56}
!1971 = !{!1972, !1973}
!1972 = !DILocalVariable(name: "current", scope: !1968, file: !58, line: 153, type: !55)
!1973 = !DILocalVariable(name: "sp", scope: !1968, file: !58, line: 154, type: !48)
!1974 = distinct !DILocation(line: 68, column: 4, scope: !1954)
!1975 = !DILocation(line: 62, column: 2, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1963, file: !713, line: 62, column: 2)
!1977 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1967)
!1978 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1967)
!1979 = !DILocation(line: 154, column: 16, scope: !1968, inlinedAt: !1974)
!1980 = !DILocation(line: 153, column: 21, scope: !1968, inlinedAt: !1974)
!1981 = !DILocation(line: 158, column: 2, scope: !1968, inlinedAt: !1974)
!1982 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 49, column: 21, scope: !1290, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 68, column: 4, scope: !1954)
!1985 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1983)
!1986 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1983)
!1987 = !DILocation(line: 49, column: 16, scope: !1290, inlinedAt: !1984)
!1988 = !DILocation(line: 50, column: 19, scope: !1290, inlinedAt: !1984)
!1989 = !DILocation(line: 50, column: 11, scope: !1290, inlinedAt: !1984)
!1990 = !DILocation(line: 50, column: 9, scope: !1290, inlinedAt: !1984)
!1991 = !DILocation(line: 50, column: 2, scope: !1290, inlinedAt: !1984)
!1992 = !DILocation(line: 68, column: 4, scope: !1954)
!1993 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 154, column: 21, scope: !1968, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 68, column: 4, scope: !1954)
!1996 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1994)
!1997 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !1994)
!1998 = !DILocation(line: 154, column: 16, scope: !1968, inlinedAt: !1995)
!1999 = !DILocation(line: 156, column: 38, scope: !1968, inlinedAt: !1995)
!2000 = !DILocation(line: 158, column: 9, scope: !1968, inlinedAt: !1995)
!2001 = !DILocation(line: 153, column: 21, scope: !1968, inlinedAt: !1995)
!2002 = !DILocation(line: 158, column: 2, scope: !1968, inlinedAt: !1995)
!2003 = !DILocation(line: 69, column: 11, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1954, file: !713, line: 69, column: 8)
!2005 = !DILocation(line: 69, column: 17, scope: !2004)
!2006 = !DILocation(line: 69, column: 8, scope: !1954)
!2007 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 154, column: 21, scope: !1968, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 72, column: 17, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !713, line: 71, column: 13)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !713, line: 71, column: 4)
!2012 = distinct !DILexicalBlock(scope: !1954, file: !713, line: 71, column: 4)
!2013 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !2008)
!2014 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !2008)
!2015 = !DILocation(line: 154, column: 16, scope: !1968, inlinedAt: !2009)
!2016 = !DILocation(line: 156, column: 38, scope: !1968, inlinedAt: !2009)
!2017 = !DILocation(line: 156, column: 12, scope: !1968, inlinedAt: !2009)
!2018 = !DILocation(line: 153, column: 21, scope: !1968, inlinedAt: !2009)
!2019 = !DILocation(line: 158, column: 9, scope: !1968, inlinedAt: !2009)
!2020 = !DILocation(line: 158, column: 2, scope: !1968, inlinedAt: !2009)
!2021 = !DILocation(line: 66, column: 22, scope: !1954)
!2022 = !DILocation(line: 74, column: 13, scope: !2010)
!2023 = !DILocation(line: 67, column: 18, scope: !1954)
!2024 = !DILocalVariable(name: "wq", arg: 1, scope: !2025, file: !1903, line: 58, type: !1906)
!2025 = distinct !DISubprogram(name: "uk_waitq_add", scope: !1903, file: !1903, line: 58, type: !2026, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !1906, !88}
!2028 = !{!2024, !2029}
!2029 = !DILocalVariable(name: "entry", arg: 2, scope: !2025, file: !1903, line: 59, type: !88)
!2030 = !DILocation(line: 58, column: 36, scope: !2025, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 75, column: 5, scope: !2010)
!2032 = !DILocation(line: 59, column: 26, scope: !2025, inlinedAt: !2031)
!2033 = !DILocation(line: 61, column: 14, scope: !2034, inlinedAt: !2031)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !1903, line: 61, column: 6)
!2035 = !{!1922, !1285, i64 0}
!2036 = !DILocation(line: 61, column: 7, scope: !2034, inlinedAt: !2031)
!2037 = !DILocation(line: 61, column: 6, scope: !2025, inlinedAt: !2031)
!2038 = !DILocation(line: 62, column: 3, scope: !2039, inlinedAt: !2031)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !1903, line: 62, column: 3)
!2040 = distinct !DILexicalBlock(scope: !2034, file: !1903, line: 61, column: 23)
!2041 = !{!1899, !1326, i64 8}
!2042 = !DILocation(line: 63, column: 18, scope: !2040, inlinedAt: !2031)
!2043 = !DILocation(line: 64, column: 2, scope: !2040, inlinedAt: !2031)
!2044 = !DILocation(line: 65, column: 1, scope: !2025, inlinedAt: !2031)
!2045 = !DILocalVariable(name: "thread", arg: 1, scope: !2046, file: !58, line: 122, type: !56)
!2046 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !58, file: !58, line: 122, type: !2047, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !56, !76}
!2049 = !{!2045, !2050}
!2050 = !DILocalVariable(name: "time", arg: 2, scope: !2046, file: !58, line: 122, type: !76)
!2051 = !DILocation(line: 122, column: 64, scope: !2046, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 76, column: 5, scope: !2010)
!2053 = !DILocation(line: 122, column: 80, scope: !2046, inlinedAt: !2052)
!2054 = !DILocation(line: 124, column: 10, scope: !2046, inlinedAt: !2052)
!2055 = !DILocation(line: 124, column: 22, scope: !2046, inlinedAt: !2052)
!2056 = !{!2057, !1898, i64 56}
!2057 = !{!"uk_thread", !1326, i64 0, !1326, i64 8, !1326, i64 16, !1326, i64 24, !2058, i64 32, !1285, i64 48, !1898, i64 56, !2059, i64 64, !1899, i64 72, !1326, i64 88, !1326, i64 96, !1285, i64 104, !1326, i64 112, !1326, i64 120}
!2058 = !{!"", !1326, i64 0, !1326, i64 8}
!2059 = !{!"_Bool", !1286, i64 0}
!2060 = !DILocation(line: 125, column: 1, scope: !2046, inlinedAt: !2052)
!2061 = !DILocalVariable(name: "thread", arg: 1, scope: !2062, file: !58, line: 183, type: !56)
!2062 = distinct !DISubprogram(name: "clear_runnable", scope: !58, file: !58, line: 183, type: !2063, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !56}
!2065 = !{!2061}
!2066 = !DILocation(line: 183, column: 53, scope: !2062, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 79, column: 5, scope: !2010)
!2068 = !DILocation(line: 185, column: 10, scope: !2062, inlinedAt: !2067)
!2069 = !DILocation(line: 185, column: 16, scope: !2062, inlinedAt: !2067)
!2070 = !{!2057, !1285, i64 48}
!2071 = !DILocation(line: 186, column: 1, scope: !2062, inlinedAt: !2067)
!2072 = !DILocalVariable(name: "t", arg: 1, scope: !2073, file: !102, line: 151, type: !56)
!2073 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !102, file: !102, line: 151, type: !2063, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2074)
!2074 = !{!2072}
!2075 = !DILocation(line: 151, column: 62, scope: !2073, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 81, column: 5, scope: !2010)
!2077 = !DILocation(line: 153, column: 2, scope: !2078, inlinedAt: !2076)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !102, line: 153, column: 2)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !102, line: 153, column: 2)
!2080 = !DILocation(line: 153, column: 2, scope: !2079, inlinedAt: !2076)
!2081 = !DILocation(line: 153, column: 2, scope: !2082, inlinedAt: !2076)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !102, line: 153, column: 2)
!2083 = !DILocation(line: 154, column: 6, scope: !2073, inlinedAt: !2076)
!2084 = !{!2057, !1326, i64 88}
!2085 = !DILocation(line: 154, column: 14, scope: !2073, inlinedAt: !2076)
!2086 = !{!2087, !1326, i64 24}
!2087 = !{!"uk_sched", !1326, i64 0, !1326, i64 8, !1326, i64 16, !1326, i64 24, !1326, i64 32, !1326, i64 40, !1326, i64 48, !1326, i64 56, !1326, i64 64, !2059, i64 72, !2057, i64 80, !2088, i64 208, !2089, i64 224, !1326, i64 248, !1326, i64 256, !1326, i64 264}
!2088 = !{!"uk_thread_list", !1326, i64 0, !1326, i64 8}
!2089 = !{!"ukplat_ctx_callbacks", !1326, i64 0, !1326, i64 8, !1326, i64 16}
!2090 = !DILocation(line: 154, column: 2, scope: !2073, inlinedAt: !2076)
!2091 = !DILocation(line: 155, column: 1, scope: !2073, inlinedAt: !2076)
!2092 = !DILocation(line: 83, column: 5, scope: !2010)
!2093 = !DILocation(line: 84, column: 12, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2010, file: !713, line: 84, column: 9)
!2095 = !DILocation(line: 84, column: 18, scope: !2094)
!2096 = !DILocation(line: 84, column: 9, scope: !2010)
!2097 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 154, column: 21, scope: !1968, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 117, column: 30, scope: !2100, inlinedAt: !2104)
!2100 = distinct !DISubprogram(name: "uk_sched_yield", scope: !102, file: !102, line: 114, type: !434, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2101)
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "s", scope: !2100, file: !102, line: 116, type: !100)
!2103 = !DILocalVariable(name: "current", scope: !2100, file: !102, line: 117, type: !56)
!2104 = distinct !DILocation(line: 86, column: 5, scope: !2010)
!2105 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !2098)
!2106 = !DILocation(line: 121, column: 2, scope: !1265, inlinedAt: !2098)
!2107 = !DILocation(line: 154, column: 16, scope: !1968, inlinedAt: !2099)
!2108 = !DILocation(line: 156, column: 38, scope: !1968, inlinedAt: !2099)
!2109 = !DILocation(line: 156, column: 12, scope: !1968, inlinedAt: !2099)
!2110 = !DILocation(line: 153, column: 21, scope: !1968, inlinedAt: !2099)
!2111 = !DILocation(line: 158, column: 9, scope: !1968, inlinedAt: !2099)
!2112 = !DILocation(line: 158, column: 2, scope: !1968, inlinedAt: !2099)
!2113 = !DILocation(line: 117, column: 20, scope: !2100, inlinedAt: !2104)
!2114 = !DILocation(line: 119, column: 2, scope: !2115, inlinedAt: !2104)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !102, line: 119, column: 2)
!2116 = distinct !DILexicalBlock(scope: !2100, file: !102, line: 119, column: 2)
!2117 = !DILocation(line: 119, column: 2, scope: !2116, inlinedAt: !2104)
!2118 = !DILocation(line: 119, column: 2, scope: !2119, inlinedAt: !2104)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !102, line: 119, column: 2)
!2120 = !DILocation(line: 121, column: 15, scope: !2100, inlinedAt: !2104)
!2121 = !DILocation(line: 116, column: 19, scope: !2100, inlinedAt: !2104)
!2122 = !DILocation(line: 122, column: 2, scope: !2123, inlinedAt: !2104)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !102, line: 122, column: 2)
!2124 = distinct !DILexicalBlock(scope: !2100, file: !102, line: 122, column: 2)
!2125 = !DILocation(line: 122, column: 2, scope: !2124, inlinedAt: !2104)
!2126 = !DILocation(line: 122, column: 2, scope: !2127, inlinedAt: !2104)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !102, line: 122, column: 2)
!2128 = !DILocation(line: 123, column: 5, scope: !2100, inlinedAt: !2104)
!2129 = !{!2087, !1326, i64 0}
!2130 = !DILocation(line: 123, column: 2, scope: !2100, inlinedAt: !2104)
!2131 = !DILocation(line: 124, column: 1, scope: !2100, inlinedAt: !2104)
!2132 = !DILocation(line: 71, column: 4, scope: !2011)
!2133 = distinct !{!2133, !2134, !2135}
!2134 = !DILocation(line: 71, column: 4, scope: !2012)
!2135 = !DILocation(line: 87, column: 4, scope: !2012)
!2136 = !DILocation(line: 88, column: 12, scope: !1954)
!2137 = !DILocation(line: 90, column: 4, scope: !1954)
!2138 = !DILocalVariable(name: "wq", arg: 1, scope: !2139, file: !1903, line: 68, type: !1906)
!2139 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !1903, file: !1903, line: 68, type: !2026, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2140)
!2140 = !{!2138, !2141, !2142}
!2141 = !DILocalVariable(name: "entry", arg: 2, scope: !2139, file: !1903, line: 69, type: !88)
!2142 = !DILocalVariable(name: "curelm", scope: !2143, file: !1903, line: 72, type: !88)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !1903, line: 72, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !1903, line: 72, column: 3)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1903, line: 72, column: 3)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !1903, line: 71, column: 22)
!2147 = distinct !DILexicalBlock(scope: !2139, file: !1903, line: 71, column: 6)
!2148 = !DILocation(line: 68, column: 39, scope: !2139, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 91, column: 4, scope: !1954)
!2150 = !DILocation(line: 69, column: 26, scope: !2139, inlinedAt: !2149)
!2151 = !DILocation(line: 71, column: 13, scope: !2147, inlinedAt: !2149)
!2152 = !DILocation(line: 71, column: 6, scope: !2147, inlinedAt: !2149)
!2153 = !DILocation(line: 71, column: 6, scope: !2139, inlinedAt: !2149)
!2154 = !DILocation(line: 72, column: 3, scope: !2144, inlinedAt: !2149)
!2155 = !DILocation(line: 72, column: 3, scope: !2145, inlinedAt: !2149)
!2156 = !DILocation(line: 72, column: 3, scope: !2157, inlinedAt: !2149)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !1903, line: 72, column: 3)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !1903, line: 72, column: 3)
!2159 = distinct !DILexicalBlock(scope: !2144, file: !1903, line: 72, column: 3)
!2160 = !DILocation(line: 72, column: 3, scope: !2158, inlinedAt: !2149)
!2161 = !DILocation(line: 72, column: 3, scope: !2143, inlinedAt: !2149)
!2162 = distinct !{!2162, !2163, !2163}
!2163 = !DILocation(line: 72, column: 3, scope: !2143)
!2164 = !DILocation(line: 72, column: 3, scope: !2165, inlinedAt: !2149)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !1903, line: 72, column: 3)
!2166 = distinct !DILexicalBlock(scope: !2143, file: !1903, line: 72, column: 3)
!2167 = !DILocation(line: 72, column: 3, scope: !2166, inlinedAt: !2149)
!2168 = !DILocation(line: 73, column: 18, scope: !2146, inlinedAt: !2149)
!2169 = !DILocation(line: 74, column: 2, scope: !2146, inlinedAt: !2149)
!2170 = !DILocation(line: 75, column: 1, scope: !2139, inlinedAt: !2149)
!2171 = !DILocation(line: 92, column: 4, scope: !1954)
!2172 = !DILocation(line: 93, column: 3, scope: !1955)
!2173 = !DILocation(line: 95, column: 10, scope: !1955)
!2174 = !DILocation(line: 60, column: 16, scope: !1949)
!2175 = !DILocation(line: 96, column: 10, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !1955, file: !713, line: 96, column: 7)
!2177 = !DILocation(line: 96, column: 16, scope: !2176)
!2178 = !DILocation(line: 96, column: 7, scope: !1955)
!2179 = !DILocation(line: 98, column: 3, scope: !1955)
!2180 = !DILocation(line: 64, column: 2, scope: !1956)
!2181 = distinct !{!2181, !2182, !2183}
!2182 = !DILocation(line: 64, column: 2, scope: !1957)
!2183 = !DILocation(line: 99, column: 2, scope: !1957)
!2184 = !DILocation(line: 100, column: 2, scope: !1949)
!2185 = !DILocation(line: 104, column: 2, scope: !1949)
!2186 = !DILocation(line: 105, column: 1, scope: !1949)
!2187 = !DILocation(line: 61, column: 47, scope: !743)
!2188 = !{!1821, !1821, i64 0}
!2189 = !DILocation(line: 61, column: 70, scope: !743)
!2190 = !DILocation(line: 62, column: 38, scope: !743)
!2191 = !DILocation(line: 64, column: 2, scope: !743)
!2192 = !DILocation(line: 64, column: 7, scope: !743)
!2193 = !DILocation(line: 65, column: 2, scope: !743)
!2194 = !DILocation(line: 65, column: 8, scope: !743)
!2195 = !DILocation(line: 65, column: 38, scope: !743)
!2196 = !DILocation(line: 65, column: 66, scope: !743)
!2197 = !DILocation(line: 65, column: 28, scope: !743)
!2198 = !DILocation(line: 66, column: 2, scope: !743)
!2199 = !DILocation(line: 66, column: 7, scope: !743)
!2200 = !DILocation(line: 67, column: 2, scope: !743)
!2201 = !DILocation(line: 67, column: 8, scope: !743)
!2202 = !DILocation(line: 67, column: 38, scope: !743)
!2203 = !DILocation(line: 67, column: 66, scope: !743)
!2204 = !DILocation(line: 67, column: 28, scope: !743)
!2205 = !DILocation(line: 68, column: 2, scope: !743)
!2206 = !DILocation(line: 68, column: 7, scope: !743)
!2207 = !DILocation(line: 69, column: 2, scope: !743)
!2208 = !DILocation(line: 69, column: 8, scope: !743)
!2209 = !DILocation(line: 69, column: 36, scope: !743)
!2210 = !DILocation(line: 69, column: 62, scope: !743)
!2211 = !DILocation(line: 69, column: 26, scope: !743)
!2212 = !DILocation(line: 71, column: 6, scope: !764)
!2213 = !DILocation(line: 71, column: 13, scope: !764)
!2214 = !DILocation(line: 71, column: 6, scope: !743)
!2215 = !DILocation(line: 72, column: 3, scope: !763)
!2216 = !DILocation(line: 72, column: 3, scope: !761)
!2217 = !DILocation(line: 72, column: 3, scope: !762)
!2218 = !DILocation(line: 72, column: 3, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 72, column: 3)
!2220 = distinct !DILexicalBlock(scope: !761, file: !3, line: 72, column: 3)
!2221 = !DILocation(line: 72, column: 3, scope: !2220)
!2222 = !DILocation(line: 72, column: 3, scope: !760)
!2223 = !DILocation(line: 72, column: 3, scope: !759)
!2224 = !DILocation(line: 72, column: 3, scope: !758)
!2225 = !{!1898, !1898, i64 0}
!2226 = !DILocation(line: 72, column: 3, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !758, file: !3, line: 72, column: 3)
!2228 = !{i32 -2146067937, i32 -2146067924, i32 -2146067899, i32 -2146067875, i32 -2146067850, i32 -2146067775, i32 -2146067750, i32 -2146067606, i32 -2146067581, i32 -2146064918, i32 -2146064829, i32 -2146064708, i32 -2146064613, i32 -2146064512, i32 -2146064485, i32 -2146064402, i32 -2146064313, i32 -2146064192, i32 -2146064092, i32 -2146063986, i32 -2146063878, i32 -2146067244, i32 -2146067191, i32 -2146067160, i32 -2146067129, i32 -2146067108, i32 -2146067086, i32 -2146067037, i32 -2146067016, i32 -2146066913, i32 -2146066881, i32 -2146063795, i32 -2146063706, i32 -2146063585, i32 -2146063486, i32 -2146063380, i32 -2146063278, i32 -2146063245, i32 -2146063172, i32 -2146063104, i32 -2146066621, i32 -2146066568, i32 -2146066537, i32 -2146066506, i32 -2146066485, i32 -2146066463, i32 -2146066414, i32 -2146066393, i32 -2146063062, i32 -2146062973, i32 -2146062852, i32 -2146062753, i32 -2146062647, i32 -2146062545, i32 -2146062512, i32 -2146062429, i32 -2146062340, i32 -2146062219, i32 -2146062119, i32 -2146062093, i32 -2146061990, i32 -2146061964, i32 -2146066135, i32 -2146066110, i32 -2146066043, i32 -2146066018, i32 -2146065954, i32 -2146065838, i32 -2146065813, i32 -2146065788}
!2229 = !DILocation(line: 75, column: 2, scope: !763)
!2230 = !DILocation(line: 76, column: 6, scope: !774)
!2231 = !DILocation(line: 76, column: 13, scope: !774)
!2232 = !DILocation(line: 76, column: 6, scope: !743)
!2233 = !DILocation(line: 77, column: 3, scope: !773)
!2234 = !DILocation(line: 77, column: 3, scope: !771)
!2235 = !DILocation(line: 77, column: 3, scope: !772)
!2236 = !DILocation(line: 77, column: 3, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 77, column: 3)
!2238 = distinct !DILexicalBlock(scope: !771, file: !3, line: 77, column: 3)
!2239 = !DILocation(line: 77, column: 3, scope: !2238)
!2240 = !DILocation(line: 77, column: 3, scope: !770)
!2241 = !DILocation(line: 77, column: 3, scope: !769)
!2242 = !DILocation(line: 77, column: 3, scope: !768)
!2243 = !DILocation(line: 77, column: 3, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !768, file: !3, line: 77, column: 3)
!2245 = !{i32 -2146058977, i32 -2146058964, i32 -2146058939, i32 -2146058915, i32 -2146058890, i32 -2146058815, i32 -2146058790, i32 -2146058646, i32 -2146058621, i32 -2146055954, i32 -2146055865, i32 -2146055744, i32 -2146055649, i32 -2146055548, i32 -2146055521, i32 -2146055438, i32 -2146055349, i32 -2146055228, i32 -2146055128, i32 -2146055022, i32 -2146054914, i32 -2146058284, i32 -2146058231, i32 -2146058200, i32 -2146058169, i32 -2146058148, i32 -2146058126, i32 -2146058077, i32 -2146058056, i32 -2146057953, i32 -2146057921, i32 -2146054831, i32 -2146054742, i32 -2146054621, i32 -2146054522, i32 -2146054416, i32 -2146054314, i32 -2146054281, i32 -2146054208, i32 -2146054140, i32 -2146057661, i32 -2146057608, i32 -2146057577, i32 -2146057546, i32 -2146057525, i32 -2146057503, i32 -2146057454, i32 -2146057433, i32 -2146054098, i32 -2146054009, i32 -2146053888, i32 -2146053789, i32 -2146053683, i32 -2146053581, i32 -2146053548, i32 -2146053465, i32 -2146053376, i32 -2146053255, i32 -2146053155, i32 -2146053129, i32 -2146053026, i32 -2146053000, i32 -2146057175, i32 -2146057150, i32 -2146057083, i32 -2146057058, i32 -2146056994, i32 -2146056878, i32 -2146056853, i32 -2146056828}
!2246 = !DILocation(line: 80, column: 2, scope: !773)
!2247 = !DILocation(line: 81, column: 6, scope: !779)
!2248 = !DILocation(line: 81, column: 13, scope: !779)
!2249 = !DILocation(line: 81, column: 6, scope: !743)
!2250 = !DILocation(line: 82, column: 3, scope: !778)
!2251 = !DILocation(line: 82, column: 9, scope: !778)
!2252 = !DILocation(line: 82, column: 17, scope: !778)
!2253 = !DILocation(line: 82, column: 23, scope: !778)
!2254 = !DILocation(line: 82, column: 36, scope: !778)
!2255 = !DILocation(line: 82, column: 44, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !778, file: !3, line: 82, column: 44)
!2257 = !DILocation(line: 82, column: 74, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !778, file: !3, line: 82, column: 74)
!2259 = !DILocation(line: 83, column: 3, scope: !778)
!2260 = !DILocation(line: 83, column: 3, scope: !784)
!2261 = !DILocation(line: 83, column: 3, scope: !785)
!2262 = !DILocation(line: 83, column: 3, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 83, column: 3)
!2264 = distinct !DILexicalBlock(scope: !784, file: !3, line: 83, column: 3)
!2265 = !DILocation(line: 83, column: 3, scope: !2264)
!2266 = !DILocation(line: 83, column: 3, scope: !783)
!2267 = !DILocation(line: 83, column: 3, scope: !782)
!2268 = !DILocation(line: 83, column: 3, scope: !781)
!2269 = !DILocation(line: 83, column: 3, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !781, file: !3, line: 83, column: 3)
!2271 = !{i32 -2146049628, i32 -2146049615, i32 -2146049590, i32 -2146049566, i32 -2146049541, i32 -2146049466, i32 -2146049441, i32 -2146049297, i32 -2146049272, i32 -2146046531, i32 -2146046442, i32 -2146046321, i32 -2146046226, i32 -2146046125, i32 -2146046098, i32 -2146046015, i32 -2146045926, i32 -2146045805, i32 -2146045705, i32 -2146045599, i32 -2146045491, i32 -2146048896, i32 -2146048843, i32 -2146048812, i32 -2146048781, i32 -2146048760, i32 -2146048738, i32 -2146048689, i32 -2146048668, i32 -2146048565, i32 -2146048533, i32 -2146045408, i32 -2146045319, i32 -2146045198, i32 -2146045099, i32 -2146044993, i32 -2146044891, i32 -2146044858, i32 -2146044785, i32 -2146044717, i32 -2146048273, i32 -2146048220, i32 -2146048189, i32 -2146048158, i32 -2146048137, i32 -2146048115, i32 -2146048066, i32 -2146048045, i32 -2146044675, i32 -2146044586, i32 -2146044465, i32 -2146044366, i32 -2146044260, i32 -2146044158, i32 -2146044125, i32 -2146044042, i32 -2146043953, i32 -2146043832, i32 -2146043732, i32 -2146043706, i32 -2146043603, i32 -2146043577, i32 -2146047787, i32 -2146047762, i32 -2146047695, i32 -2146047670, i32 -2146047606, i32 -2146047490, i32 -2146047465, i32 -2146047440}
!2272 = !DILocation(line: 86, column: 2, scope: !779)
!2273 = !DILocation(line: 86, column: 2, scope: !778)
!2274 = !DILocation(line: 87, column: 6, scope: !791)
!2275 = !DILocation(line: 87, column: 13, scope: !791)
!2276 = !DILocation(line: 87, column: 6, scope: !743)
!2277 = !DILocation(line: 88, column: 3, scope: !790)
!2278 = !DILocation(line: 88, column: 9, scope: !790)
!2279 = !DILocation(line: 88, column: 17, scope: !790)
!2280 = !DILocation(line: 88, column: 23, scope: !790)
!2281 = !DILocation(line: 88, column: 36, scope: !790)
!2282 = !DILocation(line: 88, column: 44, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !790, file: !3, line: 88, column: 44)
!2284 = !DILocation(line: 88, column: 74, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !790, file: !3, line: 88, column: 74)
!2286 = !DILocation(line: 89, column: 3, scope: !790)
!2287 = !DILocation(line: 89, column: 3, scope: !796)
!2288 = !DILocation(line: 89, column: 3, scope: !797)
!2289 = !DILocation(line: 89, column: 3, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 89, column: 3)
!2291 = distinct !DILexicalBlock(scope: !796, file: !3, line: 89, column: 3)
!2292 = !DILocation(line: 89, column: 3, scope: !2291)
!2293 = !DILocation(line: 89, column: 3, scope: !795)
!2294 = !DILocation(line: 89, column: 3, scope: !794)
!2295 = !DILocation(line: 89, column: 3, scope: !793)
!2296 = !DILocation(line: 89, column: 3, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !793, file: !3, line: 89, column: 3)
!2298 = !{i32 -2146040170, i32 -2146040157, i32 -2146040132, i32 -2146040108, i32 -2146040083, i32 -2146040008, i32 -2146039983, i32 -2146039839, i32 -2146039814, i32 -2146037063, i32 -2146036974, i32 -2146036853, i32 -2146036758, i32 -2146036657, i32 -2146036630, i32 -2146036547, i32 -2146036458, i32 -2146036337, i32 -2146036237, i32 -2146036131, i32 -2146036023, i32 -2146039438, i32 -2146039385, i32 -2146039354, i32 -2146039323, i32 -2146039302, i32 -2146039280, i32 -2146039231, i32 -2146039210, i32 -2146039107, i32 -2146039075, i32 -2146035940, i32 -2146035851, i32 -2146035730, i32 -2146035631, i32 -2146035525, i32 -2146035423, i32 -2146035390, i32 -2146035317, i32 -2146035249, i32 -2146038815, i32 -2146038762, i32 -2146038731, i32 -2146038700, i32 -2146038679, i32 -2146038657, i32 -2146038608, i32 -2146038587, i32 -2146035207, i32 -2146035118, i32 -2146034997, i32 -2146034898, i32 -2146034792, i32 -2146034690, i32 -2146034657, i32 -2146034574, i32 -2146034485, i32 -2146034364, i32 -2146034264, i32 -2146034238, i32 -2146034135, i32 -2146034109, i32 -2146038329, i32 -2146038304, i32 -2146038237, i32 -2146038212, i32 -2146038148, i32 -2146038032, i32 -2146038007, i32 -2146037982}
!2299 = !DILocation(line: 92, column: 2, scope: !791)
!2300 = !DILocation(line: 92, column: 2, scope: !790)
!2301 = !DILocation(line: 95, column: 7, scope: !808)
!2302 = !DILocation(line: 95, column: 14, scope: !808)
!2303 = !DILocation(line: 96, column: 6, scope: !808)
!2304 = !DILocation(line: 96, column: 10, scope: !808)
!2305 = !DILocation(line: 96, column: 17, scope: !808)
!2306 = !DILocation(line: 97, column: 6, scope: !808)
!2307 = !DILocation(line: 97, column: 10, scope: !808)
!2308 = !DILocation(line: 97, column: 17, scope: !808)
!2309 = !DILocation(line: 98, column: 6, scope: !808)
!2310 = !DILocation(line: 98, column: 10, scope: !808)
!2311 = !DILocation(line: 98, column: 17, scope: !808)
!2312 = !DILocation(line: 95, column: 6, scope: !743)
!2313 = !DILocation(line: 99, column: 18, scope: !807)
!2314 = !DILocation(line: 99, column: 22, scope: !807)
!2315 = !DILocation(line: 99, column: 31, scope: !807)
!2316 = !DILocation(line: 99, column: 3, scope: !807)
!2317 = !DILocation(line: 101, column: 18, scope: !807)
!2318 = !DILocation(line: 101, column: 22, scope: !807)
!2319 = !DILocation(line: 101, column: 31, scope: !807)
!2320 = !DILocation(line: 101, column: 3, scope: !807)
!2321 = !DILocation(line: 103, column: 18, scope: !807)
!2322 = !DILocation(line: 103, column: 22, scope: !807)
!2323 = !DILocation(line: 103, column: 31, scope: !807)
!2324 = !DILocation(line: 103, column: 3, scope: !807)
!2325 = !DILocation(line: 112, column: 3, scope: !807)
!2326 = !DILocation(line: 112, column: 3, scope: !805)
!2327 = !DILocation(line: 112, column: 3, scope: !806)
!2328 = !DILocation(line: 112, column: 3, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 112, column: 3)
!2330 = distinct !DILexicalBlock(scope: !805, file: !3, line: 112, column: 3)
!2331 = !DILocation(line: 112, column: 3, scope: !2330)
!2332 = !DILocation(line: 112, column: 3, scope: !804)
!2333 = !DILocation(line: 112, column: 3, scope: !803)
!2334 = !DILocation(line: 112, column: 3, scope: !802)
!2335 = !DILocation(line: 112, column: 3, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !802, file: !3, line: 112, column: 3)
!2337 = !{i32 -2146030556, i32 -2146030543, i32 -2146030518, i32 -2146030494, i32 -2146030469, i32 -2146030394, i32 -2146030369, i32 -2146030225, i32 -2146030200, i32 -2146027367, i32 -2146027278, i32 -2146027157, i32 -2146027062, i32 -2146026961, i32 -2146026934, i32 -2146026851, i32 -2146026762, i32 -2146026641, i32 -2146026541, i32 -2146026435, i32 -2146026327, i32 -2146029819, i32 -2146029766, i32 -2146029735, i32 -2146029704, i32 -2146029683, i32 -2146029661, i32 -2146029612, i32 -2146029591, i32 -2146029488, i32 -2146029456, i32 -2146026244, i32 -2146026155, i32 -2146026034, i32 -2146025935, i32 -2146025829, i32 -2146025727, i32 -2146025694, i32 -2146025621, i32 -2146025553, i32 -2146029196, i32 -2146029143, i32 -2146029112, i32 -2146029081, i32 -2146029060, i32 -2146029038, i32 -2146028989, i32 -2146028968, i32 -2146025511, i32 -2146025422, i32 -2146025301, i32 -2146025202, i32 -2146025096, i32 -2146024994, i32 -2146024961, i32 -2146024878, i32 -2146024789, i32 -2146024668, i32 -2146024568, i32 -2146024542, i32 -2146024439, i32 -2146024413, i32 -2146028710, i32 -2146028685, i32 -2146028618, i32 -2146028593, i32 -2146028529, i32 -2146028413, i32 -2146028388, i32 -2146028363}
!2338 = !DILocation(line: 116, column: 2, scope: !807)
!2339 = !DILocation(line: 120, column: 6, scope: !820)
!2340 = !DILocation(line: 120, column: 13, scope: !820)
!2341 = !DILocation(line: 120, column: 6, scope: !743)
!2342 = !DILocation(line: 129, column: 3, scope: !819)
!2343 = !DILocation(line: 129, column: 3, scope: !817)
!2344 = !DILocation(line: 129, column: 3, scope: !818)
!2345 = !DILocation(line: 129, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 129, column: 3)
!2347 = distinct !DILexicalBlock(scope: !817, file: !3, line: 129, column: 3)
!2348 = !DILocation(line: 129, column: 3, scope: !2347)
!2349 = !DILocation(line: 129, column: 3, scope: !816)
!2350 = !DILocation(line: 129, column: 3, scope: !815)
!2351 = !DILocation(line: 129, column: 3, scope: !814)
!2352 = !DILocation(line: 129, column: 3, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !814, file: !3, line: 129, column: 3)
!2354 = !{i32 -2146020591, i32 -2146020578, i32 -2146020553, i32 -2146020529, i32 -2146020504, i32 -2146020429, i32 -2146020404, i32 -2146020260, i32 -2146020235, i32 -2146017366, i32 -2146017277, i32 -2146017156, i32 -2146017061, i32 -2146016960, i32 -2146016933, i32 -2146016850, i32 -2146016761, i32 -2146016640, i32 -2146016540, i32 -2146016434, i32 -2146016326, i32 -2146019854, i32 -2146019801, i32 -2146019770, i32 -2146019739, i32 -2146019718, i32 -2146019696, i32 -2146019647, i32 -2146019626, i32 -2146019523, i32 -2146019491, i32 -2146016243, i32 -2146016154, i32 -2146016033, i32 -2146015934, i32 -2146015828, i32 -2146015726, i32 -2146015693, i32 -2146015620, i32 -2146015552, i32 -2146019231, i32 -2146019178, i32 -2146019147, i32 -2146019116, i32 -2146019095, i32 -2146019073, i32 -2146019024, i32 -2146019003, i32 -2146015510, i32 -2146015421, i32 -2146015300, i32 -2146015201, i32 -2146015095, i32 -2146014993, i32 -2146014960, i32 -2146014877, i32 -2146014788, i32 -2146014667, i32 -2146014567, i32 -2146014541, i32 -2146014438, i32 -2146014412, i32 -2146018745, i32 -2146018720, i32 -2146018653, i32 -2146018628, i32 -2146018564, i32 -2146018448, i32 -2146018423, i32 -2146018398}
!2355 = !DILocation(line: 134, column: 2, scope: !819)
!2356 = !DILocation(line: 135, column: 6, scope: !832)
!2357 = !DILocation(line: 135, column: 13, scope: !832)
!2358 = !DILocation(line: 135, column: 6, scope: !743)
!2359 = !DILocation(line: 146, column: 3, scope: !831)
!2360 = !DILocation(line: 146, column: 3, scope: !829)
!2361 = !DILocation(line: 146, column: 3, scope: !830)
!2362 = !DILocation(line: 146, column: 3, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 146, column: 3)
!2364 = distinct !DILexicalBlock(scope: !829, file: !3, line: 146, column: 3)
!2365 = !DILocation(line: 146, column: 3, scope: !2364)
!2366 = !DILocation(line: 146, column: 3, scope: !828)
!2367 = !DILocation(line: 146, column: 3, scope: !827)
!2368 = !DILocation(line: 146, column: 3, scope: !826)
!2369 = !DILocation(line: 146, column: 3, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !826, file: !3, line: 146, column: 3)
!2371 = !{i32 -2146010502, i32 -2146010489, i32 -2146010464, i32 -2146010440, i32 -2146010415, i32 -2146010340, i32 -2146010315, i32 -2146010171, i32 -2146010146, i32 -2146007262, i32 -2146007173, i32 -2146007052, i32 -2146006957, i32 -2146006856, i32 -2146006829, i32 -2146006746, i32 -2146006657, i32 -2146006536, i32 -2146006436, i32 -2146006330, i32 -2146006222, i32 -2146009765, i32 -2146009712, i32 -2146009681, i32 -2146009650, i32 -2146009629, i32 -2146009607, i32 -2146009558, i32 -2146009537, i32 -2146009434, i32 -2146009402, i32 -2146006139, i32 -2146006050, i32 -2146005929, i32 -2146005830, i32 -2146005724, i32 -2146005622, i32 -2146005589, i32 -2146005516, i32 -2146005448, i32 -2146009142, i32 -2146009089, i32 -2146009058, i32 -2146009027, i32 -2146009006, i32 -2146008984, i32 -2146008935, i32 -2146008914, i32 -2146005406, i32 -2146005317, i32 -2146005196, i32 -2146005097, i32 -2146004991, i32 -2146004889, i32 -2146004856, i32 -2146004773, i32 -2146004684, i32 -2146004563, i32 -2146004463, i32 -2146004437, i32 -2146004334, i32 -2146004308, i32 -2146008656, i32 -2146008631, i32 -2146008564, i32 -2146008539, i32 -2146008475, i32 -2146008359, i32 -2146008334, i32 -2146008309}
!2372 = !DILocation(line: 151, column: 2, scope: !831)
!2373 = !DILocation(line: 153, column: 1, scope: !743)
!2374 = distinct !DISubprogram(name: "uk_netdev_einfo_get_with_copy", scope: !3, file: !3, line: 184, type: !2375, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2378)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !892, !23, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "dev", arg: 1, scope: !2374, file: !3, line: 184, type: !892)
!2380 = !DILocalVariable(name: "einfo", arg: 2, scope: !2374, file: !3, line: 185, type: !23)
!2381 = !DILocalVariable(name: "strcfg", arg: 3, scope: !2374, file: !3, line: 185, type: !2377)
!2382 = !DILocalVariable(name: "_tmp", scope: !2374, file: !3, line: 187, type: !280)
!2383 = !DILocation(line: 184, column: 54, scope: !2374)
!2384 = !DILocation(line: 185, column: 28, scope: !2374)
!2385 = !DILocation(line: 185, column: 42, scope: !2374)
!2386 = !DILocation(line: 187, column: 15, scope: !2374)
!2387 = !DILocation(line: 187, column: 8, scope: !2374)
!2388 = !DILocation(line: 188, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 188, column: 6)
!2390 = !DILocation(line: 188, column: 6, scope: !2374)
!2391 = !DILocation(line: 189, column: 11, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 188, column: 13)
!2393 = !DILocation(line: 190, column: 3, scope: !2392)
!2394 = !DILocation(line: 193, column: 6, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 193, column: 6)
!2396 = !DILocation(line: 193, column: 6, scope: !2374)
!2397 = !DILocation(line: 193, column: 23, scope: !2395)
!2398 = !DILocation(line: 237, column: 45, scope: !1833, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 193, column: 15, scope: !2395)
!2400 = !DILocation(line: 237, column: 54, scope: !1833, inlinedAt: !2399)
!2401 = !DILocation(line: 231, column: 48, scope: !1840, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 239, column: 2, scope: !1833, inlinedAt: !2399)
!2403 = !DILocation(line: 231, column: 57, scope: !1840, inlinedAt: !2402)
!2404 = !DILocation(line: 233, column: 2, scope: !1847, inlinedAt: !2402)
!2405 = !DILocation(line: 233, column: 2, scope: !1848, inlinedAt: !2402)
!2406 = !DILocation(line: 233, column: 2, scope: !1851, inlinedAt: !2402)
!2407 = !DILocation(line: 234, column: 5, scope: !1840, inlinedAt: !2402)
!2408 = !DILocation(line: 234, column: 2, scope: !1840, inlinedAt: !2402)
!2409 = !DILocation(line: 235, column: 1, scope: !1840, inlinedAt: !2402)
!2410 = !DILocation(line: 240, column: 1, scope: !1833, inlinedAt: !2399)
!2411 = !DILocation(line: 193, column: 15, scope: !2395)
!2412 = !DILocation(line: 194, column: 22, scope: !2374)
!2413 = !DILocation(line: 194, column: 43, scope: !2374)
!2414 = !DILocation(line: 157, column: 48, scope: !1328, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 194, column: 12, scope: !2374)
!2416 = !DILocation(line: 159, column: 6, scope: !1335, inlinedAt: !2415)
!2417 = !DILocation(line: 159, column: 6, scope: !1328, inlinedAt: !2415)
!2418 = !DILocation(line: 160, column: 3, scope: !1339, inlinedAt: !2415)
!2419 = !DILocation(line: 160, column: 9, scope: !1339, inlinedAt: !2415)
!2420 = !DILocation(line: 161, column: 3, scope: !1339, inlinedAt: !2415)
!2421 = !DILocation(line: 194, column: 56, scope: !2374)
!2422 = !DILocation(line: 157, column: 58, scope: !1328, inlinedAt: !2415)
!2423 = !DILocation(line: 151, column: 51, scope: !1343, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 163, column: 9, scope: !1328, inlinedAt: !2415)
!2425 = !DILocation(line: 151, column: 61, scope: !1343, inlinedAt: !2424)
!2426 = !DILocation(line: 154, column: 12, scope: !1343, inlinedAt: !2424)
!2427 = !DILocation(line: 154, column: 9, scope: !1343, inlinedAt: !2424)
!2428 = !DILocation(line: 154, column: 2, scope: !1343, inlinedAt: !2424)
!2429 = !DILocation(line: 163, column: 2, scope: !1328, inlinedAt: !2415)
!2430 = !DILocation(line: 0, scope: !1328, inlinedAt: !2415)
!2431 = !DILocation(line: 164, column: 1, scope: !1328, inlinedAt: !2415)
!2432 = !DILocation(line: 194, column: 10, scope: !2374)
!2433 = !DILocation(line: 195, column: 2, scope: !2374)
!2434 = !DILocation(line: 196, column: 1, scope: !2374)
!2435 = !DILocation(line: 186, column: 42, scope: !883)
!2436 = !DILocation(line: 188, column: 2, scope: !883)
!2437 = !DILocation(line: 188, column: 10, scope: !883)
!2438 = !DILocation(line: 189, column: 2, scope: !883)
!2439 = !DILocation(line: 190, column: 2, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !720, line: 190, column: 2)
!2441 = distinct !DILexicalBlock(scope: !883, file: !720, line: 190, column: 2)
!2442 = !DILocation(line: 191, column: 2, scope: !883)
!2443 = !DILocation(line: 192, column: 1, scope: !883)
!2444 = !DILocation(line: 196, column: 2, scope: !719)
!2445 = !DILocation(line: 196, column: 10, scope: !719)
!2446 = !DILocation(line: 197, column: 2, scope: !719)
!2447 = !DILocation(line: 198, column: 2, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !720, line: 198, column: 2)
!2449 = distinct !DILexicalBlock(scope: !719, file: !720, line: 198, column: 2)
!2450 = !DILocation(line: 199, column: 2, scope: !719)
!2451 = !DILocation(line: 200, column: 1, scope: !719)
!2452 = !DILocation(line: 194, column: 57, scope: !1881)
!2453 = !DILocation(line: 198, column: 2, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !713, line: 198, column: 2)
!2455 = distinct !DILexicalBlock(scope: !1881, file: !713, line: 198, column: 2)
!2456 = !DILocation(line: 198, column: 2, scope: !2455)
!2457 = !DILocation(line: 198, column: 2, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !713, line: 198, column: 2)
!2459 = !DILocation(line: 200, column: 9, scope: !1881)
!2460 = !DILocation(line: 196, column: 16, scope: !1881)
!2461 = !DILocation(line: 201, column: 7, scope: !1881)
!2462 = !DILocation(line: 201, column: 2, scope: !1881)
!2463 = !DILocation(line: 209, column: 28, scope: !1881)
!2464 = !DILocation(line: 99, column: 40, scope: !1902, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 210, column: 2, scope: !1881)
!2466 = !DILocation(line: 104, column: 10, scope: !1902, inlinedAt: !2465)
!2467 = !DILocation(line: 101, column: 16, scope: !1902, inlinedAt: !2465)
!2468 = !DILocation(line: 105, column: 2, scope: !1916, inlinedAt: !2465)
!2469 = !DILocation(line: 102, column: 25, scope: !1902, inlinedAt: !2465)
!2470 = !DILocation(line: 105, column: 2, scope: !1920, inlinedAt: !2465)
!2471 = !DILocation(line: 102, column: 32, scope: !1902, inlinedAt: !2465)
!2472 = !DILocation(line: 106, column: 24, scope: !1920, inlinedAt: !2465)
!2473 = !DILocation(line: 106, column: 3, scope: !1920, inlinedAt: !2465)
!2474 = !DILocation(line: 107, column: 2, scope: !1902, inlinedAt: !2465)
!2475 = !DILocation(line: 108, column: 1, scope: !1902, inlinedAt: !2465)
!2476 = !DILocation(line: 211, column: 2, scope: !1881)
!2477 = !DILocation(line: 212, column: 1, scope: !1881)
