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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_sem_new(%struct.sys_sem_t*, i8 zeroext) local_unnamed_addr #0 !dbg !568 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !587, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %4, label %11, label %5, !dbg !598

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !599, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %7, label %11, label %8, !dbg !603

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 0, !dbg !604
  %10 = zext i8 %1 to i64, !dbg !604
  tail call void @uk_semaphore_init(%struct.uk_semaphore* %9, i64 %10) #8, !dbg !604
  br label %20, !dbg !604

; <label>:11:                                     ; preds = %5, %2
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !606, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %13 = and i64 %12, -65536, !dbg !618
  %14 = or i64 %13, 4097, !dbg !618
  %15 = add nsw i64 %14, -1, !dbg !618
  %16 = inttoptr i64 %15 to i32*, !dbg !619
  %17 = load i32, i32* %16, align 4096, !dbg !620, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %18 = ptrtoint %struct.sys_sem_t* %0 to i64, !dbg !626
  %19 = zext i8 %1 to i64, !dbg !626
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_init\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %18, i64 %19, i32 %17, void (%struct.uk_semaphore*, i64)* nonnull @uk_semaphore_init) #7, !dbg !626, !srcloc !627
  br label %20

; <label>:20:                                     ; preds = %8, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %21 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !628
  store i32 1, i32* %21, align 8, !dbg !629, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  ret i8 0, !dbg !636
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i64 @ukarch_read_sp() unnamed_addr #2 !dbg !588 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !637, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  ret i64 %1, !dbg !639
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i32 @uk_thread_get_tid() unnamed_addr #2 !dbg !608 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !640, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %2 = and i64 %1, -65536, !dbg !645
  %3 = or i64 %2, 4097, !dbg !645
  %4 = add nsw i64 %3, -1, !dbg !645
  %5 = inttoptr i64 %4 to i32*, !dbg !646
  %6 = load i32, i32* %5, align 4096, !dbg !647, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  ret i32 %6, !dbg !648
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_sem_valid(%struct.sys_sem_t* nocapture readonly) local_unnamed_addr #0 !dbg !649 {
  %2 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !655
  %3 = load i32, i32* %2, align 8, !dbg !655, !tbaa !630
  %4 = icmp eq i32 %3, 1, !dbg !656
  %5 = zext i1 %4 to i32, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  ret i32 %5, !dbg !657
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_sem_set_invalid(%struct.sys_sem_t* nocapture) local_unnamed_addr #0 !dbg !658 {
  %2 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !664
  store i32 0, i32* %2, align 8, !dbg !665, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  ret void, !dbg !666
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_sem_free(%struct.sys_sem_t* nocapture) local_unnamed_addr #0 !dbg !667 {
  %2 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 1, !dbg !673
  store i32 0, i32* %2, align 8, !dbg !674, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  ret void, !dbg !676
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_sem_signal(%struct.sys_sem_t*) local_unnamed_addr #0 !dbg !677 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !687, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %3, label %27, label %4, !dbg !691

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !692, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br i1 %6, label %27, label %7, !dbg !696

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.sys_sem_t* %0, null, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br i1 %8, label %9, label %10, !dbg !712, !prof !713

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !714
  tail call void @ukplat_terminate(i32 3) #9, !dbg !714
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !717
  %12 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 0, i32 0, !dbg !719
  %13 = load i64, i64* %12, align 8, !dbg !720, !tbaa !721
  %14 = add nsw i64 %13, 1, !dbg !720
  store i64 %14, i64* %12, align 8, !dbg !720, !tbaa !721
  %15 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !735
  %16 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %0, i64 0, i32 0, i32 1, i32 0, !dbg !737
  %17 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !737, !tbaa !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %18 = icmp eq %struct.uk_waitq_entry* %17, null, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %18, label %26, label %19, !dbg !741

; <label>:19:                                     ; preds = %10, %19
  %20 = phi %struct.uk_waitq_entry* [ %22, %19 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %20, i64 0, i32 2, i32 0, !dbg !741
  %22 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %21, align 8, !dbg !741, !tbaa !743
  %23 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %20, i64 0, i32 1, !dbg !747
  %24 = load %struct.uk_thread*, %struct.uk_thread** %23, align 8, !dbg !747, !tbaa !748
  tail call void @uk_thread_wake(%struct.uk_thread* %24) #8, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  %25 = icmp eq %struct.uk_waitq_entry* %22, null, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %25, label %26, label %19, !dbg !741, !llvm.loop !750

; <label>:26:                                     ; preds = %19, %10
  tail call void @ukplat_lcpu_restore_irqf(i64 %15) #8, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #8, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %35, !dbg !757

; <label>:27:                                     ; preds = %4, %1
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !758, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %29 = and i64 %28, -65536, !dbg !764
  %30 = or i64 %29, 4097, !dbg !764
  %31 = add nsw i64 %30, -1, !dbg !764
  %32 = inttoptr i64 %31 to i32*, !dbg !765
  %33 = load i32, i32* %32, align 4096, !dbg !766, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  %34 = ptrtoint %struct.sys_sem_t* %0 to i64, !dbg !768
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_up\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %34, i32 %33, void (%struct.uk_semaphore*)* nonnull @uk_semaphore_up) #7, !dbg !768, !srcloc !769
  br label %35

; <label>:35:                                     ; preds = %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  ret void, !dbg !770
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_semaphore_up(%struct.uk_semaphore*) #2 !dbg !700 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br i1 %2, label %3, label %4, !dbg !773, !prof !713

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !774
  tail call void @ukplat_terminate(i32 3) #9, !dbg !774
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !775
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0, !dbg !777
  %7 = load i64, i64* %6, align 8, !dbg !778, !tbaa !721
  %8 = add nsw i64 %7, 1, !dbg !778
  store i64 %8, i64* %6, align 8, !dbg !778, !tbaa !721
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !782
  %10 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0, !dbg !784
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !784, !tbaa !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br i1 %12, label %20, label %13, !dbg !786

; <label>:13:                                     ; preds = %4, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !786
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !786, !tbaa !743
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !788
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !788, !tbaa !748
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #8, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br i1 %19, label %20, label %13, !dbg !786, !llvm.loop !750

; <label>:20:                                     ; preds = %13, %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #8, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #8, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret void, !dbg !793
}

; Function Attrs: noinline noredzone nounwind optnone
define dso_local i32 @sys_arch_sem_wait(%struct.sys_sem_t*, i32) local_unnamed_addr #5 !dbg !2 {
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
  store %struct.sys_sem_t* %0, %struct.sys_sem_t** %4, align 8, !tbaa !794
  store i32 %1, i32* %5, align 4, !tbaa !621
  %17 = bitcast i64* %6 to i8*, !dbg !797
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #7, !dbg !797
  %18 = bitcast %struct.uk_semaphore** %7 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #7, !dbg !799
  %19 = load %struct.sys_sem_t*, %struct.sys_sem_t** %4, align 8, !dbg !801, !tbaa !794
  %20 = getelementptr inbounds %struct.sys_sem_t, %struct.sys_sem_t* %19, i32 0, i32 0, !dbg !802
  store %struct.uk_semaphore* %20, %struct.uk_semaphore** %7, align 8, !dbg !800, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !803
  br label %21, !dbg !803

; <label>:21:                                     ; preds = %2
  %22 = call fastcc i64 @ukarch_read_sp() #10, !dbg !804
  %23 = icmp uge i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !804
  br i1 %23, label %24, label %31, !dbg !804

; <label>:24:                                     ; preds = %21
  %25 = call fastcc i64 @ukarch_read_sp() #10, !dbg !804
  %26 = icmp ule i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !805
  br i1 %26, label %27, label %31, !dbg !805

; <label>:27:                                     ; preds = %24
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @sys_arch_sem_wait.__str, i32 0, i32 0), i8** %8, align 8, !dbg !806, !tbaa !794
  %28 = load i8*, i8** %8, align 8, !dbg !806, !tbaa !794
  %29 = load %struct.sys_sem_t*, %struct.sys_sem_t** %4, align 8, !dbg !809, !tbaa !794
  %30 = load i32, i32* %5, align 4, !dbg !809, !tbaa !621
  call void (i8*, ...) @uk_pr_debug(i8* undef, %struct.sys_sem_t* %29, i32 %30) #10, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !809
  br label %51, !dbg !809

; <label>:31:                                     ; preds = %24, %21
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !810
  br label %32, !dbg !810

; <label>:32:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !811
  br label %33, !dbg !811

; <label>:33:                                     ; preds = %32
  %34 = bitcast i32* %9 to i8*, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #7, !dbg !812
  %35 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !812
  store i32 %35, i32* %9, align 4, !dbg !812, !tbaa !621
  %36 = bitcast i64* %10 to i8*, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #7, !dbg !812
  %37 = load i32, i32* %5, align 4, !dbg !812, !tbaa !621
  %38 = zext i32 %37 to i64, !dbg !812
  store i64 %38, i64* %10, align 8, !dbg !812, !tbaa !813
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @sys_arch_sem_wait.__str.1, i32 0, i32 0), i8** %11, align 8, !dbg !814, !tbaa !794
  %39 = load i8*, i8** %11, align 8, !dbg !814, !tbaa !794
  %40 = ptrtoint i8* %39 to i64, !dbg !812
  %41 = load %struct.sys_sem_t*, %struct.sys_sem_t** %4, align 8, !dbg !812, !tbaa !794
  %42 = ptrtoint %struct.sys_sem_t* %41 to i64, !dbg !812
  %43 = load i64, i64* %10, align 8, !dbg !812, !tbaa !813
  %44 = load i32, i32* %9, align 4, !dbg !812, !tbaa !621
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_debug\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %40, i64 %42, i64 %43, i32 %44, void (i8*, ...)* @uk_pr_debug) #7, !dbg !812, !srcloc !816
  %45 = bitcast i64* %10 to i8*, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #7, !dbg !811
  %46 = bitcast i32* %9 to i8*, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #7, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !812
  br label %47, !dbg !812

; <label>:47:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !812
  br label %48, !dbg !812

; <label>:48:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !811
  br label %49, !dbg !811

; <label>:49:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !811
  br label %50, !dbg !811

; <label>:50:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE
  br label %51

; <label>:51:                                     ; preds = %50, %27
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !805
  br label %52, !dbg !805

; <label>:52:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !805
  br label %53, !dbg !805

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %5, align 4, !dbg !817, !tbaa !621
  %55 = icmp eq i32 %54, 0, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !819
  br i1 %55, label %56, label %86, !dbg !819

; <label>:56:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !820
  br label %57, !dbg !820

; <label>:57:                                     ; preds = %56
  %58 = call fastcc i64 @ukarch_read_sp() #10, !dbg !821
  %59 = icmp uge i64 %58, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !821
  br i1 %59, label %60, label %66, !dbg !821

; <label>:60:                                     ; preds = %57
  %61 = call fastcc i64 @ukarch_read_sp() #10, !dbg !821
  %62 = icmp ule i64 %61, ptrtoint ([0 x i8]* @_end to i64), !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !822
  br i1 %62, label %63, label %66, !dbg !822

; <label>:63:                                     ; preds = %60
  %64 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !823, !tbaa !794
  %65 = call i64 @sys_arch_sem_wait_helper(%struct.uk_semaphore* %64) #10, !dbg !823
  store i64 %65, i64* %6, align 8, !dbg !823, !tbaa !813
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !823
  br label %83, !dbg !823

; <label>:66:                                     ; preds = %60, %57
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !825
  br label %67, !dbg !825

; <label>:67:                                     ; preds = %66
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !826
  br label %68, !dbg !826

; <label>:68:                                     ; preds = %67
  %69 = bitcast i32* %12 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %69) #7, !dbg !827
  %70 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !827
  store i32 %70, i32* %12, align 4, !dbg !827, !tbaa !621
  %71 = bitcast i64* %13 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %71) #7, !dbg !827
  %72 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !827, !tbaa !794
  %73 = ptrtoint %struct.uk_semaphore* %72 to i64, !dbg !827
  %74 = load i32, i32* %12, align 4, !dbg !827, !tbaa !621
  %75 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call sys_arch_sem_wait_helper\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %73, i32 %74, i64 (%struct.uk_semaphore*)* @sys_arch_sem_wait_helper) #7, !dbg !827, !srcloc !828
  store i64 %75, i64* %13, align 8, !dbg !827, !tbaa !813
  %76 = load i64, i64* %13, align 8, !dbg !829, !tbaa !813
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %76) #7, !dbg !829, !srcloc !833
  %77 = bitcast i64* %13 to i8*, !dbg !826
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #7, !dbg !826
  %78 = bitcast i32* %12 to i8*, !dbg !826
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #7, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !827
  br label %79, !dbg !827

