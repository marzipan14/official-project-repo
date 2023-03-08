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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()** @__uk_inittab39_pthread_initcall to i8*)], section "llvm.metadata"

; Function Attrs: noredzone nounwind
define internal i32 @pthread_initcall() #0 !dbg !539 {
  %1 = tail call i32 @pthread_init() #11, !dbg !541
  ret i32 %1, !dbg !542
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osInit() local_unnamed_addr #0 !dbg !543 {
  %1 = tail call i32 @pteTlsGlobalInit(i32 32) #11, !dbg !552
  %2 = icmp eq i32 %1, 0, !dbg !553
  br i1 %2, label %4, label %3, !dbg !555

; <label>:3:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #12, !dbg !556
  br label %21, !dbg !558

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @calloc(i64 1, i64 88) #11, !dbg !559
  %6 = icmp eq i8* %5, null, !dbg !561
  br i1 %6, label %21, label %7, !dbg !563

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @pteTlsThreadInit() #11, !dbg !564
  %9 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !565
  %10 = bitcast i8* %9 to i8**, !dbg !565
  store i8* %8, i8** %10, align 8, !dbg !566, !tbaa !567
  %11 = icmp eq i8* %8, null, !dbg !576
  br i1 %11, label %12, label %13, !dbg !578

; <label>:12:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !579
  tail call void @free(i8* nonnull %5) #11, !dbg !581
  br label %21, !dbg !582

; <label>:13:                                     ; preds = %7
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !583, !srcloc !598
  %15 = and i64 %14, -65536, !dbg !601
  %16 = inttoptr i64 %15 to %struct.uk_thread**, !dbg !602
  %17 = load %struct.uk_thread*, %struct.uk_thread** %16, align 65536, !dbg !604, !tbaa !605
  %18 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %17, i64 0, i32 10, !dbg !616
  store i8* %5, i8** %18, align 8, !dbg !617, !tbaa !618
  %19 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !622
  %20 = bitcast i8* %19 to %struct.uk_thread**, !dbg !622
  store %struct.uk_thread* %17, %struct.uk_thread** %20, align 8, !dbg !623, !tbaa !624
  br label %21, !dbg !625

; <label>:21:                                     ; preds = %4, %13, %12, %3
  %22 = phi i32 [ %1, %3 ], [ 1, %12 ], [ 0, %13 ], [ 1, %4 ], !dbg !626
  ret i32 %22, !dbg !627
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i32 @pteTlsGlobalInit(i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) unnamed_addr #4 !dbg !496 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !629
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #10, !dbg !629
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !631
  call void @llvm.va_start(i8* nonnull %3), !dbg !631
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_err.__str.4, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !632
  call void @llvm.va_end(i8* nonnull %3), !dbg !635
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #10, !dbg !636
  ret void, !dbg !636
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
define dso_local i32 @pte_kill(%struct.uk_thread*, i32) local_unnamed_addr #0 !dbg !637 {
  %3 = tail call i32 @uk_sig_thread_kill(%struct.uk_thread* %0, i32 %1) #11, !dbg !647
  ret i32 %3, !dbg !648
}

; Function Attrs: noredzone
declare dso_local i32 @uk_sig_thread_kill(%struct.uk_thread*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCreate(i32 (i8*)*, i32, i32, i8*, %struct.uk_thread** nocapture) local_unnamed_addr #0 !dbg !649 {
  %6 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !665, !tbaa !605
  %7 = icmp eq %struct.uk_alloc* %6, null, !dbg !673
  br i1 %7, label %8, label %10, !dbg !675, !prof !676

; <label>:8:                                      ; preds = %5
  %9 = tail call i32* @__errno() #11, !dbg !677
  store i32 12, i32* %9, align 4, !dbg !679, !tbaa !680
  br label %43, !dbg !682

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %6, i64 0, i32 0, !dbg !690
  %12 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %11, align 8, !dbg !690, !tbaa !605
  %13 = tail call i8* %12(%struct.uk_alloc* nonnull %6, i64 88) #11, !dbg !691
  %14 = icmp eq i8* %13, null, !dbg !692
  br i1 %14, label %43, label %15, !dbg !682

; <label>:15:                                     ; preds = %10
  %16 = bitcast i8* %13 to i32 (i8*)**, !dbg !694
  store i32 (i8*)* %0, i32 (i8*)** %16, align 8, !dbg !695, !tbaa !696
  %17 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !697
  %18 = bitcast i8* %17 to i8**, !dbg !697
  store i8* %3, i8** %18, align 8, !dbg !698, !tbaa !699
  %19 = tail call i8* @pteTlsThreadInit() #11, !dbg !700
  %20 = getelementptr inbounds i8, i8* %13, i64 24, !dbg !701
  %21 = bitcast i8* %20 to i8**, !dbg !701
  store i8* %19, i8** %21, align 8, !dbg !702, !tbaa !567
  %22 = icmp eq i8* %19, null, !dbg !703
  br i1 %22, label %23, label %24, !dbg !705

; <label>:23:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !706
  tail call void @free(i8* nonnull %13) #11, !dbg !708
  br label %43, !dbg !709

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %13, i64 32, !dbg !710
  %26 = bitcast i8* %25 to %struct.uk_semaphore*, !dbg !710
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull %26, i64 0) #11, !dbg !711
  %27 = getelementptr inbounds i8, i8* %13, i64 56, !dbg !712
  %28 = bitcast i8* %27 to %struct.uk_semaphore*, !dbg !712
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull %28, i64 0) #11, !dbg !713
  %29 = getelementptr inbounds i8, i8* %13, i64 80, !dbg !714
  %30 = bitcast i8* %29 to i32*, !dbg !714
  store i32 0, i32* %30, align 8, !dbg !715, !tbaa !716
  %31 = tail call %struct.uk_sched* @uk_sched_get_default() #11, !dbg !730
  %32 = tail call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %31, i8* null, %struct.uk_thread_attr* null, void (i8*)* nonnull @uk_stub_thread_entry, i8* nonnull %13) #11, !dbg !731
  %33 = getelementptr inbounds i8, i8* %13, i64 16, !dbg !732
  %34 = bitcast i8* %33 to %struct.uk_thread**, !dbg !732
  store %struct.uk_thread* %32, %struct.uk_thread** %34, align 8, !dbg !732, !tbaa !624
  %35 = icmp eq %struct.uk_thread* %32, null, !dbg !733
  br i1 %35, label %36, label %38, !dbg !735

; <label>:36:                                     ; preds = %24
  %37 = load i8*, i8** %21, align 8, !dbg !736, !tbaa !567
  tail call void @pteTlsThreadDestroy(i8* %37) #11, !dbg !738
  tail call void @free(i8* nonnull %13) #11, !dbg !739
  br label %43, !dbg !740

; <label>:38:                                     ; preds = %24
  tail call void @uk_thread_inherit_signal_mask(%struct.uk_thread* nonnull %32) #11, !dbg !741
  %39 = load %struct.uk_thread*, %struct.uk_thread** %34, align 8, !dbg !742, !tbaa !624
  %40 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 10, !dbg !746
  store i8* %13, i8** %40, align 8, !dbg !747, !tbaa !618
  %41 = ptrtoint %struct.uk_thread* %39 to i64, !dbg !748
  %42 = bitcast %struct.uk_thread** %4 to i64*, !dbg !749
  store i64 %41, i64* %42, align 8, !dbg !749, !tbaa !605
  br label %43, !dbg !750

; <label>:43:                                     ; preds = %8, %10, %38, %36, %23
  %44 = phi i32 [ 1, %23 ], [ 1, %36 ], [ 0, %38 ], [ 1, %10 ], [ 1, %8 ], !dbg !751
  ret i32 %44, !dbg !752
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @uk_stub_thread_entry(i8*) #0 !dbg !753 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #10, !dbg !766, !srcloc !767
  %2 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !769
  %3 = bitcast i8* %2 to %struct.uk_semaphore*, !dbg !769
  tail call fastcc void @uk_semaphore_down(%struct.uk_semaphore* nonnull %3) #12, !dbg !770
  %4 = bitcast i8* %0 to i32 (i8*)**, !dbg !771
  %5 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !771, !tbaa !696
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !772
  %7 = bitcast i8* %6 to i8**, !dbg !772
  %8 = load i8*, i8** %7, align 8, !dbg !772, !tbaa !699
  %9 = tail call i32 %5(i8* %8) #11, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: noredzone
