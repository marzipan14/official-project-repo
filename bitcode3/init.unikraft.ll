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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()** @__uk_inittab39_liblwip_init to i8*)], section "llvm.metadata"

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @sys_init() local_unnamed_addr #0 !dbg !1250 {
  ret void, !dbg !1252
}

; Function Attrs: noredzone nounwind
define dso_local i32 @liblwip_init() #1 section ".text_shared" !dbg !1253 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1263
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9, !dbg !1263
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1264, !srcloc !1272
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1274
  br i1 %4, label %10, label %5, !dbg !1274

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1275, !srcloc !1272
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !1274
  br i1 %7, label %10, label %8, !dbg !1278

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @_liblwip_init() #10, !dbg !1279
  store i32 0, i32* %1, align 4, !dbg !1279, !tbaa !1282
  br label %19, !dbg !1279

; <label>:10:                                     ; preds = %5, %0
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1286, !srcloc !1272
  %12 = and i64 %11, -65536, !dbg !1295
  %13 = or i64 %12, 4097, !dbg !1295
  %14 = add nsw i64 %13, -1, !dbg !1295
  %15 = inttoptr i64 %14 to i32*, !dbg !1296
  %16 = load i32, i32* %15, align 4096, !dbg !1297, !tbaa !1282
  %17 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call _liblwip_init\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i32 %16, i32 (...)* bitcast (i32 ()* @_liblwip_init to i32 (...)*)) #9, !dbg !1298, !srcloc !1299
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1, i64 %17) #9, !dbg !1300, !srcloc !1303
  %18 = load i32, i32* %1, align 4, !dbg !1304, !tbaa !1282
  br label %19

; <label>:19:                                     ; preds = %10, %8
  %20 = phi i32 [ %18, %10 ], [ 0, %8 ], !dbg !1304
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9, !dbg !1305
  ret i32 %20, !dbg !1306
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i64 @ukarch_read_sp() unnamed_addr #4 !dbg !1265 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1307, !srcloc !1272
  ret i64 %1, !dbg !1309
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i32 @uk_thread_get_tid() unnamed_addr #4 !dbg !1288 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1310, !srcloc !1272
  %2 = and i64 %1, -65536, !dbg !1314
  %3 = or i64 %2, 4097, !dbg !1314
  %4 = add nsw i64 %3, -1, !dbg !1314
  %5 = inttoptr i64 %4 to i32*, !dbg !1315
  %6 = load i32, i32* %5, align 4096, !dbg !1316, !tbaa !1282
  ret i32 %6, !dbg !1317
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
  %7 = bitcast %struct.uk_netdev** %1 to i8*, !dbg !1318
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1318
  %8 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1319, !tbaa !1320
  %9 = icmp eq %struct.uk_alloc* %8, null, !dbg !1329
  br i1 %9, label %10, label %12, !dbg !1331, !prof !1332

; <label>:10:                                     ; preds = %0
  %11 = tail call i32* @__errno() #11, !dbg !1333
  store i32 12, i32* %11, align 4, !dbg !1335, !tbaa !1282
  br label %16, !dbg !1336

; <label>:12:                                     ; preds = %0
  %13 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %8, i64 0, i32 0, !dbg !1344
  %14 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %13, align 8, !dbg !1344, !tbaa !1320
  %15 = tail call i8* %14(%struct.uk_alloc* nonnull %8, i64 8) #11, !dbg !1345
  br label %16, !dbg !1346

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ null, %10 ], [ %15, %12 ], !dbg !1347
  %18 = bitcast i8* %17 to i8**, !dbg !1348
  store i8* null, i8** %18, align 8, !dbg !1350, !tbaa !1320
  %19 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !1351
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1351
  %20 = bitcast %struct.ip4_addr* %3 to i8*, !dbg !1352
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #9, !dbg !1352
  %21 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #9, !dbg !1353
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1354, !srcloc !1272
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1357
  br i1 %23, label %27, label %24, !dbg !1357

; <label>:24:                                     ; preds = %16
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1358, !srcloc !1272
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !1357
  br i1 %26, label %27, label %34, !dbg !1361

; <label>:27:                                     ; preds = %24, %16
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1362, !srcloc !1272
  %29 = and i64 %28, -65536, !dbg !1367
  %30 = or i64 %29, 4097, !dbg !1367
  %31 = add nsw i64 %30, -1, !dbg !1367
  %32 = inttoptr i64 %31 to i32*, !dbg !1368
  %33 = load i32, i32* %32, align 4096, !dbg !1369, !tbaa !1282
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([19 x i8]* @_liblwip_init.__str.1 to i64), i32 %33, void (i8*, ...)* nonnull @uk_pr_info) #9, !dbg !1370, !srcloc !1371
  br label %34

; <label>:34:                                     ; preds = %24, %27
  %35 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1372, !srcloc !1272
  %36 = icmp ult i64 %35, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1375
  br i1 %36, label %41, label %37, !dbg !1375

; <label>:37:                                     ; preds = %34
  %38 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1376, !srcloc !1272
  %39 = icmp ugt i64 %38, ptrtoint ([0 x i8]* @_end to i64), !dbg !1375
  br i1 %39, label %41, label %40, !dbg !1379

; <label>:40:                                     ; preds = %37
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull @_lwip_init_sem, i64 0) #11, !dbg !1380
  br label %48, !dbg !1380

; <label>:41:                                     ; preds = %37, %34
  %42 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1382, !srcloc !1272
  %43 = and i64 %42, -65536, !dbg !1387
  %44 = or i64 %43, 4097, !dbg !1387
  %45 = add nsw i64 %44, -1, !dbg !1387
  %46 = inttoptr i64 %45 to i32*, !dbg !1388
  %47 = load i32, i32* %46, align 4096, !dbg !1389, !tbaa !1282
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_init\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i64 0, i32 %47, void (%struct.uk_semaphore*, i64)* nonnull @uk_semaphore_init) #9, !dbg !1390, !srcloc !1391
  br label %48

; <label>:48:                                     ; preds = %41, %40
  tail call void @tcpip_init(void (i8*)* nonnull @_lwip_init_done, i8* null) #11, !dbg !1392
  %49 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1393, !srcloc !1272
  %50 = icmp ult i64 %49, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1396
  br i1 %50, label %55, label %51, !dbg !1396

; <label>:51:                                     ; preds = %48
  %52 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1397, !srcloc !1272
  %53 = icmp ugt i64 %52, ptrtoint ([0 x i8]* @_end to i64), !dbg !1396
  br i1 %53, label %55, label %54, !dbg !1400

; <label>:54:                                     ; preds = %51
  tail call void @uk_semaphore_down(%struct.uk_semaphore* nonnull @_lwip_init_sem) #10, !dbg !1401
  br label %62, !dbg !1401

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1403, !srcloc !1272
  %57 = and i64 %56, -65536, !dbg !1408
  %58 = or i64 %57, 4097, !dbg !1408
  %59 = add nsw i64 %58, -1, !dbg !1408
  %60 = inttoptr i64 %59 to i32*, !dbg !1409
  %61 = load i32, i32* %60, align 4096, !dbg !1410, !tbaa !1282
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_down\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i32 %61, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_down) #9, !dbg !1411, !srcloc !1412
  br label %62

; <label>:62:                                     ; preds = %55, %54
  tail call void @netif_add_ext_callback(%struct.netif_ext_callback* nonnull @netif_status_print, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* nonnull @_netif_status_print) #11, !dbg !1413
  %63 = bitcast i32* %5 to i8*, !dbg !1415
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63) #9, !dbg !1415
  %64 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1416, !srcloc !1272
  %65 = icmp ult i64 %64, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1419
  br i1 %65, label %71, label %66, !dbg !1419

; <label>:66:                                     ; preds = %62
  %67 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1420, !srcloc !1272
  %68 = icmp ugt i64 %67, ptrtoint ([0 x i8]* @_end to i64), !dbg !1419
  br i1 %68, label %71, label %69, !dbg !1423

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @uk_netdev_count() #11, !dbg !1424
  store i32 %70, i32* %5, align 4, !dbg !1424, !tbaa !1282
  br label %80, !dbg !1424

; <label>:71:                                     ; preds = %66, %62
  %72 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1427, !srcloc !1272
  %73 = and i64 %72, -65536, !dbg !1432
  %74 = or i64 %73, 4097, !dbg !1432
  %75 = add nsw i64 %74, -1, !dbg !1432
  %76 = inttoptr i64 %75 to i32*, !dbg !1433
  %77 = load i32, i32* %76, align 4096, !dbg !1434, !tbaa !1282
  %78 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_count\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %77, i32 ()* nonnull @uk_netdev_count) #9, !dbg !1435, !srcloc !1436
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %78) #9, !dbg !1437, !srcloc !1440
  %79 = load i32, i32* %5, align 4, !dbg !1441, !tbaa !1282
  br label %80

; <label>:80:                                     ; preds = %71, %69
  %81 = phi i32 [ %79, %71 ], [ %70, %69 ], !dbg !1441
  %82 = icmp eq i32 %81, 0, !dbg !1443
  br i1 %82, label %326, label %83, !dbg !1444

; <label>:83:                                     ; preds = %80
  %84 = bitcast i32* %6 to i8*
  %85 = bitcast %struct.uk_netdev** %1 to i64*
  %86 = ptrtoint i8* %17 to i64
  %87 = bitcast i8* %17 to i64*
  %88 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %3, i64 0, i32 0
  br label %89, !dbg !1444

; <label>:89:                                     ; preds = %83, %320
  %90 = phi i64 [ 0, %83 ], [ %322, %320 ]
  %91 = phi i32 [ 1, %83 ], [ %321, %320 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %84) #9, !dbg !1445
  %92 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1446, !srcloc !1272
  %93 = icmp ult i64 %92, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1449
  br i1 %93, label %100, label %94, !dbg !1449

; <label>:94:                                     ; preds = %89
  %95 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1450, !srcloc !1272
  %96 = icmp ugt i64 %95, ptrtoint ([0 x i8]* @_end to i64), !dbg !1449
  br i1 %96, label %100, label %97, !dbg !1453

; <label>:97:                                     ; preds = %94
  %98 = trunc i64 %90 to i32, !dbg !1454
  %99 = call %struct.uk_netdev* @uk_netdev_get(i32 %98) #11, !dbg !1454
  store %struct.uk_netdev* %99, %struct.uk_netdev** %1, align 8, !dbg !1454, !tbaa !1320
  br label %109, !dbg !1454

; <label>:100:                                    ; preds = %94, %89
  %101 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1457, !srcloc !1272
  %102 = and i64 %101, -65536, !dbg !1462
  %103 = or i64 %102, 4097, !dbg !1462
  %104 = add nsw i64 %103, -1, !dbg !1462
  %105 = inttoptr i64 %104 to i32*, !dbg !1463
  %106 = load i32, i32* %105, align 4096, !dbg !1464, !tbaa !1282
  %107 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %90, i32 %106, %struct.uk_netdev* (i32)* nonnull @uk_netdev_get) #9, !dbg !1465, !srcloc !1466
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_netdev** nonnull %1, i64 %107) #9, !dbg !1467, !srcloc !1471
  %108 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1472, !tbaa !1320
  br label %109

; <label>:109:                                    ; preds = %100, %97
  %110 = phi %struct.uk_netdev* [ %108, %100 ], [ %99, %97 ], !dbg !1472
  %111 = icmp eq %struct.uk_netdev* %110, null, !dbg !1472
  br i1 %111, label %320, label %112, !dbg !1474

; <label>:112:                                    ; preds = %109
  %113 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1475, !srcloc !1272
  %114 = icmp ult i64 %113, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1478
  br i1 %114, label %121, label %115, !dbg !1478

; <label>:115:                                    ; preds = %112
  %116 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1479, !srcloc !1272
  %117 = icmp ugt i64 %116, ptrtoint ([0 x i8]* @_end to i64), !dbg !1478
  br i1 %117, label %121, label %118, !dbg !1482

; <label>:118:                                    ; preds = %115
  %119 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1483, !tbaa !1320
  %120 = call i32 @uk_netdev_state_get(%struct.uk_netdev* %119) #11, !dbg !1483
  store i32 %120, i32* %6, align 4, !dbg !1483, !tbaa !1486
  br label %131, !dbg !1483

; <label>:121:                                    ; preds = %115, %112
  %122 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1487, !srcloc !1272
  %123 = and i64 %122, -65536, !dbg !1492
  %124 = or i64 %123, 4097, !dbg !1492
  %125 = add nsw i64 %124, -1, !dbg !1492
  %126 = inttoptr i64 %125 to i32*, !dbg !1493
  %127 = load i32, i32* %126, align 4096, !dbg !1494, !tbaa !1282
  %128 = load i64, i64* %85, align 8, !dbg !1495, !tbaa !1320
  %129 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_state_get\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %128, i32 %127, i32 (%struct.uk_netdev*)* nonnull @uk_netdev_state_get) #9, !dbg !1495, !srcloc !1496
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %129) #9, !dbg !1497, !srcloc !1500
  %130 = load i32, i32* %6, align 4, !dbg !1501, !tbaa !1486
  br label %131

; <label>:131:                                    ; preds = %121, %118
  %132 = phi i32 [ %130, %121 ], [ %120, %118 ], !dbg !1501
  %133 = icmp eq i32 %132, 1, !dbg !1502
  %134 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1503, !srcloc !1272
  %135 = icmp uge i64 %134, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1506
  br i1 %133, label %147, label %136, !dbg !1507

; <label>:136:                                    ; preds = %131
  br i1 %135, label %137, label %140, !dbg !1508

; <label>:137:                                    ; preds = %136
  %138 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1509, !srcloc !1272
  %139 = icmp ugt i64 %138, ptrtoint ([0 x i8]* @_end to i64), !dbg !1508
  br i1 %139, label %140, label %320, !dbg !1512

; <label>:140:                                    ; preds = %137, %136
  %141 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1513, !srcloc !1272
  %142 = and i64 %141, -65536, !dbg !1518
  %143 = or i64 %142, 4097, !dbg !1518
  %144 = add nsw i64 %143, -1, !dbg !1518
  %145 = inttoptr i64 %144 to i32*, !dbg !1519
  %146 = load i32, i32* %145, align 4096, !dbg !1520, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([70 x i8]* @_liblwip_init.__str.3 to i64), i64 %90, i32 %146, void (i8*, ...)* nonnull @uk_pr_info) #9, !dbg !1521, !srcloc !1522
  br label %320

; <label>:147:                                    ; preds = %131
  br i1 %135, label %148, label %151, !dbg !1523

; <label>:148:                                    ; preds = %147
  %149 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1524, !srcloc !1272
  %150 = icmp ugt i64 %149, ptrtoint ([0 x i8]* @_end to i64), !dbg !1523
  br i1 %150, label %151, label %158, !dbg !1527

; <label>:151:                                    ; preds = %148, %147
  %152 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1528, !srcloc !1272
  %153 = and i64 %152, -65536, !dbg !1533
  %154 = or i64 %153, 4097, !dbg !1533
  %155 = add nsw i64 %154, -1, !dbg !1533
  %156 = inttoptr i64 %155 to i32*, !dbg !1534
  %157 = load i32, i32* %156, align 4096, !dbg !1535, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([37 x i8]* @_liblwip_init.__str.5 to i64), i64 %90, i32 %157, void (i8*, ...)* nonnull @uk_pr_info) #9, !dbg !1536, !srcloc !1537
  br label %158

; <label>:158:                                    ; preds = %148, %151
  %159 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1541, !srcloc !1272
  %160 = icmp ult i64 %159, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1544
  br i1 %160, label %166, label %161, !dbg !1544

; <label>:161:                                    ; preds = %158
  %162 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1545, !srcloc !1272
  %163 = icmp ugt i64 %162, ptrtoint ([0 x i8]* @_end to i64), !dbg !1544
  br i1 %163, label %166, label %164, !dbg !1548

; <label>:164:                                    ; preds = %161
  %165 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1549, !tbaa !1320
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %165, i32 1, i8** %18) #10, !dbg !1549
  br label %174, !dbg !1549

; <label>:166:                                    ; preds = %161, %158
  %167 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1551, !srcloc !1272
  %168 = and i64 %167, -65536, !dbg !1556
  %169 = or i64 %168, 4097, !dbg !1556
  %170 = add nsw i64 %169, -1, !dbg !1556
  %171 = inttoptr i64 %170 to i32*, !dbg !1557
  %172 = load i32, i32* %171, align 4096, !dbg !1558, !tbaa !1282
  %173 = load i64, i64* %85, align 8, !dbg !1559, !tbaa !1320
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %173, i64 1, i64 %86, i32 %172, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #9, !dbg !1559, !srcloc !1560
  br label %174

; <label>:174:                                    ; preds = %166, %164
  %175 = load i8*, i8** %18, align 8, !dbg !1561, !tbaa !1320
  %176 = icmp eq i8* %175, null, !dbg !1561
  br i1 %176, label %272, label %177, !dbg !1562

; <label>:177:                                    ; preds = %174
  %178 = call i32 @ip4addr_aton(i8* nonnull %175, %struct.ip4_addr* nonnull %2) #11, !dbg !1564
  %179 = icmp eq i32 %178, 1, !dbg !1565
  %180 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1566, !srcloc !1272
  %181 = icmp ult i64 %180, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1569
  br i1 %179, label %196, label %182, !dbg !1570

; <label>:182:                                    ; preds = %177
  br i1 %181, label %188, label %183, !dbg !1571

; <label>:183:                                    ; preds = %182
  %184 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1572, !srcloc !1272
  %185 = icmp ugt i64 %184, ptrtoint ([0 x i8]* @_end to i64), !dbg !1571
  br i1 %185, label %188, label %186, !dbg !1575

; <label>:186:                                    ; preds = %183
  %187 = load i8*, i8** %18, align 8, !dbg !1576, !tbaa !1320
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_liblwip_init.__str.6, i64 0, i64 0), i8* %187) #10, !dbg !1576
  br label %272, !dbg !1576

; <label>:188:                                    ; preds = %183, %182
  %189 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1578, !srcloc !1272
  %190 = and i64 %189, -65536, !dbg !1583
  %191 = or i64 %190, 4097, !dbg !1583
  %192 = add nsw i64 %191, -1, !dbg !1583
  %193 = inttoptr i64 %192 to i32*, !dbg !1584
  %194 = load i32, i32* %193, align 4096, !dbg !1585, !tbaa !1282
  %195 = load i64, i64* %87, align 8, !dbg !1586, !tbaa !1320
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([33 x i8]* @_liblwip_init.__str.7 to i64), i64 %195, i32 %194, void (i8*, ...)* nonnull @uk_pr_err) #9, !dbg !1586, !srcloc !1587
  br label %272

; <label>:196:                                    ; preds = %177
  br i1 %181, label %202, label %197, !dbg !1588

; <label>:197:                                    ; preds = %196
  %198 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1589, !srcloc !1272
  %199 = icmp ugt i64 %198, ptrtoint ([0 x i8]* @_end to i64), !dbg !1588
  br i1 %199, label %202, label %200, !dbg !1592

; <label>:200:                                    ; preds = %197
  %201 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1593, !tbaa !1320
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %201, i32 3, i8** nonnull %18) #10, !dbg !1593
  br label %210, !dbg !1593

; <label>:202:                                    ; preds = %197, %196
  %203 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1595, !srcloc !1272
  %204 = and i64 %203, -65536, !dbg !1600
  %205 = or i64 %204, 4097, !dbg !1600
  %206 = add nsw i64 %205, -1, !dbg !1600
  %207 = inttoptr i64 %206 to i32*, !dbg !1601
  %208 = load i32, i32* %207, align 4096, !dbg !1602, !tbaa !1282
  %209 = load i64, i64* %85, align 8, !dbg !1603, !tbaa !1320
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %209, i64 3, i64 %86, i32 %208, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #9, !dbg !1603, !srcloc !1604
  br label %210

; <label>:210:                                    ; preds = %202, %200
  %211 = load i8*, i8** %18, align 8, !dbg !1605, !tbaa !1320
  %212 = icmp eq i8* %211, null, !dbg !1605
  br i1 %212, label %232, label %213, !dbg !1606

; <label>:213:                                    ; preds = %210
  %214 = call i32 @ip4addr_aton(i8* nonnull %211, %struct.ip4_addr* nonnull %3) #11, !dbg !1608
  %215 = icmp eq i32 %214, 1, !dbg !1609
  br i1 %215, label %234, label %216, !dbg !1610

; <label>:216:                                    ; preds = %213
  %217 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1611, !srcloc !1272
  %218 = icmp ult i64 %217, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1614
  br i1 %218, label %224, label %219, !dbg !1614

; <label>:219:                                    ; preds = %216
  %220 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1615, !srcloc !1272
  %221 = icmp ugt i64 %220, ptrtoint ([0 x i8]* @_end to i64), !dbg !1614
  br i1 %221, label %224, label %222, !dbg !1618

; <label>:222:                                    ; preds = %219
  %223 = load i8*, i8** %18, align 8, !dbg !1619, !tbaa !1320
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @_liblwip_init.__str.8, i64 0, i64 0), i8* %223) #10, !dbg !1619
  br label %272, !dbg !1619

; <label>:224:                                    ; preds = %219, %216
  %225 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1621, !srcloc !1272
  %226 = and i64 %225, -65536, !dbg !1626
  %227 = or i64 %226, 4097, !dbg !1626
  %228 = add nsw i64 %227, -1, !dbg !1626
  %229 = inttoptr i64 %228 to i32*, !dbg !1627
  %230 = load i32, i32* %229, align 4096, !dbg !1628, !tbaa !1282
  %231 = load i64, i64* %87, align 8, !dbg !1629, !tbaa !1320
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([31 x i8]* @_liblwip_init.__str.9 to i64), i64 %231, i32 %230, void (i8*, ...)* nonnull @uk_pr_err) #9, !dbg !1629, !srcloc !1630
  br label %272

; <label>:232:                                    ; preds = %210
  %233 = call i32 @lwip_htonl(i32 -256) #11, !dbg !1631
  store i32 %233, i32* %88, align 4, !dbg !1631, !tbaa !1632
  br label %234

; <label>:234:                                    ; preds = %213, %232
  %235 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1634, !srcloc !1272
  %236 = icmp ult i64 %235, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1637
  br i1 %236, label %242, label %237, !dbg !1637

; <label>:237:                                    ; preds = %234
  %238 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1638, !srcloc !1272
  %239 = icmp ugt i64 %238, ptrtoint ([0 x i8]* @_end to i64), !dbg !1637
  br i1 %239, label %242, label %240, !dbg !1641

; <label>:240:                                    ; preds = %237
  %241 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1642, !tbaa !1320
  call void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev* %241, i32 5, i8** nonnull %18) #10, !dbg !1642
  br label %250, !dbg !1642

; <label>:242:                                    ; preds = %237, %234
  %243 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1644, !srcloc !1272
  %244 = and i64 %243, -65536, !dbg !1649
  %245 = or i64 %244, 4097, !dbg !1649
  %246 = add nsw i64 %245, -1, !dbg !1649
  %247 = inttoptr i64 %246 to i32*, !dbg !1650
  %248 = load i32, i32* %247, align 4096, !dbg !1651, !tbaa !1282
  %249 = load i64, i64* %85, align 8, !dbg !1652, !tbaa !1320
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netdev_einfo_get_with_copy\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %249, i64 5, i64 %86, i32 %248, void (%struct.uk_netdev*, i32, i8**)* nonnull @uk_netdev_einfo_get_with_copy) #9, !dbg !1652, !srcloc !1653
  br label %250

; <label>:250:                                    ; preds = %242, %240
  %251 = load i8*, i8** %18, align 8, !dbg !1654, !tbaa !1320
  %252 = icmp eq i8* %251, null, !dbg !1654
  br i1 %252, label %272, label %253, !dbg !1655

; <label>:253:                                    ; preds = %250
  %254 = call i32 @ip4addr_aton(i8* nonnull %251, %struct.ip4_addr* nonnull %4) #11, !dbg !1657
  %255 = icmp eq i32 %254, 1, !dbg !1658
  br i1 %255, label %272, label %256, !dbg !1659

; <label>:256:                                    ; preds = %253
  %257 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1660, !srcloc !1272
  %258 = icmp ult i64 %257, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1663
  br i1 %258, label %264, label %259, !dbg !1663

; <label>:259:                                    ; preds = %256
  %260 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1664, !srcloc !1272
  %261 = icmp ugt i64 %260, ptrtoint ([0 x i8]* @_end to i64), !dbg !1663
  br i1 %261, label %264, label %262, !dbg !1667

; <label>:262:                                    ; preds = %259
  %263 = load i8*, i8** %18, align 8, !dbg !1668, !tbaa !1320
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_liblwip_init.__str.10, i64 0, i64 0), i8* %263) #10, !dbg !1668
  br label %272, !dbg !1668

; <label>:264:                                    ; preds = %259, %256
  %265 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1670, !srcloc !1272
  %266 = and i64 %265, -65536, !dbg !1675
  %267 = or i64 %266, 4097, !dbg !1675
  %268 = add nsw i64 %267, -1, !dbg !1675
  %269 = inttoptr i64 %268 to i32*, !dbg !1676
  %270 = load i32, i32* %269, align 4096, !dbg !1677, !tbaa !1282
  %271 = load i64, i64* %87, align 8, !dbg !1678, !tbaa !1320
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([30 x i8]* @_liblwip_init.__str.11 to i64), i64 %271, i32 %270, void (i8*, ...)* nonnull @uk_pr_err) #9, !dbg !1678, !srcloc !1679
  br label %272