; <label>:79:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !827
  br label %80, !dbg !827

; <label>:80:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !826
  br label %81, !dbg !826

; <label>:81:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !826
  br label %82, !dbg !826

; <label>:82:                                     ; preds = %81
  store volatile i32 42, i32* @__A_VARIABLE
  br label %83

; <label>:83:                                     ; preds = %82, %63
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !822
  br label %84, !dbg !822

; <label>:84:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !822
  br label %85, !dbg !822

; <label>:85:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !834
  br label %131, !dbg !834

; <label>:86:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !835
  br label %87, !dbg !835

; <label>:87:                                     ; preds = %86
  %88 = call fastcc i64 @ukarch_read_sp() #10, !dbg !836
  %89 = icmp uge i64 %88, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !836
  br i1 %89, label %90, label %99, !dbg !836

; <label>:90:                                     ; preds = %87
  %91 = call fastcc i64 @ukarch_read_sp() #10, !dbg !836
  %92 = icmp ule i64 %91, ptrtoint ([0 x i8]* @_end to i64), !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !837
  br i1 %92, label %93, label %99, !dbg !837

; <label>:93:                                     ; preds = %90
  %94 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !838, !tbaa !794
  %95 = load i32, i32* %5, align 4, !dbg !838, !tbaa !621
  %96 = zext i32 %95 to i64, !dbg !838
  %97 = mul i64 %96, 1000000, !dbg !838
  %98 = call i64 @uk_semaphore_down_to(%struct.uk_semaphore* %94, i64 %97) #10, !dbg !838
  store i64 %98, i64* %6, align 8, !dbg !838, !tbaa !813
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !838
  br label %119, !dbg !838

; <label>:99:                                     ; preds = %90, %87
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !840
  br label %100, !dbg !840

; <label>:100:                                    ; preds = %99
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !841
  br label %101, !dbg !841

; <label>:101:                                    ; preds = %100
  %102 = bitcast i32* %14 to i8*, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %102) #7, !dbg !842
  %103 = call fastcc i32 @uk_thread_get_tid() #10, !dbg !842
  store i32 %103, i32* %14, align 4, !dbg !842, !tbaa !621
  %104 = bitcast i64* %15 to i8*, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %104) #7, !dbg !842
  %105 = load %struct.uk_semaphore*, %struct.uk_semaphore** %7, align 8, !dbg !842, !tbaa !794
  %106 = ptrtoint %struct.uk_semaphore* %105 to i64, !dbg !842
  %107 = load i32, i32* %5, align 4, !dbg !842, !tbaa !621
  %108 = zext i32 %107 to i64, !dbg !842
  %109 = mul i64 %108, 1000000, !dbg !842
  %110 = load i32, i32* %14, align 4, !dbg !842, !tbaa !621
  %111 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_semaphore_down_to\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* @tsb_comp1, [32 x %struct.uk_thread_status_block]* @tsb_comp0, i64 1073741811, i64 1073741820, i64 %106, i64 %109, i32 %110, i64 (%struct.uk_semaphore*, i64)* @uk_semaphore_down_to) #7, !dbg !842, !srcloc !843
  store i64 %111, i64* %15, align 8, !dbg !842, !tbaa !813
  %112 = load i64, i64* %15, align 8, !dbg !844, !tbaa !813
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %112) #7, !dbg !844, !srcloc !848
  %113 = bitcast i64* %15 to i8*, !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113) #7, !dbg !841
  %114 = bitcast i32* %14 to i8*, !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #7, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !842
  br label %115, !dbg !842

; <label>:115:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !842
  br label %116, !dbg !842

; <label>:116:                                    ; preds = %115
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !841
  br label %117, !dbg !841

; <label>:117:                                    ; preds = %116
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !841
  br label %118, !dbg !841

; <label>:118:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE
  br label %119

; <label>:119:                                    ; preds = %118, %93
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !837
  br label %120, !dbg !837

; <label>:120:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !837
  br label %121, !dbg !837

; <label>:121:                                    ; preds = %120
  %122 = load i64, i64* %6, align 8, !dbg !849, !tbaa !813
  %123 = icmp eq i64 %122, -1, !dbg !849
  %124 = xor i1 %123, true, !dbg !849
  %125 = xor i1 %124, true, !dbg !849
  %126 = zext i1 %125 to i32, !dbg !849
  %127 = sext i32 %126 to i64, !dbg !849
  %128 = icmp ne i64 %127, 0, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !851
  br i1 %128, label %129, label %130, !dbg !851, !prof !713

; <label>:129:                                    ; preds = %121
  store i32 -1, i32* %3, align 4, !dbg !852
  store i32 1, i32* %16, align 4
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !852
  br label %135, !dbg !852

; <label>:130:                                    ; preds = %121
  store volatile i32 42, i32* @__A_VARIABLE
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i64, i64* %6, align 8, !dbg !853, !tbaa !813
  %133 = udiv i64 %132, 1000000, !dbg !853
  %134 = trunc i64 %133 to i32, !dbg !854
  store i32 %134, i32* %3, align 4, !dbg !855
  store i32 1, i32* %16, align 4
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !855
  br label %135, !dbg !855

; <label>:135:                                    ; preds = %131, %129
  %136 = bitcast %struct.uk_semaphore** %7 to i8*, !dbg !856
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %136) #7, !dbg !856
  %137 = bitcast i64* %6 to i8*, !dbg !856
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %137) #7, !dbg !856
  %138 = load i32, i32* %3, align 4, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, !dbg !856
  ret i32 %138, !dbg !856
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) #2 !dbg !857 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !862
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !862
  call void @llvm.va_start(i8* nonnull %3), !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  call void @llvm.va_end(i8* nonnull %3), !dbg !876
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  ret void, !dbg !877
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @sys_arch_sem_wait_helper(%struct.uk_semaphore*) #2 !dbg !878 {
  %2 = tail call i64 @ukplat_monotonic_clock() #8, !dbg !885
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  br i1 %3, label %8, label %4, !dbg !904, !prof !713

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %9, !dbg !905

; <label>:8:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !914
  tail call void @ukplat_terminate(i32 3) #9, !dbg !914
  unreachable

; <label>:9:                                      ; preds = %105, %4
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !905, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !921, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  %12 = and i64 %11, -65536, !dbg !927
  %13 = or i64 %12, 4097, !dbg !927
  %14 = add nsw i64 %13, -1, !dbg !927
  %15 = inttoptr i64 %14 to i32*, !dbg !928
  %16 = load i32, i32* %15, align 4096, !dbg !929, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  %17 = sext i32 %16 to i64, !dbg !931
  %18 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %17, !dbg !931
  %19 = bitcast %struct.uk_waitq_entry* %18 to i8*, !dbg !931
  %20 = tail call i8* @memset(i8* nonnull %19, i32 0, i64 24) #8, !dbg !931
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !932, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %22 = and i64 %21, -65536, !dbg !938
  %23 = inttoptr i64 %22 to i64*, !dbg !939
  %24 = load i64, i64* %23, align 65536, !dbg !939, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  %25 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %17, i32 1, !dbg !931
  %26 = bitcast %struct.uk_thread** %25 to i64*, !dbg !931
  store i64 %24, i64* %26, align 8, !dbg !931, !tbaa !748
  %27 = load i64, i64* %5, align 8, !dbg !942, !tbaa !721
  %28 = icmp sgt i64 %27, 0, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br i1 %28, label %101, label %29, !dbg !945

; <label>:29:                                     ; preds = %9
  %30 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 0
  %31 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %17, i32 2, i32 0
  br label %32, !dbg !946

; <label>:32:                                     ; preds = %68, %29
  %33 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !946, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  %34 = and i64 %33, -65536, !dbg !955
  %35 = inttoptr i64 %34 to %struct.uk_thread**, !dbg !956
  %36 = load %struct.uk_thread*, %struct.uk_thread** %35, align 65536, !dbg !958, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %37 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !961
  %38 = load i32, i32* %30, align 8, !dbg !972, !tbaa !974
  %39 = icmp eq i32 %38, 0, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br i1 %39, label %40, label %42, !dbg !976

; <label>:40:                                     ; preds = %32
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %31, align 8, !dbg !977, !tbaa !743
  %41 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %6, align 8, !dbg !977, !tbaa !980
  store %struct.uk_waitq_entry* %18, %struct.uk_waitq_entry** %41, align 8, !dbg !977, !tbaa !794
  store %struct.uk_waitq_entry** %31, %struct.uk_waitq_entry*** %6, align 8, !dbg !977, !tbaa !980
  store i32 1, i32* %30, align 8, !dbg !981, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br label %42, !dbg !982

; <label>:42:                                     ; preds = %40, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %36, i64 0, i32 6, !dbg !993
  store i64 0, i64* %43, align 8, !dbg !994, !tbaa !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  %44 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %36, i64 0, i32 5, !dbg !1007
  %45 = load i32, i32* %44, align 8, !dbg !1008, !tbaa !1009
  %46 = and i32 %45, -2, !dbg !1008
  store i32 %46, i32* %44, align 8, !dbg !1008, !tbaa !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  %47 = icmp eq %struct.uk_thread* %36, null, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %47, label %48, label %49, !dbg !1019, !prof !713

; <label>:48:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1020
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1020
  unreachable

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %36, i64 0, i32 9, !dbg !1022
  %51 = load %struct.uk_sched*, %struct.uk_sched** %50, align 8, !dbg !1022, !tbaa !1023
  %52 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %51, i64 0, i32 3, !dbg !1024
  %53 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %52, align 8, !dbg !1024, !tbaa !1025
  tail call void %53(%struct.uk_sched* %51, %struct.uk_thread* nonnull %36) #8, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  tail call void @ukplat_lcpu_restore_irqf(i64 %37) #8, !dbg !1031
  %54 = load i64, i64* %5, align 8, !dbg !1032, !tbaa !721
  %55 = icmp sgt i64 %54, 0, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %55, label %71, label %56, !dbg !1035

; <label>:56:                                     ; preds = %49
  %57 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1036, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  %58 = and i64 %57, -65536, !dbg !1047
  %59 = inttoptr i64 %58 to %struct.uk_thread**, !dbg !1048
  %60 = load %struct.uk_thread*, %struct.uk_thread** %59, align 65536, !dbg !1050, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  %61 = icmp eq %struct.uk_thread* %60, null, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br i1 %61, label %62, label %63, !dbg !1056, !prof !713

; <label>:62:                                     ; preds = %56
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1057
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1057
  unreachable

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %60, i64 0, i32 9, !dbg !1059
  %65 = load %struct.uk_sched*, %struct.uk_sched** %64, align 8, !dbg !1059, !tbaa !1023
  %66 = icmp eq %struct.uk_sched* %65, null, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  br i1 %66, label %67, label %68, !dbg !1064, !prof !713

; <label>:67:                                     ; preds = %63
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1065
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1065
  unreachable

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %65, i64 0, i32 0, !dbg !1067
  %70 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %69, align 8, !dbg !1067, !tbaa !1068
  tail call void %70(%struct.uk_sched* nonnull %65) #8, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br label %32, !dbg !1071, !llvm.loop !1072

; <label>:71:                                     ; preds = %49
  %72 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1075
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %36) #8, !dbg !1076
  %73 = load i32, i32* %30, align 8, !dbg !1090, !tbaa !974
  %74 = icmp eq i32 %73, 0, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %74, label %100, label %75, !dbg !1092

; <label>:75:                                     ; preds = %71
  %76 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %7, align 8, !dbg !1093, !tbaa !739
  %77 = icmp eq %struct.uk_waitq_entry* %76, %18, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  br i1 %77, label %78, label %82, !dbg !1094

; <label>:78:                                     ; preds = %75
  %79 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %31, align 8, !dbg !1095, !tbaa !743
  store %struct.uk_waitq_entry* %79, %struct.uk_waitq_entry** %7, align 8, !dbg !1095, !tbaa !739
  %80 = icmp eq %struct.uk_waitq_entry* %79, null, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br i1 %80, label %81, label %99, !dbg !1099