declare dso_local void @pteTlsThreadDestroy(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @uk_thread_inherit_signal_mask(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadStart(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !775 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !797
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !797
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !797, !tbaa !618
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !812
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 4, i32 0, !dbg !814
  %7 = load i64, i64* %6, align 8, !dbg !815, !tbaa !816
  %8 = add nsw i64 %7, 1, !dbg !815
  store i64 %8, i64* %6, align 8, !dbg !815, !tbaa !816
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !830
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 4, i32 1, i32 0, !dbg !832
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !832, !tbaa !834
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !836
  br i1 %12, label %20, label %13, !dbg !836

; <label>:13:                                     ; preds = %1, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !836
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !836, !tbaa !838
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !842
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !842, !tbaa !843
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #11, !dbg !844
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !836
  br i1 %19, label %20, label %13, !dbg !836, !llvm.loop !845

; <label>:20:                                     ; preds = %13, %1
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #11, !dbg !848
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #11, !dbg !849
  ret i32 0, !dbg !850
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadDelete(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !851 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !860
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !860
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !860, !tbaa !618
  %5 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 3, !dbg !863
  %6 = load i8*, i8** %5, align 8, !dbg !863, !tbaa !567
  tail call void @pteTlsThreadDestroy(i8* %6) #11, !dbg !864
  %7 = bitcast %struct.pte_thread_data_t* %4 to i8*, !dbg !865
  tail call void @free(i8* %7) #11, !dbg !866
  ret i32 0, !dbg !867
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadExitAndDelete(%struct.uk_thread*) local_unnamed_addr #0 !dbg !868 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 9, !dbg !872
  %3 = load %struct.uk_sched*, %struct.uk_sched** %2, align 8, !dbg !872, !tbaa !874
  %4 = icmp eq %struct.uk_sched* %3, null, !dbg !875
  br i1 %4, label %6, label %5, !dbg !876

; <label>:5:                                      ; preds = %1
  tail call void @uk_sched_thread_kill(%struct.uk_sched* nonnull %3, %struct.uk_thread* nonnull %0) #11, !dbg !884
  br label %6, !dbg !885

; <label>:6:                                      ; preds = %1, %5
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !892
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !892
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !892, !tbaa !618
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 3, !dbg !895
  %11 = load i8*, i8** %10, align 8, !dbg !895, !tbaa !567
  tail call void @pteTlsThreadDestroy(i8* %11) #11, !dbg !896
  %12 = bitcast %struct.pte_thread_data_t* %9 to i8*, !dbg !897
  tail call void @free(i8* %12) #11, !dbg !898
  ret i32 0, !dbg !899
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @pte_osThreadExit() local_unnamed_addr #5 !dbg !900 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !903, !srcloc !598
  %2 = and i64 %1, -65536, !dbg !919
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !920
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !922, !tbaa !605
  %5 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %4, i64 0, i32 10, !dbg !926
  %6 = bitcast i8** %5 to %struct.pte_thread_data_t**, !dbg !926
  %7 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %6, align 8, !dbg !926, !tbaa !618
  %8 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %7, i64 0, i32 6, !dbg !929
  store i32 1, i32* %8, align 8, !dbg !930, !tbaa !716
  tail call void @uk_sched_thread_exit() #13, !dbg !931
  unreachable, !dbg !931
}

; Function Attrs: noredzone noreturn
declare dso_local void @uk_sched_thread_exit() local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadWaitForEnd(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !932 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !942
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !942
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !942, !tbaa !618
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !945, !srcloc !598
  %6 = and i64 %5, -65536, !dbg !951
  %7 = inttoptr i64 %6 to %struct.uk_thread**, !dbg !952
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 65536, !dbg !954, !tbaa !605
  %9 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %8, i64 0, i32 10, !dbg !958
  %10 = bitcast i8** %9 to %struct.pte_thread_data_t**, !dbg !958
  %11 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %10, align 8, !dbg !958, !tbaa !618
  %12 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 6, !dbg !961
  %13 = load i32, i32* %12, align 8, !dbg !961, !tbaa !716
  %14 = icmp eq i32 %13, 0, !dbg !964
  br i1 %14, label %15, label %18, !dbg !965

; <label>:15:                                     ; preds = %1
  %16 = icmp eq %struct.pte_thread_data_t* %11, null
  %17 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %11, i64 0, i32 5, i32 0
  br label %22, !dbg !965

; <label>:18:                                     ; preds = %38, %1
  %19 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 2, !dbg !966
  %20 = load %struct.uk_thread*, %struct.uk_thread** %19, align 8, !dbg !966, !tbaa !624
  %21 = tail call i32 @uk_thread_wait(%struct.uk_thread* %20) #11, !dbg !966
  br label %43, !dbg !968

; <label>:22:                                     ; preds = %15, %38
  br i1 %16, label %26, label %23, !dbg !969

; <label>:23:                                     ; preds = %22
  %24 = load i64, i64* %17, align 8, !dbg !971, !tbaa !972
  %25 = icmp sgt i64 %24, 0, !dbg !973
  br i1 %25, label %43, label %26, !dbg !974

; <label>:26:                                     ; preds = %22, %23
  %27 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !975, !srcloc !598
  %28 = and i64 %27, -65536, !dbg !985
  %29 = inttoptr i64 %28 to %struct.uk_thread**, !dbg !986
  %30 = load %struct.uk_thread*, %struct.uk_thread** %29, align 65536, !dbg !988, !tbaa !605
  %31 = icmp eq %struct.uk_thread* %30, null, !dbg !990
  br i1 %31, label %32, label %33, !dbg !993, !prof !676

; <label>:32:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !994
  tail call void @ukplat_terminate(i32 3) #13, !dbg !994
  unreachable, !dbg !994

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %30, i64 0, i32 9, !dbg !996
  %35 = load %struct.uk_sched*, %struct.uk_sched** %34, align 8, !dbg !996, !tbaa !874
  %36 = icmp eq %struct.uk_sched* %35, null, !dbg !998
  br i1 %36, label %37, label %38, !dbg !1001, !prof !676

; <label>:37:                                     ; preds = %33
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !1002
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1002
  unreachable, !dbg !1002

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %35, i64 0, i32 0, !dbg !1004
  %40 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %39, align 8, !dbg !1004, !tbaa !1005
  tail call void %40(%struct.uk_sched* nonnull %35) #11, !dbg !1009
  %41 = load i32, i32* %12, align 8, !dbg !961, !tbaa !716
  %42 = icmp eq i32 %41, 0, !dbg !964
  br i1 %42, label %22, label %18, !dbg !965, !llvm.loop !1010

; <label>:43:                                     ; preds = %23, %18
  %44 = phi i32 [ 0, %18 ], [ 4, %23 ], !dbg !1013
  ret i32 %44, !dbg !1014
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_wait(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCancel(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1015 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1024
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !1024
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !1024, !tbaa !618
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1029
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 0, !dbg !1031
  %7 = load i64, i64* %6, align 8, !dbg !1032, !tbaa !816
  %8 = add nsw i64 %7, 1, !dbg !1032
  store i64 %8, i64* %6, align 8, !dbg !1032, !tbaa !816
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1036
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 1, i32 0, !dbg !1038
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !1038, !tbaa !834
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !1040
  br i1 %12, label %20, label %13, !dbg !1040

; <label>:13:                                     ; preds = %1, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !1040
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1040, !tbaa !838
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !1042
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !1042, !tbaa !843
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #11, !dbg !1043
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !1040
  br i1 %19, label %20, label %13, !dbg !1040, !llvm.loop !845

; <label>:20:                                     ; preds = %13, %1
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #11, !dbg !1044
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #11, !dbg !1045
  ret i32 0, !dbg !1046
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @pte_osThreadCheckCancel(%struct.uk_thread* nocapture readonly) local_unnamed_addr #7 !dbg !1047 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1056
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !1056
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !1056, !tbaa !618
  %5 = icmp eq %struct.pte_thread_data_t* %4, null, !dbg !1059
  br i1 %5, label %10, label %6, !dbg !1061

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 0, !dbg !1062
  %8 = load i64, i64* %7, align 8, !dbg !1062, !tbaa !972
  %9 = icmp sgt i64 %8, 0, !dbg !1063
  br i1 %9, label %11, label %10, !dbg !1064

; <label>:10:                                     ; preds = %1, %6
  br label %11, !dbg !1065

; <label>:11:                                     ; preds = %6, %10
  %12 = phi i32 [ 0, %10 ], [ 4, %6 ], !dbg !1066
  ret i32 %12, !dbg !1067
}

; Function Attrs: noredzone nounwind
define dso_local %struct.uk_thread* @pte_osThreadGetHandle() local_unnamed_addr #0 !dbg !1068 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1073, !srcloc !598
  %2 = and i64 %1, -65536, !dbg !1078
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !1079
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !1081, !tbaa !605
  ret %struct.uk_thread* %4, !dbg !1083
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadGetPriority(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1084 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1097
  %4 = bitcast i8** %3 to %struct.pte_thread_data_t**, !dbg !1097
  %5 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %4, align 8, !dbg !1097, !tbaa !618
  %6 = bitcast i32* %2 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !1100
  %7 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %5, i64 0, i32 2, !dbg !1101
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 8, !dbg !1101, !tbaa !624
  %9 = call i32 @uk_thread_get_prio(%struct.uk_thread* %8, i32* nonnull %2) #11, !dbg !1101
  %10 = icmp eq i32 %9, 0, !dbg !1104
  %11 = select i1 %10, i32 0, i32 2, !dbg !1104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !1105
  ret i32 %11, !dbg !1106
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_get_prio(%struct.uk_thread*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadSetPriority(%struct.uk_thread* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1107 {
  %3 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1121
  %4 = bitcast i8** %3 to %struct.pte_thread_data_t**, !dbg !1121
  %5 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %4, align 8, !dbg !1121, !tbaa !618
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %5, i64 0, i32 2, !dbg !1124
  %7 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !1124, !tbaa !624
  %8 = tail call i32 @uk_thread_set_prio(%struct.uk_thread* %7, i32 %1) #11, !dbg !1124
  %9 = icmp eq i32 %8, 0, !dbg !1126
  %10 = select i1 %9, i32 0, i32 2, !dbg !1126
  ret i32 %10, !dbg !1127
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_set_prio(%struct.uk_thread*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pte_osThreadSleep(i32) local_unnamed_addr #0 !dbg !1128 {
  %2 = zext i32 %0 to i64, !dbg !1135
  %3 = mul nuw nsw i64 %2, 1000000, !dbg !1135
  tail call void @uk_sched_thread_sleep(i64 %3) #11, !dbg !1137
  ret void, !dbg !1138
}

; Function Attrs: noredzone
declare dso_local void @uk_sched_thread_sleep(i64) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local i32 @pte_osThreadGetMinPriority() local_unnamed_addr #8 !dbg !1139 {
  ret i32 0, !dbg !1140
}

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local i32 @pte_osThreadGetMaxPriority() local_unnamed_addr #8 !dbg !1141 {
  ret i32 255, !dbg !1142
}

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local i32 @pte_osThreadGetDefaultPriority() local_unnamed_addr #8 !dbg !1143 {
  ret i32 127, !dbg !1144
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexCreate(%struct.uk_mutex**) local_unnamed_addr #0 !dbg !1145 {
  %2 = icmp eq %struct.uk_mutex** %0, null, !dbg !1161
  br i1 %2, label %16, label %3, !dbg !1163

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1164, !tbaa !605
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !1168
  br i1 %5, label %6, label %8, !dbg !1169, !prof !676

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #11, !dbg !1170
  store i32 12, i32* %7, align 4, !dbg !1171, !tbaa !680
  br label %16, !dbg !1172

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 0, !dbg !1176
  %10 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %9, align 8, !dbg !1176, !tbaa !605
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %4, i64 32) #11, !dbg !1177
  %12 = icmp eq i8* %11, null, !dbg !1178
  br i1 %12, label %16, label %13, !dbg !1172

; <label>:13:                                     ; preds = %8
  %14 = bitcast i8* %11 to %struct.uk_mutex*, !dbg !1180
  tail call void @uk_mutex_init(%struct.uk_mutex* %14) #11, !dbg !1182
  %15 = bitcast %struct.uk_mutex** %0 to i8**, !dbg !1183
  store i8* %11, i8** %15, align 8, !dbg !1183, !tbaa !605
  br label %16, !dbg !1184

; <label>:16:                                     ; preds = %6, %8, %1, %13
  %17 = phi i32 [ 0, %13 ], [ 5, %1 ], [ 1, %8 ], [ 1, %6 ], !dbg !1185
  ret i32 %17, !dbg !1186
}

; Function Attrs: noredzone
declare dso_local void @uk_mutex_init(%struct.uk_mutex*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexDelete(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1187 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !1193
  br i1 %2, label %5, label %3, !dbg !1195

; <label>:3:                                      ; preds = %1
  %4 = bitcast %struct.uk_mutex* %0 to i8*, !dbg !1196
  tail call void @free(i8* %4) #11, !dbg !1197
  br label %5, !dbg !1198

; <label>:5:                                      ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ 5, %1 ], !dbg !1199
  ret i32 %6, !dbg !1200
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1201 {
  %2 = alloca i32, align 4
  %3 = icmp eq %struct.uk_mutex* %0, null, !dbg !1226
  br i1 %3, label %113, label %4, !dbg !1228

; <label>:4:                                      ; preds = %1
  %5 = bitcast i32* %2 to i8*, !dbg !1231
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !1231
  %6 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !1232
  %7 = load i32, i32* %6, align 8, !dbg !1232, !tbaa !1233
  store volatile i32 %7, i32* %2, align 4, !dbg !1223, !tbaa !680
  %8 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !1235
  %9 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !1235, !tbaa !1236
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1238, !srcloc !598
  %11 = and i64 %10, -65536, !dbg !1243
  %12 = inttoptr i64 %11 to %struct.uk_thread**, !dbg !1244
  %13 = load %struct.uk_thread*, %struct.uk_thread** %12, align 65536, !dbg !1246, !tbaa !605
  %14 = icmp eq %struct.uk_thread* %9, %13
  %15 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0
  br label %17, !dbg !1248

; <label>:17:                                     ; preds = %110, %4
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1249, !srcloc !598
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1255, !srcloc !598
  %20 = and i64 %19, -65536, !dbg !1264
  %21 = or i64 %20, 4097, !dbg !1264
  %22 = add nsw i64 %21, -1, !dbg !1264
  %23 = inttoptr i64 %22 to i32*, !dbg !1265
  %24 = load i32, i32* %23, align 4096, !dbg !1266, !tbaa !680
  %25 = sext i32 %24 to i64, !dbg !1267
  %26 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, !dbg !1267
  %27 = bitcast %struct.uk_waitq_entry* %26 to i8*, !dbg !1267
  %28 = tail call i8* @memset(i8* nonnull %27, i32 0, i64 24) #11, !dbg !1267
  %29 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1268, !srcloc !598
  %30 = and i64 %29, -65536, !dbg !1273
  %31 = inttoptr i64 %30 to i64*, !dbg !1274
  %32 = load i64, i64* %31, align 65536, !dbg !1274, !tbaa !605
  %33 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, i32 1, !dbg !1267
  %34 = bitcast %struct.uk_thread** %33 to i64*, !dbg !1267
  store i64 %32, i64* %34, align 8, !dbg !1267, !tbaa !843
  %35 = load volatile i32, i32* %2, align 4, !dbg !1276, !tbaa !680
  %36 = icmp eq i32 %35, 0, !dbg !1278
  %37 = or i1 %14, %36, !dbg !1279
  br i1 %37, label %103, label %38, !dbg !1279

; <label>:38:                                     ; preds = %17
  %39 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %26, i64 0, i32 0
  %40 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, i32 2, i32 0
  br label %41, !dbg !1280

; <label>:41:                                     ; preds = %77, %38
  %42 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1280, !srcloc !598
  %43 = and i64 %42, -65536, !dbg !1288
  %44 = inttoptr i64 %43 to %struct.uk_thread**, !dbg !1289
  %45 = load %struct.uk_thread*, %struct.uk_thread** %44, align 65536, !dbg !1291, !tbaa !605
  %46 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1293
  %47 = load i32, i32* %39, align 8, !dbg !1304, !tbaa !1306
  %48 = icmp eq i32 %47, 0, !dbg !1307
  br i1 %48, label %49, label %51, !dbg !1308

; <label>:49:                                     ; preds = %41
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %40, align 8, !dbg !1309, !tbaa !838
  %50 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %15, align 8, !dbg !1309, !tbaa !1312
  store %struct.uk_waitq_entry* %26, %struct.uk_waitq_entry** %50, align 8, !dbg !1309, !tbaa !605
  store %struct.uk_waitq_entry** %40, %struct.uk_waitq_entry*** %15, align 8, !dbg !1309, !tbaa !1312
  store i32 1, i32* %39, align 8, !dbg !1313, !tbaa !1306
  br label %51, !dbg !1314

; <label>:51:                                     ; preds = %49, %41
  %52 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 6, !dbg !1324
  store i64 0, i64* %52, align 8, !dbg !1325, !tbaa !1326
  %53 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 5, !dbg !1332
  %54 = load i32, i32* %53, align 8, !dbg !1333, !tbaa !1334
  %55 = and i32 %54, -2, !dbg !1333
  store i32 %55, i32* %53, align 8, !dbg !1333, !tbaa !1334
  %56 = icmp eq %struct.uk_thread* %45, null, !dbg !1340
  br i1 %56, label %57, label %58, !dbg !1343, !prof !676

; <label>:57:                                     ; preds = %51
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !1344
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1344
  unreachable, !dbg !1344

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 9, !dbg !1346
  %60 = load %struct.uk_sched*, %struct.uk_sched** %59, align 8, !dbg !1346, !tbaa !874
  %61 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %60, i64 0, i32 3, !dbg !1347
  %62 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %61, align 8, !dbg !1347, !tbaa !1348
  tail call void %62(%struct.uk_sched* %60, %struct.uk_thread* nonnull %45) #11, !dbg !1349
  tail call void @ukplat_lcpu_restore_irqf(i64 %46) #11, !dbg !1350
  %63 = load volatile i32, i32* %2, align 4, !dbg !1351, !tbaa !680
  %64 = icmp eq i32 %63, 0, !dbg !1353
  br i1 %64, label %80, label %65, !dbg !1354

; <label>:65:                                     ; preds = %58
  %66 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1355, !srcloc !598
  %67 = and i64 %66, -65536, !dbg !1361
  %68 = inttoptr i64 %67 to %struct.uk_thread**, !dbg !1362
  %69 = load %struct.uk_thread*, %struct.uk_thread** %68, align 65536, !dbg !1364, !tbaa !605
  %70 = icmp eq %struct.uk_thread* %69, null, !dbg !1366
  br i1 %70, label %71, label %72, !dbg !1367, !prof !676

; <label>:71:                                     ; preds = %65
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !1368
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1368
  unreachable, !dbg !1368

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %69, i64 0, i32 9, !dbg !1369
  %74 = load %struct.uk_sched*, %struct.uk_sched** %73, align 8, !dbg !1369, !tbaa !874
  %75 = icmp eq %struct.uk_sched* %74, null, !dbg !1371
  br i1 %75, label %76, label %77, !dbg !1372, !prof !676

; <label>:76:                                     ; preds = %72
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !1373
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1373
  unreachable, !dbg !1373

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %74, i64 0, i32 0, !dbg !1374
  %79 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %78, align 8, !dbg !1374, !tbaa !1005
  tail call void %79(%struct.uk_sched* nonnull %74) #11, !dbg !1375
  br label %41, !dbg !1376, !llvm.loop !1377

; <label>:80:                                     ; preds = %58
  %81 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1380
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %45) #11, !dbg !1381
  %82 = load i32, i32* %39, align 8, !dbg !1395, !tbaa !1306
  %83 = icmp eq i32 %82, 0, !dbg !1396
  br i1 %83, label %102, label %84, !dbg !1397

; <label>:84:                                     ; preds = %80
  %85 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1398, !tbaa !834
  %86 = icmp eq %struct.uk_waitq_entry* %85, %26, !dbg !1398
  br i1 %86, label %87, label %91, !dbg !1399

; <label>:87:                                     ; preds = %84
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %40, align 8, !dbg !1400, !tbaa !838
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %16, align 8, !dbg !1400, !tbaa !834
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !1400
  br i1 %89, label %90, label %101, !dbg !1404

; <label>:90:                                     ; preds = %87
  store %struct.uk_waitq_entry** %16, %struct.uk_waitq_entry*** %15, align 8, !dbg !1400, !tbaa !1312
  br label %101, !dbg !1400

; <label>:91:                                     ; preds = %84, %91
  %92 = phi %struct.uk_waitq_entry* [ %94, %91 ], [ %85, %84 ], !dbg !1405
  %93 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %92, i64 0, i32 2, i32 0, !dbg !1405
  %94 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %93, align 8, !dbg !1405, !tbaa !838
  %95 = icmp eq %struct.uk_waitq_entry* %94, %26, !dbg !1405
  br i1 %95, label %96, label %91, !dbg !1405, !llvm.loop !1406

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %92, i64 0, i32 2, i32 0, !dbg !1405
  %98 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %40, align 8, !dbg !1408, !tbaa !838
  store %struct.uk_waitq_entry* %98, %struct.uk_waitq_entry** %97, align 8, !dbg !1408, !tbaa !838
  %99 = icmp eq %struct.uk_waitq_entry* %98, null, !dbg !1408
  br i1 %99, label %100, label %101, !dbg !1411

; <label>:100:                                    ; preds = %96
  store %struct.uk_waitq_entry** %97, %struct.uk_waitq_entry*** %15, align 8, !dbg !1408, !tbaa !1312
  br label %101, !dbg !1408

; <label>:101:                                    ; preds = %100, %96, %90, %87
  store i32 0, i32* %39, align 8, !dbg !1412, !tbaa !1306
  br label %102, !dbg !1413

; <label>:102:                                    ; preds = %101, %80
  tail call void @ukplat_lcpu_restore_irqf(i64 %81) #11, !dbg !1414
  br label %103, !dbg !1415

; <label>:103:                                    ; preds = %102, %17
  %104 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1416
  %105 = load i32, i32* %6, align 8, !dbg !1418, !tbaa !1233
  %106 = icmp eq i32 %105, 0, !dbg !1420
  br i1 %106, label %111, label %107, !dbg !1421

; <label>:107:                                    ; preds = %103
  %108 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !1422, !tbaa !1236
  %109 = icmp eq %struct.uk_thread* %108, %13, !dbg !1423
  br i1 %109, label %111, label %110, !dbg !1424

; <label>:110:                                    ; preds = %107
  tail call void @ukplat_lcpu_restore_irqf(i64 %104) #11, !dbg !1425
  br label %17, !dbg !1426, !llvm.loop !1427

; <label>:111:                                    ; preds = %103, %107
  %112 = add nsw i32 %105, 1, !dbg !1430
  store i32 %112, i32* %6, align 8, !dbg !1430, !tbaa !1233
  store %struct.uk_thread* %13, %struct.uk_thread** %8, align 8, !dbg !1431, !tbaa !1236
  tail call void @ukplat_lcpu_restore_irqf(i64 %104) #11, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !1433
  br label %113, !dbg !1434

; <label>:113:                                    ; preds = %1, %111
  %114 = phi i32 [ 0, %111 ], [ 5, %1 ], !dbg !1435
  ret i32 %114, !dbg !1436
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @pte_osMutexTimedLock(%struct.uk_mutex* nocapture readnone, i32) local_unnamed_addr #9 !dbg !1437 {
  ret i32 2, !dbg !1445
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1446 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !1450
  br i1 %2, label %27, label %3, !dbg !1452

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1461
  %5 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !1463
  %6 = load i32, i32* %5, align 8, !dbg !1463, !tbaa !1233
  %7 = icmp slt i32 %6, 1, !dbg !1463
  br i1 %7, label %8, label %9, !dbg !1466, !prof !676

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !1467
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1467
  unreachable, !dbg !1467

; <label>:9:                                      ; preds = %3
  %10 = add nsw i32 %6, -1, !dbg !1469
  store i32 %10, i32* %5, align 8, !dbg !1469, !tbaa !1233
  %11 = icmp eq i32 %10, 0, !dbg !1471
  br i1 %11, label %12, label %26, !dbg !1472

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !1473
  store %struct.uk_thread* null, %struct.uk_thread** %13, align 8, !dbg !1475, !tbaa !1236
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1478
  %15 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0, !dbg !1480
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1480, !tbaa !834
  %17 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !1482
  br i1 %17, label %25, label %18, !dbg !1482

; <label>:18:                                     ; preds = %12, %18
  %19 = phi %struct.uk_waitq_entry* [ %21, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 2, i32 0, !dbg !1482
  %21 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %20, align 8, !dbg !1482, !tbaa !838
  %22 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 1, !dbg !1484
  %23 = load %struct.uk_thread*, %struct.uk_thread** %22, align 8, !dbg !1484, !tbaa !843
  tail call void @uk_thread_wake(%struct.uk_thread* %23) #11, !dbg !1485
  %24 = icmp eq %struct.uk_waitq_entry* %21, null, !dbg !1482
  br i1 %24, label %25, label %18, !dbg !1482, !llvm.loop !845

; <label>:25:                                     ; preds = %18, %12
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #11, !dbg !1486
  br label %26, !dbg !1487

; <label>:26:                                     ; preds = %9, %25
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #11, !dbg !1488
  br label %27, !dbg !1489

; <label>:27:                                     ; preds = %1, %26
  %28 = phi i32 [ 0, %26 ], [ 5, %1 ], !dbg !1490
  ret i32 %28, !dbg !1491
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreCreate(i32, %struct.uk_semaphore**) local_unnamed_addr #0 !dbg !1492 {
  %3 = icmp eq %struct.uk_semaphore** %1, null, !dbg !1503
  br i1 %3, label %18, label %4, !dbg !1505

; <label>:4:                                      ; preds = %2
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1506, !tbaa !605
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !1510
  br i1 %6, label %7, label %9, !dbg !1511, !prof !676

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #11, !dbg !1512
  store i32 12, i32* %8, align 4, !dbg !1513, !tbaa !680
  br label %18, !dbg !1514

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 0, !dbg !1518
  %11 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %10, align 8, !dbg !1518, !tbaa !605
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 24) #11, !dbg !1519
  %13 = icmp eq i8* %12, null, !dbg !1520
  br i1 %13, label %18, label %14, !dbg !1514

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %12 to %struct.uk_semaphore*, !dbg !1522
  %16 = sext i32 %0 to i64, !dbg !1524
  tail call void @uk_semaphore_init(%struct.uk_semaphore* %15, i64 %16) #11, !dbg !1525
  %17 = bitcast %struct.uk_semaphore** %1 to i8**, !dbg !1526
  store i8* %12, i8** %17, align 8, !dbg !1526, !tbaa !605
  br label %18, !dbg !1527

; <label>:18:                                     ; preds = %7, %9, %2, %14
  %19 = phi i32 [ 0, %14 ], [ 5, %2 ], [ 1, %9 ], [ 1, %7 ], !dbg !1528
  ret i32 %19, !dbg !1529
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreDelete(%struct.uk_semaphore*) local_unnamed_addr #0 !dbg !1530 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1536
  br i1 %2, label %11, label %3, !dbg !1538

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1539, !tbaa !605
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !1552
  br i1 %5, label %6, label %7, !dbg !1555, !prof !676

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !1556
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1556
  unreachable, !dbg !1556

; <label>:7:                                      ; preds = %3
  %8 = bitcast %struct.uk_semaphore* %0 to i8*, !dbg !1558
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 5, !dbg !1561
  %10 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %9, align 8, !dbg !1561, !tbaa !605
  tail call void %10(%struct.uk_alloc* nonnull %4, i8* %8) #11, !dbg !1562
  br label %11, !dbg !1563

; <label>:11:                                     ; preds = %1, %7
  %12 = phi i32 [ 0, %7 ], [ 5, %1 ], !dbg !1564
  ret i32 %12, !dbg !1565
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphorePost(%struct.uk_semaphore*, i32) local_unnamed_addr #0 !dbg !1566 {
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1575
  br i1 %3, label %27, label %4, !dbg !1577

; <label>:4:                                      ; preds = %2
  %5 = icmp sgt i32 %1, 0, !dbg !1579
  br i1 %5, label %6, label %27, !dbg !1582

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %9, !dbg !1582

; <label>:9:                                      ; preds = %24, %6
  %10 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1585
  %12 = load i64, i64* %7, align 8, !dbg !1587, !tbaa !816
  %13 = add nsw i64 %12, 1, !dbg !1587
  store i64 %13, i64* %7, align 8, !dbg !1587, !tbaa !816
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1591
  %15 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %8, align 8, !dbg !1593, !tbaa !834
  %16 = icmp eq %struct.uk_waitq_entry* %15, null, !dbg !1595
  br i1 %16, label %24, label %17, !dbg !1595

; <label>:17:                                     ; preds = %9, %17
  %18 = phi %struct.uk_waitq_entry* [ %20, %17 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 2, i32 0, !dbg !1595
  %20 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %19, align 8, !dbg !1595, !tbaa !838
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 1, !dbg !1597
  %22 = load %struct.uk_thread*, %struct.uk_thread** %21, align 8, !dbg !1597, !tbaa !843
  tail call void @uk_thread_wake(%struct.uk_thread* %22) #11, !dbg !1598
  %23 = icmp eq %struct.uk_waitq_entry* %20, null, !dbg !1595
  br i1 %23, label %24, label %17, !dbg !1595, !llvm.loop !845

; <label>:24:                                     ; preds = %17, %9
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #11, !dbg !1599
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #11, !dbg !1600
  %25 = add nuw nsw i32 %10, 1, !dbg !1601
  %26 = icmp eq i32 %25, %1, !dbg !1579
  br i1 %26, label %27, label %9, !dbg !1582, !llvm.loop !1602

; <label>:27:                                     ; preds = %24, %4, %2
  %28 = phi i32 [ 5, %2 ], [ 0, %4 ], [ 0, %24 ], !dbg !1604
  ret i32 %28, !dbg !1605
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32* readonly) local_unnamed_addr #0 !dbg !1606 {
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1616
  br i1 %3, label %126, label %4, !dbg !1618

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !1619
  br i1 %5, label %124, label %6, !dbg !1621

; <label>:6:                                      ; preds = %4
  %7 = load i32, i32* %1, align 4, !dbg !1622, !tbaa !680
  %8 = zext i32 %7 to i64, !dbg !1622
  %9 = mul nuw nsw i64 %8, 1000000, !dbg !1622
  %10 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !1646
  %11 = add i64 %9, %10, !dbg !1648
  %12 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %14 = icmp eq i64 %11, 0
  %15 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %16, !dbg !1650

; <label>:16:                                     ; preds = %113, %6
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1651, !srcloc !598
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1657, !srcloc !598
  %19 = and i64 %18, -65536, !dbg !1662
  %20 = or i64 %19, 4097, !dbg !1662
  %21 = add nsw i64 %20, -1, !dbg !1662
  %22 = inttoptr i64 %21 to i32*, !dbg !1663
  %23 = load i32, i32* %22, align 4096, !dbg !1664, !tbaa !680
  %24 = sext i32 %23 to i64, !dbg !1665
  %25 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, !dbg !1665
  %26 = bitcast %struct.uk_waitq_entry* %25 to i8*, !dbg !1665
  %27 = tail call i8* @memset(i8* nonnull %26, i32 0, i64 24) #11, !dbg !1665
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1666, !srcloc !598
  %29 = and i64 %28, -65536, !dbg !1671
  %30 = inttoptr i64 %29 to i64*, !dbg !1672
  %31 = load i64, i64* %30, align 65536, !dbg !1672, !tbaa !605
  %32 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, i32 1, !dbg !1665
  %33 = bitcast %struct.uk_thread** %32 to i64*, !dbg !1665
  store i64 %31, i64* %33, align 8, !dbg !1665, !tbaa !843
  %34 = load i64, i64* %12, align 8, !dbg !1674, !tbaa !816
  %35 = icmp sgt i64 %34, 0, !dbg !1676
  br i1 %35, label %105, label %36, !dbg !1677

; <label>:36:                                     ; preds = %16
  %37 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %25, i64 0, i32 0
  %38 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, i32 2, i32 0
  br label %39, !dbg !1678

; <label>:39:                                     ; preds = %79, %36
  %40 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1678, !srcloc !598
  %41 = and i64 %40, -65536, !dbg !1686
  %42 = inttoptr i64 %41 to %struct.uk_thread**, !dbg !1687
  %43 = load %struct.uk_thread*, %struct.uk_thread** %42, align 65536, !dbg !1689, !tbaa !605
  %44 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1691
  %45 = load i32, i32* %37, align 8, !dbg !1696, !tbaa !1306
  %46 = icmp eq i32 %45, 0, !dbg !1697
  br i1 %46, label %47, label %49, !dbg !1698

; <label>:47:                                     ; preds = %39
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %38, align 8, !dbg !1699, !tbaa !838
  %48 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %13, align 8, !dbg !1699, !tbaa !1312
  store %struct.uk_waitq_entry* %25, %struct.uk_waitq_entry** %48, align 8, !dbg !1699, !tbaa !605
  store %struct.uk_waitq_entry** %38, %struct.uk_waitq_entry*** %13, align 8, !dbg !1699, !tbaa !1312
  store i32 1, i32* %37, align 8, !dbg !1700, !tbaa !1306
  br label %49, !dbg !1701

; <label>:49:                                     ; preds = %47, %39
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 6, !dbg !1705
  store i64 %11, i64* %50, align 8, !dbg !1706, !tbaa !1326
  %51 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 5, !dbg !1709
  %52 = load i32, i32* %51, align 8, !dbg !1710, !tbaa !1334
  %53 = and i32 %52, -2, !dbg !1710
  store i32 %53, i32* %51, align 8, !dbg !1710, !tbaa !1334
  %54 = icmp eq %struct.uk_thread* %43, null, !dbg !1713
  br i1 %54, label %55, label %56, !dbg !1714, !prof !676

; <label>:55:                                     ; preds = %49
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !1715
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1715
  unreachable, !dbg !1715

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 9, !dbg !1716
  %58 = load %struct.uk_sched*, %struct.uk_sched** %57, align 8, !dbg !1716, !tbaa !874
  %59 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %58, i64 0, i32 3, !dbg !1717
  %60 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %59, align 8, !dbg !1717, !tbaa !1348
  tail call void %60(%struct.uk_sched* %58, %struct.uk_thread* nonnull %43) #11, !dbg !1718
  tail call void @ukplat_lcpu_restore_irqf(i64 %44) #11, !dbg !1719
  %61 = load i64, i64* %12, align 8, !dbg !1720, !tbaa !816
  %62 = icmp sgt i64 %61, 0, !dbg !1722
  br i1 %62, label %82, label %63, !dbg !1723

; <label>:63:                                     ; preds = %56
  br i1 %14, label %67, label %64, !dbg !1724

; <label>:64:                                     ; preds = %63
  %65 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !1725
  %66 = icmp ult i64 %65, %11, !dbg !1726
  br i1 %66, label %67, label %82, !dbg !1727

; <label>:67:                                     ; preds = %64, %63
  %68 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1728, !srcloc !598
  %69 = and i64 %68, -65536, !dbg !1734
  %70 = inttoptr i64 %69 to %struct.uk_thread**, !dbg !1735
  %71 = load %struct.uk_thread*, %struct.uk_thread** %70, align 65536, !dbg !1737, !tbaa !605
  %72 = icmp eq %struct.uk_thread* %71, null, !dbg !1739
  br i1 %72, label %73, label %74, !dbg !1740, !prof !676

; <label>:73:                                     ; preds = %67
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !1741
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1741
  unreachable, !dbg !1741

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %71, i64 0, i32 9, !dbg !1742
  %76 = load %struct.uk_sched*, %struct.uk_sched** %75, align 8, !dbg !1742, !tbaa !874
  %77 = icmp eq %struct.uk_sched* %76, null, !dbg !1744
  br i1 %77, label %78, label %79, !dbg !1745, !prof !676

; <label>:78:                                     ; preds = %74
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !1746
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1746
  unreachable, !dbg !1746

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %76, i64 0, i32 0, !dbg !1747
  %81 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %80, align 8, !dbg !1747, !tbaa !1005
  tail call void %81(%struct.uk_sched* nonnull %76) #11, !dbg !1748
  br label %39, !dbg !1749, !llvm.loop !1750

; <label>:82:                                     ; preds = %64, %56
  %83 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1753
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %43) #11, !dbg !1754
  %84 = load i32, i32* %37, align 8, !dbg !1758, !tbaa !1306
  %85 = icmp eq i32 %84, 0, !dbg !1759
  br i1 %85, label %104, label %86, !dbg !1760

; <label>:86:                                     ; preds = %82
  %87 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1761, !tbaa !834
  %88 = icmp eq %struct.uk_waitq_entry* %87, %25, !dbg !1761
  br i1 %88, label %89, label %93, !dbg !1762

; <label>:89:                                     ; preds = %86
  %90 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %38, align 8, !dbg !1763, !tbaa !838
  store %struct.uk_waitq_entry* %90, %struct.uk_waitq_entry** %15, align 8, !dbg !1763, !tbaa !834
  %91 = icmp eq %struct.uk_waitq_entry* %90, null, !dbg !1763
  br i1 %91, label %92, label %103, !dbg !1764

; <label>:92:                                     ; preds = %89
  store %struct.uk_waitq_entry** %15, %struct.uk_waitq_entry*** %13, align 8, !dbg !1763, !tbaa !1312
  br label %103, !dbg !1763

; <label>:93:                                     ; preds = %86, %93
  %94 = phi %struct.uk_waitq_entry* [ %96, %93 ], [ %87, %86 ], !dbg !1765
  %95 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %94, i64 0, i32 2, i32 0, !dbg !1765
  %96 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %95, align 8, !dbg !1765, !tbaa !838
  %97 = icmp eq %struct.uk_waitq_entry* %96, %25, !dbg !1765
  br i1 %97, label %98, label %93, !dbg !1765, !llvm.loop !1406

; <label>:98:                                     ; preds = %93
  %99 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %94, i64 0, i32 2, i32 0, !dbg !1765
  %100 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %38, align 8, !dbg !1766, !tbaa !838
  store %struct.uk_waitq_entry* %100, %struct.uk_waitq_entry** %99, align 8, !dbg !1766, !tbaa !838
  %101 = icmp eq %struct.uk_waitq_entry* %100, null, !dbg !1766
  br i1 %101, label %102, label %103, !dbg !1767

; <label>:102:                                    ; preds = %98
  store %struct.uk_waitq_entry** %99, %struct.uk_waitq_entry*** %13, align 8, !dbg !1766, !tbaa !1312
  br label %103, !dbg !1766

; <label>:103:                                    ; preds = %102, %98, %92, %89
  store i32 0, i32* %37, align 8, !dbg !1768, !tbaa !1306
  br label %104, !dbg !1769

; <label>:104:                                    ; preds = %103, %82
  tail call void @ukplat_lcpu_restore_irqf(i64 %83) #11, !dbg !1770
  br label %105, !dbg !1771

; <label>:105:                                    ; preds = %104, %16
  %106 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1772
  %107 = load i64, i64* %12, align 8, !dbg !1774, !tbaa !816
  %108 = icmp sgt i64 %107, 0, !dbg !1776
  br i1 %108, label %118, label %109, !dbg !1777

; <label>:109:                                    ; preds = %105
  br i1 %14, label %113, label %110, !dbg !1778

; <label>:110:                                    ; preds = %109
  %111 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !1779
  %112 = icmp ult i64 %111, %11, !dbg !1780
  br i1 %112, label %113, label %114, !dbg !1781

; <label>:113:                                    ; preds = %110, %109
  tail call void @ukplat_lcpu_restore_irqf(i64 %106) #11, !dbg !1782
  br label %16, !dbg !1783, !llvm.loop !1784

; <label>:114:                                    ; preds = %110
  %115 = load i64, i64* %12, align 8, !dbg !1787, !tbaa !816
  %116 = icmp sgt i64 %115, 0, !dbg !1789
  br i1 %116, label %118, label %117, !dbg !1790

; <label>:117:                                    ; preds = %114
  tail call void @ukplat_lcpu_restore_irqf(i64 %106) #11, !dbg !1791
  br label %126, !dbg !1792

; <label>:118:                                    ; preds = %105, %114
  %119 = phi i64 [ %115, %114 ], [ %107, %105 ]
  %120 = add nsw i64 %119, -1, !dbg !1793
  store i64 %120, i64* %12, align 8, !dbg !1793, !tbaa !816
  tail call void @ukplat_lcpu_restore_irqf(i64 %106) #11, !dbg !1795
  %121 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !1796
  %122 = sub i64 %121, %10, !dbg !1797
  %123 = icmp eq i64 %122, -1, !dbg !1798
  br i1 %123, label %126, label %125, !dbg !1792

; <label>:124:                                    ; preds = %4
  tail call fastcc void @uk_semaphore_down(%struct.uk_semaphore* nonnull %0) #12, !dbg !1799
  br label %125

; <label>:125:                                    ; preds = %118, %124
  br label %126, !dbg !1800

; <label>:126:                                    ; preds = %117, %118, %2, %125
  %127 = phi i32 [ 0, %125 ], [ 5, %2 ], [ 3, %118 ], [ 3, %117 ], !dbg !1801
  ret i32 %127, !dbg !1802
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @uk_semaphore_down(%struct.uk_semaphore*) unnamed_addr #4 !dbg !1803 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1816
  br i1 %2, label %7, label %3, !dbg !1819, !prof !676

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %8, !dbg !1820

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1823
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1823
  unreachable, !dbg !1823

; <label>:8:                                      ; preds = %3, %97
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1820, !srcloc !598
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1828, !srcloc !598
  %11 = and i64 %10, -65536, !dbg !1833
  %12 = or i64 %11, 4097, !dbg !1833
  %13 = add nsw i64 %12, -1, !dbg !1833
  %14 = inttoptr i64 %13 to i32*, !dbg !1834
  %15 = load i32, i32* %14, align 4096, !dbg !1835, !tbaa !680
  %16 = sext i32 %15 to i64, !dbg !1836
  %17 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, !dbg !1836
  %18 = bitcast %struct.uk_waitq_entry* %17 to i8*, !dbg !1836
  %19 = tail call i8* @memset(i8* nonnull %18, i32 0, i64 24) #11, !dbg !1836
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1837, !srcloc !598
  %21 = and i64 %20, -65536, !dbg !1842
  %22 = inttoptr i64 %21 to i64*, !dbg !1843
  %23 = load i64, i64* %22, align 65536, !dbg !1843, !tbaa !605
  %24 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 1, !dbg !1836
  %25 = bitcast %struct.uk_thread** %24 to i64*, !dbg !1836
  store i64 %23, i64* %25, align 8, !dbg !1836, !tbaa !843
  %26 = load i64, i64* %4, align 8, !dbg !1845, !tbaa !816
  %27 = icmp sgt i64 %26, 0, !dbg !1847
  br i1 %27, label %93, label %28, !dbg !1848

; <label>:28:                                     ; preds = %8
  %29 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %17, i64 0, i32 0
  %30 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 2, i32 0
  br label %31, !dbg !1849

; <label>:31:                                     ; preds = %28, %67
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1849, !srcloc !598
  %33 = and i64 %32, -65536, !dbg !1857
  %34 = inttoptr i64 %33 to %struct.uk_thread**, !dbg !1858
  %35 = load %struct.uk_thread*, %struct.uk_thread** %34, align 65536, !dbg !1860, !tbaa !605
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1862
  %37 = load i32, i32* %29, align 8, !dbg !1867, !tbaa !1306
  %38 = icmp eq i32 %37, 0, !dbg !1868
  br i1 %38, label %39, label %41, !dbg !1869

; <label>:39:                                     ; preds = %31
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %30, align 8, !dbg !1870, !tbaa !838
  %40 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %5, align 8, !dbg !1870, !tbaa !1312
  store %struct.uk_waitq_entry* %17, %struct.uk_waitq_entry** %40, align 8, !dbg !1870, !tbaa !605
  store %struct.uk_waitq_entry** %30, %struct.uk_waitq_entry*** %5, align 8, !dbg !1870, !tbaa !1312
  store i32 1, i32* %29, align 8, !dbg !1871, !tbaa !1306
  br label %41, !dbg !1872

; <label>:41:                                     ; preds = %31, %39
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 6, !dbg !1876
  store i64 0, i64* %42, align 8, !dbg !1877, !tbaa !1326
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 5, !dbg !1880
  %44 = load i32, i32* %43, align 8, !dbg !1881, !tbaa !1334
  %45 = and i32 %44, -2, !dbg !1881
  store i32 %45, i32* %43, align 8, !dbg !1881, !tbaa !1334
  %46 = icmp eq %struct.uk_thread* %35, null, !dbg !1884
  br i1 %46, label %47, label %48, !dbg !1885, !prof !676

; <label>:47:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !1886
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1886
  unreachable, !dbg !1886

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 9, !dbg !1887
  %50 = load %struct.uk_sched*, %struct.uk_sched** %49, align 8, !dbg !1887, !tbaa !874
  %51 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %50, i64 0, i32 3, !dbg !1888
  %52 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %51, align 8, !dbg !1888, !tbaa !1348
  tail call void %52(%struct.uk_sched* %50, %struct.uk_thread* nonnull %35) #11, !dbg !1889
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #11, !dbg !1890
  %53 = load i64, i64* %4, align 8, !dbg !1891, !tbaa !816
  %54 = icmp sgt i64 %53, 0, !dbg !1893
  br i1 %54, label %70, label %55, !dbg !1894

; <label>:55:                                     ; preds = %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1895, !srcloc !598
  %57 = and i64 %56, -65536, !dbg !1901
  %58 = inttoptr i64 %57 to %struct.uk_thread**, !dbg !1902
  %59 = load %struct.uk_thread*, %struct.uk_thread** %58, align 65536, !dbg !1904, !tbaa !605
  %60 = icmp eq %struct.uk_thread* %59, null, !dbg !1906
  br i1 %60, label %61, label %62, !dbg !1907, !prof !676

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !1908
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1908
  unreachable, !dbg !1908

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %59, i64 0, i32 9, !dbg !1909
  %64 = load %struct.uk_sched*, %struct.uk_sched** %63, align 8, !dbg !1909, !tbaa !874
  %65 = icmp eq %struct.uk_sched* %64, null, !dbg !1911
  br i1 %65, label %66, label %67, !dbg !1912, !prof !676

; <label>:66:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !1913
  tail call void @ukplat_terminate(i32 3) #13, !dbg !1913
  unreachable, !dbg !1913

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %64, i64 0, i32 0, !dbg !1914
  %69 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %68, align 8, !dbg !1914, !tbaa !1005
  tail call void %69(%struct.uk_sched* nonnull %64) #11, !dbg !1915
  br label %31, !dbg !1916, !llvm.loop !1917

; <label>:70:                                     ; preds = %48
  %71 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1920
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %35) #11, !dbg !1921
  %72 = load i32, i32* %29, align 8, !dbg !1925, !tbaa !1306
  %73 = icmp eq i32 %72, 0, !dbg !1926
  br i1 %73, label %92, label %74, !dbg !1927

; <label>:74:                                     ; preds = %70
  %75 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %6, align 8, !dbg !1928, !tbaa !834
  %76 = icmp eq %struct.uk_waitq_entry* %75, %17, !dbg !1928
  br i1 %76, label %77, label %81, !dbg !1929

; <label>:77:                                     ; preds = %74
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !1930, !tbaa !838
  store %struct.uk_waitq_entry* %78, %struct.uk_waitq_entry** %6, align 8, !dbg !1930, !tbaa !834
  %79 = icmp eq %struct.uk_waitq_entry* %78, null, !dbg !1930
  br i1 %79, label %80, label %91, !dbg !1931

; <label>:80:                                     ; preds = %77
  store %struct.uk_waitq_entry** %6, %struct.uk_waitq_entry*** %5, align 8, !dbg !1930, !tbaa !1312
  br label %91, !dbg !1930

; <label>:81:                                     ; preds = %74, %81
  %82 = phi %struct.uk_waitq_entry* [ %84, %81 ], [ %75, %74 ], !dbg !1932
  %83 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !1932
  %84 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %83, align 8, !dbg !1932, !tbaa !838
  %85 = icmp eq %struct.uk_waitq_entry* %84, %17, !dbg !1932
  br i1 %85, label %86, label %81, !dbg !1932, !llvm.loop !1406

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !1932
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !1933, !tbaa !838
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %87, align 8, !dbg !1933, !tbaa !838
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !1933
  br i1 %89, label %90, label %91, !dbg !1934

; <label>:90:                                     ; preds = %86
  store %struct.uk_waitq_entry** %87, %struct.uk_waitq_entry*** %5, align 8, !dbg !1933, !tbaa !1312
  br label %91, !dbg !1933

; <label>:91:                                     ; preds = %90, %86, %80, %77
  store i32 0, i32* %29, align 8, !dbg !1935, !tbaa !1306
  br label %92, !dbg !1936

; <label>:92:                                     ; preds = %70, %91
  tail call void @ukplat_lcpu_restore_irqf(i64 %71) #11, !dbg !1937
  br label %93, !dbg !1938

; <label>:93:                                     ; preds = %8, %92
  %94 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !1939
  %95 = load i64, i64* %4, align 8, !dbg !1941, !tbaa !816
  %96 = icmp sgt i64 %95, 0, !dbg !1943
  br i1 %96, label %98, label %97, !dbg !1944

; <label>:97:                                     ; preds = %93
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #11, !dbg !1945
  br label %8, !dbg !1946, !llvm.loop !1947

; <label>:98:                                     ; preds = %93
  %99 = add nsw i64 %95, -1, !dbg !1950
  store i64 %99, i64* %4, align 8, !dbg !1950, !tbaa !816
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #11, !dbg !1951
  ret void, !dbg !1952
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreCancellablePend(%struct.uk_semaphore*, i32* readonly) local_unnamed_addr #0 !dbg !1953 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1963, !srcloc !598
  %4 = and i64 %3, -65536, !dbg !1969
  %5 = inttoptr i64 %4 to %struct.uk_thread**, !dbg !1970
  %6 = load %struct.uk_thread*, %struct.uk_thread** %5, align 65536, !dbg !1972, !tbaa !605
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %6, i64 0, i32 10, !dbg !1976
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !1976
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !1976, !tbaa !618
  %10 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !1981
  %11 = icmp eq i32* %1, null, !dbg !1983
  br i1 %11, label %16, label %12, !dbg !1985

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %1, align 4, !dbg !1986, !tbaa !680
  %14 = zext i32 %13 to i64, !dbg !1986
  %15 = mul nuw nsw i64 %14, 1000000, !dbg !1986
  br label %16, !dbg !1987

; <label>:16:                                     ; preds = %2, %12
  %17 = phi i64 [ %15, %12 ], [ 0, %2 ], !dbg !1988
  %18 = icmp eq %struct.uk_semaphore* %0, null, !dbg !2001
  br i1 %18, label %27, label %19, !dbg !2004, !prof !676

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %21 = icmp eq i64 %17, 0
  %22 = icmp eq %struct.pte_thread_data_t* %9, null
  %23 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 5, i32 0
  %24 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !2005
  %25 = load i64, i64* %20, align 8, !dbg !2007, !tbaa !816
  %26 = icmp sgt i64 %25, 0, !dbg !2009
  br i1 %26, label %28, label %32, !dbg !2010

; <label>:27:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !2011
  tail call void @ukplat_terminate(i32 3) #13, !dbg !2011
  unreachable, !dbg !2011

; <label>:28:                                     ; preds = %54, %19
  %29 = phi i64 [ %24, %19 ], [ %57, %54 ], !dbg !2005
  %30 = phi i64 [ %25, %19 ], [ %58, %54 ], !dbg !2007
  %31 = add nsw i64 %30, -1, !dbg !2013
  store i64 %31, i64* %20, align 8, !dbg !2013, !tbaa !816
  tail call void @ukplat_lcpu_restore_irqf(i64 %29) #11, !dbg !2015
  br label %60, !dbg !2016

; <label>:32:                                     ; preds = %19, %54
  %33 = phi i64 [ %57, %54 ], [ %24, %19 ]
  tail call void @ukplat_lcpu_restore_irqf(i64 %33) #11, !dbg !2015
  br i1 %21, label %38, label %34, !dbg !2017

; <label>:34:                                     ; preds = %32
  %35 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !2019
  %36 = sub i64 %35, %10, !dbg !2020
  %37 = icmp ugt i64 %36, %17, !dbg !2021
  br i1 %37, label %60, label %38, !dbg !2022

; <label>:38:                                     ; preds = %32, %34
  br i1 %22, label %42, label %39, !dbg !2023

; <label>:39:                                     ; preds = %38
  %40 = load i64, i64* %23, align 8, !dbg !2025, !tbaa !972
  %41 = icmp sgt i64 %40, 0, !dbg !2026
  br i1 %41, label %60, label %42, !dbg !2027

; <label>:42:                                     ; preds = %38, %39
  %43 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2028, !srcloc !598
  %44 = and i64 %43, -65536, !dbg !2034
  %45 = inttoptr i64 %44 to %struct.uk_thread**, !dbg !2035
  %46 = load %struct.uk_thread*, %struct.uk_thread** %45, align 65536, !dbg !2037, !tbaa !605
  %47 = icmp eq %struct.uk_thread* %46, null, !dbg !2039
  br i1 %47, label %48, label %49, !dbg !2040, !prof !676

; <label>:48:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !2041
  tail call void @ukplat_terminate(i32 3) #13, !dbg !2041
  unreachable, !dbg !2041

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %46, i64 0, i32 9, !dbg !2042
  %51 = load %struct.uk_sched*, %struct.uk_sched** %50, align 8, !dbg !2042, !tbaa !874
  %52 = icmp eq %struct.uk_sched* %51, null, !dbg !2044
  br i1 %52, label %53, label %54, !dbg !2045, !prof !676

; <label>:53:                                     ; preds = %49
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !2046
  tail call void @ukplat_terminate(i32 3) #13, !dbg !2046
  unreachable, !dbg !2046

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %51, i64 0, i32 0, !dbg !2047
  %56 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %55, align 8, !dbg !2047, !tbaa !1005
  tail call void %56(%struct.uk_sched* nonnull %51) #11, !dbg !2048
  %57 = tail call i64 @ukplat_lcpu_save_irqf() #11, !dbg !2005
  %58 = load i64, i64* %20, align 8, !dbg !2007, !tbaa !816
  %59 = icmp sgt i64 %58, 0, !dbg !2009
  br i1 %59, label %28, label %32, !dbg !2010

; <label>:60:                                     ; preds = %39, %34, %28
  %61 = phi i32 [ 0, %28 ], [ 4, %39 ], [ 3, %34 ], !dbg !2049
  ret i32 %61, !dbg !2051
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsSetValue(i32, i8*) local_unnamed_addr #0 !dbg !2052 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2060, !srcloc !598
  %4 = and i64 %3, -65536, !dbg !2072
  %5 = inttoptr i64 %4 to %struct.uk_thread**, !dbg !2073
  %6 = load %struct.uk_thread*, %struct.uk_thread** %5, align 65536, !dbg !2075, !tbaa !605
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %6, i64 0, i32 10, !dbg !2079
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !2079
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !2079, !tbaa !618
  %10 = icmp eq %struct.pte_thread_data_t* %9, null, !dbg !2082
  br i1 %10, label %14, label %11, !dbg !2082

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 3, !dbg !2083
  %13 = load i8*, i8** %12, align 8, !dbg !2083, !tbaa !567
  br label %14, !dbg !2082

; <label>:14:                                     ; preds = %2, %11
  %15 = phi i8* [ %13, %11 ], [ null, %2 ], !dbg !2082
  %16 = tail call i32 @pteTlsSetValue(i8* %15, i32 %0, i8* %1) #11, !dbg !2084
  ret i32 %16, !dbg !2085
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsSetValue(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @pte_osTlsGetValue(i32) local_unnamed_addr #0 !dbg !2086 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2092, !srcloc !598
  %3 = and i64 %2, -65536, !dbg !2099
  %4 = inttoptr i64 %3 to %struct.uk_thread**, !dbg !2100
  %5 = load %struct.uk_thread*, %struct.uk_thread** %4, align 65536, !dbg !2102, !tbaa !605
  %6 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %5, i64 0, i32 10, !dbg !2106
  %7 = bitcast i8** %6 to %struct.pte_thread_data_t**, !dbg !2106
  %8 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %7, align 8, !dbg !2106, !tbaa !618
  %9 = icmp eq %struct.pte_thread_data_t* %8, null, !dbg !2109
  br i1 %9, label %13, label %10, !dbg !2109

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %8, i64 0, i32 3, !dbg !2110
  %12 = load i8*, i8** %11, align 8, !dbg !2110, !tbaa !567
  br label %13, !dbg !2109

; <label>:13:                                     ; preds = %1, %10
  %14 = phi i8* [ %12, %10 ], [ null, %1 ], !dbg !2109
  %15 = tail call i8* @pteTlsGetValue(i8* %14, i32 %0) #11, !dbg !2111
  ret i8* %15, !dbg !2112
}

; Function Attrs: noredzone
declare dso_local i8* @pteTlsGetValue(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsAlloc(i32*) local_unnamed_addr #0 !dbg !2113 {
  %2 = tail call i32 @pteTlsAlloc(i32* %0) #11, !dbg !2119
  ret i32 %2, !dbg !2120
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsAlloc(i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsFree(i32) local_unnamed_addr #0 !dbg !2121 {
  %2 = tail call i32 @pteTlsFree(i32 %0) #11, !dbg !2127
  ret i32 %2, !dbg !2128
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsFree(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ftime(%struct.timeb*) local_unnamed_addr #0 !dbg !2129 {
  %2 = tail call i64 @ukplat_monotonic_clock() #11, !dbg !2146
  %3 = icmp eq %struct.timeb* %0, null, !dbg !2148
  br i1 %3, label %11, label %4, !dbg !2150

; <label>:4:                                      ; preds = %1
  %5 = udiv i64 %2, 1000000000, !dbg !2151
  %6 = getelementptr inbounds %struct.timeb, %struct.timeb* %0, i64 0, i32 0, !dbg !2153
  store i64 %5, i64* %6, align 8, !dbg !2154, !tbaa !2155
  %7 = urem i64 %2, 1000000000, !dbg !2158
  %8 = udiv i64 %7, 1000000, !dbg !2158
  %9 = trunc i64 %8 to i16, !dbg !2158
  %10 = getelementptr inbounds %struct.timeb, %struct.timeb* %0, i64 0, i32 1, !dbg !2159
  store i16 %9, i16* %10, align 8, !dbg !2160, !tbaa !2161
  br label %11, !dbg !2162

; <label>:11:                                     ; preds = %1, %4
  ret i32 0, !dbg !2163
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_init() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !523 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2164
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #10, !dbg !2164
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2166
  call void @llvm.va_start(i8* nonnull %3), !dbg !2166
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.7, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #11, !dbg !2167
  call void @llvm.va_end(i8* nonnull %3), !dbg !2170
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #10, !dbg !2171
  ret void, !dbg !2171
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
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin noredzone nounwind }
attributes #12 = { nobuiltin noredzone }
attributes #13 = { nobuiltin noredzone noreturn nounwind }

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
!541 = !DILocation(line: 66, column: 9, scope: !539)
!542 = !DILocation(line: 66, column: 2, scope: !539)
!543 = distinct !DISubprogram(name: "pte_osInit", scope: !3, file: !3, line: 70, type: !544, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !547)
!544 = !DISubroutineType(types: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !6, line: 60, baseType: !5)
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "result", scope: !543, file: !3, line: 72, type: !546)
!549 = !DILocalVariable(name: "ptd", scope: !543, file: !3, line: 73, type: !473)
!550 = !DILocalVariable(name: "crnt", scope: !543, file: !3, line: 74, type: !31)
!551 = !DILocation(line: 72, column: 15, scope: !543)
!552 = !DILocation(line: 77, column: 11, scope: !543)
!553 = !DILocation(line: 78, column: 13, scope: !554)
!554 = distinct !DILexicalBlock(scope: !543, file: !3, line: 78, column: 6)
!555 = !DILocation(line: 78, column: 6, scope: !543)
!556 = !DILocation(line: 79, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 78, column: 27)
!558 = !DILocation(line: 80, column: 3, scope: !557)
!559 = !DILocation(line: 84, column: 8, scope: !543)
!560 = !DILocation(line: 73, column: 21, scope: !543)
!561 = !DILocation(line: 85, column: 10, scope: !562)
!562 = distinct !DILexicalBlock(scope: !543, file: !3, line: 85, column: 6)
!563 = !DILocation(line: 85, column: 6, scope: !543)
!564 = !DILocation(line: 90, column: 13, scope: !543)
!565 = !DILocation(line: 90, column: 7, scope: !543)
!566 = !DILocation(line: 90, column: 11, scope: !543)
!567 = !{!568, !569, i64 24}
!568 = !{!"", !569, i64 0, !569, i64 8, !569, i64 16, !569, i64 24, !572, i64 32, !572, i64 56, !575, i64 80}
!569 = !{!"any pointer", !570, i64 0}
!570 = !{!"omnipotent char", !571, i64 0}
!571 = !{!"Simple C/C++ TBAA"}
!572 = !{!"uk_semaphore", !573, i64 0, !574, i64 8}
!573 = !{!"long", !570, i64 0}
!574 = !{!"uk_waitq", !569, i64 0, !569, i64 8}
!575 = !{!"int", !570, i64 0}
!576 = !DILocation(line: 91, column: 15, scope: !577)
!577 = distinct !DILexicalBlock(scope: !543, file: !3, line: 91, column: 6)
!578 = !DILocation(line: 91, column: 6, scope: !543)
!579 = !DILocation(line: 92, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !3, line: 91, column: 24)
!581 = !DILocation(line: 93, column: 3, scope: !580)
!582 = !DILocation(line: 95, column: 3, scope: !580)
!583 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !590)
!584 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !585, file: !585, line: 116, type: !586, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !588)
!585 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!586 = !DISubroutineType(types: !587)
!587 = !{!104}
!588 = !{!589}
!589 = !DILocalVariable(name: "sp", scope: !584, file: !585, line: 118, type: !104)
!590 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !597)
!591 = distinct !DISubprogram(name: "uk_thread_current", scope: !33, file: !33, line: 151, type: !592, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!31}
!594 = !{!595, !596}
!595 = !DILocalVariable(name: "current", scope: !591, file: !33, line: 153, type: !30)
!596 = !DILocalVariable(name: "sp", scope: !591, file: !33, line: 154, type: !104)
!597 = distinct !DILocation(line: 98, column: 2, scope: !543)
!598 = !{i32 483801}
!599 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !590)
!600 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !597)
!601 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !597)
!602 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !597)
!603 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !597)
!604 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !597)
!605 = !{!569, !569, i64 0}
!606 = !DILocation(line: 74, column: 20, scope: !543)
!607 = !DILocalVariable(name: "thread", arg: 1, scope: !608, file: !33, line: 145, type: !31)
!608 = distinct !DISubprogram(name: "uk_thread_set_private", scope: !33, file: !33, line: 145, type: !609, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !31, !29}
!611 = !{!607, !612}
!612 = !DILocalVariable(name: "prv", arg: 2, scope: !608, file: !33, line: 145, type: !29)
!613 = !DILocation(line: 145, column: 46, scope: !608, inlinedAt: !614)
!614 = distinct !DILocation(line: 100, column: 2, scope: !543)
!615 = !DILocation(line: 145, column: 60, scope: !608, inlinedAt: !614)
!616 = !DILocation(line: 147, column: 10, scope: !608, inlinedAt: !614)
!617 = !DILocation(line: 147, column: 14, scope: !608, inlinedAt: !614)
!618 = !{!619, !569, i64 96}
!619 = !{!"uk_thread", !569, i64 0, !569, i64 8, !569, i64 16, !569, i64 24, !620, i64 32, !575, i64 48, !573, i64 56, !621, i64 64, !574, i64 72, !569, i64 88, !569, i64 96, !575, i64 104, !569, i64 112, !569, i64 120}
!620 = !{!"", !569, i64 0, !569, i64 8}
!621 = !{!"_Bool", !570, i64 0}
!622 = !DILocation(line: 101, column: 7, scope: !543)
!623 = !DILocation(line: 101, column: 17, scope: !543)
!624 = !{!568, !569, i64 16}
!625 = !DILocation(line: 101, column: 2, scope: !543)
!626 = !DILocation(line: 0, scope: !543)
!627 = !DILocation(line: 104, column: 2, scope: !543)
!628 = !DILocation(line: 186, column: 42, scope: !496)
!629 = !DILocation(line: 188, column: 2, scope: !496)
!630 = !DILocation(line: 188, column: 10, scope: !496)
!631 = !DILocation(line: 189, column: 2, scope: !496)
!632 = !DILocation(line: 190, column: 2, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !497, line: 190, column: 2)
!634 = distinct !DILexicalBlock(scope: !496, file: !497, line: 190, column: 2)
!635 = !DILocation(line: 191, column: 2, scope: !496)
!636 = !DILocation(line: 192, column: 1, scope: !496)
!637 = distinct !DISubprogram(name: "pte_kill", scope: !3, file: !3, line: 113, type: !638, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !642)
!638 = !DISubroutineType(types: !639)
!639 = !{!69, !640, !69}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !641, line: 11, baseType: !31)
!641 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!642 = !{!643, !644}
!643 = !DILocalVariable(name: "threadId", arg: 1, scope: !637, file: !3, line: 113, type: !640)
!644 = !DILocalVariable(name: "sig", arg: 2, scope: !637, file: !3, line: 113, type: !69)
!645 = !DILocation(line: 113, column: 33, scope: !637)
!646 = !DILocation(line: 113, column: 47, scope: !637)
!647 = !DILocation(line: 115, column: 9, scope: !637)
!648 = !DILocation(line: 115, column: 2, scope: !637)
!649 = distinct !DISubprogram(name: "pte_osThreadCreate", scope: !3, file: !3, line: 155, type: !650, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{!546, !478, !69, !69, !29, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!653 = !{!654, !655, !656, !657, !658, !659}
!654 = !DILocalVariable(name: "entry_point", arg: 1, scope: !649, file: !3, line: 155, type: !478)
!655 = !DILocalVariable(name: "stack_size", arg: 2, scope: !649, file: !3, line: 156, type: !69)
!656 = !DILocalVariable(name: "initial_prio", arg: 3, scope: !649, file: !3, line: 156, type: !69)
!657 = !DILocalVariable(name: "argv", arg: 4, scope: !649, file: !3, line: 156, type: !29)
!658 = !DILocalVariable(name: "ph", arg: 5, scope: !649, file: !3, line: 157, type: !652)
!659 = !DILocalVariable(name: "ptd", scope: !649, file: !3, line: 159, type: !473)
!660 = !DILocation(line: 155, column: 56, scope: !649)
!661 = !DILocation(line: 156, column: 6, scope: !649)
!662 = !DILocation(line: 156, column: 22, scope: !649)
!663 = !DILocation(line: 156, column: 42, scope: !649)
!664 = !DILocation(line: 157, column: 22, scope: !649)
!665 = !DILocation(line: 162, column: 18, scope: !649)
!666 = !DILocalVariable(name: "a", arg: 1, scope: !667, file: !156, line: 157, type: !154)
!667 = distinct !DISubprogram(name: "uk_malloc", scope: !156, file: !156, line: 157, type: !161, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !668)
!668 = !{!666, !669}
!669 = !DILocalVariable(name: "size", arg: 2, scope: !667, file: !156, line: 157, type: !163)
!670 = !DILocation(line: 157, column: 48, scope: !667, inlinedAt: !671)
!671 = distinct !DILocation(line: 162, column: 8, scope: !649)
!672 = !DILocation(line: 157, column: 58, scope: !667, inlinedAt: !671)
!673 = !DILocation(line: 159, column: 6, scope: !674, inlinedAt: !671)
!674 = distinct !DILexicalBlock(scope: !667, file: !156, line: 159, column: 6)
!675 = !DILocation(line: 159, column: 6, scope: !667, inlinedAt: !671)
!676 = !{!"branch_weights", i32 1, i32 2000}
!677 = !DILocation(line: 160, column: 3, scope: !678, inlinedAt: !671)
!678 = distinct !DILexicalBlock(scope: !674, file: !156, line: 159, column: 20)
!679 = !DILocation(line: 160, column: 9, scope: !678, inlinedAt: !671)
!680 = !{!575, !575, i64 0}
!681 = !DILocation(line: 159, column: 21, scope: !649)
!682 = !DILocation(line: 163, column: 6, scope: !649)
!683 = !DILocalVariable(name: "a", arg: 1, scope: !684, file: !156, line: 151, type: !154)
!684 = distinct !DISubprogram(name: "uk_do_malloc", scope: !156, file: !156, line: 151, type: !161, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !685)
!685 = !{!683, !686}
!686 = !DILocalVariable(name: "size", arg: 2, scope: !684, file: !156, line: 151, type: !163)
!687 = !DILocation(line: 151, column: 51, scope: !684, inlinedAt: !688)
!688 = distinct !DILocation(line: 163, column: 9, scope: !667, inlinedAt: !671)
!689 = !DILocation(line: 151, column: 61, scope: !684, inlinedAt: !688)
!690 = !DILocation(line: 154, column: 12, scope: !684, inlinedAt: !688)
!691 = !DILocation(line: 154, column: 9, scope: !684, inlinedAt: !688)
!692 = !DILocation(line: 163, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !649, file: !3, line: 163, column: 6)
!694 = !DILocation(line: 166, column: 7, scope: !649)
!695 = !DILocation(line: 166, column: 19, scope: !649)
!696 = !{!568, !569, i64 0}
!697 = !DILocation(line: 167, column: 7, scope: !649)
!698 = !DILocation(line: 167, column: 12, scope: !649)
!699 = !{!568, !569, i64 8}
!700 = !DILocation(line: 170, column: 13, scope: !649)
!701 = !DILocation(line: 170, column: 7, scope: !649)
!702 = !DILocation(line: 170, column: 11, scope: !649)
!703 = !DILocation(line: 171, column: 15, scope: !704)
!704 = distinct !DILexicalBlock(scope: !649, file: !3, line: 171, column: 6)
!705 = !DILocation(line: 171, column: 6, scope: !649)
!706 = !DILocation(line: 172, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 171, column: 24)
!708 = !DILocation(line: 173, column: 3, scope: !707)
!709 = !DILocation(line: 174, column: 3, scope: !707)
!710 = !DILocation(line: 177, column: 26, scope: !649)
!711 = !DILocation(line: 177, column: 2, scope: !649)
!712 = !DILocation(line: 178, column: 26, scope: !649)
!713 = !DILocation(line: 178, column: 2, scope: !649)
!714 = !DILocation(line: 179, column: 7, scope: !649)
!715 = !DILocation(line: 179, column: 12, scope: !649)
!716 = !{!568, !575, i64 80}
!717 = !DILocalVariable(name: "name", arg: 1, scope: !718, file: !33, line: 101, type: !36)
!718 = distinct !DISubprogram(name: "uk_thread_create_attr", scope: !33, file: !33, line: 101, type: !719, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!31, !36, !92, !217, !29}
!721 = !{!717, !722, !723, !724}
!722 = !DILocalVariable(name: "attr", arg: 2, scope: !718, file: !33, line: 102, type: !92)
!723 = !DILocalVariable(name: "function", arg: 3, scope: !718, file: !33, line: 102, type: !217)
!724 = !DILocalVariable(name: "arg", arg: 4, scope: !718, file: !33, line: 102, type: !29)
!725 = !DILocation(line: 101, column: 67, scope: !718, inlinedAt: !726)
!726 = distinct !DILocation(line: 181, column: 2, scope: !649)
!727 = !DILocation(line: 102, column: 26, scope: !718, inlinedAt: !726)
!728 = !DILocation(line: 102, column: 38, scope: !718, inlinedAt: !726)
!729 = !DILocation(line: 102, column: 63, scope: !718, inlinedAt: !726)
!730 = !DILocation(line: 104, column: 32, scope: !718, inlinedAt: !726)
!731 = !DILocation(line: 104, column: 9, scope: !718, inlinedAt: !726)
!732 = !DILocation(line: 181, column: 2, scope: !649)
!733 = !DILocation(line: 183, column: 21, scope: !734)
!734 = distinct !DILexicalBlock(scope: !649, file: !3, line: 183, column: 6)
!735 = !DILocation(line: 183, column: 6, scope: !649)
!736 = !DILocation(line: 184, column: 28, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !3, line: 183, column: 30)
!738 = !DILocation(line: 184, column: 3, scope: !737)
!739 = !DILocation(line: 185, column: 3, scope: !737)
!740 = !DILocation(line: 186, column: 3, scope: !737)
!741 = !DILocation(line: 191, column: 2, scope: !649)
!742 = !DILocation(line: 194, column: 2, scope: !649)
!743 = !DILocation(line: 145, column: 46, scope: !608, inlinedAt: !744)
!744 = distinct !DILocation(line: 194, column: 2, scope: !649)
!745 = !DILocation(line: 145, column: 60, scope: !608, inlinedAt: !744)
!746 = !DILocation(line: 147, column: 10, scope: !608, inlinedAt: !744)
!747 = !DILocation(line: 147, column: 14, scope: !608, inlinedAt: !744)
!748 = !DILocation(line: 196, column: 13, scope: !649)
!749 = !DILocation(line: 196, column: 6, scope: !649)
!750 = !DILocation(line: 198, column: 2, scope: !649)
!751 = !DILocation(line: 0, scope: !693)
!752 = !DILocation(line: 199, column: 1, scope: !649)
!753 = distinct !DISubprogram(name: "uk_stub_thread_entry", scope: !3, file: !3, line: 142, type: !218, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !754)
!754 = !{!755, !756}
!755 = !DILocalVariable(name: "argv", arg: 1, scope: !753, file: !3, line: 142, type: !29)
!756 = !DILocalVariable(name: "ptd", scope: !753, file: !3, line: 147, type: !473)
!757 = !DILocation(line: 142, column: 40, scope: !753)
!758 = !DILocalVariable(name: "val", arg: 1, scope: !759, file: !760, line: 88, type: !48)
!759 = distinct !DISubprogram(name: "wrpkru", scope: !760, file: !760, line: 88, type: !761, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !763)
!760 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!761 = !DISubroutineType(types: !762)
!762 = !{null, !48}
!763 = !{!758}
!764 = !DILocation(line: 88, column: 67, scope: !759, inlinedAt: !765)
!765 = distinct !DILocation(line: 145, column: 2, scope: !753)
!766 = !DILocation(line: 91, column: 2, scope: !759, inlinedAt: !765)
!767 = !{i32 277494}
!768 = !DILocation(line: 147, column: 21, scope: !753)
!769 = !DILocation(line: 150, column: 26, scope: !753)
!770 = !DILocation(line: 150, column: 2, scope: !753)
!771 = !DILocation(line: 152, column: 7, scope: !753)
!772 = !DILocation(line: 152, column: 24, scope: !753)
!773 = !DILocation(line: 152, column: 2, scope: !753)
!774 = !DILocation(line: 153, column: 1, scope: !753)
!775 = distinct !DISubprogram(name: "pte_osThreadStart", scope: !3, file: !3, line: 201, type: !776, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{!546, !640}
!778 = !{!779, !780}
!779 = !DILocalVariable(name: "h", arg: 1, scope: !775, file: !3, line: 201, type: !640)
!780 = !DILocalVariable(name: "ptd", scope: !775, file: !3, line: 203, type: !473)
!781 = !DILocation(line: 201, column: 51, scope: !775)
!782 = !DILocalVariable(name: "h", arg: 1, scope: !783, file: !3, line: 126, type: !640)
!783 = distinct !DISubprogram(name: "handle_to_ptd", scope: !3, file: !3, line: 126, type: !784, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!473, !640}
!786 = !{!782, !787}
!787 = !DILocalVariable(name: "res", scope: !783, file: !3, line: 128, type: !473)
!788 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !789)
!789 = distinct !DILocation(line: 203, column: 27, scope: !775)
!790 = !DILocalVariable(name: "thread", arg: 1, scope: !791, file: !33, line: 139, type: !31)
!791 = distinct !DISubprogram(name: "uk_thread_get_private", scope: !33, file: !33, line: 139, type: !792, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!29, !31}
!794 = !{!790}
!795 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !796)
!796 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !789)
!797 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !796)
!798 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !789)
!799 = !DILocation(line: 203, column: 21, scope: !775)
!800 = !DILocalVariable(name: "s", arg: 1, scope: !801, file: !487, line: 194, type: !804)
!801 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !487, file: !487, line: 194, type: !802, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !805)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!805 = !{!800, !806, !807}
!806 = !DILocalVariable(name: "irqf", scope: !801, file: !487, line: 196, type: !104)
!807 = !DILocalVariable(name: "wq", scope: !801, file: !487, line: 209, type: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!810 = !DILocation(line: 194, column: 57, scope: !801, inlinedAt: !811)
!811 = distinct !DILocation(line: 206, column: 2, scope: !775)
!812 = !DILocation(line: 200, column: 9, scope: !801, inlinedAt: !811)
!813 = !DILocation(line: 196, column: 16, scope: !801, inlinedAt: !811)
!814 = !DILocation(line: 201, column: 7, scope: !801, inlinedAt: !811)
!815 = !DILocation(line: 201, column: 2, scope: !801, inlinedAt: !811)
!816 = !{!572, !573, i64 0}
!817 = !DILocation(line: 209, column: 28, scope: !801, inlinedAt: !811)
!818 = !DILocalVariable(name: "wq", arg: 1, scope: !819, file: !820, line: 99, type: !823)
!819 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !820, file: !820, line: 99, type: !821, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !824)
!820 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!821 = !DISubroutineType(types: !822)
!822 = !{null, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!824 = !{!818, !825, !826, !827}
!825 = !DILocalVariable(name: "flags", scope: !819, file: !820, line: 101, type: !104)
!826 = !DILocalVariable(name: "curr", scope: !819, file: !820, line: 102, type: !65)
!827 = !DILocalVariable(name: "tmp", scope: !819, file: !820, line: 102, type: !65)
!828 = !DILocation(line: 99, column: 40, scope: !819, inlinedAt: !829)
!829 = distinct !DILocation(line: 210, column: 2, scope: !801, inlinedAt: !811)
!830 = !DILocation(line: 104, column: 10, scope: !819, inlinedAt: !829)
!831 = !DILocation(line: 101, column: 16, scope: !819, inlinedAt: !829)
!832 = !DILocation(line: 105, column: 2, scope: !833, inlinedAt: !829)
!833 = distinct !DILexicalBlock(scope: !819, file: !820, line: 105, column: 2)
!834 = !{!574, !569, i64 0}
!835 = !DILocation(line: 102, column: 25, scope: !819, inlinedAt: !829)
!836 = !DILocation(line: 105, column: 2, scope: !837, inlinedAt: !829)
!837 = distinct !DILexicalBlock(scope: !833, file: !820, line: 105, column: 2)
!838 = !{!839, !569, i64 16}
!839 = !{!"uk_waitq_entry", !575, i64 0, !569, i64 8, !840, i64 16}
!840 = !{!"", !569, i64 0}
!841 = !DILocation(line: 102, column: 32, scope: !819, inlinedAt: !829)
!842 = !DILocation(line: 106, column: 24, scope: !837, inlinedAt: !829)
!843 = !{!839, !569, i64 8}
!844 = !DILocation(line: 106, column: 3, scope: !837, inlinedAt: !829)
!845 = distinct !{!845, !846, !847}
!846 = !DILocation(line: 105, column: 2, scope: !833)
!847 = !DILocation(line: 106, column: 30, scope: !833)
!848 = !DILocation(line: 107, column: 2, scope: !819, inlinedAt: !829)
!849 = !DILocation(line: 211, column: 2, scope: !801, inlinedAt: !811)
!850 = !DILocation(line: 208, column: 2, scope: !775)
!851 = distinct !DISubprogram(name: "pte_osThreadDelete", scope: !3, file: !3, line: 211, type: !776, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !852)
!852 = !{!853, !854}
!853 = !DILocalVariable(name: "h", arg: 1, scope: !851, file: !3, line: 211, type: !640)
!854 = !DILocalVariable(name: "ptd", scope: !851, file: !3, line: 213, type: !473)
!855 = !DILocation(line: 211, column: 52, scope: !851)
!856 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !857)
!857 = distinct !DILocation(line: 213, column: 27, scope: !851)
!858 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !859)
!859 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !857)
!860 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !859)
!861 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !857)
!862 = !DILocation(line: 213, column: 21, scope: !851)
!863 = !DILocation(line: 216, column: 27, scope: !851)
!864 = !DILocation(line: 216, column: 2, scope: !851)
!865 = !DILocation(line: 217, column: 7, scope: !851)
!866 = !DILocation(line: 217, column: 2, scope: !851)
!867 = !DILocation(line: 219, column: 2, scope: !851)
!868 = distinct !DISubprogram(name: "pte_osThreadExitAndDelete", scope: !3, file: !3, line: 222, type: !776, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !869)
!869 = !{!870}
!870 = !DILocalVariable(name: "h", arg: 1, scope: !868, file: !3, line: 222, type: !640)
!871 = !DILocation(line: 222, column: 59, scope: !868)
!872 = !DILocation(line: 224, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !3, line: 224, column: 6)
!874 = !{!619, !569, i64 88}
!875 = !DILocation(line: 224, column: 6, scope: !873)
!876 = !DILocation(line: 224, column: 6, scope: !868)
!877 = !DILocalVariable(name: "thread", arg: 1, scope: !878, file: !33, line: 117, type: !31)
!878 = distinct !DISubprogram(name: "uk_thread_kill", scope: !33, file: !33, line: 117, type: !879, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !31}
!881 = !{!877}
!882 = !DILocation(line: 117, column: 53, scope: !878, inlinedAt: !883)
!883 = distinct !DILocation(line: 225, column: 3, scope: !873)
!884 = !DILocation(line: 119, column: 2, scope: !878, inlinedAt: !883)
!885 = !DILocation(line: 225, column: 3, scope: !873)
!886 = !DILocation(line: 211, column: 52, scope: !851, inlinedAt: !887)
!887 = distinct !DILocation(line: 226, column: 2, scope: !868)
!888 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !889)
!889 = distinct !DILocation(line: 213, column: 27, scope: !851, inlinedAt: !887)
!890 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !891)
!891 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !889)
!892 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !891)
!893 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !889)
!894 = !DILocation(line: 213, column: 21, scope: !851, inlinedAt: !887)
!895 = !DILocation(line: 216, column: 27, scope: !851, inlinedAt: !887)
!896 = !DILocation(line: 216, column: 2, scope: !851, inlinedAt: !887)
!897 = !DILocation(line: 217, column: 7, scope: !851, inlinedAt: !887)
!898 = !DILocation(line: 217, column: 2, scope: !851, inlinedAt: !887)
!899 = !DILocation(line: 228, column: 2, scope: !868)
!900 = distinct !DISubprogram(name: "pte_osThreadExit", scope: !3, file: !3, line: 231, type: !416, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !901)
!901 = !{!902}
!902 = !DILocalVariable(name: "ptd", scope: !900, file: !3, line: 233, type: !473)
!903 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !904)
!904 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !905)
!905 = distinct !DILocation(line: 137, column: 2, scope: !906, inlinedAt: !916)
!906 = distinct !DISubprogram(name: "current_ptd", scope: !3, file: !3, line: 133, type: !907, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!473}
!909 = !{!910, !913}
!910 = !DILocalVariable(name: "thread", scope: !906, file: !3, line: 135, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!913 = !DILocalVariable(name: "ptd", scope: !906, file: !3, line: 136, type: !914)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !474)
!916 = distinct !DILocation(line: 233, column: 27, scope: !900)
!917 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !904)
!918 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !905)
!919 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !905)
!920 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !905)
!921 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !905)
!922 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !905)
!923 = !DILocation(line: 135, column: 29, scope: !906, inlinedAt: !916)
!924 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !925)
!925 = distinct !DILocation(line: 138, column: 2, scope: !906, inlinedAt: !916)
!926 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !925)
!927 = !DILocation(line: 136, column: 30, scope: !906, inlinedAt: !916)
!928 = !DILocation(line: 233, column: 21, scope: !900)
!929 = !DILocation(line: 235, column: 7, scope: !900)
!930 = !DILocation(line: 235, column: 12, scope: !900)
!931 = !DILocation(line: 236, column: 2, scope: !900)
!932 = distinct !DISubprogram(name: "pte_osThreadWaitForEnd", scope: !3, file: !3, line: 239, type: !776, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !933)
!933 = !{!934, !935, !936}
!934 = !DILocalVariable(name: "h", arg: 1, scope: !932, file: !3, line: 239, type: !640)
!935 = !DILocalVariable(name: "ptd", scope: !932, file: !3, line: 241, type: !473)
!936 = !DILocalVariable(name: "self_ptd", scope: !932, file: !3, line: 242, type: !473)
!937 = !DILocation(line: 239, column: 56, scope: !932)
!938 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !939)
!939 = distinct !DILocation(line: 241, column: 27, scope: !932)
!940 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !941)
!941 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !939)
!942 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !941)
!943 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !939)
!944 = !DILocation(line: 241, column: 21, scope: !932)
!945 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !946)
!946 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !947)
!947 = distinct !DILocation(line: 137, column: 2, scope: !906, inlinedAt: !948)
!948 = distinct !DILocation(line: 242, column: 32, scope: !932)
!949 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !946)
!950 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !947)
!951 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !947)
!952 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !947)
!953 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !947)
!954 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !947)
!955 = !DILocation(line: 135, column: 29, scope: !906, inlinedAt: !948)
!956 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !957)
!957 = distinct !DILocation(line: 138, column: 2, scope: !906, inlinedAt: !948)
!958 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !957)
!959 = !DILocation(line: 136, column: 30, scope: !906, inlinedAt: !948)
!960 = !DILocation(line: 242, column: 21, scope: !932)
!961 = !DILocation(line: 245, column: 12, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 245, column: 7)
!963 = distinct !DILexicalBlock(scope: !932, file: !3, line: 244, column: 12)
!964 = !DILocation(line: 245, column: 7, scope: !962)
!965 = !DILocation(line: 245, column: 7, scope: !963)
!966 = !DILocation(line: 246, column: 4, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 245, column: 18)
!968 = !DILocation(line: 247, column: 4, scope: !967)
!969 = !DILocation(line: 250, column: 16, scope: !970)
!970 = distinct !DILexicalBlock(scope: !963, file: !3, line: 250, column: 7)
!971 = !DILocation(line: 250, column: 40, scope: !970)
!972 = !{!568, !573, i64 56}
!973 = !DILocation(line: 250, column: 46, scope: !970)
!974 = !DILocation(line: 250, column: 7, scope: !963)
!975 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !976)
!976 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !977)
!977 = distinct !DILocation(line: 117, column: 30, scope: !978, inlinedAt: !982)
!978 = distinct !DISubprogram(name: "uk_sched_yield", scope: !80, file: !80, line: 114, type: !416, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !979)
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "s", scope: !978, file: !80, line: 116, type: !78)
!981 = !DILocalVariable(name: "current", scope: !978, file: !80, line: 117, type: !31)
!982 = distinct !DILocation(line: 254, column: 4, scope: !970)
!983 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !976)
!984 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !977)
!985 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !977)
!986 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !977)
!987 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !977)
!988 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !977)
!989 = !DILocation(line: 117, column: 20, scope: !978, inlinedAt: !982)
!990 = !DILocation(line: 119, column: 2, scope: !991, inlinedAt: !982)
!991 = distinct !DILexicalBlock(scope: !992, file: !80, line: 119, column: 2)
!992 = distinct !DILexicalBlock(scope: !978, file: !80, line: 119, column: 2)
!993 = !DILocation(line: 119, column: 2, scope: !992, inlinedAt: !982)
!994 = !DILocation(line: 119, column: 2, scope: !995, inlinedAt: !982)
!995 = distinct !DILexicalBlock(scope: !991, file: !80, line: 119, column: 2)
!996 = !DILocation(line: 121, column: 15, scope: !978, inlinedAt: !982)
!997 = !DILocation(line: 116, column: 19, scope: !978, inlinedAt: !982)
!998 = !DILocation(line: 122, column: 2, scope: !999, inlinedAt: !982)
!999 = distinct !DILexicalBlock(scope: !1000, file: !80, line: 122, column: 2)
!1000 = distinct !DILexicalBlock(scope: !978, file: !80, line: 122, column: 2)
!1001 = !DILocation(line: 122, column: 2, scope: !1000, inlinedAt: !982)
!1002 = !DILocation(line: 122, column: 2, scope: !1003, inlinedAt: !982)
!1003 = distinct !DILexicalBlock(scope: !999, file: !80, line: 122, column: 2)
!1004 = !DILocation(line: 123, column: 5, scope: !978, inlinedAt: !982)
!1005 = !{!1006, !569, i64 0}
!1006 = !{!"uk_sched", !569, i64 0, !569, i64 8, !569, i64 16, !569, i64 24, !569, i64 32, !569, i64 40, !569, i64 48, !569, i64 56, !569, i64 64, !621, i64 72, !619, i64 80, !1007, i64 208, !1008, i64 224, !569, i64 248, !569, i64 256, !569, i64 264}
!1007 = !{!"uk_thread_list", !569, i64 0, !569, i64 8}
!1008 = !{!"ukplat_ctx_callbacks", !569, i64 0, !569, i64 8, !569, i64 16}
!1009 = !DILocation(line: 123, column: 2, scope: !978, inlinedAt: !982)
!1010 = distinct !{!1010, !1011, !1012}
!1011 = !DILocation(line: 244, column: 2, scope: !932)
!1012 = !DILocation(line: 255, column: 2, scope: !932)
!1013 = !DILocation(line: 0, scope: !970)
!1014 = !DILocation(line: 256, column: 1, scope: !932)
!1015 = distinct !DISubprogram(name: "pte_osThreadCancel", scope: !3, file: !3, line: 258, type: !776, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1016)
!1016 = !{!1017, !1018}
!1017 = !DILocalVariable(name: "h", arg: 1, scope: !1015, file: !3, line: 258, type: !640)
!1018 = !DILocalVariable(name: "ptd", scope: !1015, file: !3, line: 260, type: !473)
!1019 = !DILocation(line: 258, column: 52, scope: !1015)
!1020 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 260, column: 27, scope: !1015)
!1022 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !1021)
!1024 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !1023)
!1025 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !1021)
!1026 = !DILocation(line: 260, column: 21, scope: !1015)
!1027 = !DILocation(line: 194, column: 57, scope: !801, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 262, column: 2, scope: !1015)
!1029 = !DILocation(line: 200, column: 9, scope: !801, inlinedAt: !1028)
!1030 = !DILocation(line: 196, column: 16, scope: !801, inlinedAt: !1028)
!1031 = !DILocation(line: 201, column: 7, scope: !801, inlinedAt: !1028)
!1032 = !DILocation(line: 201, column: 2, scope: !801, inlinedAt: !1028)
!1033 = !DILocation(line: 209, column: 28, scope: !801, inlinedAt: !1028)
!1034 = !DILocation(line: 99, column: 40, scope: !819, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 210, column: 2, scope: !801, inlinedAt: !1028)
!1036 = !DILocation(line: 104, column: 10, scope: !819, inlinedAt: !1035)
!1037 = !DILocation(line: 101, column: 16, scope: !819, inlinedAt: !1035)
!1038 = !DILocation(line: 105, column: 2, scope: !833, inlinedAt: !1035)
!1039 = !DILocation(line: 102, column: 25, scope: !819, inlinedAt: !1035)
!1040 = !DILocation(line: 105, column: 2, scope: !837, inlinedAt: !1035)
!1041 = !DILocation(line: 102, column: 32, scope: !819, inlinedAt: !1035)
!1042 = !DILocation(line: 106, column: 24, scope: !837, inlinedAt: !1035)
!1043 = !DILocation(line: 106, column: 3, scope: !837, inlinedAt: !1035)
!1044 = !DILocation(line: 107, column: 2, scope: !819, inlinedAt: !1035)
!1045 = !DILocation(line: 211, column: 2, scope: !801, inlinedAt: !1028)
!1046 = !DILocation(line: 264, column: 2, scope: !1015)
!1047 = distinct !DISubprogram(name: "pte_osThreadCheckCancel", scope: !3, file: !3, line: 267, type: !776, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1048)
!1048 = !{!1049, !1050}
!1049 = !DILocalVariable(name: "h", arg: 1, scope: !1047, file: !3, line: 267, type: !640)
!1050 = !DILocalVariable(name: "ptd", scope: !1047, file: !3, line: 269, type: !473)
!1051 = !DILocation(line: 267, column: 57, scope: !1047)
!1052 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 269, column: 27, scope: !1047)
!1054 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !1053)
!1056 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !1055)
!1057 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !1053)
!1058 = !DILocation(line: 269, column: 21, scope: !1047)
!1059 = !DILocation(line: 271, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 271, column: 6)
!1061 = !DILocation(line: 271, column: 10, scope: !1060)
!1062 = !DILocation(line: 271, column: 29, scope: !1060)
!1063 = !DILocation(line: 271, column: 35, scope: !1060)
!1064 = !DILocation(line: 271, column: 6, scope: !1047)
!1065 = !DILocation(line: 274, column: 2, scope: !1047)
!1066 = !DILocation(line: 0, scope: !1047)
!1067 = !DILocation(line: 275, column: 1, scope: !1047)
!1068 = distinct !DISubprogram(name: "pte_osThreadGetHandle", scope: !3, file: !3, line: 277, type: !1069, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!640}
!1071 = !{!1072}
!1072 = !DILocalVariable(name: "cur", scope: !1068, file: !3, line: 279, type: !31)
!1073 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 280, column: 2, scope: !1068)
!1076 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1074)
!1077 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1075)
!1078 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1075)
!1079 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1075)
!1080 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1075)
!1081 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1075)
!1082 = !DILocation(line: 279, column: 20, scope: !1068)
!1083 = !DILocation(line: 281, column: 2, scope: !1068)
!1084 = distinct !DISubprogram(name: "pte_osThreadGetPriority", scope: !3, file: !3, line: 284, type: !1085, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!69, !640}
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DILocalVariable(name: "h", arg: 1, scope: !1084, file: !3, line: 284, type: !640)
!1089 = !DILocalVariable(name: "ret", scope: !1084, file: !3, line: 286, type: !69)
!1090 = !DILocalVariable(name: "ptd", scope: !1084, file: !3, line: 287, type: !473)
!1091 = !DILocalVariable(name: "prio", scope: !1084, file: !3, line: 288, type: !100)
!1092 = !DILocation(line: 284, column: 48, scope: !1084)
!1093 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 287, column: 27, scope: !1084)
!1095 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !1094)
!1097 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !1096)
!1098 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !1094)
!1099 = !DILocation(line: 287, column: 21, scope: !1084)
!1100 = !DILocation(line: 288, column: 2, scope: !1084)
!1101 = !DILocation(line: 290, column: 2, scope: !1084)
!1102 = !DILocation(line: 288, column: 9, scope: !1084)
!1103 = !DILocation(line: 286, column: 6, scope: !1084)
!1104 = !DILocation(line: 293, column: 9, scope: !1084)
!1105 = !DILocation(line: 294, column: 1, scope: !1084)
!1106 = !DILocation(line: 293, column: 2, scope: !1084)
!1107 = distinct !DISubprogram(name: "pte_osThreadSetPriority", scope: !3, file: !3, line: 296, type: !1108, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!546, !640, !69}
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DILocalVariable(name: "h", arg: 1, scope: !1107, file: !3, line: 296, type: !640)
!1112 = !DILocalVariable(name: "new_prio", arg: 2, scope: !1107, file: !3, line: 296, type: !69)
!1113 = !DILocalVariable(name: "ret", scope: !1107, file: !3, line: 298, type: !69)
!1114 = !DILocalVariable(name: "ptd", scope: !1107, file: !3, line: 299, type: !473)
!1115 = !DILocation(line: 296, column: 57, scope: !1107)
!1116 = !DILocation(line: 296, column: 64, scope: !1107)
!1117 = !DILocation(line: 126, column: 60, scope: !783, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 299, column: 27, scope: !1107)
!1119 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 129, column: 2, scope: !783, inlinedAt: !1118)
!1121 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !1120)
!1122 = !DILocation(line: 128, column: 21, scope: !783, inlinedAt: !1118)
!1123 = !DILocation(line: 299, column: 21, scope: !1107)
!1124 = !DILocation(line: 301, column: 2, scope: !1107)
!1125 = !DILocation(line: 298, column: 6, scope: !1107)
!1126 = !DILocation(line: 304, column: 9, scope: !1107)
!1127 = !DILocation(line: 304, column: 2, scope: !1107)
!1128 = distinct !DISubprogram(name: "pte_osThreadSleep", scope: !3, file: !3, line: 307, type: !1129, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !7}
!1131 = !{!1132, !1133}
!1132 = !DILocalVariable(name: "msecs", arg: 1, scope: !1128, file: !3, line: 307, type: !7)
!1133 = !DILocalVariable(name: "nsec", scope: !1128, file: !3, line: 309, type: !102)
!1134 = !DILocation(line: 307, column: 37, scope: !1128)
!1135 = !DILocation(line: 309, column: 16, scope: !1128)
!1136 = !DILocation(line: 309, column: 9, scope: !1128)
!1137 = !DILocation(line: 311, column: 2, scope: !1128)
!1138 = !DILocation(line: 312, column: 1, scope: !1128)
!1139 = distinct !DISubprogram(name: "pte_osThreadGetMinPriority", scope: !3, file: !3, line: 314, type: !533, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1140 = !DILocation(line: 316, column: 2, scope: !1139)
!1141 = distinct !DISubprogram(name: "pte_osThreadGetMaxPriority", scope: !3, file: !3, line: 319, type: !533, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1142 = !DILocation(line: 321, column: 2, scope: !1141)
!1143 = distinct !DISubprogram(name: "pte_osThreadGetDefaultPriority", scope: !3, file: !3, line: 324, type: !533, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1144 = !DILocation(line: 326, column: 2, scope: !1143)
!1145 = distinct !DISubprogram(name: "pte_osMutexCreate", scope: !3, file: !3, line: 335, type: !1146, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1157)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!546, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osMutexHandle", file: !641, line: 13, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !1152, line: 58, size: 256, elements: !1153)
!1152 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1151, file: !1152, line: 59, baseType: !69, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1151, file: !1152, line: 60, baseType: !31, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1151, file: !1152, line: 61, baseType: !61, size: 128, offset: 128)
!1157 = !{!1158, !1159}
!1158 = !DILocalVariable(name: "ph", arg: 1, scope: !1145, file: !3, line: 335, type: !1148)
!1159 = !DILocalVariable(name: "m", scope: !1145, file: !3, line: 337, type: !1150)
!1160 = !DILocation(line: 335, column: 51, scope: !1145)
!1161 = !DILocation(line: 339, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 339, column: 6)
!1163 = !DILocation(line: 339, column: 6, scope: !1145)
!1164 = !DILocation(line: 342, column: 16, scope: !1145)
!1165 = !DILocation(line: 157, column: 48, scope: !667, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 342, column: 6, scope: !1145)
!1167 = !DILocation(line: 157, column: 58, scope: !667, inlinedAt: !1166)
!1168 = !DILocation(line: 159, column: 6, scope: !674, inlinedAt: !1166)
!1169 = !DILocation(line: 159, column: 6, scope: !667, inlinedAt: !1166)
!1170 = !DILocation(line: 160, column: 3, scope: !678, inlinedAt: !1166)
!1171 = !DILocation(line: 160, column: 9, scope: !678, inlinedAt: !1166)
!1172 = !DILocation(line: 343, column: 6, scope: !1145)
!1173 = !DILocation(line: 151, column: 51, scope: !684, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 163, column: 9, scope: !667, inlinedAt: !1166)
!1175 = !DILocation(line: 151, column: 61, scope: !684, inlinedAt: !1174)
!1176 = !DILocation(line: 154, column: 12, scope: !684, inlinedAt: !1174)
!1177 = !DILocation(line: 154, column: 9, scope: !684, inlinedAt: !1174)
!1178 = !DILocation(line: 343, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 343, column: 6)
!1180 = !DILocation(line: 342, column: 6, scope: !1145)
!1181 = !DILocation(line: 337, column: 19, scope: !1145)
!1182 = !DILocation(line: 346, column: 2, scope: !1145)
!1183 = !DILocation(line: 348, column: 6, scope: !1145)
!1184 = !DILocation(line: 350, column: 2, scope: !1145)
!1185 = !DILocation(line: 0, scope: !1162)
!1186 = !DILocation(line: 351, column: 1, scope: !1145)
!1187 = distinct !DISubprogram(name: "pte_osMutexDelete", scope: !3, file: !3, line: 353, type: !1188, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!546, !1149}
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "h", arg: 1, scope: !1187, file: !3, line: 353, type: !1149)
!1192 = !DILocation(line: 353, column: 50, scope: !1187)
!1193 = !DILocation(line: 355, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 355, column: 6)
!1195 = !DILocation(line: 355, column: 6, scope: !1187)
!1196 = !DILocation(line: 358, column: 7, scope: !1187)
!1197 = !DILocation(line: 358, column: 2, scope: !1187)
!1198 = !DILocation(line: 360, column: 2, scope: !1187)
!1199 = !DILocation(line: 0, scope: !1194)
!1200 = !DILocation(line: 361, column: 1, scope: !1187)
!1201 = distinct !DISubprogram(name: "pte_osMutexLock", scope: !3, file: !3, line: 363, type: !1188, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1202)
!1202 = !{!1203}
!1203 = !DILocalVariable(name: "h", arg: 1, scope: !1201, file: !3, line: 363, type: !1149)
!1204 = !DILocalVariable(name: "lock_count", scope: !1205, file: !1152, line: 78, type: !1222)
!1205 = distinct !DISubprogram(name: "uk_mutex_lock", scope: !1152, file: !1152, line: 69, type: !1206, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1150}
!1208 = !{!1209, !1210, !1211, !1212, !1204, !1213, !1214, !1219, !1220, !1221}
!1209 = !DILocalVariable(name: "m", arg: 1, scope: !1205, file: !1152, line: 69, type: !1150)
!1210 = !DILocalVariable(name: "current", scope: !1205, file: !1152, line: 71, type: !31)
!1211 = !DILocalVariable(name: "irqf", scope: !1205, file: !1152, line: 72, type: !104)
!1212 = !DILocalVariable(name: "wq", scope: !1205, file: !1152, line: 77, type: !808)
!1213 = !DILocalVariable(name: "owner", scope: !1205, file: !1152, line: 79, type: !911)
!1214 = !DILocalVariable(name: "__current", scope: !1215, file: !1152, line: 87, type: !31)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !1152, line: 86, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1152, line: 85, column: 11)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1152, line: 85, column: 2)
!1218 = distinct !DILexicalBlock(scope: !1205, file: !1152, line: 85, column: 2)
!1219 = !DILocalVariable(name: "flags", scope: !1215, file: !1152, line: 88, type: !104)
!1220 = !DILocalVariable(name: "__cur", scope: !1215, file: !1152, line: 89, type: !31)
!1221 = !DILocalVariable(name: "__wait", scope: !1215, file: !1152, line: 89, type: !65)
!1222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!1223 = !DILocation(line: 78, column: 15, scope: !1205, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 368, column: 2, scope: !1201)
!1225 = !DILocation(line: 363, column: 48, scope: !1201)
!1226 = !DILocation(line: 365, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 365, column: 6)
!1228 = !DILocation(line: 365, column: 6, scope: !1201)
!1229 = !DILocation(line: 69, column: 51, scope: !1205, inlinedAt: !1224)
!1230 = !DILocation(line: 77, column: 28, scope: !1205, inlinedAt: !1224)
!1231 = !DILocation(line: 78, column: 2, scope: !1205, inlinedAt: !1224)
!1232 = !DILocation(line: 78, column: 31, scope: !1205, inlinedAt: !1224)
!1233 = !{!1234, !575, i64 0}
!1234 = !{!"uk_mutex", !575, i64 0, !569, i64 8, !574, i64 16}
!1235 = !DILocation(line: 79, column: 40, scope: !1205, inlinedAt: !1224)
!1236 = !{!1234, !569, i64 8}
!1237 = !DILocation(line: 79, column: 29, scope: !1205, inlinedAt: !1224)
!1238 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 83, column: 2, scope: !1205, inlinedAt: !1224)
!1241 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1239)
!1242 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1240)
!1243 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1240)
!1244 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1240)
!1245 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1240)
!1246 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1240)
!1247 = !DILocation(line: 71, column: 20, scope: !1205, inlinedAt: !1224)
!1248 = !DILocation(line: 85, column: 2, scope: !1205, inlinedAt: !1224)
!1249 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 89, column: 3, scope: !1215, inlinedAt: !1224)
!1252 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1250)
!1253 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1251)
!1254 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1251)
!1255 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 49, column: 21, scope: !1257, inlinedAt: !1261)
!1257 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1258, file: !1258, line: 47, type: !533, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1259)
!1258 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "sp", scope: !1257, file: !1258, line: 49, type: !104)
!1261 = distinct !DILocation(line: 89, column: 3, scope: !1215, inlinedAt: !1224)
!1262 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1256)
!1263 = !DILocation(line: 49, column: 16, scope: !1257, inlinedAt: !1261)
!1264 = !DILocation(line: 50, column: 19, scope: !1257, inlinedAt: !1261)
!1265 = !DILocation(line: 50, column: 11, scope: !1257, inlinedAt: !1261)
!1266 = !DILocation(line: 50, column: 9, scope: !1257, inlinedAt: !1261)
!1267 = !DILocation(line: 89, column: 3, scope: !1215, inlinedAt: !1224)
!1268 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 89, column: 3, scope: !1215, inlinedAt: !1224)
!1271 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1269)
!1272 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1270)
!1273 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1270)
!1274 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1270)
!1275 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1270)
!1276 = !DILocation(line: 90, column: 7, scope: !1277, inlinedAt: !1224)
!1277 = distinct !DILexicalBlock(scope: !1215, file: !1152, line: 90, column: 7)
!1278 = !DILocation(line: 90, column: 18, scope: !1277, inlinedAt: !1224)
!1279 = !DILocation(line: 90, column: 23, scope: !1277, inlinedAt: !1224)
!1280 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 93, column: 16, scope: !1283, inlinedAt: !1224)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1152, line: 92, column: 12)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1152, line: 92, column: 3)
!1285 = distinct !DILexicalBlock(scope: !1215, file: !1152, line: 92, column: 3)
!1286 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1281)
!1287 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1282)
!1288 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1282)
!1289 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1282)
!1290 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1282)
!1291 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1282)
!1292 = !DILocation(line: 87, column: 21, scope: !1215, inlinedAt: !1224)
!1293 = !DILocation(line: 95, column: 12, scope: !1283, inlinedAt: !1224)
!1294 = !DILocation(line: 88, column: 17, scope: !1215, inlinedAt: !1224)
!1295 = !DILocalVariable(name: "wq", arg: 1, scope: !1296, file: !820, line: 58, type: !823)
!1296 = distinct !DISubprogram(name: "uk_waitq_add", scope: !820, file: !820, line: 58, type: !1297, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !823, !65}
!1299 = !{!1295, !1300}
!1300 = !DILocalVariable(name: "entry", arg: 2, scope: !1296, file: !820, line: 59, type: !65)
!1301 = !DILocation(line: 58, column: 36, scope: !1296, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 96, column: 4, scope: !1283, inlinedAt: !1224)
!1303 = !DILocation(line: 59, column: 26, scope: !1296, inlinedAt: !1302)
!1304 = !DILocation(line: 61, column: 14, scope: !1305, inlinedAt: !1302)
!1305 = distinct !DILexicalBlock(scope: !1296, file: !820, line: 61, column: 6)
!1306 = !{!839, !575, i64 0}
!1307 = !DILocation(line: 61, column: 7, scope: !1305, inlinedAt: !1302)
!1308 = !DILocation(line: 61, column: 6, scope: !1296, inlinedAt: !1302)
!1309 = !DILocation(line: 62, column: 3, scope: !1310, inlinedAt: !1302)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !820, line: 62, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1305, file: !820, line: 61, column: 23)
!1312 = !{!574, !569, i64 8}
!1313 = !DILocation(line: 63, column: 18, scope: !1311, inlinedAt: !1302)
!1314 = !DILocation(line: 64, column: 2, scope: !1311, inlinedAt: !1302)
!1315 = !DILocalVariable(name: "thread", arg: 1, scope: !1316, file: !33, line: 122, type: !31)
!1316 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !33, file: !33, line: 122, type: !1317, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !31, !53}
!1319 = !{!1315, !1320}
!1320 = !DILocalVariable(name: "time", arg: 2, scope: !1316, file: !33, line: 122, type: !53)
!1321 = !DILocation(line: 122, column: 64, scope: !1316, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 97, column: 4, scope: !1283, inlinedAt: !1224)
!1323 = !DILocation(line: 122, column: 80, scope: !1316, inlinedAt: !1322)
!1324 = !DILocation(line: 124, column: 10, scope: !1316, inlinedAt: !1322)
!1325 = !DILocation(line: 124, column: 22, scope: !1316, inlinedAt: !1322)
!1326 = !{!619, !573, i64 56}
!1327 = !DILocalVariable(name: "thread", arg: 1, scope: !1328, file: !33, line: 183, type: !31)
!1328 = distinct !DISubprogram(name: "clear_runnable", scope: !33, file: !33, line: 183, type: !879, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1329)
!1329 = !{!1327}
!1330 = !DILocation(line: 183, column: 53, scope: !1328, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 99, column: 4, scope: !1283, inlinedAt: !1224)
!1332 = !DILocation(line: 185, column: 10, scope: !1328, inlinedAt: !1331)
!1333 = !DILocation(line: 185, column: 16, scope: !1328, inlinedAt: !1331)
!1334 = !{!619, !575, i64 48}
!1335 = !DILocalVariable(name: "t", arg: 1, scope: !1336, file: !80, line: 151, type: !31)
!1336 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !80, file: !80, line: 151, type: !879, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1337)
!1337 = !{!1335}
!1338 = !DILocation(line: 151, column: 62, scope: !1336, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 100, column: 4, scope: !1283, inlinedAt: !1224)
!1340 = !DILocation(line: 153, column: 2, scope: !1341, inlinedAt: !1339)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !80, line: 153, column: 2)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !80, line: 153, column: 2)
!1343 = !DILocation(line: 153, column: 2, scope: !1342, inlinedAt: !1339)
!1344 = !DILocation(line: 153, column: 2, scope: !1345, inlinedAt: !1339)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !80, line: 153, column: 2)
!1346 = !DILocation(line: 154, column: 6, scope: !1336, inlinedAt: !1339)
!1347 = !DILocation(line: 154, column: 14, scope: !1336, inlinedAt: !1339)
!1348 = !{!1006, !569, i64 24}
!1349 = !DILocation(line: 154, column: 2, scope: !1336, inlinedAt: !1339)
!1350 = !DILocation(line: 102, column: 4, scope: !1283, inlinedAt: !1224)
!1351 = !DILocation(line: 103, column: 8, scope: !1352, inlinedAt: !1224)
!1352 = distinct !DILexicalBlock(scope: !1283, file: !1152, line: 103, column: 8)
!1353 = !DILocation(line: 103, column: 19, scope: !1352, inlinedAt: !1224)
!1354 = !DILocation(line: 103, column: 24, scope: !1352, inlinedAt: !1224)
!1355 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 117, column: 30, scope: !978, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 105, column: 4, scope: !1283, inlinedAt: !1224)
!1359 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1356)
!1360 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1357)
!1361 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1357)
!1362 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1357)
!1363 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1357)
!1364 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1357)
!1365 = !DILocation(line: 117, column: 20, scope: !978, inlinedAt: !1358)
!1366 = !DILocation(line: 119, column: 2, scope: !991, inlinedAt: !1358)
!1367 = !DILocation(line: 119, column: 2, scope: !992, inlinedAt: !1358)
!1368 = !DILocation(line: 119, column: 2, scope: !995, inlinedAt: !1358)
!1369 = !DILocation(line: 121, column: 15, scope: !978, inlinedAt: !1358)
!1370 = !DILocation(line: 116, column: 19, scope: !978, inlinedAt: !1358)
!1371 = !DILocation(line: 122, column: 2, scope: !999, inlinedAt: !1358)
!1372 = !DILocation(line: 122, column: 2, scope: !1000, inlinedAt: !1358)
!1373 = !DILocation(line: 122, column: 2, scope: !1003, inlinedAt: !1358)
!1374 = !DILocation(line: 123, column: 5, scope: !978, inlinedAt: !1358)
!1375 = !DILocation(line: 123, column: 2, scope: !978, inlinedAt: !1358)
!1376 = !DILocation(line: 92, column: 3, scope: !1284, inlinedAt: !1224)
!1377 = distinct !{!1377, !1378, !1379}
!1378 = !DILocation(line: 92, column: 3, scope: !1285)
!1379 = !DILocation(line: 106, column: 3, scope: !1285)
!1380 = !DILocation(line: 107, column: 11, scope: !1215, inlinedAt: !1224)
!1381 = !DILocation(line: 109, column: 3, scope: !1215, inlinedAt: !1224)
!1382 = !DILocalVariable(name: "wq", arg: 1, scope: !1383, file: !820, line: 68, type: !823)
!1383 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !820, file: !820, line: 68, type: !1297, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1384)
!1384 = !{!1382, !1385, !1386}
!1385 = !DILocalVariable(name: "entry", arg: 2, scope: !1383, file: !820, line: 69, type: !65)
!1386 = !DILocalVariable(name: "curelm", scope: !1387, file: !820, line: 72, type: !65)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !820, line: 72, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !820, line: 72, column: 3)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !820, line: 72, column: 3)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !820, line: 71, column: 22)
!1391 = distinct !DILexicalBlock(scope: !1383, file: !820, line: 71, column: 6)
!1392 = !DILocation(line: 68, column: 39, scope: !1383, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 110, column: 3, scope: !1215, inlinedAt: !1224)
!1394 = !DILocation(line: 69, column: 26, scope: !1383, inlinedAt: !1393)
!1395 = !DILocation(line: 71, column: 13, scope: !1391, inlinedAt: !1393)
!1396 = !DILocation(line: 71, column: 6, scope: !1391, inlinedAt: !1393)
!1397 = !DILocation(line: 71, column: 6, scope: !1383, inlinedAt: !1393)
!1398 = !DILocation(line: 72, column: 3, scope: !1388, inlinedAt: !1393)
!1399 = !DILocation(line: 72, column: 3, scope: !1389, inlinedAt: !1393)
!1400 = !DILocation(line: 72, column: 3, scope: !1401, inlinedAt: !1393)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !820, line: 72, column: 3)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !820, line: 72, column: 3)
!1403 = distinct !DILexicalBlock(scope: !1388, file: !820, line: 72, column: 3)
!1404 = !DILocation(line: 72, column: 3, scope: !1402, inlinedAt: !1393)
!1405 = !DILocation(line: 72, column: 3, scope: !1387, inlinedAt: !1393)
!1406 = distinct !{!1406, !1407, !1407}
!1407 = !DILocation(line: 72, column: 3, scope: !1387)
!1408 = !DILocation(line: 72, column: 3, scope: !1409, inlinedAt: !1393)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !820, line: 72, column: 3)
!1410 = distinct !DILexicalBlock(scope: !1387, file: !820, line: 72, column: 3)
!1411 = !DILocation(line: 72, column: 3, scope: !1410, inlinedAt: !1393)
!1412 = !DILocation(line: 73, column: 18, scope: !1390, inlinedAt: !1393)
!1413 = !DILocation(line: 74, column: 2, scope: !1390, inlinedAt: !1393)
!1414 = !DILocation(line: 111, column: 3, scope: !1215, inlinedAt: !1224)
!1415 = !DILocation(line: 112, column: 2, scope: !1216, inlinedAt: !1224)
!1416 = !DILocation(line: 114, column: 9, scope: !1216, inlinedAt: !1224)
!1417 = !DILocation(line: 72, column: 16, scope: !1205, inlinedAt: !1224)
!1418 = !DILocation(line: 115, column: 9, scope: !1419, inlinedAt: !1224)
!1419 = distinct !DILexicalBlock(scope: !1216, file: !1152, line: 115, column: 6)
!1420 = !DILocation(line: 115, column: 20, scope: !1419, inlinedAt: !1224)
!1421 = !DILocation(line: 115, column: 25, scope: !1419, inlinedAt: !1224)
!1422 = !DILocation(line: 115, column: 31, scope: !1419, inlinedAt: !1224)
!1423 = !DILocation(line: 115, column: 37, scope: !1419, inlinedAt: !1224)
!1424 = !DILocation(line: 115, column: 6, scope: !1216, inlinedAt: !1224)
!1425 = !DILocation(line: 117, column: 2, scope: !1216, inlinedAt: !1224)
!1426 = !DILocation(line: 85, column: 2, scope: !1217, inlinedAt: !1224)
!1427 = distinct !{!1427, !1428, !1429}
!1428 = !DILocation(line: 85, column: 2, scope: !1218)
!1429 = !DILocation(line: 118, column: 1, scope: !1218)
!1430 = !DILocation(line: 119, column: 15, scope: !1205, inlinedAt: !1224)
!1431 = !DILocation(line: 120, column: 11, scope: !1205, inlinedAt: !1224)
!1432 = !DILocation(line: 121, column: 2, scope: !1205, inlinedAt: !1224)
!1433 = !DILocation(line: 122, column: 1, scope: !1205, inlinedAt: !1224)
!1434 = !DILocation(line: 370, column: 2, scope: !1201)
!1435 = !DILocation(line: 0, scope: !1227)
!1436 = !DILocation(line: 371, column: 1, scope: !1201)
!1437 = distinct !DISubprogram(name: "pte_osMutexTimedLock", scope: !3, file: !3, line: 373, type: !1438, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!546, !1149, !7}
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "h", arg: 1, scope: !1437, file: !3, line: 373, type: !1149)
!1442 = !DILocalVariable(name: "timeoutMsecs", arg: 2, scope: !1437, file: !3, line: 374, type: !7)
!1443 = !DILocation(line: 373, column: 53, scope: !1437)
!1444 = !DILocation(line: 374, column: 15, scope: !1437)
!1445 = !DILocation(line: 376, column: 2, scope: !1437)
!1446 = distinct !DISubprogram(name: "pte_osMutexUnlock", scope: !3, file: !3, line: 380, type: !1188, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1447)
!1447 = !{!1448}
!1448 = !DILocalVariable(name: "h", arg: 1, scope: !1446, file: !3, line: 380, type: !1149)
!1449 = !DILocation(line: 380, column: 50, scope: !1446)
!1450 = !DILocation(line: 382, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 382, column: 6)
!1452 = !DILocation(line: 382, column: 6, scope: !1446)
!1453 = !DILocalVariable(name: "m", arg: 1, scope: !1454, file: !1152, line: 149, type: !1150)
!1454 = distinct !DISubprogram(name: "uk_mutex_unlock", scope: !1152, file: !1152, line: 149, type: !1206, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1455)
!1455 = !{!1453, !1456, !1457}
!1456 = !DILocalVariable(name: "irqf", scope: !1454, file: !1152, line: 151, type: !104)
!1457 = !DILocalVariable(name: "wq", scope: !1454, file: !1152, line: 153, type: !808)
!1458 = !DILocation(line: 149, column: 53, scope: !1454, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 385, column: 2, scope: !1446)
!1460 = !DILocation(line: 153, column: 28, scope: !1454, inlinedAt: !1459)
!1461 = !DILocation(line: 157, column: 9, scope: !1454, inlinedAt: !1459)
!1462 = !DILocation(line: 151, column: 16, scope: !1454, inlinedAt: !1459)
!1463 = !DILocation(line: 158, column: 2, scope: !1464, inlinedAt: !1459)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !1152, line: 158, column: 2)
!1465 = distinct !DILexicalBlock(scope: !1454, file: !1152, line: 158, column: 2)
!1466 = !DILocation(line: 158, column: 2, scope: !1465, inlinedAt: !1459)
!1467 = !DILocation(line: 158, column: 2, scope: !1468, inlinedAt: !1459)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !1152, line: 158, column: 2)
!1469 = !DILocation(line: 159, column: 6, scope: !1470, inlinedAt: !1459)
!1470 = distinct !DILexicalBlock(scope: !1454, file: !1152, line: 159, column: 6)
!1471 = !DILocation(line: 159, column: 22, scope: !1470, inlinedAt: !1459)
!1472 = !DILocation(line: 159, column: 6, scope: !1454, inlinedAt: !1459)
!1473 = !DILocation(line: 160, column: 6, scope: !1474, inlinedAt: !1459)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !1152, line: 159, column: 28)
!1475 = !DILocation(line: 160, column: 12, scope: !1474, inlinedAt: !1459)
!1476 = !DILocation(line: 99, column: 40, scope: !819, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 161, column: 3, scope: !1474, inlinedAt: !1459)
!1478 = !DILocation(line: 104, column: 10, scope: !819, inlinedAt: !1477)
!1479 = !DILocation(line: 101, column: 16, scope: !819, inlinedAt: !1477)
!1480 = !DILocation(line: 105, column: 2, scope: !833, inlinedAt: !1477)
!1481 = !DILocation(line: 102, column: 25, scope: !819, inlinedAt: !1477)
!1482 = !DILocation(line: 105, column: 2, scope: !837, inlinedAt: !1477)
!1483 = !DILocation(line: 102, column: 32, scope: !819, inlinedAt: !1477)
!1484 = !DILocation(line: 106, column: 24, scope: !837, inlinedAt: !1477)
!1485 = !DILocation(line: 106, column: 3, scope: !837, inlinedAt: !1477)
!1486 = !DILocation(line: 107, column: 2, scope: !819, inlinedAt: !1477)
!1487 = !DILocation(line: 162, column: 2, scope: !1474, inlinedAt: !1459)
!1488 = !DILocation(line: 163, column: 2, scope: !1454, inlinedAt: !1459)
!1489 = !DILocation(line: 387, column: 2, scope: !1446)
!1490 = !DILocation(line: 0, scope: !1451)
!1491 = !DILocation(line: 388, column: 1, scope: !1446)
!1492 = distinct !DISubprogram(name: "pte_osSemaphoreCreate", scope: !3, file: !3, line: 396, type: !1493, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1497)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!546, !69, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !641, line: 12, baseType: !804)
!1497 = !{!1498, !1499, !1500}
!1498 = !DILocalVariable(name: "init_value", arg: 1, scope: !1492, file: !3, line: 396, type: !69)
!1499 = !DILocalVariable(name: "ph", arg: 2, scope: !1492, file: !3, line: 396, type: !1495)
!1500 = !DILocalVariable(name: "s", scope: !1492, file: !3, line: 398, type: !804)
!1501 = !DILocation(line: 396, column: 40, scope: !1492)
!1502 = !DILocation(line: 396, column: 75, scope: !1492)
!1503 = !DILocation(line: 400, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 400, column: 6)
!1505 = !DILocation(line: 400, column: 6, scope: !1492)
!1506 = !DILocation(line: 403, column: 16, scope: !1492)
!1507 = !DILocation(line: 157, column: 48, scope: !667, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 403, column: 6, scope: !1492)
!1509 = !DILocation(line: 157, column: 58, scope: !667, inlinedAt: !1508)
!1510 = !DILocation(line: 159, column: 6, scope: !674, inlinedAt: !1508)
!1511 = !DILocation(line: 159, column: 6, scope: !667, inlinedAt: !1508)
!1512 = !DILocation(line: 160, column: 3, scope: !678, inlinedAt: !1508)
!1513 = !DILocation(line: 160, column: 9, scope: !678, inlinedAt: !1508)
!1514 = !DILocation(line: 404, column: 6, scope: !1492)
!1515 = !DILocation(line: 151, column: 51, scope: !684, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 163, column: 9, scope: !667, inlinedAt: !1508)
!1517 = !DILocation(line: 151, column: 61, scope: !684, inlinedAt: !1516)
!1518 = !DILocation(line: 154, column: 12, scope: !684, inlinedAt: !1516)
!1519 = !DILocation(line: 154, column: 9, scope: !684, inlinedAt: !1516)
!1520 = !DILocation(line: 404, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 404, column: 6)
!1522 = !DILocation(line: 403, column: 6, scope: !1492)
!1523 = !DILocation(line: 398, column: 23, scope: !1492)
!1524 = !DILocation(line: 407, column: 23, scope: !1492)
!1525 = !DILocation(line: 407, column: 2, scope: !1492)
!1526 = !DILocation(line: 409, column: 6, scope: !1492)
!1527 = !DILocation(line: 411, column: 2, scope: !1492)
!1528 = !DILocation(line: 0, scope: !1504)
!1529 = !DILocation(line: 412, column: 1, scope: !1492)
!1530 = distinct !DISubprogram(name: "pte_osSemaphoreDelete", scope: !3, file: !3, line: 414, type: !1531, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!546, !1496}
!1533 = !{!1534}
!1534 = !DILocalVariable(name: "h", arg: 1, scope: !1530, file: !3, line: 414, type: !1496)
!1535 = !DILocation(line: 414, column: 58, scope: !1530)
!1536 = !DILocation(line: 416, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 416, column: 6)
!1538 = !DILocation(line: 416, column: 6, scope: !1530)
!1539 = !DILocation(line: 419, column: 10, scope: !1530)
!1540 = !DILocalVariable(name: "a", arg: 1, scope: !1541, file: !156, line: 237, type: !154)
!1541 = distinct !DISubprogram(name: "uk_free", scope: !156, file: !156, line: 237, type: !188, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1542)
!1542 = !{!1540, !1543}
!1543 = !DILocalVariable(name: "ptr", arg: 2, scope: !1541, file: !156, line: 237, type: !29)
!1544 = !DILocation(line: 237, column: 45, scope: !1541, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 419, column: 2, scope: !1530)
!1546 = !DILocalVariable(name: "a", arg: 1, scope: !1547, file: !156, line: 231, type: !154)
!1547 = distinct !DISubprogram(name: "uk_do_free", scope: !156, file: !156, line: 231, type: !188, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1548)
!1548 = !{!1546, !1549}
!1549 = !DILocalVariable(name: "ptr", arg: 2, scope: !1547, file: !156, line: 231, type: !29)
!1550 = !DILocation(line: 231, column: 48, scope: !1547, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 239, column: 2, scope: !1541, inlinedAt: !1545)
!1552 = !DILocation(line: 233, column: 2, scope: !1553, inlinedAt: !1551)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !156, line: 233, column: 2)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !156, line: 233, column: 2)
!1555 = !DILocation(line: 233, column: 2, scope: !1554, inlinedAt: !1551)
!1556 = !DILocation(line: 233, column: 2, scope: !1557, inlinedAt: !1551)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !156, line: 233, column: 2)
!1558 = !DILocation(line: 419, column: 31, scope: !1530)
!1559 = !DILocation(line: 231, column: 57, scope: !1547, inlinedAt: !1551)
!1560 = !DILocation(line: 237, column: 54, scope: !1541, inlinedAt: !1545)
!1561 = !DILocation(line: 234, column: 5, scope: !1547, inlinedAt: !1551)
!1562 = !DILocation(line: 234, column: 2, scope: !1547, inlinedAt: !1551)
!1563 = !DILocation(line: 421, column: 2, scope: !1530)
!1564 = !DILocation(line: 0, scope: !1537)
!1565 = !DILocation(line: 422, column: 1, scope: !1530)
!1566 = distinct !DISubprogram(name: "pte_osSemaphorePost", scope: !3, file: !3, line: 424, type: !1567, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!546, !1496, !69}
!1569 = !{!1570, !1571, !1572}
!1570 = !DILocalVariable(name: "h", arg: 1, scope: !1566, file: !3, line: 424, type: !1496)
!1571 = !DILocalVariable(name: "count", arg: 2, scope: !1566, file: !3, line: 424, type: !69)
!1572 = !DILocalVariable(name: "i", scope: !1566, file: !3, line: 426, type: !69)
!1573 = !DILocation(line: 424, column: 56, scope: !1566)
!1574 = !DILocation(line: 424, column: 63, scope: !1566)
!1575 = !DILocation(line: 428, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 428, column: 6)
!1577 = !DILocation(line: 428, column: 6, scope: !1566)
!1578 = !DILocation(line: 426, column: 6, scope: !1566)
!1579 = !DILocation(line: 431, column: 16, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 431, column: 2)
!1581 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 431, column: 2)
!1582 = !DILocation(line: 431, column: 2, scope: !1581)
!1583 = !DILocation(line: 194, column: 57, scope: !801, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 432, column: 3, scope: !1580)
!1585 = !DILocation(line: 200, column: 9, scope: !801, inlinedAt: !1584)
!1586 = !DILocation(line: 196, column: 16, scope: !801, inlinedAt: !1584)
!1587 = !DILocation(line: 201, column: 2, scope: !801, inlinedAt: !1584)
!1588 = !DILocation(line: 209, column: 28, scope: !801, inlinedAt: !1584)
!1589 = !DILocation(line: 99, column: 40, scope: !819, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 210, column: 2, scope: !801, inlinedAt: !1584)
!1591 = !DILocation(line: 104, column: 10, scope: !819, inlinedAt: !1590)
!1592 = !DILocation(line: 101, column: 16, scope: !819, inlinedAt: !1590)
!1593 = !DILocation(line: 105, column: 2, scope: !833, inlinedAt: !1590)
!1594 = !DILocation(line: 102, column: 25, scope: !819, inlinedAt: !1590)
!1595 = !DILocation(line: 105, column: 2, scope: !837, inlinedAt: !1590)
!1596 = !DILocation(line: 102, column: 32, scope: !819, inlinedAt: !1590)
!1597 = !DILocation(line: 106, column: 24, scope: !837, inlinedAt: !1590)
!1598 = !DILocation(line: 106, column: 3, scope: !837, inlinedAt: !1590)
!1599 = !DILocation(line: 107, column: 2, scope: !819, inlinedAt: !1590)
!1600 = !DILocation(line: 211, column: 2, scope: !801, inlinedAt: !1584)
!1601 = !DILocation(line: 431, column: 26, scope: !1580)
!1602 = distinct !{!1602, !1582, !1603}
!1603 = !DILocation(line: 432, column: 20, scope: !1581)
!1604 = !DILocation(line: 0, scope: !1576)
!1605 = !DILocation(line: 435, column: 1, scope: !1566)
!1606 = distinct !DISubprogram(name: "pte_osSemaphorePend", scope: !3, file: !3, line: 437, type: !1607, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1610)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!546, !1496, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1610 = !{!1611, !1612, !1613}
!1611 = !DILocalVariable(name: "h", arg: 1, scope: !1606, file: !3, line: 437, type: !1496)
!1612 = !DILocalVariable(name: "ptimeout_msecs", arg: 2, scope: !1606, file: !3, line: 438, type: !1609)
!1613 = !DILocalVariable(name: "timeout", scope: !1606, file: !3, line: 440, type: !102)
!1614 = !DILocation(line: 437, column: 56, scope: !1606)
!1615 = !DILocation(line: 438, column: 16, scope: !1606)
!1616 = !DILocation(line: 442, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 442, column: 6)
!1618 = !DILocation(line: 442, column: 6, scope: !1606)
!1619 = !DILocation(line: 445, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 445, column: 6)
!1621 = !DILocation(line: 445, column: 6, scope: !1606)
!1622 = !DILocation(line: 446, column: 13, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 445, column: 22)
!1624 = !DILocation(line: 440, column: 9, scope: !1606)
!1625 = !DILocalVariable(name: "s", arg: 1, scope: !1626, file: !487, line: 128, type: !804)
!1626 = distinct !DISubprogram(name: "uk_semaphore_down_to", scope: !487, file: !487, line: 128, type: !1627, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!102, !804, !102}
!1629 = !{!1625, !1630, !1631, !1632, !1633, !1634, !1639, !1640, !1641}
!1630 = !DILocalVariable(name: "timeout", arg: 2, scope: !1626, file: !487, line: 129, type: !102)
!1631 = !DILocalVariable(name: "irqf", scope: !1626, file: !487, line: 131, type: !104)
!1632 = !DILocalVariable(name: "then", scope: !1626, file: !487, line: 132, type: !102)
!1633 = !DILocalVariable(name: "deadline", scope: !1626, file: !487, line: 133, type: !102)
!1634 = !DILocalVariable(name: "__current", scope: !1635, file: !487, line: 141, type: !31)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !487, line: 140, column: 6)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !487, line: 139, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !487, line: 139, column: 2)
!1638 = distinct !DILexicalBlock(scope: !1626, file: !487, line: 139, column: 2)
!1639 = !DILocalVariable(name: "flags", scope: !1635, file: !487, line: 142, type: !104)
!1640 = !DILocalVariable(name: "__cur", scope: !1635, file: !487, line: 143, type: !31)
!1641 = !DILocalVariable(name: "__wait", scope: !1635, file: !487, line: 143, type: !65)
!1642 = !DILocation(line: 128, column: 64, scope: !1626, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 448, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 448, column: 7)
!1645 = !DILocation(line: 129, column: 15, scope: !1626, inlinedAt: !1643)
!1646 = !DILocation(line: 132, column: 16, scope: !1626, inlinedAt: !1643)
!1647 = !DILocation(line: 132, column: 9, scope: !1626, inlinedAt: !1643)
!1648 = !DILocation(line: 137, column: 18, scope: !1626, inlinedAt: !1643)
!1649 = !DILocation(line: 133, column: 9, scope: !1626, inlinedAt: !1643)
!1650 = !DILocation(line: 139, column: 2, scope: !1626, inlinedAt: !1643)
!1651 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 143, column: 4, scope: !1635, inlinedAt: !1643)
!1654 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1652)
!1655 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1653)
!1656 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1653)
!1657 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 49, column: 21, scope: !1257, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 143, column: 4, scope: !1635, inlinedAt: !1643)
!1660 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1658)
!1661 = !DILocation(line: 49, column: 16, scope: !1257, inlinedAt: !1659)
!1662 = !DILocation(line: 50, column: 19, scope: !1257, inlinedAt: !1659)
!1663 = !DILocation(line: 50, column: 11, scope: !1257, inlinedAt: !1659)
!1664 = !DILocation(line: 50, column: 9, scope: !1257, inlinedAt: !1659)
!1665 = !DILocation(line: 143, column: 4, scope: !1635, inlinedAt: !1643)
!1666 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 143, column: 4, scope: !1635, inlinedAt: !1643)
!1669 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1667)
!1670 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1668)
!1671 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1668)
!1672 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1668)
!1673 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1668)
!1674 = !DILocation(line: 144, column: 11, scope: !1675, inlinedAt: !1643)
!1675 = distinct !DILexicalBlock(scope: !1635, file: !487, line: 144, column: 8)
!1676 = !DILocation(line: 144, column: 17, scope: !1675, inlinedAt: !1643)
!1677 = !DILocation(line: 144, column: 8, scope: !1635, inlinedAt: !1643)
!1678 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 147, column: 17, scope: !1681, inlinedAt: !1643)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !487, line: 146, column: 13)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !487, line: 146, column: 4)
!1683 = distinct !DILexicalBlock(scope: !1635, file: !487, line: 146, column: 4)
!1684 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1679)
!1685 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1680)
!1686 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1680)
!1687 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1680)
!1688 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1680)
!1689 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1680)
!1690 = !DILocation(line: 141, column: 22, scope: !1635, inlinedAt: !1643)
!1691 = !DILocation(line: 149, column: 13, scope: !1681, inlinedAt: !1643)
!1692 = !DILocation(line: 142, column: 18, scope: !1635, inlinedAt: !1643)
!1693 = !DILocation(line: 58, column: 36, scope: !1296, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 150, column: 5, scope: !1681, inlinedAt: !1643)
!1695 = !DILocation(line: 59, column: 26, scope: !1296, inlinedAt: !1694)
!1696 = !DILocation(line: 61, column: 14, scope: !1305, inlinedAt: !1694)
!1697 = !DILocation(line: 61, column: 7, scope: !1305, inlinedAt: !1694)
!1698 = !DILocation(line: 61, column: 6, scope: !1296, inlinedAt: !1694)
!1699 = !DILocation(line: 62, column: 3, scope: !1310, inlinedAt: !1694)
!1700 = !DILocation(line: 63, column: 18, scope: !1311, inlinedAt: !1694)
!1701 = !DILocation(line: 64, column: 2, scope: !1311, inlinedAt: !1694)
!1702 = !DILocation(line: 122, column: 64, scope: !1316, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 151, column: 5, scope: !1681, inlinedAt: !1643)
!1704 = !DILocation(line: 122, column: 80, scope: !1316, inlinedAt: !1703)
!1705 = !DILocation(line: 124, column: 10, scope: !1316, inlinedAt: !1703)
!1706 = !DILocation(line: 124, column: 22, scope: !1316, inlinedAt: !1703)
!1707 = !DILocation(line: 183, column: 53, scope: !1328, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 154, column: 5, scope: !1681, inlinedAt: !1643)
!1709 = !DILocation(line: 185, column: 10, scope: !1328, inlinedAt: !1708)
!1710 = !DILocation(line: 185, column: 16, scope: !1328, inlinedAt: !1708)
!1711 = !DILocation(line: 151, column: 62, scope: !1336, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 156, column: 5, scope: !1681, inlinedAt: !1643)
!1713 = !DILocation(line: 153, column: 2, scope: !1341, inlinedAt: !1712)
!1714 = !DILocation(line: 153, column: 2, scope: !1342, inlinedAt: !1712)
!1715 = !DILocation(line: 153, column: 2, scope: !1345, inlinedAt: !1712)
!1716 = !DILocation(line: 154, column: 6, scope: !1336, inlinedAt: !1712)
!1717 = !DILocation(line: 154, column: 14, scope: !1336, inlinedAt: !1712)
!1718 = !DILocation(line: 154, column: 2, scope: !1336, inlinedAt: !1712)
!1719 = !DILocation(line: 158, column: 5, scope: !1681, inlinedAt: !1643)
!1720 = !DILocation(line: 159, column: 12, scope: !1721, inlinedAt: !1643)
!1721 = distinct !DILexicalBlock(scope: !1681, file: !487, line: 159, column: 9)
!1722 = !DILocation(line: 159, column: 18, scope: !1721, inlinedAt: !1643)
!1723 = !DILocation(line: 159, column: 22, scope: !1721, inlinedAt: !1643)
!1724 = !DILocation(line: 159, column: 35, scope: !1721, inlinedAt: !1643)
!1725 = !DILocation(line: 159, column: 38, scope: !1721, inlinedAt: !1643)
!1726 = !DILocation(line: 159, column: 63, scope: !1721, inlinedAt: !1643)
!1727 = !DILocation(line: 159, column: 9, scope: !1681, inlinedAt: !1643)
!1728 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 117, column: 30, scope: !978, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 161, column: 5, scope: !1681, inlinedAt: !1643)
!1732 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1729)
!1733 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1730)
!1734 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1730)
!1735 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1730)
!1736 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1730)
!1737 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1730)
!1738 = !DILocation(line: 117, column: 20, scope: !978, inlinedAt: !1731)
!1739 = !DILocation(line: 119, column: 2, scope: !991, inlinedAt: !1731)
!1740 = !DILocation(line: 119, column: 2, scope: !992, inlinedAt: !1731)
!1741 = !DILocation(line: 119, column: 2, scope: !995, inlinedAt: !1731)
!1742 = !DILocation(line: 121, column: 15, scope: !978, inlinedAt: !1731)
!1743 = !DILocation(line: 116, column: 19, scope: !978, inlinedAt: !1731)
!1744 = !DILocation(line: 122, column: 2, scope: !999, inlinedAt: !1731)
!1745 = !DILocation(line: 122, column: 2, scope: !1000, inlinedAt: !1731)
!1746 = !DILocation(line: 122, column: 2, scope: !1003, inlinedAt: !1731)
!1747 = !DILocation(line: 123, column: 5, scope: !978, inlinedAt: !1731)
!1748 = !DILocation(line: 123, column: 2, scope: !978, inlinedAt: !1731)
!1749 = !DILocation(line: 146, column: 4, scope: !1682, inlinedAt: !1643)
!1750 = distinct !{!1750, !1751, !1752}
!1751 = !DILocation(line: 146, column: 4, scope: !1683)
!1752 = !DILocation(line: 162, column: 4, scope: !1683)
!1753 = !DILocation(line: 163, column: 12, scope: !1635, inlinedAt: !1643)
!1754 = !DILocation(line: 165, column: 4, scope: !1635, inlinedAt: !1643)
!1755 = !DILocation(line: 68, column: 39, scope: !1383, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 166, column: 4, scope: !1635, inlinedAt: !1643)
!1757 = !DILocation(line: 69, column: 26, scope: !1383, inlinedAt: !1756)
!1758 = !DILocation(line: 71, column: 13, scope: !1391, inlinedAt: !1756)
!1759 = !DILocation(line: 71, column: 6, scope: !1391, inlinedAt: !1756)
!1760 = !DILocation(line: 71, column: 6, scope: !1383, inlinedAt: !1756)
!1761 = !DILocation(line: 72, column: 3, scope: !1388, inlinedAt: !1756)
!1762 = !DILocation(line: 72, column: 3, scope: !1389, inlinedAt: !1756)
!1763 = !DILocation(line: 72, column: 3, scope: !1401, inlinedAt: !1756)
!1764 = !DILocation(line: 72, column: 3, scope: !1402, inlinedAt: !1756)
!1765 = !DILocation(line: 72, column: 3, scope: !1387, inlinedAt: !1756)
!1766 = !DILocation(line: 72, column: 3, scope: !1409, inlinedAt: !1756)
!1767 = !DILocation(line: 72, column: 3, scope: !1410, inlinedAt: !1756)
!1768 = !DILocation(line: 73, column: 18, scope: !1390, inlinedAt: !1756)
!1769 = !DILocation(line: 74, column: 2, scope: !1390, inlinedAt: !1756)
!1770 = !DILocation(line: 167, column: 4, scope: !1635, inlinedAt: !1643)
!1771 = !DILocation(line: 168, column: 3, scope: !1636, inlinedAt: !1643)
!1772 = !DILocation(line: 170, column: 10, scope: !1636, inlinedAt: !1643)
!1773 = !DILocation(line: 131, column: 16, scope: !1626, inlinedAt: !1643)
!1774 = !DILocation(line: 171, column: 10, scope: !1775, inlinedAt: !1643)
!1775 = distinct !DILexicalBlock(scope: !1636, file: !487, line: 171, column: 7)
!1776 = !DILocation(line: 171, column: 16, scope: !1775, inlinedAt: !1643)
!1777 = !DILocation(line: 171, column: 20, scope: !1775, inlinedAt: !1643)
!1778 = !DILocation(line: 171, column: 33, scope: !1775, inlinedAt: !1643)
!1779 = !DILocation(line: 172, column: 10, scope: !1775, inlinedAt: !1643)
!1780 = !DILocation(line: 172, column: 35, scope: !1775, inlinedAt: !1643)
!1781 = !DILocation(line: 171, column: 7, scope: !1636, inlinedAt: !1643)
!1782 = !DILocation(line: 174, column: 3, scope: !1636, inlinedAt: !1643)
!1783 = !DILocation(line: 139, column: 2, scope: !1637, inlinedAt: !1643)
!1784 = distinct !{!1784, !1785, !1786}
!1785 = !DILocation(line: 139, column: 2, scope: !1638)
!1786 = !DILocation(line: 175, column: 2, scope: !1638)
!1787 = !DILocation(line: 177, column: 9, scope: !1788, inlinedAt: !1643)
!1788 = distinct !DILexicalBlock(scope: !1626, file: !487, line: 177, column: 6)
!1789 = !DILocation(line: 177, column: 15, scope: !1788, inlinedAt: !1643)
!1790 = !DILocation(line: 177, column: 6, scope: !1626, inlinedAt: !1643)
!1791 = !DILocation(line: 187, column: 2, scope: !1626, inlinedAt: !1643)
!1792 = !DILocation(line: 448, column: 7, scope: !1623)
!1793 = !DILocation(line: 178, column: 11, scope: !1794, inlinedAt: !1643)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !487, line: 177, column: 20)
!1795 = !DILocation(line: 183, column: 3, scope: !1794, inlinedAt: !1643)
!1796 = !DILocation(line: 184, column: 10, scope: !1794, inlinedAt: !1643)
!1797 = !DILocation(line: 184, column: 35, scope: !1794, inlinedAt: !1643)
!1798 = !DILocation(line: 448, column: 40, scope: !1644)
!1799 = !DILocation(line: 452, column: 3, scope: !1620)
!1800 = !DILocation(line: 454, column: 2, scope: !1606)
!1801 = !DILocation(line: 0, scope: !1617)
!1802 = !DILocation(line: 455, column: 1, scope: !1606)
!1803 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !487, file: !487, line: 58, type: !802, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1804)
!1804 = !{!1805, !1806, !1807, !1812, !1813, !1814}
!1805 = !DILocalVariable(name: "s", arg: 1, scope: !1803, file: !487, line: 58, type: !804)
!1806 = !DILocalVariable(name: "irqf", scope: !1803, file: !487, line: 60, type: !104)
!1807 = !DILocalVariable(name: "__current", scope: !1808, file: !487, line: 66, type: !31)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !487, line: 65, column: 6)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !487, line: 64, column: 11)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !487, line: 64, column: 2)
!1811 = distinct !DILexicalBlock(scope: !1803, file: !487, line: 64, column: 2)
!1812 = !DILocalVariable(name: "flags", scope: !1808, file: !487, line: 67, type: !104)
!1813 = !DILocalVariable(name: "__cur", scope: !1808, file: !487, line: 68, type: !31)
!1814 = !DILocalVariable(name: "__wait", scope: !1808, file: !487, line: 68, type: !65)
!1815 = !DILocation(line: 58, column: 59, scope: !1803)
!1816 = !DILocation(line: 62, column: 2, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !487, line: 62, column: 2)
!1818 = distinct !DILexicalBlock(scope: !1803, file: !487, line: 62, column: 2)
!1819 = !DILocation(line: 62, column: 2, scope: !1818)
!1820 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 68, column: 4, scope: !1808)
!1823 = !DILocation(line: 62, column: 2, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !487, line: 62, column: 2)
!1825 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1821)
!1826 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1822)
!1827 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1822)
!1828 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 49, column: 21, scope: !1257, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 68, column: 4, scope: !1808)
!1831 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1829)
!1832 = !DILocation(line: 49, column: 16, scope: !1257, inlinedAt: !1830)
!1833 = !DILocation(line: 50, column: 19, scope: !1257, inlinedAt: !1830)
!1834 = !DILocation(line: 50, column: 11, scope: !1257, inlinedAt: !1830)
!1835 = !DILocation(line: 50, column: 9, scope: !1257, inlinedAt: !1830)
!1836 = !DILocation(line: 68, column: 4, scope: !1808)
!1837 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 68, column: 4, scope: !1808)
!1840 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1838)
!1841 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1839)
!1842 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1839)
!1843 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1839)
!1844 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1839)
!1845 = !DILocation(line: 69, column: 11, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1808, file: !487, line: 69, column: 8)
!1847 = !DILocation(line: 69, column: 17, scope: !1846)
!1848 = !DILocation(line: 69, column: 8, scope: !1808)
!1849 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 72, column: 17, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !487, line: 71, column: 13)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !487, line: 71, column: 4)
!1854 = distinct !DILexicalBlock(scope: !1808, file: !487, line: 71, column: 4)
!1855 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1850)
!1856 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1851)
!1857 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1851)
!1858 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1851)
!1859 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1851)
!1860 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1851)
!1861 = !DILocation(line: 66, column: 22, scope: !1808)
!1862 = !DILocation(line: 74, column: 13, scope: !1852)
!1863 = !DILocation(line: 67, column: 18, scope: !1808)
!1864 = !DILocation(line: 58, column: 36, scope: !1296, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 75, column: 5, scope: !1852)
!1866 = !DILocation(line: 59, column: 26, scope: !1296, inlinedAt: !1865)
!1867 = !DILocation(line: 61, column: 14, scope: !1305, inlinedAt: !1865)
!1868 = !DILocation(line: 61, column: 7, scope: !1305, inlinedAt: !1865)
!1869 = !DILocation(line: 61, column: 6, scope: !1296, inlinedAt: !1865)
!1870 = !DILocation(line: 62, column: 3, scope: !1310, inlinedAt: !1865)
!1871 = !DILocation(line: 63, column: 18, scope: !1311, inlinedAt: !1865)
!1872 = !DILocation(line: 64, column: 2, scope: !1311, inlinedAt: !1865)
!1873 = !DILocation(line: 122, column: 64, scope: !1316, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 76, column: 5, scope: !1852)
!1875 = !DILocation(line: 122, column: 80, scope: !1316, inlinedAt: !1874)
!1876 = !DILocation(line: 124, column: 10, scope: !1316, inlinedAt: !1874)
!1877 = !DILocation(line: 124, column: 22, scope: !1316, inlinedAt: !1874)
!1878 = !DILocation(line: 183, column: 53, scope: !1328, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 79, column: 5, scope: !1852)
!1880 = !DILocation(line: 185, column: 10, scope: !1328, inlinedAt: !1879)
!1881 = !DILocation(line: 185, column: 16, scope: !1328, inlinedAt: !1879)
!1882 = !DILocation(line: 151, column: 62, scope: !1336, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 81, column: 5, scope: !1852)
!1884 = !DILocation(line: 153, column: 2, scope: !1341, inlinedAt: !1883)
!1885 = !DILocation(line: 153, column: 2, scope: !1342, inlinedAt: !1883)
!1886 = !DILocation(line: 153, column: 2, scope: !1345, inlinedAt: !1883)
!1887 = !DILocation(line: 154, column: 6, scope: !1336, inlinedAt: !1883)
!1888 = !DILocation(line: 154, column: 14, scope: !1336, inlinedAt: !1883)
!1889 = !DILocation(line: 154, column: 2, scope: !1336, inlinedAt: !1883)
!1890 = !DILocation(line: 83, column: 5, scope: !1852)
!1891 = !DILocation(line: 84, column: 12, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1852, file: !487, line: 84, column: 9)
!1893 = !DILocation(line: 84, column: 18, scope: !1892)
!1894 = !DILocation(line: 84, column: 9, scope: !1852)
!1895 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 117, column: 30, scope: !978, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 86, column: 5, scope: !1852)
!1899 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1896)
!1900 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1897)
!1901 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1897)
!1902 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1897)
!1903 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1897)
!1904 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1897)
!1905 = !DILocation(line: 117, column: 20, scope: !978, inlinedAt: !1898)
!1906 = !DILocation(line: 119, column: 2, scope: !991, inlinedAt: !1898)
!1907 = !DILocation(line: 119, column: 2, scope: !992, inlinedAt: !1898)
!1908 = !DILocation(line: 119, column: 2, scope: !995, inlinedAt: !1898)
!1909 = !DILocation(line: 121, column: 15, scope: !978, inlinedAt: !1898)
!1910 = !DILocation(line: 116, column: 19, scope: !978, inlinedAt: !1898)
!1911 = !DILocation(line: 122, column: 2, scope: !999, inlinedAt: !1898)
!1912 = !DILocation(line: 122, column: 2, scope: !1000, inlinedAt: !1898)
!1913 = !DILocation(line: 122, column: 2, scope: !1003, inlinedAt: !1898)
!1914 = !DILocation(line: 123, column: 5, scope: !978, inlinedAt: !1898)
!1915 = !DILocation(line: 123, column: 2, scope: !978, inlinedAt: !1898)
!1916 = !DILocation(line: 71, column: 4, scope: !1853)
!1917 = distinct !{!1917, !1918, !1919}
!1918 = !DILocation(line: 71, column: 4, scope: !1854)
!1919 = !DILocation(line: 87, column: 4, scope: !1854)
!1920 = !DILocation(line: 88, column: 12, scope: !1808)
!1921 = !DILocation(line: 90, column: 4, scope: !1808)
!1922 = !DILocation(line: 68, column: 39, scope: !1383, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 91, column: 4, scope: !1808)
!1924 = !DILocation(line: 69, column: 26, scope: !1383, inlinedAt: !1923)
!1925 = !DILocation(line: 71, column: 13, scope: !1391, inlinedAt: !1923)
!1926 = !DILocation(line: 71, column: 6, scope: !1391, inlinedAt: !1923)
!1927 = !DILocation(line: 71, column: 6, scope: !1383, inlinedAt: !1923)
!1928 = !DILocation(line: 72, column: 3, scope: !1388, inlinedAt: !1923)
!1929 = !DILocation(line: 72, column: 3, scope: !1389, inlinedAt: !1923)
!1930 = !DILocation(line: 72, column: 3, scope: !1401, inlinedAt: !1923)
!1931 = !DILocation(line: 72, column: 3, scope: !1402, inlinedAt: !1923)
!1932 = !DILocation(line: 72, column: 3, scope: !1387, inlinedAt: !1923)
!1933 = !DILocation(line: 72, column: 3, scope: !1409, inlinedAt: !1923)
!1934 = !DILocation(line: 72, column: 3, scope: !1410, inlinedAt: !1923)
!1935 = !DILocation(line: 73, column: 18, scope: !1390, inlinedAt: !1923)
!1936 = !DILocation(line: 74, column: 2, scope: !1390, inlinedAt: !1923)
!1937 = !DILocation(line: 92, column: 4, scope: !1808)
!1938 = !DILocation(line: 93, column: 3, scope: !1809)
!1939 = !DILocation(line: 95, column: 10, scope: !1809)
!1940 = !DILocation(line: 60, column: 16, scope: !1803)
!1941 = !DILocation(line: 96, column: 10, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1809, file: !487, line: 96, column: 7)
!1943 = !DILocation(line: 96, column: 16, scope: !1942)
!1944 = !DILocation(line: 96, column: 7, scope: !1809)
!1945 = !DILocation(line: 98, column: 3, scope: !1809)
!1946 = !DILocation(line: 64, column: 2, scope: !1810)
!1947 = distinct !{!1947, !1948, !1949}
!1948 = !DILocation(line: 64, column: 2, scope: !1811)
!1949 = !DILocation(line: 99, column: 2, scope: !1811)
!1950 = !DILocation(line: 100, column: 2, scope: !1803)
!1951 = !DILocation(line: 104, column: 2, scope: !1803)
!1952 = !DILocation(line: 105, column: 1, scope: !1803)
!1953 = distinct !DISubprogram(name: "pte_osSemaphoreCancellablePend", scope: !3, file: !3, line: 457, type: !1607, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1954)
!1954 = !{!1955, !1956, !1957, !1958, !1959, !1960}
!1955 = !DILocalVariable(name: "h", arg: 1, scope: !1953, file: !3, line: 457, type: !1496)
!1956 = !DILocalVariable(name: "ptimeout_msecs", arg: 2, scope: !1953, file: !3, line: 458, type: !1609)
!1957 = !DILocalVariable(name: "ptd", scope: !1953, file: !3, line: 460, type: !473)
!1958 = !DILocalVariable(name: "result", scope: !1953, file: !3, line: 461, type: !546)
!1959 = !DILocalVariable(name: "timeout", scope: !1953, file: !3, line: 462, type: !102)
!1960 = !DILocalVariable(name: "start_time", scope: !1953, file: !3, line: 462, type: !102)
!1961 = !DILocation(line: 457, column: 67, scope: !1953)
!1962 = !DILocation(line: 458, column: 16, scope: !1953)
!1963 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 137, column: 2, scope: !906, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 460, column: 27, scope: !1953)
!1967 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !1964)
!1968 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !1965)
!1969 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !1965)
!1970 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !1965)
!1971 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !1965)
!1972 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !1965)
!1973 = !DILocation(line: 135, column: 29, scope: !906, inlinedAt: !1966)
!1974 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 138, column: 2, scope: !906, inlinedAt: !1966)
!1976 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !1975)
!1977 = !DILocation(line: 136, column: 30, scope: !906, inlinedAt: !1966)
!1978 = !DILocation(line: 460, column: 21, scope: !1953)
!1979 = !DILocation(line: 461, column: 15, scope: !1953)
!1980 = !DILocation(line: 462, column: 9, scope: !1953)
!1981 = !DILocation(line: 462, column: 35, scope: !1953)
!1982 = !DILocation(line: 462, column: 22, scope: !1953)
!1983 = !DILocation(line: 464, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 464, column: 6)
!1985 = !DILocation(line: 464, column: 6, scope: !1953)
!1986 = !DILocation(line: 465, column: 13, scope: !1984)
!1987 = !DILocation(line: 465, column: 3, scope: !1984)
!1988 = !DILocation(line: 0, scope: !1953)
!1989 = !DILocalVariable(name: "s", arg: 1, scope: !1990, file: !487, line: 107, type: !804)
!1990 = distinct !DISubprogram(name: "uk_semaphore_down_try", scope: !487, file: !487, line: 107, type: !1991, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!69, !804}
!1993 = !{!1989, !1994, !1995}
!1994 = !DILocalVariable(name: "irqf", scope: !1990, file: !487, line: 109, type: !104)
!1995 = !DILocalVariable(name: "ret", scope: !1990, file: !487, line: 110, type: !69)
!1996 = !DILocation(line: 107, column: 62, scope: !1990, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 468, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 468, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 467, column: 12)
!2000 = !DILocation(line: 110, column: 6, scope: !1990, inlinedAt: !1997)
!2001 = !DILocation(line: 112, column: 2, scope: !2002, inlinedAt: !1997)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !487, line: 112, column: 2)
!2003 = distinct !DILexicalBlock(scope: !1990, file: !487, line: 112, column: 2)
!2004 = !DILocation(line: 112, column: 2, scope: !2003, inlinedAt: !1997)
!2005 = !DILocation(line: 114, column: 9, scope: !1990, inlinedAt: !1997)
!2006 = !DILocation(line: 109, column: 16, scope: !1990, inlinedAt: !1997)
!2007 = !DILocation(line: 115, column: 9, scope: !2008, inlinedAt: !1997)
!2008 = distinct !DILexicalBlock(scope: !1990, file: !487, line: 115, column: 6)
!2009 = !DILocation(line: 115, column: 15, scope: !2008, inlinedAt: !1997)
!2010 = !DILocation(line: 115, column: 6, scope: !1990, inlinedAt: !1997)
!2011 = !DILocation(line: 112, column: 2, scope: !2012, inlinedAt: !1997)
!2012 = distinct !DILexicalBlock(scope: !2002, file: !487, line: 112, column: 2)
!2013 = !DILocation(line: 117, column: 3, scope: !2014, inlinedAt: !1997)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !487, line: 115, column: 20)
!2015 = !DILocation(line: 123, column: 2, scope: !1990, inlinedAt: !1997)
!2016 = !DILocation(line: 468, column: 7, scope: !1999)
!2017 = !DILocation(line: 472, column: 20, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 472, column: 12)
!2019 = !DILocation(line: 473, column: 5, scope: !2018)
!2020 = !DILocation(line: 473, column: 30, scope: !2018)
!2021 = !DILocation(line: 473, column: 43, scope: !2018)
!2022 = !DILocation(line: 472, column: 12, scope: !1998)
!2023 = !DILocation(line: 478, column: 18, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 478, column: 14)
!2025 = !DILocation(line: 478, column: 37, scope: !2024)
!2026 = !DILocation(line: 478, column: 43, scope: !2024)
!2027 = !DILocation(line: 478, column: 14, scope: !2018)
!2028 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 117, column: 30, scope: !978, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 485, column: 4, scope: !2024)
!2032 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !2029)
!2033 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !2030)
!2034 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !2030)
!2035 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !2030)
!2036 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !2030)
!2037 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !2030)
!2038 = !DILocation(line: 117, column: 20, scope: !978, inlinedAt: !2031)
!2039 = !DILocation(line: 119, column: 2, scope: !991, inlinedAt: !2031)
!2040 = !DILocation(line: 119, column: 2, scope: !992, inlinedAt: !2031)
!2041 = !DILocation(line: 119, column: 2, scope: !995, inlinedAt: !2031)
!2042 = !DILocation(line: 121, column: 15, scope: !978, inlinedAt: !2031)
!2043 = !DILocation(line: 116, column: 19, scope: !978, inlinedAt: !2031)
!2044 = !DILocation(line: 122, column: 2, scope: !999, inlinedAt: !2031)
!2045 = !DILocation(line: 122, column: 2, scope: !1000, inlinedAt: !2031)
!2046 = !DILocation(line: 122, column: 2, scope: !1003, inlinedAt: !2031)
!2047 = !DILocation(line: 123, column: 5, scope: !978, inlinedAt: !2031)
!2048 = !DILocation(line: 123, column: 2, scope: !978, inlinedAt: !2031)
!2049 = !DILocation(line: 0, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 478, column: 48)
!2051 = !DILocation(line: 488, column: 2, scope: !1953)
!2052 = distinct !DISubprogram(name: "pte_osTlsSetValue", scope: !3, file: !3, line: 547, type: !2053, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!546, !7, !29}
!2055 = !{!2056, !2057}
!2056 = !DILocalVariable(name: "key", arg: 1, scope: !2052, file: !3, line: 547, type: !7)
!2057 = !DILocalVariable(name: "value", arg: 2, scope: !2052, file: !3, line: 547, type: !29)
!2058 = !DILocation(line: 547, column: 45, scope: !2052)
!2059 = !DILocation(line: 547, column: 56, scope: !2052)
!2060 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 137, column: 2, scope: !906, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 542, column: 27, scope: !2064, inlinedAt: !2069)
!2064 = distinct !DISubprogram(name: "current_tls", scope: !3, file: !3, line: 540, type: !2065, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!29}
!2067 = !{!2068}
!2068 = !DILocalVariable(name: "ptd", scope: !2064, file: !3, line: 542, type: !473)
!2069 = distinct !DILocation(line: 549, column: 24, scope: !2052)
!2070 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !2061)
!2071 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !2062)
!2072 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !2062)
!2073 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !2062)
!2074 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !2062)
!2075 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !2062)
!2076 = !DILocation(line: 135, column: 29, scope: !906, inlinedAt: !2063)
!2077 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 138, column: 2, scope: !906, inlinedAt: !2063)
!2079 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !2078)
!2080 = !DILocation(line: 136, column: 30, scope: !906, inlinedAt: !2063)
!2081 = !DILocation(line: 542, column: 21, scope: !2064, inlinedAt: !2069)
!2082 = !DILocation(line: 544, column: 9, scope: !2064, inlinedAt: !2069)
!2083 = !DILocation(line: 544, column: 20, scope: !2064, inlinedAt: !2069)
!2084 = !DILocation(line: 549, column: 9, scope: !2052)
!2085 = !DILocation(line: 549, column: 2, scope: !2052)
!2086 = distinct !DISubprogram(name: "pte_osTlsGetValue", scope: !3, file: !3, line: 552, type: !2087, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!29, !7}
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "index", arg: 1, scope: !2086, file: !3, line: 552, type: !7)
!2091 = !DILocation(line: 552, column: 38, scope: !2086)
!2092 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 137, column: 2, scope: !906, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 542, column: 27, scope: !2064, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 554, column: 33, scope: !2086)
!2097 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !2093)
!2098 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !2094)
!2099 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !2094)
!2100 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !2094)
!2101 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !2094)
!2102 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !2094)
!2103 = !DILocation(line: 135, column: 29, scope: !906, inlinedAt: !2095)
!2104 = !DILocation(line: 139, column: 47, scope: !791, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 138, column: 2, scope: !906, inlinedAt: !2095)
!2106 = !DILocation(line: 141, column: 17, scope: !791, inlinedAt: !2105)
!2107 = !DILocation(line: 136, column: 30, scope: !906, inlinedAt: !2095)
!2108 = !DILocation(line: 542, column: 21, scope: !2064, inlinedAt: !2096)
!2109 = !DILocation(line: 544, column: 9, scope: !2064, inlinedAt: !2096)
!2110 = !DILocation(line: 544, column: 20, scope: !2064, inlinedAt: !2096)
!2111 = !DILocation(line: 554, column: 18, scope: !2086)
!2112 = !DILocation(line: 554, column: 2, scope: !2086)
!2113 = distinct !DISubprogram(name: "pte_osTlsAlloc", scope: !3, file: !3, line: 557, type: !2114, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!546, !1609}
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "pkey", arg: 1, scope: !2113, file: !3, line: 557, type: !1609)
!2118 = !DILocation(line: 557, column: 43, scope: !2113)
!2119 = !DILocation(line: 559, column: 9, scope: !2113)
!2120 = !DILocation(line: 559, column: 2, scope: !2113)
!2121 = distinct !DISubprogram(name: "pte_osTlsFree", scope: !3, file: !3, line: 562, type: !2122, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!546, !7}
!2124 = !{!2125}
!2125 = !DILocalVariable(name: "index", arg: 1, scope: !2121, file: !3, line: 562, type: !7)
!2126 = !DILocation(line: 562, column: 41, scope: !2121)
!2127 = !DILocation(line: 564, column: 9, scope: !2121)
!2128 = !DILocation(line: 564, column: 2, scope: !2121)
!2129 = distinct !DISubprogram(name: "ftime", scope: !3, file: !3, line: 573, type: !2130, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2142)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!69, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeb", file: !2134, line: 26, size: 128, elements: !2135)
!2134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/timeb.h", directory: "/root/.unikraft/apps/redis/build")
!2135 = !{!2136, !2139, !2140, !2141}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2133, file: !2134, line: 28, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2138, line: 34, baseType: !57)
!2138 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "millitm", scope: !2133, file: !2134, line: 29, baseType: !377, size: 16, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !2133, file: !2134, line: 30, baseType: !247, size: 16, offset: 80)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dstflag", scope: !2133, file: !2134, line: 31, baseType: !247, size: 16, offset: 96)
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "tb", arg: 1, scope: !2129, file: !3, line: 573, type: !2132)
!2144 = !DILocalVariable(name: "now", scope: !2129, file: !3, line: 575, type: !102)
!2145 = !DILocation(line: 573, column: 25, scope: !2129)
!2146 = !DILocation(line: 575, column: 15, scope: !2129)
!2147 = !DILocation(line: 575, column: 9, scope: !2129)
!2148 = !DILocation(line: 577, column: 6, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 577, column: 6)
!2150 = !DILocation(line: 577, column: 6, scope: !2129)
!2151 = !DILocation(line: 578, column: 14, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 577, column: 10)
!2153 = !DILocation(line: 578, column: 7, scope: !2152)
!2154 = !DILocation(line: 578, column: 12, scope: !2152)
!2155 = !{!2156, !573, i64 0}
!2156 = !{!"timeb", !573, i64 0, !2157, i64 8, !2157, i64 10, !2157, i64 12}
!2157 = !{!"short", !570, i64 0}
!2158 = !DILocation(line: 579, column: 17, scope: !2152)
!2159 = !DILocation(line: 579, column: 7, scope: !2152)
!2160 = !DILocation(line: 579, column: 15, scope: !2152)
!2161 = !{!2156, !2157, i64 8}
!2162 = !DILocation(line: 580, column: 2, scope: !2152)
!2163 = !DILocation(line: 582, column: 2, scope: !2129)
!2164 = !DILocation(line: 196, column: 2, scope: !523)
!2165 = !DILocation(line: 196, column: 10, scope: !523)
!2166 = !DILocation(line: 197, column: 2, scope: !523)
!2167 = !DILocation(line: 198, column: 2, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !497, line: 198, column: 2)
!2169 = distinct !DILexicalBlock(scope: !523, file: !497, line: 198, column: 2)
!2170 = !DILocation(line: 199, column: 2, scope: !523)
!2171 = !DILocation(line: 200, column: 1, scope: !523)
