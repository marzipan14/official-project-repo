; ModuleID = '/root/.unikraft/libs/lwip/semaphore.c'
source_filename = "/root/.unikraft/libs/lwip/semaphore.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.0, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.0 = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, {}*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, {}*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
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
%struct.sys_sem_t = type { %struct.uk_semaphore, i32 }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@sys_arch_sem_wait.__str = internal global [28 x i8] c"sys_arch_sem_wait(%p, %lu)\0A\00", section ".data_shared", align 16, !dbg !0
@sys_arch_sem_wait.__str.1 = internal global [28 x i8] c"sys_arch_sem_wait(%p, %lu)\0A\00", section ".data_shared", align 16, !dbg !504
@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !509
@uk_pr_crit.__str.3 = internal global [12 x i8] c"semaphore.c\00", section ".data_shared", align 1, !dbg !528
@wq_entries = external dso_local global [32 x %struct.uk_waitq_entry], align 16
@.str.4 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"current\00", align 1

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_sem_new(%struct.sys_sem_t*, i8 zeroext) local_unnamed_addr #0 !dbg !568 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !587, !srcloc !595
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !597
  br i1 %4, label %11, label %5, !dbg !597

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !598, !srcloc !595
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !597
  br i1 %7, label %11, label %8, !dbg !601

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 0, !dbg !602
  %10 = zext i8 %1 to i64, !dbg !602
  tail call void @uk_semaphore_init(%struct.uk_semaphore* %9, i64 %10) #9, !dbg !602
  br label %20, !dbg !602

; <label>:11:                                     ; preds = %5, %2
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !604, !srcloc !595
  %13 = and i64 %12, -65536, !dbg !615
  %14 = or i64 %13, 4097, !dbg !615
  %15 = add nsw i64 %14, -1, !dbg !615
  %16 = inttoptr i64 %15 to i32*, !dbg !616
  %17 = load i32, i32* %16, align 4096, !dbg !617, !tbaa !618
  %18 = ptrtoint %struct.sys_sem_t* %0 to i64, !dbg !622
  %19 = zext i8 %1 to i64, !dbg !622
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_init\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %18, i64 %19, i32 %17, void (%struct.uk_semaphore*, i64)* nonnull @uk_semaphore_init) #8, !dbg !622, !srcloc !623
  br label %20

; <label>:20:                                     ; preds = %8, %11
  %21 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !624
  store i32 1, i32* %21, align 8, !dbg !625, !tbaa !626
  ret i8 0, !dbg !632
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i64 @ukarch_read_sp() unnamed_addr #2 !dbg !588 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !633, !srcloc !595
  ret i64 %1, !dbg !635
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i32 @uk_thread_get_tid() unnamed_addr #2 !dbg !606 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !636, !srcloc !595
  %2 = and i64 %1, -65536, !dbg !640
  %3 = or i64 %2, 4097, !dbg !640
  %4 = add nsw i64 %3, -1, !dbg !640
  %5 = inttoptr i64 %4 to i32*, !dbg !641
  %6 = load i32, i32* %5, align 4096, !dbg !642, !tbaa !618
  ret i32 %6, !dbg !643
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @sys_sem_valid(%struct.sys_sem_t* nocapture readonly) local_unnamed_addr #5 !dbg !644 {
  %2 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !650
  %3 = load i32, i32* %2, align 8, !dbg !650, !tbaa !626
  %4 = icmp eq i32 %3, 1, !dbg !651
  %5 = zext i1 %4 to i32, !dbg !651
  ret i32 %5, !dbg !652
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_sem_set_invalid(%struct.sys_sem_t* nocapture) local_unnamed_addr #0 !dbg !653 {
  %2 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !659
  store i32 0, i32* %2, align 8, !dbg !660, !tbaa !626
  ret void, !dbg !661
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_sem_free(%struct.sys_sem_t* nocapture) local_unnamed_addr #0 !dbg !662 {
  %2 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !668
  store i32 0, i32* %2, align 8, !dbg !669, !tbaa !626
  ret void, !dbg !670
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_sem_signal(%struct.sys_sem_t*) local_unnamed_addr #0 !dbg !671 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !681, !srcloc !595
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !684
  br i1 %3, label %27, label %4, !dbg !684

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !685, !srcloc !595
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !684
  br i1 %6, label %27, label %7, !dbg !688

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.sys_sem_t* %0, null, !dbg !689
  br i1 %8, label %9, label %10, !dbg !704, !prof !705

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !706
  tail call void @ukplat_terminate(i32 3) #10, !dbg !706
  unreachable, !dbg !706

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !709
  %12 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 0, i32 0, !dbg !711
  %13 = load i64, i64* %12, align 8, !dbg !712, !tbaa !713
  %14 = add nsw i64 %13, 1, !dbg !712
  store i64 %14, i64* %12, align 8, !dbg !712, !tbaa !713
  %15 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !727
  %16 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 0, i32 1, i32 0, !dbg !729
  %17 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !729, !tbaa !731
  %18 = icmp eq %struct.uk_waitq_entry* %17, null, !dbg !733
  br i1 %18, label %26, label %19, !dbg !733

; <label>:19:                                     ; preds = %10, %19
  %20 = phi %struct.uk_waitq_entry* [ %22, %19 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %20, i64 0, i32 2, i32 0, !dbg !733
  %22 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %21, align 8, !dbg !733, !tbaa !735
  %23 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %20, i64 0, i32 1, !dbg !739
  %24 = load %struct.uk_thread*, %struct.uk_thread** %23, align 8, !dbg !739, !tbaa !740
  tail call void @uk_thread_wake(%struct.uk_thread* %24) #9, !dbg !741
  %25 = icmp eq %struct.uk_waitq_entry* %22, null, !dbg !733
  br i1 %25, label %26, label %19, !dbg !733, !llvm.loop !742

; <label>:26:                                     ; preds = %19, %10
  tail call void @ukplat_lcpu_restore_irqf(i64 %15) #9, !dbg !745
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #9, !dbg !746
  br label %35, !dbg !747

; <label>:27:                                     ; preds = %4, %1
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !748, !srcloc !595
  %29 = and i64 %28, -65536, !dbg !753
  %30 = or i64 %29, 4097, !dbg !753
  %31 = add nsw i64 %30, -1, !dbg !753
  %32 = inttoptr i64 %31 to i32*, !dbg !754
  %33 = load i32, i32* %32, align 4096, !dbg !755, !tbaa !618
  %34 = ptrtoint %struct.sys_sem_t* %0 to i64, !dbg !756
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_up\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %34, i32 %33, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_up) #8, !dbg !756, !srcloc !757
  br label %35

; <label>:35:                                     ; preds = %26, %27
  ret void, !dbg !758
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_up(%struct.uk_semaphore*) #2 !dbg !692 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !760
  br i1 %2, label %3, label %4, !dbg !761, !prof !705

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !762
  tail call void @ukplat_terminate(i32 3) #10, !dbg !762
  unreachable, !dbg !762

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !763
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0, !dbg !765
  %7 = load i64, i64* %6, align 8, !dbg !766, !tbaa !713
  %8 = add nsw i64 %7, 1, !dbg !766
  store i64 %8, i64* %6, align 8, !dbg !766, !tbaa !713
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !770
  %10 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0, !dbg !772
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !772, !tbaa !731
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !774
  br i1 %12, label %20, label %13, !dbg !774

; <label>:13:                                     ; preds = %4, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !774
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !774, !tbaa !735
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !776
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !776, !tbaa !740
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #9, !dbg !777
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !774
  br i1 %19, label %20, label %13, !dbg !774, !llvm.loop !742

; <label>:20:                                     ; preds = %13, %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #9, !dbg !778
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #9, !dbg !779
  ret void, !dbg !780
}

; Function Attrs: noinline noredzone nounwind optnone
define dso_local i32 @sys_arch_sem_wait(%struct.sys_sem_t*, i32) local_unnamed_addr #6 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sys_sem_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uk_semaphore*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.sys_sem_t* %0, %struct.sys_sem_t** %4, align 8, !tbaa !781
  store i32 %1, i32* %5, align 4, !tbaa !618
  %17 = bitcast i64* %6 to i8*, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #8, !dbg !784
  %18 = bitcast %struct.uk_semaphore** %7 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #8, !dbg !786
  %19 = load %struct.sys_sem_t*, %struct.sys_sem_t** %4, align 8, !dbg !788, !tbaa !781
  %20 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %19, i32 0, i32 0, !dbg !789
  store %struct.uk_semaphore* %20, %struct.uk_semaphore** %7, align 8, !dbg !787, !tbaa !781
  br label %21, !dbg !790

; <label>:21:                                     ; preds = %2
  %22 = call fastcc i64 @ukarch_read_sp() #11, !dbg !791
  %23 = icmp uge i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !791
  br i1 %23, label %24, label %31, !dbg !791

; <label>:24:                                     ; preds = %21
  %25 = call fastcc i64 @ukarch_read_sp() #11, !dbg !791
  %26 = icmp ule i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !791
  br i1 %26, label %27, label %31, !dbg !792

; <label>:27:                                     ; preds = %24
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @sys_arch_sem_wait.__str, i32 0, i32 0), i8** %8, align 8, !dbg !793, !tbaa !781
  %28 = load i8*, i8** %8, align 8, !dbg !793, !tbaa !781
  %29 = load %struct.sys_sem_t*, %struct.sys_sem_t** %4, align 8, !dbg !796, !tbaa !781
  %30 = load i32, i32* %5, align 4, !dbg !796, !tbaa !618
  call void (i8*, ...) @uk_pr_debug(i8* undef, %struct.sys_sem_t* %29, i32 %30) #11, !dbg !796
  br label %51, !dbg !796

; <label>:31:                                     ; preds = %24, %21
  br label %32, !dbg !797

; <label>:32:                                     ; preds = %31
  br label %33, !dbg !798

; <label>:33:                                     ; preds = %32
  %34 = bitcast i32* %9 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #8, !dbg !799
  %35 = call fastcc i32 @uk_thread_get_tid() #11, !dbg !799
  store i32 %35, i32* %9, align 4, !dbg !799, !tbaa !618
  %36 = bitcast i64* %10 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #8, !dbg !799
  %37 = load i32, i32* %5, align 4, !dbg !799, !tbaa !618
  %38 = zext i32 %37 to i64, !dbg !799
  store i64 %38, i64* %10, align 8, !dbg !799, !tbaa !800
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @sys_arch_sem_wait.__str.1, i32 0, i32 0), i8** %11, align 8, !dbg !801, !tbaa !781
  %39 = load i8*, i8** %11, align 8, !dbg !801, !tbaa !781
  %40 = ptrtoint i8* %39 to i64, !dbg !799
  %41 = load %struct.sys_sem_t*, %struct.sys_sem_t** %4, align 8, !dbg !799, !tbaa !781
  %42 = ptrtoint %struct.sys_sem_t* %41 to i64, !dbg !799
  %43 = load i64, i64* %10, align 8, !dbg !799, !tbaa !800
  %44 = load i32, i32* %9, align 4, !dbg !799, !tbaa !618
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_debug\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %40, i64 %42, i64 %43, i32 %44, void (i8*, ...)* @uk_pr_debug) #8, !dbg !799, !srcloc !803
  %45 = bitcast i64* %10 to i8*, !dbg !798
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #8, !dbg !798
  %46 = bitcast i32* %9 to i8*, !dbg !798
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #8, !dbg !798
  br label %47, !dbg !799

; <label>:47:                                     ; preds = %33
  br label %48, !dbg !799

; <label>:48:                                     ; preds = %47
  br label %49, !dbg !798

; <label>:49:                                     ; preds = %48
  br label %50, !dbg !798

; <label>:50:                                     ; preds = %49
  br label %51

; <label>:51:                                     ; preds = %50, %27
  br label %52, !dbg !792

; <label>:52:                                     ; preds = %51
  br label %53, !dbg !792

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %5, align 4, !dbg !804, !tbaa !618
  %55 = icmp eq i32 %54, 0, !dbg !805
  br i1 %55, label %56, label %86, !dbg !806

; <label>:56:                                     ; preds = %53
  br label %57, !dbg !807

; <label>:57:                                     ; preds = %56
  %58 = call fastcc i64 @ukarch_read_sp() #11, !dbg !808
  %59 = icmp uge i64 %58, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !808
  br i1 %59, label %60, label %66, !dbg !808

; <label>:60:                                     ; preds = %57
  %61 = call fastcc i64 @ukarch_read_sp() #11, !dbg !808
  %62 = icmp ule i64 %61, ptrtoint ([0 x i8]* @_end to i64), !dbg !808
  br i1 %62, label %63, label %66, !dbg !809

; <label>:63:                                     ; preds = %60
  %64 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !810, !tbaa !781
  %65 = call i64 @sys_arch_sem_wait_helper(%struct.uk_semaphore* %64) #11, !dbg !810
  store i64 %65, i64* %6, align 8, !dbg !810, !tbaa !800
  br label %83, !dbg !810

; <label>:66:                                     ; preds = %60, %57
  br label %67, !dbg !812

; <label>:67:                                     ; preds = %66
  br label %68, !dbg !813

; <label>:68:                                     ; preds = %67
  %69 = bitcast i32* %12 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %69) #8, !dbg !814
  %70 = call fastcc i32 @uk_thread_get_tid() #11, !dbg !814
  store i32 %70, i32* %12, align 4, !dbg !814, !tbaa !618
  %71 = bitcast i64* %13 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %71) #8, !dbg !814
  %72 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !814, !tbaa !781
  %73 = ptrtoint %struct.uk_semaphore* %72 to i64, !dbg !814
  %74 = load i32, i32* %12, align 4, !dbg !814, !tbaa !618
  %75 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call sys_arch_sem_wait_helper\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %73, i32 %74, i64 (%struct.uk_semaphore*)* @sys_arch_sem_wait_helper) #8, !dbg !814, !srcloc !815
  store i64 %75, i64* %13, align 8, !dbg !814, !tbaa !800
  %76 = load i64, i64* %13, align 8, !dbg !816, !tbaa !800
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %76) #8, !dbg !816, !srcloc !820
  %77 = bitcast i64* %13 to i8*, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #8, !dbg !813
  %78 = bitcast i32* %12 to i8*, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #8, !dbg !813
  br label %79, !dbg !814

; <label>:79:                                     ; preds = %68
  br label %80, !dbg !814

; <label>:80:                                     ; preds = %79
  br label %81, !dbg !813

; <label>:81:                                     ; preds = %80
  br label %82, !dbg !813

; <label>:82:                                     ; preds = %81
  br label %83

; <label>:83:                                     ; preds = %82, %63
  br label %84, !dbg !809