; <label>:272:                                    ; preds = %253, %250, %174, %262, %264, %222, %224, %186, %188
  %273 = phi %struct.ip4_addr* [ null, %186 ], [ null, %188 ], [ null, %222 ], [ null, %224 ], [ null, %262 ], [ null, %264 ], [ null, %250 ], [ null, %174 ], [ %4, %253 ], !dbg !1680
  %274 = phi %struct.ip4_addr* [ null, %186 ], [ null, %188 ], [ null, %222 ], [ null, %224 ], [ %3, %262 ], [ %3, %264 ], [ %3, %250 ], [ null, %174 ], [ %3, %253 ], !dbg !1680
  %275 = phi %struct.ip4_addr* [ null, %186 ], [ null, %188 ], [ %2, %222 ], [ %2, %224 ], [ %2, %262 ], [ %2, %264 ], [ %2, %250 ], [ null, %174 ], [ %2, %253 ], !dbg !1680
  %276 = load %struct.uk_netdev*, %struct.uk_netdev** %1, align 8, !dbg !1681, !tbaa !1320
  %277 = call %struct.netif* @uknetdev_addif(%struct.uk_netdev* %276, %struct.ip4_addr* %275, %struct.ip4_addr* %274, %struct.ip4_addr* %273) #11, !dbg !1682
  %278 = icmp eq %struct.netif* %277, null, !dbg !1684
  br i1 %278, label %279, label %294, !dbg !1685

; <label>:279:                                    ; preds = %272
  %280 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1686, !srcloc !1272
  %281 = icmp ult i64 %280, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1689
  br i1 %281, label %287, label %282, !dbg !1689

; <label>:282:                                    ; preds = %279
  %283 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1690, !srcloc !1272
  %284 = icmp ugt i64 %283, ptrtoint ([0 x i8]* @_end to i64), !dbg !1689
  br i1 %284, label %287, label %285, !dbg !1693

; <label>:285:                                    ; preds = %282
  %286 = trunc i64 %90 to i32, !dbg !1694
  call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @_liblwip_init.__str.12, i64 0, i64 0), i32 %286) #10, !dbg !1694
  br label %320, !dbg !1694

; <label>:287:                                    ; preds = %282, %279
  %288 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1696, !srcloc !1272
  %289 = and i64 %288, -65536, !dbg !1701
  %290 = or i64 %289, 4097, !dbg !1701
  %291 = add nsw i64 %290, -1, !dbg !1701
  %292 = inttoptr i64 %291 to i32*, !dbg !1702
  %293 = load i32, i32* %292, align 4096, !dbg !1703, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_err\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([44 x i8]* @_liblwip_init.__str.13 to i64), i64 %90, i32 %293, void (i8*, ...)* nonnull @uk_pr_err) #9, !dbg !1704, !srcloc !1705
  br label %320

; <label>:294:                                    ; preds = %272
  %295 = icmp eq i32 %91, 0, !dbg !1706
  br i1 %295, label %319, label %296, !dbg !1707

; <label>:296:                                    ; preds = %294
  %297 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1708, !srcloc !1272
  %298 = icmp ult i64 %297, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1711
  br i1 %298, label %302, label %299, !dbg !1711

; <label>:299:                                    ; preds = %296
  %300 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1712, !srcloc !1272
  %301 = icmp ugt i64 %300, ptrtoint ([0 x i8]* @_end to i64), !dbg !1711
  br i1 %301, label %302, label %318, !dbg !1715

; <label>:302:                                    ; preds = %299, %296
  %303 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1716, !srcloc !1272
  %304 = and i64 %303, -65536, !dbg !1721
  %305 = or i64 %304, 4097, !dbg !1721
  %306 = add nsw i64 %305, -1, !dbg !1721
  %307 = inttoptr i64 %306 to i32*, !dbg !1722
  %308 = load i32, i32* %307, align 4096, !dbg !1723, !tbaa !1282
  %309 = getelementptr inbounds %struct.netif, %struct.netif* %277, i64 0, i32 22, i64 1, !dbg !1724
  %310 = load i8, i8* %309, align 1, !dbg !1724, !tbaa !1486
  %311 = sext i8 %310 to i64, !dbg !1724
  %312 = getelementptr inbounds %struct.netif, %struct.netif* %277, i64 0, i32 23, !dbg !1724
  %313 = load i8, i8* %312, align 8, !dbg !1724, !tbaa !1725
  %314 = zext i8 %313 to i64, !dbg !1724
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %277, i64 0, i32 22, i64 0, !dbg !1724
  %316 = load i8, i8* %315, align 2, !dbg !1724, !tbaa !1486
  %317 = sext i8 %316 to i64, !dbg !1724
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_info\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([34 x i8]* @_liblwip_init.__str.15 to i64), i64 %317, i64 %311, i64 %314, i32 %308, void (i8*, ...)* nonnull @uk_pr_info) #9, !dbg !1724, !srcloc !1729
  br label %318

; <label>:318:                                    ; preds = %299, %302
  call void @netif_set_default(%struct.netif* nonnull %277) #11, !dbg !1730
  br label %319, !dbg !1731

; <label>:319:                                    ; preds = %294, %318
  call void @netif_set_up(%struct.netif* nonnull %277) #11, !dbg !1732
  br label %320, !dbg !1733

; <label>:320:                                    ; preds = %137, %285, %287, %140, %109, %319
  %321 = phi i32 [ 0, %319 ], [ %91, %109 ], [ %91, %140 ], [ %91, %287 ], [ %91, %285 ], [ %91, %137 ], !dbg !1734
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %84) #9, !dbg !1733
  %322 = add nuw nsw i64 %90, 1, !dbg !1735
  %323 = load i32, i32* %5, align 4, !dbg !1441, !tbaa !1282
  %324 = zext i32 %323 to i64, !dbg !1443
  %325 = icmp ult i64 %322, %324, !dbg !1443
  br i1 %325, label %89, label %326, !dbg !1444, !llvm.loop !1736

; <label>:326:                                    ; preds = %320, %80
  %327 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1738, !tbaa !1320
  %328 = icmp eq %struct.uk_alloc* %327, null, !dbg !1753
  br i1 %328, label %329, label %330, !dbg !1756, !prof !1332

; <label>:329:                                    ; preds = %326
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !1757
  call void @ukplat_terminate(i32 3) #12, !dbg !1757
  unreachable, !dbg !1757

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %327, i64 0, i32 5, !dbg !1759
  %332 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %331, align 8, !dbg !1759, !tbaa !1320
  call void %332(%struct.uk_alloc* nonnull %327, i8* %17) #11, !dbg !1760
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63) #9, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #9, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #9, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1761
  ret i32 0, !dbg !1762
}

; Function Attrs: inlinehint noredzone nounwind readnone
define internal void @uk_pr_info(i8* nocapture, ...) #5 !dbg !1763 {
  ret void, !dbg !1768
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) #6

; Function Attrs: noredzone
declare dso_local void @tcpip_init(void (i8*)*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define internal void @_lwip_init_done(i8* nocapture readnone) #1 !dbg !1769 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1779, !srcloc !1272
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1782
  br i1 %3, label %22, label %4, !dbg !1782

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1783, !srcloc !1272
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !1782
  br i1 %6, label %22, label %7, !dbg !1786

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1800
  %9 = load i64, i64* getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 0), align 8, !dbg !1802, !tbaa !1803
  %10 = add nsw i64 %9, 1, !dbg !1802
  store i64 %10, i64* getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 0), align 8, !dbg !1802, !tbaa !1803
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1820
  %12 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_semaphore, %struct.uk_semaphore* @_lwip_init_sem, i64 0, i32 1, i32 0), align 8, !dbg !1822, !tbaa !1824
  %13 = icmp eq %struct.uk_waitq_entry* %12, null, !dbg !1826
  br i1 %13, label %21, label %14, !dbg !1826

; <label>:14:                                     ; preds = %7, %14
  %15 = phi %struct.uk_waitq_entry* [ %17, %14 ], [ %12, %7 ]
  %16 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %15, i64 0, i32 2, i32 0, !dbg !1826
  %17 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1826, !tbaa !1828
  %18 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %15, i64 0, i32 1, !dbg !1832
  %19 = load %struct.uk_thread*, %struct.uk_thread** %18, align 8, !dbg !1832, !tbaa !1833
  tail call void @uk_thread_wake(%struct.uk_thread* %19) #11, !dbg !1834
  %20 = icmp eq %struct.uk_waitq_entry* %17, null, !dbg !1826
  br i1 %20, label %21, label %14, !dbg !1826, !llvm.loop !1835

; <label>:21:                                     ; preds = %14, %7
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #11, !dbg !1838
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #11, !dbg !1839
  br label %29, !dbg !1840

; <label>:22:                                     ; preds = %4, %1
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1841, !srcloc !1272
  %24 = and i64 %23, -65536, !dbg !1846
  %25 = or i64 %24, 4097, !dbg !1846
  %26 = add nsw i64 %25, -1, !dbg !1846
  %27 = inttoptr i64 %26 to i32*, !dbg !1847
  %28 = load i32, i32* %27, align 4096, !dbg !1848, !tbaa !1282
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_up\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint (%struct.uk_semaphore* @_lwip_init_sem to i64), i32 %28, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_up) #9, !dbg !1849, !srcloc !1850
  br label %29

; <label>:29:                                     ; preds = %21, %22
  ret void, !dbg !1851
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_down(%struct.uk_semaphore*) #4 !dbg !1852 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1865
  br i1 %2, label %7, label %3, !dbg !1868, !prof !1332

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %8, !dbg !1869

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !1878
  tail call void @ukplat_terminate(i32 3) #12, !dbg !1878
  unreachable, !dbg !1878

; <label>:8:                                      ; preds = %3, %97
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1869, !srcloc !1272
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1883, !srcloc !1272
  %11 = and i64 %10, -65536, !dbg !1888
  %12 = or i64 %11, 4097, !dbg !1888
  %13 = add nsw i64 %12, -1, !dbg !1888
  %14 = inttoptr i64 %13 to i32*, !dbg !1889
  %15 = load i32, i32* %14, align 4096, !dbg !1890, !tbaa !1282
  %16 = sext i32 %15 to i64, !dbg !1891
  %17 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, !dbg !1891
  %18 = bitcast %struct.uk_waitq_entry* %17 to i8*, !dbg !1891
  %19 = tail call i8* @memset(i8* nonnull %18, i32 0, i64 24) #11, !dbg !1891
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1892, !srcloc !1272
  %21 = and i64 %20, -65536, !dbg !1897
  %22 = inttoptr i64 %21 to i64*, !dbg !1898
  %23 = load i64, i64* %22, align 65536, !dbg !1898, !tbaa !1320
  %24 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 1, !dbg !1891
  %25 = bitcast %struct.uk_thread** %24 to i64*, !dbg !1891
  store i64 %23, i64* %25, align 8, !dbg !1891, !tbaa !1833
  %26 = load i64, i64* %4, align 8, !dbg !1900, !tbaa !1803
  %27 = icmp sgt i64 %26, 0, !dbg !1902
  br i1 %27, label %93, label %28, !dbg !1903

; <label>:28:                                     ; preds = %8
  %29 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %17, i64 0, i32 0
  %30 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 2, i32 0
  br label %31, !dbg !1904

; <label>:31:                                     ; preds = %28, %67
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1904, !srcloc !1272
  %33 = and i64 %32, -65536, !dbg !1912
  %34 = inttoptr i64 %33 to %struct.uk_thread**, !dbg !1913
  %35 = load %struct.uk_thread*, %struct.uk_thread** %34, align 65536, !dbg !1915, !tbaa !1320
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1917
  %37 = load i32, i32* %29, align 8, !dbg !1928, !tbaa !1930
  %38 = icmp eq i32 %37, 0, !dbg !1931
  br i1 %38, label %39, label %41, !dbg !1932

; <label>:39:                                     ; preds = %31
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %30, align 8, !dbg !1933, !tbaa !1828
  %40 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %5, align 8, !dbg !1933, !tbaa !1936
  store %struct.uk_waitq_entry* %17, %struct.uk_waitq_entry** %40, align 8, !dbg !1933, !tbaa !1320
  store %struct.uk_waitq_entry** %30, %struct.uk_waitq_entry*** %5, align 8, !dbg !1933, !tbaa !1936
  store i32 1, i32* %29, align 8, !dbg !1937, !tbaa !1930
  br label %41, !dbg !1938

; <label>:41:                                     ; preds = %31, %39
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 6, !dbg !1948
  store i64 0, i64* %42, align 8, !dbg !1949, !tbaa !1950
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 5, !dbg !1961
  %44 = load i32, i32* %43, align 8, !dbg !1962, !tbaa !1963
  %45 = and i32 %44, -2, !dbg !1962
  store i32 %45, i32* %43, align 8, !dbg !1962, !tbaa !1963
  %46 = icmp eq %struct.uk_thread* %35, null, !dbg !1969
  br i1 %46, label %47, label %48, !dbg !1972, !prof !1332

; <label>:47:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !1973
  tail call void @ukplat_terminate(i32 3) #12, !dbg !1973
  unreachable, !dbg !1973

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 9, !dbg !1975
  %50 = load %struct.uk_sched*, %struct.uk_sched** %49, align 8, !dbg !1975, !tbaa !1976
  %51 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %50, i64 0, i32 3, !dbg !1977
  %52 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %51, align 8, !dbg !1977, !tbaa !1978
  tail call void %52(%struct.uk_sched* %50, %struct.uk_thread* nonnull %35) #11, !dbg !1982
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #11, !dbg !1983
  %53 = load i64, i64* %4, align 8, !dbg !1984, !tbaa !1803
  %54 = icmp sgt i64 %53, 0, !dbg !1986
  br i1 %54, label %70, label %55, !dbg !1987

; <label>:55:                                     ; preds = %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1988, !srcloc !1272
  %57 = and i64 %56, -65536, !dbg !1998
  %58 = inttoptr i64 %57 to %struct.uk_thread**, !dbg !1999
  %59 = load %struct.uk_thread*, %struct.uk_thread** %58, align 65536, !dbg !2001, !tbaa !1320
  %60 = icmp eq %struct.uk_thread* %59, null, !dbg !2003
  br i1 %60, label %61, label %62, !dbg !2006, !prof !1332

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !2007
  tail call void @ukplat_terminate(i32 3) #12, !dbg !2007
  unreachable, !dbg !2007

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %59, i64 0, i32 9, !dbg !2009
  %64 = load %struct.uk_sched*, %struct.uk_sched** %63, align 8, !dbg !2009, !tbaa !1976
  %65 = icmp eq %struct.uk_sched* %64, null, !dbg !2011
  br i1 %65, label %66, label %67, !dbg !2014, !prof !1332

; <label>:66:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !2015
  tail call void @ukplat_terminate(i32 3) #12, !dbg !2015
  unreachable, !dbg !2015

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %64, i64 0, i32 0, !dbg !2017
  %69 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %68, align 8, !dbg !2017, !tbaa !2018
  tail call void %69(%struct.uk_sched* nonnull %64) #11, !dbg !2019
  br label %31, !dbg !2020, !llvm.loop !2021

; <label>:70:                                     ; preds = %48
  %71 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !2024
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %35) #11, !dbg !2025
  %72 = load i32, i32* %29, align 8, !dbg !2039, !tbaa !1930
  %73 = icmp eq i32 %72, 0, !dbg !2040
  br i1 %73, label %92, label %74, !dbg !2041

; <label>:74:                                     ; preds = %70
  %75 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %6, align 8, !dbg !2042, !tbaa !1824
  %76 = icmp eq %struct.uk_waitq_entry* %75, %17, !dbg !2042
  br i1 %76, label %77, label %81, !dbg !2043

; <label>:77:                                     ; preds = %74
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2044, !tbaa !1828
  store %struct.uk_waitq_entry* %78, %struct.uk_waitq_entry** %6, align 8, !dbg !2044, !tbaa !1824
  %79 = icmp eq %struct.uk_waitq_entry* %78, null, !dbg !2044
  br i1 %79, label %80, label %91, !dbg !2048

; <label>:80:                                     ; preds = %77
  store %struct.uk_waitq_entry** %6, %struct.uk_waitq_entry*** %5, align 8, !dbg !2044, !tbaa !1936
  br label %91, !dbg !2044

; <label>:81:                                     ; preds = %74, %81
  %82 = phi %struct.uk_waitq_entry* [ %84, %81 ], [ %75, %74 ], !dbg !2049
  %83 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !2049
  %84 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %83, align 8, !dbg !2049, !tbaa !1828
  %85 = icmp eq %struct.uk_waitq_entry* %84, %17, !dbg !2049
  br i1 %85, label %86, label %81, !dbg !2049, !llvm.loop !2050

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !2049
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2052, !tbaa !1828
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %87, align 8, !dbg !2052, !tbaa !1828
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !2052
  br i1 %89, label %90, label %91, !dbg !2055

; <label>:90:                                     ; preds = %86
  store %struct.uk_waitq_entry** %87, %struct.uk_waitq_entry*** %5, align 8, !dbg !2052, !tbaa !1936
  br label %91, !dbg !2052

; <label>:91:                                     ; preds = %90, %86, %80, %77
  store i32 0, i32* %29, align 8, !dbg !2056, !tbaa !1930
  br label %92, !dbg !2057

; <label>:92:                                     ; preds = %70, %91
  tail call void @ukplat_lcpu_restore_irqf(i64 %71) #11, !dbg !2058
  br label %93, !dbg !2059

; <label>:93:                                     ; preds = %8, %92
  %94 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !2060
  %95 = load i64, i64* %4, align 8, !dbg !2062, !tbaa !1803
  %96 = icmp sgt i64 %95, 0, !dbg !2064
  br i1 %96, label %98, label %97, !dbg !2065

; <label>:97:                                     ; preds = %93
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #11, !dbg !2066
  br label %8, !dbg !2067, !llvm.loop !2068

; <label>:98:                                     ; preds = %93
  %99 = add nsw i64 %95, -1, !dbg !2071
  store i64 %99, i64* %4, align 8, !dbg !2071, !tbaa !1803
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #11, !dbg !2072
  ret void, !dbg !2073
}

; Function Attrs: noredzone
declare dso_local void @netif_add_ext_callback(%struct.netif_ext_callback*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*) local_unnamed_addr #6

; Function Attrs: noinline noredzone nounwind optnone
define internal void @_netif_status_print(%struct.netif*, i16 zeroext, %union.netif_ext_callback_args_t*) #7 !dbg !743 {
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
  store %struct.netif* %0, %struct.netif** %4, align 8, !tbaa !1320
  store i16 %1, i16* %5, align 2, !tbaa !2075
  store %union.netif_ext_callback_args_t* %2, %union.netif_ext_callback_args_t** %6, align 8, !tbaa !1320
  %62 = bitcast [17 x i8]* %7 to i8*, !dbg !2078
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %62) #9, !dbg !2078
  %63 = bitcast i8** %8 to i8*, !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %63) #9, !dbg !2080
  %64 = ptrtoint [17 x i8]* %7 to i64, !dbg !2082
  %65 = add i64 %64, 65536, !dbg !2083
  %66 = inttoptr i64 %65 to i8*, !dbg !2084
  store i8* %66, i8** %8, align 8, !dbg !2081, !tbaa !1320
  %67 = bitcast [17 x i8]* %9 to i8*, !dbg !2085
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %67) #9, !dbg !2085
  %68 = bitcast i8** %10 to i8*, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %68) #9, !dbg !2087
  %69 = ptrtoint [17 x i8]* %9 to i64, !dbg !2089
  %70 = add i64 %69, 65536, !dbg !2090
  %71 = inttoptr i64 %70 to i8*, !dbg !2091
  store i8* %71, i8** %10, align 8, !dbg !2088, !tbaa !1320
  %72 = bitcast [17 x i8]* %11 to i8*, !dbg !2092
  call void @llvm.lifetime.start.p0i8(i64 17, i8* %72) #9, !dbg !2092
  %73 = bitcast i8** %12 to i8*, !dbg !2094
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #9, !dbg !2094
  %74 = ptrtoint [17 x i8]* %11 to i64, !dbg !2096
  %75 = add i64 %74, 65536, !dbg !2097
  %76 = inttoptr i64 %75 to i8*, !dbg !2098
  store i8* %76, i8** %12, align 8, !dbg !2095, !tbaa !1320
  %77 = load i16, i16* %5, align 2, !dbg !2099, !tbaa !2075
  %78 = zext i16 %77 to i32, !dbg !2099
  %79 = and i32 %78, 1, !dbg !2100
  %80 = icmp ne i32 %79, 0, !dbg !2100
  br i1 %80, label %81, label %141, !dbg !2101

; <label>:81:                                     ; preds = %3
  br label %82, !dbg !2102

; <label>:82:                                     ; preds = %81
  %83 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2103
  %84 = icmp uge i64 %83, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2103
  br i1 %84, label %85, label %105, !dbg !2103

; <label>:85:                                     ; preds = %82
  %86 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2103
  %87 = icmp ule i64 %86, ptrtoint ([0 x i8]* @_end to i64), !dbg !2103
  br i1 %87, label %88, label %105, !dbg !2104

; <label>:88:                                     ; preds = %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_netif_status_print.__str, i32 0, i32 0), i8** %13, align 8, !dbg !2105, !tbaa !1320
  %89 = load i8*, i8** %13, align 8, !dbg !2105, !tbaa !1320
  %90 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2108, !tbaa !1320
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %90, i32 0, i32 22, !dbg !2108
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %91, i64 0, i64 0, !dbg !2108
  %93 = load i8, i8* %92, align 2, !dbg !2108, !tbaa !1486
  %94 = sext i8 %93 to i32, !dbg !2108
  %95 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2108, !tbaa !1320
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %95, i32 0, i32 22, !dbg !2108
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %96, i64 0, i64 1, !dbg !2108
  %98 = load i8, i8* %97, align 1, !dbg !2108, !tbaa !1486
  %99 = sext i8 %98 to i32, !dbg !2108
  %100 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2108, !tbaa !1320
  %101 = getelementptr inbounds %struct.netif, %struct.netif* %100, i32 0, i32 23, !dbg !2108
  %102 = load i8, i8* %101, align 8, !dbg !2108, !tbaa !1725
  %103 = zext i8 %102 to i32, !dbg !2108
  %104 = call i32 (i8*, ...) @printf(i8* %89, i32 %94, i32 %99, i32 %103) #10, !dbg !2108
  br label %138, !dbg !2108

; <label>:105:                                    ; preds = %85, %82
  br label %106, !dbg !2109

; <label>:106:                                    ; preds = %105
  br label %107, !dbg !2110

; <label>:107:                                    ; preds = %106
  %108 = bitcast i32* %14 to i8*, !dbg !2111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #9, !dbg !2111
  %109 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2111
  store i32 %109, i32* %14, align 4, !dbg !2111, !tbaa !1282
  %110 = bitcast i64* %15 to i8*, !dbg !2111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %110) #9, !dbg !2111
  %111 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2111, !tbaa !1320
  %112 = getelementptr inbounds %struct.netif, %struct.netif* %111, i32 0, i32 22, !dbg !2111
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %112, i64 0, i64 1, !dbg !2111
  %114 = load i8, i8* %113, align 1, !dbg !2111, !tbaa !1486
  %115 = sext i8 %114 to i64, !dbg !2111
  store i64 %115, i64* %15, align 8, !dbg !2111, !tbaa !2112
  %116 = bitcast i64* %16 to i8*, !dbg !2111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %116) #9, !dbg !2111
  %117 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2111, !tbaa !1320
  %118 = getelementptr inbounds %struct.netif, %struct.netif* %117, i32 0, i32 23, !dbg !2111
  %119 = load i8, i8* %118, align 8, !dbg !2111, !tbaa !1725
  %120 = zext i8 %119 to i64, !dbg !2111
  store i64 %120, i64* %16, align 8, !dbg !2111, !tbaa !2112
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_netif_status_print.__str.21, i32 0, i32 0), i8** %17, align 8, !dbg !2113, !tbaa !1320
  %121 = load i8*, i8** %17, align 8, !dbg !2113, !tbaa !1320
  %122 = ptrtoint i8* %121 to i64, !dbg !2111
  %123 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2111, !tbaa !1320
  %124 = getelementptr inbounds %struct.netif, %struct.netif* %123, i32 0, i32 22, !dbg !2111
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %124, i64 0, i64 0, !dbg !2111
  %126 = load i8, i8* %125, align 2, !dbg !2111, !tbaa !1486
  %127 = sext i8 %126 to i64, !dbg !2111
  %128 = load i64, i64* %15, align 8, !dbg !2111, !tbaa !2112
  %129 = load i64, i64* %16, align 8, !dbg !2111, !tbaa !2112
  %130 = load i32, i32* %14, align 4, !dbg !2111, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %122, i64 %127, i64 %128, i64 %129, i32 %130, i32 (i8*, ...)* @printf) #9, !dbg !2111, !srcloc !2115
  %131 = bitcast i64* %16 to i8*, !dbg !2110
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %131) #9, !dbg !2110
  %132 = bitcast i64* %15 to i8*, !dbg !2110
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %132) #9, !dbg !2110
  %133 = bitcast i32* %14 to i8*, !dbg !2110
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #9, !dbg !2110
  br label %134, !dbg !2111

; <label>:134:                                    ; preds = %107
  br label %135, !dbg !2111

; <label>:135:                                    ; preds = %134
  br label %136, !dbg !2110

; <label>:136:                                    ; preds = %135
  br label %137, !dbg !2110

; <label>:137:                                    ; preds = %136
  br label %138

; <label>:138:                                    ; preds = %137, %88
  br label %139, !dbg !2104

; <label>:139:                                    ; preds = %138
  br label %140, !dbg !2104

; <label>:140:                                    ; preds = %139
  br label %141, !dbg !2116

