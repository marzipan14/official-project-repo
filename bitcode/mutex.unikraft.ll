; ModuleID = '/root/.unikraft/libs/lwip/mutex.c'
source_filename = "/root/.unikraft/libs/lwip/mutex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.0 }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon = type { %struct.uk_thread*, %struct.uk_thread** }
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
%struct.anon.0 = type { %struct.uk_waitq_entry* }
%struct.sys_mutex_t = type { %struct.uk_mutex, i32 }
%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@wq_entries = external dso_local global [32 x %struct.uk_waitq_entry], align 16
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.2 = internal global [8 x i8] c"mutex.c\00", section ".data_shared", align 1, !dbg !489
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"m->lock_count > 0\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mutex_new(%struct.sys_mutex_t*) local_unnamed_addr #0 !dbg !508 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !536, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !547
  br i1 %3, label %9, label %4, !dbg !547

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !548, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !547
  br i1 %6, label %9, label %7, !dbg !552

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 0, !dbg !553
  tail call void @uk_mutex_init(%struct.uk_mutex* %8) #7, !dbg !553
  br label %17, !dbg !553

; <label>:9:                                      ; preds = %4, %1
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !555, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %11 = and i64 %10, -65536, !dbg !567
  %12 = or i64 %11, 4097, !dbg !567
  %13 = add nsw i64 %12, -1, !dbg !567
  %14 = inttoptr i64 %13 to i32*, !dbg !568
  %15 = load i32, i32* %14, align 4096, !dbg !569, !tbaa !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  %16 = ptrtoint %struct.sys_mutex_t* %0 to i64, !dbg !575
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mutex_init\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %16, i32 %15, void (%struct.uk_mutex*)* nonnull @uk_mutex_init) #6, !dbg !575, !srcloc !576
  br label %17

; <label>:17:                                     ; preds = %7, %9
  %18 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 1, !dbg !577
  store i32 1, i32* %18, align 8, !dbg !578, !tbaa !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  ret i8 0, !dbg !584
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @uk_mutex_init(%struct.uk_mutex*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_mutex_valid(%struct.sys_mutex_t* nocapture readonly) local_unnamed_addr #0 !dbg !585 {
  %2 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 1, !dbg !591
  %3 = load i32, i32* %2, align 8, !dbg !591, !tbaa !579
  %4 = icmp eq i32 %3, 1, !dbg !592
  %5 = zext i1 %4 to i32, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  ret i32 %5, !dbg !593
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mutex_set_invalid(%struct.sys_mutex_t* nocapture) local_unnamed_addr #0 !dbg !594 {
  %2 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 1, !dbg !600
  store i32 0, i32* %2, align 8, !dbg !601, !tbaa !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  ret void, !dbg !602
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mutex_free(%struct.sys_mutex_t* nocapture) local_unnamed_addr #0 !dbg !603 {
  %2 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 1, !dbg !609
  store i32 0, i32* %2, align 8, !dbg !610, !tbaa !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  ret void, !dbg !612
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mutex_lock(%struct.sys_mutex_t*) local_unnamed_addr #0 !dbg !613 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !623, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !627
  br i1 %3, label %9, label %4, !dbg !627

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !628, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !627
  br i1 %6, label %9, label %7, !dbg !632

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 0, !dbg !633
  tail call void @uk_mutex_lock(%struct.uk_mutex* %8) #8, !dbg !633
  br label %17, !dbg !633

; <label>:9:                                      ; preds = %4, %1
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !635, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %11 = and i64 %10, -65536, !dbg !641
  %12 = or i64 %11, 4097, !dbg !641
  %13 = add nsw i64 %12, -1, !dbg !641
  %14 = inttoptr i64 %13 to i32*, !dbg !642
  %15 = load i32, i32* %14, align 4096, !dbg !643, !tbaa !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %16 = ptrtoint %struct.sys_mutex_t* %0 to i64, !dbg !645
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mutex_lock\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %16, i32 %15, void (%struct.uk_mutex*)* nonnull @uk_mutex_lock) #6, !dbg !645, !srcloc !646
  br label %17

; <label>:17:                                     ; preds = %7, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  ret void, !dbg !647
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_mutex_lock(%struct.uk_mutex*) #4 !dbg !648 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !674
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !674
  %4 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !676
  %5 = load i32, i32* %4, align 8, !dbg !676, !tbaa !677
  store volatile i32 %5, i32* %2, align 4, !dbg !675, !tbaa !570
  %6 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !678
  %7 = icmp eq %struct.uk_mutex* %0, null, !dbg !679
  br i1 %7, label %8, label %9, !dbg !682, !prof !683

; <label>:8:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !684
  tail call void @ukplat_terminate(i32 3) #9, !dbg !684
  unreachable, !dbg !684

; <label>:9:                                      ; preds = %1
  %10 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !678, !tbaa !686
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !688, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %12 = and i64 %11, -65536, !dbg !700
  %13 = inttoptr i64 %12 to %struct.uk_thread**, !dbg !701
  %14 = load %struct.uk_thread*, %struct.uk_thread** %13, align 65536, !dbg !703, !tbaa !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  %15 = icmp eq %struct.uk_thread* %10, %14
  %16 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0
  br label %18, !dbg !707

; <label>:18:                                     ; preds = %111, %9
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !708, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !716, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %21 = and i64 %20, -65536, !dbg !722
  %22 = or i64 %21, 4097, !dbg !722
  %23 = add nsw i64 %22, -1, !dbg !722
  %24 = inttoptr i64 %23 to i32*, !dbg !723
  %25 = load i32, i32* %24, align 4096, !dbg !724, !tbaa !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  %26 = sext i32 %25 to i64, !dbg !726
  %27 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %26, !dbg !726
  %28 = bitcast %struct.uk_waitq_entry* %27 to i8*, !dbg !726
  %29 = tail call i8* @memset(i8* nonnull %28, i32 0, i64 24) #7, !dbg !726
  %30 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !727, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  %31 = and i64 %30, -65536, !dbg !733
  %32 = inttoptr i64 %31 to i64*, !dbg !734
  %33 = load i64, i64* %32, align 65536, !dbg !734, !tbaa !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  %34 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %26, i32 1, !dbg !726
  %35 = bitcast %struct.uk_thread** %34 to i64*, !dbg !726
  store i64 %33, i64* %35, align 8, !dbg !726, !tbaa !737
  %36 = load volatile i32, i32* %2, align 4, !dbg !740, !tbaa !570
  %37 = icmp eq i32 %36, 0, !dbg !742
  %38 = or i1 %37, %15, !dbg !743
  br i1 %38, label %104, label %39, !dbg !743

; <label>:39:                                     ; preds = %18
  %40 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %27, i64 0, i32 0
  %41 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %26, i32 2, i32 0
  br label %42, !dbg !744

; <label>:42:                                     ; preds = %39, %78
  %43 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !744, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %44 = and i64 %43, -65536, !dbg !753
  %45 = inttoptr i64 %44 to %struct.uk_thread**, !dbg !754
  %46 = load %struct.uk_thread*, %struct.uk_thread** %45, align 65536, !dbg !756, !tbaa !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %47 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !759
  %48 = load i32, i32* %40, align 8, !dbg !772, !tbaa !774
  %49 = icmp eq i32 %48, 0, !dbg !775
  br i1 %49, label %50, label %52, !dbg !776

; <label>:50:                                     ; preds = %42
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %41, align 8, !dbg !777, !tbaa !780
  %51 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %16, align 8, !dbg !777, !tbaa !781
  store %struct.uk_waitq_entry* %27, %struct.uk_waitq_entry** %51, align 8, !dbg !777, !tbaa !704
  store %struct.uk_waitq_entry** %41, %struct.uk_waitq_entry*** %16, align 8, !dbg !777, !tbaa !781
  store i32 1, i32* %40, align 8, !dbg !782, !tbaa !774
  br label %52, !dbg !783

; <label>:52:                                     ; preds = %42, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  %53 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %46, i64 0, i32 6, !dbg !794
  store i64 0, i64* %53, align 8, !dbg !795, !tbaa !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %54 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %46, i64 0, i32 5, !dbg !809
  %55 = load i32, i32* %54, align 8, !dbg !810, !tbaa !811
  %56 = and i32 %55, -2, !dbg !810
  store i32 %56, i32* %54, align 8, !dbg !810, !tbaa !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  %57 = icmp eq %struct.uk_thread* %46, null, !dbg !818
  br i1 %57, label %58, label %59, !dbg !821, !prof !683

; <label>:58:                                     ; preds = %52
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !822
  tail call void @ukplat_terminate(i32 3) #9, !dbg !822
  unreachable, !dbg !822

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %46, i64 0, i32 9, !dbg !824
  %61 = load %struct.uk_sched*, %struct.uk_sched** %60, align 8, !dbg !824, !tbaa !825
  %62 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %61, i64 0, i32 3, !dbg !826
  %63 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %62, align 8, !dbg !826, !tbaa !827
  tail call void %63(%struct.uk_sched* %61, %struct.uk_thread* nonnull %46) #7, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  tail call void @ukplat_lcpu_restore_irqf(i64 %47) #7, !dbg !833
  %64 = load volatile i32, i32* %2, align 4, !dbg !834, !tbaa !570
  %65 = icmp eq i32 %64, 0, !dbg !836
  br i1 %65, label %81, label %66, !dbg !837