; <label>:84:                                     ; preds = %83
  br label %85, !dbg !809

; <label>:85:                                     ; preds = %84
  br label %131, !dbg !821

; <label>:86:                                     ; preds = %53
  br label %87, !dbg !822

; <label>:87:                                     ; preds = %86
  %88 = call fastcc i64 @ukarch_read_sp() #11, !dbg !823
  %89 = icmp uge i64 %88, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !823
  br i1 %89, label %90, label %99, !dbg !823

; <label>:90:                                     ; preds = %87
  %91 = call fastcc i64 @ukarch_read_sp() #11, !dbg !823
  %92 = icmp ule i64 %91, ptrtoint ([0 x i8]* @_end to i64), !dbg !823
  br i1 %92, label %93, label %99, !dbg !824

; <label>:93:                                     ; preds = %90
  %94 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !825, !tbaa !781
  %95 = load i32, i32* %5, align 4, !dbg !825, !tbaa !618
  %96 = zext i32 %95 to i64, !dbg !825
  %97 = mul i64 %96, 1000000, !dbg !825
  %98 = call i64 @uk_semaphore_down_to(%struct.uk_semaphore* %94, i64 %97) #11, !dbg !825
  store i64 %98, i64* %6, align 8, !dbg !825, !tbaa !800
  br label %119, !dbg !825

; <label>:99:                                     ; preds = %90, %87
  br label %100, !dbg !827

; <label>:100:                                    ; preds = %99
  br label %101, !dbg !828

; <label>:101:                                    ; preds = %100
  %102 = bitcast i32* %14 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %102) #8, !dbg !829
  %103 = call fastcc i32 @uk_thread_get_tid() #11, !dbg !829
  store i32 %103, i32* %14, align 4, !dbg !829, !tbaa !618
  %104 = bitcast i64* %15 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %104) #8, !dbg !829
  %105 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !829, !tbaa !781
  %106 = ptrtoint %struct.uk_semaphore* %105 to i64, !dbg !829
  %107 = load i32, i32* %5, align 4, !dbg !829, !tbaa !618
  %108 = zext i32 %107 to i64, !dbg !829
  %109 = mul i64 %108, 1000000, !dbg !829
  %110 = load i32, i32* %14, align 4, !dbg !829, !tbaa !618
  %111 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_down_to\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %106, i64 %109, i32 %110, i64 (%struct.uk_semaphore*, i64)* @uk_semaphore_down_to) #8, !dbg !829, !srcloc !830
  store i64 %111, i64* %15, align 8, !dbg !829, !tbaa !800
  %112 = load i64, i64* %15, align 8, !dbg !831, !tbaa !800
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %112) #8, !dbg !831, !srcloc !835
  %113 = bitcast i64* %15 to i8*, !dbg !828
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113) #8, !dbg !828
  %114 = bitcast i32* %14 to i8*, !dbg !828
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #8, !dbg !828
  br label %115, !dbg !829

; <label>:115:                                    ; preds = %101
  br label %116, !dbg !829

; <label>:116:                                    ; preds = %115
  br label %117, !dbg !828

; <label>:117:                                    ; preds = %116
  br label %118, !dbg !828

; <label>:118:                                    ; preds = %117
  br label %119

; <label>:119:                                    ; preds = %118, %93
  br label %120, !dbg !824

; <label>:120:                                    ; preds = %119
  br label %121, !dbg !824

; <label>:121:                                    ; preds = %120
  %122 = load i64, i64* %6, align 8, !dbg !836, !tbaa !800
  %123 = icmp eq i64 %122, -1, !dbg !836
  %124 = xor i1 %123, true, !dbg !836
  %125 = xor i1 %124, true, !dbg !836
  %126 = zext i1 %125 to i32, !dbg !836
  %127 = sext i32 %126 to i64, !dbg !836
  %128 = icmp ne i64 %127, 0, !dbg !836
  br i1 %128, label %129, label %130, !dbg !838, !prof !705

; <label>:129:                                    ; preds = %121
  store i32 -1, i32* %3, align 4, !dbg !839
  store i32 1, i32* %16, align 4
  br label %135, !dbg !839

; <label>:130:                                    ; preds = %121
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i64, i64* %6, align 8, !dbg !840, !tbaa !800
  %133 = udiv i64 %132, 1000000, !dbg !840
  %134 = trunc i64 %133 to i32, !dbg !841
  store i32 %134, i32* %3, align 4, !dbg !842
  store i32 1, i32* %16, align 4
  br label %135, !dbg !842

; <label>:135:                                    ; preds = %131, %129
  %136 = bitcast %struct.uk_semaphore** %7 to i8*, !dbg !843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %136) #8, !dbg !843
  %137 = bitcast i64* %6 to i8*, !dbg !843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %137) #8, !dbg !843
  %138 = load i32, i32* %3, align 4, !dbg !843
  ret i32 %138, !dbg !843
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) #2 !dbg !844 {
  ret void, !dbg !849
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @sys_arch_sem_wait_helper(%struct.uk_semaphore*) #2 !dbg !850 {
  %2 = tail call i64 @ukplat_monotonic_clock() #9, !dbg !857
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !873
  br i1 %3, label %8, label %4, !dbg !876, !prof !705

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %9, !dbg !877

; <label>:8:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !886
  tail call void @ukplat_terminate(i32 3) #10, !dbg !886
  unreachable, !dbg !886

; <label>:9:                                      ; preds = %98, %4
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !877, !srcloc !595
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !891, !srcloc !595
  %12 = and i64 %11, -65536, !dbg !896
  %13 = or i64 %12, 4097, !dbg !896
  %14 = add nsw i64 %13, -1, !dbg !896
  %15 = inttoptr i64 %14 to i32*, !dbg !897
  %16 = load i32, i32* %15, align 4096, !dbg !898, !tbaa !618
  %17 = sext i32 %16 to i64, !dbg !899
  %18 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %17, !dbg !899
  %19 = bitcast %struct.uk_waitq_entry* %18 to i8*, !dbg !899
  %20 = tail call i8* @memset(i8* nonnull %19, i32 0, i64 24) #9, !dbg !899
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !900, !srcloc !595
  %22 = and i64 %21, -65536, !dbg !905
  %23 = inttoptr i64 %22 to i64*, !dbg !906
  %24 = load i64, i64* %23, align 65536, !dbg !906, !tbaa !781
  %25 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %17, i32 1, !dbg !899
  %26 = bitcast %struct.uk_thread** %25 to i64*, !dbg !899
  store i64 %24, i64* %26, align 8, !dbg !899, !tbaa !740
  %27 = load i64, i64* %5, align 8, !dbg !908, !tbaa !713
  %28 = icmp sgt i64 %27, 0, !dbg !910
  br i1 %28, label %94, label %29, !dbg !911

; <label>:29:                                     ; preds = %9
  %30 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 0
  %31 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %17, i32 2, i32 0
  br label %32, !dbg !912

; <label>:32:                                     ; preds = %68, %29
  %33 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !912, !srcloc !595
  %34 = and i64 %33, -65536, !dbg !920
  %35 = inttoptr i64 %34 to %struct.uk_thread**, !dbg !921
  %36 = load %struct.uk_thread*, %struct.uk_thread** %35, align 65536, !dbg !923, !tbaa !781
  %37 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !925
  %38 = load i32, i32* %30, align 8, !dbg !936, !tbaa !938
  %39 = icmp eq i32 %38, 0, !dbg !939
  br i1 %39, label %40, label %42, !dbg !940

; <label>:40:                                     ; preds = %32
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %31, align 8, !dbg !941, !tbaa !735
  %41 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %6, align 8, !dbg !941, !tbaa !944
  store %struct.uk_waitq_entry* %18, %struct.uk_waitq_entry** %41, align 8, !dbg !941, !tbaa !781
  store %struct.uk_waitq_entry** %31, %struct.uk_waitq_entry*** %6, align 8, !dbg !941, !tbaa !944
  store i32 1, i32* %30, align 8, !dbg !945, !tbaa !938
  br label %42, !dbg !946

; <label>:42:                                     ; preds = %40, %32
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %36, i64 0, i32 6, !dbg !956
  store i64 0, i64* %43, align 8, !dbg !957, !tbaa !958
  %44 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %36, i64 0, i32 5, !dbg !969
  %45 = load i32, i32* %44, align 8, !dbg !970, !tbaa !971
  %46 = and i32 %45, -2, !dbg !970
  store i32 %46, i32* %44, align 8, !dbg !970, !tbaa !971
  %47 = icmp eq %struct.uk_thread* %36, null, !dbg !977
  br i1 %47, label %48, label %49, !dbg !980, !prof !705

; <label>:48:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !981
  tail call void @ukplat_terminate(i32 3) #10, !dbg !981
  unreachable, !dbg !981

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %36, i64 0, i32 9, !dbg !983
  %51 = load %struct.uk_sched*, %struct.uk_sched** %50, align 8, !dbg !983, !tbaa !984
  %52 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %51, i64 0, i32 3, !dbg !985
  %53 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %52, align 8, !dbg !985, !tbaa !986
  tail call void %53(%struct.uk_sched* %51, %struct.uk_thread* nonnull %36) #9, !dbg !990
  tail call void @ukplat_lcpu_restore_irqf(i64 %37) #9, !dbg !991
  %54 = load i64, i64* %5, align 8, !dbg !992, !tbaa !713
  %55 = icmp sgt i64 %54, 0, !dbg !994
  br i1 %55, label %71, label %56, !dbg !995

; <label>:56:                                     ; preds = %49
  %57 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !996, !srcloc !595
  %58 = and i64 %57, -65536, !dbg !1006
  %59 = inttoptr i64 %58 to %struct.uk_thread**, !dbg !1007
  %60 = load %struct.uk_thread*, %struct.uk_thread** %59, align 65536, !dbg !1009, !tbaa !781
  %61 = icmp eq %struct.uk_thread* %60, null, !dbg !1011
  br i1 %61, label %62, label %63, !dbg !1014, !prof !705

; <label>:62:                                     ; preds = %56
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1015
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1015
  unreachable, !dbg !1015

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %60, i64 0, i32 9, !dbg !1017
  %65 = load %struct.uk_sched*, %struct.uk_sched** %64, align 8, !dbg !1017, !tbaa !984
  %66 = icmp eq %struct.uk_sched* %65, null, !dbg !1019
  br i1 %66, label %67, label %68, !dbg !1022, !prof !705

; <label>:67:                                     ; preds = %63
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1023
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1023
  unreachable, !dbg !1023

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %65, i64 0, i32 0, !dbg !1025
  %70 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %69, align 8, !dbg !1025, !tbaa !1026
  tail call void %70(%struct.uk_sched* nonnull %65) #9, !dbg !1027
  br label %32, !dbg !1028, !llvm.loop !1029

; <label>:71:                                     ; preds = %49
  %72 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1032
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %36) #9, !dbg !1033
  %73 = load i32, i32* %30, align 8, !dbg !1047, !tbaa !938
  %74 = icmp eq i32 %73, 0, !dbg !1048
  br i1 %74, label %93, label %75, !dbg !1049

; <label>:75:                                     ; preds = %71
  %76 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %7, align 8, !dbg !1050, !tbaa !731
  %77 = icmp eq %struct.uk_waitq_entry* %76, %18, !dbg !1050
  br i1 %77, label %78, label %82, !dbg !1051

; <label>:78:                                     ; preds = %75
  %79 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %31, align 8, !dbg !1052, !tbaa !735
  store %struct.uk_waitq_entry* %79, %struct.uk_waitq_entry** %7, align 8, !dbg !1052, !tbaa !731
  %80 = icmp eq %struct.uk_waitq_entry* %79, null, !dbg !1052
  br i1 %80, label %81, label %92, !dbg !1056

; <label>:81:                                     ; preds = %78
  store %struct.uk_waitq_entry** %7, %struct.uk_waitq_entry*** %6, align 8, !dbg !1052, !tbaa !944
  br label %92, !dbg !1052

; <label>:82:                                     ; preds = %75, %82
  %83 = phi %struct.uk_waitq_entry* [ %85, %82 ], [ %76, %75 ], !dbg !1057
  %84 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %83, i64 0, i32 2, i32 0, !dbg !1057
  %85 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %84, align 8, !dbg !1057, !tbaa !735
  %86 = icmp eq %struct.uk_waitq_entry* %85, %18, !dbg !1057
  br i1 %86, label %87, label %82, !dbg !1057, !llvm.loop !1058

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %83, i64 0, i32 2, i32 0, !dbg !1057
  %89 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %31, align 8, !dbg !1060, !tbaa !735
  store %struct.uk_waitq_entry* %89, %struct.uk_waitq_entry** %88, align 8, !dbg !1060, !tbaa !735
  %90 = icmp eq %struct.uk_waitq_entry* %89, null, !dbg !1060
  br i1 %90, label %91, label %92, !dbg !1063

; <label>:91:                                     ; preds = %87
  store %struct.uk_waitq_entry** %88, %struct.uk_waitq_entry*** %6, align 8, !dbg !1060, !tbaa !944
  br label %92, !dbg !1060

; <label>:92:                                     ; preds = %91, %87, %81, %78
  store i32 0, i32* %30, align 8, !dbg !1064, !tbaa !938
  br label %93, !dbg !1065

; <label>:93:                                     ; preds = %92, %71
  tail call void @ukplat_lcpu_restore_irqf(i64 %72) #9, !dbg !1066
  br label %94, !dbg !1067

; <label>:94:                                     ; preds = %93, %9
  %95 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1068
  %96 = load i64, i64* %5, align 8, !dbg !1070, !tbaa !713
  %97 = icmp sgt i64 %96, 0, !dbg !1072
  br i1 %97, label %99, label %98, !dbg !1073

; <label>:98:                                     ; preds = %94
  tail call void @ukplat_lcpu_restore_irqf(i64 %95) #9, !dbg !1074
  br label %9, !dbg !1075, !llvm.loop !1076

; <label>:99:                                     ; preds = %94
  %100 = add nsw i64 %96, -1, !dbg !1079
  store i64 %100, i64* %5, align 8, !dbg !1079, !tbaa !713
  tail call void @ukplat_lcpu_restore_irqf(i64 %95) #9, !dbg !1080
  %101 = tail call i64 @ukplat_monotonic_clock() #9, !dbg !1081
  %102 = sub i64 %101, %2, !dbg !1082
  ret i64 %102, !dbg !1083
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @uk_semaphore_down_to(%struct.uk_semaphore*, i64) #2 !dbg !1084 {
  %3 = tail call i64 @ukplat_monotonic_clock() #9, !dbg !1103
  %4 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1105
  br i1 %4, label %5, label %6, !dbg !1108, !prof !705

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !1109
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1109
  unreachable, !dbg !1109

