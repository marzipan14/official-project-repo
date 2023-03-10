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
  br i1 %2, label %4, label %3, !dbg !556

; <label>:3:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9, !dbg !557
  br label %21, !dbg !559

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @calloc(i64 1, i64 88) #10, !dbg !560
  %6 = icmp eq i8* %5, null, !dbg !562
  br i1 %6, label %21, label %7, !dbg !564

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @pteTlsThreadInit() #10, !dbg !565
  %9 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !566
  %10 = bitcast i8* %9 to i8**, !dbg !566
  store i8* %8, i8** %10, align 8, !dbg !567, !tbaa !568
  %11 = icmp eq i8* %8, null, !dbg !577
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
  ret i32 %22, !dbg !631
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i32 @pteTlsGlobalInit(i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8*, ...) unnamed_addr #4 !dbg !496 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !633
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !633
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !635
  call void @llvm.va_start(i8* nonnull %3), !dbg !635
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_err.__str.4, i64 0, i64 0), i32 190, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !636
  call void @llvm.va_end(i8* nonnull %3), !dbg !639
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  ret void, !dbg !640
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
define dso_local i32 @pte_kill(%struct.uk_thread*, i32) local_unnamed_addr #0 !dbg !641 {
  %3 = tail call i32 @uk_sig_thread_kill(%struct.uk_thread* %0, i32 %1) #10, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  ret i32 %3, !dbg !652
}

; Function Attrs: noredzone
declare dso_local i32 @uk_sig_thread_kill(%struct.uk_thread*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCreate(i32 (i8*)*, i32, i32, i8*, %struct.uk_thread** nocapture) local_unnamed_addr #0 !dbg !653 {
  %6 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !669, !tbaa !607
  %7 = icmp eq %struct.uk_alloc* %6, null, !dbg !677
  br i1 %7, label %8, label %10, !dbg !679, !prof !680

; <label>:8:                                      ; preds = %5
  %9 = tail call i32* @__errno() #10, !dbg !681
  store i32 12, i32* %9, align 4, !dbg !683, !tbaa !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %43, !dbg !687

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %6, i64 0, i32 0, !dbg !695
  %12 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %11, align 8, !dbg !695, !tbaa !607
  %13 = tail call i8* %12(%struct.uk_alloc* nonnull %6, i64 88) #10, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  %14 = icmp eq i8* %13, null, !dbg !698
  br i1 %14, label %43, label %15, !dbg !687

; <label>:15:                                     ; preds = %10
  %16 = bitcast i8* %13 to i32 (i8*)**, !dbg !700
  store i32 (i8*)* %0, i32 (i8*)** %16, align 8, !dbg !701, !tbaa !702
  %17 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !703
  %18 = bitcast i8* %17 to i8**, !dbg !703
  store i8* %3, i8** %18, align 8, !dbg !704, !tbaa !705
  %19 = tail call i8* @pteTlsThreadInit() #10, !dbg !706
  %20 = getelementptr inbounds i8, i8* %13, i64 24, !dbg !707
  %21 = bitcast i8* %20 to i8**, !dbg !707
  store i8* %19, i8** %21, align 8, !dbg !708, !tbaa !568
  %22 = icmp eq i8* %19, null, !dbg !709
  br i1 %22, label %23, label %24, !dbg !711

; <label>:23:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !712
  tail call void @free(i8* nonnull %13) #10, !dbg !714
  br label %43, !dbg !715

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %13, i64 32, !dbg !716
  %26 = bitcast i8* %25 to %struct.uk_semaphore*, !dbg !716
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull %26, i64 0) #10, !dbg !717
  %27 = getelementptr inbounds i8, i8* %13, i64 56, !dbg !718
  %28 = bitcast i8* %27 to %struct.uk_semaphore*, !dbg !718
  tail call void @uk_semaphore_init(%struct.uk_semaphore* nonnull %28, i64 0) #10, !dbg !719
  %29 = getelementptr inbounds i8, i8* %13, i64 80, !dbg !720
  %30 = bitcast i8* %29 to i32*, !dbg !720
  store i32 0, i32* %30, align 8, !dbg !721, !tbaa !722
  %31 = tail call %struct.uk_sched* @uk_sched_get_default() #10, !dbg !736
  %32 = tail call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %31, i8* null, %struct.uk_thread_attr* null, void (i8*)* nonnull @uk_stub_thread_entry, i8* nonnull %13) #10, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  %33 = getelementptr inbounds i8, i8* %13, i64 16, !dbg !739
  %34 = bitcast i8* %33 to %struct.uk_thread**, !dbg !739
  store %struct.uk_thread* %32, %struct.uk_thread** %34, align 8, !dbg !739, !tbaa !628
  %35 = icmp eq %struct.uk_thread* %32, null, !dbg !740
  br i1 %35, label %36, label %38, !dbg !742

; <label>:36:                                     ; preds = %24
  %37 = load i8*, i8** %21, align 8, !dbg !743, !tbaa !568
  tail call void @pteTlsThreadDestroy(i8* %37) #10, !dbg !745
  tail call void @free(i8* nonnull %13) #10, !dbg !746
  br label %43, !dbg !747

; <label>:38:                                     ; preds = %24
  tail call void @uk_thread_inherit_signal_mask(%struct.uk_thread* nonnull %32) #10, !dbg !748
  %39 = load %struct.uk_thread*, %struct.uk_thread** %34, align 8, !dbg !749, !tbaa !628
  %40 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %39, i64 0, i32 10, !dbg !753
  store i8* %13, i8** %40, align 8, !dbg !754, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  %41 = ptrtoint %struct.uk_thread* %39 to i64, !dbg !756
  %42 = bitcast %struct.uk_thread** %4 to i64*, !dbg !757
  store i64 %41, i64* %42, align 8, !dbg !757, !tbaa !607
  br label %43, !dbg !758

; <label>:43:                                     ; preds = %8, %10, %38, %36, %23
  %44 = phi i32 [ 1, %23 ], [ 1, %36 ], [ 0, %38 ], [ 1, %10 ], [ 1, %8 ], !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  ret i32 %44, !dbg !760
}

; Function Attrs: noredzone
declare dso_local void @uk_semaphore_init(%struct.uk_semaphore*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @uk_stub_thread_entry(i8*) #0 !dbg !761 {
  tail call void asm sideeffect "mov $0, %eax;xor %ecx, %ecx;xor %edx, %edx;wrpkru;lfence", "r,~{eax},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 1073741820) #8, !dbg !774, !srcloc !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %2 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !778
  %3 = bitcast i8* %2 to %struct.uk_semaphore*, !dbg !778
  tail call fastcc void @uk_semaphore_down(%struct.uk_semaphore* nonnull %3) #9, !dbg !779
  %4 = bitcast i8* %0 to i32 (i8*)**, !dbg !780
  %5 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !780, !tbaa !702
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !781
  %7 = bitcast i8* %6 to i8**, !dbg !781
  %8 = load i8*, i8** %7, align 8, !dbg !781, !tbaa !705
  %9 = tail call i32 %5(i8* %8) #10, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  ret void, !dbg !783
}