; <label>:66:                                     ; preds = %59
  %67 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !838, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  %68 = and i64 %67, -65536, !dbg !849
  %69 = inttoptr i64 %68 to %struct.uk_thread**, !dbg !850
  %70 = load %struct.uk_thread*, %struct.uk_thread** %69, align 65536, !dbg !852, !tbaa !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  %71 = icmp eq %struct.uk_thread* %70, null, !dbg !855
  br i1 %71, label %72, label %73, !dbg !858, !prof !683

; <label>:72:                                     ; preds = %66
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !859
  tail call void @ukplat_terminate(i32 3) #9, !dbg !859
  unreachable, !dbg !859

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %70, i64 0, i32 9, !dbg !861
  %75 = load %struct.uk_sched*, %struct.uk_sched** %74, align 8, !dbg !861, !tbaa !825
  %76 = icmp eq %struct.uk_sched* %75, null, !dbg !863
  br i1 %76, label %77, label %78, !dbg !866, !prof !683

; <label>:77:                                     ; preds = %73
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !867
  tail call void @ukplat_terminate(i32 3) #9, !dbg !867
  unreachable, !dbg !867

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %75, i64 0, i32 0, !dbg !869
  %80 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %79, align 8, !dbg !869, !tbaa !870
  tail call void %80(%struct.uk_sched* nonnull %75) #7, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br label %42, !dbg !873, !llvm.loop !874

; <label>:81:                                     ; preds = %59
  %82 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !877
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %46) #7, !dbg !878
  %83 = load i32, i32* %40, align 8, !dbg !892, !tbaa !774
  %84 = icmp eq i32 %83, 0, !dbg !893
  br i1 %84, label %103, label %85, !dbg !894

; <label>:85:                                     ; preds = %81
  %86 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %17, align 8, !dbg !895, !tbaa !896
  %87 = icmp eq %struct.uk_waitq_entry* %86, %27, !dbg !895
  br i1 %87, label %88, label %92, !dbg !897

; <label>:88:                                     ; preds = %85
  %89 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %41, align 8, !dbg !898, !tbaa !780
  store %struct.uk_waitq_entry* %89, %struct.uk_waitq_entry** %17, align 8, !dbg !898, !tbaa !896
  %90 = icmp eq %struct.uk_waitq_entry* %89, null, !dbg !898
  br i1 %90, label %91, label %102, !dbg !902

; <label>:91:                                     ; preds = %88
  store %struct.uk_waitq_entry** %17, %struct.uk_waitq_entry*** %16, align 8, !dbg !898, !tbaa !781
  br label %102, !dbg !898

; <label>:92:                                     ; preds = %85, %92
  %93 = phi %struct.uk_waitq_entry* [ %95, %92 ], [ %86, %85 ], !dbg !903
  %94 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %93, i64 0, i32 2, i32 0, !dbg !903
  %95 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %94, align 8, !dbg !903, !tbaa !780
  %96 = icmp eq %struct.uk_waitq_entry* %95, %27, !dbg !903
  br i1 %96, label %97, label %92, !dbg !903, !llvm.loop !904

; <label>:97:                                     ; preds = %92
  %98 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %93, i64 0, i32 2, i32 0, !dbg !903
  %99 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %41, align 8, !dbg !906, !tbaa !780
  store %struct.uk_waitq_entry* %99, %struct.uk_waitq_entry** %98, align 8, !dbg !906, !tbaa !780
  %100 = icmp eq %struct.uk_waitq_entry* %99, null, !dbg !906
  br i1 %100, label %101, label %102, !dbg !909

; <label>:101:                                    ; preds = %97
  store %struct.uk_waitq_entry** %98, %struct.uk_waitq_entry*** %16, align 8, !dbg !906, !tbaa !781
  br label %102, !dbg !906

; <label>:102:                                    ; preds = %101, %97, %91, %88
  store i32 0, i32* %40, align 8, !dbg !910, !tbaa !774
  br label %103, !dbg !911

; <label>:103:                                    ; preds = %81, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  tail call void @ukplat_lcpu_restore_irqf(i64 %82) #7, !dbg !913
  br label %104, !dbg !914

; <label>:104:                                    ; preds = %18, %103
  %105 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !915
  %106 = load i32, i32* %4, align 8, !dbg !917, !tbaa !677
  %107 = icmp eq i32 %106, 0, !dbg !919
  br i1 %107, label %112, label %108, !dbg !920

; <label>:108:                                    ; preds = %104
  %109 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !921, !tbaa !686
  %110 = icmp eq %struct.uk_thread* %109, %14, !dbg !922
  br i1 %110, label %112, label %111, !dbg !923

; <label>:111:                                    ; preds = %108
  tail call void @ukplat_lcpu_restore_irqf(i64 %105) #7, !dbg !924
  br label %18, !dbg !925, !llvm.loop !926

; <label>:112:                                    ; preds = %104, %108
  %113 = add nsw i32 %106, 1, !dbg !929
  store i32 %113, i32* %4, align 8, !dbg !929, !tbaa !677
  store %struct.uk_thread* %14, %struct.uk_thread** %6, align 8, !dbg !930, !tbaa !686
  tail call void @ukplat_lcpu_restore_irqf(i64 %105) #7, !dbg !931
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  ret void, !dbg !932
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mutex_unlock(%struct.sys_mutex_t*) local_unnamed_addr #0 !dbg !933 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !943, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %3 = icmp ult i64 %2, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !947
  br i1 %3, label %9, label %4, !dbg !947

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !948, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  %6 = icmp ugt i64 %5, ptrtoint ([0 x i8]* @_end to i64), !dbg !947
  br i1 %6, label %9, label %7, !dbg !952

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.sys_mutex_t, %struct.sys_mutex_t* %0, i64 0, i32 0, !dbg !953
  tail call void @uk_mutex_unlock(%struct.uk_mutex* %8) #8, !dbg !953
  br label %17, !dbg !953

; <label>:9:                                      ; preds = %4, %1
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !955, !srcloc !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %11 = and i64 %10, -65536, !dbg !961
  %12 = or i64 %11, 4097, !dbg !961
  %13 = add nsw i64 %12, -1, !dbg !961
  %14 = inttoptr i64 %13 to i32*, !dbg !962
  %15 = load i32, i32* %14, align 4096, !dbg !963, !tbaa !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  %16 = ptrtoint %struct.sys_mutex_t* %0 to i64, !dbg !965
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mutex_unlock\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %16, i32 %15, void (%struct.uk_mutex*)* nonnull @uk_mutex_unlock) #6, !dbg !965, !srcloc !966
  br label %17

; <label>:17:                                     ; preds = %7, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  ret void, !dbg !967
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_mutex_unlock(%struct.uk_mutex*) #4 !dbg !968 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !975
  br i1 %2, label %3, label %4, !dbg !978, !prof !683

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !979
  tail call void @ukplat_terminate(i32 3) #9, !dbg !979
  unreachable, !dbg !979

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !981
  %6 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !983
  %7 = load i32, i32* %6, align 8, !dbg !983, !tbaa !677
  %8 = icmp slt i32 %7, 1, !dbg !983
  br i1 %8, label %9, label %10, !dbg !986, !prof !683

; <label>:9:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !987
  tail call void @ukplat_terminate(i32 3) #9, !dbg !987
  unreachable, !dbg !987

; <label>:10:                                     ; preds = %4
  %11 = add nsw i32 %7, -1, !dbg !989
  store i32 %11, i32* %6, align 8, !dbg !989, !tbaa !677
  %12 = icmp eq i32 %11, 0, !dbg !991
  br i1 %12, label %13, label %27, !dbg !992

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !993
  store %struct.uk_thread* null, %struct.uk_thread** %14, align 8, !dbg !995, !tbaa !686
  %15 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1006
  %16 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0, !dbg !1008
  %17 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1008, !tbaa !896
  %18 = icmp eq %struct.uk_waitq_entry* %17, null, !dbg !1011
  br i1 %18, label %26, label %19, !dbg !1011