; <label>:6:                                      ; preds = %2
  %7 = add i64 %3, %1, !dbg !1111
  %8 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %10 = icmp eq i64 %7, 0
  %11 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %12, !dbg !1113

; <label>:12:                                     ; preds = %109, %6
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1114, !srcloc !595
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1120, !srcloc !595
  %15 = and i64 %14, -65536, !dbg !1125
  %16 = or i64 %15, 4097, !dbg !1125
  %17 = add nsw i64 %16, -1, !dbg !1125
  %18 = inttoptr i64 %17 to i32*, !dbg !1126
  %19 = load i32, i32* %18, align 4096, !dbg !1127, !tbaa !618
  %20 = sext i32 %19 to i64, !dbg !1128
  %21 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %20, !dbg !1128
  %22 = bitcast %struct.uk_waitq_entry* %21 to i8*, !dbg !1128
  %23 = tail call i8* @memset(i8* nonnull %22, i32 0, i64 24) #9, !dbg !1128
  %24 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1129, !srcloc !595
  %25 = and i64 %24, -65536, !dbg !1134
  %26 = inttoptr i64 %25 to i64*, !dbg !1135
  %27 = load i64, i64* %26, align 65536, !dbg !1135, !tbaa !781
  %28 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %20, i32 1, !dbg !1128
  %29 = bitcast %struct.uk_thread** %28 to i64*, !dbg !1128
  store i64 %27, i64* %29, align 8, !dbg !1128, !tbaa !740
  %30 = load i64, i64* %8, align 8, !dbg !1137, !tbaa !713
  %31 = icmp sgt i64 %30, 0, !dbg !1139
  br i1 %31, label %101, label %32, !dbg !1140

; <label>:32:                                     ; preds = %12
  %33 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %21, i64 0, i32 0
  %34 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %20, i32 2, i32 0
  br label %35, !dbg !1141

; <label>:35:                                     ; preds = %32, %75
  %36 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1141, !srcloc !595
  %37 = and i64 %36, -65536, !dbg !1149
  %38 = inttoptr i64 %37 to %struct.uk_thread**, !dbg !1150
  %39 = load %struct.uk_thread*, %struct.uk_thread** %38, align 65536, !dbg !1152, !tbaa !781
  %40 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1154
  %41 = load i32, i32* %33, align 8, !dbg !1159, !tbaa !938
  %42 = icmp eq i32 %41, 0, !dbg !1160
  br i1 %42, label %43, label %45, !dbg !1161

; <label>:43:                                     ; preds = %35
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %34, align 8, !dbg !1162, !tbaa !735
  %44 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %9, align 8, !dbg !1162, !tbaa !944
  store %struct.uk_waitq_entry* %21, %struct.uk_waitq_entry** %44, align 8, !dbg !1162, !tbaa !781
  store %struct.uk_waitq_entry** %34, %struct.uk_waitq_entry*** %9, align 8, !dbg !1162, !tbaa !944
  store i32 1, i32* %33, align 8, !dbg !1163, !tbaa !938
  br label %45, !dbg !1164

; <label>:45:                                     ; preds = %35, %43
  %46 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 6, !dbg !1168
  store i64 %7, i64* %46, align 8, !dbg !1169, !tbaa !958
  %47 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 5, !dbg !1172
  %48 = load i32, i32* %47, align 8, !dbg !1173, !tbaa !971
  %49 = and i32 %48, -2, !dbg !1173
  store i32 %49, i32* %47, align 8, !dbg !1173, !tbaa !971
  %50 = icmp eq %struct.uk_thread* %39, null, !dbg !1176
  br i1 %50, label %51, label %52, !dbg !1177, !prof !705

; <label>:51:                                     ; preds = %45
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1178
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1178
  unreachable, !dbg !1178

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 9, !dbg !1179
  %54 = load %struct.uk_sched*, %struct.uk_sched** %53, align 8, !dbg !1179, !tbaa !984
  %55 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %54, i64 0, i32 3, !dbg !1180
  %56 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %55, align 8, !dbg !1180, !tbaa !986
  tail call void %56(%struct.uk_sched* %54, %struct.uk_thread* nonnull %39) #9, !dbg !1181
  tail call void @ukplat_lcpu_restore_irqf(i64 %40) #9, !dbg !1182
  %57 = load i64, i64* %8, align 8, !dbg !1183, !tbaa !713
  %58 = icmp sgt i64 %57, 0, !dbg !1185
  br i1 %58, label %78, label %59, !dbg !1186

; <label>:59:                                     ; preds = %52
  br i1 %10, label %63, label %60, !dbg !1187

; <label>:60:                                     ; preds = %59
  %61 = tail call i64 @ukplat_monotonic_clock() #9, !dbg !1188
  %62 = icmp ult i64 %61, %7, !dbg !1189
  br i1 %62, label %63, label %78, !dbg !1190

; <label>:63:                                     ; preds = %60, %59
  %64 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1191, !srcloc !595
  %65 = and i64 %64, -65536, !dbg !1197
  %66 = inttoptr i64 %65 to %struct.uk_thread**, !dbg !1198
  %67 = load %struct.uk_thread*, %struct.uk_thread** %66, align 65536, !dbg !1200, !tbaa !781
  %68 = icmp eq %struct.uk_thread* %67, null, !dbg !1202
  br i1 %68, label %69, label %70, !dbg !1203, !prof !705

; <label>:69:                                     ; preds = %63
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1204
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1204
  unreachable, !dbg !1204

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %67, i64 0, i32 9, !dbg !1205
  %72 = load %struct.uk_sched*, %struct.uk_sched** %71, align 8, !dbg !1205, !tbaa !984
  %73 = icmp eq %struct.uk_sched* %72, null, !dbg !1207
  br i1 %73, label %74, label %75, !dbg !1208, !prof !705

; <label>:74:                                     ; preds = %70
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1209
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1209
  unreachable, !dbg !1209

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %72, i64 0, i32 0, !dbg !1210
  %77 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %76, align 8, !dbg !1210, !tbaa !1026
  tail call void %77(%struct.uk_sched* nonnull %72) #9, !dbg !1211
  br label %35, !dbg !1212, !llvm.loop !1213

; <label>:78:                                     ; preds = %60, %52
  %79 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1216
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %39) #9, !dbg !1217
  %80 = load i32, i32* %33, align 8, !dbg !1221, !tbaa !938
  %81 = icmp eq i32 %80, 0, !dbg !1222
  br i1 %81, label %100, label %82, !dbg !1223

; <label>:82:                                     ; preds = %78
  %83 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %11, align 8, !dbg !1224, !tbaa !731
  %84 = icmp eq %struct.uk_waitq_entry* %83, %21, !dbg !1224
  br i1 %84, label %85, label %89, !dbg !1225

; <label>:85:                                     ; preds = %82
  %86 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %34, align 8, !dbg !1226, !tbaa !735
  store %struct.uk_waitq_entry* %86, %struct.uk_waitq_entry** %11, align 8, !dbg !1226, !tbaa !731
  %87 = icmp eq %struct.uk_waitq_entry* %86, null, !dbg !1226
  br i1 %87, label %88, label %99, !dbg !1227

; <label>:88:                                     ; preds = %85
  store %struct.uk_waitq_entry** %11, %struct.uk_waitq_entry*** %9, align 8, !dbg !1226, !tbaa !944
  br label %99, !dbg !1226

; <label>:89:                                     ; preds = %82, %89
  %90 = phi %struct.uk_waitq_entry* [ %92, %89 ], [ %83, %82 ], !dbg !1228
  %91 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %90, i64 0, i32 2, i32 0, !dbg !1228
  %92 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %91, align 8, !dbg !1228, !tbaa !735
  %93 = icmp eq %struct.uk_waitq_entry* %92, %21, !dbg !1228
  br i1 %93, label %94, label %89, !dbg !1228, !llvm.loop !1058

; <label>:94:                                     ; preds = %89
  %95 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %90, i64 0, i32 2, i32 0, !dbg !1228
  %96 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %34, align 8, !dbg !1229, !tbaa !735
  store %struct.uk_waitq_entry* %96, %struct.uk_waitq_entry** %95, align 8, !dbg !1229, !tbaa !735
  %97 = icmp eq %struct.uk_waitq_entry* %96, null, !dbg !1229
  br i1 %97, label %98, label %99, !dbg !1230

; <label>:98:                                     ; preds = %94
  store %struct.uk_waitq_entry** %95, %struct.uk_waitq_entry*** %9, align 8, !dbg !1229, !tbaa !944
  br label %99, !dbg !1229

; <label>:99:                                     ; preds = %98, %94, %88, %85
  store i32 0, i32* %33, align 8, !dbg !1231, !tbaa !938
  br label %100, !dbg !1232

; <label>:100:                                    ; preds = %78, %99
  tail call void @ukplat_lcpu_restore_irqf(i64 %79) #9, !dbg !1233
  br label %101, !dbg !1234

; <label>:101:                                    ; preds = %12, %100
  %102 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1235
  %103 = load i64, i64* %8, align 8, !dbg !1237, !tbaa !713
  %104 = icmp sgt i64 %103, 0, !dbg !1239
  br i1 %104, label %113, label %105, !dbg !1240

; <label>:105:                                    ; preds = %101
  br i1 %10, label %109, label %106, !dbg !1241

; <label>:106:                                    ; preds = %105
  %107 = tail call i64 @ukplat_monotonic_clock() #9, !dbg !1242
  %108 = icmp ult i64 %107, %7, !dbg !1243
  br i1 %108, label %109, label %110, !dbg !1244

; <label>:109:                                    ; preds = %106, %105
  tail call void @ukplat_lcpu_restore_irqf(i64 %102) #9, !dbg !1245
  br label %12, !dbg !1246, !llvm.loop !1247

; <label>:110:                                    ; preds = %106
  %111 = load i64, i64* %8, align 8, !dbg !1250, !tbaa !713
  %112 = icmp sgt i64 %111, 0, !dbg !1252
  br i1 %112, label %113, label %118, !dbg !1253

; <label>:113:                                    ; preds = %101, %110
  %114 = phi i64 [ %111, %110 ], [ %103, %101 ]
  %115 = add nsw i64 %114, -1, !dbg !1254
  store i64 %115, i64* %8, align 8, !dbg !1254, !tbaa !713
  tail call void @ukplat_lcpu_restore_irqf(i64 %102) #9, !dbg !1256
  %116 = tail call i64 @ukplat_monotonic_clock() #9, !dbg !1257
  %117 = sub i64 %116, %3, !dbg !1258
  br label %119, !dbg !1259

; <label>:118:                                    ; preds = %110
  tail call void @ukplat_lcpu_restore_irqf(i64 %102) #9, !dbg !1260
  br label %119, !dbg !1261

; <label>:119:                                    ; preds = %118, %113
  %120 = phi i64 [ %117, %113 ], [ -1, %118 ], !dbg !1262
  ret i64 %120, !dbg !1263
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #2 !dbg !511 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1264
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !1264
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1266
  call void @llvm.va_start(i8* nonnull %3), !dbg !1266
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !1267
  call void @llvm.va_end(i8* nonnull %3), !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !1271
  ret void, !dbg !1271
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #7

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: noredzone
declare dso_local void @uk_thread_wake(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noredzone nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone noreturn nounwind }
attributes #11 = { nobuiltin noredzone }

