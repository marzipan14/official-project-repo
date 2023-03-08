; ModuleID = '/root/.unikraft/libs/pthread-embedded/pte_osal.c'
source_filename = "/root/.unikraft/libs/pthread-embedded/pte_osal.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, {}*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, {}*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.0 }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
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
%struct.anon.0 = type { %struct.uk_waitq_entry* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.pte_thread_data_t = type { i32 (i8*)*, i8*, %struct.uk_thread*, i8*, %struct.uk_semaphore, %struct.uk_semaphore, i32 }
%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }
%struct.timeb = type { i64, i16, i16, i16 }

@__uk_inittab39_pthread_initcall = internal constant i32 ()* @pthread_initcall, section ".uk_inittab39", align 8, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"Could not init global TLS\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Could not init TLS\00", align 1
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not allocate TLS\0A\00", align 1
@uk_pr_err.__str = internal global [20 x i8] c"libpthread-embedded\00", section ".data_shared", align 16, !dbg !494
@uk_pr_err.__str.4 = internal global [11 x i8] c"pte_osal.c\00", section ".data_shared", align 1, !dbg !516
@.str.5 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@uk_pr_crit.__str = internal global [20 x i8] c"libpthread-embedded\00", section ".data_shared", align 16, !dbg !521
@uk_pr_crit.__str.7 = internal global [11 x i8] c"pte_osal.c\00", section ".data_shared", align 1, !dbg !527
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@wq_entries = external dso_local global [32 x %struct.uk_waitq_entry], align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"m->lock_count > 0\00", align 1
@__A_VARIABLE = internal global i32 0
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()** @__uk_inittab39_pthread_initcall to i8*)], section "llvm.metadata"

; Function Attrs: noredzone nounwind
define internal i32 @pthread_initcall() #0 !dbg !539 {
  tail call void (i8*, ...) @uk_pr_debug(i8* undef) #9, !dbg !541
  %1 = tail call i32 @pthread_init() #10, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  ret i32 %1, !dbg !543
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osInit() local_unnamed_addr #0 !dbg !544 {
  %1 = tail call i32 @pteTlsGlobalInit(i32 32) #10, !dbg !553
  %2 = icmp eq i32 %1, 0, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %2, label %4, label %3, !dbg !556

; <label>:3:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9, !dbg !557
  br label %21, !dbg !559

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @calloc(i64 1, i64 88) #10, !dbg !560
  %6 = icmp eq i8* %5, null, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %6, label %21, label %7, !dbg !564

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @pteTlsThreadInit() #10, !dbg !565
  %9 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !566
  %10 = bitcast i8* %9 to i8**, !dbg !566
  store i8* %8, i8** %10, align 8, !dbg !567, !tbaa !568
  %11 = icmp eq i8* %8, null, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %11, label %12, label %13, !dbg !579

; <label>:12:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !580
  tail call void @free(i8* nonnull %5) #10, !dbg !582
  br label %21, !dbg !583

; <label>:13:                                     ; preds = %7
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !584, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  %15 = and i64 %14, -65536, !dbg !603
  %16 = inttoptr i64 %15 to %struct.uk_thread**, !dbg !604
  %17 = load %struct.uk_thread*, %struct.uk_thread** %16, align 65536, !dbg !606, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  %18 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %17, i64 0, i32 10, !dbg !619
  store i8* %5, i8** %18, align 8, !dbg !620, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %19 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !626
  %20 = bitcast i8* %19 to %struct.uk_thread**, !dbg !626
  store %struct.uk_thread* %17, %struct.uk_thread** %20, align 8, !dbg !627, !tbaa !628
  br label %21, !dbg !629

; <label>:21:                                     ; preds = %4, %13, %12, %3
  %22 = phi i32 [ %1, %3 ], [ 1, %12 ], [ 0, %13 ], [ 1, %4 ], !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  ret i32 %22, !dbg !632
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i32 @pteTlsGlobalInit(i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) unnamed_addr #4 !dbg !496 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !634
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !634
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !636
  call void @llvm.va_start(i8* nonnull %3), !dbg !636
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_err.__str.4, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !637
  call void @llvm.va_end(i8* nonnull %3), !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  ret void, !dbg !641
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @pteTlsThreadInit() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_kill(%struct.uk_thread*, i32) local_unnamed_addr #0 !dbg !642 {
  %3 = tail call i32 @uk_sig_thread_kill(%struct.uk_thread* %0, i32 %1) #10, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  ret i32 %3, !dbg !653
}

; Function Attrs: noredzone
declare dso_local i32 @uk_sig_thread_kill(%struct.uk_thread*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCreate(i32 (i8*)*, i32, i32, i8*, %struct.uk_thread** nocapture) local_unnamed_addr #0 !dbg !654 {
  %6 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !670, !tbaa !607
  %7 = icmp eq %struct.uk_alloc* %6, null, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %7, label %8, label %10, !dbg !680, !prof !681

; <label>:8:                                      ; preds = %5
  %9 = tail call i32* @__errno() #10, !dbg !682
  store i32 12, i32* %9, align 4, !dbg !684, !tbaa !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br label %43, !dbg !689

; <label>:10:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  %11 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %6, i64 0, i32 0, !dbg !699
  %12 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %11, align 8, !dbg !699, !tbaa !607
  %13 = tail call i8* %12(%struct.uk_alloc* nonnull %6, i64 88) #10, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %14 = icmp eq i8* %13, null, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %14, label %43, label %15, !dbg !689

; <label>:15:                                     ; preds = %10
  %16 = bitcast i8* %13 to i32 (i8*)**, !dbg !705
  store i32 (i8*)* %0, i32 (i8*)** %16, align 8, !dbg !706, !tbaa !707
  %17 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !708
  %18 = bitcast i8* %17 to i8**, !dbg !708
  store i8* %3, i8** %18, align 8, !dbg !709, !tbaa !710
  %19 = tail call i8* @pteTlsThreadInit() #10, !dbg !711
  %20 = getelementptr inbounds i8, i8* %13, i64 24, !dbg !712
  %21 = bitcast i8* %20 to i8**, !dbg !712
  store i8* %19, i8** %21, align 8, !dbg !713, !tbaa !568
  %22 = icmp eq i8* %19, null, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %22, label %23, label %24, !dbg !716

; <label>:23:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !717
  tail call void @free(i8* nonnull %13) #10, !dbg !719
  br label %43, !dbg !720

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %13, i64 32, !dbg !721
  %26 = bitcast i8* %25 to %struct.uk_semaphore*, !dbg !721
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull %26, i64 0) #10, !dbg !722
  %27 = getelementptr inbounds i8, i8* %13, i64 56, !dbg !723
  %28 = bitcast i8* %27 to %struct.uk_semaphore*, !dbg !723
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull %28, i64 0) #10, !dbg !724
  %29 = getelementptr inbounds i8, i8* %13, i64 80, !dbg !725
  %30 = bitcast i8* %29 to i32*, !dbg !725
  store i32 0, i32* %30, align 8, !dbg !726, !tbaa !727
  %31 = tail call %struct.uk_sched* @uk_sched_get_default() #10, !dbg !741
  %32 = tail call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %31, i8* null, %struct.uk_thread_attr* null, void (i8*)* nonnull @uk_stub_thread_entry, i8* nonnull %13) #10, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  %33 = getelementptr inbounds i8, i8* %13, i64 16, !dbg !744
  %34 = bitcast i8* %33 to %struct.uk_thread**, !dbg !744
  store %struct.uk_thread* %32, %struct.uk_thread** %34, align 8, !dbg !744, !tbaa !628
  %35 = icmp eq %struct.uk_thread* %32, null, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %35, label %36, label %38, !dbg !747

; <label>:36:                                     ; preds = %24
  %37 = load i8*, i8** %21, align 8, !dbg !748, !tbaa !568
  tail call void @pteTlsThreadDestroy(i8* %37) #10, !dbg !750
  tail call void @free(i8* nonnull %13) #10, !dbg !751
  br label %43, !dbg !752

; <label>:38:                                     ; preds = %24
  tail call void @uk_thread_inherit_signal_mask(%struct.uk_thread* nonnull %32) #10, !dbg !753
  %39 = load %struct.uk_thread*, %struct.uk_thread** %34, align 8, !dbg !754, !tbaa !628
  %40 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 10, !dbg !758
  store i8* %13, i8** %40, align 8, !dbg !759, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %41 = ptrtoint %struct.uk_thread* %39 to i64, !dbg !761
  %42 = bitcast %struct.uk_thread** %4 to i64*, !dbg !762
  store i64 %41, i64* %42, align 8, !dbg !762, !tbaa !607
  br label %43, !dbg !763

; <label>:43:                                     ; preds = %10, %8, %38, %36, %23
  %44 = phi i32 [ 1, %23 ], [ 1, %36 ], [ 0, %38 ], [ 1, %8 ], [ 1, %10 ], !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  ret i32 %44, !dbg !765
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @uk_stub_thread_entry(i8*) #0 !dbg !766 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #8, !dbg !779, !srcloc !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  %2 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !783
  %3 = bitcast i8* %2 to %struct.uk_semaphore*, !dbg !783
  tail call fastcc void @uk_semaphore_down(%struct.uk_semaphore* nonnull %3) #9, !dbg !784
  %4 = bitcast i8* %0 to i32 (i8*)**, !dbg !785
  %5 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !785, !tbaa !707
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !786
  %7 = bitcast i8* %6 to i8**, !dbg !786
  %8 = load i8*, i8** %7, align 8, !dbg !786, !tbaa !710
  %9 = tail call i32 %5(i8* %8) #10, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  ret void, !dbg !788
}