; <label>:19:                                     ; preds = %13, %19
  %20 = phi %struct.uk_waitq_entry* [ %22, %19 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %20, i64 0, i32 2, i32 0, !dbg !1011
  %22 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %21, align 8, !dbg !1011, !tbaa !780
  %23 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %20, i64 0, i32 1, !dbg !1014
  %24 = load %struct.uk_thread*, %struct.uk_thread** %23, align 8, !dbg !1014, !tbaa !737
  tail call void @uk_thread_wake(%struct.uk_thread* %24) #7, !dbg !1015
  %25 = icmp eq %struct.uk_waitq_entry* %22, null, !dbg !1011
  br i1 %25, label %26, label %19, !dbg !1011, !llvm.loop !1016

; <label>:26:                                     ; preds = %19, %13
  tail call void @ukplat_lcpu_restore_irqf(i64 %15) #7, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br label %27, !dbg !1021

; <label>:27:                                     ; preds = %26, %10
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #7, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  ret void, !dbg !1023
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1024
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1026
  call void @llvm.va_start(i8* nonnull %3), !dbg !1026
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.2, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !1027
  call void @llvm.va_end(i8* nonnull %3), !dbg !1030
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  ret void, !dbg !1031
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @uk_thread_wake(%struct.uk_thread*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!504, !505, !506}
!llvm.ident = !{!507}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !399, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !491)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !47, globals: !488)
!10 = !DIFile(filename: "/root/.unikraft/libs/lwip/mutex.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !19, !40}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !13, line: 92, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 53, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!23 = !DIEnumerator(name: "ERR_OK", value: 0)
!24 = !DIEnumerator(name: "ERR_MEM", value: -1)
!25 = !DIEnumerator(name: "ERR_BUF", value: -2)
!26 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!27 = !DIEnumerator(name: "ERR_RTE", value: -4)
!28 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!29 = !DIEnumerator(name: "ERR_VAL", value: -6)
!30 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!31 = !DIEnumerator(name: "ERR_USE", value: -8)
!32 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!33 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!34 = !DIEnumerator(name: "ERR_CONN", value: -11)
!35 = !DIEnumerator(name: "ERR_IF", value: -12)
!36 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!37 = !DIEnumerator(name: "ERR_RST", value: -14)
!38 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!39 = !DIEnumerator(name: "ERR_ARG", value: -16)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !41, line: 68, baseType: !14, size: 32, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!47 = !{!48, !49, !53, !54}
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 60, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 105, baseType: !48)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !57, line: 59, size: 1024, elements: !58)
!57 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !{!59, !60, !62, !63, !64, !69, !72, !78, !80, !96, !243, !244, !245, !458}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 60, baseType: !6, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !56, file: !57, line: 61, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !56, file: !57, line: 62, baseType: !61, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !56, file: !57, line: 63, baseType: !61, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !56, file: !57, line: 64, baseType: !65, size: 128, offset: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !57, line: 64, size: 128, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !65, file: !57, line: 64, baseType: !55, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !65, file: !57, line: 64, baseType: !54, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !57, line: 65, baseType: !70, size: 32, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 48, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 79, baseType: !14)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !56, file: !57, line: 66, baseType: !73, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !74, line: 49, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !76, line: 128, baseType: !77)
!76 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !56, file: !57, line: 67, baseType: !79, size: 8, offset: 512)
!79 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !56, file: !57, line: 68, baseType: !81, size: 128, offset: 576)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !82, line: 42, size: 128, elements: !83)
!82 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !{!84, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !81, file: !82, line: 42, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !82, line: 35, size: 192, elements: !87)
!87 = !{!88, !89, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !86, file: !82, line: 36, baseType: !21, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !86, file: !82, line: 37, baseType: !55, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !86, file: !82, line: 38, baseType: !91, size: 64, offset: 128)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 38, size: 64, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !91, file: !82, line: 38, baseType: !85, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !81, file: !82, line: 42, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !56, file: !57, line: 69, baseType: !97, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !99, line: 90, size: 2176, elements: !100)
!99 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !{!101, !106, !123, !128, !130, !132, !137, !145, !150, !155, !156, !157, !162, !240, !241, !242}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !98, file: !99, line: 91, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !99, line: 68, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !97}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !98, file: !99, line: 93, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !99, line: 71, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!21, !97, !55, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !114, line: 62, baseType: !115)
!114 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !114, line: 55, size: 128, elements: !116)
!116 = !{!117, !118, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !115, file: !114, line: 57, baseType: !79, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !115, file: !114, line: 59, baseType: !119, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !114, line: 53, baseType: !21)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !115, file: !114, line: 61, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !74, line: 48, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !76, line: 129, baseType: !48)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !98, file: !99, line: 94, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !99, line: 74, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !97, !55}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !98, file: !99, line: 95, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !99, line: 76, baseType: !125)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !98, file: !99, line: 96, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !99, line: 78, baseType: !125)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !98, file: !99, line: 98, baseType: !133, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !99, line: 81, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!21, !97, !55, !119}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !98, file: !99, line: 99, baseType: !138, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !99, line: 83, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!21, !97, !142, !144}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !98, file: !99, line: 100, baseType: !146, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !99, line: 85, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!21, !97, !55, !21}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !98, file: !99, line: 101, baseType: !151, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !99, line: 87, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!21, !97, !142, !53}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !98, file: !99, line: 104, baseType: !79, size: 8, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !98, file: !99, line: 105, baseType: !56, size: 1024, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !98, file: !99, line: 106, baseType: !158, size: 128, offset: 1664)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !57, line: 93, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !158, file: !57, line: 93, baseType: !55, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !158, file: !57, line: 93, baseType: !54, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !98, file: !99, line: 107, baseType: !163, size: 192, offset: 1792)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !164, line: 59, size: 192, elements: !165)
!164 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !{!166, !231, !235}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !163, file: !164, line: 61, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !164, line: 51, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!61, !171, !48, !48}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !173, line: 77, size: 832, elements: !174)
!173 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!174 = !{!175, !182, !187, !192, !198, !200, !205, !206, !207, !212, !217, !222, !223, !224}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !172, file: !173, line: 79, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !173, line: 54, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!61, !171, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 58, baseType: !48)
!181 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !172, file: !173, line: 80, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !173, line: 56, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!61, !171, !180, !180}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !172, file: !173, line: 81, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !173, line: 62, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!61, !171, !61, !180}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !172, file: !173, line: 82, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !173, line: 58, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!21, !171, !197, !180, !180}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !172, file: !173, line: 83, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !173, line: 60, baseType: !184)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !172, file: !173, line: 84, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !173, line: 64, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !171, !61}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !172, file: !173, line: 87, baseType: !201, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !172, file: !173, line: 88, baseType: !176, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !172, file: !173, line: 92, baseType: !208, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !173, line: 66, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!61, !171, !48}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !172, file: !173, line: 93, baseType: !213, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !173, line: 68, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !171, !61, !48}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !172, file: !173, line: 99, baseType: !218, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !173, line: 70, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!21, !171, !61, !180}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !172, file: !173, line: 100, baseType: !180, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 103, baseType: !171, size: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !172, file: !173, line: 104, baseType: !225, offset: 832)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !229)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !50, line: 20, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !52, line: 41, baseType: !228)
!228 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!229 = !{!230}
!230 = !DISubrange(count: -1)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !163, file: !164, line: 63, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !61}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !163, file: !164, line: 65, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !164, line: 56, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !61, !61}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !98, file: !99, line: 108, baseType: !171, size: 64, offset: 1984)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !99, line: 109, baseType: !97, size: 64, offset: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !98, file: !99, line: 110, baseType: !61, size: 64, offset: 2112)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !56, file: !57, line: 70, baseType: !61, size: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !56, file: !57, line: 72, baseType: !21, size: 32, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !56, file: !57, line: 82, baseType: !246, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !248, line: 569, size: 14912, elements: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !{!250, !251, !326, !327, !328, !329, !333, !334, !337, !338, !342, !354, !355, !356, !358, !359, !360, !422, !443, !444, !449, !456}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !247, file: !248, line: 571, baseType: !21, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !248, line: 287, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !248, line: 181, size: 1408, elements: !255)
!255 = !{!256, !259, !260, !261, !263, !264, !269, !270, !271, !278, !282, !287, !291, !292, !293, !294, !298, !302, !303, !304, !306, !307, !311, !325}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !254, file: !248, line: 182, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !254, file: !248, line: 183, baseType: !21, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !254, file: !248, line: 184, baseType: !21, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !254, file: !248, line: 185, baseType: !262, size: 16, offset: 128)
!262 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !254, file: !248, line: 186, baseType: !262, size: 16, offset: 144)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !254, file: !248, line: 187, baseType: !265, size: 128, offset: 192)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !248, line: 117, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !265, file: !248, line: 118, baseType: !257, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !265, file: !248, line: 119, baseType: !21, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !254, file: !248, line: 188, baseType: !21, size: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !254, file: !248, line: 195, baseType: !61, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !254, file: !248, line: 197, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !246, !61, !277, !21}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !276, line: 145, baseType: !77)
!276 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !254, file: !248, line: 199, baseType: !279, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!275, !246, !61, !6, !21}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !254, file: !248, line: 202, baseType: !283, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !246, !61, !286, !21}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !276, line: 114, baseType: !77)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !254, file: !248, line: 203, baseType: !288, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!21, !246, !61}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !254, file: !248, line: 206, baseType: !265, size: 128, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !254, file: !248, line: 207, baseType: !257, size: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !254, file: !248, line: 208, baseType: !21, size: 32, offset: 896)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !254, file: !248, line: 211, baseType: !295, size: 24, offset: 928)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 24, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !254, file: !248, line: 212, baseType: !299, size: 8, offset: 952)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 1)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !254, file: !248, line: 215, baseType: !265, size: 128, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !254, file: !248, line: 218, baseType: !21, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !254, file: !248, line: 219, baseType: !305, size: 64, offset: 1152)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !276, line: 44, baseType: !77)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !254, file: !248, line: 222, baseType: !246, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !254, file: !248, line: 226, baseType: !308, size: 32, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !276, line: 175, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !310, line: 12, baseType: !21)
!310 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !254, file: !248, line: 228, baseType: !312, size: 64, offset: 1312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !276, line: 171, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 163, size: 64, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !313, file: !276, line: 165, baseType: !21, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !313, file: !276, line: 170, baseType: !317, size: 32, offset: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !276, line: 166, size: 32, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !317, file: !276, line: 168, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !181, line: 124, baseType: !14)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !317, file: !276, line: 169, baseType: !322, size: 32)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 32, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 4)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !254, file: !248, line: 229, baseType: !21, size: 32, offset: 1376)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !247, file: !248, line: 578, baseType: !21, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !247, file: !248, line: 579, baseType: !330, size: 200, offset: 288)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 25)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !247, file: !248, line: 582, baseType: !21, size: 32, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !247, file: !248, line: 583, baseType: !335, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !248, line: 40, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !247, file: !248, line: 585, baseType: !21, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !247, file: !248, line: 587, baseType: !339, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !246}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !247, file: !248, line: 590, baseType: !343, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !248, line: 47, size: 256, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !344, file: !248, line: 49, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !344, file: !248, line: 50, baseType: !21, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !344, file: !248, line: 50, baseType: !21, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !344, file: !248, line: 50, baseType: !21, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !344, file: !248, line: 50, baseType: !21, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !344, file: !248, line: 51, baseType: !352, size: 32, offset: 192)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 32, elements: !300)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !248, line: 25, baseType: !14)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !247, file: !248, line: 591, baseType: !21, size: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !247, file: !248, line: 592, baseType: !343, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !247, file: !248, line: 593, baseType: !357, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !247, file: !248, line: 596, baseType: !21, size: 32, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !247, file: !248, line: 597, baseType: !277, size: 64, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !247, file: !248, line: 632, baseType: !361, size: 2880, offset: 1152)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !248, line: 599, size: 2880, elements: !362)
!362 = !{!363, !413}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !361, file: !248, line: 622, baseType: !364, size: 1728)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !248, line: 601, size: 1728, elements: !365)
!365 = !{!366, !367, !368, !372, !384, !385, !387, !395, !396, !397, !398, !402, !406, !407, !408, !409, !410, !411, !412}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !364, file: !248, line: 603, baseType: !14, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !364, file: !248, line: 604, baseType: !277, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !364, file: !248, line: 605, baseType: !369, size: 208, offset: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 26)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !364, file: !248, line: 606, baseType: !373, size: 288, offset: 352)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !248, line: 55, size: 288, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !373, file: !248, line: 57, baseType: !21, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !373, file: !248, line: 58, baseType: !21, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !373, file: !248, line: 59, baseType: !21, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !373, file: !248, line: 60, baseType: !21, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !373, file: !248, line: 61, baseType: !21, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !373, file: !248, line: 62, baseType: !21, size: 32, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !373, file: !248, line: 63, baseType: !21, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !373, file: !248, line: 64, baseType: !21, size: 32, offset: 224)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !373, file: !248, line: 65, baseType: !21, size: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !364, file: !248, line: 607, baseType: !21, size: 32, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !364, file: !248, line: 608, baseType: !386, size: 64, offset: 704)
!386 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !364, file: !248, line: 609, baseType: !388, size: 112, offset: 768)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !248, line: 319, size: 112, elements: !389)
!389 = !{!390, !393, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !388, file: !248, line: 320, baseType: !391, size: 48)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 48, elements: !296)
!392 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !388, file: !248, line: 321, baseType: !391, size: 48, offset: 48)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !388, file: !248, line: 322, baseType: !392, size: 16, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !364, file: !248, line: 610, baseType: !312, size: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !364, file: !248, line: 611, baseType: !312, size: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !364, file: !248, line: 612, baseType: !312, size: 64, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !364, file: !248, line: 613, baseType: !399, size: 64, offset: 1088)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !364, file: !248, line: 614, baseType: !403, size: 192, offset: 1152)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 24)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !364, file: !248, line: 615, baseType: !21, size: 32, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !364, file: !248, line: 616, baseType: !312, size: 64, offset: 1376)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !364, file: !248, line: 617, baseType: !312, size: 64, offset: 1440)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !364, file: !248, line: 618, baseType: !312, size: 64, offset: 1504)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !364, file: !248, line: 619, baseType: !312, size: 64, offset: 1568)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !364, file: !248, line: 620, baseType: !312, size: 64, offset: 1632)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !364, file: !248, line: 621, baseType: !21, size: 32, offset: 1696)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !361, file: !248, line: 631, baseType: !414, size: 2880)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !248, line: 626, size: 2880, elements: !415)
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !414, file: !248, line: 629, baseType: !417, size: 1920)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1920, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 30)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !414, file: !248, line: 630, baseType: !421, size: 960, offset: 1920)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !418)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !247, file: !248, line: 636, baseType: !423, size: 64, offset: 4032)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !248, line: 93, size: 6336, elements: !425)
!425 = !{!426, !427, !428, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !424, file: !248, line: 94, baseType: !423, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !424, file: !248, line: 95, baseType: !21, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !424, file: !248, line: 97, baseType: !429, size: 2048, offset: 128)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 2048, elements: !433)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null}
!433 = !{!434}
!434 = !DISubrange(count: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !424, file: !248, line: 98, baseType: !436, size: 4160, offset: 2176)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !248, line: 74, size: 4160, elements: !437)
!437 = !{!438, !440, !441, !442}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !436, file: !248, line: 75, baseType: !439, size: 2048)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !433)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !436, file: !248, line: 76, baseType: !439, size: 2048, offset: 2048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !436, file: !248, line: 78, baseType: !353, size: 32, offset: 4096)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !436, file: !248, line: 81, baseType: !353, size: 32, offset: 4128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !247, file: !248, line: 637, baseType: !424, size: 6336, offset: 4096)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !247, file: !248, line: 641, baseType: !445, size: 64, offset: 10432)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !21}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !247, file: !248, line: 646, baseType: !450, size: 192, offset: 10496)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !248, line: 291, size: 192, elements: !451)
!451 = !{!452, !454, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !450, file: !248, line: 293, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !450, file: !248, line: 294, baseType: !21, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !450, file: !248, line: 295, baseType: !252, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !247, file: !248, line: 648, baseType: !457, size: 4224, offset: 10688)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 4224, elements: !296)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !56, file: !57, line: 85, baseType: !459, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !13, line: 114, size: 640, elements: !461)
!461 = !{!462, !466, !467, !474, !487}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !460, file: !13, line: 116, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !464, line: 64, baseType: !465)
!464 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !464, line: 63, baseType: !48)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !460, file: !13, line: 118, baseType: !463, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !460, file: !13, line: 120, baseType: !468, size: 128, offset: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !469, line: 51, size: 128, elements: !470)
!469 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !469, line: 52, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !468, file: !469, line: 53, baseType: !472, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !460, file: !13, line: 122, baseType: !475, size: 256, offset: 256)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !13, line: 98, size: 256, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !475, file: !13, line: 107, baseType: !12, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !475, file: !13, line: 109, baseType: !463, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !475, file: !13, line: 111, baseType: !480, size: 96, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !464, line: 72, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 68, size: 96, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !481, file: !464, line: 69, baseType: !21, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !481, file: !464, line: 70, baseType: !21, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !481, file: !464, line: 71, baseType: !486, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !464, line: 61, baseType: !21)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !460, file: !13, line: 124, baseType: !468, size: 128, offset: 512)
!488 = !{!0, !489}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !399, isLocal: true, isDefinition: true)
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!493 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !495, line: 32, baseType: !496)
!495 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 192, elements: !300)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !499)
!499 = !{!500, !501, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !498, file: !10, line: 196, baseType: !14, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !498, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !498, file: !10, line: 196, baseType: !61, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !498, file: !10, line: 196, baseType: !61, size: 64, offset: 128)
!504 = !{i32 2, !"Dwarf Version", i32 4}
!505 = !{i32 2, !"Debug Info Version", i32 3}
!506 = !{i32 1, !"wchar_size", i32 4}
!507 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!508 = distinct !DISubprogram(name: "sys_mutex_new", scope: !10, file: !10, line: 45, type: !509, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !527)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !514}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !20, line: 96, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !513, line: 126, baseType: !226)
!513 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_mutex_t", file: !516, line: 67, baseType: !517)
!516 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 64, size: 320, elements: !518)
!518 = !{!519, !526}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !517, file: !516, line: 65, baseType: !520, size: 256)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !521, line: 58, size: 256, elements: !522)
!521 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!522 = !{!523, !524, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !520, file: !521, line: 59, baseType: !21, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !520, file: !521, line: 60, baseType: !55, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !520, file: !521, line: 61, baseType: !81, size: 128, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !517, file: !516, line: 66, baseType: !21, size: 32, offset: 256)
!527 = !{!528, !529}
!528 = !DILocalVariable(name: "mtx", arg: 1, scope: !508, file: !10, line: 45, type: !514)
!529 = !DILocalVariable(name: "tid", scope: !530, file: !10, line: 47, type: !70)
!530 = distinct !DILexicalBlock(scope: !531, file: !10, line: 47, column: 2)
!531 = distinct !DILexicalBlock(scope: !532, file: !10, line: 47, column: 2)
!532 = distinct !DILexicalBlock(scope: !533, file: !10, line: 47, column: 2)
!533 = distinct !DILexicalBlock(scope: !534, file: !10, line: 47, column: 2)
!534 = distinct !DILexicalBlock(scope: !508, file: !10, line: 47, column: 2)
!535 = !DILocation(line: 45, column: 34, scope: !508)
!536 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !543)
!537 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !538, file: !538, line: 116, type: !539, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !541)
!538 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!539 = !DISubroutineType(types: !540)
!540 = !{!48}
!541 = !{!542}
!542 = !DILocalVariable(name: "sp", scope: !537, file: !538, line: 118, type: !48)
!543 = distinct !DILocation(line: 47, column: 2, scope: !533)
!544 = !{i32 426461}
!545 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !543)
!546 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !543)
!547 = !DILocation(line: 47, column: 2, scope: !533)
!548 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !549)
!549 = distinct !DILocation(line: 47, column: 2, scope: !533)
!550 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !549)
!551 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !549)
!552 = !DILocation(line: 47, column: 2, scope: !534)
!553 = !DILocation(line: 47, column: 2, scope: !554)
!554 = distinct !DILexicalBlock(scope: !533, file: !10, line: 47, column: 2)
!555 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !556)
!556 = distinct !DILocation(line: 49, column: 21, scope: !557, inlinedAt: !563)
!557 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !558, file: !558, line: 47, type: !559, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !561)
!558 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!559 = !DISubroutineType(types: !560)
!560 = !{!21}
!561 = !{!562}
!562 = !DILocalVariable(name: "sp", scope: !557, file: !558, line: 49, type: !48)
!563 = distinct !DILocation(line: 47, column: 2, scope: !530)
!564 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !556)
!565 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !556)
!566 = !DILocation(line: 49, column: 16, scope: !557, inlinedAt: !563)
!567 = !DILocation(line: 50, column: 19, scope: !557, inlinedAt: !563)
!568 = !DILocation(line: 50, column: 11, scope: !557, inlinedAt: !563)
!569 = !DILocation(line: 50, column: 9, scope: !557, inlinedAt: !563)
!570 = !{!571, !571, i64 0}
!571 = !{!"int", !572, i64 0}
!572 = !{!"omnipotent char", !573, i64 0}
!573 = !{!"Simple C/C++ TBAA"}
!574 = !DILocation(line: 50, column: 2, scope: !557, inlinedAt: !563)
!575 = !DILocation(line: 47, column: 2, scope: !530)
!576 = !{i32 -2146446961, i32 -2146446948, i32 -2146446923, i32 -2146446899, i32 -2146446874, i32 -2146446799, i32 -2146446774, i32 -2146446630, i32 -2146444418, i32 -2146444329, i32 -2146444208, i32 -2146444113, i32 -2146444012, i32 -2146443985, i32 -2146443902, i32 -2146443813, i32 -2146443692, i32 -2146443592, i32 -2146443486, i32 -2146443378, i32 -2146446342, i32 -2146446289, i32 -2146446258, i32 -2146446227, i32 -2146446206, i32 -2146446184, i32 -2146446135, i32 -2146446114, i32 -2146443295, i32 -2146443206, i32 -2146443085, i32 -2146442986, i32 -2146442880, i32 -2146442778, i32 -2146442745, i32 -2146442672, i32 -2146442604, i32 -2146445740, i32 -2146445687, i32 -2146445656, i32 -2146445625, i32 -2146445604, i32 -2146445582, i32 -2146445533, i32 -2146445512, i32 -2146442555, i32 -2146442466, i32 -2146442345, i32 -2146442246, i32 -2146442140, i32 -2146442038, i32 -2146442005, i32 -2146441922, i32 -2146441833, i32 -2146441712, i32 -2146441612, i32 -2146441586, i32 -2146441483, i32 -2146441457, i32 -2146445254, i32 -2146445187, i32 -2146445162, i32 -2146445098, i32 -2146444982, i32 -2146444957, i32 -2146444932}
!577 = !DILocation(line: 48, column: 7, scope: !508)
!578 = !DILocation(line: 48, column: 13, scope: !508)
!579 = !{!580, !571, i64 32}
!580 = !{!"", !581, i64 0, !571, i64 32}
!581 = !{!"uk_mutex", !571, i64 0, !582, i64 8, !583, i64 16}
!582 = !{!"any pointer", !572, i64 0}
!583 = !{!"uk_waitq", !582, i64 0, !582, i64 8}
!584 = !DILocation(line: 49, column: 2, scope: !508)
!585 = distinct !DISubprogram(name: "sys_mutex_valid", scope: !10, file: !10, line: 52, type: !586, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!21, !514}
!588 = !{!589}
!589 = !DILocalVariable(name: "mtx", arg: 1, scope: !585, file: !10, line: 52, type: !514)
!590 = !DILocation(line: 52, column: 34, scope: !585)
!591 = !DILocation(line: 54, column: 15, scope: !585)
!592 = !DILocation(line: 54, column: 21, scope: !585)
!593 = !DILocation(line: 54, column: 2, scope: !585)
!594 = distinct !DISubprogram(name: "sys_mutex_set_invalid", scope: !10, file: !10, line: 57, type: !595, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !514}
!597 = !{!598}
!598 = !DILocalVariable(name: "mtx", arg: 1, scope: !594, file: !10, line: 57, type: !514)
!599 = !DILocation(line: 57, column: 41, scope: !594)
!600 = !DILocation(line: 59, column: 7, scope: !594)
!601 = !DILocation(line: 59, column: 13, scope: !594)
!602 = !DILocation(line: 60, column: 1, scope: !594)
!603 = distinct !DISubprogram(name: "sys_mutex_free", scope: !10, file: !10, line: 62, type: !595, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !604)
!604 = !{!605}
!605 = !DILocalVariable(name: "mtx", arg: 1, scope: !603, file: !10, line: 62, type: !514)
!606 = !DILocation(line: 62, column: 34, scope: !603)
!607 = !DILocation(line: 57, column: 41, scope: !594, inlinedAt: !608)
!608 = distinct !DILocation(line: 64, column: 2, scope: !603)
!609 = !DILocation(line: 59, column: 7, scope: !594, inlinedAt: !608)
!610 = !DILocation(line: 59, column: 13, scope: !594, inlinedAt: !608)
!611 = !DILocation(line: 60, column: 1, scope: !594, inlinedAt: !608)
!612 = !DILocation(line: 65, column: 1, scope: !603)
!613 = distinct !DISubprogram(name: "sys_mutex_lock", scope: !10, file: !10, line: 67, type: !595, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !614)
!614 = !{!615, !616}
!615 = !DILocalVariable(name: "mtx", arg: 1, scope: !613, file: !10, line: 67, type: !514)
!616 = !DILocalVariable(name: "tid", scope: !617, file: !10, line: 69, type: !70)
!617 = distinct !DILexicalBlock(scope: !618, file: !10, line: 69, column: 2)
!618 = distinct !DILexicalBlock(scope: !619, file: !10, line: 69, column: 2)
!619 = distinct !DILexicalBlock(scope: !620, file: !10, line: 69, column: 2)
!620 = distinct !DILexicalBlock(scope: !621, file: !10, line: 69, column: 2)
!621 = distinct !DILexicalBlock(scope: !613, file: !10, line: 69, column: 2)
!622 = !DILocation(line: 67, column: 34, scope: !613)
!623 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !624)
!624 = distinct !DILocation(line: 69, column: 2, scope: !620)
!625 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !624)
!626 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !624)
!627 = !DILocation(line: 69, column: 2, scope: !620)
!628 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !629)
!629 = distinct !DILocation(line: 69, column: 2, scope: !620)
!630 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !629)
!631 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !629)
!632 = !DILocation(line: 69, column: 2, scope: !621)
!633 = !DILocation(line: 69, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !620, file: !10, line: 69, column: 2)
!635 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !636)
!636 = distinct !DILocation(line: 49, column: 21, scope: !557, inlinedAt: !637)
!637 = distinct !DILocation(line: 69, column: 2, scope: !617)
!638 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !636)
!639 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !636)
!640 = !DILocation(line: 49, column: 16, scope: !557, inlinedAt: !637)
!641 = !DILocation(line: 50, column: 19, scope: !557, inlinedAt: !637)
!642 = !DILocation(line: 50, column: 11, scope: !557, inlinedAt: !637)
!643 = !DILocation(line: 50, column: 9, scope: !557, inlinedAt: !637)
!644 = !DILocation(line: 50, column: 2, scope: !557, inlinedAt: !637)
!645 = !DILocation(line: 69, column: 2, scope: !617)
!646 = !{i32 -2146439566, i32 -2146439553, i32 -2146439528, i32 -2146439504, i32 -2146439479, i32 -2146439404, i32 -2146439379, i32 -2146439235, i32 -2146437023, i32 -2146436934, i32 -2146436813, i32 -2146436718, i32 -2146436617, i32 -2146436590, i32 -2146436507, i32 -2146436418, i32 -2146436297, i32 -2146436197, i32 -2146436091, i32 -2146435983, i32 -2146438947, i32 -2146438894, i32 -2146438863, i32 -2146438832, i32 -2146438811, i32 -2146438789, i32 -2146438740, i32 -2146438719, i32 -2146435900, i32 -2146435811, i32 -2146435690, i32 -2146435591, i32 -2146435485, i32 -2146435383, i32 -2146435350, i32 -2146435277, i32 -2146435209, i32 -2146438345, i32 -2146438292, i32 -2146438261, i32 -2146438230, i32 -2146438209, i32 -2146438187, i32 -2146438138, i32 -2146438117, i32 -2146435160, i32 -2146435071, i32 -2146434950, i32 -2146434851, i32 -2146434745, i32 -2146434643, i32 -2146434610, i32 -2146434527, i32 -2146434438, i32 -2146434317, i32 -2146434217, i32 -2146434191, i32 -2146434088, i32 -2146434062, i32 -2146437859, i32 -2146437792, i32 -2146437767, i32 -2146437703, i32 -2146437587, i32 -2146437562, i32 -2146437537}
!647 = !DILocation(line: 70, column: 1, scope: !613)
!648 = distinct !DISubprogram(name: "uk_mutex_lock", scope: !521, file: !521, line: 69, type: !649, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !652)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!652 = !{!653, !654, !655, !656, !659, !661, !664, !669, !670, !671}
!653 = !DILocalVariable(name: "m", arg: 1, scope: !648, file: !521, line: 69, type: !651)
!654 = !DILocalVariable(name: "current", scope: !648, file: !521, line: 71, type: !55)
!655 = !DILocalVariable(name: "irqf", scope: !648, file: !521, line: 72, type: !48)
!656 = !DILocalVariable(name: "wq", scope: !648, file: !521, line: 77, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !81)
!659 = !DILocalVariable(name: "lock_count", scope: !648, file: !521, line: 78, type: !660)
!660 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!661 = !DILocalVariable(name: "owner", scope: !648, file: !521, line: 79, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!664 = !DILocalVariable(name: "__current", scope: !665, file: !521, line: 87, type: !55)
!665 = distinct !DILexicalBlock(scope: !666, file: !521, line: 86, column: 5)
!666 = distinct !DILexicalBlock(scope: !667, file: !521, line: 85, column: 11)
!667 = distinct !DILexicalBlock(scope: !668, file: !521, line: 85, column: 2)
!668 = distinct !DILexicalBlock(scope: !648, file: !521, line: 85, column: 2)
!669 = !DILocalVariable(name: "flags", scope: !665, file: !521, line: 88, type: !48)
!670 = !DILocalVariable(name: "__cur", scope: !665, file: !521, line: 89, type: !55)
!671 = !DILocalVariable(name: "__wait", scope: !665, file: !521, line: 89, type: !85)
!672 = !DILocation(line: 69, column: 51, scope: !648)
!673 = !DILocation(line: 77, column: 28, scope: !648)
!674 = !DILocation(line: 78, column: 2, scope: !648)
!675 = !DILocation(line: 78, column: 15, scope: !648)
!676 = !DILocation(line: 78, column: 31, scope: !648)
!677 = !{!581, !571, i64 0}
!678 = !DILocation(line: 79, column: 40, scope: !648)
!679 = !DILocation(line: 81, column: 2, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !521, line: 81, column: 2)
!681 = distinct !DILexicalBlock(scope: !648, file: !521, line: 81, column: 2)
!682 = !DILocation(line: 81, column: 2, scope: !681)
!683 = !{!"branch_weights", i32 1, i32 2000}
!684 = !DILocation(line: 81, column: 2, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !521, line: 81, column: 2)
!686 = !{!581, !582, i64 8}
!687 = !DILocation(line: 79, column: 29, scope: !648)
!688 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !689)
!689 = distinct !DILocation(line: 154, column: 21, scope: !690, inlinedAt: !696)
!690 = distinct !DISubprogram(name: "uk_thread_current", scope: !57, file: !57, line: 151, type: !691, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!55}
!693 = !{!694, !695}
!694 = !DILocalVariable(name: "current", scope: !690, file: !57, line: 153, type: !54)
!695 = !DILocalVariable(name: "sp", scope: !690, file: !57, line: 154, type: !48)
!696 = distinct !DILocation(line: 83, column: 2, scope: !648)
!697 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !689)
!698 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !689)
!699 = !DILocation(line: 154, column: 16, scope: !690, inlinedAt: !696)
!700 = !DILocation(line: 156, column: 38, scope: !690, inlinedAt: !696)
!701 = !DILocation(line: 156, column: 12, scope: !690, inlinedAt: !696)
!702 = !DILocation(line: 153, column: 21, scope: !690, inlinedAt: !696)
!703 = !DILocation(line: 158, column: 9, scope: !690, inlinedAt: !696)
!704 = !{!582, !582, i64 0}
!705 = !DILocation(line: 158, column: 2, scope: !690, inlinedAt: !696)
!706 = !DILocation(line: 71, column: 20, scope: !648)
!707 = !DILocation(line: 85, column: 2, scope: !648)
!708 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !709)
!709 = distinct !DILocation(line: 154, column: 21, scope: !690, inlinedAt: !710)
!710 = distinct !DILocation(line: 89, column: 3, scope: !665)
!711 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !709)
!712 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !709)
!713 = !DILocation(line: 154, column: 16, scope: !690, inlinedAt: !710)
!714 = !DILocation(line: 153, column: 21, scope: !690, inlinedAt: !710)
!715 = !DILocation(line: 158, column: 2, scope: !690, inlinedAt: !710)
!716 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !717)
!717 = distinct !DILocation(line: 49, column: 21, scope: !557, inlinedAt: !718)
!718 = distinct !DILocation(line: 89, column: 3, scope: !665)
!719 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !717)
!720 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !717)
!721 = !DILocation(line: 49, column: 16, scope: !557, inlinedAt: !718)
!722 = !DILocation(line: 50, column: 19, scope: !557, inlinedAt: !718)
!723 = !DILocation(line: 50, column: 11, scope: !557, inlinedAt: !718)
!724 = !DILocation(line: 50, column: 9, scope: !557, inlinedAt: !718)
!725 = !DILocation(line: 50, column: 2, scope: !557, inlinedAt: !718)
!726 = !DILocation(line: 89, column: 3, scope: !665)
!727 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !728)
!728 = distinct !DILocation(line: 154, column: 21, scope: !690, inlinedAt: !729)
!729 = distinct !DILocation(line: 89, column: 3, scope: !665)
!730 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !728)
!731 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !728)
!732 = !DILocation(line: 154, column: 16, scope: !690, inlinedAt: !729)
!733 = !DILocation(line: 156, column: 38, scope: !690, inlinedAt: !729)
!734 = !DILocation(line: 158, column: 9, scope: !690, inlinedAt: !729)
!735 = !DILocation(line: 153, column: 21, scope: !690, inlinedAt: !729)
!736 = !DILocation(line: 158, column: 2, scope: !690, inlinedAt: !729)
!737 = !{!738, !582, i64 8}
!738 = !{!"uk_waitq_entry", !571, i64 0, !582, i64 8, !739, i64 16}
!739 = !{!"", !582, i64 0}
!740 = !DILocation(line: 90, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !665, file: !521, line: 90, column: 7)
!742 = !DILocation(line: 90, column: 18, scope: !741)
!743 = !DILocation(line: 90, column: 23, scope: !741)
!744 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !745)
!745 = distinct !DILocation(line: 154, column: 21, scope: !690, inlinedAt: !746)
!746 = distinct !DILocation(line: 93, column: 16, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !521, line: 92, column: 12)
!748 = distinct !DILexicalBlock(scope: !749, file: !521, line: 92, column: 3)
!749 = distinct !DILexicalBlock(scope: !665, file: !521, line: 92, column: 3)
!750 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !745)
!751 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !745)
!752 = !DILocation(line: 154, column: 16, scope: !690, inlinedAt: !746)
!753 = !DILocation(line: 156, column: 38, scope: !690, inlinedAt: !746)
!754 = !DILocation(line: 156, column: 12, scope: !690, inlinedAt: !746)
!755 = !DILocation(line: 153, column: 21, scope: !690, inlinedAt: !746)
!756 = !DILocation(line: 158, column: 9, scope: !690, inlinedAt: !746)
!757 = !DILocation(line: 158, column: 2, scope: !690, inlinedAt: !746)
!758 = !DILocation(line: 87, column: 21, scope: !665)
!759 = !DILocation(line: 95, column: 12, scope: !747)
!760 = !DILocation(line: 88, column: 17, scope: !665)
!761 = !DILocalVariable(name: "wq", arg: 1, scope: !762, file: !763, line: 58, type: !766)
!762 = distinct !DISubprogram(name: "uk_waitq_add", scope: !763, file: !763, line: 58, type: !764, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !767)
!763 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!764 = !DISubroutineType(types: !765)
!765 = !{null, !766, !85}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!767 = !{!761, !768}
!768 = !DILocalVariable(name: "entry", arg: 2, scope: !762, file: !763, line: 59, type: !85)
!769 = !DILocation(line: 58, column: 36, scope: !762, inlinedAt: !770)
!770 = distinct !DILocation(line: 96, column: 4, scope: !747)
!771 = !DILocation(line: 59, column: 26, scope: !762, inlinedAt: !770)
!772 = !DILocation(line: 61, column: 14, scope: !773, inlinedAt: !770)
!773 = distinct !DILexicalBlock(scope: !762, file: !763, line: 61, column: 6)
!774 = !{!738, !571, i64 0}
!775 = !DILocation(line: 61, column: 7, scope: !773, inlinedAt: !770)
!776 = !DILocation(line: 61, column: 6, scope: !762, inlinedAt: !770)
!777 = !DILocation(line: 62, column: 3, scope: !778, inlinedAt: !770)
!778 = distinct !DILexicalBlock(scope: !779, file: !763, line: 62, column: 3)
!779 = distinct !DILexicalBlock(scope: !773, file: !763, line: 61, column: 23)
!780 = !{!738, !582, i64 16}
!781 = !{!583, !582, i64 8}
!782 = !DILocation(line: 63, column: 18, scope: !779, inlinedAt: !770)
!783 = !DILocation(line: 64, column: 2, scope: !779, inlinedAt: !770)
!784 = !DILocation(line: 65, column: 1, scope: !762, inlinedAt: !770)
!785 = !DILocalVariable(name: "thread", arg: 1, scope: !786, file: !57, line: 122, type: !55)
!786 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !57, file: !57, line: 122, type: !787, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !55, !73}
!789 = !{!785, !790}
!790 = !DILocalVariable(name: "time", arg: 2, scope: !786, file: !57, line: 122, type: !73)
!791 = !DILocation(line: 122, column: 64, scope: !786, inlinedAt: !792)
!792 = distinct !DILocation(line: 97, column: 4, scope: !747)
!793 = !DILocation(line: 122, column: 80, scope: !786, inlinedAt: !792)
!794 = !DILocation(line: 124, column: 10, scope: !786, inlinedAt: !792)
!795 = !DILocation(line: 124, column: 22, scope: !786, inlinedAt: !792)
!796 = !{!797, !799, i64 56}
!797 = !{!"uk_thread", !582, i64 0, !582, i64 8, !582, i64 16, !582, i64 24, !798, i64 32, !571, i64 48, !799, i64 56, !800, i64 64, !583, i64 72, !582, i64 88, !582, i64 96, !571, i64 104, !582, i64 112, !582, i64 120}
!798 = !{!"", !582, i64 0, !582, i64 8}
!799 = !{!"long", !572, i64 0}
!800 = !{!"_Bool", !572, i64 0}
!801 = !DILocation(line: 125, column: 1, scope: !786, inlinedAt: !792)
!802 = !DILocalVariable(name: "thread", arg: 1, scope: !803, file: !57, line: 183, type: !55)
!803 = distinct !DISubprogram(name: "clear_runnable", scope: !57, file: !57, line: 183, type: !804, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !55}
!806 = !{!802}
!807 = !DILocation(line: 183, column: 53, scope: !803, inlinedAt: !808)
!808 = distinct !DILocation(line: 99, column: 4, scope: !747)
!809 = !DILocation(line: 185, column: 10, scope: !803, inlinedAt: !808)
!810 = !DILocation(line: 185, column: 16, scope: !803, inlinedAt: !808)
!811 = !{!797, !571, i64 48}
!812 = !DILocation(line: 186, column: 1, scope: !803, inlinedAt: !808)
!813 = !DILocalVariable(name: "t", arg: 1, scope: !814, file: !99, line: 151, type: !55)
!814 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !99, file: !99, line: 151, type: !804, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !815)
!815 = !{!813}
!816 = !DILocation(line: 151, column: 62, scope: !814, inlinedAt: !817)
!817 = distinct !DILocation(line: 100, column: 4, scope: !747)
!818 = !DILocation(line: 153, column: 2, scope: !819, inlinedAt: !817)
!819 = distinct !DILexicalBlock(scope: !820, file: !99, line: 153, column: 2)
!820 = distinct !DILexicalBlock(scope: !814, file: !99, line: 153, column: 2)
!821 = !DILocation(line: 153, column: 2, scope: !820, inlinedAt: !817)
!822 = !DILocation(line: 153, column: 2, scope: !823, inlinedAt: !817)
!823 = distinct !DILexicalBlock(scope: !819, file: !99, line: 153, column: 2)
!824 = !DILocation(line: 154, column: 6, scope: !814, inlinedAt: !817)
!825 = !{!797, !582, i64 88}
!826 = !DILocation(line: 154, column: 14, scope: !814, inlinedAt: !817)
!827 = !{!828, !582, i64 24}
!828 = !{!"uk_sched", !582, i64 0, !582, i64 8, !582, i64 16, !582, i64 24, !582, i64 32, !582, i64 40, !582, i64 48, !582, i64 56, !582, i64 64, !800, i64 72, !797, i64 80, !829, i64 208, !830, i64 224, !582, i64 248, !582, i64 256, !582, i64 264}
!829 = !{!"uk_thread_list", !582, i64 0, !582, i64 8}
!830 = !{!"ukplat_ctx_callbacks", !582, i64 0, !582, i64 8, !582, i64 16}
!831 = !DILocation(line: 154, column: 2, scope: !814, inlinedAt: !817)
!832 = !DILocation(line: 155, column: 1, scope: !814, inlinedAt: !817)
!833 = !DILocation(line: 102, column: 4, scope: !747)
!834 = !DILocation(line: 103, column: 8, scope: !835)
!835 = distinct !DILexicalBlock(scope: !747, file: !521, line: 103, column: 8)
!836 = !DILocation(line: 103, column: 19, scope: !835)
!837 = !DILocation(line: 103, column: 24, scope: !835)
!838 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !839)
!839 = distinct !DILocation(line: 154, column: 21, scope: !690, inlinedAt: !840)
!840 = distinct !DILocation(line: 117, column: 30, scope: !841, inlinedAt: !845)
!841 = distinct !DISubprogram(name: "uk_sched_yield", scope: !99, file: !99, line: 114, type: !431, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !842)
!842 = !{!843, !844}
!843 = !DILocalVariable(name: "s", scope: !841, file: !99, line: 116, type: !97)
!844 = !DILocalVariable(name: "current", scope: !841, file: !99, line: 117, type: !55)
!845 = distinct !DILocation(line: 105, column: 4, scope: !747)
!846 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !839)
!847 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !839)
!848 = !DILocation(line: 154, column: 16, scope: !690, inlinedAt: !840)
!849 = !DILocation(line: 156, column: 38, scope: !690, inlinedAt: !840)
!850 = !DILocation(line: 156, column: 12, scope: !690, inlinedAt: !840)
!851 = !DILocation(line: 153, column: 21, scope: !690, inlinedAt: !840)
!852 = !DILocation(line: 158, column: 9, scope: !690, inlinedAt: !840)
!853 = !DILocation(line: 158, column: 2, scope: !690, inlinedAt: !840)
!854 = !DILocation(line: 117, column: 20, scope: !841, inlinedAt: !845)
!855 = !DILocation(line: 119, column: 2, scope: !856, inlinedAt: !845)
!856 = distinct !DILexicalBlock(scope: !857, file: !99, line: 119, column: 2)
!857 = distinct !DILexicalBlock(scope: !841, file: !99, line: 119, column: 2)
!858 = !DILocation(line: 119, column: 2, scope: !857, inlinedAt: !845)
!859 = !DILocation(line: 119, column: 2, scope: !860, inlinedAt: !845)
!860 = distinct !DILexicalBlock(scope: !856, file: !99, line: 119, column: 2)
!861 = !DILocation(line: 121, column: 15, scope: !841, inlinedAt: !845)
!862 = !DILocation(line: 116, column: 19, scope: !841, inlinedAt: !845)
!863 = !DILocation(line: 122, column: 2, scope: !864, inlinedAt: !845)
!864 = distinct !DILexicalBlock(scope: !865, file: !99, line: 122, column: 2)
!865 = distinct !DILexicalBlock(scope: !841, file: !99, line: 122, column: 2)
!866 = !DILocation(line: 122, column: 2, scope: !865, inlinedAt: !845)
!867 = !DILocation(line: 122, column: 2, scope: !868, inlinedAt: !845)
!868 = distinct !DILexicalBlock(scope: !864, file: !99, line: 122, column: 2)
!869 = !DILocation(line: 123, column: 5, scope: !841, inlinedAt: !845)
!870 = !{!828, !582, i64 0}
!871 = !DILocation(line: 123, column: 2, scope: !841, inlinedAt: !845)
!872 = !DILocation(line: 124, column: 1, scope: !841, inlinedAt: !845)
!873 = !DILocation(line: 92, column: 3, scope: !748)
!874 = distinct !{!874, !875, !876}
!875 = !DILocation(line: 92, column: 3, scope: !749)
!876 = !DILocation(line: 106, column: 3, scope: !749)
!877 = !DILocation(line: 107, column: 11, scope: !665)
!878 = !DILocation(line: 109, column: 3, scope: !665)
!879 = !DILocalVariable(name: "wq", arg: 1, scope: !880, file: !763, line: 68, type: !766)
!880 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !763, file: !763, line: 68, type: !764, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !881)
!881 = !{!879, !882, !883}
!882 = !DILocalVariable(name: "entry", arg: 2, scope: !880, file: !763, line: 69, type: !85)
!883 = !DILocalVariable(name: "curelm", scope: !884, file: !763, line: 72, type: !85)
!884 = distinct !DILexicalBlock(scope: !885, file: !763, line: 72, column: 3)
!885 = distinct !DILexicalBlock(scope: !886, file: !763, line: 72, column: 3)
!886 = distinct !DILexicalBlock(scope: !887, file: !763, line: 72, column: 3)
!887 = distinct !DILexicalBlock(scope: !888, file: !763, line: 71, column: 22)
!888 = distinct !DILexicalBlock(scope: !880, file: !763, line: 71, column: 6)
!889 = !DILocation(line: 68, column: 39, scope: !880, inlinedAt: !890)
!890 = distinct !DILocation(line: 110, column: 3, scope: !665)
!891 = !DILocation(line: 69, column: 26, scope: !880, inlinedAt: !890)
!892 = !DILocation(line: 71, column: 13, scope: !888, inlinedAt: !890)
!893 = !DILocation(line: 71, column: 6, scope: !888, inlinedAt: !890)
!894 = !DILocation(line: 71, column: 6, scope: !880, inlinedAt: !890)
!895 = !DILocation(line: 72, column: 3, scope: !885, inlinedAt: !890)
!896 = !{!583, !582, i64 0}
!897 = !DILocation(line: 72, column: 3, scope: !886, inlinedAt: !890)
!898 = !DILocation(line: 72, column: 3, scope: !899, inlinedAt: !890)
!899 = distinct !DILexicalBlock(scope: !900, file: !763, line: 72, column: 3)
!900 = distinct !DILexicalBlock(scope: !901, file: !763, line: 72, column: 3)
!901 = distinct !DILexicalBlock(scope: !885, file: !763, line: 72, column: 3)
!902 = !DILocation(line: 72, column: 3, scope: !900, inlinedAt: !890)
!903 = !DILocation(line: 72, column: 3, scope: !884, inlinedAt: !890)
!904 = distinct !{!904, !905, !905}
!905 = !DILocation(line: 72, column: 3, scope: !884)
!906 = !DILocation(line: 72, column: 3, scope: !907, inlinedAt: !890)
!907 = distinct !DILexicalBlock(scope: !908, file: !763, line: 72, column: 3)
!908 = distinct !DILexicalBlock(scope: !884, file: !763, line: 72, column: 3)
!909 = !DILocation(line: 72, column: 3, scope: !908, inlinedAt: !890)
!910 = !DILocation(line: 73, column: 18, scope: !887, inlinedAt: !890)
!911 = !DILocation(line: 74, column: 2, scope: !887, inlinedAt: !890)
!912 = !DILocation(line: 75, column: 1, scope: !880, inlinedAt: !890)
!913 = !DILocation(line: 111, column: 3, scope: !665)
!914 = !DILocation(line: 112, column: 2, scope: !666)
!915 = !DILocation(line: 114, column: 9, scope: !666)
!916 = !DILocation(line: 72, column: 16, scope: !648)
!917 = !DILocation(line: 115, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !666, file: !521, line: 115, column: 6)
!919 = !DILocation(line: 115, column: 20, scope: !918)
!920 = !DILocation(line: 115, column: 25, scope: !918)
!921 = !DILocation(line: 115, column: 31, scope: !918)
!922 = !DILocation(line: 115, column: 37, scope: !918)
!923 = !DILocation(line: 115, column: 6, scope: !666)
!924 = !DILocation(line: 117, column: 2, scope: !666)
!925 = !DILocation(line: 85, column: 2, scope: !667)
!926 = distinct !{!926, !927, !928}
!927 = !DILocation(line: 85, column: 2, scope: !668)
!928 = !DILocation(line: 118, column: 1, scope: !668)
!929 = !DILocation(line: 119, column: 15, scope: !648)
!930 = !DILocation(line: 120, column: 11, scope: !648)
!931 = !DILocation(line: 121, column: 2, scope: !648)
!932 = !DILocation(line: 122, column: 1, scope: !648)
!933 = distinct !DISubprogram(name: "sys_mutex_unlock", scope: !10, file: !10, line: 73, type: !595, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !934)
!934 = !{!935, !936}
!935 = !DILocalVariable(name: "mtx", arg: 1, scope: !933, file: !10, line: 73, type: !514)
!936 = !DILocalVariable(name: "tid", scope: !937, file: !10, line: 75, type: !70)
!937 = distinct !DILexicalBlock(scope: !938, file: !10, line: 75, column: 2)
!938 = distinct !DILexicalBlock(scope: !939, file: !10, line: 75, column: 2)
!939 = distinct !DILexicalBlock(scope: !940, file: !10, line: 75, column: 2)
!940 = distinct !DILexicalBlock(scope: !941, file: !10, line: 75, column: 2)
!941 = distinct !DILexicalBlock(scope: !933, file: !10, line: 75, column: 2)
!942 = !DILocation(line: 73, column: 36, scope: !933)
!943 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !944)
!944 = distinct !DILocation(line: 75, column: 2, scope: !940)
!945 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !944)
!946 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !944)
!947 = !DILocation(line: 75, column: 2, scope: !940)
!948 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !949)
!949 = distinct !DILocation(line: 75, column: 2, scope: !940)
!950 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !949)
!951 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !949)
!952 = !DILocation(line: 75, column: 2, scope: !941)
!953 = !DILocation(line: 75, column: 2, scope: !954)
!954 = distinct !DILexicalBlock(scope: !940, file: !10, line: 75, column: 2)
!955 = !DILocation(line: 120, column: 2, scope: !537, inlinedAt: !956)
!956 = distinct !DILocation(line: 49, column: 21, scope: !557, inlinedAt: !957)
!957 = distinct !DILocation(line: 75, column: 2, scope: !937)
!958 = !DILocation(line: 118, column: 16, scope: !537, inlinedAt: !956)
!959 = !DILocation(line: 121, column: 2, scope: !537, inlinedAt: !956)
!960 = !DILocation(line: 49, column: 16, scope: !557, inlinedAt: !957)
!961 = !DILocation(line: 50, column: 19, scope: !557, inlinedAt: !957)
!962 = !DILocation(line: 50, column: 11, scope: !557, inlinedAt: !957)
!963 = !DILocation(line: 50, column: 9, scope: !557, inlinedAt: !957)
!964 = !DILocation(line: 50, column: 2, scope: !557, inlinedAt: !957)
!965 = !DILocation(line: 75, column: 2, scope: !937)
!966 = !{i32 -2146432161, i32 -2146432148, i32 -2146432123, i32 -2146432099, i32 -2146432074, i32 -2146431999, i32 -2146431974, i32 -2146431830, i32 -2146429614, i32 -2146429525, i32 -2146429404, i32 -2146429309, i32 -2146429208, i32 -2146429181, i32 -2146429098, i32 -2146429009, i32 -2146428888, i32 -2146428788, i32 -2146428682, i32 -2146428574, i32 -2146431542, i32 -2146431489, i32 -2146431458, i32 -2146431427, i32 -2146431406, i32 -2146431384, i32 -2146431335, i32 -2146431314, i32 -2146428491, i32 -2146428402, i32 -2146428281, i32 -2146428182, i32 -2146428076, i32 -2146427974, i32 -2146427941, i32 -2146427868, i32 -2146427800, i32 -2146430940, i32 -2146430887, i32 -2146430856, i32 -2146430825, i32 -2146430804, i32 -2146430782, i32 -2146430733, i32 -2146430712, i32 -2146427749, i32 -2146427660, i32 -2146427539, i32 -2146427440, i32 -2146427334, i32 -2146427232, i32 -2146427199, i32 -2146427116, i32 -2146427027, i32 -2146426906, i32 -2146426806, i32 -2146426780, i32 -2146426677, i32 -2146426651, i32 -2146430454, i32 -2146430387, i32 -2146430362, i32 -2146430298, i32 -2146430182, i32 -2146430157, i32 -2146430132}
!967 = !DILocation(line: 76, column: 1, scope: !933)
!968 = distinct !DISubprogram(name: "uk_mutex_unlock", scope: !521, file: !521, line: 149, type: !649, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !969)
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "m", arg: 1, scope: !968, file: !521, line: 149, type: !651)
!971 = !DILocalVariable(name: "irqf", scope: !968, file: !521, line: 151, type: !48)
!972 = !DILocalVariable(name: "wq", scope: !968, file: !521, line: 153, type: !657)
!973 = !DILocation(line: 149, column: 53, scope: !968)
!974 = !DILocation(line: 153, column: 28, scope: !968)
!975 = !DILocation(line: 155, column: 2, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !521, line: 155, column: 2)
!977 = distinct !DILexicalBlock(scope: !968, file: !521, line: 155, column: 2)
!978 = !DILocation(line: 155, column: 2, scope: !977)
!979 = !DILocation(line: 155, column: 2, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !521, line: 155, column: 2)
!981 = !DILocation(line: 157, column: 9, scope: !968)
!982 = !DILocation(line: 151, column: 16, scope: !968)
!983 = !DILocation(line: 158, column: 2, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !521, line: 158, column: 2)
!985 = distinct !DILexicalBlock(scope: !968, file: !521, line: 158, column: 2)
!986 = !DILocation(line: 158, column: 2, scope: !985)
!987 = !DILocation(line: 158, column: 2, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !521, line: 158, column: 2)
!989 = !DILocation(line: 159, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !968, file: !521, line: 159, column: 6)
!991 = !DILocation(line: 159, column: 22, scope: !990)
!992 = !DILocation(line: 159, column: 6, scope: !968)
!993 = !DILocation(line: 160, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !521, line: 159, column: 28)
!995 = !DILocation(line: 160, column: 12, scope: !994)
!996 = !DILocalVariable(name: "wq", arg: 1, scope: !997, file: !763, line: 99, type: !766)
!997 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !763, file: !763, line: 99, type: !998, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !766}
!1000 = !{!996, !1001, !1002, !1003}
!1001 = !DILocalVariable(name: "flags", scope: !997, file: !763, line: 101, type: !48)
!1002 = !DILocalVariable(name: "curr", scope: !997, file: !763, line: 102, type: !85)
!1003 = !DILocalVariable(name: "tmp", scope: !997, file: !763, line: 102, type: !85)
!1004 = !DILocation(line: 99, column: 40, scope: !997, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 161, column: 3, scope: !994)
!1006 = !DILocation(line: 104, column: 10, scope: !997, inlinedAt: !1005)
!1007 = !DILocation(line: 101, column: 16, scope: !997, inlinedAt: !1005)
!1008 = !DILocation(line: 105, column: 2, scope: !1009, inlinedAt: !1005)
!1009 = distinct !DILexicalBlock(scope: !997, file: !763, line: 105, column: 2)
!1010 = !DILocation(line: 102, column: 25, scope: !997, inlinedAt: !1005)
!1011 = !DILocation(line: 105, column: 2, scope: !1012, inlinedAt: !1005)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !763, line: 105, column: 2)
!1013 = !DILocation(line: 102, column: 32, scope: !997, inlinedAt: !1005)
!1014 = !DILocation(line: 106, column: 24, scope: !1012, inlinedAt: !1005)
!1015 = !DILocation(line: 106, column: 3, scope: !1012, inlinedAt: !1005)
!1016 = distinct !{!1016, !1017, !1018}
!1017 = !DILocation(line: 105, column: 2, scope: !1009)
!1018 = !DILocation(line: 106, column: 30, scope: !1009)
!1019 = !DILocation(line: 107, column: 2, scope: !997, inlinedAt: !1005)
!1020 = !DILocation(line: 108, column: 1, scope: !997, inlinedAt: !1005)
!1021 = !DILocation(line: 162, column: 2, scope: !994)
!1022 = !DILocation(line: 163, column: 2, scope: !968)
!1023 = !DILocation(line: 164, column: 1, scope: !968)
!1024 = !DILocation(line: 196, column: 2, scope: !2)
!1025 = !DILocation(line: 196, column: 10, scope: !2)
!1026 = !DILocation(line: 197, column: 2, scope: !2)
!1027 = !DILocation(line: 198, column: 2, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 198, column: 2)
!1029 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!1030 = !DILocation(line: 199, column: 2, scope: !2)
!1031 = !DILocation(line: 200, column: 1, scope: !2)