; <label>:141:                                    ; preds = %140, %3
  %142 = load i16, i16* %5, align 2, !dbg !2117, !tbaa !2075
  %143 = zext i16 %142 to i32, !dbg !2117
  %144 = and i32 %143, 2, !dbg !2118
  %145 = icmp ne i32 %144, 0, !dbg !2118
  br i1 %145, label %146, label %206, !dbg !2119

; <label>:146:                                    ; preds = %141
  br label %147, !dbg !2120

; <label>:147:                                    ; preds = %146
  %148 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2121
  %149 = icmp uge i64 %148, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2121
  br i1 %149, label %150, label %170, !dbg !2121

; <label>:150:                                    ; preds = %147
  %151 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2121
  %152 = icmp ule i64 %151, ptrtoint ([0 x i8]* @_end to i64), !dbg !2121
  br i1 %152, label %153, label %170, !dbg !2122

; <label>:153:                                    ; preds = %150
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_netif_status_print.__str.22, i32 0, i32 0), i8** %18, align 8, !dbg !2123, !tbaa !1320
  %154 = load i8*, i8** %18, align 8, !dbg !2123, !tbaa !1320
  %155 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2126, !tbaa !1320
  %156 = getelementptr inbounds %struct.netif, %struct.netif* %155, i32 0, i32 22, !dbg !2126
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %156, i64 0, i64 0, !dbg !2126
  %158 = load i8, i8* %157, align 2, !dbg !2126, !tbaa !1486
  %159 = sext i8 %158 to i32, !dbg !2126
  %160 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2126, !tbaa !1320
  %161 = getelementptr inbounds %struct.netif, %struct.netif* %160, i32 0, i32 22, !dbg !2126
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %161, i64 0, i64 1, !dbg !2126
  %163 = load i8, i8* %162, align 1, !dbg !2126, !tbaa !1486
  %164 = sext i8 %163 to i32, !dbg !2126
  %165 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2126, !tbaa !1320
  %166 = getelementptr inbounds %struct.netif, %struct.netif* %165, i32 0, i32 23, !dbg !2126
  %167 = load i8, i8* %166, align 8, !dbg !2126, !tbaa !1725
  %168 = zext i8 %167 to i32, !dbg !2126
  %169 = call i32 (i8*, ...) @printf(i8* %154, i32 %159, i32 %164, i32 %168) #10, !dbg !2126
  br label %203, !dbg !2126

; <label>:170:                                    ; preds = %150, %147
  br label %171, !dbg !2127

; <label>:171:                                    ; preds = %170
  br label %172, !dbg !2128

; <label>:172:                                    ; preds = %171
  %173 = bitcast i32* %19 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %173) #9, !dbg !2129
  %174 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2129
  store i32 %174, i32* %19, align 4, !dbg !2129, !tbaa !1282
  %175 = bitcast i64* %20 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %175) #9, !dbg !2129
  %176 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2129, !tbaa !1320
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %176, i32 0, i32 22, !dbg !2129
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %177, i64 0, i64 1, !dbg !2129
  %179 = load i8, i8* %178, align 1, !dbg !2129, !tbaa !1486
  %180 = sext i8 %179 to i64, !dbg !2129
  store i64 %180, i64* %20, align 8, !dbg !2129, !tbaa !2112
  %181 = bitcast i64* %21 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #9, !dbg !2129
  %182 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2129, !tbaa !1320
  %183 = getelementptr inbounds %struct.netif, %struct.netif* %182, i32 0, i32 23, !dbg !2129
  %184 = load i8, i8* %183, align 8, !dbg !2129, !tbaa !1725
  %185 = zext i8 %184 to i64, !dbg !2129
  store i64 %185, i64* %21, align 8, !dbg !2129, !tbaa !2112
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_netif_status_print.__str.23, i32 0, i32 0), i8** %22, align 8, !dbg !2130, !tbaa !1320
  %186 = load i8*, i8** %22, align 8, !dbg !2130, !tbaa !1320
  %187 = ptrtoint i8* %186 to i64, !dbg !2129
  %188 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2129, !tbaa !1320
  %189 = getelementptr inbounds %struct.netif, %struct.netif* %188, i32 0, i32 22, !dbg !2129
  %190 = getelementptr inbounds [2 x i8], [2 x i8]* %189, i64 0, i64 0, !dbg !2129
  %191 = load i8, i8* %190, align 2, !dbg !2129, !tbaa !1486
  %192 = sext i8 %191 to i64, !dbg !2129
  %193 = load i64, i64* %20, align 8, !dbg !2129, !tbaa !2112
  %194 = load i64, i64* %21, align 8, !dbg !2129, !tbaa !2112
  %195 = load i32, i32* %19, align 4, !dbg !2129, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %187, i64 %192, i64 %193, i64 %194, i32 %195, i32 (i8*, ...)* @printf) #9, !dbg !2129, !srcloc !2132
  %196 = bitcast i64* %21 to i8*, !dbg !2128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %196) #9, !dbg !2128
  %197 = bitcast i64* %20 to i8*, !dbg !2128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %197) #9, !dbg !2128
  %198 = bitcast i32* %19 to i8*, !dbg !2128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %198) #9, !dbg !2128
  br label %199, !dbg !2129

; <label>:199:                                    ; preds = %172
  br label %200, !dbg !2129

; <label>:200:                                    ; preds = %199
  br label %201, !dbg !2128

; <label>:201:                                    ; preds = %200
  br label %202, !dbg !2128

; <label>:202:                                    ; preds = %201
  br label %203

; <label>:203:                                    ; preds = %202, %153
  br label %204, !dbg !2122

; <label>:204:                                    ; preds = %203
  br label %205, !dbg !2122

; <label>:205:                                    ; preds = %204
  br label %206, !dbg !2133

; <label>:206:                                    ; preds = %205, %141
  %207 = load i16, i16* %5, align 2, !dbg !2134, !tbaa !2075
  %208 = zext i16 %207 to i32, !dbg !2134
  %209 = and i32 %208, 4, !dbg !2135
  %210 = icmp ne i32 %209, 0, !dbg !2135
  br i1 %210, label %211, label %289, !dbg !2136

; <label>:211:                                    ; preds = %206
  %212 = bitcast i8** %23 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %212) #9, !dbg !2137
  %213 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2139, !tbaa !1320
  %214 = bitcast %union.netif_ext_callback_args_t* %213 to %struct.link_changed_s*, !dbg !2140
  %215 = getelementptr inbounds %struct.link_changed_s, %struct.link_changed_s* %214, i32 0, i32 0, !dbg !2141
  %216 = load i8, i8* %215, align 8, !dbg !2141, !tbaa !1486
  %217 = zext i8 %216 to i32, !dbg !2139
  %218 = icmp ne i32 %217, 0, !dbg !2139
  %219 = zext i1 %218 to i64, !dbg !2139
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_netif_status_print.__str.24, i32 0, i32 0), i8** %24, align 8, !dbg !2142, !tbaa !1320
  %220 = load i8*, i8** %24, align 8, !dbg !2142, !tbaa !1320
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_netif_status_print.__str.25, i32 0, i32 0), i8** %25, align 8, !dbg !2144, !tbaa !1320
  %221 = load i8*, i8** %25, align 8, !dbg !2144, !tbaa !1320
  %222 = select i1 %218, i8* %220, i8* %221, !dbg !2139
  store i8* %222, i8** %23, align 8, !dbg !2138, !tbaa !1320
  br label %223, !dbg !2146

; <label>:223:                                    ; preds = %211
  %224 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2147
  %225 = icmp uge i64 %224, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2147
  br i1 %225, label %226, label %247, !dbg !2147

; <label>:226:                                    ; preds = %223
  %227 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2147
  %228 = icmp ule i64 %227, ptrtoint ([0 x i8]* @_end to i64), !dbg !2147
  br i1 %228, label %229, label %247, !dbg !2148

; <label>:229:                                    ; preds = %226
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_netif_status_print.__str.26, i32 0, i32 0), i8** %26, align 8, !dbg !2149, !tbaa !1320
  %230 = load i8*, i8** %26, align 8, !dbg !2149, !tbaa !1320
  %231 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2152, !tbaa !1320
  %232 = getelementptr inbounds %struct.netif, %struct.netif* %231, i32 0, i32 22, !dbg !2152
  %233 = getelementptr inbounds [2 x i8], [2 x i8]* %232, i64 0, i64 0, !dbg !2152
  %234 = load i8, i8* %233, align 2, !dbg !2152, !tbaa !1486
  %235 = sext i8 %234 to i32, !dbg !2152
  %236 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2152, !tbaa !1320
  %237 = getelementptr inbounds %struct.netif, %struct.netif* %236, i32 0, i32 22, !dbg !2152
  %238 = getelementptr inbounds [2 x i8], [2 x i8]* %237, i64 0, i64 1, !dbg !2152
  %239 = load i8, i8* %238, align 1, !dbg !2152, !tbaa !1486
  %240 = sext i8 %239 to i32, !dbg !2152
  %241 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2152, !tbaa !1320
  %242 = getelementptr inbounds %struct.netif, %struct.netif* %241, i32 0, i32 23, !dbg !2152
  %243 = load i8, i8* %242, align 8, !dbg !2152, !tbaa !1725
  %244 = zext i8 %243 to i32, !dbg !2152
  %245 = load i8*, i8** %23, align 8, !dbg !2152, !tbaa !1320
  %246 = call i32 (i8*, ...) @printf(i8* %230, i32 %235, i32 %240, i32 %244, i8* %245) #10, !dbg !2152
  br label %285, !dbg !2152

; <label>:247:                                    ; preds = %226, %223
  br label %248, !dbg !2153

; <label>:248:                                    ; preds = %247
  br label %249, !dbg !2154

; <label>:249:                                    ; preds = %248
  %250 = bitcast i32* %27 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %250) #9, !dbg !2155
  %251 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2155
  store i32 %251, i32* %27, align 4, !dbg !2155, !tbaa !1282
  %252 = bitcast i64* %28 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %252) #9, !dbg !2155
  %253 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2155, !tbaa !1320
  %254 = getelementptr inbounds %struct.netif, %struct.netif* %253, i32 0, i32 22, !dbg !2155
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %254, i64 0, i64 1, !dbg !2155
  %256 = load i8, i8* %255, align 1, !dbg !2155, !tbaa !1486
  %257 = sext i8 %256 to i64, !dbg !2155
  store i64 %257, i64* %28, align 8, !dbg !2155, !tbaa !2112
  %258 = bitcast i64* %29 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %258) #9, !dbg !2155
  %259 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2155, !tbaa !1320
  %260 = getelementptr inbounds %struct.netif, %struct.netif* %259, i32 0, i32 23, !dbg !2155
  %261 = load i8, i8* %260, align 8, !dbg !2155, !tbaa !1725
  %262 = zext i8 %261 to i64, !dbg !2155
  store i64 %262, i64* %29, align 8, !dbg !2155, !tbaa !2112
  %263 = bitcast i64* %30 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %263) #9, !dbg !2155
  %264 = load i8*, i8** %23, align 8, !dbg !2155, !tbaa !1320
  %265 = ptrtoint i8* %264 to i64, !dbg !2155
  store i64 %265, i64* %30, align 8, !dbg !2155, !tbaa !2112
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_netif_status_print.__str.27, i32 0, i32 0), i8** %31, align 8, !dbg !2156, !tbaa !1320
  %266 = load i8*, i8** %31, align 8, !dbg !2156, !tbaa !1320
  %267 = ptrtoint i8* %266 to i64, !dbg !2155
  %268 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2155, !tbaa !1320
  %269 = getelementptr inbounds %struct.netif, %struct.netif* %268, i32 0, i32 22, !dbg !2155
  %270 = getelementptr inbounds [2 x i8], [2 x i8]* %269, i64 0, i64 0, !dbg !2155
  %271 = load i8, i8* %270, align 2, !dbg !2155, !tbaa !1486
  %272 = sext i8 %271 to i64, !dbg !2155
  %273 = load i64, i64* %28, align 8, !dbg !2155, !tbaa !2112
  %274 = load i64, i64* %29, align 8, !dbg !2155, !tbaa !2112
  %275 = load i64, i64* %30, align 8, !dbg !2155, !tbaa !2112
  %276 = load i32, i32* %27, align 4, !dbg !2155, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %267, i64 %272, i64 %273, i64 %274, i64 %275, i32 %276, i32 (i8*, ...)* @printf) #9, !dbg !2155, !srcloc !2158
  %277 = bitcast i64* %30 to i8*, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %277) #9, !dbg !2154
  %278 = bitcast i64* %29 to i8*, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %278) #9, !dbg !2154
  %279 = bitcast i64* %28 to i8*, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %279) #9, !dbg !2154
  %280 = bitcast i32* %27 to i8*, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %280) #9, !dbg !2154
  br label %281, !dbg !2155

; <label>:281:                                    ; preds = %249
  br label %282, !dbg !2155

; <label>:282:                                    ; preds = %281
  br label %283, !dbg !2154

; <label>:283:                                    ; preds = %282
  br label %284, !dbg !2154

; <label>:284:                                    ; preds = %283
  br label %285

; <label>:285:                                    ; preds = %284, %229
  br label %286, !dbg !2148

; <label>:286:                                    ; preds = %285
  br label %287, !dbg !2148

; <label>:287:                                    ; preds = %286
  %288 = bitcast i8** %23 to i8*, !dbg !2159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %288) #9, !dbg !2159
  br label %289, !dbg !2160

; <label>:289:                                    ; preds = %287, %206
  %290 = load i16, i16* %5, align 2, !dbg !2161, !tbaa !2075
  %291 = zext i16 %290 to i32, !dbg !2161
  %292 = and i32 %291, 8, !dbg !2162
  %293 = icmp ne i32 %292, 0, !dbg !2162
  br i1 %293, label %294, label %372, !dbg !2163

; <label>:294:                                    ; preds = %289
  %295 = bitcast i8** %32 to i8*, !dbg !2164
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %295) #9, !dbg !2164
  %296 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2166, !tbaa !1320
  %297 = bitcast %union.netif_ext_callback_args_t* %296 to %struct.link_changed_s*, !dbg !2167
  %298 = getelementptr inbounds %struct.link_changed_s, %struct.link_changed_s* %297, i32 0, i32 0, !dbg !2168
  %299 = load i8, i8* %298, align 8, !dbg !2168, !tbaa !1486
  %300 = zext i8 %299 to i32, !dbg !2166
  %301 = icmp ne i32 %300, 0, !dbg !2166
  %302 = zext i1 %301 to i64, !dbg !2166
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_netif_status_print.__str.28, i32 0, i32 0), i8** %33, align 8, !dbg !2169, !tbaa !1320
  %303 = load i8*, i8** %33, align 8, !dbg !2169, !tbaa !1320
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_netif_status_print.__str.29, i32 0, i32 0), i8** %34, align 8, !dbg !2171, !tbaa !1320
  %304 = load i8*, i8** %34, align 8, !dbg !2171, !tbaa !1320
  %305 = select i1 %301, i8* %303, i8* %304, !dbg !2166
  store i8* %305, i8** %32, align 8, !dbg !2165, !tbaa !1320
  br label %306, !dbg !2173

; <label>:306:                                    ; preds = %294
  %307 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2174
  %308 = icmp uge i64 %307, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2174
  br i1 %308, label %309, label %330, !dbg !2174

; <label>:309:                                    ; preds = %306
  %310 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2174
  %311 = icmp ule i64 %310, ptrtoint ([0 x i8]* @_end to i64), !dbg !2174
  br i1 %311, label %312, label %330, !dbg !2175

; <label>:312:                                    ; preds = %309
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_netif_status_print.__str.30, i32 0, i32 0), i8** %35, align 8, !dbg !2176, !tbaa !1320
  %313 = load i8*, i8** %35, align 8, !dbg !2176, !tbaa !1320
  %314 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2179, !tbaa !1320
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %314, i32 0, i32 22, !dbg !2179
  %316 = getelementptr inbounds [2 x i8], [2 x i8]* %315, i64 0, i64 0, !dbg !2179
  %317 = load i8, i8* %316, align 2, !dbg !2179, !tbaa !1486
  %318 = sext i8 %317 to i32, !dbg !2179
  %319 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2179, !tbaa !1320
  %320 = getelementptr inbounds %struct.netif, %struct.netif* %319, i32 0, i32 22, !dbg !2179
  %321 = getelementptr inbounds [2 x i8], [2 x i8]* %320, i64 0, i64 1, !dbg !2179
  %322 = load i8, i8* %321, align 1, !dbg !2179, !tbaa !1486
  %323 = sext i8 %322 to i32, !dbg !2179
  %324 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2179, !tbaa !1320
  %325 = getelementptr inbounds %struct.netif, %struct.netif* %324, i32 0, i32 23, !dbg !2179
  %326 = load i8, i8* %325, align 8, !dbg !2179, !tbaa !1725
  %327 = zext i8 %326 to i32, !dbg !2179
  %328 = load i8*, i8** %32, align 8, !dbg !2179, !tbaa !1320
  %329 = call i32 (i8*, ...) @printf(i8* %313, i32 %318, i32 %323, i32 %327, i8* %328) #10, !dbg !2179
  br label %368, !dbg !2179

; <label>:330:                                    ; preds = %309, %306
  br label %331, !dbg !2180

; <label>:331:                                    ; preds = %330
  br label %332, !dbg !2181

; <label>:332:                                    ; preds = %331
  %333 = bitcast i32* %36 to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %333) #9, !dbg !2182
  %334 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2182
  store i32 %334, i32* %36, align 4, !dbg !2182, !tbaa !1282
  %335 = bitcast i64* %37 to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %335) #9, !dbg !2182
  %336 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2182, !tbaa !1320
  %337 = getelementptr inbounds %struct.netif, %struct.netif* %336, i32 0, i32 22, !dbg !2182
  %338 = getelementptr inbounds [2 x i8], [2 x i8]* %337, i64 0, i64 1, !dbg !2182
  %339 = load i8, i8* %338, align 1, !dbg !2182, !tbaa !1486
  %340 = sext i8 %339 to i64, !dbg !2182
  store i64 %340, i64* %37, align 8, !dbg !2182, !tbaa !2112
  %341 = bitcast i64* %38 to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %341) #9, !dbg !2182
  %342 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2182, !tbaa !1320
  %343 = getelementptr inbounds %struct.netif, %struct.netif* %342, i32 0, i32 23, !dbg !2182
  %344 = load i8, i8* %343, align 8, !dbg !2182, !tbaa !1725
  %345 = zext i8 %344 to i64, !dbg !2182
  store i64 %345, i64* %38, align 8, !dbg !2182, !tbaa !2112
  %346 = bitcast i64* %39 to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %346) #9, !dbg !2182
  %347 = load i8*, i8** %32, align 8, !dbg !2182, !tbaa !1320
  %348 = ptrtoint i8* %347 to i64, !dbg !2182
  store i64 %348, i64* %39, align 8, !dbg !2182, !tbaa !2112
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_netif_status_print.__str.31, i32 0, i32 0), i8** %40, align 8, !dbg !2183, !tbaa !1320
  %349 = load i8*, i8** %40, align 8, !dbg !2183, !tbaa !1320
  %350 = ptrtoint i8* %349 to i64, !dbg !2182
  %351 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2182, !tbaa !1320
  %352 = getelementptr inbounds %struct.netif, %struct.netif* %351, i32 0, i32 22, !dbg !2182
  %353 = getelementptr inbounds [2 x i8], [2 x i8]* %352, i64 0, i64 0, !dbg !2182
  %354 = load i8, i8* %353, align 2, !dbg !2182, !tbaa !1486
  %355 = sext i8 %354 to i64, !dbg !2182
  %356 = load i64, i64* %37, align 8, !dbg !2182, !tbaa !2112
  %357 = load i64, i64* %38, align 8, !dbg !2182, !tbaa !2112
  %358 = load i64, i64* %39, align 8, !dbg !2182, !tbaa !2112
  %359 = load i32, i32* %36, align 4, !dbg !2182, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %350, i64 %355, i64 %356, i64 %357, i64 %358, i32 %359, i32 (i8*, ...)* @printf) #9, !dbg !2182, !srcloc !2185
  %360 = bitcast i64* %39 to i8*, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %360) #9, !dbg !2181
  %361 = bitcast i64* %38 to i8*, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %361) #9, !dbg !2181
  %362 = bitcast i64* %37 to i8*, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %362) #9, !dbg !2181
  %363 = bitcast i32* %36 to i8*, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %363) #9, !dbg !2181
  br label %364, !dbg !2182

; <label>:364:                                    ; preds = %332
  br label %365, !dbg !2182

; <label>:365:                                    ; preds = %364
  br label %366, !dbg !2181

; <label>:366:                                    ; preds = %365
  br label %367, !dbg !2181

; <label>:367:                                    ; preds = %366
  br label %368

; <label>:368:                                    ; preds = %367, %312
  br label %369, !dbg !2175

; <label>:369:                                    ; preds = %368
  br label %370, !dbg !2175

; <label>:370:                                    ; preds = %369
  %371 = bitcast i8** %32 to i8*, !dbg !2186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %371) #9, !dbg !2186
  br label %372, !dbg !2187

; <label>:372:                                    ; preds = %370, %289
  %373 = load i16, i16* %5, align 2, !dbg !2188, !tbaa !2075
  %374 = zext i16 %373 to i32, !dbg !2188
  %375 = and i32 %374, 128, !dbg !2189
  %376 = icmp ne i32 %375, 0, !dbg !2189
  br i1 %376, label %392, label %377, !dbg !2190

; <label>:377:                                    ; preds = %372
  %378 = load i16, i16* %5, align 2, !dbg !2191, !tbaa !2075
  %379 = zext i16 %378 to i32, !dbg !2191
  %380 = and i32 %379, 16, !dbg !2192
  %381 = icmp ne i32 %380, 0, !dbg !2192
  br i1 %381, label %392, label %382, !dbg !2193

; <label>:382:                                    ; preds = %377
  %383 = load i16, i16* %5, align 2, !dbg !2194, !tbaa !2075
  %384 = zext i16 %383 to i32, !dbg !2194
  %385 = and i32 %384, 64, !dbg !2195
  %386 = icmp ne i32 %385, 0, !dbg !2195
  br i1 %386, label %392, label %387, !dbg !2196

; <label>:387:                                    ; preds = %382
  %388 = load i16, i16* %5, align 2, !dbg !2197, !tbaa !2075
  %389 = zext i16 %388 to i32, !dbg !2197
  %390 = and i32 %389, 32, !dbg !2198
  %391 = icmp ne i32 %390, 0, !dbg !2198
  br i1 %391, label %392, label %476, !dbg !2199

; <label>:392:                                    ; preds = %387, %382, %377, %372
  %393 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2200, !tbaa !1320
  %394 = getelementptr inbounds %struct.netif, %struct.netif* %393, i32 0, i32 1, !dbg !2201
  %395 = load i8*, i8** %8, align 8, !dbg !2202, !tbaa !1320
  %396 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %394, i8* %395, i32 8) #10, !dbg !2203
  %397 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2204, !tbaa !1320
  %398 = getelementptr inbounds %struct.netif, %struct.netif* %397, i32 0, i32 2, !dbg !2205
  %399 = load i8*, i8** %10, align 8, !dbg !2206, !tbaa !1320
  %400 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %398, i8* %399, i32 8) #10, !dbg !2207
  %401 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2208, !tbaa !1320
  %402 = getelementptr inbounds %struct.netif, %struct.netif* %401, i32 0, i32 3, !dbg !2209
  %403 = load i8*, i8** %12, align 8, !dbg !2210, !tbaa !1320
  %404 = call i8* @ipaddr_ntoa_r(%struct.ip_addr* %402, i8* %403, i32 8) #10, !dbg !2211
  br label %405, !dbg !2212

; <label>:405:                                    ; preds = %392
  %406 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2213
  %407 = icmp uge i64 %406, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2213
  br i1 %407, label %408, label %430, !dbg !2213

; <label>:408:                                    ; preds = %405
  %409 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2213
  %410 = icmp ule i64 %409, ptrtoint ([0 x i8]* @_end to i64), !dbg !2213
  br i1 %410, label %411, label %430, !dbg !2214

; <label>:411:                                    ; preds = %408
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_netif_status_print.__str.32, i32 0, i32 0), i8** %41, align 8, !dbg !2215, !tbaa !1320
  %412 = load i8*, i8** %41, align 8, !dbg !2215, !tbaa !1320
  %413 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2218, !tbaa !1320
  %414 = getelementptr inbounds %struct.netif, %struct.netif* %413, i32 0, i32 22, !dbg !2218
  %415 = getelementptr inbounds [2 x i8], [2 x i8]* %414, i64 0, i64 0, !dbg !2218
  %416 = load i8, i8* %415, align 2, !dbg !2218, !tbaa !1486
  %417 = sext i8 %416 to i32, !dbg !2218
  %418 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2218, !tbaa !1320
  %419 = getelementptr inbounds %struct.netif, %struct.netif* %418, i32 0, i32 22, !dbg !2218
  %420 = getelementptr inbounds [2 x i8], [2 x i8]* %419, i64 0, i64 1, !dbg !2218
  %421 = load i8, i8* %420, align 1, !dbg !2218, !tbaa !1486
  %422 = sext i8 %421 to i32, !dbg !2218
  %423 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2218, !tbaa !1320
  %424 = getelementptr inbounds %struct.netif, %struct.netif* %423, i32 0, i32 23, !dbg !2218
  %425 = load i8, i8* %424, align 8, !dbg !2218, !tbaa !1725
  %426 = zext i8 %425 to i32, !dbg !2218
  %427 = load i8*, i8** %8, align 8, !dbg !2218, !tbaa !1320
  %428 = load i8*, i8** %10, align 8, !dbg !2218, !tbaa !1320
  %429 = call i32 (i8*, ...) @printf(i8* %412, i32 %417, i32 %422, i32 %426, i8* %427, i8* %428) #10, !dbg !2218
  br label %473, !dbg !2218