; <label>:81:                                     ; preds = %78
  store %struct.uk_waitq_entry** %7, %struct.uk_waitq_entry*** %6, align 8, !dbg !1095, !tbaa !980
  br label %98, !dbg !1095

; <label>:82:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  %83 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %76, i64 0, i32 2, i32 0, !dbg !1100
  %84 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %83, align 8, !dbg !1100, !tbaa !743
  %85 = icmp eq %struct.uk_waitq_entry* %84, %18, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %85, label %93, label %86, !dbg !1100

; <label>:86:                                     ; preds = %82, %86
  %87 = phi %struct.uk_waitq_entry* [ %89, %86 ], [ %84, %82 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  %88 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %87, i64 0, i32 2, i32 0, !dbg !1100
  %89 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %88, align 8, !dbg !1100, !tbaa !743
  %90 = icmp eq %struct.uk_waitq_entry* %89, %18, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %90, label %91, label %86, !dbg !1100, !llvm.loop !1101

; <label>:91:                                     ; preds = %86
  %92 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %87, i64 0, i32 2, i32 0, !dbg !1100
  br label %93, !dbg !1103

; <label>:93:                                     ; preds = %91, %82
  %94 = phi %struct.uk_waitq_entry** [ %83, %82 ], [ %92, %91 ], !dbg !1100
  %95 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %31, align 8, !dbg !1103, !tbaa !743
  store %struct.uk_waitq_entry* %95, %struct.uk_waitq_entry** %94, align 8, !dbg !1103, !tbaa !743
  %96 = icmp eq %struct.uk_waitq_entry* %95, null, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %96, label %97, label %98, !dbg !1106

; <label>:97:                                     ; preds = %93
  store %struct.uk_waitq_entry** %94, %struct.uk_waitq_entry*** %6, align 8, !dbg !1103, !tbaa !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br label %98, !dbg !1103

; <label>:98:                                     ; preds = %93, %97, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %99, !dbg !1107

; <label>:99:                                     ; preds = %98, %78
  store i32 0, i32* %30, align 8, !dbg !1107, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br label %100, !dbg !1108

; <label>:100:                                    ; preds = %99, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  tail call void @ukplat_lcpu_restore_irqf(i64 %72) #8, !dbg !1110
  br label %101, !dbg !1111

; <label>:101:                                    ; preds = %9, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  %102 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1113
  %103 = load i64, i64* %5, align 8, !dbg !1115, !tbaa !721
  %104 = icmp sgt i64 %103, 0, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %104, label %106, label %105, !dbg !1118

; <label>:105:                                    ; preds = %101
  tail call void @ukplat_lcpu_restore_irqf(i64 %102) #8, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br label %9, !dbg !1120, !llvm.loop !1121

; <label>:106:                                    ; preds = %101
  %107 = add nsw i64 %103, -1, !dbg !1124
  store i64 %107, i64* %5, align 8, !dbg !1124, !tbaa !721
  tail call void @ukplat_lcpu_restore_irqf(i64 %102) #8, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  %108 = tail call i64 @ukplat_monotonic_clock() #8, !dbg !1127
  %109 = sub i64 %108, %2, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  ret i64 %109, !dbg !1129
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @uk_semaphore_down_to(%struct.uk_semaphore*, i64) #2 !dbg !1130 {
  %3 = tail call i64 @ukplat_monotonic_clock() #8, !dbg !1149
  %4 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %4, label %5, label %6, !dbg !1154, !prof !713

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1155
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1155
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = add i64 %3, %1, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  %8 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %10 = icmp eq i64 %7, 0
  %11 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %12, !dbg !1159

; <label>:12:                                     ; preds = %116, %6
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1160, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1168, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %15 = and i64 %14, -65536, !dbg !1174
  %16 = or i64 %15, 4097, !dbg !1174
  %17 = add nsw i64 %16, -1, !dbg !1174
  %18 = inttoptr i64 %17 to i32*, !dbg !1175
  %19 = load i32, i32* %18, align 4096, !dbg !1176, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  %20 = sext i32 %19 to i64, !dbg !1178
  %21 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %20, !dbg !1178
  %22 = bitcast %struct.uk_waitq_entry* %21 to i8*, !dbg !1178
  %23 = tail call i8* @memset(i8* nonnull %22, i32 0, i64 24) #8, !dbg !1178
  %24 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1179, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  %25 = and i64 %24, -65536, !dbg !1185
  %26 = inttoptr i64 %25 to i64*, !dbg !1186
  %27 = load i64, i64* %26, align 65536, !dbg !1186, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  %28 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %20, i32 1, !dbg !1178
  %29 = bitcast %struct.uk_thread** %28 to i64*, !dbg !1178
  store i64 %27, i64* %29, align 8, !dbg !1178, !tbaa !748
  %30 = load i64, i64* %8, align 8, !dbg !1189, !tbaa !721
  %31 = icmp sgt i64 %30, 0, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  br i1 %31, label %108, label %32, !dbg !1192

; <label>:32:                                     ; preds = %12
  %33 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %21, i64 0, i32 0
  %34 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %20, i32 2, i32 0
  br label %35, !dbg !1193

; <label>:35:                                     ; preds = %32, %75
  %36 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1193, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  %37 = and i64 %36, -65536, !dbg !1202
  %38 = inttoptr i64 %37 to %struct.uk_thread**, !dbg !1203
  %39 = load %struct.uk_thread*, %struct.uk_thread** %38, align 65536, !dbg !1205, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  %40 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1208
  %41 = load i32, i32* %33, align 8, !dbg !1213, !tbaa !974
  %42 = icmp eq i32 %41, 0, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %42, label %43, label %45, !dbg !1215

; <label>:43:                                     ; preds = %35
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %34, align 8, !dbg !1216, !tbaa !743
  %44 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %9, align 8, !dbg !1216, !tbaa !980
  store %struct.uk_waitq_entry* %21, %struct.uk_waitq_entry** %44, align 8, !dbg !1216, !tbaa !794
  store %struct.uk_waitq_entry** %34, %struct.uk_waitq_entry*** %9, align 8, !dbg !1216, !tbaa !980
  store i32 1, i32* %33, align 8, !dbg !1217, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br label %45, !dbg !1218

; <label>:45:                                     ; preds = %35, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  %46 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 6, !dbg !1223
  store i64 %7, i64* %46, align 8, !dbg !1224, !tbaa !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  %47 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 5, !dbg !1228
  %48 = load i32, i32* %47, align 8, !dbg !1229, !tbaa !1009
  %49 = and i32 %48, -2, !dbg !1229
  store i32 %49, i32* %47, align 8, !dbg !1229, !tbaa !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %50 = icmp eq %struct.uk_thread* %39, null, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %50, label %51, label %52, !dbg !1234, !prof !713

; <label>:51:                                     ; preds = %45
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1235
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1235
  unreachable

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 9, !dbg !1236
  %54 = load %struct.uk_sched*, %struct.uk_sched** %53, align 8, !dbg !1236, !tbaa !1023
  %55 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %54, i64 0, i32 3, !dbg !1237
  %56 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %55, align 8, !dbg !1237, !tbaa !1025
  tail call void %56(%struct.uk_sched* %54, %struct.uk_thread* nonnull %39) #8, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  tail call void @ukplat_lcpu_restore_irqf(i64 %40) #8, !dbg !1240
  %57 = load i64, i64* %8, align 8, !dbg !1241, !tbaa !721
  %58 = icmp sgt i64 %57, 0, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %58, label %78, label %59, !dbg !1244

; <label>:59:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  br i1 %10, label %63, label %60, !dbg !1245

; <label>:60:                                     ; preds = %59
  %61 = tail call i64 @ukplat_monotonic_clock() #8, !dbg !1246
  %62 = icmp ult i64 %61, %7, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %62, label %63, label %78, !dbg !1248

; <label>:63:                                     ; preds = %60, %59
  %64 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1249, !srcloc !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  %65 = and i64 %64, -65536, !dbg !1256
  %66 = inttoptr i64 %65 to %struct.uk_thread**, !dbg !1257
  %67 = load %struct.uk_thread*, %struct.uk_thread** %66, align 65536, !dbg !1259, !tbaa !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  %68 = icmp eq %struct.uk_thread* %67, null, !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br i1 %68, label %69, label %70, !dbg !1263, !prof !713

; <label>:69:                                     ; preds = %63
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1264
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1264
  unreachable

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %67, i64 0, i32 9, !dbg !1265
  %72 = load %struct.uk_sched*, %struct.uk_sched** %71, align 8, !dbg !1265, !tbaa !1023
  %73 = icmp eq %struct.uk_sched* %72, null, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %73, label %74, label %75, !dbg !1268, !prof !713

; <label>:74:                                     ; preds = %70
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1269
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1269
  unreachable

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %72, i64 0, i32 0, !dbg !1270
  %77 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %76, align 8, !dbg !1270, !tbaa !1068
  tail call void %77(%struct.uk_sched* nonnull %72) #8, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  br label %35, !dbg !1273, !llvm.loop !1274

; <label>:78:                                     ; preds = %60, %52
  %79 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1277
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %39) #8, !dbg !1278
  %80 = load i32, i32* %33, align 8, !dbg !1282, !tbaa !974
  %81 = icmp eq i32 %80, 0, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br i1 %81, label %107, label %82, !dbg !1284

; <label>:82:                                     ; preds = %78
  %83 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %11, align 8, !dbg !1285, !tbaa !739
  %84 = icmp eq %struct.uk_waitq_entry* %83, %21, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  br i1 %84, label %85, label %89, !dbg !1286

; <label>:85:                                     ; preds = %82
  %86 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %34, align 8, !dbg !1287, !tbaa !743
  store %struct.uk_waitq_entry* %86, %struct.uk_waitq_entry** %11, align 8, !dbg !1287, !tbaa !739
  %87 = icmp eq %struct.uk_waitq_entry* %86, null, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br i1 %87, label %88, label %106, !dbg !1288

; <label>:88:                                     ; preds = %85
  store %struct.uk_waitq_entry** %11, %struct.uk_waitq_entry*** %9, align 8, !dbg !1287, !tbaa !980
  br label %105, !dbg !1287

; <label>:89:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  %90 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %83, i64 0, i32 2, i32 0, !dbg !1289
  %91 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %90, align 8, !dbg !1289, !tbaa !743
  %92 = icmp eq %struct.uk_waitq_entry* %91, %21, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %92, label %100, label %93, !dbg !1289