!llvm.module.flags = !{!564, !565, !566}
!llvm.ident = !{!567}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 102, type: !506, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "sys_arch_sem_wait", scope: !3, file: !3, line: 97, type: !4, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !533)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/semaphore.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !7, line: 129, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 48, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 79, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sem_t", file: !15, line: 72, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 69, size: 256, elements: !17)
!17 = !{!18, !468}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !16, file: !15, line: 70, baseType: !19, size: 192)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !20, line: 51, size: 192, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !24}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !19, file: !20, line: 52, baseType: !23, size: 64)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !19, file: !20, line: 53, baseType: !25, size: 128, offset: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !26, line: 42, size: 128, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !466}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !25, file: !26, line: 42, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !26, line: 35, size: 192, elements: !31)
!31 = !{!32, !34, !462}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !30, file: !26, line: 36, baseType: !33, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !30, file: !26, line: 37, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !37, line: 59, size: 1024, elements: !38)
!37 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !{!39, !43, !45, !46, !47, !53, !54, !59, !61, !62, !211, !212, !213, !426}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !37, line: 60, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !36, file: !37, line: 61, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !36, file: !37, line: 62, baseType: !44, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !36, file: !37, line: 63, baseType: !44, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !36, file: !37, line: 64, baseType: !48, size: 128, offset: 256)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !37, line: 64, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !48, file: !37, line: 64, baseType: !35, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !48, file: !37, line: 64, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !37, line: 65, baseType: !8, size: 32, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !36, file: !37, line: 66, baseType: !55, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !56, line: 49, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !58, line: 128, baseType: !23)
!58 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !36, file: !37, line: 67, baseType: !60, size: 8, offset: 512)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !36, file: !37, line: 68, baseType: !25, size: 128, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !36, file: !37, line: 69, baseType: !63, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !65, line: 90, size: 2176, elements: !66)
!65 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !{!67, !72, !90, !95, !97, !99, !104, !112, !117, !123, !124, !125, !130, !208, !209, !210}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !64, file: !65, line: 91, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !65, line: 68, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !63}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !64, file: !65, line: 93, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !65, line: 71, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!33, !63, !35, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !80, line: 62, baseType: !81)
!80 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !80, line: 55, size: 128, elements: !82)
!82 = !{!83, !84, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !81, file: !80, line: 57, baseType: !60, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !81, file: !80, line: 59, baseType: !85, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !80, line: 53, baseType: !33)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !81, file: !80, line: 61, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !56, line: 48, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !58, line: 129, baseType: !89)
!89 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !64, file: !65, line: 94, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !65, line: 74, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !63, !35}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !64, file: !65, line: 95, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !65, line: 76, baseType: !92)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !64, file: !65, line: 96, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !65, line: 78, baseType: !92)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !64, file: !65, line: 98, baseType: !100, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !65, line: 81, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!33, !63, !35, !85}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !64, file: !65, line: 99, baseType: !105, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !65, line: 83, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!33, !63, !109, !111}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !64, file: !65, line: 100, baseType: !113, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !65, line: 85, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!33, !63, !35, !33}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !64, file: !65, line: 101, baseType: !118, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !65, line: 87, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!33, !63, !109, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !64, file: !65, line: 104, baseType: !60, size: 8, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !64, file: !65, line: 105, baseType: !36, size: 1024, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !64, file: !65, line: 106, baseType: !126, size: 128, offset: 1664)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !37, line: 93, size: 128, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !126, file: !37, line: 93, baseType: !35, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !126, file: !37, line: 93, baseType: !52, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !64, file: !65, line: 107, baseType: !131, size: 192, offset: 1792)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !132, line: 59, size: 192, elements: !133)
!132 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !{!134, !199, !203}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !131, file: !132, line: 61, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !132, line: 51, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!44, !139, !89, !89}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !141, line: 77, size: 832, elements: !142)
!141 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!142 = !{!143, !150, !155, !160, !166, !168, !173, !174, !175, !180, !185, !190, !191, !192}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !140, file: !141, line: 79, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !141, line: 54, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!44, !139, !148}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 58, baseType: !89)
!149 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !140, file: !141, line: 80, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !141, line: 56, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!44, !139, !148, !148}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !140, file: !141, line: 81, baseType: !156, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !141, line: 62, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!44, !139, !44, !148}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !140, file: !141, line: 82, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !141, line: 58, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!33, !139, !165, !148, !148}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !140, file: !141, line: 83, baseType: !167, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !141, line: 60, baseType: !152)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !140, file: !141, line: 84, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !141, line: 64, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !139, !44}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !140, file: !141, line: 87, baseType: !169, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !140, file: !141, line: 88, baseType: !144, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !140, file: !141, line: 92, baseType: !176, size: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !141, line: 66, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!44, !139, !89}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !140, file: !141, line: 93, baseType: !181, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !141, line: 68, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !139, !44, !89}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !140, file: !141, line: 99, baseType: !186, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !141, line: 70, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!33, !139, !44, !148}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !140, file: !141, line: 100, baseType: !148, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !141, line: 103, baseType: !139, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !140, file: !141, line: 104, baseType: !193, offset: 832)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !197)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 20, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !11, line: 41, baseType: !196)
!196 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!197 = !{!198}
!198 = !DISubrange(count: -1)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !131, file: !132, line: 63, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !44}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !131, file: !132, line: 65, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !132, line: 56, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !44, !44}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !64, file: !65, line: 108, baseType: !139, size: 64, offset: 1984)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !65, line: 109, baseType: !63, size: 64, offset: 2048)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !64, file: !65, line: 110, baseType: !44, size: 64, offset: 2112)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !36, file: !37, line: 70, baseType: !44, size: 64, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !36, file: !37, line: 72, baseType: !33, size: 32, offset: 832)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !36, file: !37, line: 82, baseType: !214, size: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !216, line: 569, size: 14912, elements: !217)
!216 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!217 = !{!218, !219, !294, !295, !296, !297, !301, !302, !305, !306, !310, !322, !323, !324, !326, !327, !328, !390, !411, !412, !417, !424}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !215, file: !216, line: 571, baseType: !33, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !215, file: !216, line: 576, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !216, line: 287, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !216, line: 181, size: 1408, elements: !223)
!223 = !{!224, !227, !228, !229, !231, !232, !237, !238, !239, !246, !250, !255, !259, !260, !261, !262, !266, !270, !271, !272, !274, !275, !279, !293}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !222, file: !216, line: 182, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !222, file: !216, line: 183, baseType: !33, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !222, file: !216, line: 184, baseType: !33, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !222, file: !216, line: 185, baseType: !230, size: 16, offset: 128)
!230 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !222, file: !216, line: 186, baseType: !230, size: 16, offset: 144)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !222, file: !216, line: 187, baseType: !233, size: 128, offset: 192)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !216, line: 117, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !233, file: !216, line: 118, baseType: !225, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !233, file: !216, line: 119, baseType: !33, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !222, file: !216, line: 188, baseType: !33, size: 32, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !222, file: !216, line: 195, baseType: !44, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !222, file: !216, line: 197, baseType: !240, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !214, !44, !245, !33}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !244, line: 145, baseType: !23)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !222, file: !216, line: 199, baseType: !247, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!243, !214, !44, !40, !33}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !222, file: !216, line: 202, baseType: !251, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !214, !44, !254, !33}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !244, line: 114, baseType: !23)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !222, file: !216, line: 203, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!33, !214, !44}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !222, file: !216, line: 206, baseType: !233, size: 128, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !222, file: !216, line: 207, baseType: !225, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !222, file: !216, line: 208, baseType: !33, size: 32, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !222, file: !216, line: 211, baseType: !263, size: 24, offset: 928)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 24, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !222, file: !216, line: 212, baseType: !267, size: 8, offset: 952)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 8, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 1)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !222, file: !216, line: 215, baseType: !233, size: 128, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !222, file: !216, line: 218, baseType: !33, size: 32, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !222, file: !216, line: 219, baseType: !273, size: 64, offset: 1152)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !244, line: 44, baseType: !23)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !222, file: !216, line: 222, baseType: !214, size: 64, offset: 1216)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !222, file: !216, line: 226, baseType: !276, size: 32, offset: 1280)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !244, line: 175, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !278, line: 12, baseType: !33)
!278 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !222, file: !216, line: 228, baseType: !280, size: 64, offset: 1312)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !244, line: 171, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 163, size: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !281, file: !244, line: 165, baseType: !33, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !281, file: !244, line: 170, baseType: !285, size: 32, offset: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !244, line: 166, size: 32, elements: !286)
!286 = !{!287, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !285, file: !244, line: 168, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !149, line: 124, baseType: !12)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !285, file: !244, line: 169, baseType: !290, size: 32)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !222, file: !216, line: 229, baseType: !33, size: 32, offset: 1376)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !215, file: !216, line: 576, baseType: !220, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !215, file: !216, line: 576, baseType: !220, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !215, file: !216, line: 578, baseType: !33, size: 32, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !215, file: !216, line: 579, baseType: !298, size: 200, offset: 288)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 200, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 25)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !215, file: !216, line: 582, baseType: !33, size: 32, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !215, file: !216, line: 583, baseType: !303, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !216, line: 40, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !215, file: !216, line: 585, baseType: !33, size: 32, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !215, file: !216, line: 587, baseType: !307, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !214}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !215, file: !216, line: 590, baseType: !311, size: 64, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !216, line: 47, size: 256, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !312, file: !216, line: 49, baseType: !311, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !312, file: !216, line: 50, baseType: !33, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !312, file: !216, line: 50, baseType: !33, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !312, file: !216, line: 50, baseType: !33, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !312, file: !216, line: 50, baseType: !33, size: 32, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !312, file: !216, line: 51, baseType: !320, size: 32, offset: 192)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 32, elements: !268)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !216, line: 25, baseType: !12)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !215, file: !216, line: 591, baseType: !33, size: 32, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !215, file: !216, line: 592, baseType: !311, size: 64, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !215, file: !216, line: 593, baseType: !325, size: 64, offset: 960)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !215, file: !216, line: 596, baseType: !33, size: 32, offset: 1024)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !215, file: !216, line: 597, baseType: !245, size: 64, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !215, file: !216, line: 632, baseType: !329, size: 2880, offset: 1152)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !216, line: 599, size: 2880, elements: !330)
!330 = !{!331, !381}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !329, file: !216, line: 622, baseType: !332, size: 1728)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !216, line: 601, size: 1728, elements: !333)
!333 = !{!334, !335, !336, !340, !352, !353, !355, !363, !364, !365, !366, !370, !374, !375, !376, !377, !378, !379, !380}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !332, file: !216, line: 603, baseType: !12, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !332, file: !216, line: 604, baseType: !245, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !332, file: !216, line: 605, baseType: !337, size: 208, offset: 128)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 208, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 26)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !332, file: !216, line: 606, baseType: !341, size: 288, offset: 352)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !216, line: 55, size: 288, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !341, file: !216, line: 57, baseType: !33, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !341, file: !216, line: 58, baseType: !33, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !341, file: !216, line: 59, baseType: !33, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !341, file: !216, line: 60, baseType: !33, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !341, file: !216, line: 61, baseType: !33, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !341, file: !216, line: 62, baseType: !33, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !341, file: !216, line: 63, baseType: !33, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !341, file: !216, line: 64, baseType: !33, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !341, file: !216, line: 65, baseType: !33, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !332, file: !216, line: 607, baseType: !33, size: 32, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !332, file: !216, line: 608, baseType: !354, size: 64, offset: 704)
!354 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !332, file: !216, line: 609, baseType: !356, size: 112, offset: 768)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !216, line: 319, size: 112, elements: !357)
!357 = !{!358, !361, !362}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !356, file: !216, line: 320, baseType: !359, size: 48)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 48, elements: !264)
!360 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !356, file: !216, line: 321, baseType: !359, size: 48, offset: 48)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !356, file: !216, line: 322, baseType: !360, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !332, file: !216, line: 610, baseType: !280, size: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !332, file: !216, line: 611, baseType: !280, size: 64, offset: 960)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !332, file: !216, line: 612, baseType: !280, size: 64, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !332, file: !216, line: 613, baseType: !367, size: 64, offset: 1088)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !332, file: !216, line: 614, baseType: !371, size: 192, offset: 1152)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 24)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !332, file: !216, line: 615, baseType: !33, size: 32, offset: 1344)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !332, file: !216, line: 616, baseType: !280, size: 64, offset: 1376)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !332, file: !216, line: 617, baseType: !280, size: 64, offset: 1440)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !332, file: !216, line: 618, baseType: !280, size: 64, offset: 1504)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !332, file: !216, line: 619, baseType: !280, size: 64, offset: 1568)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !332, file: !216, line: 620, baseType: !280, size: 64, offset: 1632)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !332, file: !216, line: 621, baseType: !33, size: 32, offset: 1696)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !329, file: !216, line: 631, baseType: !382, size: 2880)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !216, line: 626, size: 2880, elements: !383)
!383 = !{!384, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !382, file: !216, line: 629, baseType: !385, size: 1920)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 1920, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 30)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !382, file: !216, line: 630, baseType: !389, size: 960, offset: 1920)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 960, elements: !386)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !215, file: !216, line: 636, baseType: !391, size: 64, offset: 4032)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !216, line: 93, size: 6336, elements: !393)
!393 = !{!394, !395, !396, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !392, file: !216, line: 94, baseType: !391, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !392, file: !216, line: 95, baseType: !33, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !392, file: !216, line: 97, baseType: !397, size: 2048, offset: 128)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 2048, elements: !401)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null}
!401 = !{!402}
!402 = !DISubrange(count: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !392, file: !216, line: 98, baseType: !404, size: 4160, offset: 2176)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !216, line: 74, size: 4160, elements: !405)
!405 = !{!406, !408, !409, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !404, file: !216, line: 75, baseType: !407, size: 2048)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !401)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !404, file: !216, line: 76, baseType: !407, size: 2048, offset: 2048)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !404, file: !216, line: 78, baseType: !321, size: 32, offset: 4096)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !404, file: !216, line: 81, baseType: !321, size: 32, offset: 4128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !215, file: !216, line: 637, baseType: !392, size: 6336, offset: 4096)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !215, file: !216, line: 641, baseType: !413, size: 64, offset: 10432)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !33}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !215, file: !216, line: 646, baseType: !418, size: 192, offset: 10496)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !216, line: 291, size: 192, elements: !419)
!419 = !{!420, !422, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !418, file: !216, line: 293, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !418, file: !216, line: 294, baseType: !33, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !418, file: !216, line: 295, baseType: !220, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !215, file: !216, line: 648, baseType: !425, size: 4224, offset: 10688)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 4224, elements: !264)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !36, file: !37, line: 85, baseType: !427, size: 64, offset: 960)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !429, line: 114, size: 640, elements: !430)
!429 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!430 = !{!431, !435, !436, !443, !461}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !428, file: !429, line: 116, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !433, line: 64, baseType: !434)
!433 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !433, line: 63, baseType: !89)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !428, file: !429, line: 118, baseType: !432, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !428, file: !429, line: 120, baseType: !437, size: 128, offset: 128)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !438, line: 51, size: 128, elements: !439)
!438 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!439 = !{!440, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !438, line: 52, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !438, line: 53, baseType: !441, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !428, file: !429, line: 122, baseType: !444, size: 256, offset: 256)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !429, line: 98, size: 256, elements: !445)
!445 = !{!446, !452, !453}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !444, file: !429, line: 107, baseType: !447, size: 32)
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !429, line: 92, baseType: !12, size: 32, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!450 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!451 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !444, file: !429, line: 109, baseType: !432, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !444, file: !429, line: 111, baseType: !454, size: 96, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !433, line: 72, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 68, size: 96, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !455, file: !433, line: 69, baseType: !33, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !455, file: !433, line: 70, baseType: !33, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !455, file: !433, line: 71, baseType: !460, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !433, line: 61, baseType: !33)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !428, file: !429, line: 124, baseType: !437, size: 128, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !30, file: !26, line: 38, baseType: !463, size: 64, offset: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !26, line: 38, size: 64, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !463, file: !26, line: 38, baseType: !29, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !25, file: !26, line: 42, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !16, file: !15, line: 71, baseType: !33, size: 32, offset: 192)
!469 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !470, retainedTypes: !498, globals: !503)
!470 = !{!447, !471, !491}
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !472, line: 53, baseType: !33, size: 32, elements: !473)
!472 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!474 = !DIEnumerator(name: "ERR_OK", value: 0)
!475 = !DIEnumerator(name: "ERR_MEM", value: -1)
!476 = !DIEnumerator(name: "ERR_BUF", value: -2)
!477 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!478 = !DIEnumerator(name: "ERR_RTE", value: -4)
!479 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!480 = !DIEnumerator(name: "ERR_VAL", value: -6)
!481 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!482 = !DIEnumerator(name: "ERR_USE", value: -8)
!483 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!484 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!485 = !DIEnumerator(name: "ERR_CONN", value: -11)
!486 = !DIEnumerator(name: "ERR_IF", value: -12)
!487 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!488 = !DIEnumerator(name: "ERR_RST", value: -14)
!489 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!490 = !DIEnumerator(name: "ERR_ARG", value: -16)
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !492, line: 68, baseType: !12, size: 32, elements: !493)
!492 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!493 = !{!494, !495, !496, !497}
!494 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!495 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!496 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!497 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!498 = !{!89, !23, !499, !501, !87, !6, !122, !52}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 60, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !11, line: 105, baseType: !89)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!503 = !{!0, !504, !509, !528}
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 102, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 224, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 28)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "__str", scope: !511, file: !512, line: 198, type: !367, isLocal: true, isDefinition: true)
!511 = distinct !DISubprogram(name: "uk_pr_crit", scope: !512, file: !512, line: 194, type: !513, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !515)
!512 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!513 = !DISubroutineType(types: !514)
!514 = !{null, !40, null}
!515 = !{!516, !517}
!516 = !DILocalVariable(name: "fmt", arg: 1, scope: !511, file: !512, line: 194, type: !40)
!517 = !DILocalVariable(name: "argp", scope: !511, file: !512, line: 196, type: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !519, line: 32, baseType: !520)
!519 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 192, elements: !268)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !523)
!523 = !{!524, !525, !526, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !522, file: !3, line: 196, baseType: !12, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !522, file: !3, line: 196, baseType: !12, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !522, file: !3, line: 196, baseType: !44, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !522, file: !3, line: 196, baseType: !44, size: 64, offset: 128)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "__str", scope: !511, file: !512, line: 198, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 96, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 12)
!533 = !{!534, !535, !536, !537, !540, !546, !547, !555, !556, !563}
!534 = !DILocalVariable(name: "sem", arg: 1, scope: !2, file: !3, line: 97, type: !13)
!535 = !DILocalVariable(name: "timeout", arg: 2, scope: !2, file: !3, line: 97, type: !6)
!536 = !DILocalVariable(name: "nsret", scope: !2, file: !3, line: 99, type: !87)
!537 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 100, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!540 = !DILocalVariable(name: "tid", scope: !541, file: !3, line: 102, type: !8)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 102, column: 2)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 102, column: 2)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 102, column: 2)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 102, column: 2)
!545 = distinct !DILexicalBlock(scope: !2, file: !3, line: 102, column: 2)
!546 = !DILocalVariable(name: "_arg3", scope: !541, file: !3, line: 102, type: !499)
!547 = !DILocalVariable(name: "tid", scope: !548, file: !3, line: 106, type: !8)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 106, column: 3)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 106, column: 3)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 106, column: 3)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 106, column: 3)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 106, column: 3)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 105, column: 20)
!554 = distinct !DILexicalBlock(scope: !2, file: !3, line: 105, column: 6)
!555 = !DILocalVariable(name: "_ret", scope: !548, file: !3, line: 106, type: !499)
!556 = !DILocalVariable(name: "tid", scope: !557, file: !3, line: 109, type: !8)
!557 = distinct !DILexicalBlock(scope: !558, file: !3, line: 109, column: 3)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 109, column: 3)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 109, column: 3)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 109, column: 3)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 109, column: 3)
!562 = distinct !DILexicalBlock(scope: !554, file: !3, line: 108, column: 9)
!563 = !DILocalVariable(name: "_ret", scope: !557, file: !3, line: 109, type: !499)
!564 = !{i32 2, !"Dwarf Version", i32 4}
!565 = !{i32 2, !"Debug Info Version", i32 3}
!566 = !{i32 1, !"wchar_size", i32 4}
!567 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!568 = distinct !DISubprogram(name: "sys_sem_new", scope: !3, file: !3, line: 45, type: !569, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !576)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !13, !573}
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !472, line: 96, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !7, line: 126, baseType: !194)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !7, line: 125, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 24, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 43, baseType: !226)
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "sem", arg: 1, scope: !568, file: !3, line: 45, type: !13)
!578 = !DILocalVariable(name: "count", arg: 2, scope: !568, file: !3, line: 45, type: !573)
!579 = !DILocalVariable(name: "tid", scope: !580, file: !3, line: 47, type: !8)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 47, column: 2)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 47, column: 2)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 47, column: 2)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 47, column: 2)
!584 = distinct !DILexicalBlock(scope: !568, file: !3, line: 47, column: 2)
!585 = !DILocation(line: 45, column: 30, scope: !568)
!586 = !DILocation(line: 45, column: 40, scope: !568)
!587 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !594)
!588 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !589, file: !589, line: 116, type: !590, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !592)
!589 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!590 = !DISubroutineType(types: !591)
!591 = !{!89}
!592 = !{!593}
!593 = !DILocalVariable(name: "sp", scope: !588, file: !589, line: 118, type: !89)
!594 = distinct !DILocation(line: 47, column: 2, scope: !583)
!595 = !{i32 429171}
!596 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !594)
!597 = !DILocation(line: 47, column: 2, scope: !583)
!598 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !599)
!599 = distinct !DILocation(line: 47, column: 2, scope: !583)
!600 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !599)
!601 = !DILocation(line: 47, column: 2, scope: !584)
!602 = !DILocation(line: 47, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !583, file: !3, line: 47, column: 2)
!604 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !605)
!605 = distinct !DILocation(line: 49, column: 21, scope: !606, inlinedAt: !612)
!606 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !607, file: !607, line: 47, type: !608, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !610)
!607 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!608 = !DISubroutineType(types: !609)
!609 = !{!33}
!610 = !{!611}
!611 = !DILocalVariable(name: "sp", scope: !606, file: !607, line: 49, type: !89)
!612 = distinct !DILocation(line: 47, column: 2, scope: !580)
!613 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !605)
!614 = !DILocation(line: 49, column: 16, scope: !606, inlinedAt: !612)
!615 = !DILocation(line: 50, column: 19, scope: !606, inlinedAt: !612)
!616 = !DILocation(line: 50, column: 11, scope: !606, inlinedAt: !612)
!617 = !DILocation(line: 50, column: 9, scope: !606, inlinedAt: !612)
!618 = !{!619, !619, i64 0}
!619 = !{!"int", !620, i64 0}
!620 = !{!"omnipotent char", !621, i64 0}
!621 = !{!"Simple C/C++ TBAA"}
!622 = !DILocation(line: 47, column: 2, scope: !580)
!623 = !{i32 -2146445132, i32 -2146445119, i32 -2146445094, i32 -2146445070, i32 -2146445045, i32 -2146444970, i32 -2146444945, i32 -2146444801, i32 -2146442545, i32 -2146442456, i32 -2146442335, i32 -2146442240, i32 -2146442139, i32 -2146442112, i32 -2146442029, i32 -2146441940, i32 -2146441819, i32 -2146441719, i32 -2146441613, i32 -2146441505, i32 -2146444509, i32 -2146444456, i32 -2146444425, i32 -2146444394, i32 -2146444373, i32 -2146444351, i32 -2146444302, i32 -2146444281, i32 -2146441422, i32 -2146441333, i32 -2146441212, i32 -2146441113, i32 -2146441007, i32 -2146440905, i32 -2146440872, i32 -2146440799, i32 -2146440731, i32 -2146443904, i32 -2146443851, i32 -2146443820, i32 -2146443789, i32 -2146443768, i32 -2146443746, i32 -2146443697, i32 -2146443676, i32 -2146440678, i32 -2146440589, i32 -2146440468, i32 -2146440369, i32 -2146440263, i32 -2146440161, i32 -2146440128, i32 -2146440045, i32 -2146439956, i32 -2146439835, i32 -2146439735, i32 -2146439709, i32 -2146439606, i32 -2146439580, i32 -2146443418, i32 -2146443351, i32 -2146443326, i32 -2146443262, i32 -2146443146, i32 -2146443121, i32 -2146443096}
!624 = !DILocation(line: 48, column: 7, scope: !568)
!625 = !DILocation(line: 48, column: 13, scope: !568)
!626 = !{!627, !619, i64 24}
!627 = !{!"", !628, i64 0, !619, i64 24}
!628 = !{!"uk_semaphore", !629, i64 0, !630, i64 8}
!629 = !{!"long", !620, i64 0}
!630 = !{!"uk_waitq", !631, i64 0, !631, i64 8}
!631 = !{!"any pointer", !620, i64 0}
!632 = !DILocation(line: 49, column: 2, scope: !568)
!633 = !DILocation(line: 120, column: 2, scope: !588)
!634 = !DILocation(line: 118, column: 16, scope: !588)
!635 = !DILocation(line: 121, column: 2, scope: !588)
!636 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !637)
!637 = distinct !DILocation(line: 49, column: 21, scope: !606)
!638 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !637)
!639 = !DILocation(line: 49, column: 16, scope: !606)
!640 = !DILocation(line: 50, column: 19, scope: !606)
!641 = !DILocation(line: 50, column: 11, scope: !606)
!642 = !DILocation(line: 50, column: 9, scope: !606)
!643 = !DILocation(line: 50, column: 2, scope: !606)
!644 = distinct !DISubprogram(name: "sys_sem_valid", scope: !3, file: !3, line: 52, type: !645, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{!33, !13}
!647 = !{!648}
!648 = !DILocalVariable(name: "sem", arg: 1, scope: !644, file: !3, line: 52, type: !13)
!649 = !DILocation(line: 52, column: 30, scope: !644)
!650 = !DILocation(line: 54, column: 15, scope: !644)
!651 = !DILocation(line: 54, column: 21, scope: !644)
!652 = !DILocation(line: 54, column: 2, scope: !644)
!653 = distinct !DISubprogram(name: "sys_sem_set_invalid", scope: !3, file: !3, line: 57, type: !654, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !13}
!656 = !{!657}
!657 = !DILocalVariable(name: "sem", arg: 1, scope: !653, file: !3, line: 57, type: !13)
!658 = !DILocation(line: 57, column: 37, scope: !653)
!659 = !DILocation(line: 59, column: 7, scope: !653)
!660 = !DILocation(line: 59, column: 13, scope: !653)
!661 = !DILocation(line: 60, column: 1, scope: !653)
!662 = distinct !DISubprogram(name: "sys_sem_free", scope: !3, file: !3, line: 62, type: !654, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !663)
!663 = !{!664}
!664 = !DILocalVariable(name: "sem", arg: 1, scope: !662, file: !3, line: 62, type: !13)
!665 = !DILocation(line: 62, column: 30, scope: !662)
!666 = !DILocation(line: 57, column: 37, scope: !653, inlinedAt: !667)
!667 = distinct !DILocation(line: 64, column: 2, scope: !662)
!668 = !DILocation(line: 59, column: 7, scope: !653, inlinedAt: !667)
!669 = !DILocation(line: 59, column: 13, scope: !653, inlinedAt: !667)
!670 = !DILocation(line: 65, column: 1, scope: !662)
!671 = distinct !DISubprogram(name: "sys_sem_signal", scope: !3, file: !3, line: 68, type: !654, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !672)
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "sem", arg: 1, scope: !671, file: !3, line: 68, type: !13)
!674 = !DILocalVariable(name: "tid", scope: !675, file: !3, line: 70, type: !8)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 70, column: 2)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 70, column: 2)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 70, column: 2)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 70, column: 2)
!679 = distinct !DILexicalBlock(scope: !671, file: !3, line: 70, column: 2)
!680 = !DILocation(line: 68, column: 32, scope: !671)
!681 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !682)
!682 = distinct !DILocation(line: 70, column: 2, scope: !678)
!683 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !682)
!684 = !DILocation(line: 70, column: 2, scope: !678)
!685 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !686)
!686 = distinct !DILocation(line: 70, column: 2, scope: !678)
!687 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !686)
!688 = !DILocation(line: 70, column: 2, scope: !679)
!689 = !DILocation(line: 198, column: 2, scope: !690, inlinedAt: !702)
!690 = distinct !DILexicalBlock(scope: !691, file: !20, line: 198, column: 2)
!691 = distinct !DILexicalBlock(scope: !692, file: !20, line: 198, column: 2)
!692 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !20, file: !20, line: 194, type: !693, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "s", arg: 1, scope: !692, file: !20, line: 194, type: !695)
!698 = !DILocalVariable(name: "irqf", scope: !692, file: !20, line: 196, type: !89)
!699 = !DILocalVariable(name: "wq", scope: !692, file: !20, line: 209, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!702 = distinct !DILocation(line: 70, column: 2, scope: !703)
!703 = distinct !DILexicalBlock(scope: !678, file: !3, line: 70, column: 2)
!704 = !DILocation(line: 198, column: 2, scope: !691, inlinedAt: !702)
!705 = !{!"branch_weights", i32 1, i32 2000}
!706 = !DILocation(line: 198, column: 2, scope: !707, inlinedAt: !702)
!707 = distinct !DILexicalBlock(scope: !690, file: !20, line: 198, column: 2)
!708 = !DILocation(line: 194, column: 57, scope: !692, inlinedAt: !702)
!709 = !DILocation(line: 200, column: 9, scope: !692, inlinedAt: !702)
!710 = !DILocation(line: 196, column: 16, scope: !692, inlinedAt: !702)
!711 = !DILocation(line: 201, column: 7, scope: !692, inlinedAt: !702)
!712 = !DILocation(line: 201, column: 2, scope: !692, inlinedAt: !702)
!713 = !{!628, !629, i64 0}
!714 = !DILocation(line: 209, column: 28, scope: !692, inlinedAt: !702)
!715 = !DILocalVariable(name: "wq", arg: 1, scope: !716, file: !717, line: 99, type: !720)
!716 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !717, file: !717, line: 99, type: !718, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !721)
!717 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!718 = !DISubroutineType(types: !719)
!719 = !{null, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!721 = !{!715, !722, !723, !724}
!722 = !DILocalVariable(name: "flags", scope: !716, file: !717, line: 101, type: !89)
!723 = !DILocalVariable(name: "curr", scope: !716, file: !717, line: 102, type: !29)
!724 = !DILocalVariable(name: "tmp", scope: !716, file: !717, line: 102, type: !29)
!725 = !DILocation(line: 99, column: 40, scope: !716, inlinedAt: !726)
!726 = distinct !DILocation(line: 210, column: 2, scope: !692, inlinedAt: !702)
!727 = !DILocation(line: 104, column: 10, scope: !716, inlinedAt: !726)
!728 = !DILocation(line: 101, column: 16, scope: !716, inlinedAt: !726)
!729 = !DILocation(line: 105, column: 2, scope: !730, inlinedAt: !726)
!730 = distinct !DILexicalBlock(scope: !716, file: !717, line: 105, column: 2)
!731 = !{!630, !631, i64 0}
!732 = !DILocation(line: 102, column: 25, scope: !716, inlinedAt: !726)
!733 = !DILocation(line: 105, column: 2, scope: !734, inlinedAt: !726)
!734 = distinct !DILexicalBlock(scope: !730, file: !717, line: 105, column: 2)
!735 = !{!736, !631, i64 16}
!736 = !{!"uk_waitq_entry", !619, i64 0, !631, i64 8, !737, i64 16}
!737 = !{!"", !631, i64 0}
!738 = !DILocation(line: 102, column: 32, scope: !716, inlinedAt: !726)
!739 = !DILocation(line: 106, column: 24, scope: !734, inlinedAt: !726)
!740 = !{!736, !631, i64 8}
!741 = !DILocation(line: 106, column: 3, scope: !734, inlinedAt: !726)
!742 = distinct !{!742, !743, !744}
!743 = !DILocation(line: 105, column: 2, scope: !730)
!744 = !DILocation(line: 106, column: 30, scope: !730)
!745 = !DILocation(line: 107, column: 2, scope: !716, inlinedAt: !726)
!746 = !DILocation(line: 211, column: 2, scope: !692, inlinedAt: !702)
!747 = !DILocation(line: 70, column: 2, scope: !703)
!748 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !749)
!749 = distinct !DILocation(line: 49, column: 21, scope: !606, inlinedAt: !750)
!750 = distinct !DILocation(line: 70, column: 2, scope: !675)
!751 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !749)
!752 = !DILocation(line: 49, column: 16, scope: !606, inlinedAt: !750)
!753 = !DILocation(line: 50, column: 19, scope: !606, inlinedAt: !750)
!754 = !DILocation(line: 50, column: 11, scope: !606, inlinedAt: !750)
!755 = !DILocation(line: 50, column: 9, scope: !606, inlinedAt: !750)
!756 = !DILocation(line: 70, column: 2, scope: !675)
!757 = !{i32 -2146437679, i32 -2146437666, i32 -2146437641, i32 -2146437617, i32 -2146437592, i32 -2146437517, i32 -2146437492, i32 -2146437348, i32 -2146435132, i32 -2146435043, i32 -2146434922, i32 -2146434827, i32 -2146434726, i32 -2146434699, i32 -2146434616, i32 -2146434527, i32 -2146434406, i32 -2146434306, i32 -2146434200, i32 -2146434092, i32 -2146437060, i32 -2146437007, i32 -2146436976, i32 -2146436945, i32 -2146436924, i32 -2146436902, i32 -2146436853, i32 -2146436832, i32 -2146434009, i32 -2146433920, i32 -2146433799, i32 -2146433700, i32 -2146433594, i32 -2146433492, i32 -2146433459, i32 -2146433386, i32 -2146433318, i32 -2146436458, i32 -2146436405, i32 -2146436374, i32 -2146436343, i32 -2146436322, i32 -2146436300, i32 -2146436251, i32 -2146436230, i32 -2146433267, i32 -2146433178, i32 -2146433057, i32 -2146432958, i32 -2146432852, i32 -2146432750, i32 -2146432717, i32 -2146432634, i32 -2146432545, i32 -2146432424, i32 -2146432324, i32 -2146432298, i32 -2146432195, i32 -2146432169, i32 -2146435972, i32 -2146435905, i32 -2146435880, i32 -2146435816, i32 -2146435700, i32 -2146435675, i32 -2146435650}
!758 = !DILocation(line: 71, column: 1, scope: !671)
!759 = !DILocation(line: 194, column: 57, scope: !692)
!760 = !DILocation(line: 198, column: 2, scope: !690)
!761 = !DILocation(line: 198, column: 2, scope: !691)
!762 = !DILocation(line: 198, column: 2, scope: !707)
!763 = !DILocation(line: 200, column: 9, scope: !692)
!764 = !DILocation(line: 196, column: 16, scope: !692)
!765 = !DILocation(line: 201, column: 7, scope: !692)
!766 = !DILocation(line: 201, column: 2, scope: !692)
!767 = !DILocation(line: 209, column: 28, scope: !692)
!768 = !DILocation(line: 99, column: 40, scope: !716, inlinedAt: !769)
!769 = distinct !DILocation(line: 210, column: 2, scope: !692)
!770 = !DILocation(line: 104, column: 10, scope: !716, inlinedAt: !769)
!771 = !DILocation(line: 101, column: 16, scope: !716, inlinedAt: !769)
!772 = !DILocation(line: 105, column: 2, scope: !730, inlinedAt: !769)
!773 = !DILocation(line: 102, column: 25, scope: !716, inlinedAt: !769)
!774 = !DILocation(line: 105, column: 2, scope: !734, inlinedAt: !769)
!775 = !DILocation(line: 102, column: 32, scope: !716, inlinedAt: !769)
!776 = !DILocation(line: 106, column: 24, scope: !734, inlinedAt: !769)
!777 = !DILocation(line: 106, column: 3, scope: !734, inlinedAt: !769)
!778 = !DILocation(line: 107, column: 2, scope: !716, inlinedAt: !769)
!779 = !DILocation(line: 211, column: 2, scope: !692)
!780 = !DILocation(line: 212, column: 1, scope: !692)
!781 = !{!631, !631, i64 0}
!782 = !DILocation(line: 97, column: 36, scope: !2)
!783 = !DILocation(line: 97, column: 47, scope: !2)
!784 = !DILocation(line: 99, column: 2, scope: !2)
!785 = !DILocation(line: 99, column: 9, scope: !2)
!786 = !DILocation(line: 100, column: 2, scope: !2)
!787 = !DILocation(line: 100, column: 32, scope: !2)
!788 = !DILocation(line: 100, column: 61, scope: !2)
!789 = !DILocation(line: 100, column: 67, scope: !2)
!790 = !DILocation(line: 102, column: 2, scope: !2)
!791 = !DILocation(line: 102, column: 2, scope: !544)
!792 = !DILocation(line: 102, column: 2, scope: !545)
!793 = !DILocation(line: 102, column: 2, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 102, column: 2)
!795 = distinct !DILexicalBlock(scope: !544, file: !3, line: 102, column: 2)
!796 = !DILocation(line: 102, column: 2, scope: !795)
!797 = !DILocation(line: 102, column: 2, scope: !543)
!798 = !DILocation(line: 102, column: 2, scope: !542)
!799 = !DILocation(line: 102, column: 2, scope: !541)
!800 = !{!629, !629, i64 0}
!801 = !DILocation(line: 102, column: 2, scope: !802)
!802 = distinct !DILexicalBlock(scope: !541, file: !3, line: 102, column: 2)
!803 = !{i32 -2146429274, i32 -2146429261, i32 -2146429236, i32 -2146429212, i32 -2146429187, i32 -2146429112, i32 -2146429087, i32 -2146428943, i32 -2146426351, i32 -2146426262, i32 -2146426141, i32 -2146426046, i32 -2146425945, i32 -2146425918, i32 -2146425835, i32 -2146425746, i32 -2146425625, i32 -2146425525, i32 -2146425419, i32 -2146425311, i32 -2146428613, i32 -2146428560, i32 -2146428529, i32 -2146428498, i32 -2146428477, i32 -2146428455, i32 -2146428406, i32 -2146428385, i32 -2146428282, i32 -2146425228, i32 -2146425139, i32 -2146425018, i32 -2146424919, i32 -2146424813, i32 -2146424711, i32 -2146424678, i32 -2146424605, i32 -2146424537, i32 -2146428022, i32 -2146427969, i32 -2146427938, i32 -2146427907, i32 -2146427886, i32 -2146427864, i32 -2146427815, i32 -2146427794, i32 -2146424490, i32 -2146424401, i32 -2146424280, i32 -2146424181, i32 -2146424075, i32 -2146423973, i32 -2146423940, i32 -2146423857, i32 -2146423768, i32 -2146423647, i32 -2146423547, i32 -2146423521, i32 -2146423418, i32 -2146423392, i32 -2146427536, i32 -2146427469, i32 -2146427444, i32 -2146427380, i32 -2146427264, i32 -2146427239, i32 -2146427214}
!804 = !DILocation(line: 105, column: 6, scope: !554)
!805 = !DILocation(line: 105, column: 14, scope: !554)
!806 = !DILocation(line: 105, column: 6, scope: !2)
!807 = !DILocation(line: 106, column: 3, scope: !553)
!808 = !DILocation(line: 106, column: 3, scope: !551)
!809 = !DILocation(line: 106, column: 3, scope: !552)
!810 = !DILocation(line: 106, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !551, file: !3, line: 106, column: 3)
!812 = !DILocation(line: 106, column: 3, scope: !550)
!813 = !DILocation(line: 106, column: 3, scope: !549)
!814 = !DILocation(line: 106, column: 3, scope: !548)
!815 = !{i32 -2146421382, i32 -2146421369, i32 -2146421344, i32 -2146421320, i32 -2146421295, i32 -2146421220, i32 -2146421195, i32 -2146421051, i32 -2146417897, i32 -2146417808, i32 -2146417687, i32 -2146417592, i32 -2146417491, i32 -2146417464, i32 -2146417381, i32 -2146417292, i32 -2146417171, i32 -2146417071, i32 -2146416965, i32 -2146416857, i32 -2146420763, i32 -2146420710, i32 -2146420679, i32 -2146420648, i32 -2146420627, i32 -2146420605, i32 -2146420556, i32 -2146420535, i32 -2146416774, i32 -2146416685, i32 -2146416564, i32 -2146416465, i32 -2146416359, i32 -2146416257, i32 -2146416224, i32 -2146416151, i32 -2146416083, i32 -2146420231, i32 -2146420172, i32 -2146420119, i32 -2146420088, i32 -2146420057, i32 -2146420036, i32 -2146420014, i32 -2146419965, i32 -2146419944, i32 -2146416023, i32 -2146415934, i32 -2146415813, i32 -2146415714, i32 -2146415608, i32 -2146415506, i32 -2146415473, i32 -2146415390, i32 -2146415301, i32 -2146415180, i32 -2146415080, i32 -2146415054, i32 -2146414951, i32 -2146414925, i32 -2146419686, i32 -2146419619, i32 -2146419594, i32 -2146419530, i32 -2146419448, i32 -2146419425, i32 -2146419400, i32 -2146419375}
!816 = !DILocation(line: 106, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 106, column: 3)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 106, column: 3)
!819 = distinct !DILexicalBlock(scope: !548, file: !3, line: 106, column: 3)
!820 = !{i32 -2146418187, i32 -2146418171}
!821 = !DILocation(line: 108, column: 2, scope: !553)
!822 = !DILocation(line: 109, column: 3, scope: !562)
!823 = !DILocation(line: 109, column: 3, scope: !560)
!824 = !DILocation(line: 109, column: 3, scope: !561)
!825 = !DILocation(line: 109, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !560, file: !3, line: 109, column: 3)
!827 = !DILocation(line: 109, column: 3, scope: !559)
!828 = !DILocation(line: 109, column: 3, scope: !558)
!829 = !DILocation(line: 109, column: 3, scope: !557)
!830 = !{i32 -2146412631, i32 -2146412618, i32 -2146412593, i32 -2146412569, i32 -2146412544, i32 -2146412469, i32 -2146412444, i32 -2146412300, i32 -2146409042, i32 -2146408953, i32 -2146408832, i32 -2146408737, i32 -2146408636, i32 -2146408609, i32 -2146408526, i32 -2146408437, i32 -2146408316, i32 -2146408216, i32 -2146408110, i32 -2146408002, i32 -2146412008, i32 -2146411955, i32 -2146411924, i32 -2146411893, i32 -2146411872, i32 -2146411850, i32 -2146411801, i32 -2146411780, i32 -2146407919, i32 -2146407830, i32 -2146407709, i32 -2146407610, i32 -2146407504, i32 -2146407402, i32 -2146407369, i32 -2146407296, i32 -2146407228, i32 -2146411473, i32 -2146411414, i32 -2146411361, i32 -2146411330, i32 -2146411299, i32 -2146411278, i32 -2146411256, i32 -2146411207, i32 -2146411186, i32 -2146407172, i32 -2146407083, i32 -2146406962, i32 -2146406863, i32 -2146406757, i32 -2146406655, i32 -2146406622, i32 -2146406539, i32 -2146406450, i32 -2146406329, i32 -2146406229, i32 -2146406203, i32 -2146406100, i32 -2146406074, i32 -2146410928, i32 -2146410861, i32 -2146410836, i32 -2146410772, i32 -2146410690, i32 -2146410667, i32 -2146410642, i32 -2146410617}
!831 = !DILocation(line: 109, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 109, column: 3)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 109, column: 3)
!834 = distinct !DILexicalBlock(scope: !557, file: !3, line: 109, column: 3)
!835 = !{i32 -2146409395, i32 -2146409379}
!836 = !DILocation(line: 111, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !562, file: !3, line: 111, column: 7)
!838 = !DILocation(line: 111, column: 7, scope: !562)
!839 = !DILocation(line: 112, column: 4, scope: !837)
!840 = !DILocation(line: 115, column: 17, scope: !2)
!841 = !DILocation(line: 115, column: 9, scope: !2)
!842 = !DILocation(line: 115, column: 2, scope: !2)
!843 = !DILocation(line: 116, column: 1, scope: !2)
!844 = distinct !DISubprogram(name: "uk_pr_debug", scope: !512, file: !512, line: 162, type: !513, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !845)
!845 = !{!846, !847}
!846 = !DILocalVariable(name: "fmt", arg: 1, scope: !844, file: !512, line: 162, type: !40)
!847 = !DILocalVariable(name: "argp", scope: !844, file: !512, line: 164, type: !518)
!848 = !DILocation(line: 162, column: 44, scope: !844)
!849 = !DILocation(line: 168, column: 1, scope: !844)
!850 = distinct !DISubprogram(name: "sys_arch_sem_wait_helper", scope: !3, file: !3, line: 76, type: !851, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!87, !538}
!853 = !{!854, !855}
!854 = !DILocalVariable(name: "s", arg: 1, scope: !850, file: !3, line: 76, type: !538)
!855 = !DILocalVariable(name: "nsret", scope: !850, file: !3, line: 77, type: !87)
!856 = !DILocation(line: 76, column: 77, scope: !850)
!857 = !DILocation(line: 77, column: 17, scope: !850)
!858 = !DILocation(line: 77, column: 9, scope: !850)
!859 = !DILocalVariable(name: "s", arg: 1, scope: !860, file: !20, line: 58, type: !695)
!860 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !20, file: !20, line: 58, type: !693, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !861)
!861 = !{!859, !862, !863, !868, !869, !870}
!862 = !DILocalVariable(name: "irqf", scope: !860, file: !20, line: 60, type: !89)
!863 = !DILocalVariable(name: "__current", scope: !864, file: !20, line: 66, type: !35)
!864 = distinct !DILexicalBlock(scope: !865, file: !20, line: 65, column: 6)
!865 = distinct !DILexicalBlock(scope: !866, file: !20, line: 64, column: 11)
!866 = distinct !DILexicalBlock(scope: !867, file: !20, line: 64, column: 2)
!867 = distinct !DILexicalBlock(scope: !860, file: !20, line: 64, column: 2)
!868 = !DILocalVariable(name: "flags", scope: !864, file: !20, line: 67, type: !89)
!869 = !DILocalVariable(name: "__cur", scope: !864, file: !20, line: 68, type: !35)
!870 = !DILocalVariable(name: "__wait", scope: !864, file: !20, line: 68, type: !29)
!871 = !DILocation(line: 58, column: 59, scope: !860, inlinedAt: !872)
!872 = distinct !DILocation(line: 78, column: 2, scope: !850)
!873 = !DILocation(line: 62, column: 2, scope: !874, inlinedAt: !872)
!874 = distinct !DILexicalBlock(scope: !875, file: !20, line: 62, column: 2)
!875 = distinct !DILexicalBlock(scope: !860, file: !20, line: 62, column: 2)
!876 = !DILocation(line: 62, column: 2, scope: !875, inlinedAt: !872)
!877 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !878)
!878 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !885)
!879 = distinct !DISubprogram(name: "uk_thread_current", scope: !37, file: !37, line: 151, type: !880, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!35}
!882 = !{!883, !884}
!883 = !DILocalVariable(name: "current", scope: !879, file: !37, line: 153, type: !52)
!884 = !DILocalVariable(name: "sp", scope: !879, file: !37, line: 154, type: !89)
!885 = distinct !DILocation(line: 68, column: 4, scope: !864, inlinedAt: !872)
!886 = !DILocation(line: 62, column: 2, scope: !887, inlinedAt: !872)
!887 = distinct !DILexicalBlock(scope: !874, file: !20, line: 62, column: 2)
!888 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !878)
!889 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !885)
!890 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !885)
!891 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !892)
!892 = distinct !DILocation(line: 49, column: 21, scope: !606, inlinedAt: !893)
!893 = distinct !DILocation(line: 68, column: 4, scope: !864, inlinedAt: !872)
!894 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !892)
!895 = !DILocation(line: 49, column: 16, scope: !606, inlinedAt: !893)
!896 = !DILocation(line: 50, column: 19, scope: !606, inlinedAt: !893)
!897 = !DILocation(line: 50, column: 11, scope: !606, inlinedAt: !893)
!898 = !DILocation(line: 50, column: 9, scope: !606, inlinedAt: !893)
!899 = !DILocation(line: 68, column: 4, scope: !864, inlinedAt: !872)
!900 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !901)
!901 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !902)
!902 = distinct !DILocation(line: 68, column: 4, scope: !864, inlinedAt: !872)
!903 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !901)
!904 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !902)
!905 = !DILocation(line: 156, column: 38, scope: !879, inlinedAt: !902)
!906 = !DILocation(line: 158, column: 9, scope: !879, inlinedAt: !902)
!907 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !902)
!908 = !DILocation(line: 69, column: 11, scope: !909, inlinedAt: !872)
!909 = distinct !DILexicalBlock(scope: !864, file: !20, line: 69, column: 8)
!910 = !DILocation(line: 69, column: 17, scope: !909, inlinedAt: !872)
!911 = !DILocation(line: 69, column: 8, scope: !864, inlinedAt: !872)
!912 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !913)
!913 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !914)
!914 = distinct !DILocation(line: 72, column: 17, scope: !915, inlinedAt: !872)
!915 = distinct !DILexicalBlock(scope: !916, file: !20, line: 71, column: 13)
!916 = distinct !DILexicalBlock(scope: !917, file: !20, line: 71, column: 4)
!917 = distinct !DILexicalBlock(scope: !864, file: !20, line: 71, column: 4)
!918 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !913)
!919 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !914)
!920 = !DILocation(line: 156, column: 38, scope: !879, inlinedAt: !914)
!921 = !DILocation(line: 156, column: 12, scope: !879, inlinedAt: !914)
!922 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !914)
!923 = !DILocation(line: 158, column: 9, scope: !879, inlinedAt: !914)
!924 = !DILocation(line: 66, column: 22, scope: !864, inlinedAt: !872)
!925 = !DILocation(line: 74, column: 13, scope: !915, inlinedAt: !872)
!926 = !DILocation(line: 67, column: 18, scope: !864, inlinedAt: !872)
!927 = !DILocalVariable(name: "wq", arg: 1, scope: !928, file: !717, line: 58, type: !720)
!928 = distinct !DISubprogram(name: "uk_waitq_add", scope: !717, file: !717, line: 58, type: !929, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !720, !29}
!931 = !{!927, !932}
!932 = !DILocalVariable(name: "entry", arg: 2, scope: !928, file: !717, line: 59, type: !29)
!933 = !DILocation(line: 58, column: 36, scope: !928, inlinedAt: !934)
!934 = distinct !DILocation(line: 75, column: 5, scope: !915, inlinedAt: !872)
!935 = !DILocation(line: 59, column: 26, scope: !928, inlinedAt: !934)
!936 = !DILocation(line: 61, column: 14, scope: !937, inlinedAt: !934)
!937 = distinct !DILexicalBlock(scope: !928, file: !717, line: 61, column: 6)
!938 = !{!736, !619, i64 0}
!939 = !DILocation(line: 61, column: 7, scope: !937, inlinedAt: !934)
!940 = !DILocation(line: 61, column: 6, scope: !928, inlinedAt: !934)
!941 = !DILocation(line: 62, column: 3, scope: !942, inlinedAt: !934)
!942 = distinct !DILexicalBlock(scope: !943, file: !717, line: 62, column: 3)
!943 = distinct !DILexicalBlock(scope: !937, file: !717, line: 61, column: 23)
!944 = !{!630, !631, i64 8}
!945 = !DILocation(line: 63, column: 18, scope: !943, inlinedAt: !934)
!946 = !DILocation(line: 64, column: 2, scope: !943, inlinedAt: !934)
!947 = !DILocalVariable(name: "thread", arg: 1, scope: !948, file: !37, line: 122, type: !35)
!948 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !37, file: !37, line: 122, type: !949, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !35, !55}
!951 = !{!947, !952}
!952 = !DILocalVariable(name: "time", arg: 2, scope: !948, file: !37, line: 122, type: !55)
!953 = !DILocation(line: 122, column: 64, scope: !948, inlinedAt: !954)
!954 = distinct !DILocation(line: 76, column: 5, scope: !915, inlinedAt: !872)
!955 = !DILocation(line: 122, column: 80, scope: !948, inlinedAt: !954)
!956 = !DILocation(line: 124, column: 10, scope: !948, inlinedAt: !954)
!957 = !DILocation(line: 124, column: 22, scope: !948, inlinedAt: !954)
!958 = !{!959, !629, i64 56}
!959 = !{!"uk_thread", !631, i64 0, !631, i64 8, !631, i64 16, !631, i64 24, !960, i64 32, !619, i64 48, !629, i64 56, !961, i64 64, !630, i64 72, !631, i64 88, !631, i64 96, !619, i64 104, !631, i64 112, !631, i64 120}
!960 = !{!"", !631, i64 0, !631, i64 8}
!961 = !{!"_Bool", !620, i64 0}
!962 = !DILocalVariable(name: "thread", arg: 1, scope: !963, file: !37, line: 183, type: !35)
!963 = distinct !DISubprogram(name: "clear_runnable", scope: !37, file: !37, line: 183, type: !964, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !35}
!966 = !{!962}
!967 = !DILocation(line: 183, column: 53, scope: !963, inlinedAt: !968)
!968 = distinct !DILocation(line: 79, column: 5, scope: !915, inlinedAt: !872)
!969 = !DILocation(line: 185, column: 10, scope: !963, inlinedAt: !968)
!970 = !DILocation(line: 185, column: 16, scope: !963, inlinedAt: !968)
!971 = !{!959, !619, i64 48}
!972 = !DILocalVariable(name: "t", arg: 1, scope: !973, file: !65, line: 151, type: !35)
!973 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !65, file: !65, line: 151, type: !964, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !974)
!974 = !{!972}
!975 = !DILocation(line: 151, column: 62, scope: !973, inlinedAt: !976)
!976 = distinct !DILocation(line: 81, column: 5, scope: !915, inlinedAt: !872)
!977 = !DILocation(line: 153, column: 2, scope: !978, inlinedAt: !976)
!978 = distinct !DILexicalBlock(scope: !979, file: !65, line: 153, column: 2)
!979 = distinct !DILexicalBlock(scope: !973, file: !65, line: 153, column: 2)
!980 = !DILocation(line: 153, column: 2, scope: !979, inlinedAt: !976)
!981 = !DILocation(line: 153, column: 2, scope: !982, inlinedAt: !976)
!982 = distinct !DILexicalBlock(scope: !978, file: !65, line: 153, column: 2)
!983 = !DILocation(line: 154, column: 6, scope: !973, inlinedAt: !976)
!984 = !{!959, !631, i64 88}
!985 = !DILocation(line: 154, column: 14, scope: !973, inlinedAt: !976)
!986 = !{!987, !631, i64 24}
!987 = !{!"uk_sched", !631, i64 0, !631, i64 8, !631, i64 16, !631, i64 24, !631, i64 32, !631, i64 40, !631, i64 48, !631, i64 56, !631, i64 64, !961, i64 72, !959, i64 80, !988, i64 208, !989, i64 224, !631, i64 248, !631, i64 256, !631, i64 264}
!988 = !{!"uk_thread_list", !631, i64 0, !631, i64 8}
!989 = !{!"ukplat_ctx_callbacks", !631, i64 0, !631, i64 8, !631, i64 16}
!990 = !DILocation(line: 154, column: 2, scope: !973, inlinedAt: !976)
!991 = !DILocation(line: 83, column: 5, scope: !915, inlinedAt: !872)
!992 = !DILocation(line: 84, column: 12, scope: !993, inlinedAt: !872)
!993 = distinct !DILexicalBlock(scope: !915, file: !20, line: 84, column: 9)
!994 = !DILocation(line: 84, column: 18, scope: !993, inlinedAt: !872)
!995 = !DILocation(line: 84, column: 9, scope: !915, inlinedAt: !872)
!996 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !997)
!997 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !998)
!998 = distinct !DILocation(line: 117, column: 30, scope: !999, inlinedAt: !1003)
!999 = distinct !DISubprogram(name: "uk_sched_yield", scope: !65, file: !65, line: 114, type: !399, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1000)
!1000 = !{!1001, !1002}
!1001 = !DILocalVariable(name: "s", scope: !999, file: !65, line: 116, type: !63)
!1002 = !DILocalVariable(name: "current", scope: !999, file: !65, line: 117, type: !35)
!1003 = distinct !DILocation(line: 86, column: 5, scope: !915, inlinedAt: !872)
!1004 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !997)
!1005 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !998)
!1006 = !DILocation(line: 156, column: 38, scope: !879, inlinedAt: !998)
!1007 = !DILocation(line: 156, column: 12, scope: !879, inlinedAt: !998)
!1008 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !998)
!1009 = !DILocation(line: 158, column: 9, scope: !879, inlinedAt: !998)
!1010 = !DILocation(line: 117, column: 20, scope: !999, inlinedAt: !1003)
!1011 = !DILocation(line: 119, column: 2, scope: !1012, inlinedAt: !1003)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !65, line: 119, column: 2)
!1013 = distinct !DILexicalBlock(scope: !999, file: !65, line: 119, column: 2)
!1014 = !DILocation(line: 119, column: 2, scope: !1013, inlinedAt: !1003)
!1015 = !DILocation(line: 119, column: 2, scope: !1016, inlinedAt: !1003)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !65, line: 119, column: 2)
!1017 = !DILocation(line: 121, column: 15, scope: !999, inlinedAt: !1003)
!1018 = !DILocation(line: 116, column: 19, scope: !999, inlinedAt: !1003)
!1019 = !DILocation(line: 122, column: 2, scope: !1020, inlinedAt: !1003)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !65, line: 122, column: 2)
!1021 = distinct !DILexicalBlock(scope: !999, file: !65, line: 122, column: 2)
!1022 = !DILocation(line: 122, column: 2, scope: !1021, inlinedAt: !1003)
!1023 = !DILocation(line: 122, column: 2, scope: !1024, inlinedAt: !1003)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !65, line: 122, column: 2)
!1025 = !DILocation(line: 123, column: 5, scope: !999, inlinedAt: !1003)
!1026 = !{!987, !631, i64 0}
!1027 = !DILocation(line: 123, column: 2, scope: !999, inlinedAt: !1003)
!1028 = !DILocation(line: 71, column: 4, scope: !916, inlinedAt: !872)
!1029 = distinct !{!1029, !1030, !1031}
!1030 = !DILocation(line: 71, column: 4, scope: !917)
!1031 = !DILocation(line: 87, column: 4, scope: !917)
!1032 = !DILocation(line: 88, column: 12, scope: !864, inlinedAt: !872)
!1033 = !DILocation(line: 90, column: 4, scope: !864, inlinedAt: !872)
!1034 = !DILocalVariable(name: "wq", arg: 1, scope: !1035, file: !717, line: 68, type: !720)
!1035 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !717, file: !717, line: 68, type: !929, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1036)
!1036 = !{!1034, !1037, !1038}
!1037 = !DILocalVariable(name: "entry", arg: 2, scope: !1035, file: !717, line: 69, type: !29)
!1038 = !DILocalVariable(name: "curelm", scope: !1039, file: !717, line: 72, type: !29)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !717, line: 72, column: 3)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !717, line: 72, column: 3)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !717, line: 72, column: 3)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !717, line: 71, column: 22)
!1043 = distinct !DILexicalBlock(scope: !1035, file: !717, line: 71, column: 6)
!1044 = !DILocation(line: 68, column: 39, scope: !1035, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 91, column: 4, scope: !864, inlinedAt: !872)
!1046 = !DILocation(line: 69, column: 26, scope: !1035, inlinedAt: !1045)
!1047 = !DILocation(line: 71, column: 13, scope: !1043, inlinedAt: !1045)
!1048 = !DILocation(line: 71, column: 6, scope: !1043, inlinedAt: !1045)
!1049 = !DILocation(line: 71, column: 6, scope: !1035, inlinedAt: !1045)
!1050 = !DILocation(line: 72, column: 3, scope: !1040, inlinedAt: !1045)
!1051 = !DILocation(line: 72, column: 3, scope: !1041, inlinedAt: !1045)
!1052 = !DILocation(line: 72, column: 3, scope: !1053, inlinedAt: !1045)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !717, line: 72, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !717, line: 72, column: 3)
!1055 = distinct !DILexicalBlock(scope: !1040, file: !717, line: 72, column: 3)
!1056 = !DILocation(line: 72, column: 3, scope: !1054, inlinedAt: !1045)
!1057 = !DILocation(line: 72, column: 3, scope: !1039, inlinedAt: !1045)
!1058 = distinct !{!1058, !1059, !1059}
!1059 = !DILocation(line: 72, column: 3, scope: !1039)
!1060 = !DILocation(line: 72, column: 3, scope: !1061, inlinedAt: !1045)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !717, line: 72, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1039, file: !717, line: 72, column: 3)
!1063 = !DILocation(line: 72, column: 3, scope: !1062, inlinedAt: !1045)
!1064 = !DILocation(line: 73, column: 18, scope: !1042, inlinedAt: !1045)
!1065 = !DILocation(line: 74, column: 2, scope: !1042, inlinedAt: !1045)
!1066 = !DILocation(line: 92, column: 4, scope: !864, inlinedAt: !872)
!1067 = !DILocation(line: 93, column: 3, scope: !865, inlinedAt: !872)
!1068 = !DILocation(line: 95, column: 10, scope: !865, inlinedAt: !872)
!1069 = !DILocation(line: 60, column: 16, scope: !860, inlinedAt: !872)
!1070 = !DILocation(line: 96, column: 10, scope: !1071, inlinedAt: !872)
!1071 = distinct !DILexicalBlock(scope: !865, file: !20, line: 96, column: 7)
!1072 = !DILocation(line: 96, column: 16, scope: !1071, inlinedAt: !872)
!1073 = !DILocation(line: 96, column: 7, scope: !865, inlinedAt: !872)
!1074 = !DILocation(line: 98, column: 3, scope: !865, inlinedAt: !872)
!1075 = !DILocation(line: 64, column: 2, scope: !866, inlinedAt: !872)
!1076 = distinct !{!1076, !1077, !1078}
!1077 = !DILocation(line: 64, column: 2, scope: !867)
!1078 = !DILocation(line: 99, column: 2, scope: !867)
!1079 = !DILocation(line: 100, column: 2, scope: !860, inlinedAt: !872)
!1080 = !DILocation(line: 104, column: 2, scope: !860, inlinedAt: !872)
!1081 = !DILocation(line: 79, column: 9, scope: !850)
!1082 = !DILocation(line: 79, column: 34, scope: !850)
!1083 = !DILocation(line: 79, column: 2, scope: !850)
!1084 = distinct !DISubprogram(name: "uk_semaphore_down_to", scope: !20, file: !20, line: 128, type: !1085, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!87, !695, !87}
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1098, !1099, !1100}
!1088 = !DILocalVariable(name: "s", arg: 1, scope: !1084, file: !20, line: 128, type: !695)
!1089 = !DILocalVariable(name: "timeout", arg: 2, scope: !1084, file: !20, line: 129, type: !87)
!1090 = !DILocalVariable(name: "irqf", scope: !1084, file: !20, line: 131, type: !89)
!1091 = !DILocalVariable(name: "then", scope: !1084, file: !20, line: 132, type: !87)
!1092 = !DILocalVariable(name: "deadline", scope: !1084, file: !20, line: 133, type: !87)
!1093 = !DILocalVariable(name: "__current", scope: !1094, file: !20, line: 141, type: !35)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !20, line: 140, column: 6)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !20, line: 139, column: 11)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !20, line: 139, column: 2)
!1097 = distinct !DILexicalBlock(scope: !1084, file: !20, line: 139, column: 2)
!1098 = !DILocalVariable(name: "flags", scope: !1094, file: !20, line: 142, type: !89)
!1099 = !DILocalVariable(name: "__cur", scope: !1094, file: !20, line: 143, type: !35)
!1100 = !DILocalVariable(name: "__wait", scope: !1094, file: !20, line: 143, type: !29)
!1101 = !DILocation(line: 128, column: 64, scope: !1084)
!1102 = !DILocation(line: 129, column: 15, scope: !1084)
!1103 = !DILocation(line: 132, column: 16, scope: !1084)
!1104 = !DILocation(line: 132, column: 9, scope: !1084)
!1105 = !DILocation(line: 135, column: 2, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !20, line: 135, column: 2)
!1107 = distinct !DILexicalBlock(scope: !1084, file: !20, line: 135, column: 2)
!1108 = !DILocation(line: 135, column: 2, scope: !1107)
!1109 = !DILocation(line: 135, column: 2, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !20, line: 135, column: 2)
!1111 = !DILocation(line: 137, column: 18, scope: !1084)
!1112 = !DILocation(line: 133, column: 9, scope: !1084)
!1113 = !DILocation(line: 139, column: 2, scope: !1084)
!1114 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 143, column: 4, scope: !1094)
!1117 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1115)
!1118 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !1116)
!1119 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !1116)
!1120 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 49, column: 21, scope: !606, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 143, column: 4, scope: !1094)
!1123 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1121)
!1124 = !DILocation(line: 49, column: 16, scope: !606, inlinedAt: !1122)
!1125 = !DILocation(line: 50, column: 19, scope: !606, inlinedAt: !1122)
!1126 = !DILocation(line: 50, column: 11, scope: !606, inlinedAt: !1122)
!1127 = !DILocation(line: 50, column: 9, scope: !606, inlinedAt: !1122)
!1128 = !DILocation(line: 143, column: 4, scope: !1094)
!1129 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 143, column: 4, scope: !1094)
!1132 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1130)
!1133 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !1131)
!1134 = !DILocation(line: 156, column: 38, scope: !879, inlinedAt: !1131)
!1135 = !DILocation(line: 158, column: 9, scope: !879, inlinedAt: !1131)
!1136 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !1131)
!1137 = !DILocation(line: 144, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1094, file: !20, line: 144, column: 8)
!1139 = !DILocation(line: 144, column: 17, scope: !1138)
!1140 = !DILocation(line: 144, column: 8, scope: !1094)
!1141 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 147, column: 17, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !20, line: 146, column: 13)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !20, line: 146, column: 4)
!1146 = distinct !DILexicalBlock(scope: !1094, file: !20, line: 146, column: 4)
!1147 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1142)
!1148 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !1143)
!1149 = !DILocation(line: 156, column: 38, scope: !879, inlinedAt: !1143)
!1150 = !DILocation(line: 156, column: 12, scope: !879, inlinedAt: !1143)
!1151 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !1143)
!1152 = !DILocation(line: 158, column: 9, scope: !879, inlinedAt: !1143)
!1153 = !DILocation(line: 141, column: 22, scope: !1094)
!1154 = !DILocation(line: 149, column: 13, scope: !1144)
!1155 = !DILocation(line: 142, column: 18, scope: !1094)
!1156 = !DILocation(line: 58, column: 36, scope: !928, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 150, column: 5, scope: !1144)
!1158 = !DILocation(line: 59, column: 26, scope: !928, inlinedAt: !1157)
!1159 = !DILocation(line: 61, column: 14, scope: !937, inlinedAt: !1157)
!1160 = !DILocation(line: 61, column: 7, scope: !937, inlinedAt: !1157)
!1161 = !DILocation(line: 61, column: 6, scope: !928, inlinedAt: !1157)
!1162 = !DILocation(line: 62, column: 3, scope: !942, inlinedAt: !1157)
!1163 = !DILocation(line: 63, column: 18, scope: !943, inlinedAt: !1157)
!1164 = !DILocation(line: 64, column: 2, scope: !943, inlinedAt: !1157)
!1165 = !DILocation(line: 122, column: 64, scope: !948, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 151, column: 5, scope: !1144)
!1167 = !DILocation(line: 122, column: 80, scope: !948, inlinedAt: !1166)
!1168 = !DILocation(line: 124, column: 10, scope: !948, inlinedAt: !1166)
!1169 = !DILocation(line: 124, column: 22, scope: !948, inlinedAt: !1166)
!1170 = !DILocation(line: 183, column: 53, scope: !963, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 154, column: 5, scope: !1144)
!1172 = !DILocation(line: 185, column: 10, scope: !963, inlinedAt: !1171)
!1173 = !DILocation(line: 185, column: 16, scope: !963, inlinedAt: !1171)
!1174 = !DILocation(line: 151, column: 62, scope: !973, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 156, column: 5, scope: !1144)
!1176 = !DILocation(line: 153, column: 2, scope: !978, inlinedAt: !1175)
!1177 = !DILocation(line: 153, column: 2, scope: !979, inlinedAt: !1175)
!1178 = !DILocation(line: 153, column: 2, scope: !982, inlinedAt: !1175)
!1179 = !DILocation(line: 154, column: 6, scope: !973, inlinedAt: !1175)
!1180 = !DILocation(line: 154, column: 14, scope: !973, inlinedAt: !1175)
!1181 = !DILocation(line: 154, column: 2, scope: !973, inlinedAt: !1175)
!1182 = !DILocation(line: 158, column: 5, scope: !1144)
!1183 = !DILocation(line: 159, column: 12, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1144, file: !20, line: 159, column: 9)
!1185 = !DILocation(line: 159, column: 18, scope: !1184)
!1186 = !DILocation(line: 159, column: 22, scope: !1184)
!1187 = !DILocation(line: 159, column: 35, scope: !1184)
!1188 = !DILocation(line: 159, column: 38, scope: !1184)
!1189 = !DILocation(line: 159, column: 63, scope: !1184)
!1190 = !DILocation(line: 159, column: 9, scope: !1144)
!1191 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 154, column: 21, scope: !879, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 117, column: 30, scope: !999, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 161, column: 5, scope: !1144)
!1195 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1192)
!1196 = !DILocation(line: 154, column: 16, scope: !879, inlinedAt: !1193)
!1197 = !DILocation(line: 156, column: 38, scope: !879, inlinedAt: !1193)
!1198 = !DILocation(line: 156, column: 12, scope: !879, inlinedAt: !1193)
!1199 = !DILocation(line: 153, column: 21, scope: !879, inlinedAt: !1193)
!1200 = !DILocation(line: 158, column: 9, scope: !879, inlinedAt: !1193)
!1201 = !DILocation(line: 117, column: 20, scope: !999, inlinedAt: !1194)
!1202 = !DILocation(line: 119, column: 2, scope: !1012, inlinedAt: !1194)
!1203 = !DILocation(line: 119, column: 2, scope: !1013, inlinedAt: !1194)
!1204 = !DILocation(line: 119, column: 2, scope: !1016, inlinedAt: !1194)
!1205 = !DILocation(line: 121, column: 15, scope: !999, inlinedAt: !1194)
!1206 = !DILocation(line: 116, column: 19, scope: !999, inlinedAt: !1194)
!1207 = !DILocation(line: 122, column: 2, scope: !1020, inlinedAt: !1194)
!1208 = !DILocation(line: 122, column: 2, scope: !1021, inlinedAt: !1194)
!1209 = !DILocation(line: 122, column: 2, scope: !1024, inlinedAt: !1194)
!1210 = !DILocation(line: 123, column: 5, scope: !999, inlinedAt: !1194)
!1211 = !DILocation(line: 123, column: 2, scope: !999, inlinedAt: !1194)
!1212 = !DILocation(line: 146, column: 4, scope: !1145)
!1213 = distinct !{!1213, !1214, !1215}
!1214 = !DILocation(line: 146, column: 4, scope: !1146)
!1215 = !DILocation(line: 162, column: 4, scope: !1146)
!1216 = !DILocation(line: 163, column: 12, scope: !1094)
!1217 = !DILocation(line: 165, column: 4, scope: !1094)
!1218 = !DILocation(line: 68, column: 39, scope: !1035, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 166, column: 4, scope: !1094)
!1220 = !DILocation(line: 69, column: 26, scope: !1035, inlinedAt: !1219)
!1221 = !DILocation(line: 71, column: 13, scope: !1043, inlinedAt: !1219)
!1222 = !DILocation(line: 71, column: 6, scope: !1043, inlinedAt: !1219)
!1223 = !DILocation(line: 71, column: 6, scope: !1035, inlinedAt: !1219)
!1224 = !DILocation(line: 72, column: 3, scope: !1040, inlinedAt: !1219)
!1225 = !DILocation(line: 72, column: 3, scope: !1041, inlinedAt: !1219)
!1226 = !DILocation(line: 72, column: 3, scope: !1053, inlinedAt: !1219)
!1227 = !DILocation(line: 72, column: 3, scope: !1054, inlinedAt: !1219)
!1228 = !DILocation(line: 72, column: 3, scope: !1039, inlinedAt: !1219)
!1229 = !DILocation(line: 72, column: 3, scope: !1061, inlinedAt: !1219)
!1230 = !DILocation(line: 72, column: 3, scope: !1062, inlinedAt: !1219)
!1231 = !DILocation(line: 73, column: 18, scope: !1042, inlinedAt: !1219)
!1232 = !DILocation(line: 74, column: 2, scope: !1042, inlinedAt: !1219)
!1233 = !DILocation(line: 167, column: 4, scope: !1094)
!1234 = !DILocation(line: 168, column: 3, scope: !1095)
!1235 = !DILocation(line: 170, column: 10, scope: !1095)
!1236 = !DILocation(line: 131, column: 16, scope: !1084)
!1237 = !DILocation(line: 171, column: 10, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1095, file: !20, line: 171, column: 7)
!1239 = !DILocation(line: 171, column: 16, scope: !1238)
!1240 = !DILocation(line: 171, column: 20, scope: !1238)
!1241 = !DILocation(line: 171, column: 33, scope: !1238)
!1242 = !DILocation(line: 172, column: 10, scope: !1238)
!1243 = !DILocation(line: 172, column: 35, scope: !1238)
!1244 = !DILocation(line: 171, column: 7, scope: !1095)
!1245 = !DILocation(line: 174, column: 3, scope: !1095)
!1246 = !DILocation(line: 139, column: 2, scope: !1096)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 139, column: 2, scope: !1097)
!1249 = !DILocation(line: 175, column: 2, scope: !1097)
!1250 = !DILocation(line: 177, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1084, file: !20, line: 177, column: 6)
!1252 = !DILocation(line: 177, column: 15, scope: !1251)
!1253 = !DILocation(line: 177, column: 6, scope: !1084)
!1254 = !DILocation(line: 178, column: 11, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !20, line: 177, column: 20)
!1256 = !DILocation(line: 183, column: 3, scope: !1255)
!1257 = !DILocation(line: 184, column: 10, scope: !1255)
!1258 = !DILocation(line: 184, column: 35, scope: !1255)
!1259 = !DILocation(line: 184, column: 3, scope: !1255)
!1260 = !DILocation(line: 187, column: 2, scope: !1084)
!1261 = !DILocation(line: 191, column: 2, scope: !1084)
!1262 = !DILocation(line: 0, scope: !1084)
!1263 = !DILocation(line: 192, column: 1, scope: !1084)
!1264 = !DILocation(line: 196, column: 2, scope: !511)
!1265 = !DILocation(line: 196, column: 10, scope: !511)
!1266 = !DILocation(line: 197, column: 2, scope: !511)
!1267 = !DILocation(line: 198, column: 2, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !512, line: 198, column: 2)
!1269 = distinct !DILexicalBlock(scope: !511, file: !512, line: 198, column: 2)
!1270 = !DILocation(line: 199, column: 2, scope: !511)
!1271 = !DILocation(line: 200, column: 1, scope: !511)