; <label>:430:                                    ; preds = %408, %405
  br label %431, !dbg !2219

; <label>:431:                                    ; preds = %430
  br label %432, !dbg !2220

; <label>:432:                                    ; preds = %431
  %433 = bitcast i32* %42 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %433) #9, !dbg !2221
  %434 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2221
  store i32 %434, i32* %42, align 4, !dbg !2221, !tbaa !1282
  %435 = bitcast i64* %43 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %435) #9, !dbg !2221
  %436 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2221, !tbaa !1320
  %437 = getelementptr inbounds %struct.netif, %struct.netif* %436, i32 0, i32 22, !dbg !2221
  %438 = getelementptr inbounds [2 x i8], [2 x i8]* %437, i64 0, i64 1, !dbg !2221
  %439 = load i8, i8* %438, align 1, !dbg !2221, !tbaa !1486
  %440 = sext i8 %439 to i64, !dbg !2221
  store i64 %440, i64* %43, align 8, !dbg !2221, !tbaa !2112
  %441 = bitcast i64* %44 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %441) #9, !dbg !2221
  %442 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2221, !tbaa !1320
  %443 = getelementptr inbounds %struct.netif, %struct.netif* %442, i32 0, i32 23, !dbg !2221
  %444 = load i8, i8* %443, align 8, !dbg !2221, !tbaa !1725
  %445 = zext i8 %444 to i64, !dbg !2221
  store i64 %445, i64* %44, align 8, !dbg !2221, !tbaa !2112
  %446 = bitcast i64* %45 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %446) #9, !dbg !2221
  %447 = load i8*, i8** %8, align 8, !dbg !2221, !tbaa !1320
  %448 = ptrtoint i8* %447 to i64, !dbg !2221
  store i64 %448, i64* %45, align 8, !dbg !2221, !tbaa !2112
  %449 = bitcast i64* %46 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %449) #9, !dbg !2221
  %450 = load i8*, i8** %10, align 8, !dbg !2221, !tbaa !1320
  %451 = ptrtoint i8* %450 to i64, !dbg !2221
  store i64 %451, i64* %46, align 8, !dbg !2221, !tbaa !2112
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_netif_status_print.__str.33, i32 0, i32 0), i8** %47, align 8, !dbg !2222, !tbaa !1320
  %452 = load i8*, i8** %47, align 8, !dbg !2222, !tbaa !1320
  %453 = ptrtoint i8* %452 to i64, !dbg !2221
  %454 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2221, !tbaa !1320
  %455 = getelementptr inbounds %struct.netif, %struct.netif* %454, i32 0, i32 22, !dbg !2221
  %456 = getelementptr inbounds [2 x i8], [2 x i8]* %455, i64 0, i64 0, !dbg !2221
  %457 = load i8, i8* %456, align 2, !dbg !2221, !tbaa !1486
  %458 = sext i8 %457 to i64, !dbg !2221
  %459 = load i64, i64* %43, align 8, !dbg !2221, !tbaa !2112
  %460 = load i64, i64* %44, align 8, !dbg !2221, !tbaa !2112
  %461 = load i64, i64* %45, align 8, !dbg !2221, !tbaa !2112
  %462 = load i64, i64* %46, align 8, !dbg !2221, !tbaa !2112
  %463 = load i32, i32* %42, align 4, !dbg !2221, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %453, i64 %458, i64 %459, i64 %460, i64 %461, i64 %462, i32 %463, i32 (i8*, ...)* @printf) #9, !dbg !2221, !srcloc !2224
  %464 = bitcast i64* %46 to i8*, !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %464) #9, !dbg !2220
  %465 = bitcast i64* %45 to i8*, !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %465) #9, !dbg !2220
  %466 = bitcast i64* %44 to i8*, !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %466) #9, !dbg !2220
  %467 = bitcast i64* %43 to i8*, !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %467) #9, !dbg !2220
  %468 = bitcast i32* %42 to i8*, !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %468) #9, !dbg !2220
  br label %469, !dbg !2221

; <label>:469:                                    ; preds = %432
  br label %470, !dbg !2221

; <label>:470:                                    ; preds = %469
  br label %471, !dbg !2220

; <label>:471:                                    ; preds = %470
  br label %472, !dbg !2220

; <label>:472:                                    ; preds = %471
  br label %473

; <label>:473:                                    ; preds = %472, %411
  br label %474, !dbg !2214

; <label>:474:                                    ; preds = %473
  br label %475, !dbg !2214

; <label>:475:                                    ; preds = %474
  br label %476, !dbg !2225

; <label>:476:                                    ; preds = %475, %387
  %477 = load i16, i16* %5, align 2, !dbg !2226, !tbaa !2075
  %478 = zext i16 %477 to i32, !dbg !2226
  %479 = and i32 %478, 256, !dbg !2227
  %480 = icmp ne i32 %479, 0, !dbg !2227
  br i1 %480, label %481, label %576, !dbg !2228

; <label>:481:                                    ; preds = %476
  br label %482, !dbg !2229

; <label>:482:                                    ; preds = %481
  %483 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2230
  %484 = icmp uge i64 %483, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2230
  br i1 %484, label %485, label %519, !dbg !2230

; <label>:485:                                    ; preds = %482
  %486 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2230
  %487 = icmp ule i64 %486, ptrtoint ([0 x i8]* @_end to i64), !dbg !2230
  br i1 %487, label %488, label %519, !dbg !2231

; <label>:488:                                    ; preds = %485
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.34, i32 0, i32 0), i8** %48, align 8, !dbg !2232, !tbaa !1320
  %489 = load i8*, i8** %48, align 8, !dbg !2232, !tbaa !1320
  %490 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2235, !tbaa !1320
  %491 = getelementptr inbounds %struct.netif, %struct.netif* %490, i32 0, i32 22, !dbg !2235
  %492 = getelementptr inbounds [2 x i8], [2 x i8]* %491, i64 0, i64 0, !dbg !2235
  %493 = load i8, i8* %492, align 2, !dbg !2235, !tbaa !1486
  %494 = sext i8 %493 to i32, !dbg !2235
  %495 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2235, !tbaa !1320
  %496 = getelementptr inbounds %struct.netif, %struct.netif* %495, i32 0, i32 22, !dbg !2235
  %497 = getelementptr inbounds [2 x i8], [2 x i8]* %496, i64 0, i64 1, !dbg !2235
  %498 = load i8, i8* %497, align 1, !dbg !2235, !tbaa !1486
  %499 = sext i8 %498 to i32, !dbg !2235
  %500 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2235, !tbaa !1320
  %501 = getelementptr inbounds %struct.netif, %struct.netif* %500, i32 0, i32 23, !dbg !2235
  %502 = load i8, i8* %501, align 8, !dbg !2235, !tbaa !1725
  %503 = zext i8 %502 to i32, !dbg !2235
  %504 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2235, !tbaa !1320
  %505 = bitcast %union.netif_ext_callback_args_t* %504 to %struct.ipv6_set_s*, !dbg !2235
  %506 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %505, i32 0, i32 0, !dbg !2235
  %507 = load i8, i8* %506, align 8, !dbg !2235, !tbaa !1486
  %508 = sext i8 %507 to i32, !dbg !2235
  %509 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2235, !tbaa !1320
  %510 = getelementptr inbounds %struct.netif, %struct.netif* %509, i32 0, i32 4, !dbg !2235
  %511 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2235, !tbaa !1320
  %512 = bitcast %union.netif_ext_callback_args_t* %511 to %struct.ipv6_set_s*, !dbg !2235
  %513 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %512, i32 0, i32 0, !dbg !2235
  %514 = load i8, i8* %513, align 8, !dbg !2235, !tbaa !1486
  %515 = sext i8 %514 to i64, !dbg !2235
  %516 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %510, i64 0, i64 %515, !dbg !2235
  %517 = call i8* @ipaddr_ntoa(%struct.ip_addr* %516) #10, !dbg !2235
  %518 = call i32 (i8*, ...) @printf(i8* %489, i32 %494, i32 %499, i32 %503, i32 %508, i8* %517) #10, !dbg !2235
  br label %573, !dbg !2235

; <label>:519:                                    ; preds = %485, %482
  br label %520, !dbg !2236

; <label>:520:                                    ; preds = %519
  br label %521, !dbg !2237

; <label>:521:                                    ; preds = %520
  %522 = bitcast i32* %49 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %522) #9, !dbg !2238
  %523 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2238
  store i32 %523, i32* %49, align 4, !dbg !2238, !tbaa !1282
  %524 = bitcast i64* %50 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %524) #9, !dbg !2238
  %525 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2238, !tbaa !1320
  %526 = getelementptr inbounds %struct.netif, %struct.netif* %525, i32 0, i32 22, !dbg !2238
  %527 = getelementptr inbounds [2 x i8], [2 x i8]* %526, i64 0, i64 1, !dbg !2238
  %528 = load i8, i8* %527, align 1, !dbg !2238, !tbaa !1486
  %529 = sext i8 %528 to i64, !dbg !2238
  store i64 %529, i64* %50, align 8, !dbg !2238, !tbaa !2112
  %530 = bitcast i64* %51 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %530) #9, !dbg !2238
  %531 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2238, !tbaa !1320
  %532 = getelementptr inbounds %struct.netif, %struct.netif* %531, i32 0, i32 23, !dbg !2238
  %533 = load i8, i8* %532, align 8, !dbg !2238, !tbaa !1725
  %534 = zext i8 %533 to i64, !dbg !2238
  store i64 %534, i64* %51, align 8, !dbg !2238, !tbaa !2112
  %535 = bitcast i64* %52 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %535) #9, !dbg !2238
  %536 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2238, !tbaa !1320
  %537 = bitcast %union.netif_ext_callback_args_t* %536 to %struct.ipv6_set_s*, !dbg !2238
  %538 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %537, i32 0, i32 0, !dbg !2238
  %539 = load i8, i8* %538, align 8, !dbg !2238, !tbaa !1486
  %540 = sext i8 %539 to i64, !dbg !2238
  store i64 %540, i64* %52, align 8, !dbg !2238, !tbaa !2112
  %541 = bitcast i64* %53 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %541) #9, !dbg !2238
  %542 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2238, !tbaa !1320
  %543 = getelementptr inbounds %struct.netif, %struct.netif* %542, i32 0, i32 4, !dbg !2238
  %544 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2238, !tbaa !1320
  %545 = bitcast %union.netif_ext_callback_args_t* %544 to %struct.ipv6_set_s*, !dbg !2238
  %546 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %545, i32 0, i32 0, !dbg !2238
  %547 = load i8, i8* %546, align 8, !dbg !2238, !tbaa !1486
  %548 = sext i8 %547 to i64, !dbg !2238
  %549 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %543, i64 0, i64 %548, !dbg !2238
  %550 = call i8* @ipaddr_ntoa(%struct.ip_addr* %549) #10, !dbg !2238
  %551 = ptrtoint i8* %550 to i64, !dbg !2238
  store i64 %551, i64* %53, align 8, !dbg !2238, !tbaa !2112
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.35, i32 0, i32 0), i8** %54, align 8, !dbg !2239, !tbaa !1320
  %552 = load i8*, i8** %54, align 8, !dbg !2239, !tbaa !1320
  %553 = ptrtoint i8* %552 to i64, !dbg !2238
  %554 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2238, !tbaa !1320
  %555 = getelementptr inbounds %struct.netif, %struct.netif* %554, i32 0, i32 22, !dbg !2238
  %556 = getelementptr inbounds [2 x i8], [2 x i8]* %555, i64 0, i64 0, !dbg !2238
  %557 = load i8, i8* %556, align 2, !dbg !2238, !tbaa !1486
  %558 = sext i8 %557 to i64, !dbg !2238
  %559 = load i64, i64* %50, align 8, !dbg !2238, !tbaa !2112
  %560 = load i64, i64* %51, align 8, !dbg !2238, !tbaa !2112
  %561 = load i64, i64* %52, align 8, !dbg !2238, !tbaa !2112
  %562 = load i64, i64* %53, align 8, !dbg !2238, !tbaa !2112
  %563 = load i32, i32* %49, align 4, !dbg !2238, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %553, i64 %558, i64 %559, i64 %560, i64 %561, i64 %562, i32 %563, i32 (i8*, ...)* @printf) #9, !dbg !2238, !srcloc !2241
  %564 = bitcast i64* %53 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %564) #9, !dbg !2237
  %565 = bitcast i64* %52 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %565) #9, !dbg !2237
  %566 = bitcast i64* %51 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %566) #9, !dbg !2237
  %567 = bitcast i64* %50 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %567) #9, !dbg !2237
  %568 = bitcast i32* %49 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %568) #9, !dbg !2237
  br label %569, !dbg !2238

; <label>:569:                                    ; preds = %521
  br label %570, !dbg !2238

; <label>:570:                                    ; preds = %569
  br label %571, !dbg !2237

; <label>:571:                                    ; preds = %570
  br label %572, !dbg !2237

; <label>:572:                                    ; preds = %571
  br label %573

; <label>:573:                                    ; preds = %572, %488
  br label %574, !dbg !2231

; <label>:574:                                    ; preds = %573
  br label %575, !dbg !2231

; <label>:575:                                    ; preds = %574
  br label %576, !dbg !2242

; <label>:576:                                    ; preds = %575, %476
  %577 = load i16, i16* %5, align 2, !dbg !2243, !tbaa !2075
  %578 = zext i16 %577 to i32, !dbg !2243
  %579 = and i32 %578, 512, !dbg !2244
  %580 = icmp ne i32 %579, 0, !dbg !2244
  br i1 %580, label %581, label %676, !dbg !2245

; <label>:581:                                    ; preds = %576
  br label %582, !dbg !2246

; <label>:582:                                    ; preds = %581
  %583 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2247
  %584 = icmp uge i64 %583, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2247
  br i1 %584, label %585, label %619, !dbg !2247

; <label>:585:                                    ; preds = %582
  %586 = call fastcc i64 @ukarch_read_sp() #10, !dbg !2247
  %587 = icmp ule i64 %586, ptrtoint ([0 x i8]* @_end to i64), !dbg !2247
  br i1 %587, label %588, label %619, !dbg !2248

; <label>:588:                                    ; preds = %585
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.36, i32 0, i32 0), i8** %55, align 8, !dbg !2249, !tbaa !1320
  %589 = load i8*, i8** %55, align 8, !dbg !2249, !tbaa !1320
  %590 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2252, !tbaa !1320
  %591 = getelementptr inbounds %struct.netif, %struct.netif* %590, i32 0, i32 22, !dbg !2252
  %592 = getelementptr inbounds [2 x i8], [2 x i8]* %591, i64 0, i64 0, !dbg !2252
  %593 = load i8, i8* %592, align 2, !dbg !2252, !tbaa !1486
  %594 = sext i8 %593 to i32, !dbg !2252
  %595 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2252, !tbaa !1320
  %596 = getelementptr inbounds %struct.netif, %struct.netif* %595, i32 0, i32 22, !dbg !2252
  %597 = getelementptr inbounds [2 x i8], [2 x i8]* %596, i64 0, i64 1, !dbg !2252
  %598 = load i8, i8* %597, align 1, !dbg !2252, !tbaa !1486
  %599 = sext i8 %598 to i32, !dbg !2252
  %600 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2252, !tbaa !1320
  %601 = getelementptr inbounds %struct.netif, %struct.netif* %600, i32 0, i32 23, !dbg !2252
  %602 = load i8, i8* %601, align 8, !dbg !2252, !tbaa !1725
  %603 = zext i8 %602 to i32, !dbg !2252
  %604 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2252, !tbaa !1320
  %605 = bitcast %union.netif_ext_callback_args_t* %604 to %struct.ipv6_set_s*, !dbg !2252
  %606 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %605, i32 0, i32 0, !dbg !2252
  %607 = load i8, i8* %606, align 8, !dbg !2252, !tbaa !1486
  %608 = sext i8 %607 to i32, !dbg !2252
  %609 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2252, !tbaa !1320
  %610 = getelementptr inbounds %struct.netif, %struct.netif* %609, i32 0, i32 4, !dbg !2252
  %611 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2252, !tbaa !1320
  %612 = bitcast %union.netif_ext_callback_args_t* %611 to %struct.ipv6_addr_state_changed_s*, !dbg !2252
  %613 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %612, i32 0, i32 0, !dbg !2252
  %614 = load i8, i8* %613, align 8, !dbg !2252, !tbaa !1486
  %615 = sext i8 %614 to i64, !dbg !2252
  %616 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %610, i64 0, i64 %615, !dbg !2252
  %617 = call i8* @ipaddr_ntoa(%struct.ip_addr* %616) #10, !dbg !2252
  %618 = call i32 (i8*, ...) @printf(i8* %589, i32 %594, i32 %599, i32 %603, i32 %608, i8* %617) #10, !dbg !2252
  br label %673, !dbg !2252

; <label>:619:                                    ; preds = %585, %582
  br label %620, !dbg !2253

; <label>:620:                                    ; preds = %619
  br label %621, !dbg !2254

; <label>:621:                                    ; preds = %620
  %622 = bitcast i32* %56 to i8*, !dbg !2255
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %622) #9, !dbg !2255
  %623 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !2255
  store i32 %623, i32* %56, align 4, !dbg !2255, !tbaa !1282
  %624 = bitcast i64* %57 to i8*, !dbg !2255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %624) #9, !dbg !2255
  %625 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2255, !tbaa !1320
  %626 = getelementptr inbounds %struct.netif, %struct.netif* %625, i32 0, i32 22, !dbg !2255
  %627 = getelementptr inbounds [2 x i8], [2 x i8]* %626, i64 0, i64 1, !dbg !2255
  %628 = load i8, i8* %627, align 1, !dbg !2255, !tbaa !1486
  %629 = sext i8 %628 to i64, !dbg !2255
  store i64 %629, i64* %57, align 8, !dbg !2255, !tbaa !2112
  %630 = bitcast i64* %58 to i8*, !dbg !2255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %630) #9, !dbg !2255
  %631 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2255, !tbaa !1320
  %632 = getelementptr inbounds %struct.netif, %struct.netif* %631, i32 0, i32 23, !dbg !2255
  %633 = load i8, i8* %632, align 8, !dbg !2255, !tbaa !1725
  %634 = zext i8 %633 to i64, !dbg !2255
  store i64 %634, i64* %58, align 8, !dbg !2255, !tbaa !2112
  %635 = bitcast i64* %59 to i8*, !dbg !2255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %635) #9, !dbg !2255
  %636 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2255, !tbaa !1320
  %637 = bitcast %union.netif_ext_callback_args_t* %636 to %struct.ipv6_set_s*, !dbg !2255
  %638 = getelementptr inbounds %struct.ipv6_set_s, %struct.ipv6_set_s* %637, i32 0, i32 0, !dbg !2255
  %639 = load i8, i8* %638, align 8, !dbg !2255, !tbaa !1486
  %640 = sext i8 %639 to i64, !dbg !2255
  store i64 %640, i64* %59, align 8, !dbg !2255, !tbaa !2112
  %641 = bitcast i64* %60 to i8*, !dbg !2255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %641) #9, !dbg !2255
  %642 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2255, !tbaa !1320
  %643 = getelementptr inbounds %struct.netif, %struct.netif* %642, i32 0, i32 4, !dbg !2255
  %644 = load %union.netif_ext_callback_args_t*, %union.netif_ext_callback_args_t** %6, align 8, !dbg !2255, !tbaa !1320
  %645 = bitcast %union.netif_ext_callback_args_t* %644 to %struct.ipv6_addr_state_changed_s*, !dbg !2255
  %646 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %645, i32 0, i32 0, !dbg !2255
  %647 = load i8, i8* %646, align 8, !dbg !2255, !tbaa !1486
  %648 = sext i8 %647 to i64, !dbg !2255
  %649 = getelementptr inbounds [3 x %struct.ip_addr], [3 x %struct.ip_addr]* %643, i64 0, i64 %648, !dbg !2255
  %650 = call i8* @ipaddr_ntoa(%struct.ip_addr* %649) #10, !dbg !2255
  %651 = ptrtoint i8* %650 to i64, !dbg !2255
  store i64 %651, i64* %60, align 8, !dbg !2255, !tbaa !2112
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_netif_status_print.__str.37, i32 0, i32 0), i8** %61, align 8, !dbg !2256, !tbaa !1320
  %652 = load i8*, i8** %61, align 8, !dbg !2256, !tbaa !1320
  %653 = ptrtoint i8* %652 to i64, !dbg !2255
  %654 = load %struct.netif*, %struct.netif** %4, align 8, !dbg !2255, !tbaa !1320
  %655 = getelementptr inbounds %struct.netif, %struct.netif* %654, i32 0, i32 22, !dbg !2255
  %656 = getelementptr inbounds [2 x i8], [2 x i8]* %655, i64 0, i64 0, !dbg !2255
  %657 = load i8, i8* %656, align 2, !dbg !2255, !tbaa !1486
  %658 = sext i8 %657 to i64, !dbg !2255
  %659 = load i64, i64* %57, align 8, !dbg !2255, !tbaa !2112
  %660 = load i64, i64* %58, align 8, !dbg !2255, !tbaa !2112
  %661 = load i64, i64* %59, align 8, !dbg !2255, !tbaa !2112
  %662 = load i64, i64* %60, align 8, !dbg !2255, !tbaa !2112
  %663 = load i32, i32* %56, align 4, !dbg !2255, !tbaa !1282
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call printf\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r9},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %653, i64 %658, i64 %659, i64 %660, i64 %661, i64 %662, i32 %663, i32 (i8*, ...)* @printf) #9, !dbg !2255, !srcloc !2258
  %664 = bitcast i64* %60 to i8*, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %664) #9, !dbg !2254
  %665 = bitcast i64* %59 to i8*, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %665) #9, !dbg !2254
  %666 = bitcast i64* %58 to i8*, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %666) #9, !dbg !2254
  %667 = bitcast i64* %57 to i8*, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %667) #9, !dbg !2254
  %668 = bitcast i32* %56 to i8*, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %668) #9, !dbg !2254
  br label %669, !dbg !2255

; <label>:669:                                    ; preds = %621
  br label %670, !dbg !2255

; <label>:670:                                    ; preds = %669
  br label %671, !dbg !2254

; <label>:671:                                    ; preds = %670
  br label %672, !dbg !2254

; <label>:672:                                    ; preds = %671
  br label %673

; <label>:673:                                    ; preds = %672, %588
  br label %674, !dbg !2248

; <label>:674:                                    ; preds = %673
  br label %675, !dbg !2248

; <label>:675:                                    ; preds = %674
  br label %676, !dbg !2259

; <label>:676:                                    ; preds = %675, %576
  %677 = bitcast i8** %12 to i8*, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %677) #9, !dbg !2260
  %678 = bitcast [17 x i8]* %11 to i8*, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %678) #9, !dbg !2260
  %679 = bitcast i8** %10 to i8*, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %679) #9, !dbg !2260
  %680 = bitcast [17 x i8]* %9 to i8*, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %680) #9, !dbg !2260
  %681 = bitcast i8** %8 to i8*, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %681) #9, !dbg !2260
  %682 = bitcast [17 x i8]* %7 to i8*, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 17, i8* %682) #9, !dbg !2260
  ret void, !dbg !2260
}

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_count() #6

; Function Attrs: noredzone
declare dso_local %struct.uk_netdev* @uk_netdev_get(i32) #6

; Function Attrs: noredzone
declare dso_local i32 @uk_netdev_state_get(%struct.uk_netdev*) #6

; Function Attrs: noredzone nounwind
define internal void @uk_netdev_einfo_get_with_copy(%struct.uk_netdev*, i32, i8** nocapture) #1 !dbg !2261 {
  %4 = tail call i8* @uk_netdev_einfo_get(%struct.uk_netdev* %0, i32 %1) #11, !dbg !2273
  %5 = icmp eq i8* %4, null, !dbg !2275
  br i1 %5, label %6, label %7, !dbg !2277

; <label>:6:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !2278, !tbaa !1320
  br label %31, !dbg !2280

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8, !dbg !2281, !tbaa !1320
  %9 = icmp eq i8* %8, null, !dbg !2281
  br i1 %9, label %17, label %10, !dbg !2283

; <label>:10:                                     ; preds = %7
  %11 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2284, !tbaa !1320
  %12 = icmp eq %struct.uk_alloc* %11, null, !dbg !2291
  br i1 %12, label %13, label %14, !dbg !2292, !prof !1332

; <label>:13:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !2293
  tail call void @ukplat_terminate(i32 3) #12, !dbg !2293
  unreachable, !dbg !2293

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %11, i64 0, i32 5, !dbg !2294
  %16 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %15, align 8, !dbg !2294, !tbaa !1320
  tail call void %16(%struct.uk_alloc* nonnull %11, i8* nonnull %8) #11, !dbg !2295
  br label %17, !dbg !2296

; <label>:17:                                     ; preds = %7, %14
  %18 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2297, !tbaa !1320
  %19 = tail call i64 @strlen(i8* nonnull %4) #11, !dbg !2298
  %20 = icmp eq %struct.uk_alloc* %18, null, !dbg !2301
  br i1 %20, label %21, label %23, !dbg !2302, !prof !1332

; <label>:21:                                     ; preds = %17
  %22 = tail call i32* @__errno() #11, !dbg !2303
  store i32 12, i32* %22, align 4, !dbg !2304, !tbaa !1282
  br label %28, !dbg !2305

; <label>:23:                                     ; preds = %17
  %24 = add i64 %19, 1, !dbg !2306
  %25 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %18, i64 0, i32 0, !dbg !2311
  %26 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %25, align 8, !dbg !2311, !tbaa !1320
  %27 = tail call i8* %26(%struct.uk_alloc* nonnull %18, i64 %24) #11, !dbg !2312
  br label %28, !dbg !2313