; Function Attrs: noredzone
declare dso_local void @pteTlsThreadDestroy(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @uk_thread_inherit_signal_mask(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadStart(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !789 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !811
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !811
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !811, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !830
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 4, i32 0, !dbg !832
  %7 = load i64, i64* %6, align 8, !dbg !833, !tbaa !834
  %8 = add nsw i64 %7, 1, !dbg !833
  store i64 %8, i64* %6, align 8, !dbg !833, !tbaa !834
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !848
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 4, i32 1, i32 0, !dbg !850
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !850, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %12, label %20, label %13, !dbg !854

; <label>:13:                                     ; preds = %1, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !854
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !854, !tbaa !856
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !860
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !860, !tbaa !861
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #10, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %19, label %20, label %13, !dbg !854, !llvm.loop !863

; <label>:20:                                     ; preds = %13, %1
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #10, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #10, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  ret i32 0, !dbg !870
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadDelete(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !871 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !880
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !880
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !880, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  %5 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 3, !dbg !885
  %6 = load i8*, i8** %5, align 8, !dbg !885, !tbaa !568
  tail call void @pteTlsThreadDestroy(i8* %6) #10, !dbg !886
  %7 = bitcast %struct.pte_thread_data_t* %4 to i8*, !dbg !887
  tail call void @free(i8* %7) #10, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  ret i32 0, !dbg !889
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadExitAndDelete(%struct.uk_thread*) local_unnamed_addr #0 !dbg !890 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 9, !dbg !894
  %3 = load %struct.uk_sched*, %struct.uk_sched** %2, align 8, !dbg !894, !tbaa !896
  %4 = icmp eq %struct.uk_sched* %3, null, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %4, label %6, label %5, !dbg !898

; <label>:5:                                      ; preds = %1
  tail call void @uk_sched_thread_kill(%struct.uk_sched* nonnull %3, %struct.uk_thread* nonnull %0) #10, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br label %6, !dbg !908

; <label>:6:                                      ; preds = %1, %5
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !915
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !915
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !915, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 3, !dbg !920
  %11 = load i8*, i8** %10, align 8, !dbg !920, !tbaa !568
  tail call void @pteTlsThreadDestroy(i8* %11) #10, !dbg !921
  %12 = bitcast %struct.pte_thread_data_t* %9 to i8*, !dbg !922
  tail call void @free(i8* %12) #10, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  ret i32 0, !dbg !925
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @pte_osThreadExit() local_unnamed_addr #5 !dbg !926 {
  %1 = tail call fastcc %struct.pte_thread_data_t* @current_ptd() #9, !dbg !929
  %2 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %1, i64 0, i32 6, !dbg !931
  store i32 1, i32* %2, align 8, !dbg !932, !tbaa !727
  tail call void @uk_sched_thread_exit() #11, !dbg !933
  unreachable
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pte_thread_data_t* @current_ptd() unnamed_addr #0 !dbg !934 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !944, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  %2 = and i64 %1, -65536, !dbg !950
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !951
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !953, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  %5 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %4, i64 0, i32 10, !dbg !958
  %6 = bitcast i8** %5 to %struct.pte_thread_data_t**, !dbg !958
  %7 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %6, align 8, !dbg !958, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  ret %struct.pte_thread_data_t* %7, !dbg !961
}

; Function Attrs: noredzone noreturn
declare dso_local void @uk_sched_thread_exit() local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadWaitForEnd(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !962 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !972
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !972
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !972, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !977, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  %6 = and i64 %5, -65536, !dbg !984
  %7 = inttoptr i64 %6 to %struct.uk_thread**, !dbg !985
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 65536, !dbg !987, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %9 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %8, i64 0, i32 10, !dbg !992
  %10 = bitcast i8** %9 to %struct.pte_thread_data_t**, !dbg !992
  %11 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %10, align 8, !dbg !992, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %12 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 6, !dbg !998
  %13 = load i32, i32* %12, align 8, !dbg !998, !tbaa !727
  %14 = icmp eq i32 %13, 0, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %14, label %15, label %18, !dbg !1002

; <label>:15:                                     ; preds = %1
  %16 = icmp eq %struct.pte_thread_data_t* %11, null
  %17 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %11, i64 0, i32 5, i32 0
  br label %22, !dbg !1002

; <label>:18:                                     ; preds = %38, %1
  %19 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 2, !dbg !1003
  %20 = load %struct.uk_thread*, %struct.uk_thread** %19, align 8, !dbg !1003, !tbaa !628
  %21 = tail call i32 @uk_thread_wait(%struct.uk_thread* %20) #10, !dbg !1003
  br label %43, !dbg !1005

; <label>:22:                                     ; preds = %15, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %16, label %26, label %23, !dbg !1006

; <label>:23:                                     ; preds = %22
  %24 = load i64, i64* %17, align 8, !dbg !1008, !tbaa !1009
  %25 = icmp sgt i64 %24, 0, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  br i1 %25, label %43, label %26, !dbg !1011

; <label>:26:                                     ; preds = %22, %23
  %27 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1012, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  %28 = and i64 %27, -65536, !dbg !1023
  %29 = inttoptr i64 %28 to %struct.uk_thread**, !dbg !1024
  %30 = load %struct.uk_thread*, %struct.uk_thread** %29, align 65536, !dbg !1026, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  %31 = icmp eq %struct.uk_thread* %30, null, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %31, label %32, label %33, !dbg !1032, !prof !681

; <label>:32:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1033
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1033
  unreachable

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %30, i64 0, i32 9, !dbg !1035
  %35 = load %struct.uk_sched*, %struct.uk_sched** %34, align 8, !dbg !1035, !tbaa !896
  %36 = icmp eq %struct.uk_sched* %35, null, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %36, label %37, label %38, !dbg !1040, !prof !681

; <label>:37:                                     ; preds = %33
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1041
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1041
  unreachable

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %35, i64 0, i32 0, !dbg !1043
  %40 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %39, align 8, !dbg !1043, !tbaa !1044
  tail call void %40(%struct.uk_sched* nonnull %35) #10, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %41 = load i32, i32* %12, align 8, !dbg !998, !tbaa !727
  %42 = icmp eq i32 %41, 0, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %42, label %22, label %18, !dbg !1002, !llvm.loop !1050

; <label>:43:                                     ; preds = %23, %18
  %44 = phi i32 [ 0, %18 ], [ 4, %23 ], !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  ret i32 %44, !dbg !1054
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_wait(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCancel(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1055 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1064
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !1064
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !1064, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1072
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 0, !dbg !1074
  %7 = load i64, i64* %6, align 8, !dbg !1075, !tbaa !834
  %8 = add nsw i64 %7, 1, !dbg !1075
  store i64 %8, i64* %6, align 8, !dbg !1075, !tbaa !834
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1079
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 1, i32 0, !dbg !1081
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !1081, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br i1 %12, label %20, label %13, !dbg !1083

; <label>:13:                                     ; preds = %1, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !1083
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1083, !tbaa !856
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !1085
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !1085, !tbaa !861
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #10, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br i1 %19, label %20, label %13, !dbg !1083, !llvm.loop !863

; <label>:20:                                     ; preds = %13, %1
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #10, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #10, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  ret i32 0, !dbg !1091
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCheckCancel(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1092 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1101
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !1101
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !1101, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %5 = icmp eq %struct.pte_thread_data_t* %4, null, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br i1 %5, label %10, label %6, !dbg !1108

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 0, !dbg !1109
  %8 = load i64, i64* %7, align 8, !dbg !1109, !tbaa !1009
  %9 = icmp sgt i64 %8, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %9, label %11, label %10, !dbg !1111

; <label>:10:                                     ; preds = %1, %6
  br label %11, !dbg !1112

; <label>:11:                                     ; preds = %6, %10
  %12 = phi i32 [ 0, %10 ], [ 4, %6 ], !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  ret i32 %12, !dbg !1115
}

; Function Attrs: noredzone nounwind
define dso_local %struct.uk_thread* @pte_osThreadGetHandle() local_unnamed_addr #0 !dbg !1116 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1121, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %2 = and i64 %1, -65536, !dbg !1127
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !1128
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !1130, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  ret %struct.uk_thread* %4, !dbg !1133
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadGetPriority(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1134 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1147
  %4 = bitcast i8** %3 to %struct.pte_thread_data_t**, !dbg !1147
  %5 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %4, align 8, !dbg !1147, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  %6 = bitcast i32* %2 to i8*, !dbg !1152
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !1152
  %7 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %5, i64 0, i32 2, !dbg !1153
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 8, !dbg !1153, !tbaa !628
  %9 = call i32 @uk_thread_get_prio(%struct.uk_thread* %8, i32* nonnull %2) #10, !dbg !1153
  %10 = icmp eq i32 %9, 0, !dbg !1156
  %11 = select i1 %10, i32 0, i32 2, !dbg !1156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  ret i32 %11, !dbg !1158
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_get_prio(%struct.uk_thread*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadSetPriority(%struct.uk_thread* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1159 {
  %3 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1173
  %4 = bitcast i8** %3 to %struct.pte_thread_data_t**, !dbg !1173
  %5 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %4, align 8, !dbg !1173, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %5, i64 0, i32 2, !dbg !1178
  %7 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !1178, !tbaa !628
  %8 = tail call i32 @uk_thread_set_prio(%struct.uk_thread* %7, i32 %1) #10, !dbg !1178
  %9 = icmp eq i32 %8, 0, !dbg !1180
  %10 = select i1 %9, i32 0, i32 2, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  ret i32 %10, !dbg !1181
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_set_prio(%struct.uk_thread*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pte_osThreadSleep(i32) local_unnamed_addr #0 !dbg !1182 {
  %2 = zext i32 %0 to i64, !dbg !1189
  %3 = mul nuw nsw i64 %2, 1000000, !dbg !1189
  tail call void @uk_sched_thread_sleep(i64 %3) #10, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  ret void, !dbg !1192
}

; Function Attrs: noredzone
declare dso_local void @uk_sched_thread_sleep(i64) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @pte_osThreadGetMinPriority() local_unnamed_addr #7 !dbg !1193 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  ret i32 0, !dbg !1194
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @pte_osThreadGetMaxPriority() local_unnamed_addr #7 !dbg !1195 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  ret i32 255, !dbg !1196
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @pte_osThreadGetDefaultPriority() local_unnamed_addr #7 !dbg !1197 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  ret i32 127, !dbg !1198
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexCreate(%struct.uk_mutex**) local_unnamed_addr #0 !dbg !1199 {
  %2 = icmp eq %struct.uk_mutex** %0, null, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %2, label %16, label %3, !dbg !1217

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1218, !tbaa !607
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br i1 %5, label %6, label %8, !dbg !1223, !prof !681

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #10, !dbg !1224
  store i32 12, i32* %7, align 4, !dbg !1225, !tbaa !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br label %16, !dbg !1228

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 0, !dbg !1233
  %10 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %9, align 8, !dbg !1233, !tbaa !607
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %4, i64 32) #10, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %12 = icmp eq i8* %11, null, !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %12, label %16, label %13, !dbg !1228

; <label>:13:                                     ; preds = %8
  %14 = bitcast i8* %11 to %struct.uk_mutex*, !dbg !1239
  tail call void @uk_mutex_init(%struct.uk_mutex* %14) #10, !dbg !1241
  %15 = bitcast %struct.uk_mutex** %0 to i8**, !dbg !1242
  store i8* %11, i8** %15, align 8, !dbg !1242, !tbaa !607
  br label %16, !dbg !1243

; <label>:16:                                     ; preds = %8, %6, %1, %13
  %17 = phi i32 [ 0, %13 ], [ 5, %1 ], [ 1, %6 ], [ 1, %8 ], !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  ret i32 %17, !dbg !1245
}

; Function Attrs: noredzone
declare dso_local void @uk_mutex_init(%struct.uk_mutex*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexDelete(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1246 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  br i1 %2, label %5, label %3, !dbg !1254

; <label>:3:                                      ; preds = %1
  %4 = bitcast %struct.uk_mutex* %0 to i8*, !dbg !1255
  tail call void @free(i8* %4) #10, !dbg !1256
  br label %5, !dbg !1257

; <label>:5:                                      ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ 5, %1 ], !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  ret i32 %6, !dbg !1259
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1260 {
  %2 = alloca i32, align 4
  %3 = icmp eq %struct.uk_mutex* %0, null, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %3, label %120, label %4, !dbg !1287

; <label>:4:                                      ; preds = %1
  %5 = bitcast i32* %2 to i8*, !dbg !1290
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !1290
  %6 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !1291
  %7 = load i32, i32* %6, align 8, !dbg !1291, !tbaa !1292
  store volatile i32 %7, i32* %2, align 4, !dbg !1282, !tbaa !685
  %8 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !1294
  %9 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !1294, !tbaa !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1299, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  %11 = and i64 %10, -65536, !dbg !1305
  %12 = inttoptr i64 %11 to %struct.uk_thread**, !dbg !1306
  %13 = load %struct.uk_thread*, %struct.uk_thread** %12, align 65536, !dbg !1308, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  %14 = icmp eq %struct.uk_thread* %9, %13
  %15 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0
  br label %17, !dbg !1311

; <label>:17:                                     ; preds = %117, %4
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1312, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1320, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  %20 = and i64 %19, -65536, !dbg !1330
  %21 = or i64 %20, 4097, !dbg !1330
  %22 = add nsw i64 %21, -1, !dbg !1330
  %23 = inttoptr i64 %22 to i32*, !dbg !1331
  %24 = load i32, i32* %23, align 4096, !dbg !1332, !tbaa !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  %25 = sext i32 %24 to i64, !dbg !1334
  %26 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, !dbg !1334
  %27 = bitcast %struct.uk_waitq_entry* %26 to i8*, !dbg !1334
  %28 = tail call i8* @memset(i8* nonnull %27, i32 0, i64 24) #10, !dbg !1334
  %29 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1335, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  %30 = and i64 %29, -65536, !dbg !1341
  %31 = inttoptr i64 %30 to i64*, !dbg !1342
  %32 = load i64, i64* %31, align 65536, !dbg !1342, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  %33 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, i32 1, !dbg !1334
  %34 = bitcast %struct.uk_thread** %33 to i64*, !dbg !1334
  store i64 %32, i64* %34, align 8, !dbg !1334, !tbaa !861
  %35 = load volatile i32, i32* %2, align 4, !dbg !1345, !tbaa !685
  %36 = icmp eq i32 %35, 0, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %36, label %110, label %37, !dbg !1348

; <label>:37:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %14, label %110, label %38, !dbg !1349

; <label>:38:                                     ; preds = %37
  %39 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %26, i64 0, i32 0
  %40 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, i32 2, i32 0
  br label %41, !dbg !1350

; <label>:41:                                     ; preds = %77, %38
  %42 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1350, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %43 = and i64 %42, -65536, !dbg !1359
  %44 = inttoptr i64 %43 to %struct.uk_thread**, !dbg !1360
  %45 = load %struct.uk_thread*, %struct.uk_thread** %44, align 65536, !dbg !1362, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %46 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1365
  %47 = load i32, i32* %39, align 8, !dbg !1376, !tbaa !1378
  %48 = icmp eq i32 %47, 0, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  br i1 %48, label %49, label %51, !dbg !1380

; <label>:49:                                     ; preds = %41
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %40, align 8, !dbg !1381, !tbaa !856
  %50 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %15, align 8, !dbg !1381, !tbaa !1384
  store %struct.uk_waitq_entry* %26, %struct.uk_waitq_entry** %50, align 8, !dbg !1381, !tbaa !607
  store %struct.uk_waitq_entry** %40, %struct.uk_waitq_entry*** %15, align 8, !dbg !1381, !tbaa !1384
  store i32 1, i32* %39, align 8, !dbg !1385, !tbaa !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br label %51, !dbg !1386

; <label>:51:                                     ; preds = %49, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  %52 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 6, !dbg !1397
  store i64 0, i64* %52, align 8, !dbg !1398, !tbaa !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  %53 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 5, !dbg !1406
  %54 = load i32, i32* %53, align 8, !dbg !1407, !tbaa !1408
  %55 = and i32 %54, -2, !dbg !1407
  store i32 %55, i32* %53, align 8, !dbg !1407, !tbaa !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  %56 = icmp eq %struct.uk_thread* %45, null, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %56, label %57, label %58, !dbg !1418, !prof !681

; <label>:57:                                     ; preds = %51
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1419
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1419
  unreachable

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 9, !dbg !1421
  %60 = load %struct.uk_sched*, %struct.uk_sched** %59, align 8, !dbg !1421, !tbaa !896
  %61 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %60, i64 0, i32 3, !dbg !1422
  %62 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %61, align 8, !dbg !1422, !tbaa !1423
  tail call void %62(%struct.uk_sched* %60, %struct.uk_thread* nonnull %45) #10, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  tail call void @ukplat_lcpu_restore_irqf(i64 %46) #10, !dbg !1426
  %63 = load volatile i32, i32* %2, align 4, !dbg !1427, !tbaa !685
  %64 = icmp eq i32 %63, 0, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br i1 %64, label %80, label %65, !dbg !1430

; <label>:65:                                     ; preds = %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  %66 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1432, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  %67 = and i64 %66, -65536, !dbg !1439
  %68 = inttoptr i64 %67 to %struct.uk_thread**, !dbg !1440
  %69 = load %struct.uk_thread*, %struct.uk_thread** %68, align 65536, !dbg !1442, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  %70 = icmp eq %struct.uk_thread* %69, null, !dbg !1445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %70, label %71, label %72, !dbg !1446, !prof !681

; <label>:71:                                     ; preds = %65
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1447
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1447
  unreachable

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %69, i64 0, i32 9, !dbg !1448
  %74 = load %struct.uk_sched*, %struct.uk_sched** %73, align 8, !dbg !1448, !tbaa !896
  %75 = icmp eq %struct.uk_sched* %74, null, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %75, label %76, label %77, !dbg !1451, !prof !681

; <label>:76:                                     ; preds = %72
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1452
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1452
  unreachable

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %74, i64 0, i32 0, !dbg !1453
  %79 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %78, align 8, !dbg !1453, !tbaa !1044
  tail call void %79(%struct.uk_sched* nonnull %74) #10, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br label %41, !dbg !1456, !llvm.loop !1457

; <label>:80:                                     ; preds = %58
  %81 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1460
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %45) #10, !dbg !1461
  %82 = load i32, i32* %39, align 8, !dbg !1475, !tbaa !1378
  %83 = icmp eq i32 %82, 0, !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  br i1 %83, label %109, label %84, !dbg !1477

; <label>:84:                                     ; preds = %80
  %85 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1478, !tbaa !852
  %86 = icmp eq %struct.uk_waitq_entry* %85, %26, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br i1 %86, label %87, label %91, !dbg !1479

; <label>:87:                                     ; preds = %84
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %40, align 8, !dbg !1480, !tbaa !856
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %16, align 8, !dbg !1480, !tbaa !852
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  br i1 %89, label %90, label %108, !dbg !1484

; <label>:90:                                     ; preds = %87
  store %struct.uk_waitq_entry** %16, %struct.uk_waitq_entry*** %15, align 8, !dbg !1480, !tbaa !1384
  br label %107, !dbg !1480

; <label>:91:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  %92 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %85, i64 0, i32 2, i32 0, !dbg !1485
  %93 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %92, align 8, !dbg !1485, !tbaa !856
  %94 = icmp eq %struct.uk_waitq_entry* %93, %26, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br i1 %94, label %102, label %95, !dbg !1485

; <label>:95:                                     ; preds = %91, %95
  %96 = phi %struct.uk_waitq_entry* [ %98, %95 ], [ %93, %91 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  %97 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %96, i64 0, i32 2, i32 0, !dbg !1485
  %98 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %97, align 8, !dbg !1485, !tbaa !856
  %99 = icmp eq %struct.uk_waitq_entry* %98, %26, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br i1 %99, label %100, label %95, !dbg !1485, !llvm.loop !1486

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %96, i64 0, i32 2, i32 0, !dbg !1485
  br label %102, !dbg !1488

; <label>:102:                                    ; preds = %100, %91
  %103 = phi %struct.uk_waitq_entry** [ %92, %91 ], [ %101, %100 ], !dbg !1485
  %104 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %40, align 8, !dbg !1488, !tbaa !856
  store %struct.uk_waitq_entry* %104, %struct.uk_waitq_entry** %103, align 8, !dbg !1488, !tbaa !856
  %105 = icmp eq %struct.uk_waitq_entry* %104, null, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %105, label %106, label %107, !dbg !1491

; <label>:106:                                    ; preds = %102
  store %struct.uk_waitq_entry** %103, %struct.uk_waitq_entry*** %15, align 8, !dbg !1488, !tbaa !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br label %107, !dbg !1488

; <label>:107:                                    ; preds = %102, %106, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %108, !dbg !1492

; <label>:108:                                    ; preds = %107, %87
  store i32 0, i32* %39, align 8, !dbg !1492, !tbaa !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br label %109, !dbg !1493

; <label>:109:                                    ; preds = %108, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  tail call void @ukplat_lcpu_restore_irqf(i64 %81) #10, !dbg !1495
  br label %110, !dbg !1496

; <label>:110:                                    ; preds = %17, %37, %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  %111 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1498
  %112 = load i32, i32* %6, align 8, !dbg !1500, !tbaa !1292
  %113 = icmp eq i32 %112, 0, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %113, label %118, label %114, !dbg !1503

; <label>:114:                                    ; preds = %110
  %115 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !1504, !tbaa !1295
  %116 = icmp eq %struct.uk_thread* %115, %13, !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br i1 %116, label %118, label %117, !dbg !1506

; <label>:117:                                    ; preds = %114
  tail call void @ukplat_lcpu_restore_irqf(i64 %111) #10, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br label %17, !dbg !1508, !llvm.loop !1509

; <label>:118:                                    ; preds = %110, %114
  %119 = add nsw i32 %112, 1, !dbg !1512
  store i32 %119, i32* %6, align 8, !dbg !1512, !tbaa !1292
  store %struct.uk_thread* %13, %struct.uk_thread** %8, align 8, !dbg !1513, !tbaa !1295
  tail call void @ukplat_lcpu_restore_irqf(i64 %111) #10, !dbg !1514
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  br label %120, !dbg !1516

; <label>:120:                                    ; preds = %1, %118
  %121 = phi i32 [ 0, %118 ], [ 5, %1 ], !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  ret i32 %121, !dbg !1518
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexTimedLock(%struct.uk_mutex* nocapture readnone, i32) local_unnamed_addr #0 !dbg !1519 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  ret i32 2, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1528 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !1532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %2, label %27, label %3, !dbg !1534

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1544
  %5 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !1546
  %6 = load i32, i32* %5, align 8, !dbg !1546, !tbaa !1292
  %7 = icmp slt i32 %6, 1, !dbg !1546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %7, label %8, label %9, !dbg !1549, !prof !681

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1550
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1550
  unreachable

; <label>:9:                                      ; preds = %3
  %10 = add nsw i32 %6, -1, !dbg !1552
  store i32 %10, i32* %5, align 8, !dbg !1552, !tbaa !1292
  %11 = icmp eq i32 %10, 0, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %11, label %12, label %26, !dbg !1555

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !1556
  store %struct.uk_thread* null, %struct.uk_thread** %13, align 8, !dbg !1558, !tbaa !1295
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1561
  %15 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0, !dbg !1563
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1563, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  %17 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %17, label %25, label %18, !dbg !1565

; <label>:18:                                     ; preds = %12, %18
  %19 = phi %struct.uk_waitq_entry* [ %21, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 2, i32 0, !dbg !1565
  %21 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %20, align 8, !dbg !1565, !tbaa !856
  %22 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 1, !dbg !1567
  %23 = load %struct.uk_thread*, %struct.uk_thread** %22, align 8, !dbg !1567, !tbaa !861
  tail call void @uk_thread_wake(%struct.uk_thread* %23) #10, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %24 = icmp eq %struct.uk_waitq_entry* %21, null, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %24, label %25, label %18, !dbg !1565, !llvm.loop !863

; <label>:25:                                     ; preds = %18, %12
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #10, !dbg !1569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  br label %26, !dbg !1571

; <label>:26:                                     ; preds = %9, %25
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #10, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br label %27, !dbg !1574

; <label>:27:                                     ; preds = %1, %26
  %28 = phi i32 [ 0, %26 ], [ 5, %1 ], !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  ret i32 %28, !dbg !1576
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreCreate(i32, %struct.uk_semaphore**) local_unnamed_addr #0 !dbg !1577 {
  %3 = icmp eq %struct.uk_semaphore** %1, null, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  br i1 %3, label %18, label %4, !dbg !1590

; <label>:4:                                      ; preds = %2
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1591, !tbaa !607
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %6, label %7, label %9, !dbg !1596, !prof !681

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #10, !dbg !1597
  store i32 12, i32* %8, align 4, !dbg !1598, !tbaa !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br label %18, !dbg !1601

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  %10 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 0, !dbg !1606
  %11 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %10, align 8, !dbg !1606, !tbaa !607
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 24) #10, !dbg !1607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  %13 = icmp eq i8* %12, null, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br i1 %13, label %18, label %14, !dbg !1601

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %12 to %struct.uk_semaphore*, !dbg !1612
  %16 = sext i32 %0 to i64, !dbg !1614
  tail call void @uk_semaphore_init(%struct.uk_semaphore* %15, i64 %16) #10, !dbg !1615
  %17 = bitcast %struct.uk_semaphore** %1 to i8**, !dbg !1616
  store i8* %12, i8** %17, align 8, !dbg !1616, !tbaa !607
  br label %18, !dbg !1617

; <label>:18:                                     ; preds = %9, %7, %2, %14
  %19 = phi i32 [ 0, %14 ], [ 5, %2 ], [ 1, %7 ], [ 1, %9 ], !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  ret i32 %19, !dbg !1619
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreDelete(%struct.uk_semaphore*) local_unnamed_addr #0 !dbg !1620 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br i1 %2, label %11, label %3, !dbg !1628

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1629, !tbaa !607
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br i1 %5, label %6, label %7, !dbg !1645, !prof !681

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1646
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1646
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = bitcast %struct.uk_semaphore* %0 to i8*, !dbg !1648
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 5, !dbg !1651
  %10 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %9, align 8, !dbg !1651, !tbaa !607
  tail call void %10(%struct.uk_alloc* nonnull %4, i8* %8) #10, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  br label %11, !dbg !1655

; <label>:11:                                     ; preds = %1, %7
  %12 = phi i32 [ 0, %7 ], [ 5, %1 ], !dbg !1656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  ret i32 %12, !dbg !1657
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphorePost(%struct.uk_semaphore*, i32) local_unnamed_addr #0 !dbg !1658 {
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br i1 %3, label %27, label %4, !dbg !1669

; <label>:4:                                      ; preds = %2
  %5 = icmp sgt i32 %1, 0, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br i1 %5, label %6, label %27, !dbg !1675

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %9, !dbg !1675

; <label>:9:                                      ; preds = %24, %6
  %10 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1679
  %12 = load i64, i64* %7, align 8, !dbg !1681, !tbaa !834
  %13 = add nsw i64 %12, 1, !dbg !1681
  store i64 %13, i64* %7, align 8, !dbg !1681, !tbaa !834
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1685
  %15 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %8, align 8, !dbg !1687, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  %16 = icmp eq %struct.uk_waitq_entry* %15, null, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  br i1 %16, label %24, label %17, !dbg !1689

; <label>:17:                                     ; preds = %9, %17
  %18 = phi %struct.uk_waitq_entry* [ %20, %17 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 2, i32 0, !dbg !1689
  %20 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %19, align 8, !dbg !1689, !tbaa !856
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 1, !dbg !1691
  %22 = load %struct.uk_thread*, %struct.uk_thread** %21, align 8, !dbg !1691, !tbaa !861
  tail call void @uk_thread_wake(%struct.uk_thread* %22) #10, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  %23 = icmp eq %struct.uk_waitq_entry* %20, null, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  br i1 %23, label %24, label %17, !dbg !1689, !llvm.loop !863

; <label>:24:                                     ; preds = %17, %9
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #10, !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #10, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  %25 = add nuw nsw i32 %10, 1, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %26 = icmp eq i32 %25, %1, !dbg !1673
  br i1 %26, label %27, label %9, !dbg !1675, !llvm.loop !1699

; <label>:27:                                     ; preds = %24, %4, %2
  %28 = phi i32 [ 5, %2 ], [ 0, %4 ], [ 0, %24 ], !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  ret i32 %28, !dbg !1702
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32* readonly) local_unnamed_addr #0 !dbg !1703 {
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  br i1 %3, label %133, label %4, !dbg !1715

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  br i1 %5, label %131, label %6, !dbg !1718

; <label>:6:                                      ; preds = %4
  %7 = load i32, i32* %1, align 4, !dbg !1719, !tbaa !685
  %8 = zext i32 %7 to i64, !dbg !1719
  %9 = mul nuw nsw i64 %8, 1000000, !dbg !1719
  %10 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  %11 = add i64 %9, %10, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  %12 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %14 = icmp eq i64 %11, 0
  %15 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %16, !dbg !1749

; <label>:16:                                     ; preds = %120, %6
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1750, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1758, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  %19 = and i64 %18, -65536, !dbg !1764
  %20 = or i64 %19, 4097, !dbg !1764
  %21 = add nsw i64 %20, -1, !dbg !1764
  %22 = inttoptr i64 %21 to i32*, !dbg !1765
  %23 = load i32, i32* %22, align 4096, !dbg !1766, !tbaa !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  %24 = sext i32 %23 to i64, !dbg !1768
  %25 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, !dbg !1768
  %26 = bitcast %struct.uk_waitq_entry* %25 to i8*, !dbg !1768
  %27 = tail call i8* @memset(i8* nonnull %26, i32 0, i64 24) #10, !dbg !1768
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1769, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  %29 = and i64 %28, -65536, !dbg !1775
  %30 = inttoptr i64 %29 to i64*, !dbg !1776
  %31 = load i64, i64* %30, align 65536, !dbg !1776, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  %32 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, i32 1, !dbg !1768
  %33 = bitcast %struct.uk_thread** %32 to i64*, !dbg !1768
  store i64 %31, i64* %33, align 8, !dbg !1768, !tbaa !861
  %34 = load i64, i64* %12, align 8, !dbg !1779, !tbaa !834
  %35 = icmp sgt i64 %34, 0, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  br i1 %35, label %112, label %36, !dbg !1782

; <label>:36:                                     ; preds = %16
  %37 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %25, i64 0, i32 0
  %38 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, i32 2, i32 0
  br label %39, !dbg !1783

; <label>:39:                                     ; preds = %79, %36
  %40 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1783, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  %41 = and i64 %40, -65536, !dbg !1792
  %42 = inttoptr i64 %41 to %struct.uk_thread**, !dbg !1793
  %43 = load %struct.uk_thread*, %struct.uk_thread** %42, align 65536, !dbg !1795, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  %44 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1798
  %45 = load i32, i32* %37, align 8, !dbg !1803, !tbaa !1378
  %46 = icmp eq i32 %45, 0, !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br i1 %46, label %47, label %49, !dbg !1805

; <label>:47:                                     ; preds = %39
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %38, align 8, !dbg !1806, !tbaa !856
  %48 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %13, align 8, !dbg !1806, !tbaa !1384
  store %struct.uk_waitq_entry* %25, %struct.uk_waitq_entry** %48, align 8, !dbg !1806, !tbaa !607
  store %struct.uk_waitq_entry** %38, %struct.uk_waitq_entry*** %13, align 8, !dbg !1806, !tbaa !1384
  store i32 1, i32* %37, align 8, !dbg !1807, !tbaa !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  br label %49, !dbg !1808

; <label>:49:                                     ; preds = %47, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 6, !dbg !1813
  store i64 %11, i64* %50, align 8, !dbg !1814, !tbaa !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %51 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 5, !dbg !1818
  %52 = load i32, i32* %51, align 8, !dbg !1819, !tbaa !1408
  %53 = and i32 %52, -2, !dbg !1819
  store i32 %53, i32* %51, align 8, !dbg !1819, !tbaa !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  %54 = icmp eq %struct.uk_thread* %43, null, !dbg !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  br i1 %54, label %55, label %56, !dbg !1824, !prof !681

; <label>:55:                                     ; preds = %49
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1825
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1825
  unreachable

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 9, !dbg !1826
  %58 = load %struct.uk_sched*, %struct.uk_sched** %57, align 8, !dbg !1826, !tbaa !896
  %59 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %58, i64 0, i32 3, !dbg !1827
  %60 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %59, align 8, !dbg !1827, !tbaa !1423
  tail call void %60(%struct.uk_sched* %58, %struct.uk_thread* nonnull %43) #10, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  tail call void @ukplat_lcpu_restore_irqf(i64 %44) #10, !dbg !1830
  %61 = load i64, i64* %12, align 8, !dbg !1831, !tbaa !834
  %62 = icmp sgt i64 %61, 0, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %62, label %82, label %63, !dbg !1834

; <label>:63:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  br i1 %14, label %67, label %64, !dbg !1835

; <label>:64:                                     ; preds = %63
  %65 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1836
  %66 = icmp ult i64 %65, %11, !dbg !1837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  br i1 %66, label %67, label %82, !dbg !1838

; <label>:67:                                     ; preds = %64, %63
  %68 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1839, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  %69 = and i64 %68, -65536, !dbg !1846
  %70 = inttoptr i64 %69 to %struct.uk_thread**, !dbg !1847
  %71 = load %struct.uk_thread*, %struct.uk_thread** %70, align 65536, !dbg !1849, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1850
  %72 = icmp eq %struct.uk_thread* %71, null, !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1853
  br i1 %72, label %73, label %74, !dbg !1853, !prof !681

; <label>:73:                                     ; preds = %67
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1854
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1854
  unreachable

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %71, i64 0, i32 9, !dbg !1855
  %76 = load %struct.uk_sched*, %struct.uk_sched** %75, align 8, !dbg !1855, !tbaa !896
  %77 = icmp eq %struct.uk_sched* %76, null, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br i1 %77, label %78, label %79, !dbg !1858, !prof !681

; <label>:78:                                     ; preds = %74
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1859
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1859
  unreachable

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %76, i64 0, i32 0, !dbg !1860
  %81 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %80, align 8, !dbg !1860, !tbaa !1044
  tail call void %81(%struct.uk_sched* nonnull %76) #10, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br label %39, !dbg !1863, !llvm.loop !1864

; <label>:82:                                     ; preds = %64, %56
  %83 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1867
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %43) #10, !dbg !1868
  %84 = load i32, i32* %37, align 8, !dbg !1872, !tbaa !1378
  %85 = icmp eq i32 %84, 0, !dbg !1873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  br i1 %85, label %111, label %86, !dbg !1874

; <label>:86:                                     ; preds = %82
  %87 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1875, !tbaa !852
  %88 = icmp eq %struct.uk_waitq_entry* %87, %25, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br i1 %88, label %89, label %93, !dbg !1876

; <label>:89:                                     ; preds = %86
  %90 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %38, align 8, !dbg !1877, !tbaa !856
  store %struct.uk_waitq_entry* %90, %struct.uk_waitq_entry** %15, align 8, !dbg !1877, !tbaa !852
  %91 = icmp eq %struct.uk_waitq_entry* %90, null, !dbg !1877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  br i1 %91, label %92, label %110, !dbg !1878

; <label>:92:                                     ; preds = %89
  store %struct.uk_waitq_entry** %15, %struct.uk_waitq_entry*** %13, align 8, !dbg !1877, !tbaa !1384
  br label %109, !dbg !1877

; <label>:93:                                     ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  %94 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %87, i64 0, i32 2, i32 0, !dbg !1879
  %95 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %94, align 8, !dbg !1879, !tbaa !856
  %96 = icmp eq %struct.uk_waitq_entry* %95, %25, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  br i1 %96, label %104, label %97, !dbg !1879

; <label>:97:                                     ; preds = %93, %97
  %98 = phi %struct.uk_waitq_entry* [ %100, %97 ], [ %95, %93 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  %99 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %98, i64 0, i32 2, i32 0, !dbg !1879
  %100 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %99, align 8, !dbg !1879, !tbaa !856
  %101 = icmp eq %struct.uk_waitq_entry* %100, %25, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  br i1 %101, label %102, label %97, !dbg !1879, !llvm.loop !1486

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %98, i64 0, i32 2, i32 0, !dbg !1879
  br label %104, !dbg !1880

; <label>:104:                                    ; preds = %102, %93
  %105 = phi %struct.uk_waitq_entry** [ %94, %93 ], [ %103, %102 ], !dbg !1879
  %106 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %38, align 8, !dbg !1880, !tbaa !856
  store %struct.uk_waitq_entry* %106, %struct.uk_waitq_entry** %105, align 8, !dbg !1880, !tbaa !856
  %107 = icmp eq %struct.uk_waitq_entry* %106, null, !dbg !1880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  br i1 %107, label %108, label %109, !dbg !1881

; <label>:108:                                    ; preds = %104
  store %struct.uk_waitq_entry** %105, %struct.uk_waitq_entry*** %13, align 8, !dbg !1880, !tbaa !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br label %109, !dbg !1880

; <label>:109:                                    ; preds = %104, %108, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %110, !dbg !1882

; <label>:110:                                    ; preds = %109, %89
  store i32 0, i32* %37, align 8, !dbg !1882, !tbaa !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1883
  br label %111, !dbg !1883

; <label>:111:                                    ; preds = %110, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  tail call void @ukplat_lcpu_restore_irqf(i64 %83) #10, !dbg !1885
  br label %112, !dbg !1886

; <label>:112:                                    ; preds = %16, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %113 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1888
  %114 = load i64, i64* %12, align 8, !dbg !1890, !tbaa !834
  %115 = icmp sgt i64 %114, 0, !dbg !1892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br i1 %115, label %125, label %116, !dbg !1893

; <label>:116:                                    ; preds = %112
  br i1 %14, label %120, label %117, !dbg !1894

; <label>:117:                                    ; preds = %116
  %118 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1895
  %119 = icmp ult i64 %118, %11, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %119, label %120, label %121, !dbg !1897

; <label>:120:                                    ; preds = %117, %116
  tail call void @ukplat_lcpu_restore_irqf(i64 %113) #10, !dbg !1898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  br label %16, !dbg !1899, !llvm.loop !1900

; <label>:121:                                    ; preds = %117
  %122 = load i64, i64* %12, align 8, !dbg !1903, !tbaa !834
  %123 = icmp sgt i64 %122, 0, !dbg !1905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  br i1 %123, label %125, label %124, !dbg !1906

; <label>:124:                                    ; preds = %121
  tail call void @ukplat_lcpu_restore_irqf(i64 %113) #10, !dbg !1907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  br label %133, !dbg !1910

; <label>:125:                                    ; preds = %112, %121
  %126 = phi i64 [ %122, %121 ], [ %114, %112 ]
  %127 = add nsw i64 %126, -1, !dbg !1911
  store i64 %127, i64* %12, align 8, !dbg !1911, !tbaa !834
  tail call void @ukplat_lcpu_restore_irqf(i64 %113) #10, !dbg !1913
  %128 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1914
  %129 = sub i64 %128, %10, !dbg !1915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  %130 = icmp eq i64 %129, -1, !dbg !1917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  br i1 %130, label %133, label %132, !dbg !1910

; <label>:131:                                    ; preds = %4
  tail call fastcc void @uk_semaphore_down(%struct.uk_semaphore* nonnull %0) #9, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %132

; <label>:132:                                    ; preds = %125, %131
  br label %133, !dbg !1919

; <label>:133:                                    ; preds = %125, %124, %2, %132
  %134 = phi i32 [ 0, %132 ], [ 5, %2 ], [ 3, %124 ], [ 3, %125 ], !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  ret i32 %134, !dbg !1921
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @uk_semaphore_down(%struct.uk_semaphore*) unnamed_addr #4 !dbg !1922 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  br i1 %2, label %7, label %3, !dbg !1938, !prof !681

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %8, !dbg !1939

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !1942
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1942
  unreachable

; <label>:8:                                      ; preds = %3, %104
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1939, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1949, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  %11 = and i64 %10, -65536, !dbg !1955
  %12 = or i64 %11, 4097, !dbg !1955
  %13 = add nsw i64 %12, -1, !dbg !1955
  %14 = inttoptr i64 %13 to i32*, !dbg !1956
  %15 = load i32, i32* %14, align 4096, !dbg !1957, !tbaa !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  %16 = sext i32 %15 to i64, !dbg !1959
  %17 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, !dbg !1959
  %18 = bitcast %struct.uk_waitq_entry* %17 to i8*, !dbg !1959
  %19 = tail call i8* @memset(i8* nonnull %18, i32 0, i64 24) #10, !dbg !1959
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1960, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %21 = and i64 %20, -65536, !dbg !1966
  %22 = inttoptr i64 %21 to i64*, !dbg !1967
  %23 = load i64, i64* %22, align 65536, !dbg !1967, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1969
  %24 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 1, !dbg !1959
  %25 = bitcast %struct.uk_thread** %24 to i64*, !dbg !1959
  store i64 %23, i64* %25, align 8, !dbg !1959, !tbaa !861
  %26 = load i64, i64* %4, align 8, !dbg !1970, !tbaa !834
  %27 = icmp sgt i64 %26, 0, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  br i1 %27, label %100, label %28, !dbg !1973

; <label>:28:                                     ; preds = %8
  %29 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %17, i64 0, i32 0
  %30 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 2, i32 0
  br label %31, !dbg !1974

; <label>:31:                                     ; preds = %28, %67
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1974, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  %33 = and i64 %32, -65536, !dbg !1983
  %34 = inttoptr i64 %33 to %struct.uk_thread**, !dbg !1984
  %35 = load %struct.uk_thread*, %struct.uk_thread** %34, align 65536, !dbg !1986, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1989
  %37 = load i32, i32* %29, align 8, !dbg !1994, !tbaa !1378
  %38 = icmp eq i32 %37, 0, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %38, label %39, label %41, !dbg !1996

; <label>:39:                                     ; preds = %31
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %30, align 8, !dbg !1997, !tbaa !856
  %40 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %5, align 8, !dbg !1997, !tbaa !1384
  store %struct.uk_waitq_entry* %17, %struct.uk_waitq_entry** %40, align 8, !dbg !1997, !tbaa !607
  store %struct.uk_waitq_entry** %30, %struct.uk_waitq_entry*** %5, align 8, !dbg !1997, !tbaa !1384
  store i32 1, i32* %29, align 8, !dbg !1998, !tbaa !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br label %41, !dbg !1999

; <label>:41:                                     ; preds = %31, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2000
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 6, !dbg !2004
  store i64 0, i64* %42, align 8, !dbg !2005, !tbaa !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 5, !dbg !2009
  %44 = load i32, i32* %43, align 8, !dbg !2010, !tbaa !1408
  %45 = and i32 %44, -2, !dbg !2010
  store i32 %45, i32* %43, align 8, !dbg !2010, !tbaa !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  %46 = icmp eq %struct.uk_thread* %35, null, !dbg !2014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  br i1 %46, label %47, label %48, !dbg !2015, !prof !681

; <label>:47:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !2016
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2016
  unreachable

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 9, !dbg !2017
  %50 = load %struct.uk_sched*, %struct.uk_sched** %49, align 8, !dbg !2017, !tbaa !896
  %51 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %50, i64 0, i32 3, !dbg !2018
  %52 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %51, align 8, !dbg !2018, !tbaa !1423
  tail call void %52(%struct.uk_sched* %50, %struct.uk_thread* nonnull %35) #10, !dbg !2019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #10, !dbg !2021
  %53 = load i64, i64* %4, align 8, !dbg !2022, !tbaa !834
  %54 = icmp sgt i64 %53, 0, !dbg !2024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2025
  br i1 %54, label %70, label %55, !dbg !2025

; <label>:55:                                     ; preds = %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2026, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  %57 = and i64 %56, -65536, !dbg !2033
  %58 = inttoptr i64 %57 to %struct.uk_thread**, !dbg !2034
  %59 = load %struct.uk_thread*, %struct.uk_thread** %58, align 65536, !dbg !2036, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  %60 = icmp eq %struct.uk_thread* %59, null, !dbg !2039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  br i1 %60, label %61, label %62, !dbg !2040, !prof !681

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !2041
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2041
  unreachable

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %59, i64 0, i32 9, !dbg !2042
  %64 = load %struct.uk_sched*, %struct.uk_sched** %63, align 8, !dbg !2042, !tbaa !896
  %65 = icmp eq %struct.uk_sched* %64, null, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  br i1 %65, label %66, label %67, !dbg !2045, !prof !681

; <label>:66:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2046
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2046
  unreachable

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %64, i64 0, i32 0, !dbg !2047
  %69 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %68, align 8, !dbg !2047, !tbaa !1044
  tail call void %69(%struct.uk_sched* nonnull %64) #10, !dbg !2048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  br label %31, !dbg !2050, !llvm.loop !2051

; <label>:70:                                     ; preds = %48
  %71 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2054
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %35) #10, !dbg !2055
  %72 = load i32, i32* %29, align 8, !dbg !2059, !tbaa !1378
  %73 = icmp eq i32 %72, 0, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %73, label %99, label %74, !dbg !2061

; <label>:74:                                     ; preds = %70
  %75 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %6, align 8, !dbg !2062, !tbaa !852
  %76 = icmp eq %struct.uk_waitq_entry* %75, %17, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  br i1 %76, label %77, label %81, !dbg !2063

; <label>:77:                                     ; preds = %74
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2064, !tbaa !856
  store %struct.uk_waitq_entry* %78, %struct.uk_waitq_entry** %6, align 8, !dbg !2064, !tbaa !852
  %79 = icmp eq %struct.uk_waitq_entry* %78, null, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br i1 %79, label %80, label %98, !dbg !2065

; <label>:80:                                     ; preds = %77
  store %struct.uk_waitq_entry** %6, %struct.uk_waitq_entry*** %5, align 8, !dbg !2064, !tbaa !1384
  br label %97, !dbg !2064

; <label>:81:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  %82 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %75, i64 0, i32 2, i32 0, !dbg !2066
  %83 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %82, align 8, !dbg !2066, !tbaa !856
  %84 = icmp eq %struct.uk_waitq_entry* %83, %17, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br i1 %84, label %92, label %85, !dbg !2066

; <label>:85:                                     ; preds = %81, %85
  %86 = phi %struct.uk_waitq_entry* [ %88, %85 ], [ %83, %81 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  %87 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %86, i64 0, i32 2, i32 0, !dbg !2066
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %87, align 8, !dbg !2066, !tbaa !856
  %89 = icmp eq %struct.uk_waitq_entry* %88, %17, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br i1 %89, label %90, label %85, !dbg !2066, !llvm.loop !1486

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %86, i64 0, i32 2, i32 0, !dbg !2066
  br label %92, !dbg !2067

; <label>:92:                                     ; preds = %90, %81
  %93 = phi %struct.uk_waitq_entry** [ %82, %81 ], [ %91, %90 ], !dbg !2066
  %94 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2067, !tbaa !856
  store %struct.uk_waitq_entry* %94, %struct.uk_waitq_entry** %93, align 8, !dbg !2067, !tbaa !856
  %95 = icmp eq %struct.uk_waitq_entry* %94, null, !dbg !2067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  br i1 %95, label %96, label %97, !dbg !2068

; <label>:96:                                     ; preds = %92
  store %struct.uk_waitq_entry** %93, %struct.uk_waitq_entry*** %5, align 8, !dbg !2067, !tbaa !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  br label %97, !dbg !2067

; <label>:97:                                     ; preds = %92, %96, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %98, !dbg !2069

; <label>:98:                                     ; preds = %97, %77
  store i32 0, i32* %29, align 8, !dbg !2069, !tbaa !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  br label %99, !dbg !2070

; <label>:99:                                     ; preds = %70, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  tail call void @ukplat_lcpu_restore_irqf(i64 %71) #10, !dbg !2072
  br label %100, !dbg !2073

; <label>:100:                                    ; preds = %8, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  %101 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2075
  %102 = load i64, i64* %4, align 8, !dbg !2077, !tbaa !834
  %103 = icmp sgt i64 %102, 0, !dbg !2079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  br i1 %103, label %105, label %104, !dbg !2080

; <label>:104:                                    ; preds = %100
  tail call void @ukplat_lcpu_restore_irqf(i64 %101) #10, !dbg !2081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  br label %8, !dbg !2082, !llvm.loop !2083

; <label>:105:                                    ; preds = %100
  %106 = add nsw i64 %102, -1, !dbg !2086
  store i64 %106, i64* %4, align 8, !dbg !2086, !tbaa !834
  tail call void @ukplat_lcpu_restore_irqf(i64 %101) #10, !dbg !2087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  ret void, !dbg !2088
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreCancellablePend(%struct.uk_semaphore*, i32* readonly) local_unnamed_addr #0 !dbg !2089 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2099, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  %4 = and i64 %3, -65536, !dbg !2106
  %5 = inttoptr i64 %4 to %struct.uk_thread**, !dbg !2107
  %6 = load %struct.uk_thread*, %struct.uk_thread** %5, align 65536, !dbg !2109, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2110
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %6, i64 0, i32 10, !dbg !2114
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !2114
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !2114, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2117
  %10 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !2121
  %11 = icmp eq i32* %1, null, !dbg !2123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %11, label %16, label %12, !dbg !2125

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %1, align 4, !dbg !2126, !tbaa !685
  %14 = zext i32 %13 to i64, !dbg !2126
  %15 = mul nuw nsw i64 %14, 1000000, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  br label %16, !dbg !2127

; <label>:16:                                     ; preds = %2, %12
  %17 = phi i64 [ %15, %12 ], [ 0, %2 ], !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  %18 = icmp eq %struct.uk_semaphore* %0, null, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  br i1 %18, label %27, label %19, !dbg !2145, !prof !681

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %21 = icmp eq i64 %17, 0
  %22 = icmp eq %struct.pte_thread_data_t* %9, null
  %23 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 5, i32 0
  %24 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2146
  %25 = load i64, i64* %20, align 8, !dbg !2148, !tbaa !834
  %26 = icmp sgt i64 %25, 0, !dbg !2150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  br i1 %26, label %28, label %32, !dbg !2151

; <label>:27:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2152
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2152
  unreachable

; <label>:28:                                     ; preds = %54, %19
  %29 = phi i64 [ %24, %19 ], [ %57, %54 ], !dbg !2146
  %30 = phi i64 [ %25, %19 ], [ %58, %54 ], !dbg !2148
  %31 = add nsw i64 %30, -1, !dbg !2154
  store i64 %31, i64* %20, align 8, !dbg !2154, !tbaa !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  tail call void @ukplat_lcpu_restore_irqf(i64 %29) #10, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  br label %60

; <label>:32:                                     ; preds = %19, %54
  %33 = phi i64 [ %57, %54 ], [ %24, %19 ]
  tail call void @ukplat_lcpu_restore_irqf(i64 %33) #10, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  br i1 %21, label %38, label %34, !dbg !2160

; <label>:34:                                     ; preds = %32
  %35 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !2162
  %36 = sub i64 %35, %10, !dbg !2163
  %37 = icmp ugt i64 %36, %17, !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  br i1 %37, label %60, label %38, !dbg !2165

; <label>:38:                                     ; preds = %32, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  br i1 %22, label %42, label %39, !dbg !2166

; <label>:39:                                     ; preds = %38
  %40 = load i64, i64* %23, align 8, !dbg !2168, !tbaa !1009
  %41 = icmp sgt i64 %40, 0, !dbg !2169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  br i1 %41, label %60, label %42, !dbg !2170

; <label>:42:                                     ; preds = %38, %39
  %43 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2171, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2176
  %44 = and i64 %43, -65536, !dbg !2178
  %45 = inttoptr i64 %44 to %struct.uk_thread**, !dbg !2179
  %46 = load %struct.uk_thread*, %struct.uk_thread** %45, align 65536, !dbg !2181, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2182
  %47 = icmp eq %struct.uk_thread* %46, null, !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  br i1 %47, label %48, label %49, !dbg !2185, !prof !681

; <label>:48:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !2186
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2186
  unreachable

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %46, i64 0, i32 9, !dbg !2187
  %51 = load %struct.uk_sched*, %struct.uk_sched** %50, align 8, !dbg !2187, !tbaa !896
  %52 = icmp eq %struct.uk_sched* %51, null, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  br i1 %52, label %53, label %54, !dbg !2190, !prof !681

; <label>:53:                                     ; preds = %49
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2191
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2191
  unreachable

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %51, i64 0, i32 0, !dbg !2192
  %56 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %55, align 8, !dbg !2192, !tbaa !1044
  tail call void %56(%struct.uk_sched* nonnull %51) #10, !dbg !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  %57 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2146
  %58 = load i64, i64* %20, align 8, !dbg !2148, !tbaa !834
  %59 = icmp sgt i64 %58, 0, !dbg !2150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  br i1 %59, label %28, label %32, !dbg !2151

; <label>:60:                                     ; preds = %39, %34, %28
  %61 = phi i32 [ 0, %28 ], [ 4, %39 ], [ 3, %34 ], !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  ret i32 %61, !dbg !2199
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsSetValue(i32, i8*) local_unnamed_addr #0 !dbg !2200 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2208, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  %4 = and i64 %3, -65536, !dbg !2221
  %5 = inttoptr i64 %4 to %struct.uk_thread**, !dbg !2222
  %6 = load %struct.uk_thread*, %struct.uk_thread** %5, align 65536, !dbg !2224, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %6, i64 0, i32 10, !dbg !2229
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !2229
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !2229, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  %10 = icmp eq %struct.pte_thread_data_t* %9, null, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  br i1 %10, label %14, label %11, !dbg !2234

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 3, !dbg !2235
  %13 = load i8*, i8** %12, align 8, !dbg !2235, !tbaa !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  br label %14, !dbg !2234

; <label>:14:                                     ; preds = %2, %11
  %15 = phi i8* [ %13, %11 ], [ null, %2 ], !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  %16 = tail call i32 @pteTlsSetValue(i8* %15, i32 %0, i8* %1) #10, !dbg !2237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  ret i32 %16, !dbg !2238
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsSetValue(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @pte_osTlsGetValue(i32) local_unnamed_addr #0 !dbg !2239 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2245, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2251
  %3 = and i64 %2, -65536, !dbg !2253
  %4 = inttoptr i64 %3 to %struct.uk_thread**, !dbg !2254
  %5 = load %struct.uk_thread*, %struct.uk_thread** %4, align 65536, !dbg !2256, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2257
  %6 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %5, i64 0, i32 10, !dbg !2261
  %7 = bitcast i8** %6 to %struct.pte_thread_data_t**, !dbg !2261
  %8 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %7, align 8, !dbg !2261, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2264
  %9 = icmp eq %struct.pte_thread_data_t* %8, null, !dbg !2266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  br i1 %9, label %13, label %10, !dbg !2266

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %8, i64 0, i32 3, !dbg !2267
  %12 = load i8*, i8** %11, align 8, !dbg !2267, !tbaa !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  br label %13, !dbg !2266

; <label>:13:                                     ; preds = %1, %10
  %14 = phi i8* [ %12, %10 ], [ null, %1 ], !dbg !2266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  %15 = tail call i8* @pteTlsGetValue(i8* %14, i32 %0) #10, !dbg !2269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  ret i8* %15, !dbg !2270
}

; Function Attrs: noredzone
declare dso_local i8* @pteTlsGetValue(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsAlloc(i32*) local_unnamed_addr #0 !dbg !2271 {
  %2 = tail call i32 @pteTlsAlloc(i32* %0) #10, !dbg !2277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  ret i32 %2, !dbg !2278
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsAlloc(i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsFree(i32) local_unnamed_addr #0 !dbg !2279 {
  %2 = tail call i32 @pteTlsFree(i32 %0) #10, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2286
  ret i32 %2, !dbg !2286
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsFree(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ftime(%struct.timeb*) local_unnamed_addr #0 !dbg !2287 {
  %2 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !2304
  %3 = icmp eq %struct.timeb* %0, null, !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2308
  br i1 %3, label %11, label %4, !dbg !2308

; <label>:4:                                      ; preds = %1
  %5 = udiv i64 %2, 1000000000, !dbg !2309
  %6 = getelementptr inbounds %struct.timeb, %struct.timeb* %0, i64 0, i32 0, !dbg !2311
  store i64 %5, i64* %6, align 8, !dbg !2312, !tbaa !2313
  %7 = urem i64 %2, 1000000000, !dbg !2316
  %8 = udiv i64 %7, 1000000, !dbg !2316
  %9 = trunc i64 %8 to i16, !dbg !2316
  %10 = getelementptr inbounds %struct.timeb, %struct.timeb* %0, i64 0, i32 1, !dbg !2317
  store i16 %9, i16* %10, align 8, !dbg !2318, !tbaa !2319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  br label %11, !dbg !2320

; <label>:11:                                     ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2321
  ret i32 0, !dbg !2321
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2322 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2326
  call void @llvm.va_start(i8* nonnull %3), !dbg !2328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2339
  call void @llvm.va_end(i8* nonnull %3), !dbg !2340
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2341
  ret void, !dbg !2341
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_init() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !523 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2342
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2342
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2344
  call void @llvm.va_start(i8* nonnull %3), !dbg !2344
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.7, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #10, !dbg !2345
  call void @llvm.va_end(i8* nonnull %3), !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2349
  ret void, !dbg !2349
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.uk_sched* @uk_sched_get_default() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @uk_thread_wake(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @uk_sched_thread_kill(%struct.uk_sched*, %struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind }
attributes #11 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!535, !536, !537}
!llvm.ident = !{!538}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__uk_inittab39_pthread_initcall", scope: !2, file: !3, line: 68, type: !529, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !493)
!3 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/pte_osal.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !15, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !6, line: 38, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !16, line: 92, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!28 = !{!29, !30, !473, !137, !104}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !33, line: 59, size: 1024, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !39, !40, !41, !42, !47, !52, !58, !60, !77, !228, !229, !230, !443}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !33, line: 60, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !32, file: !33, line: 61, baseType: !29, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !32, file: !33, line: 62, baseType: !29, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !32, file: !33, line: 63, baseType: !29, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !32, file: !33, line: 64, baseType: !43, size: 128, offset: 256)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !32, file: !33, line: 64, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !43, file: !33, line: 64, baseType: !31, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !43, file: !33, line: 64, baseType: !30, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !33, line: 65, baseType: !48, size: 32, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 48, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 79, baseType: !7)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !32, file: !33, line: 66, baseType: !53, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !54, line: 49, baseType: !55)
!54 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !56, line: 128, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !32, file: !33, line: 67, baseType: !59, size: 8, offset: 512)
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !32, file: !33, line: 68, baseType: !61, size: 128, offset: 576)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !62, line: 42, size: 128, elements: !63)
!62 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !{!64, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !61, file: !62, line: 42, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !62, line: 35, size: 192, elements: !67)
!67 = !{!68, !70, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !66, file: !62, line: 36, baseType: !69, size: 32)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !66, file: !62, line: 37, baseType: !31, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !66, file: !62, line: 38, baseType: !72, size: 64, offset: 128)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !66, file: !62, line: 38, size: 64, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !72, file: !62, line: 38, baseType: !65, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !61, file: !62, line: 42, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !32, file: !33, line: 69, baseType: !78, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !80, line: 90, size: 2176, elements: !81)
!80 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !{!82, !87, !105, !110, !112, !114, !119, !127, !132, !138, !139, !140, !145, !225, !226, !227}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !79, file: !80, line: 91, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !80, line: 68, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !78}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !79, file: !80, line: 93, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !80, line: 71, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!69, !78, !31, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !95, line: 55, size: 128, elements: !97)
!97 = !{!98, !99, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !96, file: !95, line: 57, baseType: !59, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !96, file: !95, line: 59, baseType: !100, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !95, line: 53, baseType: !69)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !96, file: !95, line: 61, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !54, line: 48, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !56, line: 129, baseType: !104)
!104 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !79, file: !80, line: 94, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !80, line: 74, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !78, !31}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !79, file: !80, line: 95, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !80, line: 76, baseType: !107)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !79, file: !80, line: 96, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !80, line: 78, baseType: !107)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !79, file: !80, line: 98, baseType: !115, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !80, line: 81, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!69, !78, !31, !100}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !79, file: !80, line: 99, baseType: !120, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !80, line: 83, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!69, !78, !124, !126}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !79, file: !80, line: 100, baseType: !128, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !80, line: 85, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!69, !78, !31, !69}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !79, file: !80, line: 101, baseType: !133, size: 64, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !80, line: 87, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!69, !78, !124, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !79, file: !80, line: 104, baseType: !59, size: 8, offset: 576)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !79, file: !80, line: 105, baseType: !32, size: 1024, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !79, file: !80, line: 106, baseType: !141, size: 128, offset: 1664)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !33, line: 93, size: 128, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !141, file: !33, line: 93, baseType: !31, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !141, file: !33, line: 93, baseType: !30, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !79, file: !80, line: 107, baseType: !146, size: 192, offset: 1792)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !147, line: 59, size: 192, elements: !148)
!147 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !{!149, !216, !220}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !146, file: !147, line: 61, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !147, line: 51, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!29, !154, !104, !104}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !156, line: 77, size: 832, elements: !157)
!156 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!157 = !{!158, !167, !172, !177, !183, !185, !190, !191, !192, !197, !202, !207, !208, !209}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !155, file: !156, line: 79, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !156, line: 54, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!29, !154, !163}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 40, baseType: !165)
!164 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !166, line: 129, baseType: !104)
!166 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !155, file: !156, line: 80, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !156, line: 56, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!29, !154, !163, !163}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !155, file: !156, line: 81, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !156, line: 62, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!29, !154, !29, !163}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !155, file: !156, line: 82, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !156, line: 58, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!69, !154, !182, !163, !163}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !155, file: !156, line: 83, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !156, line: 60, baseType: !169)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !155, file: !156, line: 84, baseType: !186, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !156, line: 64, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !154, !29}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !155, file: !156, line: 87, baseType: !186, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !155, file: !156, line: 88, baseType: !159, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !155, file: !156, line: 92, baseType: !193, size: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !156, line: 66, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!29, !154, !104}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !155, file: !156, line: 93, baseType: !198, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !156, line: 68, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !154, !29, !104}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !155, file: !156, line: 99, baseType: !203, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !156, line: 70, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!69, !154, !29, !163}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !155, file: !156, line: 100, baseType: !163, size: 64, offset: 704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 103, baseType: !154, size: 64, offset: 768)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !155, file: !156, line: 104, baseType: !210, offset: 832)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, elements: !214)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !49, line: 20, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !51, line: 41, baseType: !213)
!213 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!214 = !{!215}
!215 = !DISubrange(count: -1)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !146, file: !147, line: 63, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !29}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !146, file: !147, line: 65, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !147, line: 56, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !29, !29}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !79, file: !80, line: 108, baseType: !154, size: 64, offset: 1984)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !80, line: 109, baseType: !78, size: 64, offset: 2048)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !79, file: !80, line: 110, baseType: !29, size: 64, offset: 2112)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !32, file: !33, line: 70, baseType: !29, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !32, file: !33, line: 72, baseType: !69, size: 32, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !32, file: !33, line: 82, baseType: !231, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !233, line: 569, size: 14912, elements: !234)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !{!235, !236, !311, !312, !313, !314, !318, !319, !322, !323, !327, !339, !340, !341, !343, !344, !345, !407, !428, !429, !434, !441}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !232, file: !233, line: 571, baseType: !69, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !232, file: !233, line: 576, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !233, line: 287, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !233, line: 181, size: 1408, elements: !240)
!240 = !{!241, !244, !245, !246, !248, !249, !254, !255, !256, !262, !266, !271, !275, !276, !277, !278, !282, !286, !287, !288, !290, !291, !295, !310}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !239, file: !233, line: 182, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !239, file: !233, line: 183, baseType: !69, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !239, file: !233, line: 184, baseType: !69, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !239, file: !233, line: 185, baseType: !247, size: 16, offset: 128)
!247 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !239, file: !233, line: 186, baseType: !247, size: 16, offset: 144)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !239, file: !233, line: 187, baseType: !250, size: 128, offset: 192)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !233, line: 117, size: 128, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !250, file: !233, line: 118, baseType: !242, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !250, file: !233, line: 119, baseType: !69, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !239, file: !233, line: 188, baseType: !69, size: 32, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !239, file: !233, line: 195, baseType: !29, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !239, file: !233, line: 197, baseType: !257, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !231, !29, !261, !69}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !166, line: 145, baseType: !57)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !239, file: !233, line: 199, baseType: !263, size: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!260, !231, !29, !36, !69}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !239, file: !233, line: 202, baseType: !267, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !231, !29, !270, !69}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !166, line: 114, baseType: !57)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !239, file: !233, line: 203, baseType: !272, size: 64, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!69, !231, !29}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !239, file: !233, line: 206, baseType: !250, size: 128, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !239, file: !233, line: 207, baseType: !242, size: 64, offset: 832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !239, file: !233, line: 208, baseType: !69, size: 32, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !239, file: !233, line: 211, baseType: !279, size: 24, offset: 928)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 24, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 3)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !239, file: !233, line: 212, baseType: !283, size: 8, offset: 952)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 8, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 1)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !239, file: !233, line: 215, baseType: !250, size: 128, offset: 960)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !239, file: !233, line: 218, baseType: !69, size: 32, offset: 1088)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !239, file: !233, line: 219, baseType: !289, size: 64, offset: 1152)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !166, line: 44, baseType: !57)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !239, file: !233, line: 222, baseType: !231, size: 64, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !239, file: !233, line: 226, baseType: !292, size: 32, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !166, line: 175, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !294, line: 12, baseType: !69)
!294 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !239, file: !233, line: 228, baseType: !296, size: 64, offset: 1312)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !166, line: 171, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 163, size: 64, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !297, file: !166, line: 165, baseType: !69, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !297, file: !166, line: 170, baseType: !301, size: 32, offset: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !166, line: 166, size: 32, elements: !302)
!302 = !{!303, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !301, file: !166, line: 168, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !305, line: 124, baseType: !7)
!305 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !301, file: !166, line: 169, baseType: !307, size: 32)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 32, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 4)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !239, file: !233, line: 229, baseType: !69, size: 32, offset: 1376)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !232, file: !233, line: 576, baseType: !237, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !232, file: !233, line: 576, baseType: !237, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !232, file: !233, line: 578, baseType: !69, size: 32, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !232, file: !233, line: 579, baseType: !315, size: 200, offset: 288)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 200, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 25)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !232, file: !233, line: 582, baseType: !69, size: 32, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !232, file: !233, line: 583, baseType: !320, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !233, line: 40, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !232, file: !233, line: 585, baseType: !69, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !232, file: !233, line: 587, baseType: !324, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !231}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !232, file: !233, line: 590, baseType: !328, size: 64, offset: 768)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !233, line: 47, size: 256, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !329, file: !233, line: 49, baseType: !328, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !329, file: !233, line: 50, baseType: !69, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !329, file: !233, line: 50, baseType: !69, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !329, file: !233, line: 50, baseType: !69, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !329, file: !233, line: 50, baseType: !69, size: 32, offset: 160)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !329, file: !233, line: 51, baseType: !337, size: 32, offset: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 32, elements: !284)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !233, line: 25, baseType: !7)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !232, file: !233, line: 591, baseType: !69, size: 32, offset: 832)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !232, file: !233, line: 592, baseType: !328, size: 64, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !232, file: !233, line: 593, baseType: !342, size: 64, offset: 960)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !232, file: !233, line: 596, baseType: !69, size: 32, offset: 1024)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !232, file: !233, line: 597, baseType: !261, size: 64, offset: 1088)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !232, file: !233, line: 632, baseType: !346, size: 2880, offset: 1152)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !233, line: 599, size: 2880, elements: !347)
!347 = !{!348, !398}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !346, file: !233, line: 622, baseType: !349, size: 1728)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !233, line: 601, size: 1728, elements: !350)
!350 = !{!351, !352, !353, !357, !369, !370, !372, !380, !381, !382, !383, !387, !391, !392, !393, !394, !395, !396, !397}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !349, file: !233, line: 603, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !349, file: !233, line: 604, baseType: !261, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !349, file: !233, line: 605, baseType: !354, size: 208, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 208, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 26)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !349, file: !233, line: 606, baseType: !358, size: 288, offset: 352)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !233, line: 55, size: 288, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !358, file: !233, line: 57, baseType: !69, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !358, file: !233, line: 58, baseType: !69, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !358, file: !233, line: 59, baseType: !69, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !358, file: !233, line: 60, baseType: !69, size: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !358, file: !233, line: 61, baseType: !69, size: 32, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !358, file: !233, line: 62, baseType: !69, size: 32, offset: 160)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !358, file: !233, line: 63, baseType: !69, size: 32, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !358, file: !233, line: 64, baseType: !69, size: 32, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !358, file: !233, line: 65, baseType: !69, size: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !349, file: !233, line: 607, baseType: !69, size: 32, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !349, file: !233, line: 608, baseType: !371, size: 64, offset: 704)
!371 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !349, file: !233, line: 609, baseType: !373, size: 112, offset: 768)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !233, line: 319, size: 112, elements: !374)
!374 = !{!375, !378, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !373, file: !233, line: 320, baseType: !376, size: 48)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 48, elements: !280)
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !373, file: !233, line: 321, baseType: !376, size: 48, offset: 48)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !373, file: !233, line: 322, baseType: !377, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !349, file: !233, line: 610, baseType: !296, size: 64, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !349, file: !233, line: 611, baseType: !296, size: 64, offset: 960)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !349, file: !233, line: 612, baseType: !296, size: 64, offset: 1024)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !349, file: !233, line: 613, baseType: !384, size: 64, offset: 1088)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !349, file: !233, line: 614, baseType: !388, size: 192, offset: 1152)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 24)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !349, file: !233, line: 615, baseType: !69, size: 32, offset: 1344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !349, file: !233, line: 616, baseType: !296, size: 64, offset: 1376)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !349, file: !233, line: 617, baseType: !296, size: 64, offset: 1440)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !349, file: !233, line: 618, baseType: !296, size: 64, offset: 1504)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !349, file: !233, line: 619, baseType: !296, size: 64, offset: 1568)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !349, file: !233, line: 620, baseType: !296, size: 64, offset: 1632)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !349, file: !233, line: 621, baseType: !69, size: 32, offset: 1696)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !346, file: !233, line: 631, baseType: !399, size: 2880)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !233, line: 626, size: 2880, elements: !400)
!400 = !{!401, !405}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !399, file: !233, line: 629, baseType: !402, size: 1920)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 1920, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 30)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !399, file: !233, line: 630, baseType: !406, size: 960, offset: 1920)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !403)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !232, file: !233, line: 636, baseType: !408, size: 64, offset: 4032)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !233, line: 93, size: 6336, elements: !410)
!410 = !{!411, !412, !413, !420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !409, file: !233, line: 94, baseType: !408, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !409, file: !233, line: 95, baseType: !69, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !409, file: !233, line: 97, baseType: !414, size: 2048, offset: 128)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 2048, elements: !418)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null}
!418 = !{!419}
!419 = !DISubrange(count: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !409, file: !233, line: 98, baseType: !421, size: 4160, offset: 2176)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !233, line: 74, size: 4160, elements: !422)
!422 = !{!423, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !421, file: !233, line: 75, baseType: !424, size: 2048)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !418)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !421, file: !233, line: 76, baseType: !424, size: 2048, offset: 2048)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !421, file: !233, line: 78, baseType: !338, size: 32, offset: 4096)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !421, file: !233, line: 81, baseType: !338, size: 32, offset: 4128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !232, file: !233, line: 637, baseType: !409, size: 6336, offset: 4096)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !232, file: !233, line: 641, baseType: !430, size: 64, offset: 10432)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !69}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !232, file: !233, line: 646, baseType: !435, size: 192, offset: 10496)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !233, line: 291, size: 192, elements: !436)
!436 = !{!437, !439, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !435, file: !233, line: 293, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !435, file: !233, line: 294, baseType: !69, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !435, file: !233, line: 295, baseType: !237, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !232, file: !233, line: 648, baseType: !442, size: 4224, offset: 10688)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 4224, elements: !280)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !32, file: !33, line: 85, baseType: !444, size: 64, offset: 960)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !16, line: 114, size: 640, elements: !446)
!446 = !{!447, !451, !452, !459, !472}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !445, file: !16, line: 116, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !449, line: 64, baseType: !450)
!449 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !449, line: 63, baseType: !104)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !445, file: !16, line: 118, baseType: !448, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !445, file: !16, line: 120, baseType: !453, size: 128, offset: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !454, line: 51, size: 128, elements: !455)
!454 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!455 = !{!456, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !454, line: 52, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !454, line: 53, baseType: !457, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !445, file: !16, line: 122, baseType: !460, size: 256, offset: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !16, line: 98, size: 256, elements: !461)
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !460, file: !16, line: 107, baseType: !15, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !460, file: !16, line: 109, baseType: !448, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !460, file: !16, line: 111, baseType: !465, size: 96, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !449, line: 72, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 68, size: 96, elements: !467)
!467 = !{!468, !469, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !466, file: !449, line: 69, baseType: !69, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !466, file: !449, line: 70, baseType: !69, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !466, file: !449, line: 71, baseType: !471, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !449, line: 61, baseType: !69)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !445, file: !16, line: 124, baseType: !453, size: 128, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_data_t", file: !3, line: 54, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 39, size: 704, elements: !476)
!476 = !{!477, !482, !483, !484, !485, !491, !492}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "entry_point", scope: !475, file: !3, line: 41, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadEntryPoint", file: !6, line: 124, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!69, !29}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !475, file: !3, line: 43, baseType: !29, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "uk_thread", scope: !475, file: !3, line: 45, baseType: !31, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !475, file: !3, line: 47, baseType: !29, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "start_sem", scope: !475, file: !3, line: 49, baseType: !486, size: 192, offset: 256)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !487, line: 51, size: 192, elements: !488)
!487 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !486, file: !487, line: 52, baseType: !57, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !486, file: !487, line: 53, baseType: !61, size: 128, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_sem", scope: !475, file: !3, line: 51, baseType: !486, size: 192, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !475, file: !3, line: 53, baseType: !69, size: 32, offset: 640)
!493 = !{!0, !494, !516, !521, !527}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "__str", scope: !496, file: !497, line: 190, type: !513, isLocal: true, isDefinition: true)
!496 = distinct !DISubprogram(name: "uk_pr_err", scope: !497, file: !497, line: 186, type: !498, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !500)
!497 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!498 = !DISubroutineType(types: !499)
!499 = !{null, !36, null}
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "fmt", arg: 1, scope: !496, file: !497, line: 186, type: !36)
!502 = !DILocalVariable(name: "argp", scope: !496, file: !497, line: 188, type: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !504, line: 32, baseType: !505)
!504 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 164, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 192, elements: !284)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 164, size: 192, elements: !508)
!508 = !{!509, !510, !511, !512}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !507, file: !3, line: 164, baseType: !7, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !507, file: !3, line: 164, baseType: !7, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !507, file: !3, line: 164, baseType: !29, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !507, file: !3, line: 164, baseType: !29, size: 64, offset: 128)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 20)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "__str", scope: !496, file: !497, line: 190, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 88, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 11)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "__str", scope: !523, file: !497, line: 198, type: !513, isLocal: true, isDefinition: true)
!523 = distinct !DISubprogram(name: "uk_pr_crit", scope: !497, file: !497, line: 194, type: !498, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !524)
!524 = !{!525, !526}
!525 = !DILocalVariable(name: "fmt", arg: 1, scope: !523, file: !497, line: 194, type: !36)
!526 = !DILocalVariable(name: "argp", scope: !523, file: !497, line: 196, type: !503)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "__str", scope: !523, file: !497, line: 198, type: !518, isLocal: true, isDefinition: true)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_init_func_t", file: !531, line: 43, baseType: !532)
!531 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/init.h", directory: "/root/.unikraft/apps/redis/build")
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!69}
!535 = !{i32 2, !"Dwarf Version", i32 4}
!536 = !{i32 2, !"Debug Info Version", i32 3}
!537 = !{i32 1, !"wchar_size", i32 4}
!538 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!539 = distinct !DISubprogram(name: "pthread_initcall", scope: !3, file: !3, line: 63, type: !533, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!540 = !{}
!541 = !DILocation(line: 65, column: 2, scope: !539)
!542 = !DILocation(line: 66, column: 9, scope: !539)
!543 = !DILocation(line: 66, column: 2, scope: !539)
!544 = distinct !DISubprogram(name: "pte_osInit", scope: !3, file: !3, line: 70, type: !545, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !548)
!545 = !DISubroutineType(types: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !6, line: 60, baseType: !5)
!548 = !{!549, !550, !551}
!549 = !DILocalVariable(name: "result", scope: !544, file: !3, line: 72, type: !547)
!550 = !DILocalVariable(name: "ptd", scope: !544, file: !3, line: 73, type: !473)
!551 = !DILocalVariable(name: "crnt", scope: !544, file: !3, line: 74, type: !31)
!552 = !DILocation(line: 72, column: 15, scope: !544)
!553 = !DILocation(line: 77, column: 11, scope: !544)
!554 = !DILocation(line: 78, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !544, file: !3, line: 78, column: 6)
!556 = !DILocation(line: 78, column: 6, scope: !544)
!557 = !DILocation(line: 79, column: 3, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !3, line: 78, column: 27)
!559 = !DILocation(line: 80, column: 3, scope: !558)
!560 = !DILocation(line: 84, column: 8, scope: !544)
!561 = !DILocation(line: 73, column: 21, scope: !544)
!562 = !DILocation(line: 85, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !544, file: !3, line: 85, column: 6)
!564 = !DILocation(line: 85, column: 6, scope: !544)
!565 = !DILocation(line: 90, column: 13, scope: !544)
!566 = !DILocation(line: 90, column: 7, scope: !544)
!567 = !DILocation(line: 90, column: 11, scope: !544)
!568 = !{!569, !570, i64 24}
!569 = !{!"", !570, i64 0, !570, i64 8, !570, i64 16, !570, i64 24, !573, i64 32, !573, i64 56, !576, i64 80}
!570 = !{!"any pointer", !571, i64 0}
!571 = !{!"omnipotent char", !572, i64 0}
!572 = !{!"Simple C/C++ TBAA"}
!573 = !{!"uk_semaphore", !574, i64 0, !575, i64 8}
!574 = !{!"long", !571, i64 0}
!575 = !{!"uk_waitq", !570, i64 0, !570, i64 8}
!576 = !{!"int", !571, i64 0}
!577 = !DILocation(line: 91, column: 15, scope: !578)
!578 = distinct !DILexicalBlock(scope: !544, file: !3, line: 91, column: 6)
!579 = !DILocation(line: 91, column: 6, scope: !544)
!580 = !DILocation(line: 92, column: 3, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 91, column: 24)
!582 = !DILocation(line: 93, column: 3, scope: !581)
!583 = !DILocation(line: 95, column: 3, scope: !581)
!584 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !591)
!585 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !586, file: !586, line: 116, type: !587, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !589)
!586 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!587 = !DISubroutineType(types: !588)
!588 = !{!104}
!589 = !{!590}
!590 = !DILocalVariable(name: "sp", scope: !585, file: !586, line: 118, type: !104)
!591 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !598)
!592 = distinct !DISubprogram(name: "uk_thread_current", scope: !33, file: !33, line: 151, type: !593, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!31}
!595 = !{!596, !597}
!596 = !DILocalVariable(name: "current", scope: !592, file: !33, line: 153, type: !30)
!597 = !DILocalVariable(name: "sp", scope: !592, file: !33, line: 154, type: !104)
!598 = distinct !DILocation(line: 98, column: 2, scope: !544)
!599 = !{i32 483801}
!600 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !591)
!601 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !591)
!602 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !598)
!603 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !598)
!604 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !598)
!605 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !598)
!606 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !598)
!607 = !{!570, !570, i64 0}
!608 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !598)
!609 = !DILocation(line: 74, column: 20, scope: !544)
!610 = !DILocalVariable(name: "thread", arg: 1, scope: !611, file: !33, line: 145, type: !31)
!611 = distinct !DISubprogram(name: "uk_thread_set_private", scope: !33, file: !33, line: 145, type: !612, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !31, !29}
!614 = !{!610, !615}
!615 = !DILocalVariable(name: "prv", arg: 2, scope: !611, file: !33, line: 145, type: !29)
!616 = !DILocation(line: 145, column: 46, scope: !611, inlinedAt: !617)
!617 = distinct !DILocation(line: 100, column: 2, scope: !544)
!618 = !DILocation(line: 145, column: 60, scope: !611, inlinedAt: !617)
!619 = !DILocation(line: 147, column: 10, scope: !611, inlinedAt: !617)
!620 = !DILocation(line: 147, column: 14, scope: !611, inlinedAt: !617)
!621 = !{!622, !570, i64 96}
!622 = !{!"uk_thread", !570, i64 0, !570, i64 8, !570, i64 16, !570, i64 24, !623, i64 32, !576, i64 48, !574, i64 56, !624, i64 64, !575, i64 72, !570, i64 88, !570, i64 96, !576, i64 104, !570, i64 112, !570, i64 120}
!623 = !{!"", !570, i64 0, !570, i64 8}
!624 = !{!"_Bool", !571, i64 0}
!625 = !DILocation(line: 148, column: 1, scope: !611, inlinedAt: !617)
!626 = !DILocation(line: 101, column: 7, scope: !544)
!627 = !DILocation(line: 101, column: 17, scope: !544)
!628 = !{!569, !570, i64 16}
!629 = !DILocation(line: 101, column: 2, scope: !544)
!630 = !DILocation(line: 0, scope: !544)
!631 = !DILocation(line: 0, scope: !558)
!632 = !DILocation(line: 104, column: 2, scope: !544)
!633 = !DILocation(line: 186, column: 42, scope: !496)
!634 = !DILocation(line: 188, column: 2, scope: !496)
!635 = !DILocation(line: 188, column: 10, scope: !496)
!636 = !DILocation(line: 189, column: 2, scope: !496)
!637 = !DILocation(line: 190, column: 2, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !497, line: 190, column: 2)
!639 = distinct !DILexicalBlock(scope: !496, file: !497, line: 190, column: 2)
!640 = !DILocation(line: 191, column: 2, scope: !496)
!641 = !DILocation(line: 192, column: 1, scope: !496)
!642 = distinct !DISubprogram(name: "pte_kill", scope: !3, file: !3, line: 113, type: !643, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !647)
!643 = !DISubroutineType(types: !644)
!644 = !{!69, !645, !69}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !646, line: 11, baseType: !31)
!646 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!647 = !{!648, !649}
!648 = !DILocalVariable(name: "threadId", arg: 1, scope: !642, file: !3, line: 113, type: !645)
!649 = !DILocalVariable(name: "sig", arg: 2, scope: !642, file: !3, line: 113, type: !69)
!650 = !DILocation(line: 113, column: 33, scope: !642)
!651 = !DILocation(line: 113, column: 47, scope: !642)
!652 = !DILocation(line: 115, column: 9, scope: !642)
!653 = !DILocation(line: 115, column: 2, scope: !642)
!654 = distinct !DISubprogram(name: "pte_osThreadCreate", scope: !3, file: !3, line: 155, type: !655, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!547, !478, !69, !69, !29, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!658 = !{!659, !660, !661, !662, !663, !664}
!659 = !DILocalVariable(name: "entry_point", arg: 1, scope: !654, file: !3, line: 155, type: !478)
!660 = !DILocalVariable(name: "stack_size", arg: 2, scope: !654, file: !3, line: 156, type: !69)
!661 = !DILocalVariable(name: "initial_prio", arg: 3, scope: !654, file: !3, line: 156, type: !69)
!662 = !DILocalVariable(name: "argv", arg: 4, scope: !654, file: !3, line: 156, type: !29)
!663 = !DILocalVariable(name: "ph", arg: 5, scope: !654, file: !3, line: 157, type: !657)
!664 = !DILocalVariable(name: "ptd", scope: !654, file: !3, line: 159, type: !473)
!665 = !DILocation(line: 155, column: 56, scope: !654)
!666 = !DILocation(line: 156, column: 6, scope: !654)
!667 = !DILocation(line: 156, column: 22, scope: !654)
!668 = !DILocation(line: 156, column: 42, scope: !654)
!669 = !DILocation(line: 157, column: 22, scope: !654)
!670 = !DILocation(line: 162, column: 18, scope: !654)
!671 = !DILocalVariable(name: "a", arg: 1, scope: !672, file: !156, line: 157, type: !154)
!672 = distinct !DISubprogram(name: "uk_malloc", scope: !156, file: !156, line: 157, type: !161, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !673)
!673 = !{!671, !674}
!674 = !DILocalVariable(name: "size", arg: 2, scope: !672, file: !156, line: 157, type: !163)
!675 = !DILocation(line: 157, column: 48, scope: !672, inlinedAt: !676)
!676 = distinct !DILocation(line: 162, column: 8, scope: !654)
!677 = !DILocation(line: 157, column: 58, scope: !672, inlinedAt: !676)
!678 = !DILocation(line: 159, column: 6, scope: !679, inlinedAt: !676)
!679 = distinct !DILexicalBlock(scope: !672, file: !156, line: 159, column: 6)
!680 = !DILocation(line: 159, column: 6, scope: !672, inlinedAt: !676)
!681 = !{!"branch_weights", i32 1, i32 2000}
!682 = !DILocation(line: 160, column: 3, scope: !683, inlinedAt: !676)
!683 = distinct !DILexicalBlock(scope: !679, file: !156, line: 159, column: 20)
!684 = !DILocation(line: 160, column: 9, scope: !683, inlinedAt: !676)
!685 = !{!576, !576, i64 0}
!686 = !DILocation(line: 161, column: 3, scope: !683, inlinedAt: !676)
!687 = !DILocation(line: 164, column: 1, scope: !672, inlinedAt: !676)
!688 = !DILocation(line: 159, column: 21, scope: !654)
!689 = !DILocation(line: 163, column: 6, scope: !654)
!690 = !DILocalVariable(name: "a", arg: 1, scope: !691, file: !156, line: 151, type: !154)
!691 = distinct !DISubprogram(name: "uk_do_malloc", scope: !156, file: !156, line: 151, type: !161, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !692)
!692 = !{!690, !693}
!693 = !DILocalVariable(name: "size", arg: 2, scope: !691, file: !156, line: 151, type: !163)
!694 = !DILocation(line: 151, column: 51, scope: !691, inlinedAt: !695)
!695 = distinct !DILocation(line: 163, column: 9, scope: !672, inlinedAt: !676)
!696 = !DILocation(line: 151, column: 61, scope: !691, inlinedAt: !695)
!697 = !DILocation(line: 153, column: 2, scope: !698, inlinedAt: !695)
!698 = distinct !DILexicalBlock(scope: !691, file: !156, line: 153, column: 2)
!699 = !DILocation(line: 154, column: 12, scope: !691, inlinedAt: !695)
!700 = !DILocation(line: 154, column: 9, scope: !691, inlinedAt: !695)
!701 = !DILocation(line: 154, column: 2, scope: !691, inlinedAt: !695)
!702 = !DILocation(line: 163, column: 2, scope: !672, inlinedAt: !676)
!703 = !DILocation(line: 163, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !654, file: !3, line: 163, column: 6)
!705 = !DILocation(line: 166, column: 7, scope: !654)
!706 = !DILocation(line: 166, column: 19, scope: !654)
!707 = !{!569, !570, i64 0}
!708 = !DILocation(line: 167, column: 7, scope: !654)
!709 = !DILocation(line: 167, column: 12, scope: !654)
!710 = !{!569, !570, i64 8}
!711 = !DILocation(line: 170, column: 13, scope: !654)
!712 = !DILocation(line: 170, column: 7, scope: !654)
!713 = !DILocation(line: 170, column: 11, scope: !654)
!714 = !DILocation(line: 171, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !654, file: !3, line: 171, column: 6)
!716 = !DILocation(line: 171, column: 6, scope: !654)
!717 = !DILocation(line: 172, column: 3, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 171, column: 24)
!719 = !DILocation(line: 173, column: 3, scope: !718)
!720 = !DILocation(line: 174, column: 3, scope: !718)
!721 = !DILocation(line: 177, column: 26, scope: !654)
!722 = !DILocation(line: 177, column: 2, scope: !654)
!723 = !DILocation(line: 178, column: 26, scope: !654)
!724 = !DILocation(line: 178, column: 2, scope: !654)
!725 = !DILocation(line: 179, column: 7, scope: !654)
!726 = !DILocation(line: 179, column: 12, scope: !654)
!727 = !{!569, !576, i64 80}
!728 = !DILocalVariable(name: "name", arg: 1, scope: !729, file: !33, line: 101, type: !36)
!729 = distinct !DISubprogram(name: "uk_thread_create_attr", scope: !33, file: !33, line: 101, type: !730, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!31, !36, !92, !217, !29}
!732 = !{!728, !733, !734, !735}
!733 = !DILocalVariable(name: "attr", arg: 2, scope: !729, file: !33, line: 102, type: !92)
!734 = !DILocalVariable(name: "function", arg: 3, scope: !729, file: !33, line: 102, type: !217)
!735 = !DILocalVariable(name: "arg", arg: 4, scope: !729, file: !33, line: 102, type: !29)
!736 = !DILocation(line: 101, column: 67, scope: !729, inlinedAt: !737)
!737 = distinct !DILocation(line: 181, column: 2, scope: !654)
!738 = !DILocation(line: 102, column: 26, scope: !729, inlinedAt: !737)
!739 = !DILocation(line: 102, column: 38, scope: !729, inlinedAt: !737)
!740 = !DILocation(line: 102, column: 63, scope: !729, inlinedAt: !737)
!741 = !DILocation(line: 104, column: 32, scope: !729, inlinedAt: !737)
!742 = !DILocation(line: 104, column: 9, scope: !729, inlinedAt: !737)
!743 = !DILocation(line: 104, column: 2, scope: !729, inlinedAt: !737)
!744 = !DILocation(line: 181, column: 2, scope: !654)
!745 = !DILocation(line: 183, column: 21, scope: !746)
!746 = distinct !DILexicalBlock(scope: !654, file: !3, line: 183, column: 6)
!747 = !DILocation(line: 183, column: 6, scope: !654)
!748 = !DILocation(line: 184, column: 28, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 183, column: 30)
!750 = !DILocation(line: 184, column: 3, scope: !749)
!751 = !DILocation(line: 185, column: 3, scope: !749)
!752 = !DILocation(line: 186, column: 3, scope: !749)
!753 = !DILocation(line: 191, column: 2, scope: !654)
!754 = !DILocation(line: 194, column: 2, scope: !654)
!755 = !DILocation(line: 145, column: 46, scope: !611, inlinedAt: !756)
!756 = distinct !DILocation(line: 194, column: 2, scope: !654)
!757 = !DILocation(line: 145, column: 60, scope: !611, inlinedAt: !756)
!758 = !DILocation(line: 147, column: 10, scope: !611, inlinedAt: !756)
!759 = !DILocation(line: 147, column: 14, scope: !611, inlinedAt: !756)
!760 = !DILocation(line: 148, column: 1, scope: !611, inlinedAt: !756)
!761 = !DILocation(line: 196, column: 13, scope: !654)
!762 = !DILocation(line: 196, column: 6, scope: !654)
!763 = !DILocation(line: 198, column: 2, scope: !654)
!764 = !DILocation(line: 0, scope: !704)
!765 = !DILocation(line: 199, column: 1, scope: !654)
!766 = distinct !DISubprogram(name: "uk_stub_thread_entry", scope: !3, file: !3, line: 142, type: !218, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !767)
!767 = !{!768, !769}
!768 = !DILocalVariable(name: "argv", arg: 1, scope: !766, file: !3, line: 142, type: !29)
!769 = !DILocalVariable(name: "ptd", scope: !766, file: !3, line: 147, type: !473)
!770 = !DILocation(line: 142, column: 40, scope: !766)
!771 = !DILocalVariable(name: "val", arg: 1, scope: !772, file: !773, line: 88, type: !48)
!772 = distinct !DISubprogram(name: "wrpkru", scope: !773, file: !773, line: 88, type: !774, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !776)
!773 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!774 = !DISubroutineType(types: !775)
!775 = !{null, !48}
!776 = !{!771}
!777 = !DILocation(line: 88, column: 67, scope: !772, inlinedAt: !778)
!778 = distinct !DILocation(line: 145, column: 2, scope: !766)
!779 = !DILocation(line: 91, column: 2, scope: !772, inlinedAt: !778)
!780 = !{i32 277494}
!781 = !DILocation(line: 97, column: 1, scope: !772, inlinedAt: !778)
!782 = !DILocation(line: 147, column: 21, scope: !766)
!783 = !DILocation(line: 150, column: 26, scope: !766)
!784 = !DILocation(line: 150, column: 2, scope: !766)
!785 = !DILocation(line: 152, column: 7, scope: !766)
!786 = !DILocation(line: 152, column: 24, scope: !766)
!787 = !DILocation(line: 152, column: 2, scope: !766)
!788 = !DILocation(line: 153, column: 1, scope: !766)
!789 = distinct !DISubprogram(name: "pte_osThreadStart", scope: !3, file: !3, line: 201, type: !790, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{!547, !645}
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "h", arg: 1, scope: !789, file: !3, line: 201, type: !645)
!794 = !DILocalVariable(name: "ptd", scope: !789, file: !3, line: 203, type: !473)
!795 = !DILocation(line: 201, column: 51, scope: !789)
!796 = !DILocalVariable(name: "h", arg: 1, scope: !797, file: !3, line: 126, type: !645)
!797 = distinct !DISubprogram(name: "handle_to_ptd", scope: !3, file: !3, line: 126, type: !798, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!473, !645}
!800 = !{!796, !801}
!801 = !DILocalVariable(name: "res", scope: !797, file: !3, line: 128, type: !473)
!802 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !803)
!803 = distinct !DILocation(line: 203, column: 27, scope: !789)
!804 = !DILocalVariable(name: "thread", arg: 1, scope: !805, file: !33, line: 139, type: !31)
!805 = distinct !DISubprogram(name: "uk_thread_get_private", scope: !33, file: !33, line: 139, type: !806, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!29, !31}
!808 = !{!804}
!809 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !810)
!810 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !803)
!811 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !810)
!812 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !810)
!813 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !803)
!814 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !803)
!815 = !DILocation(line: 203, column: 21, scope: !789)
!816 = !DILocalVariable(name: "s", arg: 1, scope: !817, file: !487, line: 194, type: !820)
!817 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !487, file: !487, line: 194, type: !818, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !821)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!821 = !{!816, !822, !823}
!822 = !DILocalVariable(name: "irqf", scope: !817, file: !487, line: 196, type: !104)
!823 = !DILocalVariable(name: "wq", scope: !817, file: !487, line: 209, type: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!826 = !DILocation(line: 194, column: 57, scope: !817, inlinedAt: !827)
!827 = distinct !DILocation(line: 206, column: 2, scope: !789)
!828 = !DILocation(line: 198, column: 2, scope: !829, inlinedAt: !827)
!829 = distinct !DILexicalBlock(scope: !817, file: !487, line: 198, column: 2)
!830 = !DILocation(line: 200, column: 9, scope: !817, inlinedAt: !827)
!831 = !DILocation(line: 196, column: 16, scope: !817, inlinedAt: !827)
!832 = !DILocation(line: 201, column: 7, scope: !817, inlinedAt: !827)
!833 = !DILocation(line: 201, column: 2, scope: !817, inlinedAt: !827)
!834 = !{!573, !574, i64 0}
!835 = !DILocation(line: 209, column: 28, scope: !817, inlinedAt: !827)
!836 = !DILocalVariable(name: "wq", arg: 1, scope: !837, file: !838, line: 99, type: !841)
!837 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !838, file: !838, line: 99, type: !839, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !842)
!838 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!839 = !DISubroutineType(types: !840)
!840 = !{null, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!842 = !{!836, !843, !844, !845}
!843 = !DILocalVariable(name: "flags", scope: !837, file: !838, line: 101, type: !104)
!844 = !DILocalVariable(name: "curr", scope: !837, file: !838, line: 102, type: !65)
!845 = !DILocalVariable(name: "tmp", scope: !837, file: !838, line: 102, type: !65)
!846 = !DILocation(line: 99, column: 40, scope: !837, inlinedAt: !847)
!847 = distinct !DILocation(line: 210, column: 2, scope: !817, inlinedAt: !827)
!848 = !DILocation(line: 104, column: 10, scope: !837, inlinedAt: !847)
!849 = !DILocation(line: 101, column: 16, scope: !837, inlinedAt: !847)
!850 = !DILocation(line: 105, column: 2, scope: !851, inlinedAt: !847)
!851 = distinct !DILexicalBlock(scope: !837, file: !838, line: 105, column: 2)
!852 = !{!575, !570, i64 0}
!853 = !DILocation(line: 102, column: 25, scope: !837, inlinedAt: !847)
!854 = !DILocation(line: 105, column: 2, scope: !855, inlinedAt: !847)
!855 = distinct !DILexicalBlock(scope: !851, file: !838, line: 105, column: 2)
!856 = !{!857, !570, i64 16}
!857 = !{!"uk_waitq_entry", !576, i64 0, !570, i64 8, !858, i64 16}
!858 = !{!"", !570, i64 0}
!859 = !DILocation(line: 102, column: 32, scope: !837, inlinedAt: !847)
!860 = !DILocation(line: 106, column: 24, scope: !855, inlinedAt: !847)
!861 = !{!857, !570, i64 8}
!862 = !DILocation(line: 106, column: 3, scope: !855, inlinedAt: !847)
!863 = distinct !{!863, !864, !865}
!864 = !DILocation(line: 105, column: 2, scope: !851)
!865 = !DILocation(line: 106, column: 30, scope: !851)
!866 = !DILocation(line: 107, column: 2, scope: !837, inlinedAt: !847)
!867 = !DILocation(line: 108, column: 1, scope: !837, inlinedAt: !847)
!868 = !DILocation(line: 211, column: 2, scope: !817, inlinedAt: !827)
!869 = !DILocation(line: 212, column: 1, scope: !817, inlinedAt: !827)
!870 = !DILocation(line: 208, column: 2, scope: !789)
!871 = distinct !DISubprogram(name: "pte_osThreadDelete", scope: !3, file: !3, line: 211, type: !790, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !872)
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "h", arg: 1, scope: !871, file: !3, line: 211, type: !645)
!874 = !DILocalVariable(name: "ptd", scope: !871, file: !3, line: 213, type: !473)
!875 = !DILocation(line: 211, column: 52, scope: !871)
!876 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !877)
!877 = distinct !DILocation(line: 213, column: 27, scope: !871)
!878 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !879)
!879 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !877)
!880 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !879)
!881 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !879)
!882 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !877)
!883 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !877)
!884 = !DILocation(line: 213, column: 21, scope: !871)
!885 = !DILocation(line: 216, column: 27, scope: !871)
!886 = !DILocation(line: 216, column: 2, scope: !871)
!887 = !DILocation(line: 217, column: 7, scope: !871)
!888 = !DILocation(line: 217, column: 2, scope: !871)
!889 = !DILocation(line: 219, column: 2, scope: !871)
!890 = distinct !DISubprogram(name: "pte_osThreadExitAndDelete", scope: !3, file: !3, line: 222, type: !790, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !891)
!891 = !{!892}
!892 = !DILocalVariable(name: "h", arg: 1, scope: !890, file: !3, line: 222, type: !645)
!893 = !DILocation(line: 222, column: 59, scope: !890)
!894 = !DILocation(line: 224, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !890, file: !3, line: 224, column: 6)
!896 = !{!622, !570, i64 88}
!897 = !DILocation(line: 224, column: 6, scope: !895)
!898 = !DILocation(line: 224, column: 6, scope: !890)
!899 = !DILocalVariable(name: "thread", arg: 1, scope: !900, file: !33, line: 117, type: !31)
!900 = distinct !DISubprogram(name: "uk_thread_kill", scope: !33, file: !33, line: 117, type: !901, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !31}
!903 = !{!899}
!904 = !DILocation(line: 117, column: 53, scope: !900, inlinedAt: !905)
!905 = distinct !DILocation(line: 225, column: 3, scope: !895)
!906 = !DILocation(line: 119, column: 2, scope: !900, inlinedAt: !905)
!907 = !DILocation(line: 120, column: 1, scope: !900, inlinedAt: !905)
!908 = !DILocation(line: 225, column: 3, scope: !895)
!909 = !DILocation(line: 211, column: 52, scope: !871, inlinedAt: !910)
!910 = distinct !DILocation(line: 226, column: 2, scope: !890)
!911 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !912)
!912 = distinct !DILocation(line: 213, column: 27, scope: !871, inlinedAt: !910)
!913 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !914)
!914 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !912)
!915 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !914)
!916 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !914)
!917 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !912)
!918 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !912)
!919 = !DILocation(line: 213, column: 21, scope: !871, inlinedAt: !910)
!920 = !DILocation(line: 216, column: 27, scope: !871, inlinedAt: !910)
!921 = !DILocation(line: 216, column: 2, scope: !871, inlinedAt: !910)
!922 = !DILocation(line: 217, column: 7, scope: !871, inlinedAt: !910)
!923 = !DILocation(line: 217, column: 2, scope: !871, inlinedAt: !910)
!924 = !DILocation(line: 219, column: 2, scope: !871, inlinedAt: !910)
!925 = !DILocation(line: 228, column: 2, scope: !890)
!926 = distinct !DISubprogram(name: "pte_osThreadExit", scope: !3, file: !3, line: 231, type: !416, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !927)
!927 = !{!928}
!928 = !DILocalVariable(name: "ptd", scope: !926, file: !3, line: 233, type: !473)
!929 = !DILocation(line: 233, column: 27, scope: !926)
!930 = !DILocation(line: 233, column: 21, scope: !926)
!931 = !DILocation(line: 235, column: 7, scope: !926)
!932 = !DILocation(line: 235, column: 12, scope: !926)
!933 = !DILocation(line: 236, column: 2, scope: !926)
!934 = distinct !DISubprogram(name: "current_ptd", scope: !3, file: !3, line: 133, type: !935, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!473}
!937 = !{!938, !941}
!938 = !DILocalVariable(name: "thread", scope: !934, file: !3, line: 135, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!941 = !DILocalVariable(name: "ptd", scope: !934, file: !3, line: 136, type: !942)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !474)
!944 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !945)
!945 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !946)
!946 = distinct !DILocation(line: 137, column: 2, scope: !934)
!947 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !945)
!948 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !945)
!949 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !946)
!950 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !946)
!951 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !946)
!952 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !946)
!953 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !946)
!954 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !946)
!955 = !DILocation(line: 135, column: 29, scope: !934)
!956 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !957)
!957 = distinct !DILocation(line: 138, column: 2, scope: !934)
!958 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !957)
!959 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !957)
!960 = !DILocation(line: 136, column: 30, scope: !934)
!961 = !DILocation(line: 139, column: 2, scope: !934)
!962 = distinct !DISubprogram(name: "pte_osThreadWaitForEnd", scope: !3, file: !3, line: 239, type: !790, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !963)
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "h", arg: 1, scope: !962, file: !3, line: 239, type: !645)
!965 = !DILocalVariable(name: "ptd", scope: !962, file: !3, line: 241, type: !473)
!966 = !DILocalVariable(name: "self_ptd", scope: !962, file: !3, line: 242, type: !473)
!967 = !DILocation(line: 239, column: 56, scope: !962)
!968 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !969)
!969 = distinct !DILocation(line: 241, column: 27, scope: !962)
!970 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !971)
!971 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !969)
!972 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !971)
!973 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !971)
!974 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !969)
!975 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !969)
!976 = !DILocation(line: 241, column: 21, scope: !962)
!977 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !978)
!978 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !979)
!979 = distinct !DILocation(line: 137, column: 2, scope: !934, inlinedAt: !980)
!980 = distinct !DILocation(line: 242, column: 32, scope: !962)
!981 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !978)
!982 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !978)
!983 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !979)
!984 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !979)
!985 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !979)
!986 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !979)
!987 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !979)
!988 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !979)
!989 = !DILocation(line: 135, column: 29, scope: !934, inlinedAt: !980)
!990 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !991)
!991 = distinct !DILocation(line: 138, column: 2, scope: !934, inlinedAt: !980)
!992 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !991)
!993 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !991)
!994 = !DILocation(line: 136, column: 30, scope: !934, inlinedAt: !980)
!995 = !DILocation(line: 139, column: 2, scope: !934, inlinedAt: !980)
!996 = !DILocation(line: 242, column: 21, scope: !962)
!997 = !DILocation(line: 244, column: 2, scope: !962)
!998 = !DILocation(line: 245, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 245, column: 7)
!1000 = distinct !DILexicalBlock(scope: !962, file: !3, line: 244, column: 12)
!1001 = !DILocation(line: 245, column: 7, scope: !999)
!1002 = !DILocation(line: 245, column: 7, scope: !1000)
!1003 = !DILocation(line: 246, column: 4, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 245, column: 18)
!1005 = !DILocation(line: 247, column: 4, scope: !1004)
!1006 = !DILocation(line: 250, column: 16, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 250, column: 7)
!1008 = !DILocation(line: 250, column: 40, scope: !1007)
!1009 = !{!569, !574, i64 56}
!1010 = !DILocation(line: 250, column: 46, scope: !1007)
!1011 = !DILocation(line: 250, column: 7, scope: !1000)
!1012 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 117, column: 30, scope: !1015, inlinedAt: !1019)
!1015 = distinct !DISubprogram(name: "uk_sched_yield", scope: !80, file: !80, line: 114, type: !416, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1016)
!1016 = !{!1017, !1018}
!1017 = !DILocalVariable(name: "s", scope: !1015, file: !80, line: 116, type: !78)
!1018 = !DILocalVariable(name: "current", scope: !1015, file: !80, line: 117, type: !31)
!1019 = distinct !DILocation(line: 254, column: 4, scope: !1007)
!1020 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1013)
!1021 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1013)
!1022 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1014)
!1023 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1014)
!1024 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1014)
!1025 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1014)
!1026 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1014)
!1027 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1014)
!1028 = !DILocation(line: 117, column: 20, scope: !1015, inlinedAt: !1019)
!1029 = !DILocation(line: 119, column: 2, scope: !1030, inlinedAt: !1019)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !80, line: 119, column: 2)
!1031 = distinct !DILexicalBlock(scope: !1015, file: !80, line: 119, column: 2)
!1032 = !DILocation(line: 119, column: 2, scope: !1031, inlinedAt: !1019)
!1033 = !DILocation(line: 119, column: 2, scope: !1034, inlinedAt: !1019)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !80, line: 119, column: 2)
!1035 = !DILocation(line: 121, column: 15, scope: !1015, inlinedAt: !1019)
!1036 = !DILocation(line: 116, column: 19, scope: !1015, inlinedAt: !1019)
!1037 = !DILocation(line: 122, column: 2, scope: !1038, inlinedAt: !1019)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !80, line: 122, column: 2)
!1039 = distinct !DILexicalBlock(scope: !1015, file: !80, line: 122, column: 2)
!1040 = !DILocation(line: 122, column: 2, scope: !1039, inlinedAt: !1019)
!1041 = !DILocation(line: 122, column: 2, scope: !1042, inlinedAt: !1019)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !80, line: 122, column: 2)
!1043 = !DILocation(line: 123, column: 5, scope: !1015, inlinedAt: !1019)
!1044 = !{!1045, !570, i64 0}
!1045 = !{!"uk_sched", !570, i64 0, !570, i64 8, !570, i64 16, !570, i64 24, !570, i64 32, !570, i64 40, !570, i64 48, !570, i64 56, !570, i64 64, !624, i64 72, !622, i64 80, !1046, i64 208, !1047, i64 224, !570, i64 248, !570, i64 256, !570, i64 264}
!1046 = !{!"uk_thread_list", !570, i64 0, !570, i64 8}
!1047 = !{!"ukplat_ctx_callbacks", !570, i64 0, !570, i64 8, !570, i64 16}
!1048 = !DILocation(line: 123, column: 2, scope: !1015, inlinedAt: !1019)
!1049 = !DILocation(line: 124, column: 1, scope: !1015, inlinedAt: !1019)
!1050 = distinct !{!1050, !997, !1051}
!1051 = !DILocation(line: 255, column: 2, scope: !962)
!1052 = !DILocation(line: 0, scope: !1007)
!1053 = !DILocation(line: 0, scope: !1004)
!1054 = !DILocation(line: 256, column: 1, scope: !962)
!1055 = distinct !DISubprogram(name: "pte_osThreadCancel", scope: !3, file: !3, line: 258, type: !790, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1056)
!1056 = !{!1057, !1058}
!1057 = !DILocalVariable(name: "h", arg: 1, scope: !1055, file: !3, line: 258, type: !645)
!1058 = !DILocalVariable(name: "ptd", scope: !1055, file: !3, line: 260, type: !473)
!1059 = !DILocation(line: 258, column: 52, scope: !1055)
!1060 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 260, column: 27, scope: !1055)
!1062 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !1061)
!1064 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !1063)
!1065 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !1063)
!1066 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !1061)
!1067 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !1061)
!1068 = !DILocation(line: 260, column: 21, scope: !1055)
!1069 = !DILocation(line: 194, column: 57, scope: !817, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 262, column: 2, scope: !1055)
!1071 = !DILocation(line: 198, column: 2, scope: !829, inlinedAt: !1070)
!1072 = !DILocation(line: 200, column: 9, scope: !817, inlinedAt: !1070)
!1073 = !DILocation(line: 196, column: 16, scope: !817, inlinedAt: !1070)
!1074 = !DILocation(line: 201, column: 7, scope: !817, inlinedAt: !1070)
!1075 = !DILocation(line: 201, column: 2, scope: !817, inlinedAt: !1070)
!1076 = !DILocation(line: 209, column: 28, scope: !817, inlinedAt: !1070)
!1077 = !DILocation(line: 99, column: 40, scope: !837, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 210, column: 2, scope: !817, inlinedAt: !1070)
!1079 = !DILocation(line: 104, column: 10, scope: !837, inlinedAt: !1078)
!1080 = !DILocation(line: 101, column: 16, scope: !837, inlinedAt: !1078)
!1081 = !DILocation(line: 105, column: 2, scope: !851, inlinedAt: !1078)
!1082 = !DILocation(line: 102, column: 25, scope: !837, inlinedAt: !1078)
!1083 = !DILocation(line: 105, column: 2, scope: !855, inlinedAt: !1078)
!1084 = !DILocation(line: 102, column: 32, scope: !837, inlinedAt: !1078)
!1085 = !DILocation(line: 106, column: 24, scope: !855, inlinedAt: !1078)
!1086 = !DILocation(line: 106, column: 3, scope: !855, inlinedAt: !1078)
!1087 = !DILocation(line: 107, column: 2, scope: !837, inlinedAt: !1078)
!1088 = !DILocation(line: 108, column: 1, scope: !837, inlinedAt: !1078)
!1089 = !DILocation(line: 211, column: 2, scope: !817, inlinedAt: !1070)
!1090 = !DILocation(line: 212, column: 1, scope: !817, inlinedAt: !1070)
!1091 = !DILocation(line: 264, column: 2, scope: !1055)
!1092 = distinct !DISubprogram(name: "pte_osThreadCheckCancel", scope: !3, file: !3, line: 267, type: !790, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1093)
!1093 = !{!1094, !1095}
!1094 = !DILocalVariable(name: "h", arg: 1, scope: !1092, file: !3, line: 267, type: !645)
!1095 = !DILocalVariable(name: "ptd", scope: !1092, file: !3, line: 269, type: !473)
!1096 = !DILocation(line: 267, column: 57, scope: !1092)
!1097 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 269, column: 27, scope: !1092)
!1099 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !1098)
!1101 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !1100)
!1102 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !1100)
!1103 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !1098)
!1104 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !1098)
!1105 = !DILocation(line: 269, column: 21, scope: !1092)
!1106 = !DILocation(line: 271, column: 6, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 271, column: 6)
!1108 = !DILocation(line: 271, column: 10, scope: !1107)
!1109 = !DILocation(line: 271, column: 29, scope: !1107)
!1110 = !DILocation(line: 271, column: 35, scope: !1107)
!1111 = !DILocation(line: 271, column: 6, scope: !1092)
!1112 = !DILocation(line: 274, column: 2, scope: !1092)
!1113 = !DILocation(line: 0, scope: !1092)
!1114 = !DILocation(line: 0, scope: !1107)
!1115 = !DILocation(line: 275, column: 1, scope: !1092)
!1116 = distinct !DISubprogram(name: "pte_osThreadGetHandle", scope: !3, file: !3, line: 277, type: !1117, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1119)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!645}
!1119 = !{!1120}
!1120 = !DILocalVariable(name: "cur", scope: !1116, file: !3, line: 279, type: !31)
!1121 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 280, column: 2, scope: !1116)
!1124 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1122)
!1125 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1122)
!1126 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1123)
!1127 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1123)
!1128 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1123)
!1129 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1123)
!1130 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1123)
!1131 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1123)
!1132 = !DILocation(line: 279, column: 20, scope: !1116)
!1133 = !DILocation(line: 281, column: 2, scope: !1116)
!1134 = distinct !DISubprogram(name: "pte_osThreadGetPriority", scope: !3, file: !3, line: 284, type: !1135, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!69, !645}
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DILocalVariable(name: "h", arg: 1, scope: !1134, file: !3, line: 284, type: !645)
!1139 = !DILocalVariable(name: "ret", scope: !1134, file: !3, line: 286, type: !69)
!1140 = !DILocalVariable(name: "ptd", scope: !1134, file: !3, line: 287, type: !473)
!1141 = !DILocalVariable(name: "prio", scope: !1134, file: !3, line: 288, type: !100)
!1142 = !DILocation(line: 284, column: 48, scope: !1134)
!1143 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 287, column: 27, scope: !1134)
!1145 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !1144)
!1147 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !1146)
!1148 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !1146)
!1149 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !1144)
!1150 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !1144)
!1151 = !DILocation(line: 287, column: 21, scope: !1134)
!1152 = !DILocation(line: 288, column: 2, scope: !1134)
!1153 = !DILocation(line: 290, column: 2, scope: !1134)
!1154 = !DILocation(line: 288, column: 9, scope: !1134)
!1155 = !DILocation(line: 286, column: 6, scope: !1134)
!1156 = !DILocation(line: 293, column: 9, scope: !1134)
!1157 = !DILocation(line: 294, column: 1, scope: !1134)
!1158 = !DILocation(line: 293, column: 2, scope: !1134)
!1159 = distinct !DISubprogram(name: "pte_osThreadSetPriority", scope: !3, file: !3, line: 296, type: !1160, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!547, !645, !69}
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DILocalVariable(name: "h", arg: 1, scope: !1159, file: !3, line: 296, type: !645)
!1164 = !DILocalVariable(name: "new_prio", arg: 2, scope: !1159, file: !3, line: 296, type: !69)
!1165 = !DILocalVariable(name: "ret", scope: !1159, file: !3, line: 298, type: !69)
!1166 = !DILocalVariable(name: "ptd", scope: !1159, file: !3, line: 299, type: !473)
!1167 = !DILocation(line: 296, column: 57, scope: !1159)
!1168 = !DILocation(line: 296, column: 64, scope: !1159)
!1169 = !DILocation(line: 126, column: 60, scope: !797, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 299, column: 27, scope: !1159)
!1171 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 129, column: 2, scope: !797, inlinedAt: !1170)
!1173 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !1172)
!1174 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !1172)
!1175 = !DILocation(line: 128, column: 21, scope: !797, inlinedAt: !1170)
!1176 = !DILocation(line: 130, column: 2, scope: !797, inlinedAt: !1170)
!1177 = !DILocation(line: 299, column: 21, scope: !1159)
!1178 = !DILocation(line: 301, column: 2, scope: !1159)
!1179 = !DILocation(line: 298, column: 6, scope: !1159)
!1180 = !DILocation(line: 304, column: 9, scope: !1159)
!1181 = !DILocation(line: 304, column: 2, scope: !1159)
!1182 = distinct !DISubprogram(name: "pte_osThreadSleep", scope: !3, file: !3, line: 307, type: !1183, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !7}
!1185 = !{!1186, !1187}
!1186 = !DILocalVariable(name: "msecs", arg: 1, scope: !1182, file: !3, line: 307, type: !7)
!1187 = !DILocalVariable(name: "nsec", scope: !1182, file: !3, line: 309, type: !102)
!1188 = !DILocation(line: 307, column: 37, scope: !1182)
!1189 = !DILocation(line: 309, column: 16, scope: !1182)
!1190 = !DILocation(line: 309, column: 9, scope: !1182)
!1191 = !DILocation(line: 311, column: 2, scope: !1182)
!1192 = !DILocation(line: 312, column: 1, scope: !1182)
!1193 = distinct !DISubprogram(name: "pte_osThreadGetMinPriority", scope: !3, file: !3, line: 314, type: !533, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1194 = !DILocation(line: 316, column: 2, scope: !1193)
!1195 = distinct !DISubprogram(name: "pte_osThreadGetMaxPriority", scope: !3, file: !3, line: 319, type: !533, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1196 = !DILocation(line: 321, column: 2, scope: !1195)
!1197 = distinct !DISubprogram(name: "pte_osThreadGetDefaultPriority", scope: !3, file: !3, line: 324, type: !533, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1198 = !DILocation(line: 326, column: 2, scope: !1197)
!1199 = distinct !DISubprogram(name: "pte_osMutexCreate", scope: !3, file: !3, line: 335, type: !1200, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1211)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!547, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osMutexHandle", file: !646, line: 13, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !1206, line: 58, size: 256, elements: !1207)
!1206 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1205, file: !1206, line: 59, baseType: !69, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1205, file: !1206, line: 60, baseType: !31, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1205, file: !1206, line: 61, baseType: !61, size: 128, offset: 128)
!1211 = !{!1212, !1213}
!1212 = !DILocalVariable(name: "ph", arg: 1, scope: !1199, file: !3, line: 335, type: !1202)
!1213 = !DILocalVariable(name: "m", scope: !1199, file: !3, line: 337, type: !1204)
!1214 = !DILocation(line: 335, column: 51, scope: !1199)
!1215 = !DILocation(line: 339, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 339, column: 6)
!1217 = !DILocation(line: 339, column: 6, scope: !1199)
!1218 = !DILocation(line: 342, column: 16, scope: !1199)
!1219 = !DILocation(line: 157, column: 48, scope: !672, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 342, column: 6, scope: !1199)
!1221 = !DILocation(line: 157, column: 58, scope: !672, inlinedAt: !1220)
!1222 = !DILocation(line: 159, column: 6, scope: !679, inlinedAt: !1220)
!1223 = !DILocation(line: 159, column: 6, scope: !672, inlinedAt: !1220)
!1224 = !DILocation(line: 160, column: 3, scope: !683, inlinedAt: !1220)
!1225 = !DILocation(line: 160, column: 9, scope: !683, inlinedAt: !1220)
!1226 = !DILocation(line: 161, column: 3, scope: !683, inlinedAt: !1220)
!1227 = !DILocation(line: 164, column: 1, scope: !672, inlinedAt: !1220)
!1228 = !DILocation(line: 343, column: 6, scope: !1199)
!1229 = !DILocation(line: 151, column: 51, scope: !691, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 163, column: 9, scope: !672, inlinedAt: !1220)
!1231 = !DILocation(line: 151, column: 61, scope: !691, inlinedAt: !1230)
!1232 = !DILocation(line: 153, column: 2, scope: !698, inlinedAt: !1230)
!1233 = !DILocation(line: 154, column: 12, scope: !691, inlinedAt: !1230)
!1234 = !DILocation(line: 154, column: 9, scope: !691, inlinedAt: !1230)
!1235 = !DILocation(line: 154, column: 2, scope: !691, inlinedAt: !1230)
!1236 = !DILocation(line: 163, column: 2, scope: !672, inlinedAt: !1220)
!1237 = !DILocation(line: 343, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 343, column: 6)
!1239 = !DILocation(line: 342, column: 6, scope: !1199)
!1240 = !DILocation(line: 337, column: 19, scope: !1199)
!1241 = !DILocation(line: 346, column: 2, scope: !1199)
!1242 = !DILocation(line: 348, column: 6, scope: !1199)
!1243 = !DILocation(line: 350, column: 2, scope: !1199)
!1244 = !DILocation(line: 0, scope: !1216)
!1245 = !DILocation(line: 351, column: 1, scope: !1199)
!1246 = distinct !DISubprogram(name: "pte_osMutexDelete", scope: !3, file: !3, line: 353, type: !1247, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!547, !1203}
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "h", arg: 1, scope: !1246, file: !3, line: 353, type: !1203)
!1251 = !DILocation(line: 353, column: 50, scope: !1246)
!1252 = !DILocation(line: 355, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 355, column: 6)
!1254 = !DILocation(line: 355, column: 6, scope: !1246)
!1255 = !DILocation(line: 358, column: 7, scope: !1246)
!1256 = !DILocation(line: 358, column: 2, scope: !1246)
!1257 = !DILocation(line: 360, column: 2, scope: !1246)
!1258 = !DILocation(line: 0, scope: !1253)
!1259 = !DILocation(line: 361, column: 1, scope: !1246)
!1260 = distinct !DISubprogram(name: "pte_osMutexLock", scope: !3, file: !3, line: 363, type: !1247, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1261)
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "h", arg: 1, scope: !1260, file: !3, line: 363, type: !1203)
!1263 = !DILocalVariable(name: "lock_count", scope: !1264, file: !1206, line: 78, type: !1281)
!1264 = distinct !DISubprogram(name: "uk_mutex_lock", scope: !1206, file: !1206, line: 69, type: !1265, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1204}
!1267 = !{!1268, !1269, !1270, !1271, !1263, !1272, !1273, !1278, !1279, !1280}
!1268 = !DILocalVariable(name: "m", arg: 1, scope: !1264, file: !1206, line: 69, type: !1204)
!1269 = !DILocalVariable(name: "current", scope: !1264, file: !1206, line: 71, type: !31)
!1270 = !DILocalVariable(name: "irqf", scope: !1264, file: !1206, line: 72, type: !104)
!1271 = !DILocalVariable(name: "wq", scope: !1264, file: !1206, line: 77, type: !824)
!1272 = !DILocalVariable(name: "owner", scope: !1264, file: !1206, line: 79, type: !939)
!1273 = !DILocalVariable(name: "__current", scope: !1274, file: !1206, line: 87, type: !31)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !1206, line: 86, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !1206, line: 85, column: 11)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !1206, line: 85, column: 2)
!1277 = distinct !DILexicalBlock(scope: !1264, file: !1206, line: 85, column: 2)
!1278 = !DILocalVariable(name: "flags", scope: !1274, file: !1206, line: 88, type: !104)
!1279 = !DILocalVariable(name: "__cur", scope: !1274, file: !1206, line: 89, type: !31)
!1280 = !DILocalVariable(name: "__wait", scope: !1274, file: !1206, line: 89, type: !65)
!1281 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!1282 = !DILocation(line: 78, column: 15, scope: !1264, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 368, column: 2, scope: !1260)
!1284 = !DILocation(line: 363, column: 48, scope: !1260)
!1285 = !DILocation(line: 365, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 365, column: 6)
!1287 = !DILocation(line: 365, column: 6, scope: !1260)
!1288 = !DILocation(line: 69, column: 51, scope: !1264, inlinedAt: !1283)
!1289 = !DILocation(line: 77, column: 28, scope: !1264, inlinedAt: !1283)
!1290 = !DILocation(line: 78, column: 2, scope: !1264, inlinedAt: !1283)
!1291 = !DILocation(line: 78, column: 31, scope: !1264, inlinedAt: !1283)
!1292 = !{!1293, !576, i64 0}
!1293 = !{!"uk_mutex", !576, i64 0, !570, i64 8, !575, i64 16}
!1294 = !DILocation(line: 79, column: 40, scope: !1264, inlinedAt: !1283)
!1295 = !{!1293, !570, i64 8}
!1296 = !DILocation(line: 79, column: 29, scope: !1264, inlinedAt: !1283)
!1297 = !DILocation(line: 81, column: 2, scope: !1298, inlinedAt: !1283)
!1298 = distinct !DILexicalBlock(scope: !1264, file: !1206, line: 81, column: 2)
!1299 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 83, column: 2, scope: !1264, inlinedAt: !1283)
!1302 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1300)
!1303 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1300)
!1304 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1301)
!1305 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1301)
!1306 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1301)
!1307 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1301)
!1308 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1301)
!1309 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1301)
!1310 = !DILocation(line: 71, column: 20, scope: !1264, inlinedAt: !1283)
!1311 = !DILocation(line: 85, column: 2, scope: !1264, inlinedAt: !1283)
!1312 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 89, column: 3, scope: !1274, inlinedAt: !1283)
!1315 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1313)
!1316 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1313)
!1317 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1314)
!1318 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1314)
!1319 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1314)
!1320 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 49, column: 21, scope: !1322, inlinedAt: !1326)
!1322 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1323, file: !1323, line: 47, type: !533, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1324)
!1323 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1324 = !{!1325}
!1325 = !DILocalVariable(name: "sp", scope: !1322, file: !1323, line: 49, type: !104)
!1326 = distinct !DILocation(line: 89, column: 3, scope: !1274, inlinedAt: !1283)
!1327 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1321)
!1328 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1321)
!1329 = !DILocation(line: 49, column: 16, scope: !1322, inlinedAt: !1326)
!1330 = !DILocation(line: 50, column: 19, scope: !1322, inlinedAt: !1326)
!1331 = !DILocation(line: 50, column: 11, scope: !1322, inlinedAt: !1326)
!1332 = !DILocation(line: 50, column: 9, scope: !1322, inlinedAt: !1326)
!1333 = !DILocation(line: 50, column: 2, scope: !1322, inlinedAt: !1326)
!1334 = !DILocation(line: 89, column: 3, scope: !1274, inlinedAt: !1283)
!1335 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 89, column: 3, scope: !1274, inlinedAt: !1283)
!1338 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1336)
!1339 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1336)
!1340 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1337)
!1341 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1337)
!1342 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1337)
!1343 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1337)
!1344 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1337)
!1345 = !DILocation(line: 90, column: 7, scope: !1346, inlinedAt: !1283)
!1346 = distinct !DILexicalBlock(scope: !1274, file: !1206, line: 90, column: 7)
!1347 = !DILocation(line: 90, column: 18, scope: !1346, inlinedAt: !1283)
!1348 = !DILocation(line: 90, column: 23, scope: !1346, inlinedAt: !1283)
!1349 = !DILocation(line: 90, column: 7, scope: !1274, inlinedAt: !1283)
!1350 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 93, column: 16, scope: !1353, inlinedAt: !1283)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !1206, line: 92, column: 12)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1206, line: 92, column: 3)
!1355 = distinct !DILexicalBlock(scope: !1274, file: !1206, line: 92, column: 3)
!1356 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1351)
!1357 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1351)
!1358 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1352)
!1359 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1352)
!1360 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1352)
!1361 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1352)
!1362 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1352)
!1363 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1352)
!1364 = !DILocation(line: 87, column: 21, scope: !1274, inlinedAt: !1283)
!1365 = !DILocation(line: 95, column: 12, scope: !1353, inlinedAt: !1283)
!1366 = !DILocation(line: 88, column: 17, scope: !1274, inlinedAt: !1283)
!1367 = !DILocalVariable(name: "wq", arg: 1, scope: !1368, file: !838, line: 58, type: !841)
!1368 = distinct !DISubprogram(name: "uk_waitq_add", scope: !838, file: !838, line: 58, type: !1369, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !841, !65}
!1371 = !{!1367, !1372}
!1372 = !DILocalVariable(name: "entry", arg: 2, scope: !1368, file: !838, line: 59, type: !65)
!1373 = !DILocation(line: 58, column: 36, scope: !1368, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 96, column: 4, scope: !1353, inlinedAt: !1283)
!1375 = !DILocation(line: 59, column: 26, scope: !1368, inlinedAt: !1374)
!1376 = !DILocation(line: 61, column: 14, scope: !1377, inlinedAt: !1374)
!1377 = distinct !DILexicalBlock(scope: !1368, file: !838, line: 61, column: 6)
!1378 = !{!857, !576, i64 0}
!1379 = !DILocation(line: 61, column: 7, scope: !1377, inlinedAt: !1374)
!1380 = !DILocation(line: 61, column: 6, scope: !1368, inlinedAt: !1374)
!1381 = !DILocation(line: 62, column: 3, scope: !1382, inlinedAt: !1374)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !838, line: 62, column: 3)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !838, line: 61, column: 23)
!1384 = !{!575, !570, i64 8}
!1385 = !DILocation(line: 63, column: 18, scope: !1383, inlinedAt: !1374)
!1386 = !DILocation(line: 64, column: 2, scope: !1383, inlinedAt: !1374)
!1387 = !DILocation(line: 65, column: 1, scope: !1368, inlinedAt: !1374)
!1388 = !DILocalVariable(name: "thread", arg: 1, scope: !1389, file: !33, line: 122, type: !31)
!1389 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !33, file: !33, line: 122, type: !1390, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !31, !53}
!1392 = !{!1388, !1393}
!1393 = !DILocalVariable(name: "time", arg: 2, scope: !1389, file: !33, line: 122, type: !53)
!1394 = !DILocation(line: 122, column: 64, scope: !1389, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 97, column: 4, scope: !1353, inlinedAt: !1283)
!1396 = !DILocation(line: 122, column: 80, scope: !1389, inlinedAt: !1395)
!1397 = !DILocation(line: 124, column: 10, scope: !1389, inlinedAt: !1395)
!1398 = !DILocation(line: 124, column: 22, scope: !1389, inlinedAt: !1395)
!1399 = !{!622, !574, i64 56}
!1400 = !DILocation(line: 125, column: 1, scope: !1389, inlinedAt: !1395)
!1401 = !DILocalVariable(name: "thread", arg: 1, scope: !1402, file: !33, line: 183, type: !31)
!1402 = distinct !DISubprogram(name: "clear_runnable", scope: !33, file: !33, line: 183, type: !901, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1403)
!1403 = !{!1401}
!1404 = !DILocation(line: 183, column: 53, scope: !1402, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 99, column: 4, scope: !1353, inlinedAt: !1283)
!1406 = !DILocation(line: 185, column: 10, scope: !1402, inlinedAt: !1405)
!1407 = !DILocation(line: 185, column: 16, scope: !1402, inlinedAt: !1405)
!1408 = !{!622, !576, i64 48}
!1409 = !DILocation(line: 186, column: 1, scope: !1402, inlinedAt: !1405)
!1410 = !DILocalVariable(name: "t", arg: 1, scope: !1411, file: !80, line: 151, type: !31)
!1411 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !80, file: !80, line: 151, type: !901, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1412)
!1412 = !{!1410}
!1413 = !DILocation(line: 151, column: 62, scope: !1411, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 100, column: 4, scope: !1353, inlinedAt: !1283)
!1415 = !DILocation(line: 153, column: 2, scope: !1416, inlinedAt: !1414)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !80, line: 153, column: 2)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !80, line: 153, column: 2)
!1418 = !DILocation(line: 153, column: 2, scope: !1417, inlinedAt: !1414)
!1419 = !DILocation(line: 153, column: 2, scope: !1420, inlinedAt: !1414)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !80, line: 153, column: 2)
!1421 = !DILocation(line: 154, column: 6, scope: !1411, inlinedAt: !1414)
!1422 = !DILocation(line: 154, column: 14, scope: !1411, inlinedAt: !1414)
!1423 = !{!1045, !570, i64 24}
!1424 = !DILocation(line: 154, column: 2, scope: !1411, inlinedAt: !1414)
!1425 = !DILocation(line: 155, column: 1, scope: !1411, inlinedAt: !1414)
!1426 = !DILocation(line: 102, column: 4, scope: !1353, inlinedAt: !1283)
!1427 = !DILocation(line: 103, column: 8, scope: !1428, inlinedAt: !1283)
!1428 = distinct !DILexicalBlock(scope: !1353, file: !1206, line: 103, column: 8)
!1429 = !DILocation(line: 103, column: 19, scope: !1428, inlinedAt: !1283)
!1430 = !DILocation(line: 103, column: 24, scope: !1428, inlinedAt: !1283)
!1431 = !DILocation(line: 103, column: 8, scope: !1353, inlinedAt: !1283)
!1432 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 117, column: 30, scope: !1015, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 105, column: 4, scope: !1353, inlinedAt: !1283)
!1436 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1433)
!1437 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1433)
!1438 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1434)
!1439 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1434)
!1440 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1434)
!1441 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1434)
!1442 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1434)
!1443 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1434)
!1444 = !DILocation(line: 117, column: 20, scope: !1015, inlinedAt: !1435)
!1445 = !DILocation(line: 119, column: 2, scope: !1030, inlinedAt: !1435)
!1446 = !DILocation(line: 119, column: 2, scope: !1031, inlinedAt: !1435)
!1447 = !DILocation(line: 119, column: 2, scope: !1034, inlinedAt: !1435)
!1448 = !DILocation(line: 121, column: 15, scope: !1015, inlinedAt: !1435)
!1449 = !DILocation(line: 116, column: 19, scope: !1015, inlinedAt: !1435)
!1450 = !DILocation(line: 122, column: 2, scope: !1038, inlinedAt: !1435)
!1451 = !DILocation(line: 122, column: 2, scope: !1039, inlinedAt: !1435)
!1452 = !DILocation(line: 122, column: 2, scope: !1042, inlinedAt: !1435)
!1453 = !DILocation(line: 123, column: 5, scope: !1015, inlinedAt: !1435)
!1454 = !DILocation(line: 123, column: 2, scope: !1015, inlinedAt: !1435)
!1455 = !DILocation(line: 124, column: 1, scope: !1015, inlinedAt: !1435)
!1456 = !DILocation(line: 92, column: 3, scope: !1354, inlinedAt: !1283)
!1457 = distinct !{!1457, !1458, !1459}
!1458 = !DILocation(line: 92, column: 3, scope: !1355)
!1459 = !DILocation(line: 106, column: 3, scope: !1355)
!1460 = !DILocation(line: 107, column: 11, scope: !1274, inlinedAt: !1283)
!1461 = !DILocation(line: 109, column: 3, scope: !1274, inlinedAt: !1283)
!1462 = !DILocalVariable(name: "wq", arg: 1, scope: !1463, file: !838, line: 68, type: !841)
!1463 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !838, file: !838, line: 68, type: !1369, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1464)
!1464 = !{!1462, !1465, !1466}
!1465 = !DILocalVariable(name: "entry", arg: 2, scope: !1463, file: !838, line: 69, type: !65)
!1466 = !DILocalVariable(name: "curelm", scope: !1467, file: !838, line: 72, type: !65)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !838, line: 72, column: 3)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !838, line: 72, column: 3)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !838, line: 72, column: 3)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !838, line: 71, column: 22)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !838, line: 71, column: 6)
!1472 = !DILocation(line: 68, column: 39, scope: !1463, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 110, column: 3, scope: !1274, inlinedAt: !1283)
!1474 = !DILocation(line: 69, column: 26, scope: !1463, inlinedAt: !1473)
!1475 = !DILocation(line: 71, column: 13, scope: !1471, inlinedAt: !1473)
!1476 = !DILocation(line: 71, column: 6, scope: !1471, inlinedAt: !1473)
!1477 = !DILocation(line: 71, column: 6, scope: !1463, inlinedAt: !1473)
!1478 = !DILocation(line: 72, column: 3, scope: !1468, inlinedAt: !1473)
!1479 = !DILocation(line: 72, column: 3, scope: !1469, inlinedAt: !1473)
!1480 = !DILocation(line: 72, column: 3, scope: !1481, inlinedAt: !1473)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !838, line: 72, column: 3)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !838, line: 72, column: 3)
!1483 = distinct !DILexicalBlock(scope: !1468, file: !838, line: 72, column: 3)
!1484 = !DILocation(line: 72, column: 3, scope: !1482, inlinedAt: !1473)
!1485 = !DILocation(line: 72, column: 3, scope: !1467, inlinedAt: !1473)
!1486 = distinct !{!1486, !1487, !1487}
!1487 = !DILocation(line: 72, column: 3, scope: !1467)
!1488 = !DILocation(line: 72, column: 3, scope: !1489, inlinedAt: !1473)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !838, line: 72, column: 3)
!1490 = distinct !DILexicalBlock(scope: !1467, file: !838, line: 72, column: 3)
!1491 = !DILocation(line: 72, column: 3, scope: !1490, inlinedAt: !1473)
!1492 = !DILocation(line: 73, column: 18, scope: !1470, inlinedAt: !1473)
!1493 = !DILocation(line: 74, column: 2, scope: !1470, inlinedAt: !1473)
!1494 = !DILocation(line: 75, column: 1, scope: !1463, inlinedAt: !1473)
!1495 = !DILocation(line: 111, column: 3, scope: !1274, inlinedAt: !1283)
!1496 = !DILocation(line: 112, column: 2, scope: !1275, inlinedAt: !1283)
!1497 = !DILocation(line: 0, scope: !1260)
!1498 = !DILocation(line: 114, column: 9, scope: !1275, inlinedAt: !1283)
!1499 = !DILocation(line: 72, column: 16, scope: !1264, inlinedAt: !1283)
!1500 = !DILocation(line: 115, column: 9, scope: !1501, inlinedAt: !1283)
!1501 = distinct !DILexicalBlock(scope: !1275, file: !1206, line: 115, column: 6)
!1502 = !DILocation(line: 115, column: 20, scope: !1501, inlinedAt: !1283)
!1503 = !DILocation(line: 115, column: 25, scope: !1501, inlinedAt: !1283)
!1504 = !DILocation(line: 115, column: 31, scope: !1501, inlinedAt: !1283)
!1505 = !DILocation(line: 115, column: 37, scope: !1501, inlinedAt: !1283)
!1506 = !DILocation(line: 115, column: 6, scope: !1275, inlinedAt: !1283)
!1507 = !DILocation(line: 117, column: 2, scope: !1275, inlinedAt: !1283)
!1508 = !DILocation(line: 85, column: 2, scope: !1276, inlinedAt: !1283)
!1509 = distinct !{!1509, !1510, !1511}
!1510 = !DILocation(line: 85, column: 2, scope: !1277)
!1511 = !DILocation(line: 118, column: 1, scope: !1277)
!1512 = !DILocation(line: 119, column: 15, scope: !1264, inlinedAt: !1283)
!1513 = !DILocation(line: 120, column: 11, scope: !1264, inlinedAt: !1283)
!1514 = !DILocation(line: 121, column: 2, scope: !1264, inlinedAt: !1283)
!1515 = !DILocation(line: 122, column: 1, scope: !1264, inlinedAt: !1283)
!1516 = !DILocation(line: 370, column: 2, scope: !1260)
!1517 = !DILocation(line: 0, scope: !1286)
!1518 = !DILocation(line: 371, column: 1, scope: !1260)
!1519 = distinct !DISubprogram(name: "pte_osMutexTimedLock", scope: !3, file: !3, line: 373, type: !1520, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!547, !1203, !7}
!1522 = !{!1523, !1524}
!1523 = !DILocalVariable(name: "h", arg: 1, scope: !1519, file: !3, line: 373, type: !1203)
!1524 = !DILocalVariable(name: "timeoutMsecs", arg: 2, scope: !1519, file: !3, line: 374, type: !7)
!1525 = !DILocation(line: 373, column: 53, scope: !1519)
!1526 = !DILocation(line: 374, column: 15, scope: !1519)
!1527 = !DILocation(line: 376, column: 2, scope: !1519)
!1528 = distinct !DISubprogram(name: "pte_osMutexUnlock", scope: !3, file: !3, line: 380, type: !1247, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1529)
!1529 = !{!1530}
!1530 = !DILocalVariable(name: "h", arg: 1, scope: !1528, file: !3, line: 380, type: !1203)
!1531 = !DILocation(line: 380, column: 50, scope: !1528)
!1532 = !DILocation(line: 382, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 382, column: 6)
!1534 = !DILocation(line: 382, column: 6, scope: !1528)
!1535 = !DILocation(line: 0, scope: !1528)
!1536 = !DILocalVariable(name: "m", arg: 1, scope: !1537, file: !1206, line: 149, type: !1204)
!1537 = distinct !DISubprogram(name: "uk_mutex_unlock", scope: !1206, file: !1206, line: 149, type: !1265, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1538)
!1538 = !{!1536, !1539, !1540}
!1539 = !DILocalVariable(name: "irqf", scope: !1537, file: !1206, line: 151, type: !104)
!1540 = !DILocalVariable(name: "wq", scope: !1537, file: !1206, line: 153, type: !824)
!1541 = !DILocation(line: 149, column: 53, scope: !1537, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 385, column: 2, scope: !1528)
!1543 = !DILocation(line: 153, column: 28, scope: !1537, inlinedAt: !1542)
!1544 = !DILocation(line: 157, column: 9, scope: !1537, inlinedAt: !1542)
!1545 = !DILocation(line: 151, column: 16, scope: !1537, inlinedAt: !1542)
!1546 = !DILocation(line: 158, column: 2, scope: !1547, inlinedAt: !1542)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !1206, line: 158, column: 2)
!1548 = distinct !DILexicalBlock(scope: !1537, file: !1206, line: 158, column: 2)
!1549 = !DILocation(line: 158, column: 2, scope: !1548, inlinedAt: !1542)
!1550 = !DILocation(line: 158, column: 2, scope: !1551, inlinedAt: !1542)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !1206, line: 158, column: 2)
!1552 = !DILocation(line: 159, column: 6, scope: !1553, inlinedAt: !1542)
!1553 = distinct !DILexicalBlock(scope: !1537, file: !1206, line: 159, column: 6)
!1554 = !DILocation(line: 159, column: 22, scope: !1553, inlinedAt: !1542)
!1555 = !DILocation(line: 159, column: 6, scope: !1537, inlinedAt: !1542)
!1556 = !DILocation(line: 160, column: 6, scope: !1557, inlinedAt: !1542)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !1206, line: 159, column: 28)
!1558 = !DILocation(line: 160, column: 12, scope: !1557, inlinedAt: !1542)
!1559 = !DILocation(line: 99, column: 40, scope: !837, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 161, column: 3, scope: !1557, inlinedAt: !1542)
!1561 = !DILocation(line: 104, column: 10, scope: !837, inlinedAt: !1560)
!1562 = !DILocation(line: 101, column: 16, scope: !837, inlinedAt: !1560)
!1563 = !DILocation(line: 105, column: 2, scope: !851, inlinedAt: !1560)
!1564 = !DILocation(line: 102, column: 25, scope: !837, inlinedAt: !1560)
!1565 = !DILocation(line: 105, column: 2, scope: !855, inlinedAt: !1560)
!1566 = !DILocation(line: 102, column: 32, scope: !837, inlinedAt: !1560)
!1567 = !DILocation(line: 106, column: 24, scope: !855, inlinedAt: !1560)
!1568 = !DILocation(line: 106, column: 3, scope: !855, inlinedAt: !1560)
!1569 = !DILocation(line: 107, column: 2, scope: !837, inlinedAt: !1560)
!1570 = !DILocation(line: 108, column: 1, scope: !837, inlinedAt: !1560)
!1571 = !DILocation(line: 162, column: 2, scope: !1557, inlinedAt: !1542)
!1572 = !DILocation(line: 163, column: 2, scope: !1537, inlinedAt: !1542)
!1573 = !DILocation(line: 164, column: 1, scope: !1537, inlinedAt: !1542)
!1574 = !DILocation(line: 387, column: 2, scope: !1528)
!1575 = !DILocation(line: 0, scope: !1533)
!1576 = !DILocation(line: 388, column: 1, scope: !1528)
!1577 = distinct !DISubprogram(name: "pte_osSemaphoreCreate", scope: !3, file: !3, line: 396, type: !1578, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1582)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!547, !69, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !646, line: 12, baseType: !820)
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "init_value", arg: 1, scope: !1577, file: !3, line: 396, type: !69)
!1584 = !DILocalVariable(name: "ph", arg: 2, scope: !1577, file: !3, line: 396, type: !1580)
!1585 = !DILocalVariable(name: "s", scope: !1577, file: !3, line: 398, type: !820)
!1586 = !DILocation(line: 396, column: 40, scope: !1577)
!1587 = !DILocation(line: 396, column: 75, scope: !1577)
!1588 = !DILocation(line: 400, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 400, column: 6)
!1590 = !DILocation(line: 400, column: 6, scope: !1577)
!1591 = !DILocation(line: 403, column: 16, scope: !1577)
!1592 = !DILocation(line: 157, column: 48, scope: !672, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 403, column: 6, scope: !1577)
!1594 = !DILocation(line: 157, column: 58, scope: !672, inlinedAt: !1593)
!1595 = !DILocation(line: 159, column: 6, scope: !679, inlinedAt: !1593)
!1596 = !DILocation(line: 159, column: 6, scope: !672, inlinedAt: !1593)
!1597 = !DILocation(line: 160, column: 3, scope: !683, inlinedAt: !1593)
!1598 = !DILocation(line: 160, column: 9, scope: !683, inlinedAt: !1593)
!1599 = !DILocation(line: 161, column: 3, scope: !683, inlinedAt: !1593)
!1600 = !DILocation(line: 164, column: 1, scope: !672, inlinedAt: !1593)
!1601 = !DILocation(line: 404, column: 6, scope: !1577)
!1602 = !DILocation(line: 151, column: 51, scope: !691, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 163, column: 9, scope: !672, inlinedAt: !1593)
!1604 = !DILocation(line: 151, column: 61, scope: !691, inlinedAt: !1603)
!1605 = !DILocation(line: 153, column: 2, scope: !698, inlinedAt: !1603)
!1606 = !DILocation(line: 154, column: 12, scope: !691, inlinedAt: !1603)
!1607 = !DILocation(line: 154, column: 9, scope: !691, inlinedAt: !1603)
!1608 = !DILocation(line: 154, column: 2, scope: !691, inlinedAt: !1603)
!1609 = !DILocation(line: 163, column: 2, scope: !672, inlinedAt: !1593)
!1610 = !DILocation(line: 404, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 404, column: 6)
!1612 = !DILocation(line: 403, column: 6, scope: !1577)
!1613 = !DILocation(line: 398, column: 23, scope: !1577)
!1614 = !DILocation(line: 407, column: 23, scope: !1577)
!1615 = !DILocation(line: 407, column: 2, scope: !1577)
!1616 = !DILocation(line: 409, column: 6, scope: !1577)
!1617 = !DILocation(line: 411, column: 2, scope: !1577)
!1618 = !DILocation(line: 0, scope: !1589)
!1619 = !DILocation(line: 412, column: 1, scope: !1577)
!1620 = distinct !DISubprogram(name: "pte_osSemaphoreDelete", scope: !3, file: !3, line: 414, type: !1621, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!547, !1581}
!1623 = !{!1624}
!1624 = !DILocalVariable(name: "h", arg: 1, scope: !1620, file: !3, line: 414, type: !1581)
!1625 = !DILocation(line: 414, column: 58, scope: !1620)
!1626 = !DILocation(line: 416, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 416, column: 6)
!1628 = !DILocation(line: 416, column: 6, scope: !1620)
!1629 = !DILocation(line: 419, column: 10, scope: !1620)
!1630 = !DILocalVariable(name: "a", arg: 1, scope: !1631, file: !156, line: 237, type: !154)
!1631 = distinct !DISubprogram(name: "uk_free", scope: !156, file: !156, line: 237, type: !188, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1632)
!1632 = !{!1630, !1633}
!1633 = !DILocalVariable(name: "ptr", arg: 2, scope: !1631, file: !156, line: 237, type: !29)
!1634 = !DILocation(line: 237, column: 45, scope: !1631, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 419, column: 2, scope: !1620)
!1636 = !DILocalVariable(name: "a", arg: 1, scope: !1637, file: !156, line: 231, type: !154)
!1637 = distinct !DISubprogram(name: "uk_do_free", scope: !156, file: !156, line: 231, type: !188, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1638)
!1638 = !{!1636, !1639}
!1639 = !DILocalVariable(name: "ptr", arg: 2, scope: !1637, file: !156, line: 231, type: !29)
!1640 = !DILocation(line: 231, column: 48, scope: !1637, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 239, column: 2, scope: !1631, inlinedAt: !1635)
!1642 = !DILocation(line: 233, column: 2, scope: !1643, inlinedAt: !1641)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !156, line: 233, column: 2)
!1644 = distinct !DILexicalBlock(scope: !1637, file: !156, line: 233, column: 2)
!1645 = !DILocation(line: 233, column: 2, scope: !1644, inlinedAt: !1641)
!1646 = !DILocation(line: 233, column: 2, scope: !1647, inlinedAt: !1641)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !156, line: 233, column: 2)
!1648 = !DILocation(line: 419, column: 31, scope: !1620)
!1649 = !DILocation(line: 231, column: 57, scope: !1637, inlinedAt: !1641)
!1650 = !DILocation(line: 237, column: 54, scope: !1631, inlinedAt: !1635)
!1651 = !DILocation(line: 234, column: 5, scope: !1637, inlinedAt: !1641)
!1652 = !DILocation(line: 234, column: 2, scope: !1637, inlinedAt: !1641)
!1653 = !DILocation(line: 235, column: 1, scope: !1637, inlinedAt: !1641)
!1654 = !DILocation(line: 240, column: 1, scope: !1631, inlinedAt: !1635)
!1655 = !DILocation(line: 421, column: 2, scope: !1620)
!1656 = !DILocation(line: 0, scope: !1627)
!1657 = !DILocation(line: 422, column: 1, scope: !1620)
!1658 = distinct !DISubprogram(name: "pte_osSemaphorePost", scope: !3, file: !3, line: 424, type: !1659, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!547, !1581, !69}
!1661 = !{!1662, !1663, !1664}
!1662 = !DILocalVariable(name: "h", arg: 1, scope: !1658, file: !3, line: 424, type: !1581)
!1663 = !DILocalVariable(name: "count", arg: 2, scope: !1658, file: !3, line: 424, type: !69)
!1664 = !DILocalVariable(name: "i", scope: !1658, file: !3, line: 426, type: !69)
!1665 = !DILocation(line: 424, column: 56, scope: !1658)
!1666 = !DILocation(line: 424, column: 63, scope: !1658)
!1667 = !DILocation(line: 428, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 428, column: 6)
!1669 = !DILocation(line: 428, column: 6, scope: !1658)
!1670 = !DILocation(line: 0, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 431, column: 2)
!1672 = !DILocation(line: 426, column: 6, scope: !1658)
!1673 = !DILocation(line: 431, column: 16, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 431, column: 2)
!1675 = !DILocation(line: 431, column: 2, scope: !1671)
!1676 = !DILocation(line: 0, scope: !1658)
!1677 = !DILocation(line: 194, column: 57, scope: !817, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 432, column: 3, scope: !1674)
!1679 = !DILocation(line: 200, column: 9, scope: !817, inlinedAt: !1678)
!1680 = !DILocation(line: 196, column: 16, scope: !817, inlinedAt: !1678)
!1681 = !DILocation(line: 201, column: 2, scope: !817, inlinedAt: !1678)
!1682 = !DILocation(line: 209, column: 28, scope: !817, inlinedAt: !1678)
!1683 = !DILocation(line: 99, column: 40, scope: !837, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 210, column: 2, scope: !817, inlinedAt: !1678)
!1685 = !DILocation(line: 104, column: 10, scope: !837, inlinedAt: !1684)
!1686 = !DILocation(line: 101, column: 16, scope: !837, inlinedAt: !1684)
!1687 = !DILocation(line: 105, column: 2, scope: !851, inlinedAt: !1684)
!1688 = !DILocation(line: 102, column: 25, scope: !837, inlinedAt: !1684)
!1689 = !DILocation(line: 105, column: 2, scope: !855, inlinedAt: !1684)
!1690 = !DILocation(line: 102, column: 32, scope: !837, inlinedAt: !1684)
!1691 = !DILocation(line: 106, column: 24, scope: !855, inlinedAt: !1684)
!1692 = !DILocation(line: 106, column: 3, scope: !855, inlinedAt: !1684)
!1693 = !DILocation(line: 107, column: 2, scope: !837, inlinedAt: !1684)
!1694 = !DILocation(line: 108, column: 1, scope: !837, inlinedAt: !1684)
!1695 = !DILocation(line: 211, column: 2, scope: !817, inlinedAt: !1678)
!1696 = !DILocation(line: 212, column: 1, scope: !817, inlinedAt: !1678)
!1697 = !DILocation(line: 431, column: 26, scope: !1674)
!1698 = !DILocation(line: 431, column: 2, scope: !1674)
!1699 = distinct !{!1699, !1675, !1700}
!1700 = !DILocation(line: 432, column: 20, scope: !1671)
!1701 = !DILocation(line: 0, scope: !1668)
!1702 = !DILocation(line: 435, column: 1, scope: !1658)
!1703 = distinct !DISubprogram(name: "pte_osSemaphorePend", scope: !3, file: !3, line: 437, type: !1704, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1707)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!547, !1581, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1707 = !{!1708, !1709, !1710}
!1708 = !DILocalVariable(name: "h", arg: 1, scope: !1703, file: !3, line: 437, type: !1581)
!1709 = !DILocalVariable(name: "ptimeout_msecs", arg: 2, scope: !1703, file: !3, line: 438, type: !1706)
!1710 = !DILocalVariable(name: "timeout", scope: !1703, file: !3, line: 440, type: !102)
!1711 = !DILocation(line: 437, column: 56, scope: !1703)
!1712 = !DILocation(line: 438, column: 16, scope: !1703)
!1713 = !DILocation(line: 442, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 442, column: 6)
!1715 = !DILocation(line: 442, column: 6, scope: !1703)
!1716 = !DILocation(line: 445, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 445, column: 6)
!1718 = !DILocation(line: 445, column: 6, scope: !1703)
!1719 = !DILocation(line: 446, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 445, column: 22)
!1721 = !DILocation(line: 440, column: 9, scope: !1703)
!1722 = !DILocalVariable(name: "s", arg: 1, scope: !1723, file: !487, line: 128, type: !820)
!1723 = distinct !DISubprogram(name: "uk_semaphore_down_to", scope: !487, file: !487, line: 128, type: !1724, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!102, !820, !102}
!1726 = !{!1722, !1727, !1728, !1729, !1730, !1731, !1736, !1737, !1738}
!1727 = !DILocalVariable(name: "timeout", arg: 2, scope: !1723, file: !487, line: 129, type: !102)
!1728 = !DILocalVariable(name: "irqf", scope: !1723, file: !487, line: 131, type: !104)
!1729 = !DILocalVariable(name: "then", scope: !1723, file: !487, line: 132, type: !102)
!1730 = !DILocalVariable(name: "deadline", scope: !1723, file: !487, line: 133, type: !102)
!1731 = !DILocalVariable(name: "__current", scope: !1732, file: !487, line: 141, type: !31)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !487, line: 140, column: 6)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !487, line: 139, column: 11)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !487, line: 139, column: 2)
!1735 = distinct !DILexicalBlock(scope: !1723, file: !487, line: 139, column: 2)
!1736 = !DILocalVariable(name: "flags", scope: !1732, file: !487, line: 142, type: !104)
!1737 = !DILocalVariable(name: "__cur", scope: !1732, file: !487, line: 143, type: !31)
!1738 = !DILocalVariable(name: "__wait", scope: !1732, file: !487, line: 143, type: !65)
!1739 = !DILocation(line: 128, column: 64, scope: !1723, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 448, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 448, column: 7)
!1742 = !DILocation(line: 129, column: 15, scope: !1723, inlinedAt: !1740)
!1743 = !DILocation(line: 132, column: 16, scope: !1723, inlinedAt: !1740)
!1744 = !DILocation(line: 132, column: 9, scope: !1723, inlinedAt: !1740)
!1745 = !DILocation(line: 135, column: 2, scope: !1746, inlinedAt: !1740)
!1746 = distinct !DILexicalBlock(scope: !1723, file: !487, line: 135, column: 2)
!1747 = !DILocation(line: 137, column: 18, scope: !1723, inlinedAt: !1740)
!1748 = !DILocation(line: 133, column: 9, scope: !1723, inlinedAt: !1740)
!1749 = !DILocation(line: 139, column: 2, scope: !1723, inlinedAt: !1740)
!1750 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 143, column: 4, scope: !1732, inlinedAt: !1740)
!1753 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1751)
!1754 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1751)
!1755 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1752)
!1756 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1752)
!1757 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1752)
!1758 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 49, column: 21, scope: !1322, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 143, column: 4, scope: !1732, inlinedAt: !1740)
!1761 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1759)
!1762 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1759)
!1763 = !DILocation(line: 49, column: 16, scope: !1322, inlinedAt: !1760)
!1764 = !DILocation(line: 50, column: 19, scope: !1322, inlinedAt: !1760)
!1765 = !DILocation(line: 50, column: 11, scope: !1322, inlinedAt: !1760)
!1766 = !DILocation(line: 50, column: 9, scope: !1322, inlinedAt: !1760)
!1767 = !DILocation(line: 50, column: 2, scope: !1322, inlinedAt: !1760)
!1768 = !DILocation(line: 143, column: 4, scope: !1732, inlinedAt: !1740)
!1769 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 143, column: 4, scope: !1732, inlinedAt: !1740)
!1772 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1770)
!1773 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1770)
!1774 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1771)
!1775 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1771)
!1776 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1771)
!1777 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1771)
!1778 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1771)
!1779 = !DILocation(line: 144, column: 11, scope: !1780, inlinedAt: !1740)
!1780 = distinct !DILexicalBlock(scope: !1732, file: !487, line: 144, column: 8)
!1781 = !DILocation(line: 144, column: 17, scope: !1780, inlinedAt: !1740)
!1782 = !DILocation(line: 144, column: 8, scope: !1732, inlinedAt: !1740)
!1783 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 147, column: 17, scope: !1786, inlinedAt: !1740)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !487, line: 146, column: 13)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !487, line: 146, column: 4)
!1788 = distinct !DILexicalBlock(scope: !1732, file: !487, line: 146, column: 4)
!1789 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1784)
!1790 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1784)
!1791 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1785)
!1792 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1785)
!1793 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1785)
!1794 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1785)
!1795 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1785)
!1796 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1785)
!1797 = !DILocation(line: 141, column: 22, scope: !1732, inlinedAt: !1740)
!1798 = !DILocation(line: 149, column: 13, scope: !1786, inlinedAt: !1740)
!1799 = !DILocation(line: 142, column: 18, scope: !1732, inlinedAt: !1740)
!1800 = !DILocation(line: 58, column: 36, scope: !1368, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 150, column: 5, scope: !1786, inlinedAt: !1740)
!1802 = !DILocation(line: 59, column: 26, scope: !1368, inlinedAt: !1801)
!1803 = !DILocation(line: 61, column: 14, scope: !1377, inlinedAt: !1801)
!1804 = !DILocation(line: 61, column: 7, scope: !1377, inlinedAt: !1801)
!1805 = !DILocation(line: 61, column: 6, scope: !1368, inlinedAt: !1801)
!1806 = !DILocation(line: 62, column: 3, scope: !1382, inlinedAt: !1801)
!1807 = !DILocation(line: 63, column: 18, scope: !1383, inlinedAt: !1801)
!1808 = !DILocation(line: 64, column: 2, scope: !1383, inlinedAt: !1801)
!1809 = !DILocation(line: 65, column: 1, scope: !1368, inlinedAt: !1801)
!1810 = !DILocation(line: 122, column: 64, scope: !1389, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 151, column: 5, scope: !1786, inlinedAt: !1740)
!1812 = !DILocation(line: 122, column: 80, scope: !1389, inlinedAt: !1811)
!1813 = !DILocation(line: 124, column: 10, scope: !1389, inlinedAt: !1811)
!1814 = !DILocation(line: 124, column: 22, scope: !1389, inlinedAt: !1811)
!1815 = !DILocation(line: 125, column: 1, scope: !1389, inlinedAt: !1811)
!1816 = !DILocation(line: 183, column: 53, scope: !1402, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 154, column: 5, scope: !1786, inlinedAt: !1740)
!1818 = !DILocation(line: 185, column: 10, scope: !1402, inlinedAt: !1817)
!1819 = !DILocation(line: 185, column: 16, scope: !1402, inlinedAt: !1817)
!1820 = !DILocation(line: 186, column: 1, scope: !1402, inlinedAt: !1817)
!1821 = !DILocation(line: 151, column: 62, scope: !1411, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 156, column: 5, scope: !1786, inlinedAt: !1740)
!1823 = !DILocation(line: 153, column: 2, scope: !1416, inlinedAt: !1822)
!1824 = !DILocation(line: 153, column: 2, scope: !1417, inlinedAt: !1822)
!1825 = !DILocation(line: 153, column: 2, scope: !1420, inlinedAt: !1822)
!1826 = !DILocation(line: 154, column: 6, scope: !1411, inlinedAt: !1822)
!1827 = !DILocation(line: 154, column: 14, scope: !1411, inlinedAt: !1822)
!1828 = !DILocation(line: 154, column: 2, scope: !1411, inlinedAt: !1822)
!1829 = !DILocation(line: 155, column: 1, scope: !1411, inlinedAt: !1822)
!1830 = !DILocation(line: 158, column: 5, scope: !1786, inlinedAt: !1740)
!1831 = !DILocation(line: 159, column: 12, scope: !1832, inlinedAt: !1740)
!1832 = distinct !DILexicalBlock(scope: !1786, file: !487, line: 159, column: 9)
!1833 = !DILocation(line: 159, column: 18, scope: !1832, inlinedAt: !1740)
!1834 = !DILocation(line: 159, column: 22, scope: !1832, inlinedAt: !1740)
!1835 = !DILocation(line: 159, column: 35, scope: !1832, inlinedAt: !1740)
!1836 = !DILocation(line: 159, column: 38, scope: !1832, inlinedAt: !1740)
!1837 = !DILocation(line: 159, column: 63, scope: !1832, inlinedAt: !1740)
!1838 = !DILocation(line: 159, column: 9, scope: !1786, inlinedAt: !1740)
!1839 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 117, column: 30, scope: !1015, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 161, column: 5, scope: !1786, inlinedAt: !1740)
!1843 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1840)
!1844 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1840)
!1845 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1841)
!1846 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1841)
!1847 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1841)
!1848 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1841)
!1849 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1841)
!1850 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1841)
!1851 = !DILocation(line: 117, column: 20, scope: !1015, inlinedAt: !1842)
!1852 = !DILocation(line: 119, column: 2, scope: !1030, inlinedAt: !1842)
!1853 = !DILocation(line: 119, column: 2, scope: !1031, inlinedAt: !1842)
!1854 = !DILocation(line: 119, column: 2, scope: !1034, inlinedAt: !1842)
!1855 = !DILocation(line: 121, column: 15, scope: !1015, inlinedAt: !1842)
!1856 = !DILocation(line: 116, column: 19, scope: !1015, inlinedAt: !1842)
!1857 = !DILocation(line: 122, column: 2, scope: !1038, inlinedAt: !1842)
!1858 = !DILocation(line: 122, column: 2, scope: !1039, inlinedAt: !1842)
!1859 = !DILocation(line: 122, column: 2, scope: !1042, inlinedAt: !1842)
!1860 = !DILocation(line: 123, column: 5, scope: !1015, inlinedAt: !1842)
!1861 = !DILocation(line: 123, column: 2, scope: !1015, inlinedAt: !1842)
!1862 = !DILocation(line: 124, column: 1, scope: !1015, inlinedAt: !1842)
!1863 = !DILocation(line: 146, column: 4, scope: !1787, inlinedAt: !1740)
!1864 = distinct !{!1864, !1865, !1866}
!1865 = !DILocation(line: 146, column: 4, scope: !1788)
!1866 = !DILocation(line: 162, column: 4, scope: !1788)
!1867 = !DILocation(line: 163, column: 12, scope: !1732, inlinedAt: !1740)
!1868 = !DILocation(line: 165, column: 4, scope: !1732, inlinedAt: !1740)
!1869 = !DILocation(line: 68, column: 39, scope: !1463, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 166, column: 4, scope: !1732, inlinedAt: !1740)
!1871 = !DILocation(line: 69, column: 26, scope: !1463, inlinedAt: !1870)
!1872 = !DILocation(line: 71, column: 13, scope: !1471, inlinedAt: !1870)
!1873 = !DILocation(line: 71, column: 6, scope: !1471, inlinedAt: !1870)
!1874 = !DILocation(line: 71, column: 6, scope: !1463, inlinedAt: !1870)
!1875 = !DILocation(line: 72, column: 3, scope: !1468, inlinedAt: !1870)
!1876 = !DILocation(line: 72, column: 3, scope: !1469, inlinedAt: !1870)
!1877 = !DILocation(line: 72, column: 3, scope: !1481, inlinedAt: !1870)
!1878 = !DILocation(line: 72, column: 3, scope: !1482, inlinedAt: !1870)
!1879 = !DILocation(line: 72, column: 3, scope: !1467, inlinedAt: !1870)
!1880 = !DILocation(line: 72, column: 3, scope: !1489, inlinedAt: !1870)
!1881 = !DILocation(line: 72, column: 3, scope: !1490, inlinedAt: !1870)
!1882 = !DILocation(line: 73, column: 18, scope: !1470, inlinedAt: !1870)
!1883 = !DILocation(line: 74, column: 2, scope: !1470, inlinedAt: !1870)
!1884 = !DILocation(line: 75, column: 1, scope: !1463, inlinedAt: !1870)
!1885 = !DILocation(line: 167, column: 4, scope: !1732, inlinedAt: !1740)
!1886 = !DILocation(line: 168, column: 3, scope: !1733, inlinedAt: !1740)
!1887 = !DILocation(line: 0, scope: !1741)
!1888 = !DILocation(line: 170, column: 10, scope: !1733, inlinedAt: !1740)
!1889 = !DILocation(line: 131, column: 16, scope: !1723, inlinedAt: !1740)
!1890 = !DILocation(line: 171, column: 10, scope: !1891, inlinedAt: !1740)
!1891 = distinct !DILexicalBlock(scope: !1733, file: !487, line: 171, column: 7)
!1892 = !DILocation(line: 171, column: 16, scope: !1891, inlinedAt: !1740)
!1893 = !DILocation(line: 171, column: 20, scope: !1891, inlinedAt: !1740)
!1894 = !DILocation(line: 171, column: 33, scope: !1891, inlinedAt: !1740)
!1895 = !DILocation(line: 172, column: 10, scope: !1891, inlinedAt: !1740)
!1896 = !DILocation(line: 172, column: 35, scope: !1891, inlinedAt: !1740)
!1897 = !DILocation(line: 171, column: 7, scope: !1733, inlinedAt: !1740)
!1898 = !DILocation(line: 174, column: 3, scope: !1733, inlinedAt: !1740)
!1899 = !DILocation(line: 139, column: 2, scope: !1734, inlinedAt: !1740)
!1900 = distinct !{!1900, !1901, !1902}
!1901 = !DILocation(line: 139, column: 2, scope: !1735)
!1902 = !DILocation(line: 175, column: 2, scope: !1735)
!1903 = !DILocation(line: 177, column: 9, scope: !1904, inlinedAt: !1740)
!1904 = distinct !DILexicalBlock(scope: !1723, file: !487, line: 177, column: 6)
!1905 = !DILocation(line: 177, column: 15, scope: !1904, inlinedAt: !1740)
!1906 = !DILocation(line: 177, column: 6, scope: !1723, inlinedAt: !1740)
!1907 = !DILocation(line: 187, column: 2, scope: !1723, inlinedAt: !1740)
!1908 = !DILocation(line: 191, column: 2, scope: !1723, inlinedAt: !1740)
!1909 = !DILocation(line: 192, column: 1, scope: !1723, inlinedAt: !1740)
!1910 = !DILocation(line: 448, column: 7, scope: !1720)
!1911 = !DILocation(line: 178, column: 11, scope: !1912, inlinedAt: !1740)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !487, line: 177, column: 20)
!1913 = !DILocation(line: 183, column: 3, scope: !1912, inlinedAt: !1740)
!1914 = !DILocation(line: 184, column: 10, scope: !1912, inlinedAt: !1740)
!1915 = !DILocation(line: 184, column: 35, scope: !1912, inlinedAt: !1740)
!1916 = !DILocation(line: 184, column: 3, scope: !1912, inlinedAt: !1740)
!1917 = !DILocation(line: 448, column: 40, scope: !1741)
!1918 = !DILocation(line: 452, column: 3, scope: !1717)
!1919 = !DILocation(line: 454, column: 2, scope: !1703)
!1920 = !DILocation(line: 0, scope: !1714)
!1921 = !DILocation(line: 455, column: 1, scope: !1703)
!1922 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !487, file: !487, line: 58, type: !818, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1923)
!1923 = !{!1924, !1925, !1926, !1931, !1932, !1933}
!1924 = !DILocalVariable(name: "s", arg: 1, scope: !1922, file: !487, line: 58, type: !820)
!1925 = !DILocalVariable(name: "irqf", scope: !1922, file: !487, line: 60, type: !104)
!1926 = !DILocalVariable(name: "__current", scope: !1927, file: !487, line: 66, type: !31)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !487, line: 65, column: 6)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !487, line: 64, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !487, line: 64, column: 2)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !487, line: 64, column: 2)
!1931 = !DILocalVariable(name: "flags", scope: !1927, file: !487, line: 67, type: !104)
!1932 = !DILocalVariable(name: "__cur", scope: !1927, file: !487, line: 68, type: !31)
!1933 = !DILocalVariable(name: "__wait", scope: !1927, file: !487, line: 68, type: !65)
!1934 = !DILocation(line: 58, column: 59, scope: !1922)
!1935 = !DILocation(line: 62, column: 2, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !487, line: 62, column: 2)
!1937 = distinct !DILexicalBlock(scope: !1922, file: !487, line: 62, column: 2)
!1938 = !DILocation(line: 62, column: 2, scope: !1937)
!1939 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 68, column: 4, scope: !1927)
!1942 = !DILocation(line: 62, column: 2, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !487, line: 62, column: 2)
!1944 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1940)
!1945 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1940)
!1946 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1941)
!1947 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1941)
!1948 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1941)
!1949 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 49, column: 21, scope: !1322, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 68, column: 4, scope: !1927)
!1952 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1950)
!1953 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1950)
!1954 = !DILocation(line: 49, column: 16, scope: !1322, inlinedAt: !1951)
!1955 = !DILocation(line: 50, column: 19, scope: !1322, inlinedAt: !1951)
!1956 = !DILocation(line: 50, column: 11, scope: !1322, inlinedAt: !1951)
!1957 = !DILocation(line: 50, column: 9, scope: !1322, inlinedAt: !1951)
!1958 = !DILocation(line: 50, column: 2, scope: !1322, inlinedAt: !1951)
!1959 = !DILocation(line: 68, column: 4, scope: !1927)
!1960 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 68, column: 4, scope: !1927)
!1963 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1961)
!1964 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1961)
!1965 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1962)
!1966 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1962)
!1967 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1962)
!1968 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1962)
!1969 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1962)
!1970 = !DILocation(line: 69, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1927, file: !487, line: 69, column: 8)
!1972 = !DILocation(line: 69, column: 17, scope: !1971)
!1973 = !DILocation(line: 69, column: 8, scope: !1927)
!1974 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 72, column: 17, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !487, line: 71, column: 13)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !487, line: 71, column: 4)
!1979 = distinct !DILexicalBlock(scope: !1927, file: !487, line: 71, column: 4)
!1980 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1975)
!1981 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1975)
!1982 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1976)
!1983 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1976)
!1984 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1976)
!1985 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1976)
!1986 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1976)
!1987 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1976)
!1988 = !DILocation(line: 66, column: 22, scope: !1927)
!1989 = !DILocation(line: 74, column: 13, scope: !1977)
!1990 = !DILocation(line: 67, column: 18, scope: !1927)
!1991 = !DILocation(line: 58, column: 36, scope: !1368, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 75, column: 5, scope: !1977)
!1993 = !DILocation(line: 59, column: 26, scope: !1368, inlinedAt: !1992)
!1994 = !DILocation(line: 61, column: 14, scope: !1377, inlinedAt: !1992)
!1995 = !DILocation(line: 61, column: 7, scope: !1377, inlinedAt: !1992)
!1996 = !DILocation(line: 61, column: 6, scope: !1368, inlinedAt: !1992)
!1997 = !DILocation(line: 62, column: 3, scope: !1382, inlinedAt: !1992)
!1998 = !DILocation(line: 63, column: 18, scope: !1383, inlinedAt: !1992)
!1999 = !DILocation(line: 64, column: 2, scope: !1383, inlinedAt: !1992)
!2000 = !DILocation(line: 65, column: 1, scope: !1368, inlinedAt: !1992)
!2001 = !DILocation(line: 122, column: 64, scope: !1389, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 76, column: 5, scope: !1977)
!2003 = !DILocation(line: 122, column: 80, scope: !1389, inlinedAt: !2002)
!2004 = !DILocation(line: 124, column: 10, scope: !1389, inlinedAt: !2002)
!2005 = !DILocation(line: 124, column: 22, scope: !1389, inlinedAt: !2002)
!2006 = !DILocation(line: 125, column: 1, scope: !1389, inlinedAt: !2002)
!2007 = !DILocation(line: 183, column: 53, scope: !1402, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 79, column: 5, scope: !1977)
!2009 = !DILocation(line: 185, column: 10, scope: !1402, inlinedAt: !2008)
!2010 = !DILocation(line: 185, column: 16, scope: !1402, inlinedAt: !2008)
!2011 = !DILocation(line: 186, column: 1, scope: !1402, inlinedAt: !2008)
!2012 = !DILocation(line: 151, column: 62, scope: !1411, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 81, column: 5, scope: !1977)
!2014 = !DILocation(line: 153, column: 2, scope: !1416, inlinedAt: !2013)
!2015 = !DILocation(line: 153, column: 2, scope: !1417, inlinedAt: !2013)
!2016 = !DILocation(line: 153, column: 2, scope: !1420, inlinedAt: !2013)
!2017 = !DILocation(line: 154, column: 6, scope: !1411, inlinedAt: !2013)
!2018 = !DILocation(line: 154, column: 14, scope: !1411, inlinedAt: !2013)
!2019 = !DILocation(line: 154, column: 2, scope: !1411, inlinedAt: !2013)
!2020 = !DILocation(line: 155, column: 1, scope: !1411, inlinedAt: !2013)
!2021 = !DILocation(line: 83, column: 5, scope: !1977)
!2022 = !DILocation(line: 84, column: 12, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1977, file: !487, line: 84, column: 9)
!2024 = !DILocation(line: 84, column: 18, scope: !2023)
!2025 = !DILocation(line: 84, column: 9, scope: !1977)
!2026 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 117, column: 30, scope: !1015, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 86, column: 5, scope: !1977)
!2030 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2027)
!2031 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2027)
!2032 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2028)
!2033 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2028)
!2034 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2028)
!2035 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2028)
!2036 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2028)
!2037 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2028)
!2038 = !DILocation(line: 117, column: 20, scope: !1015, inlinedAt: !2029)
!2039 = !DILocation(line: 119, column: 2, scope: !1030, inlinedAt: !2029)
!2040 = !DILocation(line: 119, column: 2, scope: !1031, inlinedAt: !2029)
!2041 = !DILocation(line: 119, column: 2, scope: !1034, inlinedAt: !2029)
!2042 = !DILocation(line: 121, column: 15, scope: !1015, inlinedAt: !2029)
!2043 = !DILocation(line: 116, column: 19, scope: !1015, inlinedAt: !2029)
!2044 = !DILocation(line: 122, column: 2, scope: !1038, inlinedAt: !2029)
!2045 = !DILocation(line: 122, column: 2, scope: !1039, inlinedAt: !2029)
!2046 = !DILocation(line: 122, column: 2, scope: !1042, inlinedAt: !2029)
!2047 = !DILocation(line: 123, column: 5, scope: !1015, inlinedAt: !2029)
!2048 = !DILocation(line: 123, column: 2, scope: !1015, inlinedAt: !2029)
!2049 = !DILocation(line: 124, column: 1, scope: !1015, inlinedAt: !2029)
!2050 = !DILocation(line: 71, column: 4, scope: !1978)
!2051 = distinct !{!2051, !2052, !2053}
!2052 = !DILocation(line: 71, column: 4, scope: !1979)
!2053 = !DILocation(line: 87, column: 4, scope: !1979)
!2054 = !DILocation(line: 88, column: 12, scope: !1927)
!2055 = !DILocation(line: 90, column: 4, scope: !1927)
!2056 = !DILocation(line: 68, column: 39, scope: !1463, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 91, column: 4, scope: !1927)
!2058 = !DILocation(line: 69, column: 26, scope: !1463, inlinedAt: !2057)
!2059 = !DILocation(line: 71, column: 13, scope: !1471, inlinedAt: !2057)
!2060 = !DILocation(line: 71, column: 6, scope: !1471, inlinedAt: !2057)
!2061 = !DILocation(line: 71, column: 6, scope: !1463, inlinedAt: !2057)
!2062 = !DILocation(line: 72, column: 3, scope: !1468, inlinedAt: !2057)
!2063 = !DILocation(line: 72, column: 3, scope: !1469, inlinedAt: !2057)
!2064 = !DILocation(line: 72, column: 3, scope: !1481, inlinedAt: !2057)
!2065 = !DILocation(line: 72, column: 3, scope: !1482, inlinedAt: !2057)
!2066 = !DILocation(line: 72, column: 3, scope: !1467, inlinedAt: !2057)
!2067 = !DILocation(line: 72, column: 3, scope: !1489, inlinedAt: !2057)
!2068 = !DILocation(line: 72, column: 3, scope: !1490, inlinedAt: !2057)
!2069 = !DILocation(line: 73, column: 18, scope: !1470, inlinedAt: !2057)
!2070 = !DILocation(line: 74, column: 2, scope: !1470, inlinedAt: !2057)
!2071 = !DILocation(line: 75, column: 1, scope: !1463, inlinedAt: !2057)
!2072 = !DILocation(line: 92, column: 4, scope: !1927)
!2073 = !DILocation(line: 93, column: 3, scope: !1928)
!2074 = !DILocation(line: 0, scope: !1971)
!2075 = !DILocation(line: 95, column: 10, scope: !1928)
!2076 = !DILocation(line: 60, column: 16, scope: !1922)
!2077 = !DILocation(line: 96, column: 10, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1928, file: !487, line: 96, column: 7)
!2079 = !DILocation(line: 96, column: 16, scope: !2078)
!2080 = !DILocation(line: 96, column: 7, scope: !1928)
!2081 = !DILocation(line: 98, column: 3, scope: !1928)
!2082 = !DILocation(line: 64, column: 2, scope: !1929)
!2083 = distinct !{!2083, !2084, !2085}
!2084 = !DILocation(line: 64, column: 2, scope: !1930)
!2085 = !DILocation(line: 99, column: 2, scope: !1930)
!2086 = !DILocation(line: 100, column: 2, scope: !1922)
!2087 = !DILocation(line: 104, column: 2, scope: !1922)
!2088 = !DILocation(line: 105, column: 1, scope: !1922)
!2089 = distinct !DISubprogram(name: "pte_osSemaphoreCancellablePend", scope: !3, file: !3, line: 457, type: !1704, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096}
!2091 = !DILocalVariable(name: "h", arg: 1, scope: !2089, file: !3, line: 457, type: !1581)
!2092 = !DILocalVariable(name: "ptimeout_msecs", arg: 2, scope: !2089, file: !3, line: 458, type: !1706)
!2093 = !DILocalVariable(name: "ptd", scope: !2089, file: !3, line: 460, type: !473)
!2094 = !DILocalVariable(name: "result", scope: !2089, file: !3, line: 461, type: !547)
!2095 = !DILocalVariable(name: "timeout", scope: !2089, file: !3, line: 462, type: !102)
!2096 = !DILocalVariable(name: "start_time", scope: !2089, file: !3, line: 462, type: !102)
!2097 = !DILocation(line: 457, column: 67, scope: !2089)
!2098 = !DILocation(line: 458, column: 16, scope: !2089)
!2099 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 137, column: 2, scope: !934, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 460, column: 27, scope: !2089)
!2103 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2100)
!2104 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2100)
!2105 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2101)
!2106 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2101)
!2107 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2101)
!2108 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2101)
!2109 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2101)
!2110 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2101)
!2111 = !DILocation(line: 135, column: 29, scope: !934, inlinedAt: !2102)
!2112 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 138, column: 2, scope: !934, inlinedAt: !2102)
!2114 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !2113)
!2115 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !2113)
!2116 = !DILocation(line: 136, column: 30, scope: !934, inlinedAt: !2102)
!2117 = !DILocation(line: 139, column: 2, scope: !934, inlinedAt: !2102)
!2118 = !DILocation(line: 460, column: 21, scope: !2089)
!2119 = !DILocation(line: 461, column: 15, scope: !2089)
!2120 = !DILocation(line: 462, column: 9, scope: !2089)
!2121 = !DILocation(line: 462, column: 35, scope: !2089)
!2122 = !DILocation(line: 462, column: 22, scope: !2089)
!2123 = !DILocation(line: 464, column: 6, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 464, column: 6)
!2125 = !DILocation(line: 464, column: 6, scope: !2089)
!2126 = !DILocation(line: 465, column: 13, scope: !2124)
!2127 = !DILocation(line: 465, column: 3, scope: !2124)
!2128 = !DILocation(line: 0, scope: !2089)
!2129 = !DILocation(line: 467, column: 2, scope: !2089)
!2130 = !DILocalVariable(name: "s", arg: 1, scope: !2131, file: !487, line: 107, type: !820)
!2131 = distinct !DISubprogram(name: "uk_semaphore_down_try", scope: !487, file: !487, line: 107, type: !2132, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!69, !820}
!2134 = !{!2130, !2135, !2136}
!2135 = !DILocalVariable(name: "irqf", scope: !2131, file: !487, line: 109, type: !104)
!2136 = !DILocalVariable(name: "ret", scope: !2131, file: !487, line: 110, type: !69)
!2137 = !DILocation(line: 107, column: 62, scope: !2131, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 468, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 468, column: 7)
!2140 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 467, column: 12)
!2141 = !DILocation(line: 110, column: 6, scope: !2131, inlinedAt: !2138)
!2142 = !DILocation(line: 112, column: 2, scope: !2143, inlinedAt: !2138)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !487, line: 112, column: 2)
!2144 = distinct !DILexicalBlock(scope: !2131, file: !487, line: 112, column: 2)
!2145 = !DILocation(line: 112, column: 2, scope: !2144, inlinedAt: !2138)
!2146 = !DILocation(line: 114, column: 9, scope: !2131, inlinedAt: !2138)
!2147 = !DILocation(line: 109, column: 16, scope: !2131, inlinedAt: !2138)
!2148 = !DILocation(line: 115, column: 9, scope: !2149, inlinedAt: !2138)
!2149 = distinct !DILexicalBlock(scope: !2131, file: !487, line: 115, column: 6)
!2150 = !DILocation(line: 115, column: 15, scope: !2149, inlinedAt: !2138)
!2151 = !DILocation(line: 115, column: 6, scope: !2131, inlinedAt: !2138)
!2152 = !DILocation(line: 112, column: 2, scope: !2153, inlinedAt: !2138)
!2153 = distinct !DILexicalBlock(scope: !2143, file: !487, line: 112, column: 2)
!2154 = !DILocation(line: 117, column: 3, scope: !2155, inlinedAt: !2138)
!2155 = distinct !DILexicalBlock(scope: !2149, file: !487, line: 115, column: 20)
!2156 = !DILocation(line: 122, column: 2, scope: !2155, inlinedAt: !2138)
!2157 = !DILocation(line: 123, column: 2, scope: !2131, inlinedAt: !2138)
!2158 = !DILocation(line: 124, column: 2, scope: !2131, inlinedAt: !2138)
!2159 = !DILocation(line: 468, column: 7, scope: !2140)
!2160 = !DILocation(line: 472, column: 20, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 472, column: 12)
!2162 = !DILocation(line: 473, column: 5, scope: !2161)
!2163 = !DILocation(line: 473, column: 30, scope: !2161)
!2164 = !DILocation(line: 473, column: 43, scope: !2161)
!2165 = !DILocation(line: 472, column: 12, scope: !2139)
!2166 = !DILocation(line: 478, column: 18, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 478, column: 14)
!2168 = !DILocation(line: 478, column: 37, scope: !2167)
!2169 = !DILocation(line: 478, column: 43, scope: !2167)
!2170 = !DILocation(line: 478, column: 14, scope: !2161)
!2171 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 117, column: 30, scope: !1015, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 485, column: 4, scope: !2167)
!2175 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2172)
!2176 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2172)
!2177 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2173)
!2178 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2173)
!2179 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2173)
!2180 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2173)
!2181 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2173)
!2182 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2173)
!2183 = !DILocation(line: 117, column: 20, scope: !1015, inlinedAt: !2174)
!2184 = !DILocation(line: 119, column: 2, scope: !1030, inlinedAt: !2174)
!2185 = !DILocation(line: 119, column: 2, scope: !1031, inlinedAt: !2174)
!2186 = !DILocation(line: 119, column: 2, scope: !1034, inlinedAt: !2174)
!2187 = !DILocation(line: 121, column: 15, scope: !1015, inlinedAt: !2174)
!2188 = !DILocation(line: 116, column: 19, scope: !1015, inlinedAt: !2174)
!2189 = !DILocation(line: 122, column: 2, scope: !1038, inlinedAt: !2174)
!2190 = !DILocation(line: 122, column: 2, scope: !1039, inlinedAt: !2174)
!2191 = !DILocation(line: 122, column: 2, scope: !1042, inlinedAt: !2174)
!2192 = !DILocation(line: 123, column: 5, scope: !1015, inlinedAt: !2174)
!2193 = !DILocation(line: 123, column: 2, scope: !1015, inlinedAt: !2174)
!2194 = !DILocation(line: 124, column: 1, scope: !1015, inlinedAt: !2174)
!2195 = !DILocation(line: 0, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 478, column: 48)
!2197 = !DILocation(line: 0, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 473, column: 55)
!2199 = !DILocation(line: 488, column: 2, scope: !2089)
!2200 = distinct !DISubprogram(name: "pte_osTlsSetValue", scope: !3, file: !3, line: 547, type: !2201, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!547, !7, !29}
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "key", arg: 1, scope: !2200, file: !3, line: 547, type: !7)
!2205 = !DILocalVariable(name: "value", arg: 2, scope: !2200, file: !3, line: 547, type: !29)
!2206 = !DILocation(line: 547, column: 45, scope: !2200)
!2207 = !DILocation(line: 547, column: 56, scope: !2200)
!2208 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 137, column: 2, scope: !934, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 542, column: 27, scope: !2212, inlinedAt: !2217)
!2212 = distinct !DISubprogram(name: "current_tls", scope: !3, file: !3, line: 540, type: !2213, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!29}
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "ptd", scope: !2212, file: !3, line: 542, type: !473)
!2217 = distinct !DILocation(line: 549, column: 24, scope: !2200)
!2218 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2209)
!2219 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2209)
!2220 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2210)
!2221 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2210)
!2222 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2210)
!2223 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2210)
!2224 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2210)
!2225 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2210)
!2226 = !DILocation(line: 135, column: 29, scope: !934, inlinedAt: !2211)
!2227 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 138, column: 2, scope: !934, inlinedAt: !2211)
!2229 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !2228)
!2230 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !2228)
!2231 = !DILocation(line: 136, column: 30, scope: !934, inlinedAt: !2211)
!2232 = !DILocation(line: 139, column: 2, scope: !934, inlinedAt: !2211)
!2233 = !DILocation(line: 542, column: 21, scope: !2212, inlinedAt: !2217)
!2234 = !DILocation(line: 544, column: 9, scope: !2212, inlinedAt: !2217)
!2235 = !DILocation(line: 544, column: 20, scope: !2212, inlinedAt: !2217)
!2236 = !DILocation(line: 544, column: 2, scope: !2212, inlinedAt: !2217)
!2237 = !DILocation(line: 549, column: 9, scope: !2200)
!2238 = !DILocation(line: 549, column: 2, scope: !2200)
!2239 = distinct !DISubprogram(name: "pte_osTlsGetValue", scope: !3, file: !3, line: 552, type: !2240, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!29, !7}
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "index", arg: 1, scope: !2239, file: !3, line: 552, type: !7)
!2244 = !DILocation(line: 552, column: 38, scope: !2239)
!2245 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 137, column: 2, scope: !934, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 542, column: 27, scope: !2212, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 554, column: 33, scope: !2239)
!2250 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2246)
!2251 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2246)
!2252 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2247)
!2253 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2247)
!2254 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2247)
!2255 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2247)
!2256 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2247)
!2257 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2247)
!2258 = !DILocation(line: 135, column: 29, scope: !934, inlinedAt: !2248)
!2259 = !DILocation(line: 139, column: 47, scope: !805, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 138, column: 2, scope: !934, inlinedAt: !2248)
!2261 = !DILocation(line: 141, column: 17, scope: !805, inlinedAt: !2260)
!2262 = !DILocation(line: 141, column: 2, scope: !805, inlinedAt: !2260)
!2263 = !DILocation(line: 136, column: 30, scope: !934, inlinedAt: !2248)
!2264 = !DILocation(line: 139, column: 2, scope: !934, inlinedAt: !2248)
!2265 = !DILocation(line: 542, column: 21, scope: !2212, inlinedAt: !2249)
!2266 = !DILocation(line: 544, column: 9, scope: !2212, inlinedAt: !2249)
!2267 = !DILocation(line: 544, column: 20, scope: !2212, inlinedAt: !2249)
!2268 = !DILocation(line: 544, column: 2, scope: !2212, inlinedAt: !2249)
!2269 = !DILocation(line: 554, column: 18, scope: !2239)
!2270 = !DILocation(line: 554, column: 2, scope: !2239)
!2271 = distinct !DISubprogram(name: "pte_osTlsAlloc", scope: !3, file: !3, line: 557, type: !2272, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!547, !1706}
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "pkey", arg: 1, scope: !2271, file: !3, line: 557, type: !1706)
!2276 = !DILocation(line: 557, column: 43, scope: !2271)
!2277 = !DILocation(line: 559, column: 9, scope: !2271)
!2278 = !DILocation(line: 559, column: 2, scope: !2271)
!2279 = distinct !DISubprogram(name: "pte_osTlsFree", scope: !3, file: !3, line: 562, type: !2280, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!547, !7}
!2282 = !{!2283}
!2283 = !DILocalVariable(name: "index", arg: 1, scope: !2279, file: !3, line: 562, type: !7)
!2284 = !DILocation(line: 562, column: 41, scope: !2279)
!2285 = !DILocation(line: 564, column: 9, scope: !2279)
!2286 = !DILocation(line: 564, column: 2, scope: !2279)
!2287 = distinct !DISubprogram(name: "ftime", scope: !3, file: !3, line: 573, type: !2288, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2300)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!69, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeb", file: !2292, line: 26, size: 128, elements: !2293)
!2292 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/timeb.h", directory: "/root/.unikraft/apps/redis/build")
!2293 = !{!2294, !2297, !2298, !2299}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2291, file: !2292, line: 28, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2296, line: 34, baseType: !57)
!2296 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "millitm", scope: !2291, file: !2292, line: 29, baseType: !377, size: 16, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !2291, file: !2292, line: 30, baseType: !247, size: 16, offset: 80)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dstflag", scope: !2291, file: !2292, line: 31, baseType: !247, size: 16, offset: 96)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "tb", arg: 1, scope: !2287, file: !3, line: 573, type: !2290)
!2302 = !DILocalVariable(name: "now", scope: !2287, file: !3, line: 575, type: !102)
!2303 = !DILocation(line: 573, column: 25, scope: !2287)
!2304 = !DILocation(line: 575, column: 15, scope: !2287)
!2305 = !DILocation(line: 575, column: 9, scope: !2287)
!2306 = !DILocation(line: 577, column: 6, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 577, column: 6)
!2308 = !DILocation(line: 577, column: 6, scope: !2287)
!2309 = !DILocation(line: 578, column: 14, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 577, column: 10)
!2311 = !DILocation(line: 578, column: 7, scope: !2310)
!2312 = !DILocation(line: 578, column: 12, scope: !2310)
!2313 = !{!2314, !574, i64 0}
!2314 = !{!"timeb", !574, i64 0, !2315, i64 8, !2315, i64 10, !2315, i64 12}
!2315 = !{!"short", !571, i64 0}
!2316 = !DILocation(line: 579, column: 17, scope: !2310)
!2317 = !DILocation(line: 579, column: 7, scope: !2310)
!2318 = !DILocation(line: 579, column: 15, scope: !2310)
!2319 = !{!2314, !2315, i64 8}
!2320 = !DILocation(line: 580, column: 2, scope: !2310)
!2321 = !DILocation(line: 582, column: 2, scope: !2287)
!2322 = distinct !DISubprogram(name: "uk_pr_debug", scope: !497, file: !497, line: 162, type: !498, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2323)
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "fmt", arg: 1, scope: !2322, file: !497, line: 162, type: !36)
!2325 = !DILocalVariable(name: "argp", scope: !2322, file: !497, line: 164, type: !503)
!2326 = !DILocation(line: 164, column: 2, scope: !2322)
!2327 = !DILocation(line: 164, column: 10, scope: !2322)
!2328 = !DILocation(line: 165, column: 2, scope: !2322)
!2329 = !DILocalVariable(name: "fmt", arg: 1, scope: !2330, file: !497, line: 97, type: !36)
!2330 = distinct !DISubprogram(name: "uk_vprintd", scope: !497, file: !497, line: 97, type: !2331, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2334)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !36, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2334 = !{!2329, !2335}
!2335 = !DILocalVariable(name: "ap", arg: 2, scope: !2330, file: !497, line: 97, type: !2333)
!2336 = !DILocation(line: 97, column: 43, scope: !2330, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 166, column: 2, scope: !2322)
!2338 = !DILocation(line: 97, column: 65, scope: !2330, inlinedAt: !2337)
!2339 = !DILocation(line: 98, column: 2, scope: !2330, inlinedAt: !2337)
!2340 = !DILocation(line: 167, column: 2, scope: !2322)
!2341 = !DILocation(line: 168, column: 1, scope: !2322)
!2342 = !DILocation(line: 196, column: 2, scope: !523)
!2343 = !DILocation(line: 196, column: 10, scope: !523)
!2344 = !DILocation(line: 197, column: 2, scope: !523)
!2345 = !DILocation(line: 198, column: 2, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !497, line: 198, column: 2)
!2347 = distinct !DILexicalBlock(scope: !523, file: !497, line: 198, column: 2)
!2348 = !DILocation(line: 199, column: 2, scope: !523)
!2349 = !DILocation(line: 200, column: 1, scope: !523)
