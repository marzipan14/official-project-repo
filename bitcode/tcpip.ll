; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/tcpip.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/tcpip.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sys_mutex_t = type { %struct.uk_mutex, i32 }
%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.2, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.2 = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, {}*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, {}*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.5, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.5 = type { %struct.anon.7 }
%struct.anon.7 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.uk_thread_sig = type { i64, i64, %struct.uk_list_head, %struct.uk_thread_sig_wait, %struct.uk_list_head }
%struct.uk_thread_sig_wait = type { i32, i64, %struct.siginfo_t }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.uk_list_head = type { %struct.uk_list_head*, %struct.uk_list_head* }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.3 }
%struct.anon.3 = type { %struct.uk_waitq_entry* }
%struct.sys_mbox_t = type { %struct.uk_alloc*, %struct.uk_mbox*, i32 }
%struct.uk_mbox = type opaque
%struct.uk_thread_status_block = type { i64, i64 }
%struct.tcpip_msg = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.pbuf*, %struct.netif*, i8 (%struct.pbuf*, %struct.netif*)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon.0, i8 }
%union.anon.0 = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip4_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.sys_sem_t = type { %struct.uk_semaphore, i32 }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.tcpip_api_call_data = type { i8 }
%struct.tcpip_callback_msg = type opaque

@lock_tcpip_core = dso_local global %struct.sys_mutex_t zeroinitializer, section ".data_shared", align 8, !dbg !0
@tcpip_init_done = internal unnamed_addr global void (i8*)* null, align 8, !dbg !248
@tcpip_init_done_arg = internal unnamed_addr global i8* null, align 8, !dbg !250
@tcpip_mbox = internal global %struct.sys_mbox_t zeroinitializer, section ".data_shared", align 8, !dbg !252
@.str = private unnamed_addr constant [30 x i8] c"tcpip_thread: invalid message\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid mbox\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to create tcpip_thread mbox\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to create lock_tcpip_core\00", align 1
@tcpip_init.__str = internal global [5 x i8] c"lwip\00", section ".data_shared", align 1, !dbg !236
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !320
@uk_pr_crit.__str.6 = internal global [8 x i8] c"tcpip.c\00", section ".data_shared", align 1, !dbg !344
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone noreturn nounwind
define dso_local void @__tcpip_thread(i8* nocapture readnone) #0 !dbg !719 {
  %2 = alloca %struct.tcpip_msg*, align 8
  %3 = bitcast %struct.tcpip_msg** %2 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !725
  %4 = ptrtoint %struct.tcpip_msg** %2 to i64, !dbg !726
  %5 = add i64 %4, 65536, !dbg !727
  %6 = inttoptr i64 %5 to %struct.tcpip_msg**, !dbg !728
  call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !730
  %7 = load void (i8*)*, void (i8*)** @tcpip_init_done, align 8, !dbg !731, !tbaa !733
  %8 = icmp eq void (i8*)* %7, null, !dbg !737
  br i1 %8, label %11, label %9, !dbg !738

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** @tcpip_init_done_arg, align 8, !dbg !739, !tbaa !733
  call void %7(i8* %10) #8, !dbg !741
  br label %11, !dbg !742

; <label>:11:                                     ; preds = %1, %9
  %12 = inttoptr i64 %5 to i8**
  br label %13, !dbg !743

; <label>:13:                                     ; preds = %60, %11
  %14 = call i32 @sys_timeouts_sleeptime() #8, !dbg !744
  switch i32 %14, label %18 [
    i32 -1, label %15
    i32 0, label %17
  ], !dbg !757

; <label>:15:                                     ; preds = %13
  call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !758
  %16 = call i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8** %12, i32 0) #8, !dbg !761
  call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !762
  br label %22, !dbg !763

; <label>:17:                                     ; preds = %13
  call void @sys_check_timeouts() #8, !dbg !764
  br label %60, !dbg !767

; <label>:18:                                     ; preds = %13
  call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !768
  %19 = call i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8** %12, i32 %14) #8, !dbg !769
  call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !771
  %20 = icmp eq i32 %19, -1, !dbg !772
  br i1 %20, label %21, label %22, !dbg !774

; <label>:21:                                     ; preds = %18
  call void @sys_check_timeouts() #8, !dbg !775
  br label %60, !dbg !777

; <label>:22:                                     ; preds = %18, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  %23 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8, !dbg !779, !tbaa !733
  %24 = icmp eq %struct.tcpip_msg* %23, null, !dbg !781
  br i1 %24, label %25, label %26, !dbg !782

; <label>:25:                                     ; preds = %22
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #9, !dbg !783
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !789
  call void @ukplat_terminate(i32 3) #10, !dbg !789
  unreachable, !dbg !789

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 0, !dbg !800
  %28 = load i32, i32* %27, align 8, !dbg !800, !tbaa !801
  switch i32 %28, label %58 [
    i32 0, label %29
    i32 1, label %43
    i32 2, label %51
  ], !dbg !803

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, i32 0, i32 2, !dbg !804
  %31 = load i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)** %30, align 8, !dbg !804, !tbaa !807
  %32 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, i32 0, i32 0, !dbg !808
  %33 = load %struct.pbuf*, %struct.pbuf** %32, align 8, !dbg !808, !tbaa !807
  %34 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, i32 0, i32 1, !dbg !809
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !809, !tbaa !807
  %36 = call signext i8 %31(%struct.pbuf* %33, %struct.netif* %35) #8, !dbg !810
  %37 = icmp eq i8 %36, 0, !dbg !811
  br i1 %37, label %41, label %38, !dbg !812

; <label>:38:                                     ; preds = %29
  %39 = load %struct.pbuf*, %struct.pbuf** %32, align 8, !dbg !813, !tbaa !807
  %40 = call zeroext i8 @pbuf_free(%struct.pbuf* %39) #8, !dbg !815
  br label %41, !dbg !816

; <label>:41:                                     ; preds = %38, %29
  %42 = bitcast %struct.tcpip_msg* %23 to i8*, !dbg !817
  call void @memp_free(i32 9, i8* %42) #8, !dbg !818
  br label %59, !dbg !819

; <label>:43:                                     ; preds = %26
  %44 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, !dbg !820
  %45 = bitcast %union.anon* %44 to void (i8*)**, !dbg !821
  %46 = load void (i8*)*, void (i8*)** %45, align 8, !dbg !821, !tbaa !807
  %47 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, i32 0, i32 1, !dbg !822
  %48 = bitcast %struct.netif** %47 to i8**, !dbg !822
  %49 = load i8*, i8** %48, align 8, !dbg !822, !tbaa !807
  call void %46(i8* %49) #8, !dbg !823
  %50 = bitcast %struct.tcpip_msg* %23 to i8*, !dbg !824
  call void @memp_free(i32 8, i8* %50) #8, !dbg !825
  br label %59, !dbg !826

; <label>:51:                                     ; preds = %26
  %52 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, !dbg !827
  %53 = bitcast %union.anon* %52 to void (i8*)**, !dbg !828
  %54 = load void (i8*)*, void (i8*)** %53, align 8, !dbg !828, !tbaa !807
  %55 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i64 0, i32 1, i32 0, i32 1, !dbg !829
  %56 = bitcast %struct.netif** %55 to i8**, !dbg !829
  %57 = load i8*, i8** %56, align 8, !dbg !829, !tbaa !807
  call void %54(i8* %57) #8, !dbg !830
  br label %59, !dbg !831

; <label>:58:                                     ; preds = %26
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #8, !dbg !832
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !837
  call void @ukplat_terminate(i32 3) #10, !dbg !837
  unreachable, !dbg !837

; <label>:59:                                     ; preds = %41, %43, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br label %60, !dbg !743

; <label>:60:                                     ; preds = %59, %21, %17
  br label %13, !dbg !744, !llvm.loop !842
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @sys_mutex_lock(%struct.sys_mutex_t*) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !322 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !845
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !847
  call void @llvm.va_start(i8* nonnull %3), !dbg !847
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.6, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !848
  call void @llvm.va_end(i8* nonnull %3), !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  ret void, !dbg !852
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @tcpip_thread(i8*) #6 !dbg !853 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #7, !dbg !865, !srcloc !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !879, !srcloc !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !890
  br i1 %3, label %8, label %4, !dbg !890

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !891, !srcloc !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !890
  br i1 %6, label %8, label %7, !dbg !895

; <label>:7:                                      ; preds = %4
  tail call void @__tcpip_thread(i8* undef) #8, !dbg !896
  unreachable

; <label>:8:                                      ; preds = %1, %4
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !898, !srcloc !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %10 = and i64 %9, -65536, !dbg !910
  %11 = or i64 %10, 4097, !dbg !910
  %12 = add nsw i64 %11, -1, !dbg !910
  %13 = inttoptr i64 %12 to i32*, !dbg !911
  %14 = load i32, i32* %13, align 4096, !dbg !912, !tbaa !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  %15 = ptrtoint i8* %0 to i64, !dbg !916
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call __tcpip_thread\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %15, i32 %14, void (i8*)* nonnull @__tcpip_thread) #7, !dbg !916, !srcloc !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  ret void, !dbg !919
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_inpkt(%struct.pbuf*, %struct.netif*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #6 !dbg !920 {
  %4 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull @tcpip_mbox) #8, !dbg !931
  %5 = icmp eq i32 %4, 0, !dbg !931
  br i1 %5, label %6, label %7, !dbg !934

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !935
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !938
  tail call void @ukplat_terminate(i32 3) #10, !dbg !938
  unreachable, !dbg !938

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @memp_malloc(i32 9) #8, !dbg !942
  %9 = icmp eq i8* %8, null, !dbg !943
  br i1 %9, label %21, label %10, !dbg !945

; <label>:10:                                     ; preds = %7
  %11 = bitcast i8* %8 to i32*, !dbg !947
  store i32 0, i32* %11, align 8, !dbg !948, !tbaa !801
  %12 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !949
  %13 = bitcast i8* %12 to %struct.pbuf**, !dbg !950
  store %struct.pbuf* %0, %struct.pbuf** %13, align 8, !dbg !951, !tbaa !807
  %14 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !952
  %15 = bitcast i8* %14 to %struct.netif**, !dbg !952
  store %struct.netif* %1, %struct.netif** %15, align 8, !dbg !953, !tbaa !807
  %16 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !954
  %17 = bitcast i8* %16 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !954
  store i8 (%struct.pbuf*, %struct.netif*)* %2, i8 (%struct.pbuf*, %struct.netif*)** %17, align 8, !dbg !955, !tbaa !807
  %18 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8* nonnull %8) #8, !dbg !956
  %19 = icmp eq i8 %18, 0, !dbg !958
  br i1 %19, label %21, label %20, !dbg !959