; <label>:28:                                     ; preds = %21, %23
  %29 = phi i8* [ null, %21 ], [ %27, %23 ], !dbg !2314
  store i8* %29, i8** %2, align 8, !dbg !2315, !tbaa !1320
  %30 = tail call i8* @strcpy(i8* %29, i8* nonnull %4) #11, !dbg !2316
  br label %31, !dbg !2317

; <label>:31:                                     ; preds = %28, %6
  ret void, !dbg !2317
}

; Function Attrs: noredzone
declare dso_local i32 @ip4addr_aton(i8*, %struct.ip4_addr*) local_unnamed_addr #6

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) #4 !dbg !883 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2319
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9, !dbg !2319
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2321
  call void @llvm.va_start(i8* nonnull %3), !dbg !2321
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_err.__str.38, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !2322
  call void @llvm.va_end(i8* nonnull %3), !dbg !2325
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9, !dbg !2326
  ret void, !dbg !2326
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local %struct.netif* @uknetdev_addif(%struct.uk_netdev*, %struct.ip4_addr*, %struct.ip4_addr*, %struct.ip4_addr*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local void @netif_set_default(%struct.netif*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local void @netif_set_up(%struct.netif*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #6

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !719 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9, !dbg !2327
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2329
  call void @llvm.va_start(i8* nonnull %3), !dbg !2329
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.17, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #11, !dbg !2330
  call void @llvm.va_end(i8* nonnull %3), !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9, !dbg !2334
  ret void, !dbg !2334
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_up(%struct.uk_semaphore*) #4 !dbg !1788 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !2336
  br i1 %2, label %3, label %4, !dbg !2339, !prof !1332

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2340
  tail call void @ukplat_terminate(i32 3) #12, !dbg !2340
  unreachable, !dbg !2340

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !2342
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0, !dbg !2344
  %7 = load i64, i64* %6, align 8, !dbg !2345, !tbaa !1803
  %8 = add nsw i64 %7, 1, !dbg !2345
  store i64 %8, i64* %6, align 8, !dbg !2345, !tbaa !1803
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !2349
  %10 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0, !dbg !2351
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !2351, !tbaa !1824
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !2353
  br i1 %12, label %20, label %13, !dbg !2353

; <label>:13:                                     ; preds = %4, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !2353
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !2353, !tbaa !1828
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !2355
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !2355, !tbaa !1833
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #11, !dbg !2356
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !2353
  br i1 %19, label %20, label %13, !dbg !2353, !llvm.loop !1835

; <label>:20:                                     ; preds = %13, %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #11, !dbg !2357
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #11, !dbg !2358
  ret void, !dbg !2359
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local void @uk_thread_wake(%struct.uk_thread*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noredzone
declare dso_local i8* @ipaddr_ntoa_r(%struct.ip_addr*, i8*, i32) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i8* @ipaddr_ntoa(%struct.ip_addr*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i8* @uk_netdev_einfo_get(%struct.uk_netdev*, i32) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noredzone nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone nounwind }
attributes #12 = { nobuiltin noredzone noreturn nounwind }

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
!1272 = !{i32 431576}
!1273 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1271)
!1274 = !DILocation(line: 205, column: 2, scope: !1260)
!1275 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 205, column: 2, scope: !1260)
!1277 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1276)
!1278 = !DILocation(line: 205, column: 2, scope: !1261)
!1279 = !DILocation(line: 205, column: 2, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 205, column: 2)
!1281 = !DILocation(line: 204, column: 6, scope: !1253)
!1282 = !{!1283, !1283, i64 0}
!1283 = !{!"int", !1284, i64 0}
!1284 = !{!"omnipotent char", !1285, i64 0}
!1285 = !{!"Simple C/C++ TBAA"}
!1286 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1292)
!1288 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1289, file: !1289, line: 47, type: !4, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1290)
!1289 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1290 = !{!1291}
!1291 = !DILocalVariable(name: "sp", scope: !1288, file: !1289, line: 49, type: !48)
!1292 = distinct !DILocation(line: 205, column: 2, scope: !1257)
!1293 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1287)
!1294 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1292)
!1295 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1292)
!1296 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1292)
!1297 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1292)
!1298 = !DILocation(line: 205, column: 2, scope: !1257)
!1299 = !{i32 -2145990738, i32 -2145990725, i32 -2145990700, i32 -2145990676, i32 -2145990651, i32 -2145990576, i32 -2145990551, i32 -2145990407, i32 -2145987334, i32 -2145987245, i32 -2145987124, i32 -2145987029, i32 -2145986928, i32 -2145986901, i32 -2145986818, i32 -2145986729, i32 -2145986608, i32 -2145986508, i32 -2145986402, i32 -2145986294, i32 -2145990124, i32 -2145990071, i32 -2145990040, i32 -2145990009, i32 -2145989988, i32 -2145989966, i32 -2145989917, i32 -2145989896, i32 -2145986211, i32 -2145986122, i32 -2145986001, i32 -2145985902, i32 -2145985796, i32 -2145985694, i32 -2145985661, i32 -2145985588, i32 -2145985520, i32 -2145989594, i32 -2145989535, i32 -2145989482, i32 -2145989451, i32 -2145989420, i32 -2145989399, i32 -2145989377, i32 -2145989328, i32 -2145989307, i32 -2145985471, i32 -2145985382, i32 -2145985261, i32 -2145985162, i32 -2145985056, i32 -2145984954, i32 -2145984921, i32 -2145984838, i32 -2145984749, i32 -2145984628, i32 -2145984528, i32 -2145984502, i32 -2145984399, i32 -2145984373, i32 -2145989049, i32 -2145988982, i32 -2145988957, i32 -2145988893, i32 -2145988811, i32 -2145988788, i32 -2145988763, i32 -2145988738}
!1300 = !DILocation(line: 205, column: 2, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 205, column: 2)
!1302 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 205, column: 2)
!1303 = !{i32 -2145987791, i32 -2145987774}
!1304 = !DILocation(line: 206, column: 9, scope: !1253)
!1305 = !DILocation(line: 207, column: 1, scope: !1253)
!1306 = !DILocation(line: 206, column: 2, scope: !1253)
!1307 = !DILocation(line: 120, column: 2, scope: !1265)
!1308 = !DILocation(line: 118, column: 16, scope: !1265)
!1309 = !DILocation(line: 121, column: 2, scope: !1265)
!1310 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 49, column: 21, scope: !1288)
!1312 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1311)
!1313 = !DILocation(line: 49, column: 16, scope: !1288)
!1314 = !DILocation(line: 50, column: 19, scope: !1288)
!1315 = !DILocation(line: 50, column: 11, scope: !1288)
!1316 = !DILocation(line: 50, column: 9, scope: !1288)
!1317 = !DILocation(line: 50, column: 2, scope: !1288)
!1318 = !DILocation(line: 212, column: 2, scope: !2)
!1319 = !DILocation(line: 214, column: 50, scope: !2)
!1320 = !{!1321, !1321, i64 0}
!1321 = !{!"any pointer", !1284, i64 0}
!1322 = !DILocalVariable(name: "a", arg: 1, scope: !1323, file: !176, line: 157, type: !174)
!1323 = distinct !DISubprogram(name: "uk_malloc", scope: !176, file: !176, line: 157, type: !181, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1324)
!1324 = !{!1322, !1325}
!1325 = !DILocalVariable(name: "size", arg: 2, scope: !1323, file: !176, line: 157, type: !183)
!1326 = !DILocation(line: 157, column: 48, scope: !1323, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 214, column: 40, scope: !2)
!1328 = !DILocation(line: 157, column: 58, scope: !1323, inlinedAt: !1327)
!1329 = !DILocation(line: 159, column: 6, scope: !1330, inlinedAt: !1327)
!1330 = distinct !DILexicalBlock(scope: !1323, file: !176, line: 159, column: 6)
!1331 = !DILocation(line: 159, column: 6, scope: !1323, inlinedAt: !1327)
!1332 = !{!"branch_weights", i32 1, i32 2000}
!1333 = !DILocation(line: 160, column: 3, scope: !1334, inlinedAt: !1327)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !176, line: 159, column: 20)
!1335 = !DILocation(line: 160, column: 9, scope: !1334, inlinedAt: !1327)
!1336 = !DILocation(line: 161, column: 3, scope: !1334, inlinedAt: !1327)
!1337 = !DILocalVariable(name: "a", arg: 1, scope: !1338, file: !176, line: 151, type: !174)
!1338 = distinct !DISubprogram(name: "uk_do_malloc", scope: !176, file: !176, line: 151, type: !181, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1339)
!1339 = !{!1337, !1340}
!1340 = !DILocalVariable(name: "size", arg: 2, scope: !1338, file: !176, line: 151, type: !183)
!1341 = !DILocation(line: 151, column: 51, scope: !1338, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 163, column: 9, scope: !1323, inlinedAt: !1327)
!1343 = !DILocation(line: 151, column: 61, scope: !1338, inlinedAt: !1342)
!1344 = !DILocation(line: 154, column: 12, scope: !1338, inlinedAt: !1342)
!1345 = !DILocation(line: 154, column: 9, scope: !1338, inlinedAt: !1342)
!1346 = !DILocation(line: 163, column: 2, scope: !1323, inlinedAt: !1327)
!1347 = !DILocation(line: 0, scope: !1323, inlinedAt: !1327)
!1348 = !DILocation(line: 214, column: 40, scope: !2)
!1349 = !DILocation(line: 214, column: 31, scope: !2)
!1350 = !DILocation(line: 215, column: 10, scope: !2)
!1351 = !DILocation(line: 219, column: 2, scope: !2)
!1352 = !DILocation(line: 221, column: 2, scope: !2)
!1353 = !DILocation(line: 223, column: 2, scope: !2)
!1354 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 228, column: 2, scope: !1123)
!1356 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1355)
!1357 = !DILocation(line: 228, column: 2, scope: !1123)
!1358 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 228, column: 2, scope: !1123)
!1360 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1359)
!1361 = !DILocation(line: 228, column: 2, scope: !1124)
!1362 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 228, column: 2, scope: !1120)
!1365 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1363)
!1366 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1364)
!1367 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1364)
!1368 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1364)
!1369 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1364)
!1370 = !DILocation(line: 228, column: 2, scope: !1120)
!1371 = !{i32 -2145981769, i32 -2145981756, i32 -2145981731, i32 -2145981707, i32 -2145981682, i32 -2145981607, i32 -2145981582, i32 -2145981438, i32 -2145978949, i32 -2145978860, i32 -2145978739, i32 -2145978644, i32 -2145978543, i32 -2145978516, i32 -2145978433, i32 -2145978344, i32 -2145978223, i32 -2145978123, i32 -2145978017, i32 -2145977909, i32 -2145981150, i32 -2145981097, i32 -2145981066, i32 -2145981035, i32 -2145981014, i32 -2145980992, i32 -2145980943, i32 -2145980922, i32 -2145977826, i32 -2145977737, i32 -2145977616, i32 -2145977517, i32 -2145977411, i32 -2145977309, i32 -2145977276, i32 -2145977203, i32 -2145977135, i32 -2145980548, i32 -2145980495, i32 -2145980464, i32 -2145980433, i32 -2145980412, i32 -2145980390, i32 -2145980341, i32 -2145980320, i32 -2145977089, i32 -2145977000, i32 -2145976879, i32 -2145976780, i32 -2145976674, i32 -2145976572, i32 -2145976539, i32 -2145976456, i32 -2145976367, i32 -2145976246, i32 -2145976146, i32 -2145976120, i32 -2145976017, i32 -2145975991, i32 -2145980062, i32 -2145979995, i32 -2145979970, i32 -2145979906, i32 -2145979790, i32 -2145979765, i32 -2145979740}
!1372 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 231, column: 2, scope: !1129)
!1374 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1373)
!1375 = !DILocation(line: 231, column: 2, scope: !1129)
!1376 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 231, column: 2, scope: !1129)
!1378 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1377)
!1379 = !DILocation(line: 231, column: 2, scope: !1130)
!1380 = !DILocation(line: 231, column: 2, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 231, column: 2)
!1382 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 231, column: 2, scope: !1126)
!1385 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1383)
!1386 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1384)
!1387 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1384)
!1388 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1384)
!1389 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1384)
!1390 = !DILocation(line: 231, column: 2, scope: !1126)
!1391 = !{i32 -2145974022, i32 -2145974009, i32 -2145973984, i32 -2145973960, i32 -2145973935, i32 -2145973860, i32 -2145973835, i32 -2145973691, i32 -2145971439, i32 -2145971350, i32 -2145971229, i32 -2145971134, i32 -2145971033, i32 -2145971006, i32 -2145970923, i32 -2145970834, i32 -2145970713, i32 -2145970613, i32 -2145970507, i32 -2145970399, i32 -2145973399, i32 -2145973346, i32 -2145973315, i32 -2145973284, i32 -2145973263, i32 -2145973241, i32 -2145973192, i32 -2145973171, i32 -2145970316, i32 -2145970227, i32 -2145970106, i32 -2145970007, i32 -2145969901, i32 -2145969799, i32 -2145969766, i32 -2145969693, i32 -2145969625, i32 -2145972794, i32 -2145972741, i32 -2145972710, i32 -2145972679, i32 -2145972658, i32 -2145972636, i32 -2145972587, i32 -2145972566, i32 -2145969572, i32 -2145969483, i32 -2145969362, i32 -2145969263, i32 -2145969157, i32 -2145969055, i32 -2145969022, i32 -2145968939, i32 -2145968850, i32 -2145968729, i32 -2145968629, i32 -2145968603, i32 -2145968500, i32 -2145968474, i32 -2145972308, i32 -2145972241, i32 -2145972216, i32 -2145972152, i32 -2145972036, i32 -2145972011, i32 -2145971986}
!1392 = !DILocation(line: 237, column: 2, scope: !2)
!1393 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 240, column: 2, scope: !1135)
!1395 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1394)
!1396 = !DILocation(line: 240, column: 2, scope: !1135)
!1397 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 240, column: 2, scope: !1135)
!1399 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1398)
!1400 = !DILocation(line: 240, column: 2, scope: !1136)
!1401 = !DILocation(line: 240, column: 2, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 240, column: 2)
!1403 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 240, column: 2, scope: !1132)
!1406 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1404)
!1407 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1405)
!1408 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1405)
!1409 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1405)
!1410 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1405)
!1411 = !DILocation(line: 240, column: 2, scope: !1132)
!1412 = !{i32 -2145966511, i32 -2145966498, i32 -2145966473, i32 -2145966449, i32 -2145966424, i32 -2145966349, i32 -2145966324, i32 -2145966180, i32 -2145963954, i32 -2145963865, i32 -2145963744, i32 -2145963649, i32 -2145963548, i32 -2145963521, i32 -2145963438, i32 -2145963349, i32 -2145963228, i32 -2145963128, i32 -2145963022, i32 -2145962914, i32 -2145965892, i32 -2145965839, i32 -2145965808, i32 -2145965777, i32 -2145965756, i32 -2145965734, i32 -2145965685, i32 -2145965664, i32 -2145962831, i32 -2145962742, i32 -2145962621, i32 -2145962522, i32 -2145962416, i32 -2145962314, i32 -2145962281, i32 -2145962208, i32 -2145962140, i32 -2145965290, i32 -2145965237, i32 -2145965206, i32 -2145965175, i32 -2145965154, i32 -2145965132, i32 -2145965083, i32 -2145965062, i32 -2145962087, i32 -2145961998, i32 -2145961877, i32 -2145961778, i32 -2145961672, i32 -2145961570, i32 -2145961537, i32 -2145961454, i32 -2145961365, i32 -2145961244, i32 -2145961144, i32 -2145961118, i32 -2145961015, i32 -2145960989, i32 -2145964804, i32 -2145964737, i32 -2145964712, i32 -2145964648, i32 -2145964532, i32 -2145964507, i32 -2145964482}
!1413 = !DILocation(line: 245, column: 2, scope: !2)
!1414 = !DILocation(line: 217, column: 6, scope: !2)
!1415 = !DILocation(line: 250, column: 2, scope: !2)
!1416 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 252, column: 2, scope: !1142)
!1418 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1417)
!1419 = !DILocation(line: 252, column: 2, scope: !1142)
!1420 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 252, column: 2, scope: !1142)
!1422 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1421)
!1423 = !DILocation(line: 252, column: 2, scope: !1143)
!1424 = !DILocation(line: 252, column: 2, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 252, column: 2)
!1426 = !DILocation(line: 250, column: 15, scope: !2)
!1427 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 252, column: 2, scope: !1139)
!1430 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1428)
!1431 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1429)
!1432 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1429)
!1433 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1429)
!1434 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1429)
!1435 = !DILocation(line: 252, column: 2, scope: !1139)
!1436 = !{i32 -2145959000, i32 -2145958987, i32 -2145958962, i32 -2145958938, i32 -2145958913, i32 -2145958838, i32 -2145958813, i32 -2145958669, i32 -2145955520, i32 -2145955431, i32 -2145955310, i32 -2145955215, i32 -2145955114, i32 -2145955087, i32 -2145955004, i32 -2145954915, i32 -2145954794, i32 -2145954694, i32 -2145954588, i32 -2145954480, i32 -2145958386, i32 -2145958333, i32 -2145958302, i32 -2145958271, i32 -2145958250, i32 -2145958228, i32 -2145958179, i32 -2145958158, i32 -2145954397, i32 -2145954308, i32 -2145954187, i32 -2145954088, i32 -2145953982, i32 -2145953880, i32 -2145953847, i32 -2145953774, i32 -2145953706, i32 -2145957856, i32 -2145957797, i32 -2145957744, i32 -2145957713, i32 -2145957682, i32 -2145957661, i32 -2145957639, i32 -2145957590, i32 -2145957569, i32 -2145953655, i32 -2145953566, i32 -2145953445, i32 -2145953346, i32 -2145953240, i32 -2145953138, i32 -2145953105, i32 -2145953022, i32 -2145952933, i32 -2145952812, i32 -2145952712, i32 -2145952686, i32 -2145952583, i32 -2145952557, i32 -2145957311, i32 -2145957244, i32 -2145957219, i32 -2145957155, i32 -2145957073, i32 -2145957050, i32 -2145957025, i32 -2145957000}
!1437 = !DILocation(line: 252, column: 2, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 252, column: 2)
!1439 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 252, column: 2)
!1440 = !{i32 -2145956053, i32 -2145956036}
!1441 = !DILocation(line: 254, column: 26, scope: !1147)
!1442 = !DILocation(line: 211, column: 15, scope: !2)
!1443 = !DILocation(line: 254, column: 24, scope: !1147)
!1444 = !DILocation(line: 254, column: 2, scope: !1148)
!1445 = !DILocation(line: 255, column: 3, scope: !1146)
!1446 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 256, column: 3, scope: !1153)
!1448 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1447)
!1449 = !DILocation(line: 256, column: 3, scope: !1153)
!1450 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 256, column: 3, scope: !1153)
!1452 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1451)
!1453 = !DILocation(line: 256, column: 3, scope: !1154)
!1454 = !DILocation(line: 256, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 256, column: 3)
!1456 = !DILocation(line: 212, column: 20, scope: !2)
!1457 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 256, column: 3, scope: !1150)
!1460 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1458)
!1461 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1459)
!1462 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1459)
!1463 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1459)
!1464 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1459)
!1465 = !DILocation(line: 256, column: 3, scope: !1150)
!1466 = !{i32 -2145950586, i32 -2145950573, i32 -2145950548, i32 -2145950524, i32 -2145950499, i32 -2145950424, i32 -2145950399, i32 -2145950255, i32 -2145947135, i32 -2145947046, i32 -2145946925, i32 -2145946830, i32 -2145946729, i32 -2145946702, i32 -2145946619, i32 -2145946530, i32 -2145946409, i32 -2145946309, i32 -2145946203, i32 -2145946095, i32 -2145949967, i32 -2145949914, i32 -2145949883, i32 -2145949852, i32 -2145949831, i32 -2145949809, i32 -2145949760, i32 -2145949739, i32 -2145946012, i32 -2145945923, i32 -2145945802, i32 -2145945703, i32 -2145945597, i32 -2145945495, i32 -2145945462, i32 -2145945389, i32 -2145945321, i32 -2145949435, i32 -2145949376, i32 -2145949323, i32 -2145949292, i32 -2145949261, i32 -2145949240, i32 -2145949218, i32 -2145949169, i32 -2145949148, i32 -2145945272, i32 -2145945183, i32 -2145945062, i32 -2145944963, i32 -2145944857, i32 -2145944755, i32 -2145944722, i32 -2145944639, i32 -2145944550, i32 -2145944429, i32 -2145944329, i32 -2145944303, i32 -2145944200, i32 -2145944174, i32 -2145948890, i32 -2145948823, i32 -2145948798, i32 -2145948734, i32 -2145948652, i32 -2145948629, i32 -2145948604, i32 -2145948579}
!1467 = !DILocation(line: 256, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 256, column: 3)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 256, column: 3)
!1470 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 256, column: 3)
!1471 = !{i32 -2145947391, i32 -2145947375}
!1472 = !DILocation(line: 257, column: 8, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 257, column: 7)
!1474 = !DILocation(line: 257, column: 7, scope: !1146)
!1475 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 260, column: 3, scope: !1160)
!1477 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1476)
!1478 = !DILocation(line: 260, column: 3, scope: !1160)
!1479 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 260, column: 3, scope: !1160)
!1481 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1480)
!1482 = !DILocation(line: 260, column: 3, scope: !1161)
!1483 = !DILocation(line: 260, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 260, column: 3)
!1485 = !DILocation(line: 255, column: 24, scope: !1146)
!1486 = !{!1284, !1284, i64 0}
!1487 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 260, column: 3, scope: !1157)
!1490 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1488)
!1491 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1489)
!1492 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1489)
!1493 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1489)
!1494 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1489)
!1495 = !DILocation(line: 260, column: 3, scope: !1157)
!1496 = !{i32 -2145942149, i32 -2145942136, i32 -2145942111, i32 -2145942087, i32 -2145942062, i32 -2145941987, i32 -2145941962, i32 -2145941818, i32 -2145938616, i32 -2145938527, i32 -2145938406, i32 -2145938311, i32 -2145938210, i32 -2145938183, i32 -2145938100, i32 -2145938011, i32 -2145937890, i32 -2145937790, i32 -2145937684, i32 -2145937576, i32 -2145941530, i32 -2145941477, i32 -2145941446, i32 -2145941415, i32 -2145941394, i32 -2145941372, i32 -2145941323, i32 -2145941302, i32 -2145937493, i32 -2145937404, i32 -2145937283, i32 -2145937184, i32 -2145937078, i32 -2145936976, i32 -2145936943, i32 -2145936870, i32 -2145936802, i32 -2145940998, i32 -2145940939, i32 -2145940886, i32 -2145940855, i32 -2145940824, i32 -2145940803, i32 -2145940781, i32 -2145940732, i32 -2145940711, i32 -2145936747, i32 -2145936658, i32 -2145936537, i32 -2145936438, i32 -2145936332, i32 -2145936230, i32 -2145936197, i32 -2145936114, i32 -2145936025, i32 -2145935904, i32 -2145935804, i32 -2145935778, i32 -2145935675, i32 -2145935649, i32 -2145940453, i32 -2145940386, i32 -2145940361, i32 -2145940297, i32 -2145940215, i32 -2145940192, i32 -2145940167, i32 -2145940142}
!1497 = !DILocation(line: 260, column: 3, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 260, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 260, column: 3)
!1500 = !{i32 -2145939161, i32 -2145939144}
!1501 = !DILocation(line: 263, column: 7, scope: !1170)
!1502 = !DILocation(line: 263, column: 20, scope: !1170)
!1503 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 0, scope: !1175)
!1505 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1504)
!1506 = !DILocation(line: 0, scope: !1175)
!1507 = !DILocation(line: 263, column: 7, scope: !1146)
!1508 = !DILocation(line: 264, column: 4, scope: !1167)
!1509 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 264, column: 4, scope: !1167)
!1511 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1510)
!1512 = !DILocation(line: 264, column: 4, scope: !1168)
!1513 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 264, column: 4, scope: !1164)
!1516 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1514)
!1517 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1515)
!1518 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1515)
!1519 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1515)
!1520 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1515)
!1521 = !DILocation(line: 264, column: 4, scope: !1164)
!1522 = !{i32 -2145932646, i32 -2145932633, i32 -2145932608, i32 -2145932584, i32 -2145932559, i32 -2145932484, i32 -2145932459, i32 -2145932315, i32 -2145929694, i32 -2145929605, i32 -2145929484, i32 -2145929389, i32 -2145929288, i32 -2145929261, i32 -2145929178, i32 -2145929089, i32 -2145928968, i32 -2145928868, i32 -2145928762, i32 -2145928654, i32 -2145932023, i32 -2145931970, i32 -2145931939, i32 -2145931908, i32 -2145931887, i32 -2145931865, i32 -2145931816, i32 -2145931795, i32 -2145928571, i32 -2145928482, i32 -2145928361, i32 -2145928262, i32 -2145928156, i32 -2145928054, i32 -2145928021, i32 -2145927948, i32 -2145927880, i32 -2145931418, i32 -2145931365, i32 -2145931334, i32 -2145931303, i32 -2145931282, i32 -2145931260, i32 -2145931211, i32 -2145931190, i32 -2145927834, i32 -2145927745, i32 -2145927624, i32 -2145927525, i32 -2145927419, i32 -2145927317, i32 -2145927284, i32 -2145927201, i32 -2145927112, i32 -2145926991, i32 -2145926891, i32 -2145926865, i32 -2145926762, i32 -2145926736, i32 -2145930932, i32 -2145930865, i32 -2145930840, i32 -2145930776, i32 -2145930660, i32 -2145930635, i32 -2145930610}
!1523 = !DILocation(line: 270, column: 3, scope: !1175)
!1524 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 270, column: 3, scope: !1175)
!1526 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1525)
!1527 = !DILocation(line: 270, column: 3, scope: !1176)
!1528 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 270, column: 3, scope: !1172)
!1531 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1529)
!1532 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1530)
!1533 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1530)
!1534 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1530)
!1535 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1530)
!1536 = !DILocation(line: 270, column: 3, scope: !1172)
!1537 = !{i32 -2145923973, i32 -2145923960, i32 -2145923935, i32 -2145923911, i32 -2145923886, i32 -2145923811, i32 -2145923786, i32 -2145923642, i32 -2145921087, i32 -2145920998, i32 -2145920877, i32 -2145920782, i32 -2145920681, i32 -2145920654, i32 -2145920571, i32 -2145920482, i32 -2145920361, i32 -2145920261, i32 -2145920155, i32 -2145920047, i32 -2145923350, i32 -2145923297, i32 -2145923266, i32 -2145923235, i32 -2145923214, i32 -2145923192, i32 -2145923143, i32 -2145923122, i32 -2145919964, i32 -2145919875, i32 -2145919754, i32 -2145919655, i32 -2145919549, i32 -2145919447, i32 -2145919414, i32 -2145919341, i32 -2145919273, i32 -2145922745, i32 -2145922692, i32 -2145922661, i32 -2145922630, i32 -2145922609, i32 -2145922587, i32 -2145922538, i32 -2145922517, i32 -2145919227, i32 -2145919138, i32 -2145919017, i32 -2145918918, i32 -2145918812, i32 -2145918710, i32 -2145918677, i32 -2145918594, i32 -2145918505, i32 -2145918384, i32 -2145918284, i32 -2145918258, i32 -2145918155, i32 -2145918129, i32 -2145922259, i32 -2145922192, i32 -2145922167, i32 -2145922103, i32 -2145921987, i32 -2145921962, i32 -2145921937}
!1538 = !DILocation(line: 220, column: 14, scope: !2)
!1539 = !DILocation(line: 222, column: 14, scope: !2)
!1540 = !DILocation(line: 224, column: 14, scope: !2)
!1541 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 280, column: 3, scope: !1181)
!1543 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1542)
!1544 = !DILocation(line: 280, column: 3, scope: !1181)
!1545 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 280, column: 3, scope: !1181)
!1547 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1546)
!1548 = !DILocation(line: 280, column: 3, scope: !1182)
!1549 = !DILocation(line: 280, column: 3, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 280, column: 3)
!1551 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 280, column: 3, scope: !1178)
!1554 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1552)
!1555 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1553)
!1556 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1553)
!1557 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1553)
!1558 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1553)
!1559 = !DILocation(line: 280, column: 3, scope: !1178)
!1560 = !{i32 -2145915748, i32 -2145915735, i32 -2145915710, i32 -2145915686, i32 -2145915661, i32 -2145915586, i32 -2145915561, i32 -2145915417, i32 -2145913077, i32 -2145912988, i32 -2145912867, i32 -2145912772, i32 -2145912671, i32 -2145912644, i32 -2145912561, i32 -2145912472, i32 -2145912351, i32 -2145912251, i32 -2145912145, i32 -2145912037, i32 -2145915087, i32 -2145915034, i32 -2145915003, i32 -2145914972, i32 -2145914951, i32 -2145914929, i32 -2145914880, i32 -2145914859, i32 -2145914756, i32 -2145911954, i32 -2145911865, i32 -2145911744, i32 -2145911645, i32 -2145911539, i32 -2145911437, i32 -2145911404, i32 -2145911331, i32 -2145911263, i32 -2145914496, i32 -2145914443, i32 -2145914412, i32 -2145914381, i32 -2145914360, i32 -2145914338, i32 -2145914289, i32 -2145914268, i32 -2145911198, i32 -2145911109, i32 -2145910988, i32 -2145910889, i32 -2145910783, i32 -2145910681, i32 -2145910648, i32 -2145910565, i32 -2145910476, i32 -2145910355, i32 -2145910255, i32 -2145910229, i32 -2145910126, i32 -2145910100, i32 -2145914010, i32 -2145913943, i32 -2145913918, i32 -2145913854, i32 -2145913738, i32 -2145913713, i32 -2145913688}
!1561 = !DILocation(line: 283, column: 7, scope: !1193)
!1562 = !DILocation(line: 283, column: 7, scope: !1146)
!1563 = !DILocation(line: 219, column: 13, scope: !2)
!1564 = !DILocation(line: 284, column: 8, scope: !1191)
!1565 = !DILocation(line: 284, column: 36, scope: !1191)
!1566 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 0, scope: !1188)
!1568 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1567)
!1569 = !DILocation(line: 0, scope: !1188)
!1570 = !DILocation(line: 284, column: 8, scope: !1192)
!1571 = !DILocation(line: 285, column: 5, scope: !1188)
!1572 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 285, column: 5, scope: !1188)
!1574 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1573)
!1575 = !DILocation(line: 285, column: 5, scope: !1189)
!1576 = !DILocation(line: 285, column: 5, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 285, column: 5)
!1578 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 285, column: 5, scope: !1185)
!1581 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1579)
!1582 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1580)
!1583 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1580)
!1584 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1580)
!1585 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1580)
!1586 = !DILocation(line: 285, column: 5, scope: !1185)
!1587 = !{i32 -2145907346, i32 -2145907333, i32 -2145907308, i32 -2145907284, i32 -2145907259, i32 -2145907184, i32 -2145907159, i32 -2145907015, i32 -2145904468, i32 -2145904379, i32 -2145904258, i32 -2145904163, i32 -2145904062, i32 -2145904035, i32 -2145903952, i32 -2145903863, i32 -2145903742, i32 -2145903642, i32 -2145903536, i32 -2145903428, i32 -2145906723, i32 -2145906670, i32 -2145906639, i32 -2145906608, i32 -2145906587, i32 -2145906565, i32 -2145906516, i32 -2145906495, i32 -2145903345, i32 -2145903256, i32 -2145903135, i32 -2145903036, i32 -2145902930, i32 -2145902828, i32 -2145902795, i32 -2145902722, i32 -2145902654, i32 -2145906118, i32 -2145906065, i32 -2145906034, i32 -2145906003, i32 -2145905982, i32 -2145905960, i32 -2145905911, i32 -2145905890, i32 -2145902609, i32 -2145902520, i32 -2145902399, i32 -2145902300, i32 -2145902194, i32 -2145902092, i32 -2145902059, i32 -2145901976, i32 -2145901887, i32 -2145901766, i32 -2145901666, i32 -2145901640, i32 -2145901537, i32 -2145901511, i32 -2145905632, i32 -2145905565, i32 -2145905540, i32 -2145905476, i32 -2145905360, i32 -2145905335, i32 -2145905310}
!1588 = !DILocation(line: 295, column: 3, scope: !1198)
!1589 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 295, column: 3, scope: !1198)
!1591 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1590)
!1592 = !DILocation(line: 295, column: 3, scope: !1199)
!1593 = !DILocation(line: 295, column: 3, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 295, column: 3)
!1595 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 295, column: 3, scope: !1195)
!1598 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1596)
!1599 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1597)
!1600 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1597)
!1601 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1597)
!1602 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1597)
!1603 = !DILocation(line: 295, column: 3, scope: !1195)
!1604 = !{i32 -2145899168, i32 -2145899155, i32 -2145899130, i32 -2145899106, i32 -2145899081, i32 -2145899006, i32 -2145898981, i32 -2145898837, i32 -2145896497, i32 -2145896408, i32 -2145896287, i32 -2145896192, i32 -2145896091, i32 -2145896064, i32 -2145895981, i32 -2145895892, i32 -2145895771, i32 -2145895671, i32 -2145895565, i32 -2145895457, i32 -2145898507, i32 -2145898454, i32 -2145898423, i32 -2145898392, i32 -2145898371, i32 -2145898349, i32 -2145898300, i32 -2145898279, i32 -2145898176, i32 -2145895374, i32 -2145895285, i32 -2145895164, i32 -2145895065, i32 -2145894959, i32 -2145894857, i32 -2145894824, i32 -2145894751, i32 -2145894683, i32 -2145897916, i32 -2145897863, i32 -2145897832, i32 -2145897801, i32 -2145897780, i32 -2145897758, i32 -2145897709, i32 -2145897688, i32 -2145894618, i32 -2145894529, i32 -2145894408, i32 -2145894309, i32 -2145894203, i32 -2145894101, i32 -2145894068, i32 -2145893985, i32 -2145893896, i32 -2145893775, i32 -2145893675, i32 -2145893649, i32 -2145893546, i32 -2145893520, i32 -2145897430, i32 -2145897363, i32 -2145897338, i32 -2145897274, i32 -2145897158, i32 -2145897133, i32 -2145897108}
!1605 = !DILocation(line: 298, column: 7, scope: !1210)
!1606 = !DILocation(line: 298, column: 7, scope: !1146)
!1607 = !DILocation(line: 221, column: 13, scope: !2)
!1608 = !DILocation(line: 299, column: 8, scope: !1208)
!1609 = !DILocation(line: 299, column: 38, scope: !1208)
!1610 = !DILocation(line: 299, column: 8, scope: !1209)
!1611 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 300, column: 5, scope: !1205)
!1613 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1612)
!1614 = !DILocation(line: 300, column: 5, scope: !1205)
!1615 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 300, column: 5, scope: !1205)
!1617 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1616)
!1618 = !DILocation(line: 300, column: 5, scope: !1206)
!1619 = !DILocation(line: 300, column: 5, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 300, column: 5)
!1621 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 300, column: 5, scope: !1202)
!1624 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1622)
!1625 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1623)
!1626 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1623)
!1627 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1623)
!1628 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1623)
!1629 = !DILocation(line: 300, column: 5, scope: !1202)
!1630 = !{i32 -2145890780, i32 -2145890767, i32 -2145890742, i32 -2145890718, i32 -2145890693, i32 -2145890618, i32 -2145890593, i32 -2145890449, i32 -2145887906, i32 -2145887817, i32 -2145887696, i32 -2145887601, i32 -2145887500, i32 -2145887473, i32 -2145887390, i32 -2145887301, i32 -2145887180, i32 -2145887080, i32 -2145886974, i32 -2145886866, i32 -2145890157, i32 -2145890104, i32 -2145890073, i32 -2145890042, i32 -2145890021, i32 -2145889999, i32 -2145889950, i32 -2145889929, i32 -2145886783, i32 -2145886694, i32 -2145886573, i32 -2145886474, i32 -2145886368, i32 -2145886266, i32 -2145886233, i32 -2145886160, i32 -2145886092, i32 -2145889552, i32 -2145889499, i32 -2145889468, i32 -2145889437, i32 -2145889416, i32 -2145889394, i32 -2145889345, i32 -2145889324, i32 -2145886047, i32 -2145885958, i32 -2145885837, i32 -2145885738, i32 -2145885632, i32 -2145885530, i32 -2145885497, i32 -2145885414, i32 -2145885325, i32 -2145885204, i32 -2145885104, i32 -2145885078, i32 -2145884975, i32 -2145884949, i32 -2145889066, i32 -2145888999, i32 -2145888974, i32 -2145888910, i32 -2145888794, i32 -2145888769, i32 -2145888744}
!1631 = !DILocation(line: 307, column: 4, scope: !1210)
!1632 = !{!1633, !1283, i64 0}
!1633 = !{!"ip4_addr", !1283, i64 0}
!1634 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 311, column: 3, scope: !1215)
!1636 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1635)
!1637 = !DILocation(line: 311, column: 3, scope: !1215)
!1638 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 311, column: 3, scope: !1215)
!1640 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1639)
!1641 = !DILocation(line: 311, column: 3, scope: !1216)
!1642 = !DILocation(line: 311, column: 3, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 311, column: 3)
!1644 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 311, column: 3, scope: !1212)
!1647 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1645)
!1648 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1646)
!1649 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1646)
!1650 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1646)
!1651 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1646)
!1652 = !DILocation(line: 311, column: 3, scope: !1212)
!1653 = !{i32 -2145882541, i32 -2145882528, i32 -2145882503, i32 -2145882479, i32 -2145882454, i32 -2145882379, i32 -2145882354, i32 -2145882210, i32 -2145879872, i32 -2145879783, i32 -2145879662, i32 -2145879567, i32 -2145879466, i32 -2145879439, i32 -2145879356, i32 -2145879267, i32 -2145879146, i32 -2145879046, i32 -2145878940, i32 -2145878832, i32 -2145881880, i32 -2145881827, i32 -2145881796, i32 -2145881765, i32 -2145881744, i32 -2145881722, i32 -2145881673, i32 -2145881652, i32 -2145881549, i32 -2145878749, i32 -2145878660, i32 -2145878539, i32 -2145878440, i32 -2145878334, i32 -2145878232, i32 -2145878199, i32 -2145878126, i32 -2145878058, i32 -2145881289, i32 -2145881236, i32 -2145881205, i32 -2145881174, i32 -2145881153, i32 -2145881131, i32 -2145881082, i32 -2145881061, i32 -2145877993, i32 -2145877904, i32 -2145877783, i32 -2145877684, i32 -2145877578, i32 -2145877476, i32 -2145877443, i32 -2145877360, i32 -2145877271, i32 -2145877150, i32 -2145877050, i32 -2145877024, i32 -2145876921, i32 -2145876895, i32 -2145880803, i32 -2145880736, i32 -2145880711, i32 -2145880647, i32 -2145880531, i32 -2145880506, i32 -2145880481}
!1654 = !DILocation(line: 314, column: 7, scope: !1227)
!1655 = !DILocation(line: 314, column: 7, scope: !1146)
!1656 = !DILocation(line: 223, column: 13, scope: !2)
!1657 = !DILocation(line: 315, column: 8, scope: !1225)
!1658 = !DILocation(line: 315, column: 36, scope: !1225)
!1659 = !DILocation(line: 315, column: 8, scope: !1226)
!1660 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 316, column: 5, scope: !1222)
!1662 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1661)
!1663 = !DILocation(line: 316, column: 5, scope: !1222)
!1664 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 316, column: 5, scope: !1222)
!1666 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1665)
!1667 = !DILocation(line: 316, column: 5, scope: !1223)
!1668 = !DILocation(line: 316, column: 5, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 316, column: 5)
!1670 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 316, column: 5, scope: !1219)
!1673 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1671)
!1674 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1672)
!1675 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1672)
!1676 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1672)
!1677 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1672)
!1678 = !DILocation(line: 316, column: 5, scope: !1219)
!1679 = !{i32 -2145874162, i32 -2145874149, i32 -2145874124, i32 -2145874100, i32 -2145874075, i32 -2145874000, i32 -2145873975, i32 -2145873831, i32 -2145871290, i32 -2145871201, i32 -2145871080, i32 -2145870985, i32 -2145870884, i32 -2145870857, i32 -2145870774, i32 -2145870685, i32 -2145870564, i32 -2145870464, i32 -2145870358, i32 -2145870250, i32 -2145873539, i32 -2145873486, i32 -2145873455, i32 -2145873424, i32 -2145873403, i32 -2145873381, i32 -2145873332, i32 -2145873311, i32 -2145870167, i32 -2145870078, i32 -2145869957, i32 -2145869858, i32 -2145869752, i32 -2145869650, i32 -2145869617, i32 -2145869544, i32 -2145869476, i32 -2145872934, i32 -2145872881, i32 -2145872850, i32 -2145872819, i32 -2145872798, i32 -2145872776, i32 -2145872727, i32 -2145872706, i32 -2145869431, i32 -2145869342, i32 -2145869221, i32 -2145869122, i32 -2145869016, i32 -2145868914, i32 -2145868881, i32 -2145868798, i32 -2145868709, i32 -2145868588, i32 -2145868488, i32 -2145868462, i32 -2145868359, i32 -2145868333, i32 -2145872448, i32 -2145872381, i32 -2145872356, i32 -2145872292, i32 -2145872176, i32 -2145872151, i32 -2145872126}
!1680 = !DILocation(line: 0, scope: !1146)
!1681 = !DILocation(line: 324, column: 23, scope: !1146)
!1682 = !DILocation(line: 324, column: 8, scope: !1146)
!1683 = !DILocation(line: 213, column: 16, scope: !2)
!1684 = !DILocation(line: 333, column: 8, scope: !1235)
!1685 = !DILocation(line: 333, column: 7, scope: !1146)
!1686 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 334, column: 4, scope: !1232)
!1688 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1687)
!1689 = !DILocation(line: 334, column: 4, scope: !1232)
!1690 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 334, column: 4, scope: !1232)
!1692 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1691)
!1693 = !DILocation(line: 334, column: 4, scope: !1233)
!1694 = !DILocation(line: 334, column: 4, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 334, column: 4)
!1696 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 334, column: 4, scope: !1229)
!1699 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1697)
!1700 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1698)
!1701 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1698)
!1702 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1698)
!1703 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1698)
!1704 = !DILocation(line: 334, column: 4, scope: !1229)
!1705 = !{i32 -2145865520, i32 -2145865507, i32 -2145865482, i32 -2145865458, i32 -2145865433, i32 -2145865358, i32 -2145865333, i32 -2145865189, i32 -2145862622, i32 -2145862533, i32 -2145862412, i32 -2145862317, i32 -2145862216, i32 -2145862189, i32 -2145862106, i32 -2145862017, i32 -2145861896, i32 -2145861796, i32 -2145861690, i32 -2145861582, i32 -2145864897, i32 -2145864844, i32 -2145864813, i32 -2145864782, i32 -2145864761, i32 -2145864739, i32 -2145864690, i32 -2145864669, i32 -2145861499, i32 -2145861410, i32 -2145861289, i32 -2145861190, i32 -2145861084, i32 -2145860982, i32 -2145860949, i32 -2145860876, i32 -2145860808, i32 -2145864292, i32 -2145864239, i32 -2145864208, i32 -2145864177, i32 -2145864156, i32 -2145864134, i32 -2145864085, i32 -2145864064, i32 -2145860763, i32 -2145860674, i32 -2145860553, i32 -2145860454, i32 -2145860348, i32 -2145860246, i32 -2145860213, i32 -2145860130, i32 -2145860041, i32 -2145859920, i32 -2145859820, i32 -2145859794, i32 -2145859691, i32 -2145859665, i32 -2145863806, i32 -2145863739, i32 -2145863714, i32 -2145863650, i32 -2145863534, i32 -2145863509, i32 -2145863484}
!1706 = !DILocation(line: 341, column: 7, scope: !1243)
!1707 = !DILocation(line: 341, column: 7, scope: !1146)
!1708 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 342, column: 4, scope: !1240)
!1710 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1709)
!1711 = !DILocation(line: 342, column: 4, scope: !1240)
!1712 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 342, column: 4, scope: !1240)
!1714 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1713)
!1715 = !DILocation(line: 342, column: 4, scope: !1241)
!1716 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 342, column: 4, scope: !1237)
!1719 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1717)
!1720 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1718)
!1721 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1718)
!1722 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1718)
!1723 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1718)
!1724 = !DILocation(line: 342, column: 4, scope: !1237)
!1725 = !{!1726, !1284, i64 264}
!1726 = !{!"netif", !1321, i64 0, !1727, i64 8, !1727, i64 32, !1727, i64 56, !1284, i64 80, !1284, i64 152, !1284, i64 156, !1284, i64 168, !1321, i64 184, !1321, i64 192, !1321, i64 200, !1321, i64 208, !1321, i64 216, !1321, i64 224, !1321, i64 232, !1284, i64 240, !1728, i64 248, !1728, i64 250, !1728, i64 252, !1284, i64 254, !1284, i64 260, !1284, i64 261, !1284, i64 262, !1284, i64 264, !1284, i64 265, !1284, i64 266, !1321, i64 272}
!1727 = !{!"ip_addr", !1284, i64 0, !1284, i64 20}
!1728 = !{!"short", !1284, i64 0}
!1729 = !{i32 -2145856476, i32 -2145856463, i32 -2145856438, i32 -2145856414, i32 -2145856389, i32 -2145856314, i32 -2145856289, i32 -2145856145, i32 -2145856120, i32 -2145853411, i32 -2145853322, i32 -2145853201, i32 -2145853106, i32 -2145853005, i32 -2145852978, i32 -2145852895, i32 -2145852806, i32 -2145852685, i32 -2145852585, i32 -2145852479, i32 -2145852371, i32 -2145855783, i32 -2145855730, i32 -2145855699, i32 -2145855668, i32 -2145855647, i32 -2145855625, i32 -2145855576, i32 -2145855555, i32 -2145855452, i32 -2145855420, i32 -2145852288, i32 -2145852199, i32 -2145852078, i32 -2145851979, i32 -2145851873, i32 -2145851771, i32 -2145851738, i32 -2145851665, i32 -2145851597, i32 -2145855160, i32 -2145855107, i32 -2145855076, i32 -2145855045, i32 -2145855024, i32 -2145855002, i32 -2145854953, i32 -2145854932, i32 -2145851551, i32 -2145851462, i32 -2145851341, i32 -2145851242, i32 -2145851136, i32 -2145851034, i32 -2145851001, i32 -2145850918, i32 -2145850829, i32 -2145850708, i32 -2145850608, i32 -2145850582, i32 -2145850479, i32 -2145850453, i32 -2145854674, i32 -2145854649, i32 -2145854582, i32 -2145854557, i32 -2145854493, i32 -2145854377, i32 -2145854352, i32 -2145854327}
!1730 = !DILocation(line: 346, column: 4, scope: !1242)
!1731 = !DILocation(line: 348, column: 3, scope: !1242)
!1732 = !DILocation(line: 349, column: 3, scope: !1146)
!1733 = !DILocation(line: 360, column: 2, scope: !1147)
!1734 = !DILocation(line: 0, scope: !2)
!1735 = !DILocation(line: 254, column: 40, scope: !1147)
!1736 = distinct !{!1736, !1444, !1737}
!1737 = !DILocation(line: 360, column: 2, scope: !1148)
!1738 = !DILocation(line: 363, column: 10, scope: !2)
!1739 = !DILocalVariable(name: "a", arg: 1, scope: !1740, file: !176, line: 237, type: !174)
!1740 = distinct !DISubprogram(name: "uk_free", scope: !176, file: !176, line: 237, type: !206, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1741)
!1741 = !{!1739, !1742}
!1742 = !DILocalVariable(name: "ptr", arg: 2, scope: !1740, file: !176, line: 237, type: !53)
!1743 = !DILocation(line: 237, column: 45, scope: !1740, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 363, column: 2, scope: !2)
!1745 = !DILocation(line: 237, column: 54, scope: !1740, inlinedAt: !1744)
!1746 = !DILocalVariable(name: "a", arg: 1, scope: !1747, file: !176, line: 231, type: !174)
!1747 = distinct !DISubprogram(name: "uk_do_free", scope: !176, file: !176, line: 231, type: !206, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1748)
!1748 = !{!1746, !1749}
!1749 = !DILocalVariable(name: "ptr", arg: 2, scope: !1747, file: !176, line: 231, type: !53)
!1750 = !DILocation(line: 231, column: 48, scope: !1747, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 239, column: 2, scope: !1740, inlinedAt: !1744)
!1752 = !DILocation(line: 231, column: 57, scope: !1747, inlinedAt: !1751)
!1753 = !DILocation(line: 233, column: 2, scope: !1754, inlinedAt: !1751)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !176, line: 233, column: 2)
!1755 = distinct !DILexicalBlock(scope: !1747, file: !176, line: 233, column: 2)
!1756 = !DILocation(line: 233, column: 2, scope: !1755, inlinedAt: !1751)
!1757 = !DILocation(line: 233, column: 2, scope: !1758, inlinedAt: !1751)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !176, line: 233, column: 2)
!1759 = !DILocation(line: 234, column: 5, scope: !1747, inlinedAt: !1751)
!1760 = !DILocation(line: 234, column: 2, scope: !1747, inlinedAt: !1751)
!1761 = !DILocation(line: 366, column: 1, scope: !2)
!1762 = !DILocation(line: 365, column: 2, scope: !2)
!1763 = distinct !DISubprogram(name: "uk_pr_info", scope: !720, file: !720, line: 170, type: !721, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1764)
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "fmt", arg: 1, scope: !1763, file: !720, line: 170, type: !61)
!1766 = !DILocalVariable(name: "argp", scope: !1763, file: !720, line: 172, type: !726)
!1767 = !DILocation(line: 170, column: 43, scope: !1763)
!1768 = !DILocation(line: 176, column: 1, scope: !1763)
!1769 = distinct !DISubprogram(name: "_lwip_init_done", scope: !3, file: !3, line: 175, type: !236, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1770)
!1770 = !{!1771, !1772}
!1771 = !DILocalVariable(name: "arg", arg: 1, scope: !1769, file: !3, line: 175, type: !53)
!1772 = !DILocalVariable(name: "tid", scope: !1773, file: !3, line: 177, type: !73)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 177, column: 2)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 177, column: 2)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 177, column: 2)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 177, column: 2)
!1777 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 177, column: 2)
!1778 = !DILocation(line: 175, column: 35, scope: !1769)
!1779 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 177, column: 2, scope: !1776)
!1781 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1780)
!1782 = !DILocation(line: 177, column: 2, scope: !1776)
!1783 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 177, column: 2, scope: !1776)
!1785 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1784)
!1786 = !DILocation(line: 177, column: 2, scope: !1777)
!1787 = !DILocalVariable(name: "s", arg: 1, scope: !1788, file: !713, line: 194, type: !1791)
!1788 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !713, file: !713, line: 194, type: !1789, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1792)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!1792 = !{!1787, !1793, !1794}
!1793 = !DILocalVariable(name: "irqf", scope: !1788, file: !713, line: 196, type: !48)
!1794 = !DILocalVariable(name: "wq", scope: !1788, file: !713, line: 209, type: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!1797 = !DILocation(line: 194, column: 57, scope: !1788, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 177, column: 2, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 177, column: 2)
!1800 = !DILocation(line: 200, column: 9, scope: !1788, inlinedAt: !1798)
!1801 = !DILocation(line: 196, column: 16, scope: !1788, inlinedAt: !1798)
!1802 = !DILocation(line: 201, column: 2, scope: !1788, inlinedAt: !1798)
!1803 = !{!1804, !1805, i64 0}
!1804 = !{!"uk_semaphore", !1805, i64 0, !1806, i64 8}
!1805 = !{!"long", !1284, i64 0}
!1806 = !{!"uk_waitq", !1321, i64 0, !1321, i64 8}
!1807 = !DILocation(line: 209, column: 28, scope: !1788, inlinedAt: !1798)
!1808 = !DILocalVariable(name: "wq", arg: 1, scope: !1809, file: !1810, line: 99, type: !1813)
!1809 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !1810, file: !1810, line: 99, type: !1811, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1814)
!1810 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1813}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1814 = !{!1808, !1815, !1816, !1817}
!1815 = !DILocalVariable(name: "flags", scope: !1809, file: !1810, line: 101, type: !48)
!1816 = !DILocalVariable(name: "curr", scope: !1809, file: !1810, line: 102, type: !88)
!1817 = !DILocalVariable(name: "tmp", scope: !1809, file: !1810, line: 102, type: !88)
!1818 = !DILocation(line: 99, column: 40, scope: !1809, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 210, column: 2, scope: !1788, inlinedAt: !1798)
!1820 = !DILocation(line: 104, column: 10, scope: !1809, inlinedAt: !1819)
!1821 = !DILocation(line: 101, column: 16, scope: !1809, inlinedAt: !1819)
!1822 = !DILocation(line: 105, column: 2, scope: !1823, inlinedAt: !1819)
!1823 = distinct !DILexicalBlock(scope: !1809, file: !1810, line: 105, column: 2)
!1824 = !{!1806, !1321, i64 0}
!1825 = !DILocation(line: 102, column: 25, scope: !1809, inlinedAt: !1819)
!1826 = !DILocation(line: 105, column: 2, scope: !1827, inlinedAt: !1819)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !1810, line: 105, column: 2)
!1828 = !{!1829, !1321, i64 16}
!1829 = !{!"uk_waitq_entry", !1283, i64 0, !1321, i64 8, !1830, i64 16}
!1830 = !{!"", !1321, i64 0}
!1831 = !DILocation(line: 102, column: 32, scope: !1809, inlinedAt: !1819)
!1832 = !DILocation(line: 106, column: 24, scope: !1827, inlinedAt: !1819)
!1833 = !{!1829, !1321, i64 8}
!1834 = !DILocation(line: 106, column: 3, scope: !1827, inlinedAt: !1819)
!1835 = distinct !{!1835, !1836, !1837}
!1836 = !DILocation(line: 105, column: 2, scope: !1823)
!1837 = !DILocation(line: 106, column: 30, scope: !1823)
!1838 = !DILocation(line: 107, column: 2, scope: !1809, inlinedAt: !1819)
!1839 = !DILocation(line: 211, column: 2, scope: !1788, inlinedAt: !1798)
!1840 = !DILocation(line: 177, column: 2, scope: !1799)
!1841 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 177, column: 2, scope: !1773)
!1844 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1842)
!1845 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1843)
!1846 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1843)
!1847 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1843)
!1848 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1843)
!1849 = !DILocation(line: 177, column: 2, scope: !1773)
!1850 = !{i32 -2146002262, i32 -2146002249, i32 -2146002224, i32 -2146002200, i32 -2146002175, i32 -2146002100, i32 -2146002075, i32 -2146001931, i32 -2145999709, i32 -2145999620, i32 -2145999499, i32 -2145999404, i32 -2145999303, i32 -2145999276, i32 -2145995132, i32 -2145995043, i32 -2145994922, i32 -2145994822, i32 -2145994716, i32 -2145994608, i32 -2146001643, i32 -2146001590, i32 -2146001559, i32 -2146001528, i32 -2146001507, i32 -2146001485, i32 -2146001436, i32 -2146001415, i32 -2145994525, i32 -2145994436, i32 -2145994315, i32 -2145994216, i32 -2145994110, i32 -2145994008, i32 -2145993975, i32 -2145993902, i32 -2145993834, i32 -2146001041, i32 -2146000988, i32 -2146000957, i32 -2146000926, i32 -2146000905, i32 -2146000883, i32 -2146000834, i32 -2146000813, i32 -2145993783, i32 -2145993694, i32 -2145993573, i32 -2145993474, i32 -2145993368, i32 -2145993266, i32 -2145993233, i32 -2145993150, i32 -2145993061, i32 -2145992940, i32 -2145992840, i32 -2145992814, i32 -2145992711, i32 -2145992685, i32 -2146000555, i32 -2146000488, i32 -2146000463, i32 -2146000399, i32 -2146000283, i32 -2146000258, i32 -2146000233}
!1851 = !DILocation(line: 178, column: 1, scope: !1769)
!1852 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !713, file: !713, line: 58, type: !1789, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1853)
!1853 = !{!1854, !1855, !1856, !1861, !1862, !1863}
!1854 = !DILocalVariable(name: "s", arg: 1, scope: !1852, file: !713, line: 58, type: !1791)
!1855 = !DILocalVariable(name: "irqf", scope: !1852, file: !713, line: 60, type: !48)
!1856 = !DILocalVariable(name: "__current", scope: !1857, file: !713, line: 66, type: !56)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !713, line: 65, column: 6)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !713, line: 64, column: 11)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !713, line: 64, column: 2)
!1860 = distinct !DILexicalBlock(scope: !1852, file: !713, line: 64, column: 2)
!1861 = !DILocalVariable(name: "flags", scope: !1857, file: !713, line: 67, type: !48)
!1862 = !DILocalVariable(name: "__cur", scope: !1857, file: !713, line: 68, type: !56)
!1863 = !DILocalVariable(name: "__wait", scope: !1857, file: !713, line: 68, type: !88)
!1864 = !DILocation(line: 58, column: 59, scope: !1852)
!1865 = !DILocation(line: 62, column: 2, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !713, line: 62, column: 2)
!1867 = distinct !DILexicalBlock(scope: !1852, file: !713, line: 62, column: 2)
!1868 = !DILocation(line: 62, column: 2, scope: !1867)
!1869 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 154, column: 21, scope: !1871, inlinedAt: !1877)
!1871 = distinct !DISubprogram(name: "uk_thread_current", scope: !58, file: !58, line: 151, type: !1872, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!56}
!1874 = !{!1875, !1876}
!1875 = !DILocalVariable(name: "current", scope: !1871, file: !58, line: 153, type: !55)
!1876 = !DILocalVariable(name: "sp", scope: !1871, file: !58, line: 154, type: !48)
!1877 = distinct !DILocation(line: 68, column: 4, scope: !1857)
!1878 = !DILocation(line: 62, column: 2, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1866, file: !713, line: 62, column: 2)
!1880 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1870)
!1881 = !DILocation(line: 154, column: 16, scope: !1871, inlinedAt: !1877)
!1882 = !DILocation(line: 153, column: 21, scope: !1871, inlinedAt: !1877)
!1883 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 49, column: 21, scope: !1288, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 68, column: 4, scope: !1857)
!1886 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1884)
!1887 = !DILocation(line: 49, column: 16, scope: !1288, inlinedAt: !1885)
!1888 = !DILocation(line: 50, column: 19, scope: !1288, inlinedAt: !1885)
!1889 = !DILocation(line: 50, column: 11, scope: !1288, inlinedAt: !1885)
!1890 = !DILocation(line: 50, column: 9, scope: !1288, inlinedAt: !1885)
!1891 = !DILocation(line: 68, column: 4, scope: !1857)
!1892 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 154, column: 21, scope: !1871, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 68, column: 4, scope: !1857)
!1895 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1893)
!1896 = !DILocation(line: 154, column: 16, scope: !1871, inlinedAt: !1894)
!1897 = !DILocation(line: 156, column: 38, scope: !1871, inlinedAt: !1894)
!1898 = !DILocation(line: 158, column: 9, scope: !1871, inlinedAt: !1894)
!1899 = !DILocation(line: 153, column: 21, scope: !1871, inlinedAt: !1894)
!1900 = !DILocation(line: 69, column: 11, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1857, file: !713, line: 69, column: 8)
!1902 = !DILocation(line: 69, column: 17, scope: !1901)
!1903 = !DILocation(line: 69, column: 8, scope: !1857)
!1904 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 154, column: 21, scope: !1871, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 72, column: 17, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !713, line: 71, column: 13)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !713, line: 71, column: 4)
!1909 = distinct !DILexicalBlock(scope: !1857, file: !713, line: 71, column: 4)
!1910 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1905)
!1911 = !DILocation(line: 154, column: 16, scope: !1871, inlinedAt: !1906)
!1912 = !DILocation(line: 156, column: 38, scope: !1871, inlinedAt: !1906)
!1913 = !DILocation(line: 156, column: 12, scope: !1871, inlinedAt: !1906)
!1914 = !DILocation(line: 153, column: 21, scope: !1871, inlinedAt: !1906)
!1915 = !DILocation(line: 158, column: 9, scope: !1871, inlinedAt: !1906)
!1916 = !DILocation(line: 66, column: 22, scope: !1857)
!1917 = !DILocation(line: 74, column: 13, scope: !1907)
!1918 = !DILocation(line: 67, column: 18, scope: !1857)
!1919 = !DILocalVariable(name: "wq", arg: 1, scope: !1920, file: !1810, line: 58, type: !1813)
!1920 = distinct !DISubprogram(name: "uk_waitq_add", scope: !1810, file: !1810, line: 58, type: !1921, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1813, !88}
!1923 = !{!1919, !1924}
!1924 = !DILocalVariable(name: "entry", arg: 2, scope: !1920, file: !1810, line: 59, type: !88)
!1925 = !DILocation(line: 58, column: 36, scope: !1920, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 75, column: 5, scope: !1907)
!1927 = !DILocation(line: 59, column: 26, scope: !1920, inlinedAt: !1926)
!1928 = !DILocation(line: 61, column: 14, scope: !1929, inlinedAt: !1926)
!1929 = distinct !DILexicalBlock(scope: !1920, file: !1810, line: 61, column: 6)
!1930 = !{!1829, !1283, i64 0}
!1931 = !DILocation(line: 61, column: 7, scope: !1929, inlinedAt: !1926)
!1932 = !DILocation(line: 61, column: 6, scope: !1920, inlinedAt: !1926)
!1933 = !DILocation(line: 62, column: 3, scope: !1934, inlinedAt: !1926)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1810, line: 62, column: 3)
!1935 = distinct !DILexicalBlock(scope: !1929, file: !1810, line: 61, column: 23)
!1936 = !{!1806, !1321, i64 8}
!1937 = !DILocation(line: 63, column: 18, scope: !1935, inlinedAt: !1926)
!1938 = !DILocation(line: 64, column: 2, scope: !1935, inlinedAt: !1926)
!1939 = !DILocalVariable(name: "thread", arg: 1, scope: !1940, file: !58, line: 122, type: !56)
!1940 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !58, file: !58, line: 122, type: !1941, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !56, !76}
!1943 = !{!1939, !1944}
!1944 = !DILocalVariable(name: "time", arg: 2, scope: !1940, file: !58, line: 122, type: !76)
!1945 = !DILocation(line: 122, column: 64, scope: !1940, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 76, column: 5, scope: !1907)
!1947 = !DILocation(line: 122, column: 80, scope: !1940, inlinedAt: !1946)
!1948 = !DILocation(line: 124, column: 10, scope: !1940, inlinedAt: !1946)
!1949 = !DILocation(line: 124, column: 22, scope: !1940, inlinedAt: !1946)
!1950 = !{!1951, !1805, i64 56}
!1951 = !{!"uk_thread", !1321, i64 0, !1321, i64 8, !1321, i64 16, !1321, i64 24, !1952, i64 32, !1283, i64 48, !1805, i64 56, !1953, i64 64, !1806, i64 72, !1321, i64 88, !1321, i64 96, !1283, i64 104, !1321, i64 112, !1321, i64 120}
!1952 = !{!"", !1321, i64 0, !1321, i64 8}
!1953 = !{!"_Bool", !1284, i64 0}
!1954 = !DILocalVariable(name: "thread", arg: 1, scope: !1955, file: !58, line: 183, type: !56)
!1955 = distinct !DISubprogram(name: "clear_runnable", scope: !58, file: !58, line: 183, type: !1956, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !56}
!1958 = !{!1954}
!1959 = !DILocation(line: 183, column: 53, scope: !1955, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 79, column: 5, scope: !1907)
!1961 = !DILocation(line: 185, column: 10, scope: !1955, inlinedAt: !1960)
!1962 = !DILocation(line: 185, column: 16, scope: !1955, inlinedAt: !1960)
!1963 = !{!1951, !1283, i64 48}
!1964 = !DILocalVariable(name: "t", arg: 1, scope: !1965, file: !102, line: 151, type: !56)
!1965 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !102, file: !102, line: 151, type: !1956, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1966)
!1966 = !{!1964}
!1967 = !DILocation(line: 151, column: 62, scope: !1965, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 81, column: 5, scope: !1907)
!1969 = !DILocation(line: 153, column: 2, scope: !1970, inlinedAt: !1968)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !102, line: 153, column: 2)
!1971 = distinct !DILexicalBlock(scope: !1965, file: !102, line: 153, column: 2)
!1972 = !DILocation(line: 153, column: 2, scope: !1971, inlinedAt: !1968)
!1973 = !DILocation(line: 153, column: 2, scope: !1974, inlinedAt: !1968)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !102, line: 153, column: 2)
!1975 = !DILocation(line: 154, column: 6, scope: !1965, inlinedAt: !1968)
!1976 = !{!1951, !1321, i64 88}
!1977 = !DILocation(line: 154, column: 14, scope: !1965, inlinedAt: !1968)
!1978 = !{!1979, !1321, i64 24}
!1979 = !{!"uk_sched", !1321, i64 0, !1321, i64 8, !1321, i64 16, !1321, i64 24, !1321, i64 32, !1321, i64 40, !1321, i64 48, !1321, i64 56, !1321, i64 64, !1953, i64 72, !1951, i64 80, !1980, i64 208, !1981, i64 224, !1321, i64 248, !1321, i64 256, !1321, i64 264}
!1980 = !{!"uk_thread_list", !1321, i64 0, !1321, i64 8}
!1981 = !{!"ukplat_ctx_callbacks", !1321, i64 0, !1321, i64 8, !1321, i64 16}
!1982 = !DILocation(line: 154, column: 2, scope: !1965, inlinedAt: !1968)
!1983 = !DILocation(line: 83, column: 5, scope: !1907)
!1984 = !DILocation(line: 84, column: 12, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1907, file: !713, line: 84, column: 9)
!1986 = !DILocation(line: 84, column: 18, scope: !1985)
!1987 = !DILocation(line: 84, column: 9, scope: !1907)
!1988 = !DILocation(line: 120, column: 2, scope: !1265, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 154, column: 21, scope: !1871, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 117, column: 30, scope: !1991, inlinedAt: !1995)
!1991 = distinct !DISubprogram(name: "uk_sched_yield", scope: !102, file: !102, line: 114, type: !434, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1992)
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "s", scope: !1991, file: !102, line: 116, type: !100)
!1994 = !DILocalVariable(name: "current", scope: !1991, file: !102, line: 117, type: !56)
!1995 = distinct !DILocation(line: 86, column: 5, scope: !1907)
!1996 = !DILocation(line: 118, column: 16, scope: !1265, inlinedAt: !1989)
!1997 = !DILocation(line: 154, column: 16, scope: !1871, inlinedAt: !1990)
!1998 = !DILocation(line: 156, column: 38, scope: !1871, inlinedAt: !1990)
!1999 = !DILocation(line: 156, column: 12, scope: !1871, inlinedAt: !1990)
!2000 = !DILocation(line: 153, column: 21, scope: !1871, inlinedAt: !1990)
!2001 = !DILocation(line: 158, column: 9, scope: !1871, inlinedAt: !1990)
!2002 = !DILocation(line: 117, column: 20, scope: !1991, inlinedAt: !1995)
!2003 = !DILocation(line: 119, column: 2, scope: !2004, inlinedAt: !1995)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !102, line: 119, column: 2)
!2005 = distinct !DILexicalBlock(scope: !1991, file: !102, line: 119, column: 2)
!2006 = !DILocation(line: 119, column: 2, scope: !2005, inlinedAt: !1995)
!2007 = !DILocation(line: 119, column: 2, scope: !2008, inlinedAt: !1995)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !102, line: 119, column: 2)
!2009 = !DILocation(line: 121, column: 15, scope: !1991, inlinedAt: !1995)
!2010 = !DILocation(line: 116, column: 19, scope: !1991, inlinedAt: !1995)
!2011 = !DILocation(line: 122, column: 2, scope: !2012, inlinedAt: !1995)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !102, line: 122, column: 2)
!2013 = distinct !DILexicalBlock(scope: !1991, file: !102, line: 122, column: 2)
!2014 = !DILocation(line: 122, column: 2, scope: !2013, inlinedAt: !1995)
!2015 = !DILocation(line: 122, column: 2, scope: !2016, inlinedAt: !1995)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !102, line: 122, column: 2)
!2017 = !DILocation(line: 123, column: 5, scope: !1991, inlinedAt: !1995)
!2018 = !{!1979, !1321, i64 0}
!2019 = !DILocation(line: 123, column: 2, scope: !1991, inlinedAt: !1995)
!2020 = !DILocation(line: 71, column: 4, scope: !1908)
!2021 = distinct !{!2021, !2022, !2023}
!2022 = !DILocation(line: 71, column: 4, scope: !1909)
!2023 = !DILocation(line: 87, column: 4, scope: !1909)
!2024 = !DILocation(line: 88, column: 12, scope: !1857)
!2025 = !DILocation(line: 90, column: 4, scope: !1857)
!2026 = !DILocalVariable(name: "wq", arg: 1, scope: !2027, file: !1810, line: 68, type: !1813)
!2027 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !1810, file: !1810, line: 68, type: !1921, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2028)
!2028 = !{!2026, !2029, !2030}
!2029 = !DILocalVariable(name: "entry", arg: 2, scope: !2027, file: !1810, line: 69, type: !88)
!2030 = !DILocalVariable(name: "curelm", scope: !2031, file: !1810, line: 72, type: !88)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !1810, line: 72, column: 3)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !1810, line: 72, column: 3)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !1810, line: 72, column: 3)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !1810, line: 71, column: 22)
!2035 = distinct !DILexicalBlock(scope: !2027, file: !1810, line: 71, column: 6)
!2036 = !DILocation(line: 68, column: 39, scope: !2027, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 91, column: 4, scope: !1857)
!2038 = !DILocation(line: 69, column: 26, scope: !2027, inlinedAt: !2037)
!2039 = !DILocation(line: 71, column: 13, scope: !2035, inlinedAt: !2037)
!2040 = !DILocation(line: 71, column: 6, scope: !2035, inlinedAt: !2037)
!2041 = !DILocation(line: 71, column: 6, scope: !2027, inlinedAt: !2037)
!2042 = !DILocation(line: 72, column: 3, scope: !2032, inlinedAt: !2037)
!2043 = !DILocation(line: 72, column: 3, scope: !2033, inlinedAt: !2037)
!2044 = !DILocation(line: 72, column: 3, scope: !2045, inlinedAt: !2037)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1810, line: 72, column: 3)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1810, line: 72, column: 3)
!2047 = distinct !DILexicalBlock(scope: !2032, file: !1810, line: 72, column: 3)
!2048 = !DILocation(line: 72, column: 3, scope: !2046, inlinedAt: !2037)
!2049 = !DILocation(line: 72, column: 3, scope: !2031, inlinedAt: !2037)
!2050 = distinct !{!2050, !2051, !2051}
!2051 = !DILocation(line: 72, column: 3, scope: !2031)
!2052 = !DILocation(line: 72, column: 3, scope: !2053, inlinedAt: !2037)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1810, line: 72, column: 3)
!2054 = distinct !DILexicalBlock(scope: !2031, file: !1810, line: 72, column: 3)
!2055 = !DILocation(line: 72, column: 3, scope: !2054, inlinedAt: !2037)
!2056 = !DILocation(line: 73, column: 18, scope: !2034, inlinedAt: !2037)
!2057 = !DILocation(line: 74, column: 2, scope: !2034, inlinedAt: !2037)
!2058 = !DILocation(line: 92, column: 4, scope: !1857)
!2059 = !DILocation(line: 93, column: 3, scope: !1858)
!2060 = !DILocation(line: 95, column: 10, scope: !1858)
!2061 = !DILocation(line: 60, column: 16, scope: !1852)
!2062 = !DILocation(line: 96, column: 10, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1858, file: !713, line: 96, column: 7)
!2064 = !DILocation(line: 96, column: 16, scope: !2063)
!2065 = !DILocation(line: 96, column: 7, scope: !1858)
!2066 = !DILocation(line: 98, column: 3, scope: !1858)
!2067 = !DILocation(line: 64, column: 2, scope: !1859)
!2068 = distinct !{!2068, !2069, !2070}
!2069 = !DILocation(line: 64, column: 2, scope: !1860)
!2070 = !DILocation(line: 99, column: 2, scope: !1860)
!2071 = !DILocation(line: 100, column: 2, scope: !1852)
!2072 = !DILocation(line: 104, column: 2, scope: !1852)
!2073 = !DILocation(line: 105, column: 1, scope: !1852)
!2074 = !DILocation(line: 61, column: 47, scope: !743)
!2075 = !{!1728, !1728, i64 0}
!2076 = !DILocation(line: 61, column: 70, scope: !743)
!2077 = !DILocation(line: 62, column: 38, scope: !743)
!2078 = !DILocation(line: 64, column: 2, scope: !743)
!2079 = !DILocation(line: 64, column: 7, scope: !743)
!2080 = !DILocation(line: 65, column: 2, scope: !743)
!2081 = !DILocation(line: 65, column: 8, scope: !743)
!2082 = !DILocation(line: 65, column: 38, scope: !743)
!2083 = !DILocation(line: 65, column: 66, scope: !743)
!2084 = !DILocation(line: 65, column: 28, scope: !743)
!2085 = !DILocation(line: 66, column: 2, scope: !743)
!2086 = !DILocation(line: 66, column: 7, scope: !743)
!2087 = !DILocation(line: 67, column: 2, scope: !743)
!2088 = !DILocation(line: 67, column: 8, scope: !743)
!2089 = !DILocation(line: 67, column: 38, scope: !743)
!2090 = !DILocation(line: 67, column: 66, scope: !743)
!2091 = !DILocation(line: 67, column: 28, scope: !743)
!2092 = !DILocation(line: 68, column: 2, scope: !743)
!2093 = !DILocation(line: 68, column: 7, scope: !743)
!2094 = !DILocation(line: 69, column: 2, scope: !743)
!2095 = !DILocation(line: 69, column: 8, scope: !743)
!2096 = !DILocation(line: 69, column: 36, scope: !743)
!2097 = !DILocation(line: 69, column: 62, scope: !743)
!2098 = !DILocation(line: 69, column: 26, scope: !743)
!2099 = !DILocation(line: 71, column: 6, scope: !764)
!2100 = !DILocation(line: 71, column: 13, scope: !764)
!2101 = !DILocation(line: 71, column: 6, scope: !743)
!2102 = !DILocation(line: 72, column: 3, scope: !763)
!2103 = !DILocation(line: 72, column: 3, scope: !761)
!2104 = !DILocation(line: 72, column: 3, scope: !762)
!2105 = !DILocation(line: 72, column: 3, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 72, column: 3)
!2107 = distinct !DILexicalBlock(scope: !761, file: !3, line: 72, column: 3)
!2108 = !DILocation(line: 72, column: 3, scope: !2107)
!2109 = !DILocation(line: 72, column: 3, scope: !760)
!2110 = !DILocation(line: 72, column: 3, scope: !759)
!2111 = !DILocation(line: 72, column: 3, scope: !758)
!2112 = !{!1805, !1805, i64 0}
!2113 = !DILocation(line: 72, column: 3, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !758, file: !3, line: 72, column: 3)
!2115 = !{i32 -2146067915, i32 -2146067902, i32 -2146067877, i32 -2146067853, i32 -2146067828, i32 -2146067753, i32 -2146067728, i32 -2146067584, i32 -2146067559, i32 -2146064896, i32 -2146064807, i32 -2146064686, i32 -2146064591, i32 -2146064490, i32 -2146064463, i32 -2146064380, i32 -2146064291, i32 -2146064170, i32 -2146064070, i32 -2146063964, i32 -2146063856, i32 -2146067222, i32 -2146067169, i32 -2146067138, i32 -2146067107, i32 -2146067086, i32 -2146067064, i32 -2146067015, i32 -2146066994, i32 -2146066891, i32 -2146066859, i32 -2146063773, i32 -2146063684, i32 -2146063563, i32 -2146063464, i32 -2146063358, i32 -2146063256, i32 -2146063223, i32 -2146063150, i32 -2146063082, i32 -2146066599, i32 -2146066546, i32 -2146066515, i32 -2146066484, i32 -2146066463, i32 -2146066441, i32 -2146066392, i32 -2146066371, i32 -2146063040, i32 -2146062951, i32 -2146062830, i32 -2146062731, i32 -2146062625, i32 -2146062523, i32 -2146062490, i32 -2146062407, i32 -2146062318, i32 -2146062197, i32 -2146062097, i32 -2146062071, i32 -2146061968, i32 -2146061942, i32 -2146066113, i32 -2146066088, i32 -2146066021, i32 -2146065996, i32 -2146065932, i32 -2146065816, i32 -2146065791, i32 -2146065766}
!2116 = !DILocation(line: 75, column: 2, scope: !763)
!2117 = !DILocation(line: 76, column: 6, scope: !774)
!2118 = !DILocation(line: 76, column: 13, scope: !774)
!2119 = !DILocation(line: 76, column: 6, scope: !743)
!2120 = !DILocation(line: 77, column: 3, scope: !773)
!2121 = !DILocation(line: 77, column: 3, scope: !771)
!2122 = !DILocation(line: 77, column: 3, scope: !772)
!2123 = !DILocation(line: 77, column: 3, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 77, column: 3)
!2125 = distinct !DILexicalBlock(scope: !771, file: !3, line: 77, column: 3)
!2126 = !DILocation(line: 77, column: 3, scope: !2125)
!2127 = !DILocation(line: 77, column: 3, scope: !770)
!2128 = !DILocation(line: 77, column: 3, scope: !769)
!2129 = !DILocation(line: 77, column: 3, scope: !768)
!2130 = !DILocation(line: 77, column: 3, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !768, file: !3, line: 77, column: 3)
!2132 = !{i32 -2146058955, i32 -2146058942, i32 -2146058917, i32 -2146058893, i32 -2146058868, i32 -2146058793, i32 -2146058768, i32 -2146058624, i32 -2146058599, i32 -2146055932, i32 -2146055843, i32 -2146055722, i32 -2146055627, i32 -2146055526, i32 -2146055499, i32 -2146055416, i32 -2146055327, i32 -2146055206, i32 -2146055106, i32 -2146055000, i32 -2146054892, i32 -2146058262, i32 -2146058209, i32 -2146058178, i32 -2146058147, i32 -2146058126, i32 -2146058104, i32 -2146058055, i32 -2146058034, i32 -2146057931, i32 -2146057899, i32 -2146054809, i32 -2146054720, i32 -2146054599, i32 -2146054500, i32 -2146054394, i32 -2146054292, i32 -2146054259, i32 -2146054186, i32 -2146054118, i32 -2146057639, i32 -2146057586, i32 -2146057555, i32 -2146057524, i32 -2146057503, i32 -2146057481, i32 -2146057432, i32 -2146057411, i32 -2146054076, i32 -2146053987, i32 -2146053866, i32 -2146053767, i32 -2146053661, i32 -2146053559, i32 -2146053526, i32 -2146053443, i32 -2146053354, i32 -2146053233, i32 -2146053133, i32 -2146053107, i32 -2146053004, i32 -2146052978, i32 -2146057153, i32 -2146057128, i32 -2146057061, i32 -2146057036, i32 -2146056972, i32 -2146056856, i32 -2146056831, i32 -2146056806}
!2133 = !DILocation(line: 80, column: 2, scope: !773)
!2134 = !DILocation(line: 81, column: 6, scope: !779)
!2135 = !DILocation(line: 81, column: 13, scope: !779)
!2136 = !DILocation(line: 81, column: 6, scope: !743)
!2137 = !DILocation(line: 82, column: 3, scope: !778)
!2138 = !DILocation(line: 82, column: 9, scope: !778)
!2139 = !DILocation(line: 82, column: 17, scope: !778)
!2140 = !DILocation(line: 82, column: 23, scope: !778)
!2141 = !DILocation(line: 82, column: 36, scope: !778)
!2142 = !DILocation(line: 82, column: 44, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !778, file: !3, line: 82, column: 44)
!2144 = !DILocation(line: 82, column: 74, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !778, file: !3, line: 82, column: 74)
!2146 = !DILocation(line: 83, column: 3, scope: !778)
!2147 = !DILocation(line: 83, column: 3, scope: !784)
!2148 = !DILocation(line: 83, column: 3, scope: !785)
!2149 = !DILocation(line: 83, column: 3, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 83, column: 3)
!2151 = distinct !DILexicalBlock(scope: !784, file: !3, line: 83, column: 3)
!2152 = !DILocation(line: 83, column: 3, scope: !2151)
!2153 = !DILocation(line: 83, column: 3, scope: !783)
!2154 = !DILocation(line: 83, column: 3, scope: !782)
!2155 = !DILocation(line: 83, column: 3, scope: !781)
!2156 = !DILocation(line: 83, column: 3, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !781, file: !3, line: 83, column: 3)
!2158 = !{i32 -2146049606, i32 -2146049593, i32 -2146049568, i32 -2146049544, i32 -2146049519, i32 -2146049444, i32 -2146049419, i32 -2146049275, i32 -2146049250, i32 -2146046509, i32 -2146046420, i32 -2146046299, i32 -2146046204, i32 -2146046103, i32 -2146046076, i32 -2146045993, i32 -2146045904, i32 -2146045783, i32 -2146045683, i32 -2146045577, i32 -2146045469, i32 -2146048874, i32 -2146048821, i32 -2146048790, i32 -2146048759, i32 -2146048738, i32 -2146048716, i32 -2146048667, i32 -2146048646, i32 -2146048543, i32 -2146048511, i32 -2146045386, i32 -2146045297, i32 -2146045176, i32 -2146045077, i32 -2146044971, i32 -2146044869, i32 -2146044836, i32 -2146044763, i32 -2146044695, i32 -2146048251, i32 -2146048198, i32 -2146048167, i32 -2146048136, i32 -2146048115, i32 -2146048093, i32 -2146048044, i32 -2146048023, i32 -2146044653, i32 -2146044564, i32 -2146044443, i32 -2146044344, i32 -2146044238, i32 -2146044136, i32 -2146044103, i32 -2146044020, i32 -2146043931, i32 -2146043810, i32 -2146043710, i32 -2146043684, i32 -2146043581, i32 -2146043555, i32 -2146047765, i32 -2146047740, i32 -2146047673, i32 -2146047648, i32 -2146047584, i32 -2146047468, i32 -2146047443, i32 -2146047418}
!2159 = !DILocation(line: 86, column: 2, scope: !779)
!2160 = !DILocation(line: 86, column: 2, scope: !778)
!2161 = !DILocation(line: 87, column: 6, scope: !791)
!2162 = !DILocation(line: 87, column: 13, scope: !791)
!2163 = !DILocation(line: 87, column: 6, scope: !743)
!2164 = !DILocation(line: 88, column: 3, scope: !790)
!2165 = !DILocation(line: 88, column: 9, scope: !790)
!2166 = !DILocation(line: 88, column: 17, scope: !790)
!2167 = !DILocation(line: 88, column: 23, scope: !790)
!2168 = !DILocation(line: 88, column: 36, scope: !790)
!2169 = !DILocation(line: 88, column: 44, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !790, file: !3, line: 88, column: 44)
!2171 = !DILocation(line: 88, column: 74, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !790, file: !3, line: 88, column: 74)
!2173 = !DILocation(line: 89, column: 3, scope: !790)
!2174 = !DILocation(line: 89, column: 3, scope: !796)
!2175 = !DILocation(line: 89, column: 3, scope: !797)
!2176 = !DILocation(line: 89, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 89, column: 3)
!2178 = distinct !DILexicalBlock(scope: !796, file: !3, line: 89, column: 3)
!2179 = !DILocation(line: 89, column: 3, scope: !2178)
!2180 = !DILocation(line: 89, column: 3, scope: !795)
!2181 = !DILocation(line: 89, column: 3, scope: !794)
!2182 = !DILocation(line: 89, column: 3, scope: !793)
!2183 = !DILocation(line: 89, column: 3, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !793, file: !3, line: 89, column: 3)
!2185 = !{i32 -2146040148, i32 -2146040135, i32 -2146040110, i32 -2146040086, i32 -2146040061, i32 -2146039986, i32 -2146039961, i32 -2146039817, i32 -2146039792, i32 -2146037041, i32 -2146036952, i32 -2146036831, i32 -2146036736, i32 -2146036635, i32 -2146036608, i32 -2146036525, i32 -2146036436, i32 -2146036315, i32 -2146036215, i32 -2146036109, i32 -2146036001, i32 -2146039416, i32 -2146039363, i32 -2146039332, i32 -2146039301, i32 -2146039280, i32 -2146039258, i32 -2146039209, i32 -2146039188, i32 -2146039085, i32 -2146039053, i32 -2146035918, i32 -2146035829, i32 -2146035708, i32 -2146035609, i32 -2146035503, i32 -2146035401, i32 -2146035368, i32 -2146035295, i32 -2146035227, i32 -2146038793, i32 -2146038740, i32 -2146038709, i32 -2146038678, i32 -2146038657, i32 -2146038635, i32 -2146038586, i32 -2146038565, i32 -2146035185, i32 -2146035096, i32 -2146034975, i32 -2146034876, i32 -2146034770, i32 -2146034668, i32 -2146034635, i32 -2146034552, i32 -2146034463, i32 -2146034342, i32 -2146034242, i32 -2146034216, i32 -2146034113, i32 -2146034087, i32 -2146038307, i32 -2146038282, i32 -2146038215, i32 -2146038190, i32 -2146038126, i32 -2146038010, i32 -2146037985, i32 -2146037960}
!2186 = !DILocation(line: 92, column: 2, scope: !791)
!2187 = !DILocation(line: 92, column: 2, scope: !790)
!2188 = !DILocation(line: 95, column: 7, scope: !808)
!2189 = !DILocation(line: 95, column: 14, scope: !808)
!2190 = !DILocation(line: 96, column: 6, scope: !808)
!2191 = !DILocation(line: 96, column: 10, scope: !808)
!2192 = !DILocation(line: 96, column: 17, scope: !808)
!2193 = !DILocation(line: 97, column: 6, scope: !808)
!2194 = !DILocation(line: 97, column: 10, scope: !808)
!2195 = !DILocation(line: 97, column: 17, scope: !808)
!2196 = !DILocation(line: 98, column: 6, scope: !808)
!2197 = !DILocation(line: 98, column: 10, scope: !808)
!2198 = !DILocation(line: 98, column: 17, scope: !808)
!2199 = !DILocation(line: 95, column: 6, scope: !743)
!2200 = !DILocation(line: 99, column: 18, scope: !807)
!2201 = !DILocation(line: 99, column: 22, scope: !807)
!2202 = !DILocation(line: 99, column: 31, scope: !807)
!2203 = !DILocation(line: 99, column: 3, scope: !807)
!2204 = !DILocation(line: 101, column: 18, scope: !807)
!2205 = !DILocation(line: 101, column: 22, scope: !807)
!2206 = !DILocation(line: 101, column: 31, scope: !807)
!2207 = !DILocation(line: 101, column: 3, scope: !807)
!2208 = !DILocation(line: 103, column: 18, scope: !807)
!2209 = !DILocation(line: 103, column: 22, scope: !807)
!2210 = !DILocation(line: 103, column: 31, scope: !807)
!2211 = !DILocation(line: 103, column: 3, scope: !807)
!2212 = !DILocation(line: 112, column: 3, scope: !807)
!2213 = !DILocation(line: 112, column: 3, scope: !805)
!2214 = !DILocation(line: 112, column: 3, scope: !806)
!2215 = !DILocation(line: 112, column: 3, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 112, column: 3)
!2217 = distinct !DILexicalBlock(scope: !805, file: !3, line: 112, column: 3)
!2218 = !DILocation(line: 112, column: 3, scope: !2217)
!2219 = !DILocation(line: 112, column: 3, scope: !804)
!2220 = !DILocation(line: 112, column: 3, scope: !803)
!2221 = !DILocation(line: 112, column: 3, scope: !802)
!2222 = !DILocation(line: 112, column: 3, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !802, file: !3, line: 112, column: 3)
!2224 = !{i32 -2146030534, i32 -2146030521, i32 -2146030496, i32 -2146030472, i32 -2146030447, i32 -2146030372, i32 -2146030347, i32 -2146030203, i32 -2146030178, i32 -2146027345, i32 -2146027256, i32 -2146027135, i32 -2146027040, i32 -2146026939, i32 -2146026912, i32 -2146026829, i32 -2146026740, i32 -2146026619, i32 -2146026519, i32 -2146026413, i32 -2146026305, i32 -2146029797, i32 -2146029744, i32 -2146029713, i32 -2146029682, i32 -2146029661, i32 -2146029639, i32 -2146029590, i32 -2146029569, i32 -2146029466, i32 -2146029434, i32 -2146026222, i32 -2146026133, i32 -2146026012, i32 -2146025913, i32 -2146025807, i32 -2146025705, i32 -2146025672, i32 -2146025599, i32 -2146025531, i32 -2146029174, i32 -2146029121, i32 -2146029090, i32 -2146029059, i32 -2146029038, i32 -2146029016, i32 -2146028967, i32 -2146028946, i32 -2146025489, i32 -2146025400, i32 -2146025279, i32 -2146025180, i32 -2146025074, i32 -2146024972, i32 -2146024939, i32 -2146024856, i32 -2146024767, i32 -2146024646, i32 -2146024546, i32 -2146024520, i32 -2146024417, i32 -2146024391, i32 -2146028688, i32 -2146028663, i32 -2146028596, i32 -2146028571, i32 -2146028507, i32 -2146028391, i32 -2146028366, i32 -2146028341}
!2225 = !DILocation(line: 116, column: 2, scope: !807)
!2226 = !DILocation(line: 120, column: 6, scope: !820)
!2227 = !DILocation(line: 120, column: 13, scope: !820)
!2228 = !DILocation(line: 120, column: 6, scope: !743)
!2229 = !DILocation(line: 129, column: 3, scope: !819)
!2230 = !DILocation(line: 129, column: 3, scope: !817)
!2231 = !DILocation(line: 129, column: 3, scope: !818)
!2232 = !DILocation(line: 129, column: 3, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 129, column: 3)
!2234 = distinct !DILexicalBlock(scope: !817, file: !3, line: 129, column: 3)
!2235 = !DILocation(line: 129, column: 3, scope: !2234)
!2236 = !DILocation(line: 129, column: 3, scope: !816)
!2237 = !DILocation(line: 129, column: 3, scope: !815)
!2238 = !DILocation(line: 129, column: 3, scope: !814)
!2239 = !DILocation(line: 129, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !814, file: !3, line: 129, column: 3)
!2241 = !{i32 -2146020569, i32 -2146020556, i32 -2146020531, i32 -2146020507, i32 -2146020482, i32 -2146020407, i32 -2146020382, i32 -2146020238, i32 -2146020213, i32 -2146017344, i32 -2146017255, i32 -2146017134, i32 -2146017039, i32 -2146016938, i32 -2146016911, i32 -2146016828, i32 -2146016739, i32 -2146016618, i32 -2146016518, i32 -2146016412, i32 -2146016304, i32 -2146019832, i32 -2146019779, i32 -2146019748, i32 -2146019717, i32 -2146019696, i32 -2146019674, i32 -2146019625, i32 -2146019604, i32 -2146019501, i32 -2146019469, i32 -2146016221, i32 -2146016132, i32 -2146016011, i32 -2146015912, i32 -2146015806, i32 -2146015704, i32 -2146015671, i32 -2146015598, i32 -2146015530, i32 -2146019209, i32 -2146019156, i32 -2146019125, i32 -2146019094, i32 -2146019073, i32 -2146019051, i32 -2146019002, i32 -2146018981, i32 -2146015488, i32 -2146015399, i32 -2146015278, i32 -2146015179, i32 -2146015073, i32 -2146014971, i32 -2146014938, i32 -2146014855, i32 -2146014766, i32 -2146014645, i32 -2146014545, i32 -2146014519, i32 -2146014416, i32 -2146014390, i32 -2146018723, i32 -2146018698, i32 -2146018631, i32 -2146018606, i32 -2146018542, i32 -2146018426, i32 -2146018401, i32 -2146018376}
!2242 = !DILocation(line: 134, column: 2, scope: !819)
!2243 = !DILocation(line: 135, column: 6, scope: !832)
!2244 = !DILocation(line: 135, column: 13, scope: !832)
!2245 = !DILocation(line: 135, column: 6, scope: !743)
!2246 = !DILocation(line: 146, column: 3, scope: !831)
!2247 = !DILocation(line: 146, column: 3, scope: !829)
!2248 = !DILocation(line: 146, column: 3, scope: !830)
!2249 = !DILocation(line: 146, column: 3, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 146, column: 3)
!2251 = distinct !DILexicalBlock(scope: !829, file: !3, line: 146, column: 3)
!2252 = !DILocation(line: 146, column: 3, scope: !2251)
!2253 = !DILocation(line: 146, column: 3, scope: !828)
!2254 = !DILocation(line: 146, column: 3, scope: !827)
!2255 = !DILocation(line: 146, column: 3, scope: !826)
!2256 = !DILocation(line: 146, column: 3, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !826, file: !3, line: 146, column: 3)
!2258 = !{i32 -2146010480, i32 -2146010467, i32 -2146010442, i32 -2146010418, i32 -2146010393, i32 -2146010318, i32 -2146010293, i32 -2146010149, i32 -2146010124, i32 -2146007240, i32 -2146007151, i32 -2146007030, i32 -2146006935, i32 -2146006834, i32 -2146006807, i32 -2146006724, i32 -2146006635, i32 -2146006514, i32 -2146006414, i32 -2146006308, i32 -2146006200, i32 -2146009743, i32 -2146009690, i32 -2146009659, i32 -2146009628, i32 -2146009607, i32 -2146009585, i32 -2146009536, i32 -2146009515, i32 -2146009412, i32 -2146009380, i32 -2146006117, i32 -2146006028, i32 -2146005907, i32 -2146005808, i32 -2146005702, i32 -2146005600, i32 -2146005567, i32 -2146005494, i32 -2146005426, i32 -2146009120, i32 -2146009067, i32 -2146009036, i32 -2146009005, i32 -2146008984, i32 -2146008962, i32 -2146008913, i32 -2146008892, i32 -2146005384, i32 -2146005295, i32 -2146005174, i32 -2146005075, i32 -2146004969, i32 -2146004867, i32 -2146004834, i32 -2146004751, i32 -2146004662, i32 -2146004541, i32 -2146004441, i32 -2146004415, i32 -2146004312, i32 -2146004286, i32 -2146008634, i32 -2146008609, i32 -2146008542, i32 -2146008517, i32 -2146008453, i32 -2146008337, i32 -2146008312, i32 -2146008287}
!2259 = !DILocation(line: 151, column: 2, scope: !831)
!2260 = !DILocation(line: 153, column: 1, scope: !743)
!2261 = distinct !DISubprogram(name: "uk_netdev_einfo_get_with_copy", scope: !3, file: !3, line: 184, type: !2262, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2265)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !892, !23, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "dev", arg: 1, scope: !2261, file: !3, line: 184, type: !892)
!2267 = !DILocalVariable(name: "einfo", arg: 2, scope: !2261, file: !3, line: 185, type: !23)
!2268 = !DILocalVariable(name: "strcfg", arg: 3, scope: !2261, file: !3, line: 185, type: !2264)
!2269 = !DILocalVariable(name: "_tmp", scope: !2261, file: !3, line: 187, type: !280)
!2270 = !DILocation(line: 184, column: 54, scope: !2261)
!2271 = !DILocation(line: 185, column: 28, scope: !2261)
!2272 = !DILocation(line: 185, column: 42, scope: !2261)
!2273 = !DILocation(line: 187, column: 15, scope: !2261)
!2274 = !DILocation(line: 187, column: 8, scope: !2261)
!2275 = !DILocation(line: 188, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 188, column: 6)
!2277 = !DILocation(line: 188, column: 6, scope: !2261)
!2278 = !DILocation(line: 189, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 188, column: 13)
!2280 = !DILocation(line: 190, column: 3, scope: !2279)
!2281 = !DILocation(line: 193, column: 6, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 193, column: 6)
!2283 = !DILocation(line: 193, column: 6, scope: !2261)
!2284 = !DILocation(line: 193, column: 23, scope: !2282)
!2285 = !DILocation(line: 237, column: 45, scope: !1740, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 193, column: 15, scope: !2282)
!2287 = !DILocation(line: 237, column: 54, scope: !1740, inlinedAt: !2286)
!2288 = !DILocation(line: 231, column: 48, scope: !1747, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 239, column: 2, scope: !1740, inlinedAt: !2286)
!2290 = !DILocation(line: 231, column: 57, scope: !1747, inlinedAt: !2289)
!2291 = !DILocation(line: 233, column: 2, scope: !1754, inlinedAt: !2289)
!2292 = !DILocation(line: 233, column: 2, scope: !1755, inlinedAt: !2289)
!2293 = !DILocation(line: 233, column: 2, scope: !1758, inlinedAt: !2289)
!2294 = !DILocation(line: 234, column: 5, scope: !1747, inlinedAt: !2289)
!2295 = !DILocation(line: 234, column: 2, scope: !1747, inlinedAt: !2289)
!2296 = !DILocation(line: 193, column: 15, scope: !2282)
!2297 = !DILocation(line: 194, column: 22, scope: !2261)
!2298 = !DILocation(line: 194, column: 43, scope: !2261)
!2299 = !DILocation(line: 157, column: 48, scope: !1323, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 194, column: 12, scope: !2261)
!2301 = !DILocation(line: 159, column: 6, scope: !1330, inlinedAt: !2300)
!2302 = !DILocation(line: 159, column: 6, scope: !1323, inlinedAt: !2300)
!2303 = !DILocation(line: 160, column: 3, scope: !1334, inlinedAt: !2300)
!2304 = !DILocation(line: 160, column: 9, scope: !1334, inlinedAt: !2300)
!2305 = !DILocation(line: 161, column: 3, scope: !1334, inlinedAt: !2300)
!2306 = !DILocation(line: 194, column: 56, scope: !2261)
!2307 = !DILocation(line: 157, column: 58, scope: !1323, inlinedAt: !2300)
!2308 = !DILocation(line: 151, column: 51, scope: !1338, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 163, column: 9, scope: !1323, inlinedAt: !2300)
!2310 = !DILocation(line: 151, column: 61, scope: !1338, inlinedAt: !2309)
!2311 = !DILocation(line: 154, column: 12, scope: !1338, inlinedAt: !2309)
!2312 = !DILocation(line: 154, column: 9, scope: !1338, inlinedAt: !2309)
!2313 = !DILocation(line: 163, column: 2, scope: !1323, inlinedAt: !2300)
!2314 = !DILocation(line: 0, scope: !1323, inlinedAt: !2300)
!2315 = !DILocation(line: 194, column: 10, scope: !2261)
!2316 = !DILocation(line: 195, column: 2, scope: !2261)
!2317 = !DILocation(line: 196, column: 1, scope: !2261)
!2318 = !DILocation(line: 186, column: 42, scope: !883)
!2319 = !DILocation(line: 188, column: 2, scope: !883)
!2320 = !DILocation(line: 188, column: 10, scope: !883)
!2321 = !DILocation(line: 189, column: 2, scope: !883)
!2322 = !DILocation(line: 190, column: 2, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !720, line: 190, column: 2)
!2324 = distinct !DILexicalBlock(scope: !883, file: !720, line: 190, column: 2)
!2325 = !DILocation(line: 191, column: 2, scope: !883)
!2326 = !DILocation(line: 192, column: 1, scope: !883)
!2327 = !DILocation(line: 196, column: 2, scope: !719)
!2328 = !DILocation(line: 196, column: 10, scope: !719)
!2329 = !DILocation(line: 197, column: 2, scope: !719)
!2330 = !DILocation(line: 198, column: 2, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !720, line: 198, column: 2)
!2332 = distinct !DILexicalBlock(scope: !719, file: !720, line: 198, column: 2)
!2333 = !DILocation(line: 199, column: 2, scope: !719)
!2334 = !DILocation(line: 200, column: 1, scope: !719)
!2335 = !DILocation(line: 194, column: 57, scope: !1788)
!2336 = !DILocation(line: 198, column: 2, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !713, line: 198, column: 2)
!2338 = distinct !DILexicalBlock(scope: !1788, file: !713, line: 198, column: 2)
!2339 = !DILocation(line: 198, column: 2, scope: !2338)
!2340 = !DILocation(line: 198, column: 2, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !713, line: 198, column: 2)
!2342 = !DILocation(line: 200, column: 9, scope: !1788)
!2343 = !DILocation(line: 196, column: 16, scope: !1788)
!2344 = !DILocation(line: 201, column: 7, scope: !1788)
!2345 = !DILocation(line: 201, column: 2, scope: !1788)
!2346 = !DILocation(line: 209, column: 28, scope: !1788)
!2347 = !DILocation(line: 99, column: 40, scope: !1809, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 210, column: 2, scope: !1788)
!2349 = !DILocation(line: 104, column: 10, scope: !1809, inlinedAt: !2348)
!2350 = !DILocation(line: 101, column: 16, scope: !1809, inlinedAt: !2348)
!2351 = !DILocation(line: 105, column: 2, scope: !1823, inlinedAt: !2348)
!2352 = !DILocation(line: 102, column: 25, scope: !1809, inlinedAt: !2348)
!2353 = !DILocation(line: 105, column: 2, scope: !1827, inlinedAt: !2348)
!2354 = !DILocation(line: 102, column: 32, scope: !1809, inlinedAt: !2348)
!2355 = !DILocation(line: 106, column: 24, scope: !1827, inlinedAt: !2348)
!2356 = !DILocation(line: 106, column: 3, scope: !1827, inlinedAt: !2348)
!2357 = !DILocation(line: 107, column: 2, scope: !1809, inlinedAt: !2348)
!2358 = !DILocation(line: 211, column: 2, scope: !1788)
!2359 = !DILocation(line: 212, column: 1, scope: !1788)