; <label>:93:                                     ; preds = %89, %93
  %94 = phi %struct.uk_waitq_entry* [ %96, %93 ], [ %91, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  %95 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %94, i64 0, i32 2, i32 0, !dbg !1289
  %96 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %95, align 8, !dbg !1289, !tbaa !743
  %97 = icmp eq %struct.uk_waitq_entry* %96, %21, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %97, label %98, label %93, !dbg !1289, !llvm.loop !1101

; <label>:98:                                     ; preds = %93
  %99 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %94, i64 0, i32 2, i32 0, !dbg !1289
  br label %100, !dbg !1290

; <label>:100:                                    ; preds = %98, %89
  %101 = phi %struct.uk_waitq_entry** [ %90, %89 ], [ %99, %98 ], !dbg !1289
  %102 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %34, align 8, !dbg !1290, !tbaa !743
  store %struct.uk_waitq_entry* %102, %struct.uk_waitq_entry** %101, align 8, !dbg !1290, !tbaa !743
  %103 = icmp eq %struct.uk_waitq_entry* %102, null, !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br i1 %103, label %104, label %105, !dbg !1291

; <label>:104:                                    ; preds = %100
  store %struct.uk_waitq_entry** %101, %struct.uk_waitq_entry*** %9, align 8, !dbg !1290, !tbaa !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br label %105, !dbg !1290

; <label>:105:                                    ; preds = %100, %104, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %106, !dbg !1292

; <label>:106:                                    ; preds = %105, %85
  store i32 0, i32* %33, align 8, !dbg !1292, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br label %107, !dbg !1293

; <label>:107:                                    ; preds = %78, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  tail call void @ukplat_lcpu_restore_irqf(i64 %79) #8, !dbg !1295
  br label %108, !dbg !1296

; <label>:108:                                    ; preds = %12, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  %109 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1298
  %110 = load i64, i64* %8, align 8, !dbg !1300, !tbaa !721
  %111 = icmp sgt i64 %110, 0, !dbg !1302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br i1 %111, label %120, label %112, !dbg !1303

; <label>:112:                                    ; preds = %108
  br i1 %10, label %116, label %113, !dbg !1305

; <label>:113:                                    ; preds = %112
  %114 = tail call i64 @ukplat_monotonic_clock() #8, !dbg !1306
  %115 = icmp ult i64 %114, %7, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %115, label %116, label %117, !dbg !1308

; <label>:116:                                    ; preds = %113, %112
  tail call void @ukplat_lcpu_restore_irqf(i64 %109) #8, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br label %12, !dbg !1310, !llvm.loop !1311

; <label>:117:                                    ; preds = %113
  %118 = load i64, i64* %8, align 8, !dbg !1314, !tbaa !721
  %119 = icmp sgt i64 %118, 0, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %119, label %120, label %125, !dbg !1317

; <label>:120:                                    ; preds = %108, %117
  %121 = phi i64 [ %118, %117 ], [ %110, %108 ]
  %122 = add nsw i64 %121, -1, !dbg !1318
  store i64 %122, i64* %8, align 8, !dbg !1318, !tbaa !721
  tail call void @ukplat_lcpu_restore_irqf(i64 %109) #8, !dbg !1320
  %123 = tail call i64 @ukplat_monotonic_clock() #8, !dbg !1321
  %124 = sub i64 %123, %3, !dbg !1322
  br label %126, !dbg !1323

; <label>:125:                                    ; preds = %117
  tail call void @ukplat_lcpu_restore_irqf(i64 %109) #8, !dbg !1324
  br label %126, !dbg !1325

; <label>:126:                                    ; preds = %125, %120
  %127 = phi i64 [ %124, %120 ], [ -1, %125 ], !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  ret i64 %127, !dbg !1328
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #2 !dbg !511 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1329
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1329
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1331
  call void @llvm.va_start(i8* nonnull %3), !dbg !1331
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #8, !dbg !1332
  call void @llvm.va_end(i8* nonnull %3), !dbg !1335
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  ret void, !dbg !1336
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

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
attributes #5 = { noinline noredzone nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone }

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
!597 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !594)
!598 = !DILocation(line: 47, column: 2, scope: !583)
!599 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !600)
!600 = distinct !DILocation(line: 47, column: 2, scope: !583)
!601 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !600)
!602 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !600)
!603 = !DILocation(line: 47, column: 2, scope: !584)
!604 = !DILocation(line: 47, column: 2, scope: !605)
!605 = distinct !DILexicalBlock(scope: !583, file: !3, line: 47, column: 2)
!606 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !607)
!607 = distinct !DILocation(line: 49, column: 21, scope: !608, inlinedAt: !614)
!608 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !609, file: !609, line: 47, type: !610, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !612)
!609 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!610 = !DISubroutineType(types: !611)
!611 = !{!33}
!612 = !{!613}
!613 = !DILocalVariable(name: "sp", scope: !608, file: !609, line: 49, type: !89)
!614 = distinct !DILocation(line: 47, column: 2, scope: !580)
!615 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !607)
!616 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !607)
!617 = !DILocation(line: 49, column: 16, scope: !608, inlinedAt: !614)
!618 = !DILocation(line: 50, column: 19, scope: !608, inlinedAt: !614)
!619 = !DILocation(line: 50, column: 11, scope: !608, inlinedAt: !614)
!620 = !DILocation(line: 50, column: 9, scope: !608, inlinedAt: !614)
!621 = !{!622, !622, i64 0}
!622 = !{!"int", !623, i64 0}
!623 = !{!"omnipotent char", !624, i64 0}
!624 = !{!"Simple C/C++ TBAA"}
!625 = !DILocation(line: 50, column: 2, scope: !608, inlinedAt: !614)
!626 = !DILocation(line: 47, column: 2, scope: !580)
!627 = !{i32 -2146445126, i32 -2146445113, i32 -2146445088, i32 -2146445064, i32 -2146445039, i32 -2146444964, i32 -2146444939, i32 -2146444795, i32 -2146442539, i32 -2146442450, i32 -2146442329, i32 -2146442234, i32 -2146442133, i32 -2146442106, i32 -2146442023, i32 -2146441934, i32 -2146441813, i32 -2146441713, i32 -2146441607, i32 -2146441499, i32 -2146444503, i32 -2146444450, i32 -2146444419, i32 -2146444388, i32 -2146444367, i32 -2146444345, i32 -2146444296, i32 -2146444275, i32 -2146441416, i32 -2146441327, i32 -2146441206, i32 -2146441107, i32 -2146441001, i32 -2146440899, i32 -2146440866, i32 -2146440793, i32 -2146440725, i32 -2146443898, i32 -2146443845, i32 -2146443814, i32 -2146443783, i32 -2146443762, i32 -2146443740, i32 -2146443691, i32 -2146443670, i32 -2146440672, i32 -2146440583, i32 -2146440462, i32 -2146440363, i32 -2146440257, i32 -2146440155, i32 -2146440122, i32 -2146440039, i32 -2146439950, i32 -2146439829, i32 -2146439729, i32 -2146439703, i32 -2146439600, i32 -2146439574, i32 -2146443412, i32 -2146443345, i32 -2146443320, i32 -2146443256, i32 -2146443140, i32 -2146443115, i32 -2146443090}
!628 = !DILocation(line: 48, column: 7, scope: !568)
!629 = !DILocation(line: 48, column: 13, scope: !568)
!630 = !{!631, !622, i64 24}
!631 = !{!"", !632, i64 0, !622, i64 24}
!632 = !{!"uk_semaphore", !633, i64 0, !634, i64 8}
!633 = !{!"long", !623, i64 0}
!634 = !{!"uk_waitq", !635, i64 0, !635, i64 8}
!635 = !{!"any pointer", !623, i64 0}
!636 = !DILocation(line: 49, column: 2, scope: !568)
!637 = !DILocation(line: 120, column: 2, scope: !588)
!638 = !DILocation(line: 118, column: 16, scope: !588)
!639 = !DILocation(line: 121, column: 2, scope: !588)
!640 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !641)
!641 = distinct !DILocation(line: 49, column: 21, scope: !608)
!642 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !641)
!643 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !641)
!644 = !DILocation(line: 49, column: 16, scope: !608)
!645 = !DILocation(line: 50, column: 19, scope: !608)
!646 = !DILocation(line: 50, column: 11, scope: !608)
!647 = !DILocation(line: 50, column: 9, scope: !608)
!648 = !DILocation(line: 50, column: 2, scope: !608)
!649 = distinct !DISubprogram(name: "sys_sem_valid", scope: !3, file: !3, line: 52, type: !650, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!33, !13}
!652 = !{!653}
!653 = !DILocalVariable(name: "sem", arg: 1, scope: !649, file: !3, line: 52, type: !13)
!654 = !DILocation(line: 52, column: 30, scope: !649)
!655 = !DILocation(line: 54, column: 15, scope: !649)
!656 = !DILocation(line: 54, column: 21, scope: !649)
!657 = !DILocation(line: 54, column: 2, scope: !649)
!658 = distinct !DISubprogram(name: "sys_sem_set_invalid", scope: !3, file: !3, line: 57, type: !659, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !13}
!661 = !{!662}
!662 = !DILocalVariable(name: "sem", arg: 1, scope: !658, file: !3, line: 57, type: !13)
!663 = !DILocation(line: 57, column: 37, scope: !658)
!664 = !DILocation(line: 59, column: 7, scope: !658)
!665 = !DILocation(line: 59, column: 13, scope: !658)
!666 = !DILocation(line: 60, column: 1, scope: !658)
!667 = distinct !DISubprogram(name: "sys_sem_free", scope: !3, file: !3, line: 62, type: !659, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !668)
!668 = !{!669}
!669 = !DILocalVariable(name: "sem", arg: 1, scope: !667, file: !3, line: 62, type: !13)
!670 = !DILocation(line: 62, column: 30, scope: !667)
!671 = !DILocation(line: 57, column: 37, scope: !658, inlinedAt: !672)
!672 = distinct !DILocation(line: 64, column: 2, scope: !667)
!673 = !DILocation(line: 59, column: 7, scope: !658, inlinedAt: !672)
!674 = !DILocation(line: 59, column: 13, scope: !658, inlinedAt: !672)
!675 = !DILocation(line: 60, column: 1, scope: !658, inlinedAt: !672)
!676 = !DILocation(line: 65, column: 1, scope: !667)
!677 = distinct !DISubprogram(name: "sys_sem_signal", scope: !3, file: !3, line: 68, type: !659, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !678)
!678 = !{!679, !680}
!679 = !DILocalVariable(name: "sem", arg: 1, scope: !677, file: !3, line: 68, type: !13)
!680 = !DILocalVariable(name: "tid", scope: !681, file: !3, line: 70, type: !8)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 70, column: 2)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 70, column: 2)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 70, column: 2)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 70, column: 2)
!685 = distinct !DILexicalBlock(scope: !677, file: !3, line: 70, column: 2)
!686 = !DILocation(line: 68, column: 32, scope: !677)
!687 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !688)
!688 = distinct !DILocation(line: 70, column: 2, scope: !684)
!689 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !688)
!690 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !688)
!691 = !DILocation(line: 70, column: 2, scope: !684)
!692 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !693)
!693 = distinct !DILocation(line: 70, column: 2, scope: !684)
!694 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !693)
!695 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !693)
!696 = !DILocation(line: 70, column: 2, scope: !685)
!697 = !DILocation(line: 198, column: 2, scope: !698, inlinedAt: !710)
!698 = distinct !DILexicalBlock(scope: !699, file: !20, line: 198, column: 2)
!699 = distinct !DILexicalBlock(scope: !700, file: !20, line: 198, column: 2)
!700 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !20, file: !20, line: 194, type: !701, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(name: "s", arg: 1, scope: !700, file: !20, line: 194, type: !703)
!706 = !DILocalVariable(name: "irqf", scope: !700, file: !20, line: 196, type: !89)
!707 = !DILocalVariable(name: "wq", scope: !700, file: !20, line: 209, type: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!710 = distinct !DILocation(line: 70, column: 2, scope: !711)
!711 = distinct !DILexicalBlock(scope: !684, file: !3, line: 70, column: 2)
!712 = !DILocation(line: 198, column: 2, scope: !699, inlinedAt: !710)
!713 = !{!"branch_weights", i32 1, i32 2000}
!714 = !DILocation(line: 198, column: 2, scope: !715, inlinedAt: !710)
!715 = distinct !DILexicalBlock(scope: !698, file: !20, line: 198, column: 2)
!716 = !DILocation(line: 194, column: 57, scope: !700, inlinedAt: !710)
!717 = !DILocation(line: 200, column: 9, scope: !700, inlinedAt: !710)
!718 = !DILocation(line: 196, column: 16, scope: !700, inlinedAt: !710)
!719 = !DILocation(line: 201, column: 7, scope: !700, inlinedAt: !710)
!720 = !DILocation(line: 201, column: 2, scope: !700, inlinedAt: !710)
!721 = !{!632, !633, i64 0}
!722 = !DILocation(line: 209, column: 28, scope: !700, inlinedAt: !710)
!723 = !DILocalVariable(name: "wq", arg: 1, scope: !724, file: !725, line: 99, type: !728)
!724 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !725, file: !725, line: 99, type: !726, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !729)
!725 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!726 = !DISubroutineType(types: !727)
!727 = !{null, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!729 = !{!723, !730, !731, !732}
!730 = !DILocalVariable(name: "flags", scope: !724, file: !725, line: 101, type: !89)
!731 = !DILocalVariable(name: "curr", scope: !724, file: !725, line: 102, type: !29)
!732 = !DILocalVariable(name: "tmp", scope: !724, file: !725, line: 102, type: !29)
!733 = !DILocation(line: 99, column: 40, scope: !724, inlinedAt: !734)
!734 = distinct !DILocation(line: 210, column: 2, scope: !700, inlinedAt: !710)
!735 = !DILocation(line: 104, column: 10, scope: !724, inlinedAt: !734)
!736 = !DILocation(line: 101, column: 16, scope: !724, inlinedAt: !734)
!737 = !DILocation(line: 105, column: 2, scope: !738, inlinedAt: !734)
!738 = distinct !DILexicalBlock(scope: !724, file: !725, line: 105, column: 2)
!739 = !{!634, !635, i64 0}
!740 = !DILocation(line: 102, column: 25, scope: !724, inlinedAt: !734)
!741 = !DILocation(line: 105, column: 2, scope: !742, inlinedAt: !734)
!742 = distinct !DILexicalBlock(scope: !738, file: !725, line: 105, column: 2)
!743 = !{!744, !635, i64 16}
!744 = !{!"uk_waitq_entry", !622, i64 0, !635, i64 8, !745, i64 16}
!745 = !{!"", !635, i64 0}
!746 = !DILocation(line: 102, column: 32, scope: !724, inlinedAt: !734)
!747 = !DILocation(line: 106, column: 24, scope: !742, inlinedAt: !734)
!748 = !{!744, !635, i64 8}
!749 = !DILocation(line: 106, column: 3, scope: !742, inlinedAt: !734)
!750 = distinct !{!750, !751, !752}
!751 = !DILocation(line: 105, column: 2, scope: !738)
!752 = !DILocation(line: 106, column: 30, scope: !738)
!753 = !DILocation(line: 107, column: 2, scope: !724, inlinedAt: !734)
!754 = !DILocation(line: 108, column: 1, scope: !724, inlinedAt: !734)
!755 = !DILocation(line: 211, column: 2, scope: !700, inlinedAt: !710)
!756 = !DILocation(line: 212, column: 1, scope: !700, inlinedAt: !710)
!757 = !DILocation(line: 70, column: 2, scope: !711)
!758 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !759)
!759 = distinct !DILocation(line: 49, column: 21, scope: !608, inlinedAt: !760)
!760 = distinct !DILocation(line: 70, column: 2, scope: !681)
!761 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !759)
!762 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !759)
!763 = !DILocation(line: 49, column: 16, scope: !608, inlinedAt: !760)
!764 = !DILocation(line: 50, column: 19, scope: !608, inlinedAt: !760)
!765 = !DILocation(line: 50, column: 11, scope: !608, inlinedAt: !760)
!766 = !DILocation(line: 50, column: 9, scope: !608, inlinedAt: !760)
!767 = !DILocation(line: 50, column: 2, scope: !608, inlinedAt: !760)
!768 = !DILocation(line: 70, column: 2, scope: !681)
!769 = !{i32 -2146437673, i32 -2146437660, i32 -2146437635, i32 -2146437611, i32 -2146437586, i32 -2146437511, i32 -2146437486, i32 -2146437342, i32 -2146435126, i32 -2146435037, i32 -2146434916, i32 -2146434821, i32 -2146434720, i32 -2146434693, i32 -2146434610, i32 -2146434521, i32 -2146434400, i32 -2146434300, i32 -2146434194, i32 -2146434086, i32 -2146437054, i32 -2146437001, i32 -2146436970, i32 -2146436939, i32 -2146436918, i32 -2146436896, i32 -2146436847, i32 -2146436826, i32 -2146434003, i32 -2146433914, i32 -2146433793, i32 -2146433694, i32 -2146433588, i32 -2146433486, i32 -2146433453, i32 -2146433380, i32 -2146433312, i32 -2146436452, i32 -2146436399, i32 -2146436368, i32 -2146436337, i32 -2146436316, i32 -2146436294, i32 -2146436245, i32 -2146436224, i32 -2146433261, i32 -2146433172, i32 -2146433051, i32 -2146432952, i32 -2146432846, i32 -2146432744, i32 -2146432711, i32 -2146432628, i32 -2146432539, i32 -2146432418, i32 -2146432318, i32 -2146432292, i32 -2146432189, i32 -2146432163, i32 -2146435966, i32 -2146435899, i32 -2146435874, i32 -2146435810, i32 -2146435694, i32 -2146435669, i32 -2146435644}
!770 = !DILocation(line: 71, column: 1, scope: !677)
!771 = !DILocation(line: 194, column: 57, scope: !700)
!772 = !DILocation(line: 198, column: 2, scope: !698)
!773 = !DILocation(line: 198, column: 2, scope: !699)
!774 = !DILocation(line: 198, column: 2, scope: !715)
!775 = !DILocation(line: 200, column: 9, scope: !700)
!776 = !DILocation(line: 196, column: 16, scope: !700)
!777 = !DILocation(line: 201, column: 7, scope: !700)
!778 = !DILocation(line: 201, column: 2, scope: !700)
!779 = !DILocation(line: 209, column: 28, scope: !700)
!780 = !DILocation(line: 99, column: 40, scope: !724, inlinedAt: !781)
!781 = distinct !DILocation(line: 210, column: 2, scope: !700)
!782 = !DILocation(line: 104, column: 10, scope: !724, inlinedAt: !781)
!783 = !DILocation(line: 101, column: 16, scope: !724, inlinedAt: !781)
!784 = !DILocation(line: 105, column: 2, scope: !738, inlinedAt: !781)
!785 = !DILocation(line: 102, column: 25, scope: !724, inlinedAt: !781)
!786 = !DILocation(line: 105, column: 2, scope: !742, inlinedAt: !781)
!787 = !DILocation(line: 102, column: 32, scope: !724, inlinedAt: !781)
!788 = !DILocation(line: 106, column: 24, scope: !742, inlinedAt: !781)
!789 = !DILocation(line: 106, column: 3, scope: !742, inlinedAt: !781)
!790 = !DILocation(line: 107, column: 2, scope: !724, inlinedAt: !781)
!791 = !DILocation(line: 108, column: 1, scope: !724, inlinedAt: !781)
!792 = !DILocation(line: 211, column: 2, scope: !700)
!793 = !DILocation(line: 212, column: 1, scope: !700)
!794 = !{!635, !635, i64 0}
!795 = !DILocation(line: 97, column: 36, scope: !2)
!796 = !DILocation(line: 97, column: 47, scope: !2)
!797 = !DILocation(line: 99, column: 2, scope: !2)
!798 = !DILocation(line: 99, column: 9, scope: !2)
!799 = !DILocation(line: 100, column: 2, scope: !2)
!800 = !DILocation(line: 100, column: 32, scope: !2)
!801 = !DILocation(line: 100, column: 61, scope: !2)
!802 = !DILocation(line: 100, column: 67, scope: !2)
!803 = !DILocation(line: 102, column: 2, scope: !2)
!804 = !DILocation(line: 102, column: 2, scope: !544)
!805 = !DILocation(line: 102, column: 2, scope: !545)
!806 = !DILocation(line: 102, column: 2, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 102, column: 2)
!808 = distinct !DILexicalBlock(scope: !544, file: !3, line: 102, column: 2)
!809 = !DILocation(line: 102, column: 2, scope: !808)
!810 = !DILocation(line: 102, column: 2, scope: !543)
!811 = !DILocation(line: 102, column: 2, scope: !542)
!812 = !DILocation(line: 102, column: 2, scope: !541)
!813 = !{!633, !633, i64 0}
!814 = !DILocation(line: 102, column: 2, scope: !815)
!815 = distinct !DILexicalBlock(scope: !541, file: !3, line: 102, column: 2)
!816 = !{i32 -2146429268, i32 -2146429255, i32 -2146429230, i32 -2146429206, i32 -2146429181, i32 -2146429106, i32 -2146429081, i32 -2146428937, i32 -2146426345, i32 -2146426256, i32 -2146426135, i32 -2146426040, i32 -2146425939, i32 -2146425912, i32 -2146425829, i32 -2146425740, i32 -2146425619, i32 -2146425519, i32 -2146425413, i32 -2146425305, i32 -2146428607, i32 -2146428554, i32 -2146428523, i32 -2146428492, i32 -2146428471, i32 -2146428449, i32 -2146428400, i32 -2146428379, i32 -2146428276, i32 -2146425222, i32 -2146425133, i32 -2146425012, i32 -2146424913, i32 -2146424807, i32 -2146424705, i32 -2146424672, i32 -2146424599, i32 -2146424531, i32 -2146428016, i32 -2146427963, i32 -2146427932, i32 -2146427901, i32 -2146427880, i32 -2146427858, i32 -2146427809, i32 -2146427788, i32 -2146424484, i32 -2146424395, i32 -2146424274, i32 -2146424175, i32 -2146424069, i32 -2146423967, i32 -2146423934, i32 -2146423851, i32 -2146423762, i32 -2146423641, i32 -2146423541, i32 -2146423515, i32 -2146423412, i32 -2146423386, i32 -2146427530, i32 -2146427463, i32 -2146427438, i32 -2146427374, i32 -2146427258, i32 -2146427233, i32 -2146427208}
!817 = !DILocation(line: 105, column: 6, scope: !554)
!818 = !DILocation(line: 105, column: 14, scope: !554)
!819 = !DILocation(line: 105, column: 6, scope: !2)
!820 = !DILocation(line: 106, column: 3, scope: !553)
!821 = !DILocation(line: 106, column: 3, scope: !551)
!822 = !DILocation(line: 106, column: 3, scope: !552)
!823 = !DILocation(line: 106, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !551, file: !3, line: 106, column: 3)
!825 = !DILocation(line: 106, column: 3, scope: !550)
!826 = !DILocation(line: 106, column: 3, scope: !549)
!827 = !DILocation(line: 106, column: 3, scope: !548)
!828 = !{i32 -2146421376, i32 -2146421363, i32 -2146421338, i32 -2146421314, i32 -2146421289, i32 -2146421214, i32 -2146421189, i32 -2146421045, i32 -2146417891, i32 -2146417802, i32 -2146417681, i32 -2146417586, i32 -2146417485, i32 -2146417458, i32 -2146417375, i32 -2146417286, i32 -2146417165, i32 -2146417065, i32 -2146416959, i32 -2146416851, i32 -2146420757, i32 -2146420704, i32 -2146420673, i32 -2146420642, i32 -2146420621, i32 -2146420599, i32 -2146420550, i32 -2146420529, i32 -2146416768, i32 -2146416679, i32 -2146416558, i32 -2146416459, i32 -2146416353, i32 -2146416251, i32 -2146416218, i32 -2146416145, i32 -2146416077, i32 -2146420225, i32 -2146420166, i32 -2146420113, i32 -2146420082, i32 -2146420051, i32 -2146420030, i32 -2146420008, i32 -2146419959, i32 -2146419938, i32 -2146416017, i32 -2146415928, i32 -2146415807, i32 -2146415708, i32 -2146415602, i32 -2146415500, i32 -2146415467, i32 -2146415384, i32 -2146415295, i32 -2146415174, i32 -2146415074, i32 -2146415048, i32 -2146414945, i32 -2146414919, i32 -2146419680, i32 -2146419613, i32 -2146419588, i32 -2146419524, i32 -2146419442, i32 -2146419419, i32 -2146419394, i32 -2146419369}
!829 = !DILocation(line: 106, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 106, column: 3)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 106, column: 3)
!832 = distinct !DILexicalBlock(scope: !548, file: !3, line: 106, column: 3)
!833 = !{i32 -2146418181, i32 -2146418165}
!834 = !DILocation(line: 108, column: 2, scope: !553)
!835 = !DILocation(line: 109, column: 3, scope: !562)
!836 = !DILocation(line: 109, column: 3, scope: !560)
!837 = !DILocation(line: 109, column: 3, scope: !561)
!838 = !DILocation(line: 109, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !560, file: !3, line: 109, column: 3)
!840 = !DILocation(line: 109, column: 3, scope: !559)
!841 = !DILocation(line: 109, column: 3, scope: !558)
!842 = !DILocation(line: 109, column: 3, scope: !557)
!843 = !{i32 -2146412625, i32 -2146412612, i32 -2146412587, i32 -2146412563, i32 -2146412538, i32 -2146412463, i32 -2146412438, i32 -2146412294, i32 -2146409036, i32 -2146408947, i32 -2146408826, i32 -2146408731, i32 -2146408630, i32 -2146408603, i32 -2146408520, i32 -2146408431, i32 -2146408310, i32 -2146408210, i32 -2146408104, i32 -2146407996, i32 -2146412002, i32 -2146411949, i32 -2146411918, i32 -2146411887, i32 -2146411866, i32 -2146411844, i32 -2146411795, i32 -2146411774, i32 -2146407913, i32 -2146407824, i32 -2146407703, i32 -2146407604, i32 -2146407498, i32 -2146407396, i32 -2146407363, i32 -2146407290, i32 -2146407222, i32 -2146411467, i32 -2146411408, i32 -2146411355, i32 -2146411324, i32 -2146411293, i32 -2146411272, i32 -2146411250, i32 -2146411201, i32 -2146411180, i32 -2146407166, i32 -2146407077, i32 -2146406956, i32 -2146406857, i32 -2146406751, i32 -2146406649, i32 -2146406616, i32 -2146406533, i32 -2146406444, i32 -2146406323, i32 -2146406223, i32 -2146406197, i32 -2146406094, i32 -2146406068, i32 -2146410922, i32 -2146410855, i32 -2146410830, i32 -2146410766, i32 -2146410684, i32 -2146410661, i32 -2146410636, i32 -2146410611}
!844 = !DILocation(line: 109, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 109, column: 3)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 109, column: 3)
!847 = distinct !DILexicalBlock(scope: !557, file: !3, line: 109, column: 3)
!848 = !{i32 -2146409389, i32 -2146409373}
!849 = !DILocation(line: 111, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !562, file: !3, line: 111, column: 7)
!851 = !DILocation(line: 111, column: 7, scope: !562)
!852 = !DILocation(line: 112, column: 4, scope: !850)
!853 = !DILocation(line: 115, column: 17, scope: !2)
!854 = !DILocation(line: 115, column: 9, scope: !2)
!855 = !DILocation(line: 115, column: 2, scope: !2)
!856 = !DILocation(line: 116, column: 1, scope: !2)
!857 = distinct !DISubprogram(name: "uk_pr_debug", scope: !512, file: !512, line: 162, type: !513, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !858)
!858 = !{!859, !860}
!859 = !DILocalVariable(name: "fmt", arg: 1, scope: !857, file: !512, line: 162, type: !40)
!860 = !DILocalVariable(name: "argp", scope: !857, file: !512, line: 164, type: !518)
!861 = !DILocation(line: 162, column: 44, scope: !857)
!862 = !DILocation(line: 164, column: 2, scope: !857)
!863 = !DILocation(line: 164, column: 10, scope: !857)
!864 = !DILocation(line: 165, column: 2, scope: !857)
!865 = !DILocalVariable(name: "fmt", arg: 1, scope: !866, file: !512, line: 97, type: !40)
!866 = distinct !DISubprogram(name: "uk_vprintd", scope: !512, file: !512, line: 97, type: !867, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !870)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !40, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!870 = !{!865, !871}
!871 = !DILocalVariable(name: "ap", arg: 2, scope: !866, file: !512, line: 97, type: !869)
!872 = !DILocation(line: 97, column: 43, scope: !866, inlinedAt: !873)
!873 = distinct !DILocation(line: 166, column: 2, scope: !857)
!874 = !DILocation(line: 97, column: 65, scope: !866, inlinedAt: !873)
!875 = !DILocation(line: 98, column: 2, scope: !866, inlinedAt: !873)
!876 = !DILocation(line: 167, column: 2, scope: !857)
!877 = !DILocation(line: 168, column: 1, scope: !857)
!878 = distinct !DISubprogram(name: "sys_arch_sem_wait_helper", scope: !3, file: !3, line: 76, type: !879, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!87, !538}
!881 = !{!882, !883}
!882 = !DILocalVariable(name: "s", arg: 1, scope: !878, file: !3, line: 76, type: !538)
!883 = !DILocalVariable(name: "nsret", scope: !878, file: !3, line: 77, type: !87)
!884 = !DILocation(line: 76, column: 77, scope: !878)
!885 = !DILocation(line: 77, column: 17, scope: !878)
!886 = !DILocation(line: 77, column: 9, scope: !878)
!887 = !DILocalVariable(name: "s", arg: 1, scope: !888, file: !20, line: 58, type: !703)
!888 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !20, file: !20, line: 58, type: !701, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !889)
!889 = !{!887, !890, !891, !896, !897, !898}
!890 = !DILocalVariable(name: "irqf", scope: !888, file: !20, line: 60, type: !89)
!891 = !DILocalVariable(name: "__current", scope: !892, file: !20, line: 66, type: !35)
!892 = distinct !DILexicalBlock(scope: !893, file: !20, line: 65, column: 6)
!893 = distinct !DILexicalBlock(scope: !894, file: !20, line: 64, column: 11)
!894 = distinct !DILexicalBlock(scope: !895, file: !20, line: 64, column: 2)
!895 = distinct !DILexicalBlock(scope: !888, file: !20, line: 64, column: 2)
!896 = !DILocalVariable(name: "flags", scope: !892, file: !20, line: 67, type: !89)
!897 = !DILocalVariable(name: "__cur", scope: !892, file: !20, line: 68, type: !35)
!898 = !DILocalVariable(name: "__wait", scope: !892, file: !20, line: 68, type: !29)
!899 = !DILocation(line: 58, column: 59, scope: !888, inlinedAt: !900)
!900 = distinct !DILocation(line: 78, column: 2, scope: !878)
!901 = !DILocation(line: 62, column: 2, scope: !902, inlinedAt: !900)
!902 = distinct !DILexicalBlock(scope: !903, file: !20, line: 62, column: 2)
!903 = distinct !DILexicalBlock(scope: !888, file: !20, line: 62, column: 2)
!904 = !DILocation(line: 62, column: 2, scope: !903, inlinedAt: !900)
!905 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !906)
!906 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !913)
!907 = distinct !DISubprogram(name: "uk_thread_current", scope: !37, file: !37, line: 151, type: !908, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!35}
!910 = !{!911, !912}
!911 = !DILocalVariable(name: "current", scope: !907, file: !37, line: 153, type: !52)
!912 = !DILocalVariable(name: "sp", scope: !907, file: !37, line: 154, type: !89)
!913 = distinct !DILocation(line: 68, column: 4, scope: !892, inlinedAt: !900)
!914 = !DILocation(line: 62, column: 2, scope: !915, inlinedAt: !900)
!915 = distinct !DILexicalBlock(scope: !902, file: !20, line: 62, column: 2)
!916 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !906)
!917 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !906)
!918 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !913)
!919 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !913)
!920 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !913)
!921 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !922)
!922 = distinct !DILocation(line: 49, column: 21, scope: !608, inlinedAt: !923)
!923 = distinct !DILocation(line: 68, column: 4, scope: !892, inlinedAt: !900)
!924 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !922)
!925 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !922)
!926 = !DILocation(line: 49, column: 16, scope: !608, inlinedAt: !923)
!927 = !DILocation(line: 50, column: 19, scope: !608, inlinedAt: !923)
!928 = !DILocation(line: 50, column: 11, scope: !608, inlinedAt: !923)
!929 = !DILocation(line: 50, column: 9, scope: !608, inlinedAt: !923)
!930 = !DILocation(line: 50, column: 2, scope: !608, inlinedAt: !923)
!931 = !DILocation(line: 68, column: 4, scope: !892, inlinedAt: !900)
!932 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !933)
!933 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !934)
!934 = distinct !DILocation(line: 68, column: 4, scope: !892, inlinedAt: !900)
!935 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !933)
!936 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !933)
!937 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !934)
!938 = !DILocation(line: 156, column: 38, scope: !907, inlinedAt: !934)
!939 = !DILocation(line: 158, column: 9, scope: !907, inlinedAt: !934)
!940 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !934)
!941 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !934)
!942 = !DILocation(line: 69, column: 11, scope: !943, inlinedAt: !900)
!943 = distinct !DILexicalBlock(scope: !892, file: !20, line: 69, column: 8)
!944 = !DILocation(line: 69, column: 17, scope: !943, inlinedAt: !900)
!945 = !DILocation(line: 69, column: 8, scope: !892, inlinedAt: !900)
!946 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !947)
!947 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !948)
!948 = distinct !DILocation(line: 72, column: 17, scope: !949, inlinedAt: !900)
!949 = distinct !DILexicalBlock(scope: !950, file: !20, line: 71, column: 13)
!950 = distinct !DILexicalBlock(scope: !951, file: !20, line: 71, column: 4)
!951 = distinct !DILexicalBlock(scope: !892, file: !20, line: 71, column: 4)
!952 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !947)
!953 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !947)
!954 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !948)
!955 = !DILocation(line: 156, column: 38, scope: !907, inlinedAt: !948)
!956 = !DILocation(line: 156, column: 12, scope: !907, inlinedAt: !948)
!957 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !948)
!958 = !DILocation(line: 158, column: 9, scope: !907, inlinedAt: !948)
!959 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !948)
!960 = !DILocation(line: 66, column: 22, scope: !892, inlinedAt: !900)
!961 = !DILocation(line: 74, column: 13, scope: !949, inlinedAt: !900)
!962 = !DILocation(line: 67, column: 18, scope: !892, inlinedAt: !900)
!963 = !DILocalVariable(name: "wq", arg: 1, scope: !964, file: !725, line: 58, type: !728)
!964 = distinct !DISubprogram(name: "uk_waitq_add", scope: !725, file: !725, line: 58, type: !965, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !728, !29}
!967 = !{!963, !968}
!968 = !DILocalVariable(name: "entry", arg: 2, scope: !964, file: !725, line: 59, type: !29)
!969 = !DILocation(line: 58, column: 36, scope: !964, inlinedAt: !970)
!970 = distinct !DILocation(line: 75, column: 5, scope: !949, inlinedAt: !900)
!971 = !DILocation(line: 59, column: 26, scope: !964, inlinedAt: !970)
!972 = !DILocation(line: 61, column: 14, scope: !973, inlinedAt: !970)
!973 = distinct !DILexicalBlock(scope: !964, file: !725, line: 61, column: 6)
!974 = !{!744, !622, i64 0}
!975 = !DILocation(line: 61, column: 7, scope: !973, inlinedAt: !970)
!976 = !DILocation(line: 61, column: 6, scope: !964, inlinedAt: !970)
!977 = !DILocation(line: 62, column: 3, scope: !978, inlinedAt: !970)
!978 = distinct !DILexicalBlock(scope: !979, file: !725, line: 62, column: 3)
!979 = distinct !DILexicalBlock(scope: !973, file: !725, line: 61, column: 23)
!980 = !{!634, !635, i64 8}
!981 = !DILocation(line: 63, column: 18, scope: !979, inlinedAt: !970)
!982 = !DILocation(line: 64, column: 2, scope: !979, inlinedAt: !970)
!983 = !DILocation(line: 65, column: 1, scope: !964, inlinedAt: !970)
!984 = !DILocalVariable(name: "thread", arg: 1, scope: !985, file: !37, line: 122, type: !35)
!985 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !37, file: !37, line: 122, type: !986, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !35, !55}
!988 = !{!984, !989}
!989 = !DILocalVariable(name: "time", arg: 2, scope: !985, file: !37, line: 122, type: !55)
!990 = !DILocation(line: 122, column: 64, scope: !985, inlinedAt: !991)
!991 = distinct !DILocation(line: 76, column: 5, scope: !949, inlinedAt: !900)
!992 = !DILocation(line: 122, column: 80, scope: !985, inlinedAt: !991)
!993 = !DILocation(line: 124, column: 10, scope: !985, inlinedAt: !991)
!994 = !DILocation(line: 124, column: 22, scope: !985, inlinedAt: !991)
!995 = !{!996, !633, i64 56}
!996 = !{!"uk_thread", !635, i64 0, !635, i64 8, !635, i64 16, !635, i64 24, !997, i64 32, !622, i64 48, !633, i64 56, !998, i64 64, !634, i64 72, !635, i64 88, !635, i64 96, !622, i64 104, !635, i64 112, !635, i64 120}
!997 = !{!"", !635, i64 0, !635, i64 8}
!998 = !{!"_Bool", !623, i64 0}
!999 = !DILocation(line: 125, column: 1, scope: !985, inlinedAt: !991)
!1000 = !DILocalVariable(name: "thread", arg: 1, scope: !1001, file: !37, line: 183, type: !35)
!1001 = distinct !DISubprogram(name: "clear_runnable", scope: !37, file: !37, line: 183, type: !1002, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !35}
!1004 = !{!1000}
!1005 = !DILocation(line: 183, column: 53, scope: !1001, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 79, column: 5, scope: !949, inlinedAt: !900)
!1007 = !DILocation(line: 185, column: 10, scope: !1001, inlinedAt: !1006)
!1008 = !DILocation(line: 185, column: 16, scope: !1001, inlinedAt: !1006)
!1009 = !{!996, !622, i64 48}
!1010 = !DILocation(line: 186, column: 1, scope: !1001, inlinedAt: !1006)
!1011 = !DILocalVariable(name: "t", arg: 1, scope: !1012, file: !65, line: 151, type: !35)
!1012 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !65, file: !65, line: 151, type: !1002, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1013)
!1013 = !{!1011}
!1014 = !DILocation(line: 151, column: 62, scope: !1012, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 81, column: 5, scope: !949, inlinedAt: !900)
!1016 = !DILocation(line: 153, column: 2, scope: !1017, inlinedAt: !1015)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !65, line: 153, column: 2)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !65, line: 153, column: 2)
!1019 = !DILocation(line: 153, column: 2, scope: !1018, inlinedAt: !1015)
!1020 = !DILocation(line: 153, column: 2, scope: !1021, inlinedAt: !1015)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !65, line: 153, column: 2)
!1022 = !DILocation(line: 154, column: 6, scope: !1012, inlinedAt: !1015)
!1023 = !{!996, !635, i64 88}
!1024 = !DILocation(line: 154, column: 14, scope: !1012, inlinedAt: !1015)
!1025 = !{!1026, !635, i64 24}
!1026 = !{!"uk_sched", !635, i64 0, !635, i64 8, !635, i64 16, !635, i64 24, !635, i64 32, !635, i64 40, !635, i64 48, !635, i64 56, !635, i64 64, !998, i64 72, !996, i64 80, !1027, i64 208, !1028, i64 224, !635, i64 248, !635, i64 256, !635, i64 264}
!1027 = !{!"uk_thread_list", !635, i64 0, !635, i64 8}
!1028 = !{!"ukplat_ctx_callbacks", !635, i64 0, !635, i64 8, !635, i64 16}
!1029 = !DILocation(line: 154, column: 2, scope: !1012, inlinedAt: !1015)
!1030 = !DILocation(line: 155, column: 1, scope: !1012, inlinedAt: !1015)
!1031 = !DILocation(line: 83, column: 5, scope: !949, inlinedAt: !900)
!1032 = !DILocation(line: 84, column: 12, scope: !1033, inlinedAt: !900)
!1033 = distinct !DILexicalBlock(scope: !949, file: !20, line: 84, column: 9)
!1034 = !DILocation(line: 84, column: 18, scope: !1033, inlinedAt: !900)
!1035 = !DILocation(line: 84, column: 9, scope: !949, inlinedAt: !900)
!1036 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 117, column: 30, scope: !1039, inlinedAt: !1043)
!1039 = distinct !DISubprogram(name: "uk_sched_yield", scope: !65, file: !65, line: 114, type: !399, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1040)
!1040 = !{!1041, !1042}
!1041 = !DILocalVariable(name: "s", scope: !1039, file: !65, line: 116, type: !63)
!1042 = !DILocalVariable(name: "current", scope: !1039, file: !65, line: 117, type: !35)
!1043 = distinct !DILocation(line: 86, column: 5, scope: !949, inlinedAt: !900)
!1044 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1037)
!1045 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !1037)
!1046 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !1038)
!1047 = !DILocation(line: 156, column: 38, scope: !907, inlinedAt: !1038)
!1048 = !DILocation(line: 156, column: 12, scope: !907, inlinedAt: !1038)
!1049 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !1038)
!1050 = !DILocation(line: 158, column: 9, scope: !907, inlinedAt: !1038)
!1051 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !1038)
!1052 = !DILocation(line: 117, column: 20, scope: !1039, inlinedAt: !1043)
!1053 = !DILocation(line: 119, column: 2, scope: !1054, inlinedAt: !1043)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !65, line: 119, column: 2)
!1055 = distinct !DILexicalBlock(scope: !1039, file: !65, line: 119, column: 2)
!1056 = !DILocation(line: 119, column: 2, scope: !1055, inlinedAt: !1043)
!1057 = !DILocation(line: 119, column: 2, scope: !1058, inlinedAt: !1043)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !65, line: 119, column: 2)
!1059 = !DILocation(line: 121, column: 15, scope: !1039, inlinedAt: !1043)
!1060 = !DILocation(line: 116, column: 19, scope: !1039, inlinedAt: !1043)
!1061 = !DILocation(line: 122, column: 2, scope: !1062, inlinedAt: !1043)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !65, line: 122, column: 2)
!1063 = distinct !DILexicalBlock(scope: !1039, file: !65, line: 122, column: 2)
!1064 = !DILocation(line: 122, column: 2, scope: !1063, inlinedAt: !1043)
!1065 = !DILocation(line: 122, column: 2, scope: !1066, inlinedAt: !1043)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !65, line: 122, column: 2)
!1067 = !DILocation(line: 123, column: 5, scope: !1039, inlinedAt: !1043)
!1068 = !{!1026, !635, i64 0}
!1069 = !DILocation(line: 123, column: 2, scope: !1039, inlinedAt: !1043)
!1070 = !DILocation(line: 124, column: 1, scope: !1039, inlinedAt: !1043)
!1071 = !DILocation(line: 71, column: 4, scope: !950, inlinedAt: !900)
!1072 = distinct !{!1072, !1073, !1074}
!1073 = !DILocation(line: 71, column: 4, scope: !951)
!1074 = !DILocation(line: 87, column: 4, scope: !951)
!1075 = !DILocation(line: 88, column: 12, scope: !892, inlinedAt: !900)
!1076 = !DILocation(line: 90, column: 4, scope: !892, inlinedAt: !900)
!1077 = !DILocalVariable(name: "wq", arg: 1, scope: !1078, file: !725, line: 68, type: !728)
!1078 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !725, file: !725, line: 68, type: !965, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1079)
!1079 = !{!1077, !1080, !1081}
!1080 = !DILocalVariable(name: "entry", arg: 2, scope: !1078, file: !725, line: 69, type: !29)
!1081 = !DILocalVariable(name: "curelm", scope: !1082, file: !725, line: 72, type: !29)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !725, line: 72, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !725, line: 72, column: 3)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !725, line: 72, column: 3)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !725, line: 71, column: 22)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !725, line: 71, column: 6)
!1087 = !DILocation(line: 68, column: 39, scope: !1078, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 91, column: 4, scope: !892, inlinedAt: !900)
!1089 = !DILocation(line: 69, column: 26, scope: !1078, inlinedAt: !1088)
!1090 = !DILocation(line: 71, column: 13, scope: !1086, inlinedAt: !1088)
!1091 = !DILocation(line: 71, column: 6, scope: !1086, inlinedAt: !1088)
!1092 = !DILocation(line: 71, column: 6, scope: !1078, inlinedAt: !1088)
!1093 = !DILocation(line: 72, column: 3, scope: !1083, inlinedAt: !1088)
!1094 = !DILocation(line: 72, column: 3, scope: !1084, inlinedAt: !1088)
!1095 = !DILocation(line: 72, column: 3, scope: !1096, inlinedAt: !1088)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !725, line: 72, column: 3)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !725, line: 72, column: 3)
!1098 = distinct !DILexicalBlock(scope: !1083, file: !725, line: 72, column: 3)
!1099 = !DILocation(line: 72, column: 3, scope: !1097, inlinedAt: !1088)
!1100 = !DILocation(line: 72, column: 3, scope: !1082, inlinedAt: !1088)
!1101 = distinct !{!1101, !1102, !1102}
!1102 = !DILocation(line: 72, column: 3, scope: !1082)
!1103 = !DILocation(line: 72, column: 3, scope: !1104, inlinedAt: !1088)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !725, line: 72, column: 3)
!1105 = distinct !DILexicalBlock(scope: !1082, file: !725, line: 72, column: 3)
!1106 = !DILocation(line: 72, column: 3, scope: !1105, inlinedAt: !1088)
!1107 = !DILocation(line: 73, column: 18, scope: !1085, inlinedAt: !1088)
!1108 = !DILocation(line: 74, column: 2, scope: !1085, inlinedAt: !1088)
!1109 = !DILocation(line: 75, column: 1, scope: !1078, inlinedAt: !1088)
!1110 = !DILocation(line: 92, column: 4, scope: !892, inlinedAt: !900)
!1111 = !DILocation(line: 93, column: 3, scope: !893, inlinedAt: !900)
!1112 = !DILocation(line: 0, scope: !878)
!1113 = !DILocation(line: 95, column: 10, scope: !893, inlinedAt: !900)
!1114 = !DILocation(line: 60, column: 16, scope: !888, inlinedAt: !900)
!1115 = !DILocation(line: 96, column: 10, scope: !1116, inlinedAt: !900)
!1116 = distinct !DILexicalBlock(scope: !893, file: !20, line: 96, column: 7)
!1117 = !DILocation(line: 96, column: 16, scope: !1116, inlinedAt: !900)
!1118 = !DILocation(line: 96, column: 7, scope: !893, inlinedAt: !900)
!1119 = !DILocation(line: 98, column: 3, scope: !893, inlinedAt: !900)
!1120 = !DILocation(line: 64, column: 2, scope: !894, inlinedAt: !900)
!1121 = distinct !{!1121, !1122, !1123}
!1122 = !DILocation(line: 64, column: 2, scope: !895)
!1123 = !DILocation(line: 99, column: 2, scope: !895)
!1124 = !DILocation(line: 100, column: 2, scope: !888, inlinedAt: !900)
!1125 = !DILocation(line: 104, column: 2, scope: !888, inlinedAt: !900)
!1126 = !DILocation(line: 105, column: 1, scope: !888, inlinedAt: !900)
!1127 = !DILocation(line: 79, column: 9, scope: !878)
!1128 = !DILocation(line: 79, column: 34, scope: !878)
!1129 = !DILocation(line: 79, column: 2, scope: !878)
!1130 = distinct !DISubprogram(name: "uk_semaphore_down_to", scope: !20, file: !20, line: 128, type: !1131, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !469, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!87, !703, !87}
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1144, !1145, !1146}
!1134 = !DILocalVariable(name: "s", arg: 1, scope: !1130, file: !20, line: 128, type: !703)
!1135 = !DILocalVariable(name: "timeout", arg: 2, scope: !1130, file: !20, line: 129, type: !87)
!1136 = !DILocalVariable(name: "irqf", scope: !1130, file: !20, line: 131, type: !89)
!1137 = !DILocalVariable(name: "then", scope: !1130, file: !20, line: 132, type: !87)
!1138 = !DILocalVariable(name: "deadline", scope: !1130, file: !20, line: 133, type: !87)
!1139 = !DILocalVariable(name: "__current", scope: !1140, file: !20, line: 141, type: !35)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !20, line: 140, column: 6)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !20, line: 139, column: 11)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !20, line: 139, column: 2)
!1143 = distinct !DILexicalBlock(scope: !1130, file: !20, line: 139, column: 2)
!1144 = !DILocalVariable(name: "flags", scope: !1140, file: !20, line: 142, type: !89)
!1145 = !DILocalVariable(name: "__cur", scope: !1140, file: !20, line: 143, type: !35)
!1146 = !DILocalVariable(name: "__wait", scope: !1140, file: !20, line: 143, type: !29)
!1147 = !DILocation(line: 128, column: 64, scope: !1130)
!1148 = !DILocation(line: 129, column: 15, scope: !1130)
!1149 = !DILocation(line: 132, column: 16, scope: !1130)
!1150 = !DILocation(line: 132, column: 9, scope: !1130)
!1151 = !DILocation(line: 135, column: 2, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !20, line: 135, column: 2)
!1153 = distinct !DILexicalBlock(scope: !1130, file: !20, line: 135, column: 2)
!1154 = !DILocation(line: 135, column: 2, scope: !1153)
!1155 = !DILocation(line: 135, column: 2, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !20, line: 135, column: 2)
!1157 = !DILocation(line: 137, column: 18, scope: !1130)
!1158 = !DILocation(line: 133, column: 9, scope: !1130)
!1159 = !DILocation(line: 139, column: 2, scope: !1130)
!1160 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 143, column: 4, scope: !1140)
!1163 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1161)
!1164 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !1161)
!1165 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !1162)
!1166 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !1162)
!1167 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !1162)
!1168 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 49, column: 21, scope: !608, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 143, column: 4, scope: !1140)
!1171 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1169)
!1172 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !1169)
!1173 = !DILocation(line: 49, column: 16, scope: !608, inlinedAt: !1170)
!1174 = !DILocation(line: 50, column: 19, scope: !608, inlinedAt: !1170)
!1175 = !DILocation(line: 50, column: 11, scope: !608, inlinedAt: !1170)
!1176 = !DILocation(line: 50, column: 9, scope: !608, inlinedAt: !1170)
!1177 = !DILocation(line: 50, column: 2, scope: !608, inlinedAt: !1170)
!1178 = !DILocation(line: 143, column: 4, scope: !1140)
!1179 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 143, column: 4, scope: !1140)
!1182 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1180)
!1183 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !1180)
!1184 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !1181)
!1185 = !DILocation(line: 156, column: 38, scope: !907, inlinedAt: !1181)
!1186 = !DILocation(line: 158, column: 9, scope: !907, inlinedAt: !1181)
!1187 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !1181)
!1188 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !1181)
!1189 = !DILocation(line: 144, column: 11, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1140, file: !20, line: 144, column: 8)
!1191 = !DILocation(line: 144, column: 17, scope: !1190)
!1192 = !DILocation(line: 144, column: 8, scope: !1140)
!1193 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 147, column: 17, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !20, line: 146, column: 13)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !20, line: 146, column: 4)
!1198 = distinct !DILexicalBlock(scope: !1140, file: !20, line: 146, column: 4)
!1199 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1194)
!1200 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !1194)
!1201 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !1195)
!1202 = !DILocation(line: 156, column: 38, scope: !907, inlinedAt: !1195)
!1203 = !DILocation(line: 156, column: 12, scope: !907, inlinedAt: !1195)
!1204 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !1195)
!1205 = !DILocation(line: 158, column: 9, scope: !907, inlinedAt: !1195)
!1206 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !1195)
!1207 = !DILocation(line: 141, column: 22, scope: !1140)
!1208 = !DILocation(line: 149, column: 13, scope: !1196)
!1209 = !DILocation(line: 142, column: 18, scope: !1140)
!1210 = !DILocation(line: 58, column: 36, scope: !964, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 150, column: 5, scope: !1196)
!1212 = !DILocation(line: 59, column: 26, scope: !964, inlinedAt: !1211)
!1213 = !DILocation(line: 61, column: 14, scope: !973, inlinedAt: !1211)
!1214 = !DILocation(line: 61, column: 7, scope: !973, inlinedAt: !1211)
!1215 = !DILocation(line: 61, column: 6, scope: !964, inlinedAt: !1211)
!1216 = !DILocation(line: 62, column: 3, scope: !978, inlinedAt: !1211)
!1217 = !DILocation(line: 63, column: 18, scope: !979, inlinedAt: !1211)
!1218 = !DILocation(line: 64, column: 2, scope: !979, inlinedAt: !1211)
!1219 = !DILocation(line: 65, column: 1, scope: !964, inlinedAt: !1211)
!1220 = !DILocation(line: 122, column: 64, scope: !985, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 151, column: 5, scope: !1196)
!1222 = !DILocation(line: 122, column: 80, scope: !985, inlinedAt: !1221)
!1223 = !DILocation(line: 124, column: 10, scope: !985, inlinedAt: !1221)
!1224 = !DILocation(line: 124, column: 22, scope: !985, inlinedAt: !1221)
!1225 = !DILocation(line: 125, column: 1, scope: !985, inlinedAt: !1221)
!1226 = !DILocation(line: 183, column: 53, scope: !1001, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 154, column: 5, scope: !1196)
!1228 = !DILocation(line: 185, column: 10, scope: !1001, inlinedAt: !1227)
!1229 = !DILocation(line: 185, column: 16, scope: !1001, inlinedAt: !1227)
!1230 = !DILocation(line: 186, column: 1, scope: !1001, inlinedAt: !1227)
!1231 = !DILocation(line: 151, column: 62, scope: !1012, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 156, column: 5, scope: !1196)
!1233 = !DILocation(line: 153, column: 2, scope: !1017, inlinedAt: !1232)
!1234 = !DILocation(line: 153, column: 2, scope: !1018, inlinedAt: !1232)
!1235 = !DILocation(line: 153, column: 2, scope: !1021, inlinedAt: !1232)
!1236 = !DILocation(line: 154, column: 6, scope: !1012, inlinedAt: !1232)
!1237 = !DILocation(line: 154, column: 14, scope: !1012, inlinedAt: !1232)
!1238 = !DILocation(line: 154, column: 2, scope: !1012, inlinedAt: !1232)
!1239 = !DILocation(line: 155, column: 1, scope: !1012, inlinedAt: !1232)
!1240 = !DILocation(line: 158, column: 5, scope: !1196)
!1241 = !DILocation(line: 159, column: 12, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1196, file: !20, line: 159, column: 9)
!1243 = !DILocation(line: 159, column: 18, scope: !1242)
!1244 = !DILocation(line: 159, column: 22, scope: !1242)
!1245 = !DILocation(line: 159, column: 35, scope: !1242)
!1246 = !DILocation(line: 159, column: 38, scope: !1242)
!1247 = !DILocation(line: 159, column: 63, scope: !1242)
!1248 = !DILocation(line: 159, column: 9, scope: !1196)
!1249 = !DILocation(line: 120, column: 2, scope: !588, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 154, column: 21, scope: !907, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 117, column: 30, scope: !1039, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 161, column: 5, scope: !1196)
!1253 = !DILocation(line: 118, column: 16, scope: !588, inlinedAt: !1250)
!1254 = !DILocation(line: 121, column: 2, scope: !588, inlinedAt: !1250)
!1255 = !DILocation(line: 154, column: 16, scope: !907, inlinedAt: !1251)
!1256 = !DILocation(line: 156, column: 38, scope: !907, inlinedAt: !1251)
!1257 = !DILocation(line: 156, column: 12, scope: !907, inlinedAt: !1251)
!1258 = !DILocation(line: 153, column: 21, scope: !907, inlinedAt: !1251)
!1259 = !DILocation(line: 158, column: 9, scope: !907, inlinedAt: !1251)
!1260 = !DILocation(line: 158, column: 2, scope: !907, inlinedAt: !1251)
!1261 = !DILocation(line: 117, column: 20, scope: !1039, inlinedAt: !1252)
!1262 = !DILocation(line: 119, column: 2, scope: !1054, inlinedAt: !1252)
!1263 = !DILocation(line: 119, column: 2, scope: !1055, inlinedAt: !1252)
!1264 = !DILocation(line: 119, column: 2, scope: !1058, inlinedAt: !1252)
!1265 = !DILocation(line: 121, column: 15, scope: !1039, inlinedAt: !1252)
!1266 = !DILocation(line: 116, column: 19, scope: !1039, inlinedAt: !1252)
!1267 = !DILocation(line: 122, column: 2, scope: !1062, inlinedAt: !1252)
!1268 = !DILocation(line: 122, column: 2, scope: !1063, inlinedAt: !1252)
!1269 = !DILocation(line: 122, column: 2, scope: !1066, inlinedAt: !1252)
!1270 = !DILocation(line: 123, column: 5, scope: !1039, inlinedAt: !1252)
!1271 = !DILocation(line: 123, column: 2, scope: !1039, inlinedAt: !1252)
!1272 = !DILocation(line: 124, column: 1, scope: !1039, inlinedAt: !1252)
!1273 = !DILocation(line: 146, column: 4, scope: !1197)
!1274 = distinct !{!1274, !1275, !1276}
!1275 = !DILocation(line: 146, column: 4, scope: !1198)
!1276 = !DILocation(line: 162, column: 4, scope: !1198)
!1277 = !DILocation(line: 163, column: 12, scope: !1140)
!1278 = !DILocation(line: 165, column: 4, scope: !1140)
!1279 = !DILocation(line: 68, column: 39, scope: !1078, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 166, column: 4, scope: !1140)
!1281 = !DILocation(line: 69, column: 26, scope: !1078, inlinedAt: !1280)
!1282 = !DILocation(line: 71, column: 13, scope: !1086, inlinedAt: !1280)
!1283 = !DILocation(line: 71, column: 6, scope: !1086, inlinedAt: !1280)
!1284 = !DILocation(line: 71, column: 6, scope: !1078, inlinedAt: !1280)
!1285 = !DILocation(line: 72, column: 3, scope: !1083, inlinedAt: !1280)
!1286 = !DILocation(line: 72, column: 3, scope: !1084, inlinedAt: !1280)
!1287 = !DILocation(line: 72, column: 3, scope: !1096, inlinedAt: !1280)
!1288 = !DILocation(line: 72, column: 3, scope: !1097, inlinedAt: !1280)
!1289 = !DILocation(line: 72, column: 3, scope: !1082, inlinedAt: !1280)
!1290 = !DILocation(line: 72, column: 3, scope: !1104, inlinedAt: !1280)
!1291 = !DILocation(line: 72, column: 3, scope: !1105, inlinedAt: !1280)
!1292 = !DILocation(line: 73, column: 18, scope: !1085, inlinedAt: !1280)
!1293 = !DILocation(line: 74, column: 2, scope: !1085, inlinedAt: !1280)
!1294 = !DILocation(line: 75, column: 1, scope: !1078, inlinedAt: !1280)
!1295 = !DILocation(line: 167, column: 4, scope: !1140)
!1296 = !DILocation(line: 168, column: 3, scope: !1141)
!1297 = !DILocation(line: 0, scope: !1190)
!1298 = !DILocation(line: 170, column: 10, scope: !1141)
!1299 = !DILocation(line: 131, column: 16, scope: !1130)
!1300 = !DILocation(line: 171, column: 10, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1141, file: !20, line: 171, column: 7)
!1302 = !DILocation(line: 171, column: 16, scope: !1301)
!1303 = !DILocation(line: 171, column: 20, scope: !1301)
!1304 = !DILocation(line: 0, scope: !1301)
!1305 = !DILocation(line: 171, column: 33, scope: !1301)
!1306 = !DILocation(line: 172, column: 10, scope: !1301)
!1307 = !DILocation(line: 172, column: 35, scope: !1301)
!1308 = !DILocation(line: 171, column: 7, scope: !1141)
!1309 = !DILocation(line: 174, column: 3, scope: !1141)
!1310 = !DILocation(line: 139, column: 2, scope: !1142)
!1311 = distinct !{!1311, !1312, !1313}
!1312 = !DILocation(line: 139, column: 2, scope: !1143)
!1313 = !DILocation(line: 175, column: 2, scope: !1143)
!1314 = !DILocation(line: 177, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1130, file: !20, line: 177, column: 6)
!1316 = !DILocation(line: 177, column: 15, scope: !1315)
!1317 = !DILocation(line: 177, column: 6, scope: !1130)
!1318 = !DILocation(line: 178, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !20, line: 177, column: 20)
!1320 = !DILocation(line: 183, column: 3, scope: !1319)
!1321 = !DILocation(line: 184, column: 10, scope: !1319)
!1322 = !DILocation(line: 184, column: 35, scope: !1319)
!1323 = !DILocation(line: 184, column: 3, scope: !1319)
!1324 = !DILocation(line: 187, column: 2, scope: !1130)
!1325 = !DILocation(line: 191, column: 2, scope: !1130)
!1326 = !DILocation(line: 0, scope: !1130)
!1327 = !DILocation(line: 0, scope: !1319)
!1328 = !DILocation(line: 192, column: 1, scope: !1130)
!1329 = !DILocation(line: 196, column: 2, scope: !511)
!1330 = !DILocation(line: 196, column: 10, scope: !511)
!1331 = !DILocation(line: 197, column: 2, scope: !511)
!1332 = !DILocation(line: 198, column: 2, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !512, line: 198, column: 2)
!1334 = distinct !DILexicalBlock(scope: !511, file: !512, line: 198, column: 2)
!1335 = !DILocation(line: 199, column: 2, scope: !511)
!1336 = !DILocation(line: 200, column: 1, scope: !511)