; <label>:20:                                     ; preds = %10
  tail call void @memp_free(i32 9, i8* nonnull %8) #8, !dbg !960
  br label %21, !dbg !962

; <label>:21:                                     ; preds = %10, %7, %20
  %22 = phi i8 [ -1, %20 ], [ -1, %7 ], [ 0, %10 ], !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  ret i8 %22, !dbg !964
}

; Function Attrs: noredzone
declare dso_local i32 @sys_mbox_valid(%struct.sys_mbox_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @sys_mbox_trypost(%struct.sys_mbox_t*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #6 !dbg !965 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !971
  %4 = load i8, i8* %3, align 1, !dbg !971, !tbaa !973
  %5 = and i8 %4, 24, !dbg !977
  %6 = icmp eq i8 %5, 0, !dbg !977
  %7 = select i1 %6, i8 (%struct.pbuf*, %struct.netif*)* @ip_input, i8 (%struct.pbuf*, %struct.netif*)* @ethernet_input, !dbg !978
  %8 = tail call signext i8 @tcpip_inpkt(%struct.pbuf* %0, %struct.netif* nonnull %1, i8 (%struct.pbuf*, %struct.netif*)* nonnull %7) #9, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  ret i8 %8, !dbg !981
}

; Function Attrs: noredzone
declare dso_local signext i8 @ethernet_input(%struct.pbuf*, %struct.netif*) #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip_input(%struct.pbuf*, %struct.netif*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_callback(void (i8*)*, i8*) local_unnamed_addr #6 !dbg !982 {
  %3 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull @tcpip_mbox) #8, !dbg !991
  %4 = icmp eq i32 %3, 0, !dbg !991
  br i1 %4, label %5, label %6, !dbg !994

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !995
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !998
  tail call void @ukplat_terminate(i32 3) #10, !dbg !998
  unreachable, !dbg !998

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @memp_malloc(i32 8) #8, !dbg !1002
  %8 = icmp eq i8* %7, null, !dbg !1003
  br i1 %8, label %15, label %9, !dbg !1005

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %7 to i32*, !dbg !1007
  store i32 1, i32* %10, align 8, !dbg !1008, !tbaa !801
  %11 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1009
  %12 = bitcast i8* %11 to void (i8*)**, !dbg !1010
  store void (i8*)* %0, void (i8*)** %12, align 8, !dbg !1011, !tbaa !807
  %13 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !1012
  %14 = bitcast i8* %13 to i8**, !dbg !1012
  store i8* %1, i8** %14, align 8, !dbg !1013, !tbaa !807
  tail call void @sys_mbox_post(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8* nonnull %7) #8, !dbg !1014
  br label %15, !dbg !1015

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i8 [ 0, %9 ], [ -1, %6 ], !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  ret i8 %16, !dbg !1017
}

; Function Attrs: noredzone
declare dso_local void @sys_mbox_post(%struct.sys_mbox_t*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_try_callback(void (i8*)*, i8*) local_unnamed_addr #6 !dbg !1018 {
  %3 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull @tcpip_mbox) #8, !dbg !1025
  %4 = icmp eq i32 %3, 0, !dbg !1025
  br i1 %4, label %5, label %6, !dbg !1028

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1029
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1032
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1032
  unreachable, !dbg !1032

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @memp_malloc(i32 8) #8, !dbg !1036
  %8 = icmp eq i8* %7, null, !dbg !1037
  br i1 %8, label %18, label %9, !dbg !1039

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %7 to i32*, !dbg !1041
  store i32 1, i32* %10, align 8, !dbg !1042, !tbaa !801
  %11 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1043
  %12 = bitcast i8* %11 to void (i8*)**, !dbg !1044
  store void (i8*)* %0, void (i8*)** %12, align 8, !dbg !1045, !tbaa !807
  %13 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !1046
  %14 = bitcast i8* %13 to i8**, !dbg !1046
  store i8* %1, i8** %14, align 8, !dbg !1047, !tbaa !807
  %15 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8* nonnull %7) #8, !dbg !1048
  %16 = icmp eq i8 %15, 0, !dbg !1050
  br i1 %16, label %18, label %17, !dbg !1051

; <label>:17:                                     ; preds = %9
  tail call void @memp_free(i32 8, i8* nonnull %7) #8, !dbg !1052
  br label %18, !dbg !1054

; <label>:18:                                     ; preds = %9, %6, %17
  %19 = phi i8 [ -1, %17 ], [ -1, %6 ], [ 0, %9 ], !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  ret i8 %19, !dbg !1056
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nocapture, i8*, %struct.sys_sem_t* nocapture readnone) local_unnamed_addr #6 !dbg !1057 {
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !1078
  tail call void %0(i8* %1) #8, !dbg !1079
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  ret i8 0, !dbg !1081
}

; Function Attrs: noredzone
declare dso_local void @sys_mutex_unlock(%struct.sys_mutex_t*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_api_call(i8 (%struct.tcpip_api_call_data*)* nocapture, %struct.tcpip_api_call_data*) local_unnamed_addr #6 !dbg !1082 {
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !1099
  %3 = tail call signext i8 %0(%struct.tcpip_api_call_data* %1) #8, !dbg !1100
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  ret i8 %3, !dbg !1103
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcpip_callback_msg* @tcpip_callbackmsg_new(void (i8*)*, i8*) local_unnamed_addr #6 !dbg !1104 {
  %3 = tail call i8* @memp_malloc(i32 8) #8, !dbg !1113
  %4 = icmp eq i8* %3, null, !dbg !1114
  br i1 %4, label %12, label %5, !dbg !1116

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %3 to i32*, !dbg !1118
  store i32 2, i32* %6, align 8, !dbg !1119, !tbaa !801
  %7 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1120
  %8 = bitcast i8* %7 to void (i8*)**, !dbg !1121
  store void (i8*)* %0, void (i8*)** %8, align 8, !dbg !1122, !tbaa !807
  %9 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !1123
  %10 = bitcast i8* %9 to i8**, !dbg !1123
  store i8* %1, i8** %10, align 8, !dbg !1124, !tbaa !807
  %11 = bitcast i8* %3 to %struct.tcpip_callback_msg*, !dbg !1125
  br label %12, !dbg !1126

; <label>:12:                                     ; preds = %2, %5
  %13 = phi %struct.tcpip_callback_msg* [ %11, %5 ], [ null, %2 ], !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  ret %struct.tcpip_callback_msg* %13, !dbg !1128
}

; Function Attrs: noredzone nounwind
define dso_local void @tcpip_callbackmsg_delete(%struct.tcpip_callback_msg*) local_unnamed_addr #6 !dbg !1129 {
  %2 = bitcast %struct.tcpip_callback_msg* %0 to i8*, !dbg !1135
  tail call void @memp_free(i32 8, i8* %2) #8, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  ret void, !dbg !1137
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_callbackmsg_trycallback(%struct.tcpip_callback_msg*) local_unnamed_addr #6 !dbg !1138 {
  %2 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull @tcpip_mbox) #8, !dbg !1144
  %3 = icmp eq i32 %2, 0, !dbg !1144
  br i1 %3, label %4, label %5, !dbg !1147

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1148
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1151
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1151
  unreachable, !dbg !1151

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.tcpip_callback_msg* %0 to i8*, !dbg !1155
  %7 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8* %6) #8, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  ret i8 %7, !dbg !1157
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcpip_callbackmsg_trycallback_fromisr(%struct.tcpip_callback_msg*) local_unnamed_addr #6 !dbg !1158 {
  %2 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull @tcpip_mbox) #8, !dbg !1162
  %3 = icmp eq i32 %2, 0, !dbg !1162
  br i1 %3, label %4, label %5, !dbg !1165

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1166
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1169
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1169
  unreachable, !dbg !1169

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.tcpip_callback_msg* %0 to i8*, !dbg !1173
  %7 = tail call signext i8 @sys_mbox_trypost_fromisr(%struct.sys_mbox_t* nonnull @tcpip_mbox, i8* %6) #8, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  ret i8 %7, !dbg !1175
}

; Function Attrs: noredzone
declare dso_local signext i8 @sys_mbox_trypost_fromisr(%struct.sys_mbox_t*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @tcpip_init(void (i8*)*, i8*) local_unnamed_addr #6 !dbg !238 {
  tail call void @lwip_init() #8, !dbg !1178
  store void (i8*)* %0, void (i8*)** @tcpip_init_done, align 8, !dbg !1179, !tbaa !733
  store i8* %1, i8** @tcpip_init_done_arg, align 8, !dbg !1180, !tbaa !733
  %3 = tail call signext i8 @sys_mbox_new(%struct.sys_mbox_t* nonnull @tcpip_mbox, i32 256) #8, !dbg !1181
  %4 = icmp eq i8 %3, 0, !dbg !1183
  br i1 %4, label %6, label %5, !dbg !1184

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1185
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1191
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1191
  unreachable, !dbg !1191

; <label>:6:                                      ; preds = %2
  %7 = tail call signext i8 @sys_mutex_new(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #8, !dbg !1195
  %8 = icmp eq i8 %7, 0, !dbg !1197
  br i1 %8, label %10, label %9, !dbg !1198

; <label>:9:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1199
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1205
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1205
  unreachable, !dbg !1205

; <label>:10:                                     ; preds = %6
  %11 = tail call %struct.uk_thread* @sys_thread_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tcpip_init.__str, i64 0, i64 0), void (i8*)* nonnull @tcpip_thread, i8* null, i32 0, i32 1) #8, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  ret void, !dbg !1210
}