; Function Attrs: noredzone
declare dso_local void @pteTlsThreadDestroy(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @uk_thread_inherit_signal_mask(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadStart(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !784 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !806
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !806
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !806, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !823
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 4, i32 0, !dbg !825
  %7 = load i64, i64* %6, align 8, !dbg !826, !tbaa !827
  %8 = add nsw i64 %7, 1, !dbg !826
  store i64 %8, i64* %6, align 8, !dbg !826, !tbaa !827
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !841
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 4, i32 1, i32 0, !dbg !843
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !843, !tbaa !845
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !847
  br i1 %12, label %20, label %13, !dbg !847

; <label>:13:                                     ; preds = %1, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !847
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !847, !tbaa !849
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !853
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !853, !tbaa !854
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #10, !dbg !855
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !847
  br i1 %19, label %20, label %13, !dbg !847, !llvm.loop !856

; <label>:20:                                     ; preds = %13, %1
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #10, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #10, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  ret i32 0, !dbg !863
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadDelete(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !864 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !873
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !873
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !873, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  %5 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 3, !dbg !878
  %6 = load i8*, i8** %5, align 8, !dbg !878, !tbaa !568
  tail call void @pteTlsThreadDestroy(i8* %6) #10, !dbg !879
  %7 = bitcast %struct.pte_thread_data_t* %4 to i8*, !dbg !880
  tail call void @free(i8* %7) #10, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  ret i32 0, !dbg !882
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadExitAndDelete(%struct.uk_thread*) local_unnamed_addr #0 !dbg !883 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 9, !dbg !887
  %3 = load %struct.uk_sched*, %struct.uk_sched** %2, align 8, !dbg !887, !tbaa !889
  %4 = icmp eq %struct.uk_sched* %3, null, !dbg !890
  br i1 %4, label %6, label %5, !dbg !891

; <label>:5:                                      ; preds = %1
  tail call void @uk_sched_thread_kill(%struct.uk_sched* nonnull %3, %struct.uk_thread* nonnull %0) #10, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br label %6, !dbg !901

; <label>:6:                                      ; preds = %1, %5
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !908
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !908
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !908, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 3, !dbg !913
  %11 = load i8*, i8** %10, align 8, !dbg !913, !tbaa !568
  tail call void @pteTlsThreadDestroy(i8* %11) #10, !dbg !914
  %12 = bitcast %struct.pte_thread_data_t* %9 to i8*, !dbg !915
  tail call void @free(i8* %12) #10, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  ret i32 0, !dbg !918
}

; Function Attrs: noredzone noreturn nounwind
define dso_local void @pte_osThreadExit() local_unnamed_addr #5 !dbg !919 {
  %1 = tail call fastcc %struct.pte_thread_data_t* @current_ptd() #9, !dbg !922
  %2 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %1, i64 0, i32 6, !dbg !924
  store i32 1, i32* %2, align 8, !dbg !925, !tbaa !722
  tail call void @uk_sched_thread_exit() #11, !dbg !926
  unreachable, !dbg !926
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pte_thread_data_t* @current_ptd() unnamed_addr #0 !dbg !927 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !937, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  %2 = and i64 %1, -65536, !dbg !943
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !944
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !946, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  %5 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %4, i64 0, i32 10, !dbg !951
  %6 = bitcast i8** %5 to %struct.pte_thread_data_t**, !dbg !951
  %7 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %6, align 8, !dbg !951, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  ret %struct.pte_thread_data_t* %7, !dbg !954
}

; Function Attrs: noredzone noreturn
declare dso_local void @uk_sched_thread_exit() local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadWaitForEnd(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !955 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !965
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !965
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !965, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !970, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  %6 = and i64 %5, -65536, !dbg !977
  %7 = inttoptr i64 %6 to %struct.uk_thread**, !dbg !978
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 65536, !dbg !980, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %9 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %8, i64 0, i32 10, !dbg !985
  %10 = bitcast i8** %9 to %struct.pte_thread_data_t**, !dbg !985
  %11 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %10, align 8, !dbg !985, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %12 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 6, !dbg !990
  %13 = load i32, i32* %12, align 8, !dbg !990, !tbaa !722
  %14 = icmp eq i32 %13, 0, !dbg !993
  br i1 %14, label %15, label %18, !dbg !994

; <label>:15:                                     ; preds = %1
  %16 = icmp eq %struct.pte_thread_data_t* %11, null
  %17 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %11, i64 0, i32 5, i32 0
  br label %22, !dbg !994

; <label>:18:                                     ; preds = %38, %1
  %19 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 2, !dbg !995
  %20 = load %struct.uk_thread*, %struct.uk_thread** %19, align 8, !dbg !995, !tbaa !628
  %21 = tail call i32 @uk_thread_wait(%struct.uk_thread* %20) #10, !dbg !995
  br label %43, !dbg !997

; <label>:22:                                     ; preds = %15, %38
  br i1 %16, label %26, label %23, !dbg !998

; <label>:23:                                     ; preds = %22
  %24 = load i64, i64* %17, align 8, !dbg !1000, !tbaa !1001
  %25 = icmp sgt i64 %24, 0, !dbg !1002
  br i1 %25, label %43, label %26, !dbg !1003

; <label>:26:                                     ; preds = %22, %23
  %27 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1004, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  %28 = and i64 %27, -65536, !dbg !1015
  %29 = inttoptr i64 %28 to %struct.uk_thread**, !dbg !1016
  %30 = load %struct.uk_thread*, %struct.uk_thread** %29, align 65536, !dbg !1018, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  %31 = icmp eq %struct.uk_thread* %30, null, !dbg !1021
  br i1 %31, label %32, label %33, !dbg !1024, !prof !680

; <label>:32:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1025
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1025
  unreachable, !dbg !1025

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %30, i64 0, i32 9, !dbg !1027
  %35 = load %struct.uk_sched*, %struct.uk_sched** %34, align 8, !dbg !1027, !tbaa !889
  %36 = icmp eq %struct.uk_sched* %35, null, !dbg !1029
  br i1 %36, label %37, label %38, !dbg !1032, !prof !680

; <label>:37:                                     ; preds = %33
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1033
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1033
  unreachable, !dbg !1033

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %35, i64 0, i32 0, !dbg !1035
  %40 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %39, align 8, !dbg !1035, !tbaa !1036
  tail call void %40(%struct.uk_sched* nonnull %35) #10, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  %41 = load i32, i32* %12, align 8, !dbg !990, !tbaa !722
  %42 = icmp eq i32 %41, 0, !dbg !993
  br i1 %42, label %22, label %18, !dbg !994, !llvm.loop !1042

; <label>:43:                                     ; preds = %23, %18
  %44 = phi i32 [ 0, %18 ], [ 4, %23 ], !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  ret i32 %44, !dbg !1046
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_wait(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCancel(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1047 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1056
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !1056
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !1056, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1063
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 0, !dbg !1065
  %7 = load i64, i64* %6, align 8, !dbg !1066, !tbaa !827
  %8 = add nsw i64 %7, 1, !dbg !1066
  store i64 %8, i64* %6, align 8, !dbg !1066, !tbaa !827
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1070
  %10 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 1, i32 0, !dbg !1072
  %11 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %10, align 8, !dbg !1072, !tbaa !845
  %12 = icmp eq %struct.uk_waitq_entry* %11, null, !dbg !1074
  br i1 %12, label %20, label %13, !dbg !1074

; <label>:13:                                     ; preds = %1, %13
  %14 = phi %struct.uk_waitq_entry* [ %16, %13 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 2, i32 0, !dbg !1074
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1074, !tbaa !849
  %17 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %14, i64 0, i32 1, !dbg !1076
  %18 = load %struct.uk_thread*, %struct.uk_thread** %17, align 8, !dbg !1076, !tbaa !854
  tail call void @uk_thread_wake(%struct.uk_thread* %18) #10, !dbg !1077
  %19 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !1074
  br i1 %19, label %20, label %13, !dbg !1074, !llvm.loop !856

; <label>:20:                                     ; preds = %13, %1
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #10, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #10, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  ret i32 0, !dbg !1082
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadCheckCancel(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1083 {
  %2 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1092
  %3 = bitcast i8** %2 to %struct.pte_thread_data_t**, !dbg !1092
  %4 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %3, align 8, !dbg !1092, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  %5 = icmp eq %struct.pte_thread_data_t* %4, null, !dbg !1097
  br i1 %5, label %10, label %6, !dbg !1099

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %4, i64 0, i32 5, i32 0, !dbg !1100
  %8 = load i64, i64* %7, align 8, !dbg !1100, !tbaa !1001
  %9 = icmp sgt i64 %8, 0, !dbg !1101
  br i1 %9, label %11, label %10, !dbg !1102

; <label>:10:                                     ; preds = %1, %6
  br label %11, !dbg !1103

; <label>:11:                                     ; preds = %6, %10
  %12 = phi i32 [ 0, %10 ], [ 4, %6 ], !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  ret i32 %12, !dbg !1105
}

; Function Attrs: noredzone nounwind
define dso_local %struct.uk_thread* @pte_osThreadGetHandle() local_unnamed_addr #0 !dbg !1106 {
  %1 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1111, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  %2 = and i64 %1, -65536, !dbg !1117
  %3 = inttoptr i64 %2 to %struct.uk_thread**, !dbg !1118
  %4 = load %struct.uk_thread*, %struct.uk_thread** %3, align 65536, !dbg !1120, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  ret %struct.uk_thread* %4, !dbg !1123
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadGetPriority(%struct.uk_thread* nocapture readonly) local_unnamed_addr #0 !dbg !1124 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1137
  %4 = bitcast i8** %3 to %struct.pte_thread_data_t**, !dbg !1137
  %5 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %4, align 8, !dbg !1137, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %6 = bitcast i32* %2 to i8*, !dbg !1142
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !1142
  %7 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %5, i64 0, i32 2, !dbg !1143
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 8, !dbg !1143, !tbaa !628
  %9 = call i32 @uk_thread_get_prio(%struct.uk_thread* %8, i32* nonnull %2) #10, !dbg !1143
  %10 = icmp eq i32 %9, 0, !dbg !1146
  %11 = select i1 %10, i32 0, i32 2, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  ret i32 %11, !dbg !1148
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_get_prio(%struct.uk_thread*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osThreadSetPriority(%struct.uk_thread* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1149 {
  %3 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %0, i64 0, i32 10, !dbg !1163
  %4 = bitcast i8** %3 to %struct.pte_thread_data_t**, !dbg !1163
  %5 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %4, align 8, !dbg !1163, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  %6 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %5, i64 0, i32 2, !dbg !1168
  %7 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !1168, !tbaa !628
  %8 = tail call i32 @uk_thread_set_prio(%struct.uk_thread* %7, i32 %1) #10, !dbg !1168
  %9 = icmp eq i32 %8, 0, !dbg !1170
  %10 = select i1 %9, i32 0, i32 2, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  ret i32 %10, !dbg !1171
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_set_prio(%struct.uk_thread*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pte_osThreadSleep(i32) local_unnamed_addr #0 !dbg !1172 {
  %2 = zext i32 %0 to i64, !dbg !1179
  %3 = mul nuw nsw i64 %2, 1000000, !dbg !1179
  tail call void @uk_sched_thread_sleep(i64 %3) #10, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  ret void, !dbg !1182
}

; Function Attrs: noredzone
declare dso_local void @uk_sched_thread_sleep(i64) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @pte_osThreadGetMinPriority() local_unnamed_addr #7 !dbg !1183 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  ret i32 0, !dbg !1184
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @pte_osThreadGetMaxPriority() local_unnamed_addr #7 !dbg !1185 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  ret i32 255, !dbg !1186
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @pte_osThreadGetDefaultPriority() local_unnamed_addr #7 !dbg !1187 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  ret i32 127, !dbg !1188
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexCreate(%struct.uk_mutex**) local_unnamed_addr #0 !dbg !1189 {
  %2 = icmp eq %struct.uk_mutex** %0, null, !dbg !1205
  br i1 %2, label %16, label %3, !dbg !1207

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1208, !tbaa !607
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !1212
  br i1 %5, label %6, label %8, !dbg !1213, !prof !680

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #10, !dbg !1214
  store i32 12, i32* %7, align 4, !dbg !1215, !tbaa !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br label %16, !dbg !1217

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 0, !dbg !1221
  %10 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %9, align 8, !dbg !1221, !tbaa !607
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %4, i64 32) #10, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  %12 = icmp eq i8* %11, null, !dbg !1224
  br i1 %12, label %16, label %13, !dbg !1217

; <label>:13:                                     ; preds = %8
  %14 = bitcast i8* %11 to %struct.uk_mutex*, !dbg !1226
  tail call void @uk_mutex_init(%struct.uk_mutex* %14) #10, !dbg !1228
  %15 = bitcast %struct.uk_mutex** %0 to i8**, !dbg !1229
  store i8* %11, i8** %15, align 8, !dbg !1229, !tbaa !607
  br label %16, !dbg !1230

; <label>:16:                                     ; preds = %6, %8, %1, %13
  %17 = phi i32 [ 0, %13 ], [ 5, %1 ], [ 1, %8 ], [ 1, %6 ], !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  ret i32 %17, !dbg !1232
}

; Function Attrs: noredzone
declare dso_local void @uk_mutex_init(%struct.uk_mutex*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexDelete(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1233 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !1239
  br i1 %2, label %5, label %3, !dbg !1241

; <label>:3:                                      ; preds = %1
  %4 = bitcast %struct.uk_mutex* %0 to i8*, !dbg !1242
  tail call void @free(i8* %4) #10, !dbg !1243
  br label %5, !dbg !1244

; <label>:5:                                      ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ 5, %1 ], !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  ret i32 %6, !dbg !1246
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1247 {
  %2 = alloca i32, align 4
  %3 = icmp eq %struct.uk_mutex* %0, null, !dbg !1272
  br i1 %3, label %113, label %4, !dbg !1274

; <label>:4:                                      ; preds = %1
  %5 = bitcast i32* %2 to i8*, !dbg !1277
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !1277
  %6 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !1278
  %7 = load i32, i32* %6, align 8, !dbg !1278, !tbaa !1279
  store volatile i32 %7, i32* %2, align 4, !dbg !1269, !tbaa !684
  %8 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !1281
  %9 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !1281, !tbaa !1282
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1284, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  %11 = and i64 %10, -65536, !dbg !1290
  %12 = inttoptr i64 %11 to %struct.uk_thread**, !dbg !1291
  %13 = load %struct.uk_thread*, %struct.uk_thread** %12, align 65536, !dbg !1293, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  %14 = icmp eq %struct.uk_thread* %9, %13
  %15 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0
  br label %17, !dbg !1296

; <label>:17:                                     ; preds = %110, %4
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1297, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  %19 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1305, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  %20 = and i64 %19, -65536, !dbg !1315
  %21 = or i64 %20, 4097, !dbg !1315
  %22 = add nsw i64 %21, -1, !dbg !1315
  %23 = inttoptr i64 %22 to i32*, !dbg !1316
  %24 = load i32, i32* %23, align 4096, !dbg !1317, !tbaa !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  %25 = sext i32 %24 to i64, !dbg !1319
  %26 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, !dbg !1319
  %27 = bitcast %struct.uk_waitq_entry* %26 to i8*, !dbg !1319
  %28 = tail call i8* @memset(i8* nonnull %27, i32 0, i64 24) #10, !dbg !1319
  %29 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1320, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  %30 = and i64 %29, -65536, !dbg !1326
  %31 = inttoptr i64 %30 to i64*, !dbg !1327
  %32 = load i64, i64* %31, align 65536, !dbg !1327, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %33 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, i32 1, !dbg !1319
  %34 = bitcast %struct.uk_thread** %33 to i64*, !dbg !1319
  store i64 %32, i64* %34, align 8, !dbg !1319, !tbaa !854
  %35 = load volatile i32, i32* %2, align 4, !dbg !1330, !tbaa !684
  %36 = icmp eq i32 %35, 0, !dbg !1332
  %37 = or i1 %14, %36, !dbg !1333
  br i1 %37, label %103, label %38, !dbg !1333

; <label>:38:                                     ; preds = %17
  %39 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %26, i64 0, i32 0
  %40 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %25, i32 2, i32 0
  br label %41, !dbg !1334

; <label>:41:                                     ; preds = %77, %38
  %42 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1334, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  %43 = and i64 %42, -65536, !dbg !1343
  %44 = inttoptr i64 %43 to %struct.uk_thread**, !dbg !1344
  %45 = load %struct.uk_thread*, %struct.uk_thread** %44, align 65536, !dbg !1346, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %46 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1349
  %47 = load i32, i32* %39, align 8, !dbg !1360, !tbaa !1362
  %48 = icmp eq i32 %47, 0, !dbg !1363
  br i1 %48, label %49, label %51, !dbg !1364

; <label>:49:                                     ; preds = %41
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %40, align 8, !dbg !1365, !tbaa !849
  %50 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %15, align 8, !dbg !1365, !tbaa !1368
  store %struct.uk_waitq_entry* %26, %struct.uk_waitq_entry** %50, align 8, !dbg !1365, !tbaa !607
  store %struct.uk_waitq_entry** %40, %struct.uk_waitq_entry*** %15, align 8, !dbg !1365, !tbaa !1368
  store i32 1, i32* %39, align 8, !dbg !1369, !tbaa !1362
  br label %51, !dbg !1370

; <label>:51:                                     ; preds = %49, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  %52 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 6, !dbg !1381
  store i64 0, i64* %52, align 8, !dbg !1382, !tbaa !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  %53 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 5, !dbg !1390
  %54 = load i32, i32* %53, align 8, !dbg !1391, !tbaa !1392
  %55 = and i32 %54, -2, !dbg !1391
  store i32 %55, i32* %53, align 8, !dbg !1391, !tbaa !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %56 = icmp eq %struct.uk_thread* %45, null, !dbg !1399
  br i1 %56, label %57, label %58, !dbg !1402, !prof !680

; <label>:57:                                     ; preds = %51
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1403
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1403
  unreachable, !dbg !1403

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %45, i64 0, i32 9, !dbg !1405
  %60 = load %struct.uk_sched*, %struct.uk_sched** %59, align 8, !dbg !1405, !tbaa !889
  %61 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %60, i64 0, i32 3, !dbg !1406
  %62 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %61, align 8, !dbg !1406, !tbaa !1407
  tail call void %62(%struct.uk_sched* %60, %struct.uk_thread* nonnull %45) #10, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  tail call void @ukplat_lcpu_restore_irqf(i64 %46) #10, !dbg !1410
  %63 = load volatile i32, i32* %2, align 4, !dbg !1411, !tbaa !684
  %64 = icmp eq i32 %63, 0, !dbg !1413
  br i1 %64, label %80, label %65, !dbg !1414

; <label>:65:                                     ; preds = %58
  %66 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1415, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  %67 = and i64 %66, -65536, !dbg !1422
  %68 = inttoptr i64 %67 to %struct.uk_thread**, !dbg !1423
  %69 = load %struct.uk_thread*, %struct.uk_thread** %68, align 65536, !dbg !1425, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %70 = icmp eq %struct.uk_thread* %69, null, !dbg !1428
  br i1 %70, label %71, label %72, !dbg !1429, !prof !680

; <label>:71:                                     ; preds = %65
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1430
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1430
  unreachable, !dbg !1430

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %69, i64 0, i32 9, !dbg !1431
  %74 = load %struct.uk_sched*, %struct.uk_sched** %73, align 8, !dbg !1431, !tbaa !889
  %75 = icmp eq %struct.uk_sched* %74, null, !dbg !1433
  br i1 %75, label %76, label %77, !dbg !1434, !prof !680

; <label>:76:                                     ; preds = %72
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1435
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1435
  unreachable, !dbg !1435

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %74, i64 0, i32 0, !dbg !1436
  %79 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %78, align 8, !dbg !1436, !tbaa !1036
  tail call void %79(%struct.uk_sched* nonnull %74) #10, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br label %41, !dbg !1439, !llvm.loop !1440

; <label>:80:                                     ; preds = %58
  %81 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1443
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %45) #10, !dbg !1444
  %82 = load i32, i32* %39, align 8, !dbg !1458, !tbaa !1362
  %83 = icmp eq i32 %82, 0, !dbg !1459
  br i1 %83, label %102, label %84, !dbg !1460

; <label>:84:                                     ; preds = %80
  %85 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %16, align 8, !dbg !1461, !tbaa !845
  %86 = icmp eq %struct.uk_waitq_entry* %85, %26, !dbg !1461
  br i1 %86, label %87, label %91, !dbg !1462

; <label>:87:                                     ; preds = %84
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %40, align 8, !dbg !1463, !tbaa !849
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %16, align 8, !dbg !1463, !tbaa !845
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !1463
  br i1 %89, label %90, label %101, !dbg !1467

; <label>:90:                                     ; preds = %87
  store %struct.uk_waitq_entry** %16, %struct.uk_waitq_entry*** %15, align 8, !dbg !1463, !tbaa !1368
  br label %101, !dbg !1463

; <label>:91:                                     ; preds = %84, %91
  %92 = phi %struct.uk_waitq_entry* [ %94, %91 ], [ %85, %84 ], !dbg !1468
  %93 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %92, i64 0, i32 2, i32 0, !dbg !1468
  %94 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %93, align 8, !dbg !1468, !tbaa !849
  %95 = icmp eq %struct.uk_waitq_entry* %94, %26, !dbg !1468
  br i1 %95, label %96, label %91, !dbg !1468, !llvm.loop !1469

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %92, i64 0, i32 2, i32 0, !dbg !1468
  %98 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %40, align 8, !dbg !1471, !tbaa !849
  store %struct.uk_waitq_entry* %98, %struct.uk_waitq_entry** %97, align 8, !dbg !1471, !tbaa !849
  %99 = icmp eq %struct.uk_waitq_entry* %98, null, !dbg !1471
  br i1 %99, label %100, label %101, !dbg !1474

; <label>:100:                                    ; preds = %96
  store %struct.uk_waitq_entry** %97, %struct.uk_waitq_entry*** %15, align 8, !dbg !1471, !tbaa !1368
  br label %101, !dbg !1471

; <label>:101:                                    ; preds = %100, %96, %90, %87
  store i32 0, i32* %39, align 8, !dbg !1475, !tbaa !1362
  br label %102, !dbg !1476

; <label>:102:                                    ; preds = %101, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  tail call void @ukplat_lcpu_restore_irqf(i64 %81) #10, !dbg !1478
  br label %103, !dbg !1479

; <label>:103:                                    ; preds = %102, %17
  %104 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1480
  %105 = load i32, i32* %6, align 8, !dbg !1482, !tbaa !1279
  %106 = icmp eq i32 %105, 0, !dbg !1484
  br i1 %106, label %111, label %107, !dbg !1485

; <label>:107:                                    ; preds = %103
  %108 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !1486, !tbaa !1282
  %109 = icmp eq %struct.uk_thread* %108, %13, !dbg !1487
  br i1 %109, label %111, label %110, !dbg !1488

; <label>:110:                                    ; preds = %107
  tail call void @ukplat_lcpu_restore_irqf(i64 %104) #10, !dbg !1489
  br label %17, !dbg !1490, !llvm.loop !1491

; <label>:111:                                    ; preds = %103, %107
  %112 = add nsw i32 %105, 1, !dbg !1494
  store i32 %112, i32* %6, align 8, !dbg !1494, !tbaa !1279
  store %struct.uk_thread* %13, %struct.uk_thread** %8, align 8, !dbg !1495, !tbaa !1282
  tail call void @ukplat_lcpu_restore_irqf(i64 %104) #10, !dbg !1496
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br label %113, !dbg !1498

; <label>:113:                                    ; preds = %1, %111
  %114 = phi i32 [ 0, %111 ], [ 5, %1 ], !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  ret i32 %114, !dbg !1500
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexTimedLock(%struct.uk_mutex* nocapture readnone, i32) local_unnamed_addr #0 !dbg !1501 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  ret i32 2, !dbg !1509
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #0 !dbg !1510 {
  %2 = icmp eq %struct.uk_mutex* %0, null, !dbg !1514
  br i1 %2, label %27, label %3, !dbg !1516

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1525
  %5 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 0, !dbg !1527
  %6 = load i32, i32* %5, align 8, !dbg !1527, !tbaa !1279
  %7 = icmp slt i32 %6, 1, !dbg !1527
  br i1 %7, label %8, label %9, !dbg !1530, !prof !680

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1531
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1531
  unreachable, !dbg !1531

; <label>:9:                                      ; preds = %3
  %10 = add nsw i32 %6, -1, !dbg !1533
  store i32 %10, i32* %5, align 8, !dbg !1533, !tbaa !1279
  %11 = icmp eq i32 %10, 0, !dbg !1535
  br i1 %11, label %12, label %26, !dbg !1536

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 1, !dbg !1537
  store %struct.uk_thread* null, %struct.uk_thread** %13, align 8, !dbg !1539, !tbaa !1282
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1542
  %15 = getelementptr inbounds %struct.uk_mutex, %struct.uk_mutex* %0, i64 0, i32 2, i32 0, !dbg !1544
  %16 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1544, !tbaa !845
  %17 = icmp eq %struct.uk_waitq_entry* %16, null, !dbg !1546
  br i1 %17, label %25, label %18, !dbg !1546

; <label>:18:                                     ; preds = %12, %18
  %19 = phi %struct.uk_waitq_entry* [ %21, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 2, i32 0, !dbg !1546
  %21 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %20, align 8, !dbg !1546, !tbaa !849
  %22 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 1, !dbg !1548
  %23 = load %struct.uk_thread*, %struct.uk_thread** %22, align 8, !dbg !1548, !tbaa !854
  tail call void @uk_thread_wake(%struct.uk_thread* %23) #10, !dbg !1549
  %24 = icmp eq %struct.uk_waitq_entry* %21, null, !dbg !1546
  br i1 %24, label %25, label %18, !dbg !1546, !llvm.loop !856

; <label>:25:                                     ; preds = %18, %12
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #10, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br label %26, !dbg !1552

; <label>:26:                                     ; preds = %9, %25
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #10, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  br label %27, !dbg !1555

; <label>:27:                                     ; preds = %1, %26
  %28 = phi i32 [ 0, %26 ], [ 5, %1 ], !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  ret i32 %28, !dbg !1557
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreCreate(i32, %struct.uk_semaphore**) local_unnamed_addr #0 !dbg !1558 {
  %3 = icmp eq %struct.uk_semaphore** %1, null, !dbg !1569
  br i1 %3, label %18, label %4, !dbg !1571

; <label>:4:                                      ; preds = %2
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1572, !tbaa !607
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !1576
  br i1 %6, label %7, label %9, !dbg !1577, !prof !680

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno() #10, !dbg !1578
  store i32 12, i32* %8, align 4, !dbg !1579, !tbaa !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br label %18, !dbg !1581

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 0, !dbg !1585
  %11 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %10, align 8, !dbg !1585, !tbaa !607
  %12 = tail call i8* %11(%struct.uk_alloc* nonnull %5, i64 24) #10, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  %13 = icmp eq i8* %12, null, !dbg !1588
  br i1 %13, label %18, label %14, !dbg !1581

; <label>:14:                                     ; preds = %9
  %15 = bitcast i8* %12 to %struct.uk_semaphore*, !dbg !1590
  %16 = sext i32 %0 to i64, !dbg !1592
  tail call void @uk_semaphore_init(%struct.uk_semaphore* %15, i64 %16) #10, !dbg !1593
  %17 = bitcast %struct.uk_semaphore** %1 to i8**, !dbg !1594
  store i8* %12, i8** %17, align 8, !dbg !1594, !tbaa !607
  br label %18, !dbg !1595

; <label>:18:                                     ; preds = %7, %9, %2, %14
  %19 = phi i32 [ 0, %14 ], [ 5, %2 ], [ 1, %9 ], [ 1, %7 ], !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  ret i32 %19, !dbg !1597
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreDelete(%struct.uk_semaphore*) local_unnamed_addr #0 !dbg !1598 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1604
  br i1 %2, label %11, label %3, !dbg !1606

; <label>:3:                                      ; preds = %1
  %4 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1607, !tbaa !607
  %5 = icmp eq %struct.uk_alloc* %4, null, !dbg !1620
  br i1 %5, label %6, label %7, !dbg !1623, !prof !680

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1624
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1624
  unreachable, !dbg !1624

; <label>:7:                                      ; preds = %3
  %8 = bitcast %struct.uk_semaphore* %0 to i8*, !dbg !1626
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %4, i64 0, i32 5, !dbg !1629
  %10 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %9, align 8, !dbg !1629, !tbaa !607
  tail call void %10(%struct.uk_alloc* nonnull %4, i8* %8) #10, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  br label %11, !dbg !1633

; <label>:11:                                     ; preds = %1, %7
  %12 = phi i32 [ 0, %7 ], [ 5, %1 ], !dbg !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  ret i32 %12, !dbg !1635
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphorePost(%struct.uk_semaphore*, i32) local_unnamed_addr #0 !dbg !1636 {
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1645
  br i1 %3, label %27, label %4, !dbg !1647

; <label>:4:                                      ; preds = %2
  %5 = icmp sgt i32 %1, 0, !dbg !1649
  br i1 %5, label %6, label %27, !dbg !1652

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %9, !dbg !1652

; <label>:9:                                      ; preds = %24, %6
  %10 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1655
  %12 = load i64, i64* %7, align 8, !dbg !1657, !tbaa !827
  %13 = add nsw i64 %12, 1, !dbg !1657
  store i64 %13, i64* %7, align 8, !dbg !1657, !tbaa !827
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1661
  %15 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %8, align 8, !dbg !1663, !tbaa !845
  %16 = icmp eq %struct.uk_waitq_entry* %15, null, !dbg !1665
  br i1 %16, label %24, label %17, !dbg !1665

; <label>:17:                                     ; preds = %9, %17
  %18 = phi %struct.uk_waitq_entry* [ %20, %17 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 2, i32 0, !dbg !1665
  %20 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %19, align 8, !dbg !1665, !tbaa !849
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 1, !dbg !1667
  %22 = load %struct.uk_thread*, %struct.uk_thread** %21, align 8, !dbg !1667, !tbaa !854
  tail call void @uk_thread_wake(%struct.uk_thread* %22) #10, !dbg !1668
  %23 = icmp eq %struct.uk_waitq_entry* %20, null, !dbg !1665
  br i1 %23, label %24, label %17, !dbg !1665, !llvm.loop !856

; <label>:24:                                     ; preds = %17, %9
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #10, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #10, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  %25 = add nuw nsw i32 %10, 1, !dbg !1673
  %26 = icmp eq i32 %25, %1, !dbg !1649
  br i1 %26, label %27, label %9, !dbg !1652, !llvm.loop !1674

; <label>:27:                                     ; preds = %24, %4, %2
  %28 = phi i32 [ 5, %2 ], [ 0, %4 ], [ 0, %24 ], !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  ret i32 %28, !dbg !1677
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32* readonly) local_unnamed_addr #0 !dbg !1678 {
  %3 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1688
  br i1 %3, label %126, label %4, !dbg !1690

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !1691
  br i1 %5, label %124, label %6, !dbg !1693

; <label>:6:                                      ; preds = %4
  %7 = load i32, i32* %1, align 4, !dbg !1694, !tbaa !684
  %8 = zext i32 %7 to i64, !dbg !1694
  %9 = mul nuw nsw i64 %8, 1000000, !dbg !1694
  %10 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1718
  %11 = add i64 %9, %10, !dbg !1720
  %12 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %14 = icmp eq i64 %11, 0
  %15 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %16, !dbg !1722

; <label>:16:                                     ; preds = %113, %6
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1723, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1731, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  %19 = and i64 %18, -65536, !dbg !1737
  %20 = or i64 %19, 4097, !dbg !1737
  %21 = add nsw i64 %20, -1, !dbg !1737
  %22 = inttoptr i64 %21 to i32*, !dbg !1738
  %23 = load i32, i32* %22, align 4096, !dbg !1739, !tbaa !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  %24 = sext i32 %23 to i64, !dbg !1741
  %25 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, !dbg !1741
  %26 = bitcast %struct.uk_waitq_entry* %25 to i8*, !dbg !1741
  %27 = tail call i8* @memset(i8* nonnull %26, i32 0, i64 24) #10, !dbg !1741
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1742, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  %29 = and i64 %28, -65536, !dbg !1748
  %30 = inttoptr i64 %29 to i64*, !dbg !1749
  %31 = load i64, i64* %30, align 65536, !dbg !1749, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  %32 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, i32 1, !dbg !1741
  %33 = bitcast %struct.uk_thread** %32 to i64*, !dbg !1741
  store i64 %31, i64* %33, align 8, !dbg !1741, !tbaa !854
  %34 = load i64, i64* %12, align 8, !dbg !1752, !tbaa !827
  %35 = icmp sgt i64 %34, 0, !dbg !1754
  br i1 %35, label %105, label %36, !dbg !1755

; <label>:36:                                     ; preds = %16
  %37 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %25, i64 0, i32 0
  %38 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %24, i32 2, i32 0
  br label %39, !dbg !1756

; <label>:39:                                     ; preds = %79, %36
  %40 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1756, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  %41 = and i64 %40, -65536, !dbg !1765
  %42 = inttoptr i64 %41 to %struct.uk_thread**, !dbg !1766
  %43 = load %struct.uk_thread*, %struct.uk_thread** %42, align 65536, !dbg !1768, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  %44 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1771
  %45 = load i32, i32* %37, align 8, !dbg !1776, !tbaa !1362
  %46 = icmp eq i32 %45, 0, !dbg !1777
  br i1 %46, label %47, label %49, !dbg !1778

; <label>:47:                                     ; preds = %39
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %38, align 8, !dbg !1779, !tbaa !849
  %48 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %13, align 8, !dbg !1779, !tbaa !1368
  store %struct.uk_waitq_entry* %25, %struct.uk_waitq_entry** %48, align 8, !dbg !1779, !tbaa !607
  store %struct.uk_waitq_entry** %38, %struct.uk_waitq_entry*** %13, align 8, !dbg !1779, !tbaa !1368
  store i32 1, i32* %37, align 8, !dbg !1780, !tbaa !1362
  br label %49, !dbg !1781

; <label>:49:                                     ; preds = %47, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 6, !dbg !1786
  store i64 %11, i64* %50, align 8, !dbg !1787, !tbaa !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  %51 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 5, !dbg !1791
  %52 = load i32, i32* %51, align 8, !dbg !1792, !tbaa !1392
  %53 = and i32 %52, -2, !dbg !1792
  store i32 %53, i32* %51, align 8, !dbg !1792, !tbaa !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  %54 = icmp eq %struct.uk_thread* %43, null, !dbg !1796
  br i1 %54, label %55, label %56, !dbg !1797, !prof !680

; <label>:55:                                     ; preds = %49
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1798
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1798
  unreachable, !dbg !1798

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %43, i64 0, i32 9, !dbg !1799
  %58 = load %struct.uk_sched*, %struct.uk_sched** %57, align 8, !dbg !1799, !tbaa !889
  %59 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %58, i64 0, i32 3, !dbg !1800
  %60 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %59, align 8, !dbg !1800, !tbaa !1407
  tail call void %60(%struct.uk_sched* %58, %struct.uk_thread* nonnull %43) #10, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  tail call void @ukplat_lcpu_restore_irqf(i64 %44) #10, !dbg !1803
  %61 = load i64, i64* %12, align 8, !dbg !1804, !tbaa !827
  %62 = icmp sgt i64 %61, 0, !dbg !1806
  br i1 %62, label %82, label %63, !dbg !1807

; <label>:63:                                     ; preds = %56
  br i1 %14, label %67, label %64, !dbg !1808

; <label>:64:                                     ; preds = %63
  %65 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1809
  %66 = icmp ult i64 %65, %11, !dbg !1810
  br i1 %66, label %67, label %82, !dbg !1811

; <label>:67:                                     ; preds = %64, %63
  %68 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1812, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  %69 = and i64 %68, -65536, !dbg !1819
  %70 = inttoptr i64 %69 to %struct.uk_thread**, !dbg !1820
  %71 = load %struct.uk_thread*, %struct.uk_thread** %70, align 65536, !dbg !1822, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  %72 = icmp eq %struct.uk_thread* %71, null, !dbg !1825
  br i1 %72, label %73, label %74, !dbg !1826, !prof !680

; <label>:73:                                     ; preds = %67
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1827
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1827
  unreachable, !dbg !1827

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %71, i64 0, i32 9, !dbg !1828
  %76 = load %struct.uk_sched*, %struct.uk_sched** %75, align 8, !dbg !1828, !tbaa !889
  %77 = icmp eq %struct.uk_sched* %76, null, !dbg !1830
  br i1 %77, label %78, label %79, !dbg !1831, !prof !680

; <label>:78:                                     ; preds = %74
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1832
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1832
  unreachable, !dbg !1832

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %76, i64 0, i32 0, !dbg !1833
  %81 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %80, align 8, !dbg !1833, !tbaa !1036
  tail call void %81(%struct.uk_sched* nonnull %76) #10, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  br label %39, !dbg !1836, !llvm.loop !1837

; <label>:82:                                     ; preds = %64, %56
  %83 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1840
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %43) #10, !dbg !1841
  %84 = load i32, i32* %37, align 8, !dbg !1845, !tbaa !1362
  %85 = icmp eq i32 %84, 0, !dbg !1846
  br i1 %85, label %104, label %86, !dbg !1847

; <label>:86:                                     ; preds = %82
  %87 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %15, align 8, !dbg !1848, !tbaa !845
  %88 = icmp eq %struct.uk_waitq_entry* %87, %25, !dbg !1848
  br i1 %88, label %89, label %93, !dbg !1849

; <label>:89:                                     ; preds = %86
  %90 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %38, align 8, !dbg !1850, !tbaa !849
  store %struct.uk_waitq_entry* %90, %struct.uk_waitq_entry** %15, align 8, !dbg !1850, !tbaa !845
  %91 = icmp eq %struct.uk_waitq_entry* %90, null, !dbg !1850
  br i1 %91, label %92, label %103, !dbg !1851

; <label>:92:                                     ; preds = %89
  store %struct.uk_waitq_entry** %15, %struct.uk_waitq_entry*** %13, align 8, !dbg !1850, !tbaa !1368
  br label %103, !dbg !1850

; <label>:93:                                     ; preds = %86, %93
  %94 = phi %struct.uk_waitq_entry* [ %96, %93 ], [ %87, %86 ], !dbg !1852
  %95 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %94, i64 0, i32 2, i32 0, !dbg !1852
  %96 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %95, align 8, !dbg !1852, !tbaa !849
  %97 = icmp eq %struct.uk_waitq_entry* %96, %25, !dbg !1852
  br i1 %97, label %98, label %93, !dbg !1852, !llvm.loop !1469

; <label>:98:                                     ; preds = %93
  %99 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %94, i64 0, i32 2, i32 0, !dbg !1852
  %100 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %38, align 8, !dbg !1853, !tbaa !849
  store %struct.uk_waitq_entry* %100, %struct.uk_waitq_entry** %99, align 8, !dbg !1853, !tbaa !849
  %101 = icmp eq %struct.uk_waitq_entry* %100, null, !dbg !1853
  br i1 %101, label %102, label %103, !dbg !1854

; <label>:102:                                    ; preds = %98
  store %struct.uk_waitq_entry** %99, %struct.uk_waitq_entry*** %13, align 8, !dbg !1853, !tbaa !1368
  br label %103, !dbg !1853

; <label>:103:                                    ; preds = %102, %98, %92, %89
  store i32 0, i32* %37, align 8, !dbg !1855, !tbaa !1362
  br label %104, !dbg !1856

; <label>:104:                                    ; preds = %103, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  tail call void @ukplat_lcpu_restore_irqf(i64 %83) #10, !dbg !1858
  br label %105, !dbg !1859

; <label>:105:                                    ; preds = %104, %16
  %106 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1860
  %107 = load i64, i64* %12, align 8, !dbg !1862, !tbaa !827
  %108 = icmp sgt i64 %107, 0, !dbg !1864
  br i1 %108, label %118, label %109, !dbg !1865

; <label>:109:                                    ; preds = %105
  br i1 %14, label %113, label %110, !dbg !1866

; <label>:110:                                    ; preds = %109
  %111 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1867
  %112 = icmp ult i64 %111, %11, !dbg !1868
  br i1 %112, label %113, label %114, !dbg !1869

; <label>:113:                                    ; preds = %110, %109
  tail call void @ukplat_lcpu_restore_irqf(i64 %106) #10, !dbg !1870
  br label %16, !dbg !1871, !llvm.loop !1872

; <label>:114:                                    ; preds = %110
  %115 = load i64, i64* %12, align 8, !dbg !1875, !tbaa !827
  %116 = icmp sgt i64 %115, 0, !dbg !1877
  br i1 %116, label %118, label %117, !dbg !1878

; <label>:117:                                    ; preds = %114
  tail call void @ukplat_lcpu_restore_irqf(i64 %106) #10, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br label %126, !dbg !1881

; <label>:118:                                    ; preds = %105, %114
  %119 = phi i64 [ %115, %114 ], [ %107, %105 ]
  %120 = add nsw i64 %119, -1, !dbg !1882
  store i64 %120, i64* %12, align 8, !dbg !1882, !tbaa !827
  tail call void @ukplat_lcpu_restore_irqf(i64 %106) #10, !dbg !1884
  %121 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !1885
  %122 = sub i64 %121, %10, !dbg !1886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  %123 = icmp eq i64 %122, -1, !dbg !1887
  br i1 %123, label %126, label %125, !dbg !1881

; <label>:124:                                    ; preds = %4
  tail call fastcc void @uk_semaphore_down(%struct.uk_semaphore* nonnull %0) #9, !dbg !1888
  br label %125

; <label>:125:                                    ; preds = %118, %124
  br label %126, !dbg !1889

; <label>:126:                                    ; preds = %117, %118, %2, %125
  %127 = phi i32 [ 0, %125 ], [ 5, %2 ], [ 3, %118 ], [ 3, %117 ], !dbg !1890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  ret i32 %127, !dbg !1891
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @uk_semaphore_down(%struct.uk_semaphore*) unnamed_addr #4 !dbg !1892 {
  %2 = icmp eq %struct.uk_semaphore* %0, null, !dbg !1905
  br i1 %2, label %7, label %3, !dbg !1908, !prof !680

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 1, i32 0
  br label %8, !dbg !1909

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !1912
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1912
  unreachable, !dbg !1912

; <label>:8:                                      ; preds = %3, %97
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1909, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1919, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  %11 = and i64 %10, -65536, !dbg !1925
  %12 = or i64 %11, 4097, !dbg !1925
  %13 = add nsw i64 %12, -1, !dbg !1925
  %14 = inttoptr i64 %13 to i32*, !dbg !1926
  %15 = load i32, i32* %14, align 4096, !dbg !1927, !tbaa !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  %16 = sext i32 %15 to i64, !dbg !1929
  %17 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, !dbg !1929
  %18 = bitcast %struct.uk_waitq_entry* %17 to i8*, !dbg !1929
  %19 = tail call i8* @memset(i8* nonnull %18, i32 0, i64 24) #10, !dbg !1929
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1930, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1934
  %21 = and i64 %20, -65536, !dbg !1936
  %22 = inttoptr i64 %21 to i64*, !dbg !1937
  %23 = load i64, i64* %22, align 65536, !dbg !1937, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1939
  %24 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 1, !dbg !1929
  %25 = bitcast %struct.uk_thread** %24 to i64*, !dbg !1929
  store i64 %23, i64* %25, align 8, !dbg !1929, !tbaa !854
  %26 = load i64, i64* %4, align 8, !dbg !1940, !tbaa !827
  %27 = icmp sgt i64 %26, 0, !dbg !1942
  br i1 %27, label %93, label %28, !dbg !1943

; <label>:28:                                     ; preds = %8
  %29 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %17, i64 0, i32 0
  %30 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %16, i32 2, i32 0
  br label %31, !dbg !1944

; <label>:31:                                     ; preds = %28, %67
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1944, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  %33 = and i64 %32, -65536, !dbg !1953
  %34 = inttoptr i64 %33 to %struct.uk_thread**, !dbg !1954
  %35 = load %struct.uk_thread*, %struct.uk_thread** %34, align 65536, !dbg !1956, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !1959
  %37 = load i32, i32* %29, align 8, !dbg !1964, !tbaa !1362
  %38 = icmp eq i32 %37, 0, !dbg !1965
  br i1 %38, label %39, label %41, !dbg !1966

; <label>:39:                                     ; preds = %31
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %30, align 8, !dbg !1967, !tbaa !849
  %40 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** %5, align 8, !dbg !1967, !tbaa !1368
  store %struct.uk_waitq_entry* %17, %struct.uk_waitq_entry** %40, align 8, !dbg !1967, !tbaa !607
  store %struct.uk_waitq_entry** %30, %struct.uk_waitq_entry*** %5, align 8, !dbg !1967, !tbaa !1368
  store i32 1, i32* %29, align 8, !dbg !1968, !tbaa !1362
  br label %41, !dbg !1969

; <label>:41:                                     ; preds = %31, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 6, !dbg !1974
  store i64 0, i64* %42, align 8, !dbg !1975, !tbaa !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  %43 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 5, !dbg !1979
  %44 = load i32, i32* %43, align 8, !dbg !1980, !tbaa !1392
  %45 = and i32 %44, -2, !dbg !1980
  store i32 %45, i32* %43, align 8, !dbg !1980, !tbaa !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  %46 = icmp eq %struct.uk_thread* %35, null, !dbg !1984
  br i1 %46, label %47, label %48, !dbg !1985, !prof !680

; <label>:47:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1986
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1986
  unreachable, !dbg !1986

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %35, i64 0, i32 9, !dbg !1987
  %50 = load %struct.uk_sched*, %struct.uk_sched** %49, align 8, !dbg !1987, !tbaa !889
  %51 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %50, i64 0, i32 3, !dbg !1988
  %52 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %51, align 8, !dbg !1988, !tbaa !1407
  tail call void %52(%struct.uk_sched* %50, %struct.uk_thread* nonnull %35) #10, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #10, !dbg !1991
  %53 = load i64, i64* %4, align 8, !dbg !1992, !tbaa !827
  %54 = icmp sgt i64 %53, 0, !dbg !1994
  br i1 %54, label %70, label %55, !dbg !1995

; <label>:55:                                     ; preds = %48
  %56 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1996, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  %57 = and i64 %56, -65536, !dbg !2003
  %58 = inttoptr i64 %57 to %struct.uk_thread**, !dbg !2004
  %59 = load %struct.uk_thread*, %struct.uk_thread** %58, align 65536, !dbg !2006, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  %60 = icmp eq %struct.uk_thread* %59, null, !dbg !2009
  br i1 %60, label %61, label %62, !dbg !2010, !prof !680

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !2011
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2011
  unreachable, !dbg !2011

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %59, i64 0, i32 9, !dbg !2012
  %64 = load %struct.uk_sched*, %struct.uk_sched** %63, align 8, !dbg !2012, !tbaa !889
  %65 = icmp eq %struct.uk_sched* %64, null, !dbg !2014
  br i1 %65, label %66, label %67, !dbg !2015, !prof !680

; <label>:66:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2016
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2016
  unreachable, !dbg !2016

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %64, i64 0, i32 0, !dbg !2017
  %69 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %68, align 8, !dbg !2017, !tbaa !1036
  tail call void %69(%struct.uk_sched* nonnull %64) #10, !dbg !2018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  br label %31, !dbg !2020, !llvm.loop !2021

; <label>:70:                                     ; preds = %48
  %71 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2024
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %35) #10, !dbg !2025
  %72 = load i32, i32* %29, align 8, !dbg !2029, !tbaa !1362
  %73 = icmp eq i32 %72, 0, !dbg !2030
  br i1 %73, label %92, label %74, !dbg !2031

; <label>:74:                                     ; preds = %70
  %75 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %6, align 8, !dbg !2032, !tbaa !845
  %76 = icmp eq %struct.uk_waitq_entry* %75, %17, !dbg !2032
  br i1 %76, label %77, label %81, !dbg !2033

; <label>:77:                                     ; preds = %74
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2034, !tbaa !849
  store %struct.uk_waitq_entry* %78, %struct.uk_waitq_entry** %6, align 8, !dbg !2034, !tbaa !845
  %79 = icmp eq %struct.uk_waitq_entry* %78, null, !dbg !2034
  br i1 %79, label %80, label %91, !dbg !2035

; <label>:80:                                     ; preds = %77
  store %struct.uk_waitq_entry** %6, %struct.uk_waitq_entry*** %5, align 8, !dbg !2034, !tbaa !1368
  br label %91, !dbg !2034

; <label>:81:                                     ; preds = %74, %81
  %82 = phi %struct.uk_waitq_entry* [ %84, %81 ], [ %75, %74 ], !dbg !2036
  %83 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !2036
  %84 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %83, align 8, !dbg !2036, !tbaa !849
  %85 = icmp eq %struct.uk_waitq_entry* %84, %17, !dbg !2036
  br i1 %85, label %86, label %81, !dbg !2036, !llvm.loop !1469

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %82, i64 0, i32 2, i32 0, !dbg !2036
  %88 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %30, align 8, !dbg !2037, !tbaa !849
  store %struct.uk_waitq_entry* %88, %struct.uk_waitq_entry** %87, align 8, !dbg !2037, !tbaa !849
  %89 = icmp eq %struct.uk_waitq_entry* %88, null, !dbg !2037
  br i1 %89, label %90, label %91, !dbg !2038

; <label>:90:                                     ; preds = %86
  store %struct.uk_waitq_entry** %87, %struct.uk_waitq_entry*** %5, align 8, !dbg !2037, !tbaa !1368
  br label %91, !dbg !2037

; <label>:91:                                     ; preds = %90, %86, %80, %77
  store i32 0, i32* %29, align 8, !dbg !2039, !tbaa !1362
  br label %92, !dbg !2040

; <label>:92:                                     ; preds = %70, %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  tail call void @ukplat_lcpu_restore_irqf(i64 %71) #10, !dbg !2042
  br label %93, !dbg !2043

; <label>:93:                                     ; preds = %8, %92
  %94 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2044
  %95 = load i64, i64* %4, align 8, !dbg !2046, !tbaa !827
  %96 = icmp sgt i64 %95, 0, !dbg !2048
  br i1 %96, label %98, label %97, !dbg !2049

; <label>:97:                                     ; preds = %93
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #10, !dbg !2050
  br label %8, !dbg !2051, !llvm.loop !2052

; <label>:98:                                     ; preds = %93
  %99 = add nsw i64 %95, -1, !dbg !2055
  store i64 %99, i64* %4, align 8, !dbg !2055, !tbaa !827
  tail call void @ukplat_lcpu_restore_irqf(i64 %94) #10, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  ret void, !dbg !2057
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osSemaphoreCancellablePend(%struct.uk_semaphore*, i32* readonly) local_unnamed_addr #0 !dbg !2058 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2068, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  %4 = and i64 %3, -65536, !dbg !2075
  %5 = inttoptr i64 %4 to %struct.uk_thread**, !dbg !2076
  %6 = load %struct.uk_thread*, %struct.uk_thread** %5, align 65536, !dbg !2078, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2079
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %6, i64 0, i32 10, !dbg !2083
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !2083
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !2083, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  %10 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !2090
  %11 = icmp eq i32* %1, null, !dbg !2092
  br i1 %11, label %16, label %12, !dbg !2094

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %1, align 4, !dbg !2095, !tbaa !684
  %14 = zext i32 %13 to i64, !dbg !2095
  %15 = mul nuw nsw i64 %14, 1000000, !dbg !2095
  br label %16, !dbg !2096

; <label>:16:                                     ; preds = %2, %12
  %17 = phi i64 [ %15, %12 ], [ 0, %2 ], !dbg !2097
  %18 = icmp eq %struct.uk_semaphore* %0, null, !dbg !2110
  br i1 %18, label %27, label %19, !dbg !2113, !prof !680

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.uk_semaphore, %struct.uk_semaphore* %0, i64 0, i32 0
  %21 = icmp eq i64 %17, 0
  %22 = icmp eq %struct.pte_thread_data_t* %9, null
  %23 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 5, i32 0
  %24 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2114
  %25 = load i64, i64* %20, align 8, !dbg !2116, !tbaa !827
  %26 = icmp sgt i64 %25, 0, !dbg !2118
  br i1 %26, label %28, label %32, !dbg !2119

; <label>:27:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2120
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2120
  unreachable, !dbg !2120

; <label>:28:                                     ; preds = %54, %19
  %29 = phi i64 [ %24, %19 ], [ %57, %54 ], !dbg !2114
  %30 = phi i64 [ %25, %19 ], [ %58, %54 ], !dbg !2116
  %31 = add nsw i64 %30, -1, !dbg !2122
  store i64 %31, i64* %20, align 8, !dbg !2122, !tbaa !827
  tail call void @ukplat_lcpu_restore_irqf(i64 %29) #10, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br label %60, !dbg !2126

; <label>:32:                                     ; preds = %19, %54
  %33 = phi i64 [ %57, %54 ], [ %24, %19 ]
  tail call void @ukplat_lcpu_restore_irqf(i64 %33) #10, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %21, label %38, label %34, !dbg !2127

; <label>:34:                                     ; preds = %32
  %35 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !2129
  %36 = sub i64 %35, %10, !dbg !2130
  %37 = icmp ugt i64 %36, %17, !dbg !2131
  br i1 %37, label %60, label %38, !dbg !2132

; <label>:38:                                     ; preds = %32, %34
  br i1 %22, label %42, label %39, !dbg !2133

; <label>:39:                                     ; preds = %38
  %40 = load i64, i64* %23, align 8, !dbg !2135, !tbaa !1001
  %41 = icmp sgt i64 %40, 0, !dbg !2136
  br i1 %41, label %60, label %42, !dbg !2137

; <label>:42:                                     ; preds = %38, %39
  %43 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2138, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  %44 = and i64 %43, -65536, !dbg !2145
  %45 = inttoptr i64 %44 to %struct.uk_thread**, !dbg !2146
  %46 = load %struct.uk_thread*, %struct.uk_thread** %45, align 65536, !dbg !2148, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  %47 = icmp eq %struct.uk_thread* %46, null, !dbg !2151
  br i1 %47, label %48, label %49, !dbg !2152, !prof !680

; <label>:48:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !2153
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2153
  unreachable, !dbg !2153

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %46, i64 0, i32 9, !dbg !2154
  %51 = load %struct.uk_sched*, %struct.uk_sched** %50, align 8, !dbg !2154, !tbaa !889
  %52 = icmp eq %struct.uk_sched* %51, null, !dbg !2156
  br i1 %52, label %53, label %54, !dbg !2157, !prof !680

; <label>:53:                                     ; preds = %49
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2158
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2158
  unreachable, !dbg !2158

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %51, i64 0, i32 0, !dbg !2159
  %56 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %55, align 8, !dbg !2159, !tbaa !1036
  tail call void %56(%struct.uk_sched* nonnull %51) #10, !dbg !2160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  %57 = tail call i64 @ukplat_lcpu_save_irqf() #10, !dbg !2114
  %58 = load i64, i64* %20, align 8, !dbg !2116, !tbaa !827
  %59 = icmp sgt i64 %58, 0, !dbg !2118
  br i1 %59, label %28, label %32, !dbg !2119

; <label>:60:                                     ; preds = %39, %34, %28
  %61 = phi i32 [ 0, %28 ], [ 4, %39 ], [ 3, %34 ], !dbg !2162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2164
  ret i32 %61, !dbg !2164
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsSetValue(i32, i8*) local_unnamed_addr #0 !dbg !2165 {
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2173, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  %4 = and i64 %3, -65536, !dbg !2186
  %5 = inttoptr i64 %4 to %struct.uk_thread**, !dbg !2187
  %6 = load %struct.uk_thread*, %struct.uk_thread** %5, align 65536, !dbg !2189, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  %7 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %6, i64 0, i32 10, !dbg !2194
  %8 = bitcast i8** %7 to %struct.pte_thread_data_t**, !dbg !2194
  %9 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %8, align 8, !dbg !2194, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  %10 = icmp eq %struct.pte_thread_data_t* %9, null, !dbg !2199
  br i1 %10, label %14, label %11, !dbg !2199

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %9, i64 0, i32 3, !dbg !2200
  %13 = load i8*, i8** %12, align 8, !dbg !2200, !tbaa !568
  br label %14, !dbg !2199

; <label>:14:                                     ; preds = %2, %11
  %15 = phi i8* [ %13, %11 ], [ null, %2 ], !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2201
  %16 = tail call i32 @pteTlsSetValue(i8* %15, i32 %0, i8* %1) #10, !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  ret i32 %16, !dbg !2203
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsSetValue(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @pte_osTlsGetValue(i32) local_unnamed_addr #0 !dbg !2204 {
  %2 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2210, !srcloc !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  %3 = and i64 %2, -65536, !dbg !2218
  %4 = inttoptr i64 %3 to %struct.uk_thread**, !dbg !2219
  %5 = load %struct.uk_thread*, %struct.uk_thread** %4, align 65536, !dbg !2221, !tbaa !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  %6 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %5, i64 0, i32 10, !dbg !2226
  %7 = bitcast i8** %6 to %struct.pte_thread_data_t**, !dbg !2226
  %8 = load %struct.pte_thread_data_t*, %struct.pte_thread_data_t** %7, align 8, !dbg !2226, !tbaa !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  %9 = icmp eq %struct.pte_thread_data_t* %8, null, !dbg !2231
  br i1 %9, label %13, label %10, !dbg !2231

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.pte_thread_data_t, %struct.pte_thread_data_t* %8, i64 0, i32 3, !dbg !2232
  %12 = load i8*, i8** %11, align 8, !dbg !2232, !tbaa !568
  br label %13, !dbg !2231

; <label>:13:                                     ; preds = %1, %10
  %14 = phi i8* [ %12, %10 ], [ null, %1 ], !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  %15 = tail call i8* @pteTlsGetValue(i8* %14, i32 %0) #10, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  ret i8* %15, !dbg !2235
}

; Function Attrs: noredzone
declare dso_local i8* @pteTlsGetValue(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsAlloc(i32*) local_unnamed_addr #0 !dbg !2236 {
  %2 = tail call i32 @pteTlsAlloc(i32* %0) #10, !dbg !2242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2243
  ret i32 %2, !dbg !2243
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsAlloc(i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_osTlsFree(i32) local_unnamed_addr #0 !dbg !2244 {
  %2 = tail call i32 @pteTlsFree(i32 %0) #10, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2251
  ret i32 %2, !dbg !2251
}

; Function Attrs: noredzone
declare dso_local i32 @pteTlsFree(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ftime(%struct.timeb*) local_unnamed_addr #0 !dbg !2252 {
  %2 = tail call i64 @ukplat_monotonic_clock() #10, !dbg !2269
  %3 = icmp eq %struct.timeb* %0, null, !dbg !2271
  br i1 %3, label %11, label %4, !dbg !2273

; <label>:4:                                      ; preds = %1
  %5 = udiv i64 %2, 1000000000, !dbg !2274
  %6 = getelementptr inbounds %struct.timeb, %struct.timeb* %0, i64 0, i32 0, !dbg !2276
  store i64 %5, i64* %6, align 8, !dbg !2277, !tbaa !2278
  %7 = urem i64 %2, 1000000000, !dbg !2281
  %8 = udiv i64 %7, 1000000, !dbg !2281
  %9 = trunc i64 %8 to i16, !dbg !2281
  %10 = getelementptr inbounds %struct.timeb, %struct.timeb* %0, i64 0, i32 1, !dbg !2282
  store i16 %9, i16* %10, align 8, !dbg !2283, !tbaa !2284
  br label %11, !dbg !2285

; <label>:11:                                     ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2286
  ret i32 0, !dbg !2286
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2287 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2291
  call void @llvm.va_start(i8* nonnull %3), !dbg !2293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2304
  call void @llvm.va_end(i8* nonnull %3), !dbg !2305
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  ret void, !dbg !2306
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
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2307
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2309
  call void @llvm.va_start(i8* nonnull %3), !dbg !2309
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.7, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #10, !dbg !2310
  call void @llvm.va_end(i8* nonnull %3), !dbg !2313
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2314
  ret void, !dbg !2314
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
!599 = !{i32 483787}
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
!631 = !DILocation(line: 104, column: 2, scope: !544)
!632 = !DILocation(line: 186, column: 42, scope: !496)
!633 = !DILocation(line: 188, column: 2, scope: !496)
!634 = !DILocation(line: 188, column: 10, scope: !496)
!635 = !DILocation(line: 189, column: 2, scope: !496)
!636 = !DILocation(line: 190, column: 2, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !497, line: 190, column: 2)
!638 = distinct !DILexicalBlock(scope: !496, file: !497, line: 190, column: 2)
!639 = !DILocation(line: 191, column: 2, scope: !496)
!640 = !DILocation(line: 192, column: 1, scope: !496)
!641 = distinct !DISubprogram(name: "pte_kill", scope: !3, file: !3, line: 113, type: !642, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !646)
!642 = !DISubroutineType(types: !643)
!643 = !{!69, !644, !69}
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !645, line: 11, baseType: !31)
!645 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!646 = !{!647, !648}
!647 = !DILocalVariable(name: "threadId", arg: 1, scope: !641, file: !3, line: 113, type: !644)
!648 = !DILocalVariable(name: "sig", arg: 2, scope: !641, file: !3, line: 113, type: !69)
!649 = !DILocation(line: 113, column: 33, scope: !641)
!650 = !DILocation(line: 113, column: 47, scope: !641)
!651 = !DILocation(line: 115, column: 9, scope: !641)
!652 = !DILocation(line: 115, column: 2, scope: !641)
!653 = distinct !DISubprogram(name: "pte_osThreadCreate", scope: !3, file: !3, line: 155, type: !654, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !657)
!654 = !DISubroutineType(types: !655)
!655 = !{!547, !478, !69, !69, !29, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!657 = !{!658, !659, !660, !661, !662, !663}
!658 = !DILocalVariable(name: "entry_point", arg: 1, scope: !653, file: !3, line: 155, type: !478)
!659 = !DILocalVariable(name: "stack_size", arg: 2, scope: !653, file: !3, line: 156, type: !69)
!660 = !DILocalVariable(name: "initial_prio", arg: 3, scope: !653, file: !3, line: 156, type: !69)
!661 = !DILocalVariable(name: "argv", arg: 4, scope: !653, file: !3, line: 156, type: !29)
!662 = !DILocalVariable(name: "ph", arg: 5, scope: !653, file: !3, line: 157, type: !656)
!663 = !DILocalVariable(name: "ptd", scope: !653, file: !3, line: 159, type: !473)
!664 = !DILocation(line: 155, column: 56, scope: !653)
!665 = !DILocation(line: 156, column: 6, scope: !653)
!666 = !DILocation(line: 156, column: 22, scope: !653)
!667 = !DILocation(line: 156, column: 42, scope: !653)
!668 = !DILocation(line: 157, column: 22, scope: !653)
!669 = !DILocation(line: 162, column: 18, scope: !653)
!670 = !DILocalVariable(name: "a", arg: 1, scope: !671, file: !156, line: 157, type: !154)
!671 = distinct !DISubprogram(name: "uk_malloc", scope: !156, file: !156, line: 157, type: !161, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !672)
!672 = !{!670, !673}
!673 = !DILocalVariable(name: "size", arg: 2, scope: !671, file: !156, line: 157, type: !163)
!674 = !DILocation(line: 157, column: 48, scope: !671, inlinedAt: !675)
!675 = distinct !DILocation(line: 162, column: 8, scope: !653)
!676 = !DILocation(line: 157, column: 58, scope: !671, inlinedAt: !675)
!677 = !DILocation(line: 159, column: 6, scope: !678, inlinedAt: !675)
!678 = distinct !DILexicalBlock(scope: !671, file: !156, line: 159, column: 6)
!679 = !DILocation(line: 159, column: 6, scope: !671, inlinedAt: !675)
!680 = !{!"branch_weights", i32 1, i32 2000}
!681 = !DILocation(line: 160, column: 3, scope: !682, inlinedAt: !675)
!682 = distinct !DILexicalBlock(scope: !678, file: !156, line: 159, column: 20)
!683 = !DILocation(line: 160, column: 9, scope: !682, inlinedAt: !675)
!684 = !{!576, !576, i64 0}
!685 = !DILocation(line: 164, column: 1, scope: !671, inlinedAt: !675)
!686 = !DILocation(line: 159, column: 21, scope: !653)
!687 = !DILocation(line: 163, column: 6, scope: !653)
!688 = !DILocalVariable(name: "a", arg: 1, scope: !689, file: !156, line: 151, type: !154)
!689 = distinct !DISubprogram(name: "uk_do_malloc", scope: !156, file: !156, line: 151, type: !161, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !690)
!690 = !{!688, !691}
!691 = !DILocalVariable(name: "size", arg: 2, scope: !689, file: !156, line: 151, type: !163)
!692 = !DILocation(line: 151, column: 51, scope: !689, inlinedAt: !693)
!693 = distinct !DILocation(line: 163, column: 9, scope: !671, inlinedAt: !675)
!694 = !DILocation(line: 151, column: 61, scope: !689, inlinedAt: !693)
!695 = !DILocation(line: 154, column: 12, scope: !689, inlinedAt: !693)
!696 = !DILocation(line: 154, column: 9, scope: !689, inlinedAt: !693)
!697 = !DILocation(line: 154, column: 2, scope: !689, inlinedAt: !693)
!698 = !DILocation(line: 163, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !653, file: !3, line: 163, column: 6)
!700 = !DILocation(line: 166, column: 7, scope: !653)
!701 = !DILocation(line: 166, column: 19, scope: !653)
!702 = !{!569, !570, i64 0}
!703 = !DILocation(line: 167, column: 7, scope: !653)
!704 = !DILocation(line: 167, column: 12, scope: !653)
!705 = !{!569, !570, i64 8}
!706 = !DILocation(line: 170, column: 13, scope: !653)
!707 = !DILocation(line: 170, column: 7, scope: !653)
!708 = !DILocation(line: 170, column: 11, scope: !653)
!709 = !DILocation(line: 171, column: 15, scope: !710)
!710 = distinct !DILexicalBlock(scope: !653, file: !3, line: 171, column: 6)
!711 = !DILocation(line: 171, column: 6, scope: !653)
!712 = !DILocation(line: 172, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !3, line: 171, column: 24)
!714 = !DILocation(line: 173, column: 3, scope: !713)
!715 = !DILocation(line: 174, column: 3, scope: !713)
!716 = !DILocation(line: 177, column: 26, scope: !653)
!717 = !DILocation(line: 177, column: 2, scope: !653)
!718 = !DILocation(line: 178, column: 26, scope: !653)
!719 = !DILocation(line: 178, column: 2, scope: !653)
!720 = !DILocation(line: 179, column: 7, scope: !653)
!721 = !DILocation(line: 179, column: 12, scope: !653)
!722 = !{!569, !576, i64 80}
!723 = !DILocalVariable(name: "name", arg: 1, scope: !724, file: !33, line: 101, type: !36)
!724 = distinct !DISubprogram(name: "uk_thread_create_attr", scope: !33, file: !33, line: 101, type: !725, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!31, !36, !92, !217, !29}
!727 = !{!723, !728, !729, !730}
!728 = !DILocalVariable(name: "attr", arg: 2, scope: !724, file: !33, line: 102, type: !92)
!729 = !DILocalVariable(name: "function", arg: 3, scope: !724, file: !33, line: 102, type: !217)
!730 = !DILocalVariable(name: "arg", arg: 4, scope: !724, file: !33, line: 102, type: !29)
!731 = !DILocation(line: 101, column: 67, scope: !724, inlinedAt: !732)
!732 = distinct !DILocation(line: 181, column: 2, scope: !653)
!733 = !DILocation(line: 102, column: 26, scope: !724, inlinedAt: !732)
!734 = !DILocation(line: 102, column: 38, scope: !724, inlinedAt: !732)
!735 = !DILocation(line: 102, column: 63, scope: !724, inlinedAt: !732)
!736 = !DILocation(line: 104, column: 32, scope: !724, inlinedAt: !732)
!737 = !DILocation(line: 104, column: 9, scope: !724, inlinedAt: !732)
!738 = !DILocation(line: 104, column: 2, scope: !724, inlinedAt: !732)
!739 = !DILocation(line: 181, column: 2, scope: !653)
!740 = !DILocation(line: 183, column: 21, scope: !741)
!741 = distinct !DILexicalBlock(scope: !653, file: !3, line: 183, column: 6)
!742 = !DILocation(line: 183, column: 6, scope: !653)
!743 = !DILocation(line: 184, column: 28, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !3, line: 183, column: 30)
!745 = !DILocation(line: 184, column: 3, scope: !744)
!746 = !DILocation(line: 185, column: 3, scope: !744)
!747 = !DILocation(line: 186, column: 3, scope: !744)
!748 = !DILocation(line: 191, column: 2, scope: !653)
!749 = !DILocation(line: 194, column: 2, scope: !653)
!750 = !DILocation(line: 145, column: 46, scope: !611, inlinedAt: !751)
!751 = distinct !DILocation(line: 194, column: 2, scope: !653)
!752 = !DILocation(line: 145, column: 60, scope: !611, inlinedAt: !751)
!753 = !DILocation(line: 147, column: 10, scope: !611, inlinedAt: !751)
!754 = !DILocation(line: 147, column: 14, scope: !611, inlinedAt: !751)
!755 = !DILocation(line: 148, column: 1, scope: !611, inlinedAt: !751)
!756 = !DILocation(line: 196, column: 13, scope: !653)
!757 = !DILocation(line: 196, column: 6, scope: !653)
!758 = !DILocation(line: 198, column: 2, scope: !653)
!759 = !DILocation(line: 0, scope: !699)
!760 = !DILocation(line: 199, column: 1, scope: !653)
!761 = distinct !DISubprogram(name: "uk_stub_thread_entry", scope: !3, file: !3, line: 142, type: !218, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !762)
!762 = !{!763, !764}
!763 = !DILocalVariable(name: "argv", arg: 1, scope: !761, file: !3, line: 142, type: !29)
!764 = !DILocalVariable(name: "ptd", scope: !761, file: !3, line: 147, type: !473)
!765 = !DILocation(line: 142, column: 40, scope: !761)
!766 = !DILocalVariable(name: "val", arg: 1, scope: !767, file: !768, line: 88, type: !48)
!767 = distinct !DISubprogram(name: "wrpkru", scope: !768, file: !768, line: 88, type: !769, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !771)
!768 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!769 = !DISubroutineType(types: !770)
!770 = !{null, !48}
!771 = !{!766}
!772 = !DILocation(line: 88, column: 67, scope: !767, inlinedAt: !773)
!773 = distinct !DILocation(line: 145, column: 2, scope: !761)
!774 = !DILocation(line: 91, column: 2, scope: !767, inlinedAt: !773)
!775 = !{i32 277480}
!776 = !DILocation(line: 97, column: 1, scope: !767, inlinedAt: !773)
!777 = !DILocation(line: 147, column: 21, scope: !761)
!778 = !DILocation(line: 150, column: 26, scope: !761)
!779 = !DILocation(line: 150, column: 2, scope: !761)
!780 = !DILocation(line: 152, column: 7, scope: !761)
!781 = !DILocation(line: 152, column: 24, scope: !761)
!782 = !DILocation(line: 152, column: 2, scope: !761)
!783 = !DILocation(line: 153, column: 1, scope: !761)
!784 = distinct !DISubprogram(name: "pte_osThreadStart", scope: !3, file: !3, line: 201, type: !785, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!547, !644}
!787 = !{!788, !789}
!788 = !DILocalVariable(name: "h", arg: 1, scope: !784, file: !3, line: 201, type: !644)
!789 = !DILocalVariable(name: "ptd", scope: !784, file: !3, line: 203, type: !473)
!790 = !DILocation(line: 201, column: 51, scope: !784)
!791 = !DILocalVariable(name: "h", arg: 1, scope: !792, file: !3, line: 126, type: !644)
!792 = distinct !DISubprogram(name: "handle_to_ptd", scope: !3, file: !3, line: 126, type: !793, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!473, !644}
!795 = !{!791, !796}
!796 = !DILocalVariable(name: "res", scope: !792, file: !3, line: 128, type: !473)
!797 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !798)
!798 = distinct !DILocation(line: 203, column: 27, scope: !784)
!799 = !DILocalVariable(name: "thread", arg: 1, scope: !800, file: !33, line: 139, type: !31)
!800 = distinct !DISubprogram(name: "uk_thread_get_private", scope: !33, file: !33, line: 139, type: !801, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!29, !31}
!803 = !{!799}
!804 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !805)
!805 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !798)
!806 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !805)
!807 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !805)
!808 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !798)
!809 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !798)
!810 = !DILocation(line: 203, column: 21, scope: !784)
!811 = !DILocalVariable(name: "s", arg: 1, scope: !812, file: !487, line: 194, type: !815)
!812 = distinct !DISubprogram(name: "uk_semaphore_up", scope: !487, file: !487, line: 194, type: !813, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !816)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!816 = !{!811, !817, !818}
!817 = !DILocalVariable(name: "irqf", scope: !812, file: !487, line: 196, type: !104)
!818 = !DILocalVariable(name: "wq", scope: !812, file: !487, line: 209, type: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!821 = !DILocation(line: 194, column: 57, scope: !812, inlinedAt: !822)
!822 = distinct !DILocation(line: 206, column: 2, scope: !784)
!823 = !DILocation(line: 200, column: 9, scope: !812, inlinedAt: !822)
!824 = !DILocation(line: 196, column: 16, scope: !812, inlinedAt: !822)
!825 = !DILocation(line: 201, column: 7, scope: !812, inlinedAt: !822)
!826 = !DILocation(line: 201, column: 2, scope: !812, inlinedAt: !822)
!827 = !{!573, !574, i64 0}
!828 = !DILocation(line: 209, column: 28, scope: !812, inlinedAt: !822)
!829 = !DILocalVariable(name: "wq", arg: 1, scope: !830, file: !831, line: 99, type: !834)
!830 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !831, file: !831, line: 99, type: !832, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !835)
!831 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!835 = !{!829, !836, !837, !838}
!836 = !DILocalVariable(name: "flags", scope: !830, file: !831, line: 101, type: !104)
!837 = !DILocalVariable(name: "curr", scope: !830, file: !831, line: 102, type: !65)
!838 = !DILocalVariable(name: "tmp", scope: !830, file: !831, line: 102, type: !65)
!839 = !DILocation(line: 99, column: 40, scope: !830, inlinedAt: !840)
!840 = distinct !DILocation(line: 210, column: 2, scope: !812, inlinedAt: !822)
!841 = !DILocation(line: 104, column: 10, scope: !830, inlinedAt: !840)
!842 = !DILocation(line: 101, column: 16, scope: !830, inlinedAt: !840)
!843 = !DILocation(line: 105, column: 2, scope: !844, inlinedAt: !840)
!844 = distinct !DILexicalBlock(scope: !830, file: !831, line: 105, column: 2)
!845 = !{!575, !570, i64 0}
!846 = !DILocation(line: 102, column: 25, scope: !830, inlinedAt: !840)
!847 = !DILocation(line: 105, column: 2, scope: !848, inlinedAt: !840)
!848 = distinct !DILexicalBlock(scope: !844, file: !831, line: 105, column: 2)
!849 = !{!850, !570, i64 16}
!850 = !{!"uk_waitq_entry", !576, i64 0, !570, i64 8, !851, i64 16}
!851 = !{!"", !570, i64 0}
!852 = !DILocation(line: 102, column: 32, scope: !830, inlinedAt: !840)
!853 = !DILocation(line: 106, column: 24, scope: !848, inlinedAt: !840)
!854 = !{!850, !570, i64 8}
!855 = !DILocation(line: 106, column: 3, scope: !848, inlinedAt: !840)
!856 = distinct !{!856, !857, !858}
!857 = !DILocation(line: 105, column: 2, scope: !844)
!858 = !DILocation(line: 106, column: 30, scope: !844)
!859 = !DILocation(line: 107, column: 2, scope: !830, inlinedAt: !840)
!860 = !DILocation(line: 108, column: 1, scope: !830, inlinedAt: !840)
!861 = !DILocation(line: 211, column: 2, scope: !812, inlinedAt: !822)
!862 = !DILocation(line: 212, column: 1, scope: !812, inlinedAt: !822)
!863 = !DILocation(line: 208, column: 2, scope: !784)
!864 = distinct !DISubprogram(name: "pte_osThreadDelete", scope: !3, file: !3, line: 211, type: !785, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !865)
!865 = !{!866, !867}
!866 = !DILocalVariable(name: "h", arg: 1, scope: !864, file: !3, line: 211, type: !644)
!867 = !DILocalVariable(name: "ptd", scope: !864, file: !3, line: 213, type: !473)
!868 = !DILocation(line: 211, column: 52, scope: !864)
!869 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !870)
!870 = distinct !DILocation(line: 213, column: 27, scope: !864)
!871 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !872)
!872 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !870)
!873 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !872)
!874 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !872)
!875 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !870)
!876 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !870)
!877 = !DILocation(line: 213, column: 21, scope: !864)
!878 = !DILocation(line: 216, column: 27, scope: !864)
!879 = !DILocation(line: 216, column: 2, scope: !864)
!880 = !DILocation(line: 217, column: 7, scope: !864)
!881 = !DILocation(line: 217, column: 2, scope: !864)
!882 = !DILocation(line: 219, column: 2, scope: !864)
!883 = distinct !DISubprogram(name: "pte_osThreadExitAndDelete", scope: !3, file: !3, line: 222, type: !785, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !884)
!884 = !{!885}
!885 = !DILocalVariable(name: "h", arg: 1, scope: !883, file: !3, line: 222, type: !644)
!886 = !DILocation(line: 222, column: 59, scope: !883)
!887 = !DILocation(line: 224, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 224, column: 6)
!889 = !{!622, !570, i64 88}
!890 = !DILocation(line: 224, column: 6, scope: !888)
!891 = !DILocation(line: 224, column: 6, scope: !883)
!892 = !DILocalVariable(name: "thread", arg: 1, scope: !893, file: !33, line: 117, type: !31)
!893 = distinct !DISubprogram(name: "uk_thread_kill", scope: !33, file: !33, line: 117, type: !894, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !31}
!896 = !{!892}
!897 = !DILocation(line: 117, column: 53, scope: !893, inlinedAt: !898)
!898 = distinct !DILocation(line: 225, column: 3, scope: !888)
!899 = !DILocation(line: 119, column: 2, scope: !893, inlinedAt: !898)
!900 = !DILocation(line: 120, column: 1, scope: !893, inlinedAt: !898)
!901 = !DILocation(line: 225, column: 3, scope: !888)
!902 = !DILocation(line: 211, column: 52, scope: !864, inlinedAt: !903)
!903 = distinct !DILocation(line: 226, column: 2, scope: !883)
!904 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !905)
!905 = distinct !DILocation(line: 213, column: 27, scope: !864, inlinedAt: !903)
!906 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !907)
!907 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !905)
!908 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !907)
!909 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !907)
!910 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !905)
!911 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !905)
!912 = !DILocation(line: 213, column: 21, scope: !864, inlinedAt: !903)
!913 = !DILocation(line: 216, column: 27, scope: !864, inlinedAt: !903)
!914 = !DILocation(line: 216, column: 2, scope: !864, inlinedAt: !903)
!915 = !DILocation(line: 217, column: 7, scope: !864, inlinedAt: !903)
!916 = !DILocation(line: 217, column: 2, scope: !864, inlinedAt: !903)
!917 = !DILocation(line: 219, column: 2, scope: !864, inlinedAt: !903)
!918 = !DILocation(line: 228, column: 2, scope: !883)
!919 = distinct !DISubprogram(name: "pte_osThreadExit", scope: !3, file: !3, line: 231, type: !416, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !920)
!920 = !{!921}
!921 = !DILocalVariable(name: "ptd", scope: !919, file: !3, line: 233, type: !473)
!922 = !DILocation(line: 233, column: 27, scope: !919)
!923 = !DILocation(line: 233, column: 21, scope: !919)
!924 = !DILocation(line: 235, column: 7, scope: !919)
!925 = !DILocation(line: 235, column: 12, scope: !919)
!926 = !DILocation(line: 236, column: 2, scope: !919)
!927 = distinct !DISubprogram(name: "current_ptd", scope: !3, file: !3, line: 133, type: !928, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!473}
!930 = !{!931, !934}
!931 = !DILocalVariable(name: "thread", scope: !927, file: !3, line: 135, type: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!934 = !DILocalVariable(name: "ptd", scope: !927, file: !3, line: 136, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !474)
!937 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !938)
!938 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !939)
!939 = distinct !DILocation(line: 137, column: 2, scope: !927)
!940 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !938)
!941 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !938)
!942 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !939)
!943 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !939)
!944 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !939)
!945 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !939)
!946 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !939)
!947 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !939)
!948 = !DILocation(line: 135, column: 29, scope: !927)
!949 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !950)
!950 = distinct !DILocation(line: 138, column: 2, scope: !927)
!951 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !950)
!952 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !950)
!953 = !DILocation(line: 136, column: 30, scope: !927)
!954 = !DILocation(line: 139, column: 2, scope: !927)
!955 = distinct !DISubprogram(name: "pte_osThreadWaitForEnd", scope: !3, file: !3, line: 239, type: !785, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !956)
!956 = !{!957, !958, !959}
!957 = !DILocalVariable(name: "h", arg: 1, scope: !955, file: !3, line: 239, type: !644)
!958 = !DILocalVariable(name: "ptd", scope: !955, file: !3, line: 241, type: !473)
!959 = !DILocalVariable(name: "self_ptd", scope: !955, file: !3, line: 242, type: !473)
!960 = !DILocation(line: 239, column: 56, scope: !955)
!961 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !962)
!962 = distinct !DILocation(line: 241, column: 27, scope: !955)
!963 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !964)
!964 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !962)
!965 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !964)
!966 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !964)
!967 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !962)
!968 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !962)
!969 = !DILocation(line: 241, column: 21, scope: !955)
!970 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !971)
!971 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !972)
!972 = distinct !DILocation(line: 137, column: 2, scope: !927, inlinedAt: !973)
!973 = distinct !DILocation(line: 242, column: 32, scope: !955)
!974 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !971)
!975 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !971)
!976 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !972)
!977 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !972)
!978 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !972)
!979 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !972)
!980 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !972)
!981 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !972)
!982 = !DILocation(line: 135, column: 29, scope: !927, inlinedAt: !973)
!983 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !984)
!984 = distinct !DILocation(line: 138, column: 2, scope: !927, inlinedAt: !973)
!985 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !984)
!986 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !984)
!987 = !DILocation(line: 136, column: 30, scope: !927, inlinedAt: !973)
!988 = !DILocation(line: 139, column: 2, scope: !927, inlinedAt: !973)
!989 = !DILocation(line: 242, column: 21, scope: !955)
!990 = !DILocation(line: 245, column: 12, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 245, column: 7)
!992 = distinct !DILexicalBlock(scope: !955, file: !3, line: 244, column: 12)
!993 = !DILocation(line: 245, column: 7, scope: !991)
!994 = !DILocation(line: 245, column: 7, scope: !992)
!995 = !DILocation(line: 246, column: 4, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !3, line: 245, column: 18)
!997 = !DILocation(line: 247, column: 4, scope: !996)
!998 = !DILocation(line: 250, column: 16, scope: !999)
!999 = distinct !DILexicalBlock(scope: !992, file: !3, line: 250, column: 7)
!1000 = !DILocation(line: 250, column: 40, scope: !999)
!1001 = !{!569, !574, i64 56}
!1002 = !DILocation(line: 250, column: 46, scope: !999)
!1003 = !DILocation(line: 250, column: 7, scope: !992)
!1004 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 117, column: 30, scope: !1007, inlinedAt: !1011)
!1007 = distinct !DISubprogram(name: "uk_sched_yield", scope: !80, file: !80, line: 114, type: !416, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1008)
!1008 = !{!1009, !1010}
!1009 = !DILocalVariable(name: "s", scope: !1007, file: !80, line: 116, type: !78)
!1010 = !DILocalVariable(name: "current", scope: !1007, file: !80, line: 117, type: !31)
!1011 = distinct !DILocation(line: 254, column: 4, scope: !999)
!1012 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1005)
!1013 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1005)
!1014 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1006)
!1015 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1006)
!1016 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1006)
!1017 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1006)
!1018 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1006)
!1019 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1006)
!1020 = !DILocation(line: 117, column: 20, scope: !1007, inlinedAt: !1011)
!1021 = !DILocation(line: 119, column: 2, scope: !1022, inlinedAt: !1011)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !80, line: 119, column: 2)
!1023 = distinct !DILexicalBlock(scope: !1007, file: !80, line: 119, column: 2)
!1024 = !DILocation(line: 119, column: 2, scope: !1023, inlinedAt: !1011)
!1025 = !DILocation(line: 119, column: 2, scope: !1026, inlinedAt: !1011)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !80, line: 119, column: 2)
!1027 = !DILocation(line: 121, column: 15, scope: !1007, inlinedAt: !1011)
!1028 = !DILocation(line: 116, column: 19, scope: !1007, inlinedAt: !1011)
!1029 = !DILocation(line: 122, column: 2, scope: !1030, inlinedAt: !1011)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !80, line: 122, column: 2)
!1031 = distinct !DILexicalBlock(scope: !1007, file: !80, line: 122, column: 2)
!1032 = !DILocation(line: 122, column: 2, scope: !1031, inlinedAt: !1011)
!1033 = !DILocation(line: 122, column: 2, scope: !1034, inlinedAt: !1011)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !80, line: 122, column: 2)
!1035 = !DILocation(line: 123, column: 5, scope: !1007, inlinedAt: !1011)
!1036 = !{!1037, !570, i64 0}
!1037 = !{!"uk_sched", !570, i64 0, !570, i64 8, !570, i64 16, !570, i64 24, !570, i64 32, !570, i64 40, !570, i64 48, !570, i64 56, !570, i64 64, !624, i64 72, !622, i64 80, !1038, i64 208, !1039, i64 224, !570, i64 248, !570, i64 256, !570, i64 264}
!1038 = !{!"uk_thread_list", !570, i64 0, !570, i64 8}
!1039 = !{!"ukplat_ctx_callbacks", !570, i64 0, !570, i64 8, !570, i64 16}
!1040 = !DILocation(line: 123, column: 2, scope: !1007, inlinedAt: !1011)
!1041 = !DILocation(line: 124, column: 1, scope: !1007, inlinedAt: !1011)
!1042 = distinct !{!1042, !1043, !1044}
!1043 = !DILocation(line: 244, column: 2, scope: !955)
!1044 = !DILocation(line: 255, column: 2, scope: !955)
!1045 = !DILocation(line: 0, scope: !999)
!1046 = !DILocation(line: 256, column: 1, scope: !955)
!1047 = distinct !DISubprogram(name: "pte_osThreadCancel", scope: !3, file: !3, line: 258, type: !785, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1048)
!1048 = !{!1049, !1050}
!1049 = !DILocalVariable(name: "h", arg: 1, scope: !1047, file: !3, line: 258, type: !644)
!1050 = !DILocalVariable(name: "ptd", scope: !1047, file: !3, line: 260, type: !473)
!1051 = !DILocation(line: 258, column: 52, scope: !1047)
!1052 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 260, column: 27, scope: !1047)
!1054 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !1053)
!1056 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !1055)
!1057 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !1055)
!1058 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !1053)
!1059 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !1053)
!1060 = !DILocation(line: 260, column: 21, scope: !1047)
!1061 = !DILocation(line: 194, column: 57, scope: !812, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 262, column: 2, scope: !1047)
!1063 = !DILocation(line: 200, column: 9, scope: !812, inlinedAt: !1062)
!1064 = !DILocation(line: 196, column: 16, scope: !812, inlinedAt: !1062)
!1065 = !DILocation(line: 201, column: 7, scope: !812, inlinedAt: !1062)
!1066 = !DILocation(line: 201, column: 2, scope: !812, inlinedAt: !1062)
!1067 = !DILocation(line: 209, column: 28, scope: !812, inlinedAt: !1062)
!1068 = !DILocation(line: 99, column: 40, scope: !830, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 210, column: 2, scope: !812, inlinedAt: !1062)
!1070 = !DILocation(line: 104, column: 10, scope: !830, inlinedAt: !1069)
!1071 = !DILocation(line: 101, column: 16, scope: !830, inlinedAt: !1069)
!1072 = !DILocation(line: 105, column: 2, scope: !844, inlinedAt: !1069)
!1073 = !DILocation(line: 102, column: 25, scope: !830, inlinedAt: !1069)
!1074 = !DILocation(line: 105, column: 2, scope: !848, inlinedAt: !1069)
!1075 = !DILocation(line: 102, column: 32, scope: !830, inlinedAt: !1069)
!1076 = !DILocation(line: 106, column: 24, scope: !848, inlinedAt: !1069)
!1077 = !DILocation(line: 106, column: 3, scope: !848, inlinedAt: !1069)
!1078 = !DILocation(line: 107, column: 2, scope: !830, inlinedAt: !1069)
!1079 = !DILocation(line: 108, column: 1, scope: !830, inlinedAt: !1069)
!1080 = !DILocation(line: 211, column: 2, scope: !812, inlinedAt: !1062)
!1081 = !DILocation(line: 212, column: 1, scope: !812, inlinedAt: !1062)
!1082 = !DILocation(line: 264, column: 2, scope: !1047)
!1083 = distinct !DISubprogram(name: "pte_osThreadCheckCancel", scope: !3, file: !3, line: 267, type: !785, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1084)
!1084 = !{!1085, !1086}
!1085 = !DILocalVariable(name: "h", arg: 1, scope: !1083, file: !3, line: 267, type: !644)
!1086 = !DILocalVariable(name: "ptd", scope: !1083, file: !3, line: 269, type: !473)
!1087 = !DILocation(line: 267, column: 57, scope: !1083)
!1088 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 269, column: 27, scope: !1083)
!1090 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !1089)
!1092 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !1091)
!1093 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !1091)
!1094 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !1089)
!1095 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !1089)
!1096 = !DILocation(line: 269, column: 21, scope: !1083)
!1097 = !DILocation(line: 271, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 271, column: 6)
!1099 = !DILocation(line: 271, column: 10, scope: !1098)
!1100 = !DILocation(line: 271, column: 29, scope: !1098)
!1101 = !DILocation(line: 271, column: 35, scope: !1098)
!1102 = !DILocation(line: 271, column: 6, scope: !1083)
!1103 = !DILocation(line: 274, column: 2, scope: !1083)
!1104 = !DILocation(line: 0, scope: !1083)
!1105 = !DILocation(line: 275, column: 1, scope: !1083)
!1106 = distinct !DISubprogram(name: "pte_osThreadGetHandle", scope: !3, file: !3, line: 277, type: !1107, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!644}
!1109 = !{!1110}
!1110 = !DILocalVariable(name: "cur", scope: !1106, file: !3, line: 279, type: !31)
!1111 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 280, column: 2, scope: !1106)
!1114 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1112)
!1115 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1112)
!1116 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1113)
!1117 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1113)
!1118 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1113)
!1119 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1113)
!1120 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1113)
!1121 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1113)
!1122 = !DILocation(line: 279, column: 20, scope: !1106)
!1123 = !DILocation(line: 281, column: 2, scope: !1106)
!1124 = distinct !DISubprogram(name: "pte_osThreadGetPriority", scope: !3, file: !3, line: 284, type: !1125, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!69, !644}
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DILocalVariable(name: "h", arg: 1, scope: !1124, file: !3, line: 284, type: !644)
!1129 = !DILocalVariable(name: "ret", scope: !1124, file: !3, line: 286, type: !69)
!1130 = !DILocalVariable(name: "ptd", scope: !1124, file: !3, line: 287, type: !473)
!1131 = !DILocalVariable(name: "prio", scope: !1124, file: !3, line: 288, type: !100)
!1132 = !DILocation(line: 284, column: 48, scope: !1124)
!1133 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 287, column: 27, scope: !1124)
!1135 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !1134)
!1137 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !1136)
!1138 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !1136)
!1139 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !1134)
!1140 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !1134)
!1141 = !DILocation(line: 287, column: 21, scope: !1124)
!1142 = !DILocation(line: 288, column: 2, scope: !1124)
!1143 = !DILocation(line: 290, column: 2, scope: !1124)
!1144 = !DILocation(line: 288, column: 9, scope: !1124)
!1145 = !DILocation(line: 286, column: 6, scope: !1124)
!1146 = !DILocation(line: 293, column: 9, scope: !1124)
!1147 = !DILocation(line: 294, column: 1, scope: !1124)
!1148 = !DILocation(line: 293, column: 2, scope: !1124)
!1149 = distinct !DISubprogram(name: "pte_osThreadSetPriority", scope: !3, file: !3, line: 296, type: !1150, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1152)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!547, !644, !69}
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DILocalVariable(name: "h", arg: 1, scope: !1149, file: !3, line: 296, type: !644)
!1154 = !DILocalVariable(name: "new_prio", arg: 2, scope: !1149, file: !3, line: 296, type: !69)
!1155 = !DILocalVariable(name: "ret", scope: !1149, file: !3, line: 298, type: !69)
!1156 = !DILocalVariable(name: "ptd", scope: !1149, file: !3, line: 299, type: !473)
!1157 = !DILocation(line: 296, column: 57, scope: !1149)
!1158 = !DILocation(line: 296, column: 64, scope: !1149)
!1159 = !DILocation(line: 126, column: 60, scope: !792, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 299, column: 27, scope: !1149)
!1161 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 129, column: 2, scope: !792, inlinedAt: !1160)
!1163 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !1162)
!1164 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !1162)
!1165 = !DILocation(line: 128, column: 21, scope: !792, inlinedAt: !1160)
!1166 = !DILocation(line: 130, column: 2, scope: !792, inlinedAt: !1160)
!1167 = !DILocation(line: 299, column: 21, scope: !1149)
!1168 = !DILocation(line: 301, column: 2, scope: !1149)
!1169 = !DILocation(line: 298, column: 6, scope: !1149)
!1170 = !DILocation(line: 304, column: 9, scope: !1149)
!1171 = !DILocation(line: 304, column: 2, scope: !1149)
!1172 = distinct !DISubprogram(name: "pte_osThreadSleep", scope: !3, file: !3, line: 307, type: !1173, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !7}
!1175 = !{!1176, !1177}
!1176 = !DILocalVariable(name: "msecs", arg: 1, scope: !1172, file: !3, line: 307, type: !7)
!1177 = !DILocalVariable(name: "nsec", scope: !1172, file: !3, line: 309, type: !102)
!1178 = !DILocation(line: 307, column: 37, scope: !1172)
!1179 = !DILocation(line: 309, column: 16, scope: !1172)
!1180 = !DILocation(line: 309, column: 9, scope: !1172)
!1181 = !DILocation(line: 311, column: 2, scope: !1172)
!1182 = !DILocation(line: 312, column: 1, scope: !1172)
!1183 = distinct !DISubprogram(name: "pte_osThreadGetMinPriority", scope: !3, file: !3, line: 314, type: !533, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1184 = !DILocation(line: 316, column: 2, scope: !1183)
!1185 = distinct !DISubprogram(name: "pte_osThreadGetMaxPriority", scope: !3, file: !3, line: 319, type: !533, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1186 = !DILocation(line: 321, column: 2, scope: !1185)
!1187 = distinct !DISubprogram(name: "pte_osThreadGetDefaultPriority", scope: !3, file: !3, line: 324, type: !533, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!1188 = !DILocation(line: 326, column: 2, scope: !1187)
!1189 = distinct !DISubprogram(name: "pte_osMutexCreate", scope: !3, file: !3, line: 335, type: !1190, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1201)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!547, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osMutexHandle", file: !645, line: 13, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !1196, line: 58, size: 256, elements: !1197)
!1196 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1195, file: !1196, line: 59, baseType: !69, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1195, file: !1196, line: 60, baseType: !31, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1195, file: !1196, line: 61, baseType: !61, size: 128, offset: 128)
!1201 = !{!1202, !1203}
!1202 = !DILocalVariable(name: "ph", arg: 1, scope: !1189, file: !3, line: 335, type: !1192)
!1203 = !DILocalVariable(name: "m", scope: !1189, file: !3, line: 337, type: !1194)
!1204 = !DILocation(line: 335, column: 51, scope: !1189)
!1205 = !DILocation(line: 339, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 339, column: 6)
!1207 = !DILocation(line: 339, column: 6, scope: !1189)
!1208 = !DILocation(line: 342, column: 16, scope: !1189)
!1209 = !DILocation(line: 157, column: 48, scope: !671, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 342, column: 6, scope: !1189)
!1211 = !DILocation(line: 157, column: 58, scope: !671, inlinedAt: !1210)
!1212 = !DILocation(line: 159, column: 6, scope: !678, inlinedAt: !1210)
!1213 = !DILocation(line: 159, column: 6, scope: !671, inlinedAt: !1210)
!1214 = !DILocation(line: 160, column: 3, scope: !682, inlinedAt: !1210)
!1215 = !DILocation(line: 160, column: 9, scope: !682, inlinedAt: !1210)
!1216 = !DILocation(line: 164, column: 1, scope: !671, inlinedAt: !1210)
!1217 = !DILocation(line: 343, column: 6, scope: !1189)
!1218 = !DILocation(line: 151, column: 51, scope: !689, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 163, column: 9, scope: !671, inlinedAt: !1210)
!1220 = !DILocation(line: 151, column: 61, scope: !689, inlinedAt: !1219)
!1221 = !DILocation(line: 154, column: 12, scope: !689, inlinedAt: !1219)
!1222 = !DILocation(line: 154, column: 9, scope: !689, inlinedAt: !1219)
!1223 = !DILocation(line: 154, column: 2, scope: !689, inlinedAt: !1219)
!1224 = !DILocation(line: 343, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 343, column: 6)
!1226 = !DILocation(line: 342, column: 6, scope: !1189)
!1227 = !DILocation(line: 337, column: 19, scope: !1189)
!1228 = !DILocation(line: 346, column: 2, scope: !1189)
!1229 = !DILocation(line: 348, column: 6, scope: !1189)
!1230 = !DILocation(line: 350, column: 2, scope: !1189)
!1231 = !DILocation(line: 0, scope: !1206)
!1232 = !DILocation(line: 351, column: 1, scope: !1189)
!1233 = distinct !DISubprogram(name: "pte_osMutexDelete", scope: !3, file: !3, line: 353, type: !1234, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!547, !1193}
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "h", arg: 1, scope: !1233, file: !3, line: 353, type: !1193)
!1238 = !DILocation(line: 353, column: 50, scope: !1233)
!1239 = !DILocation(line: 355, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 355, column: 6)
!1241 = !DILocation(line: 355, column: 6, scope: !1233)
!1242 = !DILocation(line: 358, column: 7, scope: !1233)
!1243 = !DILocation(line: 358, column: 2, scope: !1233)
!1244 = !DILocation(line: 360, column: 2, scope: !1233)
!1245 = !DILocation(line: 0, scope: !1240)
!1246 = !DILocation(line: 361, column: 1, scope: !1233)
!1247 = distinct !DISubprogram(name: "pte_osMutexLock", scope: !3, file: !3, line: 363, type: !1234, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1248)
!1248 = !{!1249}
!1249 = !DILocalVariable(name: "h", arg: 1, scope: !1247, file: !3, line: 363, type: !1193)
!1250 = !DILocalVariable(name: "lock_count", scope: !1251, file: !1196, line: 78, type: !1268)
!1251 = distinct !DISubprogram(name: "uk_mutex_lock", scope: !1196, file: !1196, line: 69, type: !1252, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1194}
!1254 = !{!1255, !1256, !1257, !1258, !1250, !1259, !1260, !1265, !1266, !1267}
!1255 = !DILocalVariable(name: "m", arg: 1, scope: !1251, file: !1196, line: 69, type: !1194)
!1256 = !DILocalVariable(name: "current", scope: !1251, file: !1196, line: 71, type: !31)
!1257 = !DILocalVariable(name: "irqf", scope: !1251, file: !1196, line: 72, type: !104)
!1258 = !DILocalVariable(name: "wq", scope: !1251, file: !1196, line: 77, type: !819)
!1259 = !DILocalVariable(name: "owner", scope: !1251, file: !1196, line: 79, type: !932)
!1260 = !DILocalVariable(name: "__current", scope: !1261, file: !1196, line: 87, type: !31)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !1196, line: 86, column: 5)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1196, line: 85, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1196, line: 85, column: 2)
!1264 = distinct !DILexicalBlock(scope: !1251, file: !1196, line: 85, column: 2)
!1265 = !DILocalVariable(name: "flags", scope: !1261, file: !1196, line: 88, type: !104)
!1266 = !DILocalVariable(name: "__cur", scope: !1261, file: !1196, line: 89, type: !31)
!1267 = !DILocalVariable(name: "__wait", scope: !1261, file: !1196, line: 89, type: !65)
!1268 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!1269 = !DILocation(line: 78, column: 15, scope: !1251, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 368, column: 2, scope: !1247)
!1271 = !DILocation(line: 363, column: 48, scope: !1247)
!1272 = !DILocation(line: 365, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 365, column: 6)
!1274 = !DILocation(line: 365, column: 6, scope: !1247)
!1275 = !DILocation(line: 69, column: 51, scope: !1251, inlinedAt: !1270)
!1276 = !DILocation(line: 77, column: 28, scope: !1251, inlinedAt: !1270)
!1277 = !DILocation(line: 78, column: 2, scope: !1251, inlinedAt: !1270)
!1278 = !DILocation(line: 78, column: 31, scope: !1251, inlinedAt: !1270)
!1279 = !{!1280, !576, i64 0}
!1280 = !{!"uk_mutex", !576, i64 0, !570, i64 8, !575, i64 16}
!1281 = !DILocation(line: 79, column: 40, scope: !1251, inlinedAt: !1270)
!1282 = !{!1280, !570, i64 8}
!1283 = !DILocation(line: 79, column: 29, scope: !1251, inlinedAt: !1270)
!1284 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 83, column: 2, scope: !1251, inlinedAt: !1270)
!1287 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1285)
!1288 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1285)
!1289 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1286)
!1290 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1286)
!1291 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1286)
!1292 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1286)
!1293 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1286)
!1294 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1286)
!1295 = !DILocation(line: 71, column: 20, scope: !1251, inlinedAt: !1270)
!1296 = !DILocation(line: 85, column: 2, scope: !1251, inlinedAt: !1270)
!1297 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 89, column: 3, scope: !1261, inlinedAt: !1270)
!1300 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1298)
!1301 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1298)
!1302 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1299)
!1303 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1299)
!1304 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1299)
!1305 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 49, column: 21, scope: !1307, inlinedAt: !1311)
!1307 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !1308, file: !1308, line: 47, type: !533, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1309)
!1308 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "sp", scope: !1307, file: !1308, line: 49, type: !104)
!1311 = distinct !DILocation(line: 89, column: 3, scope: !1261, inlinedAt: !1270)
!1312 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1306)
!1313 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1306)
!1314 = !DILocation(line: 49, column: 16, scope: !1307, inlinedAt: !1311)
!1315 = !DILocation(line: 50, column: 19, scope: !1307, inlinedAt: !1311)
!1316 = !DILocation(line: 50, column: 11, scope: !1307, inlinedAt: !1311)
!1317 = !DILocation(line: 50, column: 9, scope: !1307, inlinedAt: !1311)
!1318 = !DILocation(line: 50, column: 2, scope: !1307, inlinedAt: !1311)
!1319 = !DILocation(line: 89, column: 3, scope: !1261, inlinedAt: !1270)
!1320 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 89, column: 3, scope: !1261, inlinedAt: !1270)
!1323 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1321)
!1324 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1321)
!1325 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1322)
!1326 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1322)
!1327 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1322)
!1328 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1322)
!1329 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1322)
!1330 = !DILocation(line: 90, column: 7, scope: !1331, inlinedAt: !1270)
!1331 = distinct !DILexicalBlock(scope: !1261, file: !1196, line: 90, column: 7)
!1332 = !DILocation(line: 90, column: 18, scope: !1331, inlinedAt: !1270)
!1333 = !DILocation(line: 90, column: 23, scope: !1331, inlinedAt: !1270)
!1334 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 93, column: 16, scope: !1337, inlinedAt: !1270)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !1196, line: 92, column: 12)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !1196, line: 92, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1261, file: !1196, line: 92, column: 3)
!1340 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1335)
!1341 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1335)
!1342 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1336)
!1343 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1336)
!1344 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1336)
!1345 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1336)
!1346 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1336)
!1347 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1336)
!1348 = !DILocation(line: 87, column: 21, scope: !1261, inlinedAt: !1270)
!1349 = !DILocation(line: 95, column: 12, scope: !1337, inlinedAt: !1270)
!1350 = !DILocation(line: 88, column: 17, scope: !1261, inlinedAt: !1270)
!1351 = !DILocalVariable(name: "wq", arg: 1, scope: !1352, file: !831, line: 58, type: !834)
!1352 = distinct !DISubprogram(name: "uk_waitq_add", scope: !831, file: !831, line: 58, type: !1353, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !834, !65}
!1355 = !{!1351, !1356}
!1356 = !DILocalVariable(name: "entry", arg: 2, scope: !1352, file: !831, line: 59, type: !65)
!1357 = !DILocation(line: 58, column: 36, scope: !1352, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 96, column: 4, scope: !1337, inlinedAt: !1270)
!1359 = !DILocation(line: 59, column: 26, scope: !1352, inlinedAt: !1358)
!1360 = !DILocation(line: 61, column: 14, scope: !1361, inlinedAt: !1358)
!1361 = distinct !DILexicalBlock(scope: !1352, file: !831, line: 61, column: 6)
!1362 = !{!850, !576, i64 0}
!1363 = !DILocation(line: 61, column: 7, scope: !1361, inlinedAt: !1358)
!1364 = !DILocation(line: 61, column: 6, scope: !1352, inlinedAt: !1358)
!1365 = !DILocation(line: 62, column: 3, scope: !1366, inlinedAt: !1358)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !831, line: 62, column: 3)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !831, line: 61, column: 23)
!1368 = !{!575, !570, i64 8}
!1369 = !DILocation(line: 63, column: 18, scope: !1367, inlinedAt: !1358)
!1370 = !DILocation(line: 64, column: 2, scope: !1367, inlinedAt: !1358)
!1371 = !DILocation(line: 65, column: 1, scope: !1352, inlinedAt: !1358)
!1372 = !DILocalVariable(name: "thread", arg: 1, scope: !1373, file: !33, line: 122, type: !31)
!1373 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !33, file: !33, line: 122, type: !1374, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !31, !53}
!1376 = !{!1372, !1377}
!1377 = !DILocalVariable(name: "time", arg: 2, scope: !1373, file: !33, line: 122, type: !53)
!1378 = !DILocation(line: 122, column: 64, scope: !1373, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 97, column: 4, scope: !1337, inlinedAt: !1270)
!1380 = !DILocation(line: 122, column: 80, scope: !1373, inlinedAt: !1379)
!1381 = !DILocation(line: 124, column: 10, scope: !1373, inlinedAt: !1379)
!1382 = !DILocation(line: 124, column: 22, scope: !1373, inlinedAt: !1379)
!1383 = !{!622, !574, i64 56}
!1384 = !DILocation(line: 125, column: 1, scope: !1373, inlinedAt: !1379)
!1385 = !DILocalVariable(name: "thread", arg: 1, scope: !1386, file: !33, line: 183, type: !31)
!1386 = distinct !DISubprogram(name: "clear_runnable", scope: !33, file: !33, line: 183, type: !894, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1387)
!1387 = !{!1385}
!1388 = !DILocation(line: 183, column: 53, scope: !1386, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 99, column: 4, scope: !1337, inlinedAt: !1270)
!1390 = !DILocation(line: 185, column: 10, scope: !1386, inlinedAt: !1389)
!1391 = !DILocation(line: 185, column: 16, scope: !1386, inlinedAt: !1389)
!1392 = !{!622, !576, i64 48}
!1393 = !DILocation(line: 186, column: 1, scope: !1386, inlinedAt: !1389)
!1394 = !DILocalVariable(name: "t", arg: 1, scope: !1395, file: !80, line: 151, type: !31)
!1395 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !80, file: !80, line: 151, type: !894, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1396)
!1396 = !{!1394}
!1397 = !DILocation(line: 151, column: 62, scope: !1395, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 100, column: 4, scope: !1337, inlinedAt: !1270)
!1399 = !DILocation(line: 153, column: 2, scope: !1400, inlinedAt: !1398)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !80, line: 153, column: 2)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !80, line: 153, column: 2)
!1402 = !DILocation(line: 153, column: 2, scope: !1401, inlinedAt: !1398)
!1403 = !DILocation(line: 153, column: 2, scope: !1404, inlinedAt: !1398)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !80, line: 153, column: 2)
!1405 = !DILocation(line: 154, column: 6, scope: !1395, inlinedAt: !1398)
!1406 = !DILocation(line: 154, column: 14, scope: !1395, inlinedAt: !1398)
!1407 = !{!1037, !570, i64 24}
!1408 = !DILocation(line: 154, column: 2, scope: !1395, inlinedAt: !1398)
!1409 = !DILocation(line: 155, column: 1, scope: !1395, inlinedAt: !1398)
!1410 = !DILocation(line: 102, column: 4, scope: !1337, inlinedAt: !1270)
!1411 = !DILocation(line: 103, column: 8, scope: !1412, inlinedAt: !1270)
!1412 = distinct !DILexicalBlock(scope: !1337, file: !1196, line: 103, column: 8)
!1413 = !DILocation(line: 103, column: 19, scope: !1412, inlinedAt: !1270)
!1414 = !DILocation(line: 103, column: 24, scope: !1412, inlinedAt: !1270)
!1415 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 117, column: 30, scope: !1007, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 105, column: 4, scope: !1337, inlinedAt: !1270)
!1419 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1416)
!1420 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1416)
!1421 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1417)
!1422 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1417)
!1423 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1417)
!1424 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1417)
!1425 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1417)
!1426 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1417)
!1427 = !DILocation(line: 117, column: 20, scope: !1007, inlinedAt: !1418)
!1428 = !DILocation(line: 119, column: 2, scope: !1022, inlinedAt: !1418)
!1429 = !DILocation(line: 119, column: 2, scope: !1023, inlinedAt: !1418)
!1430 = !DILocation(line: 119, column: 2, scope: !1026, inlinedAt: !1418)
!1431 = !DILocation(line: 121, column: 15, scope: !1007, inlinedAt: !1418)
!1432 = !DILocation(line: 116, column: 19, scope: !1007, inlinedAt: !1418)
!1433 = !DILocation(line: 122, column: 2, scope: !1030, inlinedAt: !1418)
!1434 = !DILocation(line: 122, column: 2, scope: !1031, inlinedAt: !1418)
!1435 = !DILocation(line: 122, column: 2, scope: !1034, inlinedAt: !1418)
!1436 = !DILocation(line: 123, column: 5, scope: !1007, inlinedAt: !1418)
!1437 = !DILocation(line: 123, column: 2, scope: !1007, inlinedAt: !1418)
!1438 = !DILocation(line: 124, column: 1, scope: !1007, inlinedAt: !1418)
!1439 = !DILocation(line: 92, column: 3, scope: !1338, inlinedAt: !1270)
!1440 = distinct !{!1440, !1441, !1442}
!1441 = !DILocation(line: 92, column: 3, scope: !1339)
!1442 = !DILocation(line: 106, column: 3, scope: !1339)
!1443 = !DILocation(line: 107, column: 11, scope: !1261, inlinedAt: !1270)
!1444 = !DILocation(line: 109, column: 3, scope: !1261, inlinedAt: !1270)
!1445 = !DILocalVariable(name: "wq", arg: 1, scope: !1446, file: !831, line: 68, type: !834)
!1446 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !831, file: !831, line: 68, type: !1353, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1447)
!1447 = !{!1445, !1448, !1449}
!1448 = !DILocalVariable(name: "entry", arg: 2, scope: !1446, file: !831, line: 69, type: !65)
!1449 = !DILocalVariable(name: "curelm", scope: !1450, file: !831, line: 72, type: !65)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !831, line: 72, column: 3)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !831, line: 72, column: 3)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !831, line: 72, column: 3)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !831, line: 71, column: 22)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !831, line: 71, column: 6)
!1455 = !DILocation(line: 68, column: 39, scope: !1446, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 110, column: 3, scope: !1261, inlinedAt: !1270)
!1457 = !DILocation(line: 69, column: 26, scope: !1446, inlinedAt: !1456)
!1458 = !DILocation(line: 71, column: 13, scope: !1454, inlinedAt: !1456)
!1459 = !DILocation(line: 71, column: 6, scope: !1454, inlinedAt: !1456)
!1460 = !DILocation(line: 71, column: 6, scope: !1446, inlinedAt: !1456)
!1461 = !DILocation(line: 72, column: 3, scope: !1451, inlinedAt: !1456)
!1462 = !DILocation(line: 72, column: 3, scope: !1452, inlinedAt: !1456)
!1463 = !DILocation(line: 72, column: 3, scope: !1464, inlinedAt: !1456)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !831, line: 72, column: 3)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !831, line: 72, column: 3)
!1466 = distinct !DILexicalBlock(scope: !1451, file: !831, line: 72, column: 3)
!1467 = !DILocation(line: 72, column: 3, scope: !1465, inlinedAt: !1456)
!1468 = !DILocation(line: 72, column: 3, scope: !1450, inlinedAt: !1456)
!1469 = distinct !{!1469, !1470, !1470}
!1470 = !DILocation(line: 72, column: 3, scope: !1450)
!1471 = !DILocation(line: 72, column: 3, scope: !1472, inlinedAt: !1456)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !831, line: 72, column: 3)
!1473 = distinct !DILexicalBlock(scope: !1450, file: !831, line: 72, column: 3)
!1474 = !DILocation(line: 72, column: 3, scope: !1473, inlinedAt: !1456)
!1475 = !DILocation(line: 73, column: 18, scope: !1453, inlinedAt: !1456)
!1476 = !DILocation(line: 74, column: 2, scope: !1453, inlinedAt: !1456)
!1477 = !DILocation(line: 75, column: 1, scope: !1446, inlinedAt: !1456)
!1478 = !DILocation(line: 111, column: 3, scope: !1261, inlinedAt: !1270)
!1479 = !DILocation(line: 112, column: 2, scope: !1262, inlinedAt: !1270)
!1480 = !DILocation(line: 114, column: 9, scope: !1262, inlinedAt: !1270)
!1481 = !DILocation(line: 72, column: 16, scope: !1251, inlinedAt: !1270)
!1482 = !DILocation(line: 115, column: 9, scope: !1483, inlinedAt: !1270)
!1483 = distinct !DILexicalBlock(scope: !1262, file: !1196, line: 115, column: 6)
!1484 = !DILocation(line: 115, column: 20, scope: !1483, inlinedAt: !1270)
!1485 = !DILocation(line: 115, column: 25, scope: !1483, inlinedAt: !1270)
!1486 = !DILocation(line: 115, column: 31, scope: !1483, inlinedAt: !1270)
!1487 = !DILocation(line: 115, column: 37, scope: !1483, inlinedAt: !1270)
!1488 = !DILocation(line: 115, column: 6, scope: !1262, inlinedAt: !1270)
!1489 = !DILocation(line: 117, column: 2, scope: !1262, inlinedAt: !1270)
!1490 = !DILocation(line: 85, column: 2, scope: !1263, inlinedAt: !1270)
!1491 = distinct !{!1491, !1492, !1493}
!1492 = !DILocation(line: 85, column: 2, scope: !1264)
!1493 = !DILocation(line: 118, column: 1, scope: !1264)
!1494 = !DILocation(line: 119, column: 15, scope: !1251, inlinedAt: !1270)
!1495 = !DILocation(line: 120, column: 11, scope: !1251, inlinedAt: !1270)
!1496 = !DILocation(line: 121, column: 2, scope: !1251, inlinedAt: !1270)
!1497 = !DILocation(line: 122, column: 1, scope: !1251, inlinedAt: !1270)
!1498 = !DILocation(line: 370, column: 2, scope: !1247)
!1499 = !DILocation(line: 0, scope: !1273)
!1500 = !DILocation(line: 371, column: 1, scope: !1247)
!1501 = distinct !DISubprogram(name: "pte_osMutexTimedLock", scope: !3, file: !3, line: 373, type: !1502, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!547, !1193, !7}
!1504 = !{!1505, !1506}
!1505 = !DILocalVariable(name: "h", arg: 1, scope: !1501, file: !3, line: 373, type: !1193)
!1506 = !DILocalVariable(name: "timeoutMsecs", arg: 2, scope: !1501, file: !3, line: 374, type: !7)
!1507 = !DILocation(line: 373, column: 53, scope: !1501)
!1508 = !DILocation(line: 374, column: 15, scope: !1501)
!1509 = !DILocation(line: 376, column: 2, scope: !1501)
!1510 = distinct !DISubprogram(name: "pte_osMutexUnlock", scope: !3, file: !3, line: 380, type: !1234, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "h", arg: 1, scope: !1510, file: !3, line: 380, type: !1193)
!1513 = !DILocation(line: 380, column: 50, scope: !1510)
!1514 = !DILocation(line: 382, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 382, column: 6)
!1516 = !DILocation(line: 382, column: 6, scope: !1510)
!1517 = !DILocalVariable(name: "m", arg: 1, scope: !1518, file: !1196, line: 149, type: !1194)
!1518 = distinct !DISubprogram(name: "uk_mutex_unlock", scope: !1196, file: !1196, line: 149, type: !1252, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1519)
!1519 = !{!1517, !1520, !1521}
!1520 = !DILocalVariable(name: "irqf", scope: !1518, file: !1196, line: 151, type: !104)
!1521 = !DILocalVariable(name: "wq", scope: !1518, file: !1196, line: 153, type: !819)
!1522 = !DILocation(line: 149, column: 53, scope: !1518, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 385, column: 2, scope: !1510)
!1524 = !DILocation(line: 153, column: 28, scope: !1518, inlinedAt: !1523)
!1525 = !DILocation(line: 157, column: 9, scope: !1518, inlinedAt: !1523)
!1526 = !DILocation(line: 151, column: 16, scope: !1518, inlinedAt: !1523)
!1527 = !DILocation(line: 158, column: 2, scope: !1528, inlinedAt: !1523)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !1196, line: 158, column: 2)
!1529 = distinct !DILexicalBlock(scope: !1518, file: !1196, line: 158, column: 2)
!1530 = !DILocation(line: 158, column: 2, scope: !1529, inlinedAt: !1523)
!1531 = !DILocation(line: 158, column: 2, scope: !1532, inlinedAt: !1523)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !1196, line: 158, column: 2)
!1533 = !DILocation(line: 159, column: 6, scope: !1534, inlinedAt: !1523)
!1534 = distinct !DILexicalBlock(scope: !1518, file: !1196, line: 159, column: 6)
!1535 = !DILocation(line: 159, column: 22, scope: !1534, inlinedAt: !1523)
!1536 = !DILocation(line: 159, column: 6, scope: !1518, inlinedAt: !1523)
!1537 = !DILocation(line: 160, column: 6, scope: !1538, inlinedAt: !1523)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !1196, line: 159, column: 28)
!1539 = !DILocation(line: 160, column: 12, scope: !1538, inlinedAt: !1523)
!1540 = !DILocation(line: 99, column: 40, scope: !830, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 161, column: 3, scope: !1538, inlinedAt: !1523)
!1542 = !DILocation(line: 104, column: 10, scope: !830, inlinedAt: !1541)
!1543 = !DILocation(line: 101, column: 16, scope: !830, inlinedAt: !1541)
!1544 = !DILocation(line: 105, column: 2, scope: !844, inlinedAt: !1541)
!1545 = !DILocation(line: 102, column: 25, scope: !830, inlinedAt: !1541)
!1546 = !DILocation(line: 105, column: 2, scope: !848, inlinedAt: !1541)
!1547 = !DILocation(line: 102, column: 32, scope: !830, inlinedAt: !1541)
!1548 = !DILocation(line: 106, column: 24, scope: !848, inlinedAt: !1541)
!1549 = !DILocation(line: 106, column: 3, scope: !848, inlinedAt: !1541)
!1550 = !DILocation(line: 107, column: 2, scope: !830, inlinedAt: !1541)
!1551 = !DILocation(line: 108, column: 1, scope: !830, inlinedAt: !1541)
!1552 = !DILocation(line: 162, column: 2, scope: !1538, inlinedAt: !1523)
!1553 = !DILocation(line: 163, column: 2, scope: !1518, inlinedAt: !1523)
!1554 = !DILocation(line: 164, column: 1, scope: !1518, inlinedAt: !1523)
!1555 = !DILocation(line: 387, column: 2, scope: !1510)
!1556 = !DILocation(line: 0, scope: !1515)
!1557 = !DILocation(line: 388, column: 1, scope: !1510)
!1558 = distinct !DISubprogram(name: "pte_osSemaphoreCreate", scope: !3, file: !3, line: 396, type: !1559, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1563)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!547, !69, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !645, line: 12, baseType: !815)
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "init_value", arg: 1, scope: !1558, file: !3, line: 396, type: !69)
!1565 = !DILocalVariable(name: "ph", arg: 2, scope: !1558, file: !3, line: 396, type: !1561)
!1566 = !DILocalVariable(name: "s", scope: !1558, file: !3, line: 398, type: !815)
!1567 = !DILocation(line: 396, column: 40, scope: !1558)
!1568 = !DILocation(line: 396, column: 75, scope: !1558)
!1569 = !DILocation(line: 400, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 400, column: 6)
!1571 = !DILocation(line: 400, column: 6, scope: !1558)
!1572 = !DILocation(line: 403, column: 16, scope: !1558)
!1573 = !DILocation(line: 157, column: 48, scope: !671, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 403, column: 6, scope: !1558)
!1575 = !DILocation(line: 157, column: 58, scope: !671, inlinedAt: !1574)
!1576 = !DILocation(line: 159, column: 6, scope: !678, inlinedAt: !1574)
!1577 = !DILocation(line: 159, column: 6, scope: !671, inlinedAt: !1574)
!1578 = !DILocation(line: 160, column: 3, scope: !682, inlinedAt: !1574)
!1579 = !DILocation(line: 160, column: 9, scope: !682, inlinedAt: !1574)
!1580 = !DILocation(line: 164, column: 1, scope: !671, inlinedAt: !1574)
!1581 = !DILocation(line: 404, column: 6, scope: !1558)
!1582 = !DILocation(line: 151, column: 51, scope: !689, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 163, column: 9, scope: !671, inlinedAt: !1574)
!1584 = !DILocation(line: 151, column: 61, scope: !689, inlinedAt: !1583)
!1585 = !DILocation(line: 154, column: 12, scope: !689, inlinedAt: !1583)
!1586 = !DILocation(line: 154, column: 9, scope: !689, inlinedAt: !1583)
!1587 = !DILocation(line: 154, column: 2, scope: !689, inlinedAt: !1583)
!1588 = !DILocation(line: 404, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 404, column: 6)
!1590 = !DILocation(line: 403, column: 6, scope: !1558)
!1591 = !DILocation(line: 398, column: 23, scope: !1558)
!1592 = !DILocation(line: 407, column: 23, scope: !1558)
!1593 = !DILocation(line: 407, column: 2, scope: !1558)
!1594 = !DILocation(line: 409, column: 6, scope: !1558)
!1595 = !DILocation(line: 411, column: 2, scope: !1558)
!1596 = !DILocation(line: 0, scope: !1570)
!1597 = !DILocation(line: 412, column: 1, scope: !1558)
!1598 = distinct !DISubprogram(name: "pte_osSemaphoreDelete", scope: !3, file: !3, line: 414, type: !1599, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1601)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!547, !1562}
!1601 = !{!1602}
!1602 = !DILocalVariable(name: "h", arg: 1, scope: !1598, file: !3, line: 414, type: !1562)
!1603 = !DILocation(line: 414, column: 58, scope: !1598)
!1604 = !DILocation(line: 416, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 416, column: 6)
!1606 = !DILocation(line: 416, column: 6, scope: !1598)
!1607 = !DILocation(line: 419, column: 10, scope: !1598)
!1608 = !DILocalVariable(name: "a", arg: 1, scope: !1609, file: !156, line: 237, type: !154)
!1609 = distinct !DISubprogram(name: "uk_free", scope: !156, file: !156, line: 237, type: !188, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1610)
!1610 = !{!1608, !1611}
!1611 = !DILocalVariable(name: "ptr", arg: 2, scope: !1609, file: !156, line: 237, type: !29)
!1612 = !DILocation(line: 237, column: 45, scope: !1609, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 419, column: 2, scope: !1598)
!1614 = !DILocalVariable(name: "a", arg: 1, scope: !1615, file: !156, line: 231, type: !154)
!1615 = distinct !DISubprogram(name: "uk_do_free", scope: !156, file: !156, line: 231, type: !188, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1616)
!1616 = !{!1614, !1617}
!1617 = !DILocalVariable(name: "ptr", arg: 2, scope: !1615, file: !156, line: 231, type: !29)
!1618 = !DILocation(line: 231, column: 48, scope: !1615, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 239, column: 2, scope: !1609, inlinedAt: !1613)
!1620 = !DILocation(line: 233, column: 2, scope: !1621, inlinedAt: !1619)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !156, line: 233, column: 2)
!1622 = distinct !DILexicalBlock(scope: !1615, file: !156, line: 233, column: 2)
!1623 = !DILocation(line: 233, column: 2, scope: !1622, inlinedAt: !1619)
!1624 = !DILocation(line: 233, column: 2, scope: !1625, inlinedAt: !1619)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !156, line: 233, column: 2)
!1626 = !DILocation(line: 419, column: 31, scope: !1598)
!1627 = !DILocation(line: 231, column: 57, scope: !1615, inlinedAt: !1619)
!1628 = !DILocation(line: 237, column: 54, scope: !1609, inlinedAt: !1613)
!1629 = !DILocation(line: 234, column: 5, scope: !1615, inlinedAt: !1619)
!1630 = !DILocation(line: 234, column: 2, scope: !1615, inlinedAt: !1619)
!1631 = !DILocation(line: 235, column: 1, scope: !1615, inlinedAt: !1619)
!1632 = !DILocation(line: 240, column: 1, scope: !1609, inlinedAt: !1613)
!1633 = !DILocation(line: 421, column: 2, scope: !1598)
!1634 = !DILocation(line: 0, scope: !1605)
!1635 = !DILocation(line: 422, column: 1, scope: !1598)
!1636 = distinct !DISubprogram(name: "pte_osSemaphorePost", scope: !3, file: !3, line: 424, type: !1637, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!547, !1562, !69}
!1639 = !{!1640, !1641, !1642}
!1640 = !DILocalVariable(name: "h", arg: 1, scope: !1636, file: !3, line: 424, type: !1562)
!1641 = !DILocalVariable(name: "count", arg: 2, scope: !1636, file: !3, line: 424, type: !69)
!1642 = !DILocalVariable(name: "i", scope: !1636, file: !3, line: 426, type: !69)
!1643 = !DILocation(line: 424, column: 56, scope: !1636)
!1644 = !DILocation(line: 424, column: 63, scope: !1636)
!1645 = !DILocation(line: 428, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 428, column: 6)
!1647 = !DILocation(line: 428, column: 6, scope: !1636)
!1648 = !DILocation(line: 426, column: 6, scope: !1636)
!1649 = !DILocation(line: 431, column: 16, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 431, column: 2)
!1651 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 431, column: 2)
!1652 = !DILocation(line: 431, column: 2, scope: !1651)
!1653 = !DILocation(line: 194, column: 57, scope: !812, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 432, column: 3, scope: !1650)
!1655 = !DILocation(line: 200, column: 9, scope: !812, inlinedAt: !1654)
!1656 = !DILocation(line: 196, column: 16, scope: !812, inlinedAt: !1654)
!1657 = !DILocation(line: 201, column: 2, scope: !812, inlinedAt: !1654)
!1658 = !DILocation(line: 209, column: 28, scope: !812, inlinedAt: !1654)
!1659 = !DILocation(line: 99, column: 40, scope: !830, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 210, column: 2, scope: !812, inlinedAt: !1654)
!1661 = !DILocation(line: 104, column: 10, scope: !830, inlinedAt: !1660)
!1662 = !DILocation(line: 101, column: 16, scope: !830, inlinedAt: !1660)
!1663 = !DILocation(line: 105, column: 2, scope: !844, inlinedAt: !1660)
!1664 = !DILocation(line: 102, column: 25, scope: !830, inlinedAt: !1660)
!1665 = !DILocation(line: 105, column: 2, scope: !848, inlinedAt: !1660)
!1666 = !DILocation(line: 102, column: 32, scope: !830, inlinedAt: !1660)
!1667 = !DILocation(line: 106, column: 24, scope: !848, inlinedAt: !1660)
!1668 = !DILocation(line: 106, column: 3, scope: !848, inlinedAt: !1660)
!1669 = !DILocation(line: 107, column: 2, scope: !830, inlinedAt: !1660)
!1670 = !DILocation(line: 108, column: 1, scope: !830, inlinedAt: !1660)
!1671 = !DILocation(line: 211, column: 2, scope: !812, inlinedAt: !1654)
!1672 = !DILocation(line: 212, column: 1, scope: !812, inlinedAt: !1654)
!1673 = !DILocation(line: 431, column: 26, scope: !1650)
!1674 = distinct !{!1674, !1652, !1675}
!1675 = !DILocation(line: 432, column: 20, scope: !1651)
!1676 = !DILocation(line: 0, scope: !1646)
!1677 = !DILocation(line: 435, column: 1, scope: !1636)
!1678 = distinct !DISubprogram(name: "pte_osSemaphorePend", scope: !3, file: !3, line: 437, type: !1679, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1682)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!547, !1562, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1682 = !{!1683, !1684, !1685}
!1683 = !DILocalVariable(name: "h", arg: 1, scope: !1678, file: !3, line: 437, type: !1562)
!1684 = !DILocalVariable(name: "ptimeout_msecs", arg: 2, scope: !1678, file: !3, line: 438, type: !1681)
!1685 = !DILocalVariable(name: "timeout", scope: !1678, file: !3, line: 440, type: !102)
!1686 = !DILocation(line: 437, column: 56, scope: !1678)
!1687 = !DILocation(line: 438, column: 16, scope: !1678)
!1688 = !DILocation(line: 442, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 442, column: 6)
!1690 = !DILocation(line: 442, column: 6, scope: !1678)
!1691 = !DILocation(line: 445, column: 6, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 445, column: 6)
!1693 = !DILocation(line: 445, column: 6, scope: !1678)
!1694 = !DILocation(line: 446, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 445, column: 22)
!1696 = !DILocation(line: 440, column: 9, scope: !1678)
!1697 = !DILocalVariable(name: "s", arg: 1, scope: !1698, file: !487, line: 128, type: !815)
!1698 = distinct !DISubprogram(name: "uk_semaphore_down_to", scope: !487, file: !487, line: 128, type: !1699, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!102, !815, !102}
!1701 = !{!1697, !1702, !1703, !1704, !1705, !1706, !1711, !1712, !1713}
!1702 = !DILocalVariable(name: "timeout", arg: 2, scope: !1698, file: !487, line: 129, type: !102)
!1703 = !DILocalVariable(name: "irqf", scope: !1698, file: !487, line: 131, type: !104)
!1704 = !DILocalVariable(name: "then", scope: !1698, file: !487, line: 132, type: !102)
!1705 = !DILocalVariable(name: "deadline", scope: !1698, file: !487, line: 133, type: !102)
!1706 = !DILocalVariable(name: "__current", scope: !1707, file: !487, line: 141, type: !31)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !487, line: 140, column: 6)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !487, line: 139, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !487, line: 139, column: 2)
!1710 = distinct !DILexicalBlock(scope: !1698, file: !487, line: 139, column: 2)
!1711 = !DILocalVariable(name: "flags", scope: !1707, file: !487, line: 142, type: !104)
!1712 = !DILocalVariable(name: "__cur", scope: !1707, file: !487, line: 143, type: !31)
!1713 = !DILocalVariable(name: "__wait", scope: !1707, file: !487, line: 143, type: !65)
!1714 = !DILocation(line: 128, column: 64, scope: !1698, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 448, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 448, column: 7)
!1717 = !DILocation(line: 129, column: 15, scope: !1698, inlinedAt: !1715)
!1718 = !DILocation(line: 132, column: 16, scope: !1698, inlinedAt: !1715)
!1719 = !DILocation(line: 132, column: 9, scope: !1698, inlinedAt: !1715)
!1720 = !DILocation(line: 137, column: 18, scope: !1698, inlinedAt: !1715)
!1721 = !DILocation(line: 133, column: 9, scope: !1698, inlinedAt: !1715)
!1722 = !DILocation(line: 139, column: 2, scope: !1698, inlinedAt: !1715)
!1723 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 143, column: 4, scope: !1707, inlinedAt: !1715)
!1726 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1724)
!1727 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1724)
!1728 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1725)
!1729 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1725)
!1730 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1725)
!1731 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 49, column: 21, scope: !1307, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 143, column: 4, scope: !1707, inlinedAt: !1715)
!1734 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1732)
!1735 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1732)
!1736 = !DILocation(line: 49, column: 16, scope: !1307, inlinedAt: !1733)
!1737 = !DILocation(line: 50, column: 19, scope: !1307, inlinedAt: !1733)
!1738 = !DILocation(line: 50, column: 11, scope: !1307, inlinedAt: !1733)
!1739 = !DILocation(line: 50, column: 9, scope: !1307, inlinedAt: !1733)
!1740 = !DILocation(line: 50, column: 2, scope: !1307, inlinedAt: !1733)
!1741 = !DILocation(line: 143, column: 4, scope: !1707, inlinedAt: !1715)
!1742 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 143, column: 4, scope: !1707, inlinedAt: !1715)
!1745 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1743)
!1746 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1743)
!1747 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1744)
!1748 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1744)
!1749 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1744)
!1750 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1744)
!1751 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1744)
!1752 = !DILocation(line: 144, column: 11, scope: !1753, inlinedAt: !1715)
!1753 = distinct !DILexicalBlock(scope: !1707, file: !487, line: 144, column: 8)
!1754 = !DILocation(line: 144, column: 17, scope: !1753, inlinedAt: !1715)
!1755 = !DILocation(line: 144, column: 8, scope: !1707, inlinedAt: !1715)
!1756 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 147, column: 17, scope: !1759, inlinedAt: !1715)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !487, line: 146, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !487, line: 146, column: 4)
!1761 = distinct !DILexicalBlock(scope: !1707, file: !487, line: 146, column: 4)
!1762 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1757)
!1763 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1757)
!1764 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1758)
!1765 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1758)
!1766 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1758)
!1767 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1758)
!1768 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1758)
!1769 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1758)
!1770 = !DILocation(line: 141, column: 22, scope: !1707, inlinedAt: !1715)
!1771 = !DILocation(line: 149, column: 13, scope: !1759, inlinedAt: !1715)
!1772 = !DILocation(line: 142, column: 18, scope: !1707, inlinedAt: !1715)
!1773 = !DILocation(line: 58, column: 36, scope: !1352, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 150, column: 5, scope: !1759, inlinedAt: !1715)
!1775 = !DILocation(line: 59, column: 26, scope: !1352, inlinedAt: !1774)
!1776 = !DILocation(line: 61, column: 14, scope: !1361, inlinedAt: !1774)
!1777 = !DILocation(line: 61, column: 7, scope: !1361, inlinedAt: !1774)
!1778 = !DILocation(line: 61, column: 6, scope: !1352, inlinedAt: !1774)
!1779 = !DILocation(line: 62, column: 3, scope: !1366, inlinedAt: !1774)
!1780 = !DILocation(line: 63, column: 18, scope: !1367, inlinedAt: !1774)
!1781 = !DILocation(line: 64, column: 2, scope: !1367, inlinedAt: !1774)
!1782 = !DILocation(line: 65, column: 1, scope: !1352, inlinedAt: !1774)
!1783 = !DILocation(line: 122, column: 64, scope: !1373, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 151, column: 5, scope: !1759, inlinedAt: !1715)
!1785 = !DILocation(line: 122, column: 80, scope: !1373, inlinedAt: !1784)
!1786 = !DILocation(line: 124, column: 10, scope: !1373, inlinedAt: !1784)
!1787 = !DILocation(line: 124, column: 22, scope: !1373, inlinedAt: !1784)
!1788 = !DILocation(line: 125, column: 1, scope: !1373, inlinedAt: !1784)
!1789 = !DILocation(line: 183, column: 53, scope: !1386, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 154, column: 5, scope: !1759, inlinedAt: !1715)
!1791 = !DILocation(line: 185, column: 10, scope: !1386, inlinedAt: !1790)
!1792 = !DILocation(line: 185, column: 16, scope: !1386, inlinedAt: !1790)
!1793 = !DILocation(line: 186, column: 1, scope: !1386, inlinedAt: !1790)
!1794 = !DILocation(line: 151, column: 62, scope: !1395, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 156, column: 5, scope: !1759, inlinedAt: !1715)
!1796 = !DILocation(line: 153, column: 2, scope: !1400, inlinedAt: !1795)
!1797 = !DILocation(line: 153, column: 2, scope: !1401, inlinedAt: !1795)
!1798 = !DILocation(line: 153, column: 2, scope: !1404, inlinedAt: !1795)
!1799 = !DILocation(line: 154, column: 6, scope: !1395, inlinedAt: !1795)
!1800 = !DILocation(line: 154, column: 14, scope: !1395, inlinedAt: !1795)
!1801 = !DILocation(line: 154, column: 2, scope: !1395, inlinedAt: !1795)
!1802 = !DILocation(line: 155, column: 1, scope: !1395, inlinedAt: !1795)
!1803 = !DILocation(line: 158, column: 5, scope: !1759, inlinedAt: !1715)
!1804 = !DILocation(line: 159, column: 12, scope: !1805, inlinedAt: !1715)
!1805 = distinct !DILexicalBlock(scope: !1759, file: !487, line: 159, column: 9)
!1806 = !DILocation(line: 159, column: 18, scope: !1805, inlinedAt: !1715)
!1807 = !DILocation(line: 159, column: 22, scope: !1805, inlinedAt: !1715)
!1808 = !DILocation(line: 159, column: 35, scope: !1805, inlinedAt: !1715)
!1809 = !DILocation(line: 159, column: 38, scope: !1805, inlinedAt: !1715)
!1810 = !DILocation(line: 159, column: 63, scope: !1805, inlinedAt: !1715)
!1811 = !DILocation(line: 159, column: 9, scope: !1759, inlinedAt: !1715)
!1812 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 117, column: 30, scope: !1007, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 161, column: 5, scope: !1759, inlinedAt: !1715)
!1816 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1813)
!1817 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1813)
!1818 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1814)
!1819 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1814)
!1820 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1814)
!1821 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1814)
!1822 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1814)
!1823 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1814)
!1824 = !DILocation(line: 117, column: 20, scope: !1007, inlinedAt: !1815)
!1825 = !DILocation(line: 119, column: 2, scope: !1022, inlinedAt: !1815)
!1826 = !DILocation(line: 119, column: 2, scope: !1023, inlinedAt: !1815)
!1827 = !DILocation(line: 119, column: 2, scope: !1026, inlinedAt: !1815)
!1828 = !DILocation(line: 121, column: 15, scope: !1007, inlinedAt: !1815)
!1829 = !DILocation(line: 116, column: 19, scope: !1007, inlinedAt: !1815)
!1830 = !DILocation(line: 122, column: 2, scope: !1030, inlinedAt: !1815)
!1831 = !DILocation(line: 122, column: 2, scope: !1031, inlinedAt: !1815)
!1832 = !DILocation(line: 122, column: 2, scope: !1034, inlinedAt: !1815)
!1833 = !DILocation(line: 123, column: 5, scope: !1007, inlinedAt: !1815)
!1834 = !DILocation(line: 123, column: 2, scope: !1007, inlinedAt: !1815)
!1835 = !DILocation(line: 124, column: 1, scope: !1007, inlinedAt: !1815)
!1836 = !DILocation(line: 146, column: 4, scope: !1760, inlinedAt: !1715)
!1837 = distinct !{!1837, !1838, !1839}
!1838 = !DILocation(line: 146, column: 4, scope: !1761)
!1839 = !DILocation(line: 162, column: 4, scope: !1761)
!1840 = !DILocation(line: 163, column: 12, scope: !1707, inlinedAt: !1715)
!1841 = !DILocation(line: 165, column: 4, scope: !1707, inlinedAt: !1715)
!1842 = !DILocation(line: 68, column: 39, scope: !1446, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 166, column: 4, scope: !1707, inlinedAt: !1715)
!1844 = !DILocation(line: 69, column: 26, scope: !1446, inlinedAt: !1843)
!1845 = !DILocation(line: 71, column: 13, scope: !1454, inlinedAt: !1843)
!1846 = !DILocation(line: 71, column: 6, scope: !1454, inlinedAt: !1843)
!1847 = !DILocation(line: 71, column: 6, scope: !1446, inlinedAt: !1843)
!1848 = !DILocation(line: 72, column: 3, scope: !1451, inlinedAt: !1843)
!1849 = !DILocation(line: 72, column: 3, scope: !1452, inlinedAt: !1843)
!1850 = !DILocation(line: 72, column: 3, scope: !1464, inlinedAt: !1843)
!1851 = !DILocation(line: 72, column: 3, scope: !1465, inlinedAt: !1843)
!1852 = !DILocation(line: 72, column: 3, scope: !1450, inlinedAt: !1843)
!1853 = !DILocation(line: 72, column: 3, scope: !1472, inlinedAt: !1843)
!1854 = !DILocation(line: 72, column: 3, scope: !1473, inlinedAt: !1843)
!1855 = !DILocation(line: 73, column: 18, scope: !1453, inlinedAt: !1843)
!1856 = !DILocation(line: 74, column: 2, scope: !1453, inlinedAt: !1843)
!1857 = !DILocation(line: 75, column: 1, scope: !1446, inlinedAt: !1843)
!1858 = !DILocation(line: 167, column: 4, scope: !1707, inlinedAt: !1715)
!1859 = !DILocation(line: 168, column: 3, scope: !1708, inlinedAt: !1715)
!1860 = !DILocation(line: 170, column: 10, scope: !1708, inlinedAt: !1715)
!1861 = !DILocation(line: 131, column: 16, scope: !1698, inlinedAt: !1715)
!1862 = !DILocation(line: 171, column: 10, scope: !1863, inlinedAt: !1715)
!1863 = distinct !DILexicalBlock(scope: !1708, file: !487, line: 171, column: 7)
!1864 = !DILocation(line: 171, column: 16, scope: !1863, inlinedAt: !1715)
!1865 = !DILocation(line: 171, column: 20, scope: !1863, inlinedAt: !1715)
!1866 = !DILocation(line: 171, column: 33, scope: !1863, inlinedAt: !1715)
!1867 = !DILocation(line: 172, column: 10, scope: !1863, inlinedAt: !1715)
!1868 = !DILocation(line: 172, column: 35, scope: !1863, inlinedAt: !1715)
!1869 = !DILocation(line: 171, column: 7, scope: !1708, inlinedAt: !1715)
!1870 = !DILocation(line: 174, column: 3, scope: !1708, inlinedAt: !1715)
!1871 = !DILocation(line: 139, column: 2, scope: !1709, inlinedAt: !1715)
!1872 = distinct !{!1872, !1873, !1874}
!1873 = !DILocation(line: 139, column: 2, scope: !1710)
!1874 = !DILocation(line: 175, column: 2, scope: !1710)
!1875 = !DILocation(line: 177, column: 9, scope: !1876, inlinedAt: !1715)
!1876 = distinct !DILexicalBlock(scope: !1698, file: !487, line: 177, column: 6)
!1877 = !DILocation(line: 177, column: 15, scope: !1876, inlinedAt: !1715)
!1878 = !DILocation(line: 177, column: 6, scope: !1698, inlinedAt: !1715)
!1879 = !DILocation(line: 187, column: 2, scope: !1698, inlinedAt: !1715)
!1880 = !DILocation(line: 192, column: 1, scope: !1698, inlinedAt: !1715)
!1881 = !DILocation(line: 448, column: 7, scope: !1695)
!1882 = !DILocation(line: 178, column: 11, scope: !1883, inlinedAt: !1715)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !487, line: 177, column: 20)
!1884 = !DILocation(line: 183, column: 3, scope: !1883, inlinedAt: !1715)
!1885 = !DILocation(line: 184, column: 10, scope: !1883, inlinedAt: !1715)
!1886 = !DILocation(line: 184, column: 35, scope: !1883, inlinedAt: !1715)
!1887 = !DILocation(line: 448, column: 40, scope: !1716)
!1888 = !DILocation(line: 452, column: 3, scope: !1692)
!1889 = !DILocation(line: 454, column: 2, scope: !1678)
!1890 = !DILocation(line: 0, scope: !1689)
!1891 = !DILocation(line: 455, column: 1, scope: !1678)
!1892 = distinct !DISubprogram(name: "uk_semaphore_down", scope: !487, file: !487, line: 58, type: !813, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1893)
!1893 = !{!1894, !1895, !1896, !1901, !1902, !1903}
!1894 = !DILocalVariable(name: "s", arg: 1, scope: !1892, file: !487, line: 58, type: !815)
!1895 = !DILocalVariable(name: "irqf", scope: !1892, file: !487, line: 60, type: !104)
!1896 = !DILocalVariable(name: "__current", scope: !1897, file: !487, line: 66, type: !31)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !487, line: 65, column: 6)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !487, line: 64, column: 11)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !487, line: 64, column: 2)
!1900 = distinct !DILexicalBlock(scope: !1892, file: !487, line: 64, column: 2)
!1901 = !DILocalVariable(name: "flags", scope: !1897, file: !487, line: 67, type: !104)
!1902 = !DILocalVariable(name: "__cur", scope: !1897, file: !487, line: 68, type: !31)
!1903 = !DILocalVariable(name: "__wait", scope: !1897, file: !487, line: 68, type: !65)
!1904 = !DILocation(line: 58, column: 59, scope: !1892)
!1905 = !DILocation(line: 62, column: 2, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !487, line: 62, column: 2)
!1907 = distinct !DILexicalBlock(scope: !1892, file: !487, line: 62, column: 2)
!1908 = !DILocation(line: 62, column: 2, scope: !1907)
!1909 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 68, column: 4, scope: !1897)
!1912 = !DILocation(line: 62, column: 2, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1906, file: !487, line: 62, column: 2)
!1914 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1910)
!1915 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1910)
!1916 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1911)
!1917 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1911)
!1918 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1911)
!1919 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 49, column: 21, scope: !1307, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 68, column: 4, scope: !1897)
!1922 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1920)
!1923 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1920)
!1924 = !DILocation(line: 49, column: 16, scope: !1307, inlinedAt: !1921)
!1925 = !DILocation(line: 50, column: 19, scope: !1307, inlinedAt: !1921)
!1926 = !DILocation(line: 50, column: 11, scope: !1307, inlinedAt: !1921)
!1927 = !DILocation(line: 50, column: 9, scope: !1307, inlinedAt: !1921)
!1928 = !DILocation(line: 50, column: 2, scope: !1307, inlinedAt: !1921)
!1929 = !DILocation(line: 68, column: 4, scope: !1897)
!1930 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 68, column: 4, scope: !1897)
!1933 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1931)
!1934 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1931)
!1935 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1932)
!1936 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1932)
!1937 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1932)
!1938 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1932)
!1939 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1932)
!1940 = !DILocation(line: 69, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1897, file: !487, line: 69, column: 8)
!1942 = !DILocation(line: 69, column: 17, scope: !1941)
!1943 = !DILocation(line: 69, column: 8, scope: !1897)
!1944 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 72, column: 17, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !487, line: 71, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !487, line: 71, column: 4)
!1949 = distinct !DILexicalBlock(scope: !1897, file: !487, line: 71, column: 4)
!1950 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1945)
!1951 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1945)
!1952 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1946)
!1953 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1946)
!1954 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1946)
!1955 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1946)
!1956 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1946)
!1957 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1946)
!1958 = !DILocation(line: 66, column: 22, scope: !1897)
!1959 = !DILocation(line: 74, column: 13, scope: !1947)
!1960 = !DILocation(line: 67, column: 18, scope: !1897)
!1961 = !DILocation(line: 58, column: 36, scope: !1352, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 75, column: 5, scope: !1947)
!1963 = !DILocation(line: 59, column: 26, scope: !1352, inlinedAt: !1962)
!1964 = !DILocation(line: 61, column: 14, scope: !1361, inlinedAt: !1962)
!1965 = !DILocation(line: 61, column: 7, scope: !1361, inlinedAt: !1962)
!1966 = !DILocation(line: 61, column: 6, scope: !1352, inlinedAt: !1962)
!1967 = !DILocation(line: 62, column: 3, scope: !1366, inlinedAt: !1962)
!1968 = !DILocation(line: 63, column: 18, scope: !1367, inlinedAt: !1962)
!1969 = !DILocation(line: 64, column: 2, scope: !1367, inlinedAt: !1962)
!1970 = !DILocation(line: 65, column: 1, scope: !1352, inlinedAt: !1962)
!1971 = !DILocation(line: 122, column: 64, scope: !1373, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 76, column: 5, scope: !1947)
!1973 = !DILocation(line: 122, column: 80, scope: !1373, inlinedAt: !1972)
!1974 = !DILocation(line: 124, column: 10, scope: !1373, inlinedAt: !1972)
!1975 = !DILocation(line: 124, column: 22, scope: !1373, inlinedAt: !1972)
!1976 = !DILocation(line: 125, column: 1, scope: !1373, inlinedAt: !1972)
!1977 = !DILocation(line: 183, column: 53, scope: !1386, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 79, column: 5, scope: !1947)
!1979 = !DILocation(line: 185, column: 10, scope: !1386, inlinedAt: !1978)
!1980 = !DILocation(line: 185, column: 16, scope: !1386, inlinedAt: !1978)
!1981 = !DILocation(line: 186, column: 1, scope: !1386, inlinedAt: !1978)
!1982 = !DILocation(line: 151, column: 62, scope: !1395, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 81, column: 5, scope: !1947)
!1984 = !DILocation(line: 153, column: 2, scope: !1400, inlinedAt: !1983)
!1985 = !DILocation(line: 153, column: 2, scope: !1401, inlinedAt: !1983)
!1986 = !DILocation(line: 153, column: 2, scope: !1404, inlinedAt: !1983)
!1987 = !DILocation(line: 154, column: 6, scope: !1395, inlinedAt: !1983)
!1988 = !DILocation(line: 154, column: 14, scope: !1395, inlinedAt: !1983)
!1989 = !DILocation(line: 154, column: 2, scope: !1395, inlinedAt: !1983)
!1990 = !DILocation(line: 155, column: 1, scope: !1395, inlinedAt: !1983)
!1991 = !DILocation(line: 83, column: 5, scope: !1947)
!1992 = !DILocation(line: 84, column: 12, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1947, file: !487, line: 84, column: 9)
!1994 = !DILocation(line: 84, column: 18, scope: !1993)
!1995 = !DILocation(line: 84, column: 9, scope: !1947)
!1996 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 117, column: 30, scope: !1007, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 86, column: 5, scope: !1947)
!2000 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !1997)
!2001 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !1997)
!2002 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !1998)
!2003 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !1998)
!2004 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !1998)
!2005 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !1998)
!2006 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !1998)
!2007 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !1998)
!2008 = !DILocation(line: 117, column: 20, scope: !1007, inlinedAt: !1999)
!2009 = !DILocation(line: 119, column: 2, scope: !1022, inlinedAt: !1999)
!2010 = !DILocation(line: 119, column: 2, scope: !1023, inlinedAt: !1999)
!2011 = !DILocation(line: 119, column: 2, scope: !1026, inlinedAt: !1999)
!2012 = !DILocation(line: 121, column: 15, scope: !1007, inlinedAt: !1999)
!2013 = !DILocation(line: 116, column: 19, scope: !1007, inlinedAt: !1999)
!2014 = !DILocation(line: 122, column: 2, scope: !1030, inlinedAt: !1999)
!2015 = !DILocation(line: 122, column: 2, scope: !1031, inlinedAt: !1999)
!2016 = !DILocation(line: 122, column: 2, scope: !1034, inlinedAt: !1999)
!2017 = !DILocation(line: 123, column: 5, scope: !1007, inlinedAt: !1999)
!2018 = !DILocation(line: 123, column: 2, scope: !1007, inlinedAt: !1999)
!2019 = !DILocation(line: 124, column: 1, scope: !1007, inlinedAt: !1999)
!2020 = !DILocation(line: 71, column: 4, scope: !1948)
!2021 = distinct !{!2021, !2022, !2023}
!2022 = !DILocation(line: 71, column: 4, scope: !1949)
!2023 = !DILocation(line: 87, column: 4, scope: !1949)
!2024 = !DILocation(line: 88, column: 12, scope: !1897)
!2025 = !DILocation(line: 90, column: 4, scope: !1897)
!2026 = !DILocation(line: 68, column: 39, scope: !1446, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 91, column: 4, scope: !1897)
!2028 = !DILocation(line: 69, column: 26, scope: !1446, inlinedAt: !2027)
!2029 = !DILocation(line: 71, column: 13, scope: !1454, inlinedAt: !2027)
!2030 = !DILocation(line: 71, column: 6, scope: !1454, inlinedAt: !2027)
!2031 = !DILocation(line: 71, column: 6, scope: !1446, inlinedAt: !2027)
!2032 = !DILocation(line: 72, column: 3, scope: !1451, inlinedAt: !2027)
!2033 = !DILocation(line: 72, column: 3, scope: !1452, inlinedAt: !2027)
!2034 = !DILocation(line: 72, column: 3, scope: !1464, inlinedAt: !2027)
!2035 = !DILocation(line: 72, column: 3, scope: !1465, inlinedAt: !2027)
!2036 = !DILocation(line: 72, column: 3, scope: !1450, inlinedAt: !2027)
!2037 = !DILocation(line: 72, column: 3, scope: !1472, inlinedAt: !2027)
!2038 = !DILocation(line: 72, column: 3, scope: !1473, inlinedAt: !2027)
!2039 = !DILocation(line: 73, column: 18, scope: !1453, inlinedAt: !2027)
!2040 = !DILocation(line: 74, column: 2, scope: !1453, inlinedAt: !2027)
!2041 = !DILocation(line: 75, column: 1, scope: !1446, inlinedAt: !2027)
!2042 = !DILocation(line: 92, column: 4, scope: !1897)
!2043 = !DILocation(line: 93, column: 3, scope: !1898)
!2044 = !DILocation(line: 95, column: 10, scope: !1898)
!2045 = !DILocation(line: 60, column: 16, scope: !1892)
!2046 = !DILocation(line: 96, column: 10, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1898, file: !487, line: 96, column: 7)
!2048 = !DILocation(line: 96, column: 16, scope: !2047)
!2049 = !DILocation(line: 96, column: 7, scope: !1898)
!2050 = !DILocation(line: 98, column: 3, scope: !1898)
!2051 = !DILocation(line: 64, column: 2, scope: !1899)
!2052 = distinct !{!2052, !2053, !2054}
!2053 = !DILocation(line: 64, column: 2, scope: !1900)
!2054 = !DILocation(line: 99, column: 2, scope: !1900)
!2055 = !DILocation(line: 100, column: 2, scope: !1892)
!2056 = !DILocation(line: 104, column: 2, scope: !1892)
!2057 = !DILocation(line: 105, column: 1, scope: !1892)
!2058 = distinct !DISubprogram(name: "pte_osSemaphoreCancellablePend", scope: !3, file: !3, line: 457, type: !1679, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2059)
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065}
!2060 = !DILocalVariable(name: "h", arg: 1, scope: !2058, file: !3, line: 457, type: !1562)
!2061 = !DILocalVariable(name: "ptimeout_msecs", arg: 2, scope: !2058, file: !3, line: 458, type: !1681)
!2062 = !DILocalVariable(name: "ptd", scope: !2058, file: !3, line: 460, type: !473)
!2063 = !DILocalVariable(name: "result", scope: !2058, file: !3, line: 461, type: !547)
!2064 = !DILocalVariable(name: "timeout", scope: !2058, file: !3, line: 462, type: !102)
!2065 = !DILocalVariable(name: "start_time", scope: !2058, file: !3, line: 462, type: !102)
!2066 = !DILocation(line: 457, column: 67, scope: !2058)
!2067 = !DILocation(line: 458, column: 16, scope: !2058)
!2068 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 137, column: 2, scope: !927, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 460, column: 27, scope: !2058)
!2072 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2069)
!2073 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2069)
!2074 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2070)
!2075 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2070)
!2076 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2070)
!2077 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2070)
!2078 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2070)
!2079 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2070)
!2080 = !DILocation(line: 135, column: 29, scope: !927, inlinedAt: !2071)
!2081 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 138, column: 2, scope: !927, inlinedAt: !2071)
!2083 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !2082)
!2084 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !2082)
!2085 = !DILocation(line: 136, column: 30, scope: !927, inlinedAt: !2071)
!2086 = !DILocation(line: 139, column: 2, scope: !927, inlinedAt: !2071)
!2087 = !DILocation(line: 460, column: 21, scope: !2058)
!2088 = !DILocation(line: 461, column: 15, scope: !2058)
!2089 = !DILocation(line: 462, column: 9, scope: !2058)
!2090 = !DILocation(line: 462, column: 35, scope: !2058)
!2091 = !DILocation(line: 462, column: 22, scope: !2058)
!2092 = !DILocation(line: 464, column: 6, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 464, column: 6)
!2094 = !DILocation(line: 464, column: 6, scope: !2058)
!2095 = !DILocation(line: 465, column: 13, scope: !2093)
!2096 = !DILocation(line: 465, column: 3, scope: !2093)
!2097 = !DILocation(line: 0, scope: !2058)
!2098 = !DILocalVariable(name: "s", arg: 1, scope: !2099, file: !487, line: 107, type: !815)
!2099 = distinct !DISubprogram(name: "uk_semaphore_down_try", scope: !487, file: !487, line: 107, type: !2100, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!69, !815}
!2102 = !{!2098, !2103, !2104}
!2103 = !DILocalVariable(name: "irqf", scope: !2099, file: !487, line: 109, type: !104)
!2104 = !DILocalVariable(name: "ret", scope: !2099, file: !487, line: 110, type: !69)
!2105 = !DILocation(line: 107, column: 62, scope: !2099, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 468, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 468, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 467, column: 12)
!2109 = !DILocation(line: 110, column: 6, scope: !2099, inlinedAt: !2106)
!2110 = !DILocation(line: 112, column: 2, scope: !2111, inlinedAt: !2106)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !487, line: 112, column: 2)
!2112 = distinct !DILexicalBlock(scope: !2099, file: !487, line: 112, column: 2)
!2113 = !DILocation(line: 112, column: 2, scope: !2112, inlinedAt: !2106)
!2114 = !DILocation(line: 114, column: 9, scope: !2099, inlinedAt: !2106)
!2115 = !DILocation(line: 109, column: 16, scope: !2099, inlinedAt: !2106)
!2116 = !DILocation(line: 115, column: 9, scope: !2117, inlinedAt: !2106)
!2117 = distinct !DILexicalBlock(scope: !2099, file: !487, line: 115, column: 6)
!2118 = !DILocation(line: 115, column: 15, scope: !2117, inlinedAt: !2106)
!2119 = !DILocation(line: 115, column: 6, scope: !2099, inlinedAt: !2106)
!2120 = !DILocation(line: 112, column: 2, scope: !2121, inlinedAt: !2106)
!2121 = distinct !DILexicalBlock(scope: !2111, file: !487, line: 112, column: 2)
!2122 = !DILocation(line: 117, column: 3, scope: !2123, inlinedAt: !2106)
!2123 = distinct !DILexicalBlock(scope: !2117, file: !487, line: 115, column: 20)
!2124 = !DILocation(line: 123, column: 2, scope: !2099, inlinedAt: !2106)
!2125 = !DILocation(line: 124, column: 2, scope: !2099, inlinedAt: !2106)
!2126 = !DILocation(line: 468, column: 7, scope: !2108)
!2127 = !DILocation(line: 472, column: 20, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 472, column: 12)
!2129 = !DILocation(line: 473, column: 5, scope: !2128)
!2130 = !DILocation(line: 473, column: 30, scope: !2128)
!2131 = !DILocation(line: 473, column: 43, scope: !2128)
!2132 = !DILocation(line: 472, column: 12, scope: !2107)
!2133 = !DILocation(line: 478, column: 18, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 478, column: 14)
!2135 = !DILocation(line: 478, column: 37, scope: !2134)
!2136 = !DILocation(line: 478, column: 43, scope: !2134)
!2137 = !DILocation(line: 478, column: 14, scope: !2128)
!2138 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 117, column: 30, scope: !1007, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 485, column: 4, scope: !2134)
!2142 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2139)
!2143 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2139)
!2144 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2140)
!2145 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2140)
!2146 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2140)
!2147 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2140)
!2148 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2140)
!2149 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2140)
!2150 = !DILocation(line: 117, column: 20, scope: !1007, inlinedAt: !2141)
!2151 = !DILocation(line: 119, column: 2, scope: !1022, inlinedAt: !2141)
!2152 = !DILocation(line: 119, column: 2, scope: !1023, inlinedAt: !2141)
!2153 = !DILocation(line: 119, column: 2, scope: !1026, inlinedAt: !2141)
!2154 = !DILocation(line: 121, column: 15, scope: !1007, inlinedAt: !2141)
!2155 = !DILocation(line: 116, column: 19, scope: !1007, inlinedAt: !2141)
!2156 = !DILocation(line: 122, column: 2, scope: !1030, inlinedAt: !2141)
!2157 = !DILocation(line: 122, column: 2, scope: !1031, inlinedAt: !2141)
!2158 = !DILocation(line: 122, column: 2, scope: !1034, inlinedAt: !2141)
!2159 = !DILocation(line: 123, column: 5, scope: !1007, inlinedAt: !2141)
!2160 = !DILocation(line: 123, column: 2, scope: !1007, inlinedAt: !2141)
!2161 = !DILocation(line: 124, column: 1, scope: !1007, inlinedAt: !2141)
!2162 = !DILocation(line: 0, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 478, column: 48)
!2164 = !DILocation(line: 488, column: 2, scope: !2058)
!2165 = distinct !DISubprogram(name: "pte_osTlsSetValue", scope: !3, file: !3, line: 547, type: !2166, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!547, !7, !29}
!2168 = !{!2169, !2170}
!2169 = !DILocalVariable(name: "key", arg: 1, scope: !2165, file: !3, line: 547, type: !7)
!2170 = !DILocalVariable(name: "value", arg: 2, scope: !2165, file: !3, line: 547, type: !29)
!2171 = !DILocation(line: 547, column: 45, scope: !2165)
!2172 = !DILocation(line: 547, column: 56, scope: !2165)
!2173 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 137, column: 2, scope: !927, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 542, column: 27, scope: !2177, inlinedAt: !2182)
!2177 = distinct !DISubprogram(name: "current_tls", scope: !3, file: !3, line: 540, type: !2178, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!29}
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "ptd", scope: !2177, file: !3, line: 542, type: !473)
!2182 = distinct !DILocation(line: 549, column: 24, scope: !2165)
!2183 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2174)
!2184 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2174)
!2185 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2175)
!2186 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2175)
!2187 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2175)
!2188 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2175)
!2189 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2175)
!2190 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2175)
!2191 = !DILocation(line: 135, column: 29, scope: !927, inlinedAt: !2176)
!2192 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 138, column: 2, scope: !927, inlinedAt: !2176)
!2194 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !2193)
!2195 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !2193)
!2196 = !DILocation(line: 136, column: 30, scope: !927, inlinedAt: !2176)
!2197 = !DILocation(line: 139, column: 2, scope: !927, inlinedAt: !2176)
!2198 = !DILocation(line: 542, column: 21, scope: !2177, inlinedAt: !2182)
!2199 = !DILocation(line: 544, column: 9, scope: !2177, inlinedAt: !2182)
!2200 = !DILocation(line: 544, column: 20, scope: !2177, inlinedAt: !2182)
!2201 = !DILocation(line: 544, column: 2, scope: !2177, inlinedAt: !2182)
!2202 = !DILocation(line: 549, column: 9, scope: !2165)
!2203 = !DILocation(line: 549, column: 2, scope: !2165)
!2204 = distinct !DISubprogram(name: "pte_osTlsGetValue", scope: !3, file: !3, line: 552, type: !2205, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!29, !7}
!2207 = !{!2208}
!2208 = !DILocalVariable(name: "index", arg: 1, scope: !2204, file: !3, line: 552, type: !7)
!2209 = !DILocation(line: 552, column: 38, scope: !2204)
!2210 = !DILocation(line: 120, column: 2, scope: !585, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 154, column: 21, scope: !592, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 137, column: 2, scope: !927, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 542, column: 27, scope: !2177, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 554, column: 33, scope: !2204)
!2215 = !DILocation(line: 118, column: 16, scope: !585, inlinedAt: !2211)
!2216 = !DILocation(line: 121, column: 2, scope: !585, inlinedAt: !2211)
!2217 = !DILocation(line: 154, column: 16, scope: !592, inlinedAt: !2212)
!2218 = !DILocation(line: 156, column: 38, scope: !592, inlinedAt: !2212)
!2219 = !DILocation(line: 156, column: 12, scope: !592, inlinedAt: !2212)
!2220 = !DILocation(line: 153, column: 21, scope: !592, inlinedAt: !2212)
!2221 = !DILocation(line: 158, column: 9, scope: !592, inlinedAt: !2212)
!2222 = !DILocation(line: 158, column: 2, scope: !592, inlinedAt: !2212)
!2223 = !DILocation(line: 135, column: 29, scope: !927, inlinedAt: !2213)
!2224 = !DILocation(line: 139, column: 47, scope: !800, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 138, column: 2, scope: !927, inlinedAt: !2213)
!2226 = !DILocation(line: 141, column: 17, scope: !800, inlinedAt: !2225)
!2227 = !DILocation(line: 141, column: 2, scope: !800, inlinedAt: !2225)
!2228 = !DILocation(line: 136, column: 30, scope: !927, inlinedAt: !2213)
!2229 = !DILocation(line: 139, column: 2, scope: !927, inlinedAt: !2213)
!2230 = !DILocation(line: 542, column: 21, scope: !2177, inlinedAt: !2214)
!2231 = !DILocation(line: 544, column: 9, scope: !2177, inlinedAt: !2214)
!2232 = !DILocation(line: 544, column: 20, scope: !2177, inlinedAt: !2214)
!2233 = !DILocation(line: 544, column: 2, scope: !2177, inlinedAt: !2214)
!2234 = !DILocation(line: 554, column: 18, scope: !2204)
!2235 = !DILocation(line: 554, column: 2, scope: !2204)
!2236 = distinct !DISubprogram(name: "pte_osTlsAlloc", scope: !3, file: !3, line: 557, type: !2237, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!547, !1681}
!2239 = !{!2240}
!2240 = !DILocalVariable(name: "pkey", arg: 1, scope: !2236, file: !3, line: 557, type: !1681)
!2241 = !DILocation(line: 557, column: 43, scope: !2236)
!2242 = !DILocation(line: 559, column: 9, scope: !2236)
!2243 = !DILocation(line: 559, column: 2, scope: !2236)
!2244 = distinct !DISubprogram(name: "pte_osTlsFree", scope: !3, file: !3, line: 562, type: !2245, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!547, !7}
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "index", arg: 1, scope: !2244, file: !3, line: 562, type: !7)
!2249 = !DILocation(line: 562, column: 41, scope: !2244)
!2250 = !DILocation(line: 564, column: 9, scope: !2244)
!2251 = !DILocation(line: 564, column: 2, scope: !2244)
!2252 = distinct !DISubprogram(name: "ftime", scope: !3, file: !3, line: 573, type: !2253, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2265)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!69, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeb", file: !2257, line: 26, size: 128, elements: !2258)
!2257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/timeb.h", directory: "/root/.unikraft/apps/redis/build")
!2258 = !{!2259, !2262, !2263, !2264}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2256, file: !2257, line: 28, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2261, line: 34, baseType: !57)
!2261 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "millitm", scope: !2256, file: !2257, line: 29, baseType: !377, size: 16, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !2256, file: !2257, line: 30, baseType: !247, size: 16, offset: 80)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dstflag", scope: !2256, file: !2257, line: 31, baseType: !247, size: 16, offset: 96)
!2265 = !{!2266, !2267}
!2266 = !DILocalVariable(name: "tb", arg: 1, scope: !2252, file: !3, line: 573, type: !2255)
!2267 = !DILocalVariable(name: "now", scope: !2252, file: !3, line: 575, type: !102)
!2268 = !DILocation(line: 573, column: 25, scope: !2252)
!2269 = !DILocation(line: 575, column: 15, scope: !2252)
!2270 = !DILocation(line: 575, column: 9, scope: !2252)
!2271 = !DILocation(line: 577, column: 6, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 577, column: 6)
!2273 = !DILocation(line: 577, column: 6, scope: !2252)
!2274 = !DILocation(line: 578, column: 14, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 577, column: 10)
!2276 = !DILocation(line: 578, column: 7, scope: !2275)
!2277 = !DILocation(line: 578, column: 12, scope: !2275)
!2278 = !{!2279, !574, i64 0}
!2279 = !{!"timeb", !574, i64 0, !2280, i64 8, !2280, i64 10, !2280, i64 12}
!2280 = !{!"short", !571, i64 0}
!2281 = !DILocation(line: 579, column: 17, scope: !2275)
!2282 = !DILocation(line: 579, column: 7, scope: !2275)
!2283 = !DILocation(line: 579, column: 15, scope: !2275)
!2284 = !{!2279, !2280, i64 8}
!2285 = !DILocation(line: 580, column: 2, scope: !2275)
!2286 = !DILocation(line: 582, column: 2, scope: !2252)
!2287 = distinct !DISubprogram(name: "uk_pr_debug", scope: !497, file: !497, line: 162, type: !498, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2288)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "fmt", arg: 1, scope: !2287, file: !497, line: 162, type: !36)
!2290 = !DILocalVariable(name: "argp", scope: !2287, file: !497, line: 164, type: !503)
!2291 = !DILocation(line: 164, column: 2, scope: !2287)
!2292 = !DILocation(line: 164, column: 10, scope: !2287)
!2293 = !DILocation(line: 165, column: 2, scope: !2287)
!2294 = !DILocalVariable(name: "fmt", arg: 1, scope: !2295, file: !497, line: 97, type: !36)
!2295 = distinct !DISubprogram(name: "uk_vprintd", scope: !497, file: !497, line: 97, type: !2296, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2299)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !36, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2299 = !{!2294, !2300}
!2300 = !DILocalVariable(name: "ap", arg: 2, scope: !2295, file: !497, line: 97, type: !2298)
!2301 = !DILocation(line: 97, column: 43, scope: !2295, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 166, column: 2, scope: !2287)
!2303 = !DILocation(line: 97, column: 65, scope: !2295, inlinedAt: !2302)
!2304 = !DILocation(line: 98, column: 2, scope: !2295, inlinedAt: !2302)
!2305 = !DILocation(line: 167, column: 2, scope: !2287)
!2306 = !DILocation(line: 168, column: 1, scope: !2287)
!2307 = !DILocation(line: 196, column: 2, scope: !523)
!2308 = !DILocation(line: 196, column: 10, scope: !523)
!2309 = !DILocation(line: 197, column: 2, scope: !523)
!2310 = !DILocation(line: 198, column: 2, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !497, line: 198, column: 2)
!2312 = distinct !DILexicalBlock(scope: !523, file: !497, line: 198, column: 2)
!2313 = !DILocation(line: 199, column: 2, scope: !523)
!2314 = !DILocation(line: 200, column: 1, scope: !523)