; Function Attrs: noredzone
declare dso_local void @lwip_init() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @sys_mbox_new(%struct.sys_mbox_t*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @sys_mutex_new(%struct.sys_mutex_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.uk_thread* @sys_thread_new(i8*, void (i8*)*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_free_callback(%struct.pbuf*) local_unnamed_addr #6 !dbg !1211 {
  %2 = bitcast %struct.pbuf* %0 to i8*, !dbg !1217
  %3 = tail call signext i8 @tcpip_try_callback(void (i8*)* nonnull @pbuf_free_int, i8* %2) #9, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  ret i8 %3, !dbg !1219
}

; Function Attrs: noredzone nounwind
define internal void @pbuf_free_int(i8*) #6 !dbg !1220 {
  %2 = bitcast i8* %0 to %struct.pbuf*, !dbg !1225
  %3 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  ret void, !dbg !1228
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mem_free_callback(i8*) local_unnamed_addr #6 !dbg !1229 {
  %2 = tail call signext i8 @tcpip_try_callback(void (i8*)* nonnull @mem_free, i8* %0) #9, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  ret i8 %2, !dbg !1236
}

; Function Attrs: noredzone
declare dso_local void @mem_free(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @sys_timeouts_sleeptime() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sys_check_timeouts() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!715, !716, !717}
!llvm.ident = !{!718}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock_tcpip_core", scope: !2, file: !3, line: 67, type: !346, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !72, globals: !235)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/tcpip.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !12, !17, !24, !45, !66}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcpip_msg_type", file: !6, line: 113, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcpip_priv.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TCPIP_MSG_INPKT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TCPIP_MSG_CALLBACK", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TCPIP_MSG_CALLBACK_STATIC", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !13, line: 156, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !18, line: 68, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 52, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!27 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!37 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!38 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!39 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!43 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!44 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 53, baseType: !47, size: 32, elements: !48)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!49 = !DIEnumerator(name: "ERR_OK", value: 0)
!50 = !DIEnumerator(name: "ERR_MEM", value: -1)
!51 = !DIEnumerator(name: "ERR_BUF", value: -2)
!52 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!53 = !DIEnumerator(name: "ERR_RTE", value: -4)
!54 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!55 = !DIEnumerator(name: "ERR_VAL", value: -6)
!56 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!57 = !DIEnumerator(name: "ERR_USE", value: -8)
!58 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!59 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!60 = !DIEnumerator(name: "ERR_CONN", value: -11)
!61 = !DIEnumerator(name: "ERR_IF", value: -12)
!62 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!63 = !DIEnumerator(name: "ERR_RST", value: -14)
!64 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!65 = !DIEnumerator(name: "ERR_ARG", value: -16)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !67, line: 92, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!72 = !{!73, !226, !91, !229, !74, !230, !228, !232, !234, !85}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcpip_msg", file: !6, line: 129, size: 256, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !6, line: 130, baseType: !5, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !75, file: !6, line: 161, baseType: !79, size: 192, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !6, line: 131, size: 192, elements: !80)
!80 = !{!81, !216}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "inp", scope: !79, file: !6, line: 148, baseType: !82, size: 192)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !6, line: 144, size: 192, elements: !83)
!83 = !{!84, !109, !215}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !82, file: !6, line: 145, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !87, line: 186, size: 192, elements: !88)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !{!89, !90, !92, !100, !101, !106, !107, !108}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !87, line: 188, baseType: !85, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !86, file: !87, line: 191, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !86, file: !87, line: 200, baseType: !93, size: 16, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !94, line: 127, baseType: !95)
!94 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 36, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !98, line: 57, baseType: !99)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !86, file: !87, line: 203, baseType: !93, size: 16, offset: 144)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !86, file: !87, line: 208, baseType: !102, size: 8, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !94, line: 125, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 24, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !98, line: 43, baseType: !105)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !87, line: 211, baseType: !102, size: 8, offset: 168)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !86, file: !87, line: 218, baseType: !102, size: 8, offset: 176)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !86, file: !87, line: 221, baseType: !102, size: 8, offset: 184)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "netif", scope: !82, file: !6, line: 146, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !13, line: 260, size: 2240, elements: !112)
!112 = !{!113, !114, !142, !143, !144, !148, !150, !152, !153, !163, !170, !175, !182, !187, !188, !189, !193, !194, !195, !196, !200, !201, !202, !207, !208, !209, !210}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !13, line: 263, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !111, file: !13, line: 268, baseType: !115, size: 192, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !116, line: 76, baseType: !117)
!116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !116, line: 69, size: 192, elements: !118)
!118 = !{!119, !141}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !117, file: !116, line: 73, baseType: !120, size: 160)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !116, line: 70, size: 160, elements: !121)
!121 = !{!122, !135}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !120, file: !116, line: 71, baseType: !123, size: 160)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !124, line: 67, baseType: !125)
!124 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !124, line: 59, size: 160, elements: !126)
!126 = !{!127, !134}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !125, file: !124, line: 60, baseType: !128, size: 128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !132)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !94, line: 129, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 48, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 79, baseType: !7)
!132 = !{!133}
!133 = !DISubrange(count: 4)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !125, file: !124, line: 62, baseType: !102, size: 8, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !120, file: !116, line: 72, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !137, line: 57, baseType: !138)
!137 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !137, line: 51, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !138, file: !137, line: 52, baseType: !129, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !116, line: 75, baseType: !102, size: 8, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !111, file: !13, line: 269, baseType: !115, size: 192, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !111, file: !13, line: 270, baseType: !115, size: 192, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !111, file: !13, line: 274, baseType: !145, size: 576, offset: 640)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 576, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 3)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !111, file: !13, line: 277, baseType: !149, size: 24, offset: 1216)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 24, elements: !146)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !111, file: !13, line: 282, baseType: !151, size: 96, offset: 1248)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 96, elements: !146)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !111, file: !13, line: 283, baseType: !151, size: 96, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !111, file: !13, line: 288, baseType: !154, size: 64, offset: 1472)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !13, line: 178, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !85, !110}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !46, line: 96, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !94, line: 126, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !96, line: 20, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !98, line: 41, baseType: !162)
!162 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !111, file: !13, line: 294, baseType: !164, size: 64, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !13, line: 189, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!158, !110, !85, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !111, file: !13, line: 299, baseType: !171, size: 64, offset: 1600)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !13, line: 212, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!158, !110, !85}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !111, file: !13, line: 305, baseType: !176, size: 64, offset: 1664)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !13, line: 202, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!158, !110, !85, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !111, file: !13, line: 310, baseType: !183, size: 64, offset: 1728)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !13, line: 214, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !110}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !111, file: !13, line: 319, baseType: !183, size: 64, offset: 1792)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !111, file: !13, line: 323, baseType: !91, size: 64, offset: 1856)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !111, file: !13, line: 325, baseType: !190, size: 64, offset: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 1)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !111, file: !13, line: 332, baseType: !93, size: 16, offset: 1984)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !111, file: !13, line: 335, baseType: !93, size: 16, offset: 2000)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !111, file: !13, line: 338, baseType: !93, size: 16, offset: 2016)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !111, file: !13, line: 341, baseType: !197, size: 48, offset: 2032)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 48, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 6)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !111, file: !13, line: 343, baseType: !102, size: 8, offset: 2080)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !13, line: 345, baseType: !102, size: 8, offset: 2088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !13, line: 347, baseType: !203, size: 16, offset: 2096)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 16, elements: !205)
!204 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!205 = !{!206}
!206 = !DISubrange(count: 2)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !111, file: !13, line: 350, baseType: !102, size: 8, offset: 2112)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !111, file: !13, line: 353, baseType: !102, size: 8, offset: 2120)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !111, file: !13, line: 357, baseType: !102, size: 8, offset: 2128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !111, file: !13, line: 377, baseType: !211, size: 64, offset: 2176)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !13, line: 222, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!158, !110, !180, !12}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "input_fn", scope: !82, file: !6, line: 147, baseType: !154, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !79, file: !6, line: 153, baseType: !217, size: 128)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !6, line: 150, size: 128, elements: !218)
!218 = !{!219, !225}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !217, file: !6, line: 151, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpip_callback_fn", file: !221, line: 72, baseType: !222)
!221 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpip.h", directory: "/root/.unikraft/apps/redis/build")
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !91}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !217, file: !6, line: 152, baseType: !91, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !96, line: 82, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !98, line: 232, baseType: !228)
!228 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcpip_callback_msg", file: !221, line: 75, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !96, line: 60, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !98, line: 105, baseType: !228)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!235 = !{!236, !248, !250, !252, !0, !320, !344}
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__str", scope: !238, file: !3, line: 637, type: !245, isLocal: true, isDefinition: true)
!238 = distinct !DISubprogram(name: "tcpip_init", scope: !3, file: !3, line: 622, type: !239, isLocal: false, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241, !91}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpip_init_done_fn", file: !221, line: 70, baseType: !222)
!242 = !{!243, !244}
!243 = !DILocalVariable(name: "initfunc", arg: 1, scope: !238, file: !3, line: 622, type: !241)
!244 = !DILocalVariable(name: "arg", arg: 2, scope: !238, file: !3, line: 622, type: !91)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 40, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 5)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "tcpip_init_done", scope: !2, file: !3, line: 59, type: !241, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "tcpip_init_done_arg", scope: !2, file: !3, line: 60, type: !91, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "tcpip_mbox", scope: !2, file: !3, line: 62, type: !254, isLocal: true, isDefinition: true)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_mbox_t", file: !255, line: 78, baseType: !256)
!255 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 74, size: 192, elements: !257)
!257 = !{!258, !315, !319}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !256, file: !255, line: 75, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !261, line: 77, size: 832, elements: !262)
!261 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!262 = !{!263, !270, !275, !280, !285, !287, !292, !293, !294, !299, !304, !309, !310, !311}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !260, file: !261, line: 79, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !261, line: 54, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!91, !259, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !269, line: 58, baseType: !228)
!269 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!270 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !260, file: !261, line: 80, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !261, line: 56, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!91, !259, !268, !268}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !260, file: !261, line: 81, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !261, line: 62, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!91, !259, !91, !268}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !260, file: !261, line: 82, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !261, line: 58, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!47, !259, !229, !268, !268}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !260, file: !261, line: 83, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !261, line: 60, baseType: !272)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !260, file: !261, line: 84, baseType: !288, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !261, line: 64, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !259, !91}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !260, file: !261, line: 87, baseType: !288, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !260, file: !261, line: 88, baseType: !264, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !260, file: !261, line: 92, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !261, line: 66, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!91, !259, !228}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !260, file: !261, line: 93, baseType: !300, size: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !261, line: 68, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !259, !91, !228}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !260, file: !261, line: 99, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !261, line: 70, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!47, !259, !91, !268}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !260, file: !261, line: 100, baseType: !268, size: 64, offset: 704)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !261, line: 103, baseType: !259, size: 64, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !260, file: !261, line: 104, baseType: !312, offset: 832)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: -1)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !256, file: !255, line: 76, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mbox", file: !318, line: 48, flags: DIFlagFwdDecl)
!318 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukmpi/include/uk/mbox.h", directory: "/root/.unikraft/apps/redis/build")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !256, file: !255, line: 77, baseType: !47, size: 32, offset: 128)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "__str", scope: !322, file: !323, line: 198, type: !341, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "uk_pr_crit", scope: !323, file: !323, line: 194, type: !324, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !328)
!323 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326, null}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "fmt", arg: 1, scope: !322, file: !323, line: 194, type: !326)
!330 = !DILocalVariable(name: "argp", scope: !322, file: !323, line: 196, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 32, baseType: !333)
!332 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !334)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !191)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !336)
!336 = !{!337, !338, !339, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !335, file: !3, line: 196, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !335, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !335, file: !3, line: 196, baseType: !91, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !335, file: !3, line: 196, baseType: !91, size: 64, offset: 128)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 8)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "__str", scope: !322, file: !323, line: 198, type: !341, isLocal: true, isDefinition: true)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_mutex_t", file: !255, line: 67, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 64, size: 320, elements: !348)
!348 = !{!349, !714}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !347, file: !255, line: 65, baseType: !350, size: 256)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !351, line: 58, size: 256, elements: !352)
!351 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!352 = !{!353, !354, !713}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !350, file: !351, line: 59, baseType: !47, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !350, file: !351, line: 60, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !357, line: 59, size: 1024, elements: !358)
!357 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!358 = !{!359, !360, !361, !362, !363, !369, !370, !376, !378, !394, !478, !479, !480, !683}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !357, line: 60, baseType: !326, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !356, file: !357, line: 61, baseType: !91, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !356, file: !357, line: 62, baseType: !91, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !356, file: !357, line: 63, baseType: !91, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !356, file: !357, line: 64, baseType: !364, size: 128, offset: 256)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !357, line: 64, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !364, file: !357, line: 64, baseType: !355, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !364, file: !357, line: 64, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !357, line: 65, baseType: !130, size: 32, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !356, file: !357, line: 66, baseType: !371, size: 64, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !372, line: 49, baseType: !373)
!372 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !374, line: 128, baseType: !375)
!374 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!375 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !356, file: !357, line: 67, baseType: !377, size: 8, offset: 512)
!377 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !356, file: !357, line: 68, baseType: !379, size: 128, offset: 576)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !380, line: 42, size: 128, elements: !381)
!380 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!381 = !{!382, !392}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !379, file: !380, line: 42, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !380, line: 35, size: 192, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !384, file: !380, line: 36, baseType: !47, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !384, file: !380, line: 37, baseType: !355, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !384, file: !380, line: 38, baseType: !389, size: 64, offset: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !380, line: 38, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !389, file: !380, line: 38, baseType: !383, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !379, file: !380, line: 42, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !356, file: !357, line: 69, baseType: !395, size: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !397, line: 90, size: 2176, elements: !398)
!397 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!398 = !{!399, !404, !421, !426, !428, !430, !435, !443, !448, !453, !454, !455, !460, !475, !476, !477}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !396, file: !397, line: 91, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !397, line: 68, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !395}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !396, file: !397, line: 93, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !397, line: 71, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!47, !395, !355, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !412, line: 62, baseType: !413)
!412 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !412, line: 55, size: 128, elements: !414)
!414 = !{!415, !416, !418}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !413, file: !412, line: 57, baseType: !377, size: 8)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !413, file: !412, line: 59, baseType: !417, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !412, line: 53, baseType: !47)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !413, file: !412, line: 61, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !372, line: 48, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !374, line: 129, baseType: !228)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !396, file: !397, line: 94, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !397, line: 74, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !395, !355}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !396, file: !397, line: 95, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !397, line: 76, baseType: !423)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !396, file: !397, line: 96, baseType: !429, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !397, line: 78, baseType: !423)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !396, file: !397, line: 98, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !397, line: 81, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!47, !395, !355, !417}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !396, file: !397, line: 99, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !397, line: 83, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!47, !395, !440, !442}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !396, file: !397, line: 100, baseType: !444, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !397, line: 85, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!47, !395, !355, !47}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !396, file: !397, line: 101, baseType: !449, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !397, line: 87, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!47, !395, !440, !234}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !396, file: !397, line: 104, baseType: !377, size: 8, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !396, file: !397, line: 105, baseType: !356, size: 1024, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !396, file: !397, line: 106, baseType: !456, size: 128, offset: 1664)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !357, line: 93, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !456, file: !357, line: 93, baseType: !355, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !456, file: !357, line: 93, baseType: !368, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !396, file: !397, line: 107, baseType: !461, size: 192, offset: 1792)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !462, line: 59, size: 192, elements: !463)
!462 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!463 = !{!464, !469, !470}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !461, file: !462, line: 61, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !462, line: 51, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!91, !259, !228, !228}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !461, file: !462, line: 63, baseType: !222, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !461, file: !462, line: 65, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !462, line: 56, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !91, !91}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !396, file: !397, line: 108, baseType: !259, size: 64, offset: 1984)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !397, line: 109, baseType: !395, size: 64, offset: 2048)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !396, file: !397, line: 110, baseType: !91, size: 64, offset: 2112)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !356, file: !357, line: 70, baseType: !91, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !356, file: !357, line: 72, baseType: !47, size: 32, offset: 832)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !356, file: !357, line: 82, baseType: !481, size: 64, offset: 896)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !483, line: 569, size: 14912, elements: !484)
!483 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!484 = !{!485, !486, !554, !555, !556, !557, !561, !562, !566, !567, !571, !583, !584, !585, !587, !588, !589, !647, !668, !669, !674, !681}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !482, file: !483, line: 571, baseType: !47, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !482, file: !483, line: 576, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !483, line: 287, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !483, line: 181, size: 1408, elements: !490)
!490 = !{!491, !493, !494, !495, !497, !498, !503, !504, !505, !512, !516, !521, !525, !526, !527, !528, !530, !532, !533, !534, !536, !537, !541, !553}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !489, file: !483, line: 182, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !489, file: !483, line: 183, baseType: !47, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !489, file: !483, line: 184, baseType: !47, size: 32, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !489, file: !483, line: 185, baseType: !496, size: 16, offset: 128)
!496 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !489, file: !483, line: 186, baseType: !496, size: 16, offset: 144)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !489, file: !483, line: 187, baseType: !499, size: 128, offset: 192)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !483, line: 117, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !499, file: !483, line: 118, baseType: !492, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !499, file: !483, line: 119, baseType: !47, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !489, file: !483, line: 188, baseType: !47, size: 32, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !489, file: !483, line: 195, baseType: !91, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !489, file: !483, line: 197, baseType: !506, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !481, !91, !511, !47}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !510, line: 145, baseType: !375)
!510 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !489, file: !483, line: 199, baseType: !513, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!509, !481, !91, !326, !47}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !489, file: !483, line: 202, baseType: !517, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !481, !91, !520, !47}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !510, line: 114, baseType: !375)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !489, file: !483, line: 203, baseType: !522, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!47, !481, !91}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !489, file: !483, line: 206, baseType: !499, size: 128, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !489, file: !483, line: 207, baseType: !492, size: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !489, file: !483, line: 208, baseType: !47, size: 32, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !489, file: !483, line: 211, baseType: !529, size: 24, offset: 928)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !146)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !489, file: !483, line: 212, baseType: !531, size: 8, offset: 952)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 8, elements: !191)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !489, file: !483, line: 215, baseType: !499, size: 128, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !489, file: !483, line: 218, baseType: !47, size: 32, offset: 1088)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !489, file: !483, line: 219, baseType: !535, size: 64, offset: 1152)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !510, line: 44, baseType: !375)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !489, file: !483, line: 222, baseType: !481, size: 64, offset: 1216)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !489, file: !483, line: 226, baseType: !538, size: 32, offset: 1280)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !510, line: 175, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !540, line: 12, baseType: !47)
!540 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !489, file: !483, line: 228, baseType: !542, size: 64, offset: 1312)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !510, line: 171, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 163, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !543, file: !510, line: 165, baseType: !47, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !543, file: !510, line: 170, baseType: !547, size: 32, offset: 32)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !543, file: !510, line: 166, size: 32, elements: !548)
!548 = !{!549, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !547, file: !510, line: 168, baseType: !550, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !269, line: 124, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !547, file: !510, line: 169, baseType: !552, size: 32)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 32, elements: !132)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !489, file: !483, line: 229, baseType: !47, size: 32, offset: 1376)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !482, file: !483, line: 576, baseType: !487, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !482, file: !483, line: 576, baseType: !487, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !482, file: !483, line: 578, baseType: !47, size: 32, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !482, file: !483, line: 579, baseType: !558, size: 200, offset: 288)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 200, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 25)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !482, file: !483, line: 582, baseType: !47, size: 32, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !482, file: !483, line: 583, baseType: !563, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !565, line: 9, flags: DIFlagFwdDecl)
!565 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !482, file: !483, line: 585, baseType: !47, size: 32, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !482, file: !483, line: 587, baseType: !568, size: 64, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !481}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !482, file: !483, line: 590, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !483, line: 47, size: 256, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !573, file: !483, line: 49, baseType: !572, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !573, file: !483, line: 50, baseType: !47, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !573, file: !483, line: 50, baseType: !47, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !573, file: !483, line: 50, baseType: !47, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !573, file: !483, line: 50, baseType: !47, size: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !573, file: !483, line: 51, baseType: !581, size: 32, offset: 192)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 32, elements: !191)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !483, line: 25, baseType: !7)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !482, file: !483, line: 591, baseType: !47, size: 32, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !482, file: !483, line: 592, baseType: !572, size: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !482, file: !483, line: 593, baseType: !586, size: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !482, file: !483, line: 596, baseType: !47, size: 32, offset: 1024)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !482, file: !483, line: 597, baseType: !511, size: 64, offset: 1088)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !482, file: !483, line: 632, baseType: !590, size: 2880, offset: 1152)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !483, line: 599, size: 2880, elements: !591)
!591 = !{!592, !638}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !590, file: !483, line: 622, baseType: !593, size: 1728)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !590, file: !483, line: 601, size: 1728, elements: !594)
!594 = !{!595, !596, !597, !601, !613, !614, !616, !623, !624, !625, !626, !627, !631, !632, !633, !634, !635, !636, !637}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !593, file: !483, line: 603, baseType: !7, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !593, file: !483, line: 604, baseType: !511, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !593, file: !483, line: 605, baseType: !598, size: 208, offset: 128)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 208, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 26)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !593, file: !483, line: 606, baseType: !602, size: 288, offset: 352)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !483, line: 55, size: 288, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !602, file: !483, line: 57, baseType: !47, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !602, file: !483, line: 58, baseType: !47, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !602, file: !483, line: 59, baseType: !47, size: 32, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !602, file: !483, line: 60, baseType: !47, size: 32, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !602, file: !483, line: 61, baseType: !47, size: 32, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !602, file: !483, line: 62, baseType: !47, size: 32, offset: 160)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !602, file: !483, line: 63, baseType: !47, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !602, file: !483, line: 64, baseType: !47, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !602, file: !483, line: 65, baseType: !47, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !593, file: !483, line: 607, baseType: !47, size: 32, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !593, file: !483, line: 608, baseType: !615, size: 64, offset: 704)
!615 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !593, file: !483, line: 609, baseType: !617, size: 112, offset: 768)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !483, line: 319, size: 112, elements: !618)
!618 = !{!619, !621, !622}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !617, file: !483, line: 320, baseType: !620, size: 48)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 48, elements: !146)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !617, file: !483, line: 321, baseType: !620, size: 48, offset: 48)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !617, file: !483, line: 322, baseType: !99, size: 16, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !593, file: !483, line: 610, baseType: !542, size: 64, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !593, file: !483, line: 611, baseType: !542, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !593, file: !483, line: 612, baseType: !542, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !593, file: !483, line: 613, baseType: !341, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !593, file: !483, line: 614, baseType: !628, size: 192, offset: 1152)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 192, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 24)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !593, file: !483, line: 615, baseType: !47, size: 32, offset: 1344)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !593, file: !483, line: 616, baseType: !542, size: 64, offset: 1376)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !593, file: !483, line: 617, baseType: !542, size: 64, offset: 1440)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !593, file: !483, line: 618, baseType: !542, size: 64, offset: 1504)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !593, file: !483, line: 619, baseType: !542, size: 64, offset: 1568)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !593, file: !483, line: 620, baseType: !542, size: 64, offset: 1632)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !593, file: !483, line: 621, baseType: !47, size: 32, offset: 1696)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !590, file: !483, line: 631, baseType: !639, size: 2880)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !590, file: !483, line: 626, size: 2880, elements: !640)
!640 = !{!641, !645}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !639, file: !483, line: 629, baseType: !642, size: 1920)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 1920, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 30)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !639, file: !483, line: 630, baseType: !646, size: 960, offset: 1920)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !643)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !482, file: !483, line: 636, baseType: !648, size: 64, offset: 4032)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !483, line: 93, size: 6336, elements: !650)
!650 = !{!651, !652, !653, !660}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !649, file: !483, line: 94, baseType: !648, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !649, file: !483, line: 95, baseType: !47, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !649, file: !483, line: 97, baseType: !654, size: 2048, offset: 128)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 2048, elements: !658)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null}
!658 = !{!659}
!659 = !DISubrange(count: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !649, file: !483, line: 98, baseType: !661, size: 4160, offset: 2176)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !483, line: 74, size: 4160, elements: !662)
!662 = !{!663, !665, !666, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !661, file: !483, line: 75, baseType: !664, size: 2048)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !658)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !661, file: !483, line: 76, baseType: !664, size: 2048, offset: 2048)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !661, file: !483, line: 78, baseType: !582, size: 32, offset: 4096)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !661, file: !483, line: 81, baseType: !582, size: 32, offset: 4128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !482, file: !483, line: 637, baseType: !649, size: 6336, offset: 4096)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !482, file: !483, line: 641, baseType: !670, size: 64, offset: 10432)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !47}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !482, file: !483, line: 646, baseType: !675, size: 192, offset: 10496)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !483, line: 291, size: 192, elements: !676)
!676 = !{!677, !679, !680}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !675, file: !483, line: 293, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !675, file: !483, line: 294, baseType: !47, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !675, file: !483, line: 295, baseType: !487, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !482, file: !483, line: 648, baseType: !682, size: 4224, offset: 10688)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 4224, elements: !146)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !356, file: !357, line: 85, baseType: !684, size: 64, offset: 960)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !67, line: 114, size: 640, elements: !686)
!686 = !{!687, !691, !692, !699, !712}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !685, file: !67, line: 116, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !689, line: 64, baseType: !690)
!689 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !689, line: 63, baseType: !228)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !685, file: !67, line: 118, baseType: !688, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !685, file: !67, line: 120, baseType: !693, size: 128, offset: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !694, line: 51, size: 128, elements: !695)
!694 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!695 = !{!696, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !694, line: 52, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !693, file: !694, line: 53, baseType: !697, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !685, file: !67, line: 122, baseType: !700, size: 256, offset: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !67, line: 98, size: 256, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !700, file: !67, line: 107, baseType: !66, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !700, file: !67, line: 109, baseType: !688, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !700, file: !67, line: 111, baseType: !705, size: 96, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !689, line: 72, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 68, size: 96, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !706, file: !689, line: 69, baseType: !47, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !706, file: !689, line: 70, baseType: !47, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !706, file: !689, line: 71, baseType: !711, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !689, line: 61, baseType: !47)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !685, file: !67, line: 124, baseType: !693, size: 128, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !350, file: !351, line: 61, baseType: !379, size: 128, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !347, file: !255, line: 66, baseType: !47, size: 32, offset: 256)
!715 = !{i32 2, !"Dwarf Version", i32 4}
!716 = !{i32 2, !"Debug Info Version", i32 3}
!717 = !{i32 1, !"wchar_size", i32 4}
!718 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!719 = distinct !DISubprogram(name: "__tcpip_thread", scope: !3, file: !3, line: 138, type: !223, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !720)
!720 = !{!721, !722, !723}
!721 = !DILocalVariable(name: "arg", arg: 1, scope: !719, file: !3, line: 138, type: !91)
!722 = !DILocalVariable(name: "msg", scope: !719, file: !3, line: 139, type: !74)
!723 = !DILocalVariable(name: "_dss_msg", scope: !719, file: !3, line: 140, type: !73)
!724 = !DILocation(line: 138, column: 27, scope: !719)
!725 = !DILocation(line: 139, column: 3, scope: !719)
!726 = !DILocation(line: 140, column: 56, scope: !719)
!727 = !DILocation(line: 140, column: 75, scope: !719)
!728 = !DILocation(line: 140, column: 33, scope: !719)
!729 = !DILocation(line: 140, column: 22, scope: !719)
!730 = !DILocation(line: 145, column: 3, scope: !719)
!731 = !DILocation(line: 146, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !719, file: !3, line: 146, column: 7)
!733 = !{!734, !734, i64 0}
!734 = !{!"any pointer", !735, i64 0}
!735 = !{!"omnipotent char", !736, i64 0}
!736 = !{!"Simple C/C++ TBAA"}
!737 = !DILocation(line: 146, column: 23, scope: !732)
!738 = !DILocation(line: 146, column: 7, scope: !719)
!739 = !DILocation(line: 147, column: 21, scope: !740)
!740 = distinct !DILexicalBlock(scope: !732, file: !3, line: 146, column: 32)
!741 = !DILocation(line: 147, column: 5, scope: !740)
!742 = !DILocation(line: 148, column: 3, scope: !740)
!743 = !DILocation(line: 150, column: 3, scope: !719)
!744 = !DILocation(line: 93, column: 15, scope: !745, inlinedAt: !754)
!745 = distinct !DISubprogram(name: "tcpip_timeouts_mbox_fetch", scope: !3, file: !3, line: 86, type: !746, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !749)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !748, !229}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!749 = !{!750, !751, !752, !753}
!750 = !DILocalVariable(name: "mbox", arg: 1, scope: !745, file: !3, line: 86, type: !748)
!751 = !DILocalVariable(name: "msg", arg: 2, scope: !745, file: !3, line: 86, type: !229)
!752 = !DILocalVariable(name: "sleeptime", scope: !745, file: !3, line: 88, type: !129)
!753 = !DILocalVariable(name: "res", scope: !745, file: !3, line: 88, type: !129)
!754 = distinct !DILocation(line: 153, column: 5, scope: !755)
!755 = distinct !DILexicalBlock(scope: !719, file: !3, line: 150, column: 13)
!756 = !DILocation(line: 88, column: 9, scope: !745, inlinedAt: !754)
!757 = !DILocation(line: 94, column: 7, scope: !745, inlinedAt: !754)
!758 = !DILocation(line: 95, column: 5, scope: !759, inlinedAt: !754)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 94, column: 53)
!760 = distinct !DILexicalBlock(scope: !745, file: !3, line: 94, column: 7)
!761 = !DILocation(line: 96, column: 5, scope: !759, inlinedAt: !754)
!762 = !DILocation(line: 97, column: 5, scope: !759, inlinedAt: !754)
!763 = !DILocation(line: 98, column: 5, scope: !759, inlinedAt: !754)
!764 = !DILocation(line: 100, column: 5, scope: !765, inlinedAt: !754)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 99, column: 30)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 99, column: 14)
!767 = !DILocation(line: 102, column: 5, scope: !765, inlinedAt: !754)
!768 = !DILocation(line: 105, column: 3, scope: !745, inlinedAt: !754)
!769 = !DILocation(line: 106, column: 9, scope: !745, inlinedAt: !754)
!770 = !DILocation(line: 88, column: 20, scope: !745, inlinedAt: !754)
!771 = !DILocation(line: 107, column: 3, scope: !745, inlinedAt: !754)
!772 = !DILocation(line: 108, column: 11, scope: !773, inlinedAt: !754)
!773 = distinct !DILexicalBlock(scope: !745, file: !3, line: 108, column: 7)
!774 = !DILocation(line: 108, column: 7, scope: !745, inlinedAt: !754)
!775 = !DILocation(line: 111, column: 5, scope: !776, inlinedAt: !754)
!776 = distinct !DILexicalBlock(scope: !773, file: !3, line: 108, column: 32)
!777 = !DILocation(line: 113, column: 5, scope: !776, inlinedAt: !754)
!778 = !DILocation(line: 115, column: 1, scope: !745, inlinedAt: !754)
!779 = !DILocation(line: 154, column: 10, scope: !780)
!780 = distinct !DILexicalBlock(scope: !755, file: !3, line: 154, column: 9)
!781 = !DILocation(line: 154, column: 21, scope: !780)
!782 = !DILocation(line: 154, column: 9, scope: !755)
!783 = !DILocation(line: 156, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 156, column: 7)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 156, column: 7)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 156, column: 7)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 156, column: 7)
!788 = distinct !DILexicalBlock(scope: !780, file: !3, line: 154, column: 30)
!789 = !DILocation(line: 156, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 156, column: 7)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 156, column: 7)
!792 = distinct !DILexicalBlock(scope: !784, file: !3, line: 156, column: 7)
!793 = !DILocalVariable(name: "msg", arg: 1, scope: !794, file: !3, line: 176, type: !74)
!794 = distinct !DISubprogram(name: "tcpip_thread_handle_msg", scope: !3, file: !3, line: 176, type: !795, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !74}
!797 = !{!793}
!798 = !DILocation(line: 176, column: 43, scope: !794, inlinedAt: !799)
!799 = distinct !DILocation(line: 159, column: 5, scope: !755)
!800 = !DILocation(line: 178, column: 16, scope: !794, inlinedAt: !799)
!801 = !{!802, !735, i64 0}
!802 = !{!"tcpip_msg", !735, i64 0, !735, i64 8}
!803 = !DILocation(line: 178, column: 3, scope: !794, inlinedAt: !799)
!804 = !DILocation(line: 194, column: 24, scope: !805, inlinedAt: !799)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 194, column: 11)
!806 = distinct !DILexicalBlock(scope: !794, file: !3, line: 178, column: 22)
!807 = !{!735, !735, i64 0}
!808 = !DILocation(line: 194, column: 46, scope: !805, inlinedAt: !799)
!809 = !DILocation(line: 194, column: 62, scope: !805, inlinedAt: !799)
!810 = !DILocation(line: 194, column: 11, scope: !805, inlinedAt: !799)
!811 = !DILocation(line: 194, column: 69, scope: !805, inlinedAt: !799)
!812 = !DILocation(line: 194, column: 11, scope: !806, inlinedAt: !799)
!813 = !DILocation(line: 195, column: 32, scope: !814, inlinedAt: !799)
!814 = distinct !DILexicalBlock(scope: !805, file: !3, line: 194, column: 80)
!815 = !DILocation(line: 195, column: 9, scope: !814, inlinedAt: !799)
!816 = !DILocation(line: 196, column: 7, scope: !814, inlinedAt: !799)
!817 = !DILocation(line: 197, column: 39, scope: !806, inlinedAt: !799)
!818 = !DILocation(line: 197, column: 7, scope: !806, inlinedAt: !799)
!819 = !DILocation(line: 198, column: 7, scope: !806, inlinedAt: !799)
!820 = !DILocation(line: 216, column: 12, scope: !806, inlinedAt: !799)
!821 = !DILocation(line: 216, column: 19, scope: !806, inlinedAt: !799)
!822 = !DILocation(line: 216, column: 40, scope: !806, inlinedAt: !799)
!823 = !DILocation(line: 216, column: 7, scope: !806, inlinedAt: !799)
!824 = !DILocation(line: 217, column: 37, scope: !806, inlinedAt: !799)
!825 = !DILocation(line: 217, column: 7, scope: !806, inlinedAt: !799)
!826 = !DILocation(line: 218, column: 7, scope: !806, inlinedAt: !799)
!827 = !DILocation(line: 222, column: 12, scope: !806, inlinedAt: !799)
!828 = !DILocation(line: 222, column: 19, scope: !806, inlinedAt: !799)
!829 = !DILocation(line: 222, column: 40, scope: !806, inlinedAt: !799)
!830 = !DILocation(line: 222, column: 7, scope: !806, inlinedAt: !799)
!831 = !DILocation(line: 223, column: 7, scope: !806, inlinedAt: !799)
!832 = !DILocation(line: 227, column: 7, scope: !833, inlinedAt: !799)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 227, column: 7)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 227, column: 7)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 227, column: 7)
!836 = distinct !DILexicalBlock(scope: !806, file: !3, line: 227, column: 7)
!837 = !DILocation(line: 227, column: 7, scope: !838, inlinedAt: !799)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 227, column: 7)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 227, column: 7)
!840 = distinct !DILexicalBlock(scope: !833, file: !3, line: 227, column: 7)
!841 = !DILocation(line: 230, column: 1, scope: !794, inlinedAt: !799)
!842 = distinct !{!842, !743, !843}
!843 = !DILocation(line: 160, column: 3, scope: !719)
!844 = !DILocation(line: 194, column: 43, scope: !322)
!845 = !DILocation(line: 196, column: 2, scope: !322)
!846 = !DILocation(line: 196, column: 10, scope: !322)
!847 = !DILocation(line: 197, column: 2, scope: !322)
!848 = !DILocation(line: 198, column: 2, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !323, line: 198, column: 2)
!850 = distinct !DILexicalBlock(scope: !322, file: !323, line: 198, column: 2)
!851 = !DILocation(line: 199, column: 2, scope: !322)
!852 = !DILocation(line: 200, column: 1, scope: !322)
!853 = distinct !DISubprogram(name: "tcpip_thread", scope: !3, file: !3, line: 164, type: !223, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !854)
!854 = !{!855}
!855 = !DILocalVariable(name: "arg", arg: 1, scope: !853, file: !3, line: 164, type: !91)
!856 = !DILocation(line: 164, column: 20, scope: !853)
!857 = !DILocalVariable(name: "val", arg: 1, scope: !858, file: !859, line: 88, type: !130)
!858 = distinct !DISubprogram(name: "wrpkru", scope: !859, file: !859, line: 88, type: !860, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !862)
!859 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!860 = !DISubroutineType(types: !861)
!861 = !{null, !130}
!862 = !{!857}
!863 = !DILocation(line: 88, column: 67, scope: !858, inlinedAt: !864)
!864 = distinct !DILocation(line: 167, column: 3, scope: !853)
!865 = !DILocation(line: 91, column: 2, scope: !858, inlinedAt: !864)
!866 = !{i32 552212}
!867 = !DILocation(line: 97, column: 1, scope: !858, inlinedAt: !864)
!868 = !DILocalVariable(name: "arg", arg: 1, scope: !869, file: !3, line: 133, type: !91)
!869 = distinct !DISubprogram(name: "_tcpip_thread", scope: !3, file: !3, line: 133, type: !223, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !870)
!870 = !{!868, !871}
!871 = !DILocalVariable(name: "tid", scope: !872, file: !3, line: 135, type: !130)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 135, column: 3)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 135, column: 3)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 135, column: 3)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 135, column: 3)
!876 = distinct !DILexicalBlock(scope: !869, file: !3, line: 135, column: 3)
!877 = !DILocation(line: 133, column: 21, scope: !869, inlinedAt: !878)
!878 = distinct !DILocation(line: 169, column: 3, scope: !853)
!879 = !DILocation(line: 120, column: 2, scope: !880, inlinedAt: !886)
!880 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !881, file: !881, line: 116, type: !882, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !884)
!881 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!882 = !DISubroutineType(types: !883)
!883 = !{!228}
!884 = !{!885}
!885 = !DILocalVariable(name: "sp", scope: !880, file: !881, line: 118, type: !228)
!886 = distinct !DILocation(line: 135, column: 3, scope: !875, inlinedAt: !878)
!887 = !{i32 532605}
!888 = !DILocation(line: 118, column: 16, scope: !880, inlinedAt: !886)
!889 = !DILocation(line: 121, column: 2, scope: !880, inlinedAt: !886)
!890 = !DILocation(line: 135, column: 3, scope: !875, inlinedAt: !878)
!891 = !DILocation(line: 120, column: 2, scope: !880, inlinedAt: !892)
!892 = distinct !DILocation(line: 135, column: 3, scope: !875, inlinedAt: !878)
!893 = !DILocation(line: 118, column: 16, scope: !880, inlinedAt: !892)
!894 = !DILocation(line: 121, column: 2, scope: !880, inlinedAt: !892)
!895 = !DILocation(line: 135, column: 3, scope: !876, inlinedAt: !878)
!896 = !DILocation(line: 135, column: 3, scope: !897, inlinedAt: !878)
!897 = distinct !DILexicalBlock(scope: !875, file: !3, line: 135, column: 3)
!898 = !DILocation(line: 120, column: 2, scope: !880, inlinedAt: !899)
!899 = distinct !DILocation(line: 49, column: 21, scope: !900, inlinedAt: !906)
!900 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !901, file: !901, line: 47, type: !902, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !904)
!901 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!902 = !DISubroutineType(types: !903)
!903 = !{!47}
!904 = !{!905}
!905 = !DILocalVariable(name: "sp", scope: !900, file: !901, line: 49, type: !228)
!906 = distinct !DILocation(line: 135, column: 3, scope: !872, inlinedAt: !878)
!907 = !DILocation(line: 118, column: 16, scope: !880, inlinedAt: !899)
!908 = !DILocation(line: 121, column: 2, scope: !880, inlinedAt: !899)
!909 = !DILocation(line: 49, column: 16, scope: !900, inlinedAt: !906)
!910 = !DILocation(line: 50, column: 19, scope: !900, inlinedAt: !906)
!911 = !DILocation(line: 50, column: 11, scope: !900, inlinedAt: !906)
!912 = !DILocation(line: 50, column: 9, scope: !900, inlinedAt: !906)
!913 = !{!914, !914, i64 0}
!914 = !{!"int", !735, i64 0}
!915 = !DILocation(line: 50, column: 2, scope: !900, inlinedAt: !906)
!916 = !DILocation(line: 135, column: 3, scope: !872, inlinedAt: !878)
!917 = !{i32 -2146178975, i32 -2146178962, i32 -2146178937, i32 -2146178913, i32 -2146178888, i32 -2146178813, i32 -2146178788, i32 -2146178644, i32 -2146176436, i32 -2146176347, i32 -2146176226, i32 -2146176131, i32 -2146176030, i32 -2146176003, i32 -2146175920, i32 -2146175831, i32 -2146175710, i32 -2146175610, i32 -2146175504, i32 -2146175396, i32 -2146178356, i32 -2146178303, i32 -2146178272, i32 -2146178241, i32 -2146178220, i32 -2146178198, i32 -2146178149, i32 -2146178128, i32 -2146175313, i32 -2146175224, i32 -2146175103, i32 -2146175004, i32 -2146174898, i32 -2146174796, i32 -2146174763, i32 -2146174690, i32 -2146174622, i32 -2146177754, i32 -2146177701, i32 -2146177670, i32 -2146177639, i32 -2146177618, i32 -2146177596, i32 -2146177547, i32 -2146177526, i32 -2146174572, i32 -2146174483, i32 -2146174362, i32 -2146174263, i32 -2146174157, i32 -2146174055, i32 -2146174022, i32 -2146173939, i32 -2146173850, i32 -2146173729, i32 -2146173629, i32 -2146173603, i32 -2146173500, i32 -2146173474, i32 -2146177268, i32 -2146177201, i32 -2146177176, i32 -2146177112, i32 -2146176996, i32 -2146176971, i32 -2146176946}
!918 = !DILocation(line: 136, column: 1, scope: !869, inlinedAt: !878)
!919 = !DILocation(line: 170, column: 1, scope: !853)
!920 = distinct !DISubprogram(name: "tcpip_inpkt", scope: !3, file: !3, line: 260, type: !921, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!158, !85, !110, !154}
!923 = !{!924, !925, !926, !927}
!924 = !DILocalVariable(name: "p", arg: 1, scope: !920, file: !3, line: 260, type: !85)
!925 = !DILocalVariable(name: "inp", arg: 2, scope: !920, file: !3, line: 260, type: !110)
!926 = !DILocalVariable(name: "input_fn", arg: 3, scope: !920, file: !3, line: 260, type: !154)
!927 = !DILocalVariable(name: "msg", scope: !920, file: !3, line: 270, type: !74)
!928 = !DILocation(line: 260, column: 26, scope: !920)
!929 = !DILocation(line: 260, column: 43, scope: !920)
!930 = !DILocation(line: 260, column: 63, scope: !920)
!931 = !DILocation(line: 272, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 272, column: 3)
!933 = distinct !DILexicalBlock(scope: !920, file: !3, line: 272, column: 3)
!934 = !DILocation(line: 272, column: 3, scope: !933)
!935 = !DILocation(line: 272, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 272, column: 3)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 272, column: 3)
!938 = !DILocation(line: 272, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 272, column: 3)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 272, column: 3)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 272, column: 3)
!942 = !DILocation(line: 274, column: 29, scope: !920)
!943 = !DILocation(line: 275, column: 11, scope: !944)
!944 = distinct !DILexicalBlock(scope: !920, file: !3, line: 275, column: 7)
!945 = !DILocation(line: 275, column: 7, scope: !920)
!946 = !DILocation(line: 270, column: 21, scope: !920)
!947 = !DILocation(line: 279, column: 8, scope: !920)
!948 = !DILocation(line: 279, column: 13, scope: !920)
!949 = !DILocation(line: 280, column: 8, scope: !920)
!950 = !DILocation(line: 280, column: 16, scope: !920)
!951 = !DILocation(line: 280, column: 18, scope: !920)
!952 = !DILocation(line: 281, column: 16, scope: !920)
!953 = !DILocation(line: 281, column: 22, scope: !920)
!954 = !DILocation(line: 282, column: 16, scope: !920)
!955 = !DILocation(line: 282, column: 25, scope: !920)
!956 = !DILocation(line: 283, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !920, file: !3, line: 283, column: 7)
!958 = !DILocation(line: 283, column: 42, scope: !957)
!959 = !DILocation(line: 283, column: 7, scope: !920)
!960 = !DILocation(line: 284, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 283, column: 53)
!962 = !DILocation(line: 285, column: 5, scope: !961)
!963 = !DILocation(line: 0, scope: !920)
!964 = !DILocation(line: 289, column: 1, scope: !920)
!965 = distinct !DISubprogram(name: "tcpip_input", scope: !3, file: !3, line: 303, type: !156, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !966)
!966 = !{!967, !968}
!967 = !DILocalVariable(name: "p", arg: 1, scope: !965, file: !3, line: 303, type: !85)
!968 = !DILocalVariable(name: "inp", arg: 2, scope: !965, file: !3, line: 303, type: !110)
!969 = !DILocation(line: 303, column: 26, scope: !965)
!970 = !DILocation(line: 303, column: 43, scope: !965)
!971 = !DILocation(line: 306, column: 12, scope: !972)
!972 = distinct !DILexicalBlock(scope: !965, file: !3, line: 306, column: 7)
!973 = !{!974, !735, i64 261}
!974 = !{!"netif", !734, i64 0, !975, i64 8, !975, i64 32, !975, i64 56, !735, i64 80, !735, i64 152, !735, i64 156, !735, i64 168, !734, i64 184, !734, i64 192, !734, i64 200, !734, i64 208, !734, i64 216, !734, i64 224, !734, i64 232, !735, i64 240, !976, i64 248, !976, i64 250, !976, i64 252, !735, i64 254, !735, i64 260, !735, i64 261, !735, i64 262, !735, i64 264, !735, i64 265, !735, i64 266, !734, i64 272}
!975 = !{!"ip_addr", !735, i64 0, !735, i64 20}
!976 = !{!"short", !735, i64 0}
!977 = !DILocation(line: 306, column: 18, scope: !972)
!978 = !DILocation(line: 306, column: 7, scope: !965)
!979 = !DILocation(line: 0, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !3, line: 306, column: 63)
!981 = !DILocation(line: 311, column: 1, scope: !965)
!982 = distinct !DISubprogram(name: "tcpip_callback", scope: !3, file: !3, line: 329, type: !983, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{!158, !220, !91}
!985 = !{!986, !987, !988}
!986 = !DILocalVariable(name: "function", arg: 1, scope: !982, file: !3, line: 329, type: !220)
!987 = !DILocalVariable(name: "ctx", arg: 2, scope: !982, file: !3, line: 329, type: !91)
!988 = !DILocalVariable(name: "msg", scope: !982, file: !3, line: 331, type: !74)
!989 = !DILocation(line: 329, column: 34, scope: !982)
!990 = !DILocation(line: 329, column: 50, scope: !982)
!991 = !DILocation(line: 333, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 333, column: 3)
!993 = distinct !DILexicalBlock(scope: !982, file: !3, line: 333, column: 3)
!994 = !DILocation(line: 333, column: 3, scope: !993)
!995 = !DILocation(line: 333, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 333, column: 3)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 333, column: 3)
!998 = !DILocation(line: 333, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 333, column: 3)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 333, column: 3)
!1001 = distinct !DILexicalBlock(scope: !996, file: !3, line: 333, column: 3)
!1002 = !DILocation(line: 335, column: 29, scope: !982)
!1003 = !DILocation(line: 336, column: 11, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !982, file: !3, line: 336, column: 7)
!1005 = !DILocation(line: 336, column: 7, scope: !982)
!1006 = !DILocation(line: 331, column: 21, scope: !982)
!1007 = !DILocation(line: 340, column: 8, scope: !982)
!1008 = !DILocation(line: 340, column: 13, scope: !982)
!1009 = !DILocation(line: 341, column: 8, scope: !982)
!1010 = !DILocation(line: 341, column: 15, scope: !982)
!1011 = !DILocation(line: 341, column: 24, scope: !982)
!1012 = !DILocation(line: 342, column: 15, scope: !982)
!1013 = !DILocation(line: 342, column: 19, scope: !982)
!1014 = !DILocation(line: 344, column: 3, scope: !982)
!1015 = !DILocation(line: 345, column: 3, scope: !982)
!1016 = !DILocation(line: 0, scope: !982)
!1017 = !DILocation(line: 346, column: 1, scope: !982)
!1018 = distinct !DISubprogram(name: "tcpip_try_callback", scope: !3, file: !3, line: 365, type: !983, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DILocalVariable(name: "function", arg: 1, scope: !1018, file: !3, line: 365, type: !220)
!1021 = !DILocalVariable(name: "ctx", arg: 2, scope: !1018, file: !3, line: 365, type: !91)
!1022 = !DILocalVariable(name: "msg", scope: !1018, file: !3, line: 367, type: !74)
!1023 = !DILocation(line: 365, column: 38, scope: !1018)
!1024 = !DILocation(line: 365, column: 54, scope: !1018)
!1025 = !DILocation(line: 369, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 369, column: 3)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 369, column: 3)
!1028 = !DILocation(line: 369, column: 3, scope: !1027)
!1029 = !DILocation(line: 369, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 369, column: 3)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 369, column: 3)
!1032 = !DILocation(line: 369, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 369, column: 3)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 369, column: 3)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 369, column: 3)
!1036 = !DILocation(line: 371, column: 29, scope: !1018)
!1037 = !DILocation(line: 372, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 372, column: 7)
!1039 = !DILocation(line: 372, column: 7, scope: !1018)
!1040 = !DILocation(line: 367, column: 21, scope: !1018)
!1041 = !DILocation(line: 376, column: 8, scope: !1018)
!1042 = !DILocation(line: 376, column: 13, scope: !1018)
!1043 = !DILocation(line: 377, column: 8, scope: !1018)
!1044 = !DILocation(line: 377, column: 15, scope: !1018)
!1045 = !DILocation(line: 377, column: 24, scope: !1018)
!1046 = !DILocation(line: 378, column: 15, scope: !1018)
!1047 = !DILocation(line: 378, column: 19, scope: !1018)
!1048 = !DILocation(line: 380, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 380, column: 7)
!1050 = !DILocation(line: 380, column: 42, scope: !1049)
!1051 = !DILocation(line: 380, column: 7, scope: !1018)
!1052 = !DILocation(line: 381, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 380, column: 53)
!1054 = !DILocation(line: 382, column: 5, scope: !1053)
!1055 = !DILocation(line: 0, scope: !1018)
!1056 = !DILocation(line: 385, column: 1, scope: !1018)
!1057 = distinct !DISubprogram(name: "tcpip_send_msg_wait_sem", scope: !3, file: !3, line: 457, type: !1058, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1071)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!158, !220, !91, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sem_t", file: !255, line: 72, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 69, size: 256, elements: !1063)
!1063 = !{!1064, !1070}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1062, file: !255, line: 70, baseType: !1065, size: 192)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !1066, line: 51, size: 192, elements: !1067)
!1066 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1065, file: !1066, line: 52, baseType: !375, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1065, file: !1066, line: 53, baseType: !379, size: 128, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1062, file: !255, line: 71, baseType: !47, size: 32, offset: 192)
!1071 = !{!1072, !1073, !1074}
!1072 = !DILocalVariable(name: "fn", arg: 1, scope: !1057, file: !3, line: 457, type: !220)
!1073 = !DILocalVariable(name: "apimsg", arg: 2, scope: !1057, file: !3, line: 457, type: !91)
!1074 = !DILocalVariable(name: "sem", arg: 3, scope: !1057, file: !3, line: 457, type: !1060)
!1075 = !DILocation(line: 457, column: 43, scope: !1057)
!1076 = !DILocation(line: 457, column: 53, scope: !1057)
!1077 = !DILocation(line: 457, column: 72, scope: !1057)
!1078 = !DILocation(line: 461, column: 3, scope: !1057)
!1079 = !DILocation(line: 462, column: 3, scope: !1057)
!1080 = !DILocation(line: 463, column: 3, scope: !1057)
!1081 = !DILocation(line: 464, column: 3, scope: !1057)
!1082 = distinct !DISubprogram(name: "tcpip_api_call", scope: !3, file: !3, line: 493, type: !1083, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1093)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!158, !1085, !1089}
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpip_api_call_fn", file: !6, line: 110, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!158, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcpip_api_call_data", file: !6, line: 99, size: 8, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1090, file: !6, line: 107, baseType: !102, size: 8)
!1093 = !{!1094, !1095, !1096}
!1094 = !DILocalVariable(name: "fn", arg: 1, scope: !1082, file: !3, line: 493, type: !1085)
!1095 = !DILocalVariable(name: "call", arg: 2, scope: !1082, file: !3, line: 493, type: !1089)
!1096 = !DILocalVariable(name: "err", scope: !1082, file: !3, line: 496, type: !158)
!1097 = !DILocation(line: 493, column: 34, scope: !1082)
!1098 = !DILocation(line: 493, column: 66, scope: !1082)
!1099 = !DILocation(line: 497, column: 3, scope: !1082)
!1100 = !DILocation(line: 498, column: 9, scope: !1082)
!1101 = !DILocation(line: 496, column: 9, scope: !1082)
!1102 = !DILocation(line: 499, column: 3, scope: !1082)
!1103 = !DILocation(line: 500, column: 3, scope: !1082)
!1104 = distinct !DISubprogram(name: "tcpip_callbackmsg_new", scope: !3, file: !3, line: 551, type: !1105, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!230, !220, !91}
!1107 = !{!1108, !1109, !1110}
!1108 = !DILocalVariable(name: "function", arg: 1, scope: !1104, file: !3, line: 551, type: !220)
!1109 = !DILocalVariable(name: "ctx", arg: 2, scope: !1104, file: !3, line: 551, type: !91)
!1110 = !DILocalVariable(name: "msg", scope: !1104, file: !3, line: 553, type: !74)
!1111 = !DILocation(line: 551, column: 41, scope: !1104)
!1112 = !DILocation(line: 551, column: 57, scope: !1104)
!1113 = !DILocation(line: 553, column: 47, scope: !1104)
!1114 = !DILocation(line: 554, column: 11, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 554, column: 7)
!1116 = !DILocation(line: 554, column: 7, scope: !1104)
!1117 = !DILocation(line: 553, column: 21, scope: !1104)
!1118 = !DILocation(line: 557, column: 8, scope: !1104)
!1119 = !DILocation(line: 557, column: 13, scope: !1104)
!1120 = !DILocation(line: 558, column: 8, scope: !1104)
!1121 = !DILocation(line: 558, column: 15, scope: !1104)
!1122 = !DILocation(line: 558, column: 24, scope: !1104)
!1123 = !DILocation(line: 559, column: 15, scope: !1104)
!1124 = !DILocation(line: 559, column: 19, scope: !1104)
!1125 = !DILocation(line: 560, column: 10, scope: !1104)
!1126 = !DILocation(line: 560, column: 3, scope: !1104)
!1127 = !DILocation(line: 0, scope: !1104)
!1128 = !DILocation(line: 561, column: 1, scope: !1104)
!1129 = distinct !DISubprogram(name: "tcpip_callbackmsg_delete", scope: !3, file: !3, line: 572, type: !1130, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !230}
!1132 = !{!1133}
!1133 = !DILocalVariable(name: "msg", arg: 1, scope: !1129, file: !3, line: 572, type: !230)
!1134 = !DILocation(line: 572, column: 53, scope: !1129)
!1135 = !DILocation(line: 574, column: 33, scope: !1129)
!1136 = !DILocation(line: 574, column: 3, scope: !1129)
!1137 = !DILocation(line: 575, column: 1, scope: !1129)
!1138 = distinct !DISubprogram(name: "tcpip_callbackmsg_trycallback", scope: !3, file: !3, line: 587, type: !1139, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!158, !230}
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "msg", arg: 1, scope: !1138, file: !3, line: 587, type: !230)
!1143 = !DILocation(line: 587, column: 58, scope: !1138)
!1144 = !DILocation(line: 589, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 589, column: 3)
!1146 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 589, column: 3)
!1147 = !DILocation(line: 589, column: 3, scope: !1146)
!1148 = !DILocation(line: 589, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 589, column: 3)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 589, column: 3)
!1151 = !DILocation(line: 589, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 589, column: 3)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 589, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 589, column: 3)
!1155 = !DILocation(line: 590, column: 40, scope: !1138)
!1156 = !DILocation(line: 590, column: 10, scope: !1138)
!1157 = !DILocation(line: 590, column: 3, scope: !1138)
!1158 = distinct !DISubprogram(name: "tcpip_callbackmsg_trycallback_fromisr", scope: !3, file: !3, line: 606, type: !1139, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1159)
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "msg", arg: 1, scope: !1158, file: !3, line: 606, type: !230)
!1161 = !DILocation(line: 606, column: 66, scope: !1158)
!1162 = !DILocation(line: 608, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 608, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 608, column: 3)
!1165 = !DILocation(line: 608, column: 3, scope: !1164)
!1166 = !DILocation(line: 608, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 608, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 608, column: 3)
!1169 = !DILocation(line: 608, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 608, column: 3)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 608, column: 3)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 608, column: 3)
!1173 = !DILocation(line: 609, column: 48, scope: !1158)
!1174 = !DILocation(line: 609, column: 10, scope: !1158)
!1175 = !DILocation(line: 609, column: 3, scope: !1158)
!1176 = !DILocation(line: 622, column: 31, scope: !238)
!1177 = !DILocation(line: 622, column: 47, scope: !238)
!1178 = !DILocation(line: 624, column: 3, scope: !238)
!1179 = !DILocation(line: 626, column: 19, scope: !238)
!1180 = !DILocation(line: 627, column: 23, scope: !238)
!1181 = !DILocation(line: 628, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !238, file: !3, line: 628, column: 7)
!1183 = !DILocation(line: 628, column: 50, scope: !1182)
!1184 = !DILocation(line: 628, column: 7, scope: !238)
!1185 = !DILocation(line: 629, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 629, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 629, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 629, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 629, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 628, column: 61)
!1191 = !DILocation(line: 629, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 629, column: 5)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 629, column: 5)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 629, column: 5)
!1195 = !DILocation(line: 632, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !238, file: !3, line: 632, column: 7)
!1197 = !DILocation(line: 632, column: 39, scope: !1196)
!1198 = !DILocation(line: 632, column: 7, scope: !238)
!1199 = !DILocation(line: 633, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 633, column: 5)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 633, column: 5)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 633, column: 5)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 633, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 632, column: 50)
!1205 = !DILocation(line: 633, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 633, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 633, column: 5)
!1208 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 633, column: 5)
!1209 = !DILocation(line: 637, column: 3, scope: !238)
!1210 = !DILocation(line: 638, column: 1, scope: !238)
!1211 = distinct !DISubprogram(name: "pbuf_free_callback", scope: !3, file: !3, line: 660, type: !1212, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!158, !85}
!1214 = !{!1215}
!1215 = !DILocalVariable(name: "p", arg: 1, scope: !1211, file: !3, line: 660, type: !85)
!1216 = !DILocation(line: 660, column: 33, scope: !1211)
!1217 = !DILocation(line: 662, column: 44, scope: !1211)
!1218 = !DILocation(line: 662, column: 10, scope: !1211)
!1219 = !DILocation(line: 662, column: 3, scope: !1211)
!1220 = distinct !DISubprogram(name: "pbuf_free_int", scope: !3, file: !3, line: 647, type: !223, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1221)
!1221 = !{!1222, !1223}
!1222 = !DILocalVariable(name: "p", arg: 1, scope: !1220, file: !3, line: 647, type: !91)
!1223 = !DILocalVariable(name: "q", scope: !1220, file: !3, line: 649, type: !85)
!1224 = !DILocation(line: 647, column: 21, scope: !1220)
!1225 = !DILocation(line: 649, column: 20, scope: !1220)
!1226 = !DILocation(line: 649, column: 16, scope: !1220)
!1227 = !DILocation(line: 650, column: 3, scope: !1220)
!1228 = !DILocation(line: 651, column: 1, scope: !1220)
!1229 = distinct !DISubprogram(name: "mem_free_callback", scope: !3, file: !3, line: 673, type: !1230, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!158, !91}
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "m", arg: 1, scope: !1229, file: !3, line: 673, type: !91)
!1234 = !DILocation(line: 673, column: 25, scope: !1229)
!1235 = !DILocation(line: 675, column: 10, scope: !1229)
!1236 = !DILocation(line: 675, column: 3, scope: !1229)
