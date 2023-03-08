; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_wait.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_wait.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_cond_t_ = type { i64, i64, i64, %struct.sem_t_*, %struct.sem_t_*, %struct.pthread_mutex_t_*, %struct.pthread_cond_t_*, %struct.pthread_cond_t_* }
%struct.sem_t_ = type { i32, %struct.pthread_mutex_t_*, %struct.uk_semaphore* }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.0, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.0 = type { %struct.uk_thread*, %struct.uk_thread** }
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
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.pte_handle_t = type { i8*, i32 }
%struct.timespec = type { i64, i64 }
%struct.pte_cond_wait_cleanup_args_t = type { %struct.pthread_mutex_t_**, %struct.pthread_cond_t_*, i32* }
%struct.pte_cleanup_t = type { void (i8*)*, i8*, %struct.pte_cleanup_t* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_cond_wait(%struct.pthread_cond_t_**, %struct.pthread_mutex_t_**) local_unnamed_addr #0 !dbg !511 {
  %3 = tail call fastcc i32 @pte_cond_timedwait(%struct.pthread_cond_t_** %0, %struct.pthread_mutex_t_** %1, %struct.timespec* null) #4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  ret i32 %3, !dbg !521
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @pte_cond_timedwait(%struct.pthread_cond_t_**, %struct.pthread_mutex_t_**, %struct.timespec*) unnamed_addr #0 !dbg !522 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pte_cond_wait_cleanup_args_t, align 8
  %6 = alloca %struct.pte_cleanup_t, align 8
  %7 = bitcast i32* %4 to i8*, !dbg !552
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !552
  store i32 0, i32* %4, align 4, !dbg !553, !tbaa !554
  %8 = bitcast %struct.pte_cond_wait_cleanup_args_t* %5 to i8*, !dbg !558
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #5, !dbg !558
  %9 = icmp eq %struct.pthread_cond_t_** %0, null, !dbg !559
  br i1 %9, label %51, label %10, !dbg !561

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.pthread_cond_t_** %0 to i64*, !dbg !562
  %12 = load i64, i64* %11, align 8, !dbg !562, !tbaa !563
  switch i64 %12, label %17 [
    i64 0, label %51
    i64 -1, label %13
  ], !dbg !565

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @pte_cond_check_need_init(%struct.pthread_cond_t_** nonnull %0) #6, !dbg !566
  store i32 %14, i32* %4, align 4, !dbg !569, !tbaa !554
  %15 = or i32 %14, 16, !dbg !570
  %16 = icmp eq i32 %15, 16, !dbg !570
  br i1 %16, label %17, label %51, !dbg !570

; <label>:17:                                     ; preds = %10, %13
  %18 = load %struct.pthread_cond_t_*, %struct.pthread_cond_t_** %0, align 8, !dbg !572, !tbaa !563
  %19 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %18, i64 0, i32 4, !dbg !574
  %20 = tail call i32 @sem_wait(%struct.sem_t_** nonnull %19) #6, !dbg !576
  %21 = icmp eq i32 %20, 0, !dbg !577
  br i1 %21, label %25, label %22, !dbg !578

; <label>:22:                                     ; preds = %17
  %23 = tail call i32* @__errno() #6, !dbg !579
  %24 = load i32, i32* %23, align 4, !dbg !579, !tbaa !554
  br label %51, !dbg !581

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %18, i64 0, i32 0, !dbg !582
  %27 = load i64, i64* %26, align 8, !dbg !583, !tbaa !584
  %28 = add nsw i64 %27, 1, !dbg !583
  store i64 %28, i64* %26, align 8, !dbg !583, !tbaa !584
  %29 = tail call i32 @sem_post(%struct.sem_t_** nonnull %19) #6, !dbg !587
  %30 = icmp eq i32 %29, 0, !dbg !589
  br i1 %30, label %34, label %31, !dbg !590

; <label>:31:                                     ; preds = %25
  %32 = tail call i32* @__errno() #6, !dbg !591
  %33 = load i32, i32* %32, align 4, !dbg !591, !tbaa !554
  br label %51, !dbg !593

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.pte_cond_wait_cleanup_args_t, %struct.pte_cond_wait_cleanup_args_t* %5, i64 0, i32 0, !dbg !594
  store %struct.pthread_mutex_t_** %1, %struct.pthread_mutex_t_*** %35, align 8, !dbg !595, !tbaa !596
  %36 = getelementptr inbounds %struct.pte_cond_wait_cleanup_args_t, %struct.pte_cond_wait_cleanup_args_t* %5, i64 0, i32 1, !dbg !598
  store %struct.pthread_cond_t_* %18, %struct.pthread_cond_t_** %36, align 8, !dbg !599, !tbaa !600
  %37 = getelementptr inbounds %struct.pte_cond_wait_cleanup_args_t, %struct.pte_cond_wait_cleanup_args_t* %5, i64 0, i32 2, !dbg !601
  store i32* %4, i32** %37, align 8, !dbg !602, !tbaa !603
  %38 = bitcast %struct.pte_cleanup_t* %6 to i8*, !dbg !604
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38) #5, !dbg !604
  call void @pte_push_cleanup(%struct.pte_cleanup_t* nonnull %6, void (i8*)* nonnull @pte_cond_wait_cleanup, i8* nonnull %8) #6, !dbg !604
  %39 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** %1) #6, !dbg !605
  store i32 %39, i32* %4, align 4, !dbg !607, !tbaa !554
  %40 = icmp eq i32 %39, 0, !dbg !608
  br i1 %40, label %41, label %48, !dbg !609

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %18, i64 0, i32 3, !dbg !610
  %43 = call i32 @sem_timedwait(%struct.sem_t_** nonnull %42, %struct.timespec* %2) #6, !dbg !613
  %44 = icmp eq i32 %43, 0, !dbg !614
  br i1 %44, label %48, label %45, !dbg !615

; <label>:45:                                     ; preds = %41
  %46 = call i32* @__errno() #6, !dbg !616
  %47 = load i32, i32* %46, align 4, !dbg !616, !tbaa !554
  store i32 %47, i32* %4, align 4, !dbg !618, !tbaa !554
  br label %48, !dbg !619

; <label>:48:                                     ; preds = %41, %45, %34
  %49 = call %struct.pte_cleanup_t* @pte_pop_cleanup(i32 1) #6, !dbg !620
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38) #5, !dbg !621
  %50 = load i32, i32* %4, align 4, !dbg !622, !tbaa !554
  br label %51, !dbg !623

; <label>:51:                                     ; preds = %13, %10, %3, %48, %31, %22
  %52 = phi i32 [ %24, %22 ], [ %33, %31 ], [ %50, %48 ], [ 22, %10 ], [ 22, %3 ], [ %14, %13 ], !dbg !624
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #5, !dbg !625
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  ret i32 %52, !dbg !625
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_cond_timedwait(%struct.pthread_cond_t_**, %struct.pthread_mutex_t_**, %struct.timespec*) local_unnamed_addr #0 !dbg !626 {
  %4 = icmp eq %struct.timespec* %2, null, !dbg !634
  br i1 %4, label %7, label %5, !dbg !636

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc i32 @pte_cond_timedwait(%struct.pthread_cond_t_** %0, %struct.pthread_mutex_t_** %1, %struct.timespec* nonnull %2) #4, !dbg !637
  br label %7, !dbg !638

; <label>:7:                                      ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 22, %3 ], !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  ret i32 %8, !dbg !640
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_cond_check_need_init(%struct.pthread_cond_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sem_wait(%struct.sem_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sem_post(%struct.sem_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @pte_push_cleanup(%struct.pte_cleanup_t*, void (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal void @pte_cond_wait_cleanup(i8* nocapture readonly) #0 !dbg !641 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !651
  %3 = bitcast i8* %2 to %struct.pthread_cond_t_**, !dbg !651
  %4 = load %struct.pthread_cond_t_*, %struct.pthread_cond_t_** %3, align 8, !dbg !651, !tbaa !600
  %5 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !653
  %6 = bitcast i8* %5 to i32**, !dbg !653
  %7 = load i32*, i32** %6, align 8, !dbg !653, !tbaa !603
  %8 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %4, i64 0, i32 5, !dbg !655
  %9 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %8) #6, !dbg !657
  %10 = icmp eq i32 %9, 0, !dbg !659
  br i1 %10, label %11, label %58, !dbg !660

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %4, i64 0, i32 2, !dbg !661
  %13 = load i64, i64* %12, align 8, !dbg !661, !tbaa !663
  %14 = trunc i64 %13 to i32, !dbg !664
  %15 = icmp eq i32 %14, 0, !dbg !666
  br i1 %15, label %18, label %16, !dbg !667

; <label>:16:                                     ; preds = %11
  %17 = add nsw i64 %13, -1, !dbg !668
  store i64 %17, i64* %12, align 8, !dbg !668, !tbaa !663
  br label %41, !dbg !670

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %4, i64 0, i32 1, !dbg !671
  %20 = load i64, i64* %19, align 8, !dbg !673, !tbaa !674
  %21 = add nsw i64 %20, 1, !dbg !673
  store i64 %21, i64* %19, align 8, !dbg !673, !tbaa !674
  %22 = icmp eq i64 %21, 1073741823, !dbg !675
  br i1 %22, label %23, label %41, !dbg !676

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %4, i64 0, i32 4, !dbg !677
  %25 = tail call i32 @sem_wait(%struct.sem_t_** nonnull %24) #6, !dbg !680
  %26 = icmp eq i32 %25, 0, !dbg !681
  br i1 %26, label %30, label %27, !dbg !682

; <label>:27:                                     ; preds = %23
  %28 = tail call i32* @__errno() #6, !dbg !683
  %29 = load i32, i32* %28, align 4, !dbg !683, !tbaa !554
  br label %58, !dbg !685

; <label>:30:                                     ; preds = %23
  %31 = load i64, i64* %19, align 8, !dbg !686, !tbaa !674
  %32 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %4, i64 0, i32 0, !dbg !687
  %33 = load i64, i64* %32, align 8, !dbg !688, !tbaa !584
  %34 = sub nsw i64 %33, %31, !dbg !688
  store i64 %34, i64* %32, align 8, !dbg !688, !tbaa !584
  %35 = tail call i32 @sem_post(%struct.sem_t_** nonnull %24) #6, !dbg !689
  %36 = icmp eq i32 %35, 0, !dbg !691
  br i1 %36, label %40, label %37, !dbg !692

; <label>:37:                                     ; preds = %30
  %38 = tail call i32* @__errno() #6, !dbg !693
  %39 = load i32, i32* %38, align 4, !dbg !693, !tbaa !554
  br label %58, !dbg !695

; <label>:40:                                     ; preds = %30
  store i64 0, i64* %19, align 8, !dbg !696, !tbaa !674
  br label %41, !dbg !697

; <label>:41:                                     ; preds = %18, %40, %16
  %42 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %8) #6, !dbg !698
  %43 = icmp eq i32 %42, 0, !dbg !700
  br i1 %43, label %44, label %58, !dbg !701

; <label>:44:                                     ; preds = %41
  %45 = icmp eq i32 %14, 1, !dbg !702
  br i1 %45, label %46, label %53, !dbg !704

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %4, i64 0, i32 4, !dbg !705
  %48 = tail call i32 @sem_post(%struct.sem_t_** nonnull %47) #6, !dbg !708
  %49 = icmp eq i32 %48, 0, !dbg !709
  br i1 %49, label %53, label %50, !dbg !710

; <label>:50:                                     ; preds = %46
  %51 = tail call i32* @__errno() #6, !dbg !711
  %52 = load i32, i32* %51, align 4, !dbg !711, !tbaa !554
  br label %58, !dbg !713

; <label>:53:                                     ; preds = %46, %44
  %54 = bitcast i8* %0 to %struct.pthread_mutex_t_***, !dbg !714
  %55 = load %struct.pthread_mutex_t_**, %struct.pthread_mutex_t_*** %54, align 8, !dbg !714, !tbaa !596
  %56 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** %55) #6, !dbg !716
  %57 = icmp eq i32 %56, 0, !dbg !717
  br i1 %57, label %60, label %58, !dbg !718

; <label>:58:                                     ; preds = %53, %41, %1, %27, %37, %50
  %59 = phi i32 [ %52, %50 ], [ %39, %37 ], [ %29, %27 ], [ %9, %1 ], [ %42, %41 ], [ %56, %53 ]
  store i32 %59, i32* %7, align 4, !dbg !719, !tbaa !554
  br label %60, !dbg !721

; <label>:60:                                     ; preds = %58, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  ret void, !dbg !721
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sem_timedwait(%struct.sem_t_**, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.pte_cleanup_t* @pte_pop_cleanup(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!507, !508, !509}
!llvm.ident = !{!510}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_wait.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !{!11, !12, !498, !499}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !13, line: 419, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t_", file: !16, line: 233, size: 512, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !20, !21, !22, !494, !495, !496, !497}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersBlocked", scope: !15, file: !16, line: 235, baseType: !19, size: 64)
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersGone", scope: !15, file: !16, line: 236, baseType: !19, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersToUnblock", scope: !15, file: !16, line: 237, baseType: !19, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockQueue", scope: !15, file: !16, line: 238, baseType: !23, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !24, line: 78, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !16, line: 136, size: 192, elements: !27)
!27 = !{!28, !30, !493}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !26, file: !16, line: 138, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !26, file: !16, line: 139, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !13, line: 417, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !16, line: 146, size: 320, elements: !34)
!34 = !{!35, !483, !484, !485, !486}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !33, file: !16, line: 148, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !37, line: 12, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !40, line: 51, size: 192, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !39, file: !40, line: 52, baseType: !19, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !39, file: !40, line: 53, baseType: !44, size: 128, offset: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !45, line: 42, size: 128, elements: !46)
!45 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !{!47, !481}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !44, file: !45, line: 42, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !45, line: 35, size: 192, elements: !50)
!50 = !{!51, !52, !477}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !49, file: !45, line: 36, baseType: !29, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !49, file: !45, line: 37, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !55, line: 59, size: 1024, elements: !56)
!55 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !{!57, !61, !62, !63, !64, !70, !75, !80, !82, !83, !232, !233, !234, !447}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !55, line: 60, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !54, file: !55, line: 61, baseType: !11, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !54, file: !55, line: 62, baseType: !11, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !54, file: !55, line: 63, baseType: !11, size: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !54, file: !55, line: 64, baseType: !65, size: 128, offset: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !55, line: 64, size: 128, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !65, file: !55, line: 64, baseType: !53, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !65, file: !55, line: 64, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !55, line: 65, baseType: !71, size: 32, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !72, line: 48, baseType: !73)
!72 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !74, line: 79, baseType: !5)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !54, file: !55, line: 66, baseType: !76, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !77, line: 49, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !79, line: 128, baseType: !19)
!79 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !54, file: !55, line: 67, baseType: !81, size: 8, offset: 512)
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !54, file: !55, line: 68, baseType: !44, size: 128, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !54, file: !55, line: 69, baseType: !84, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !86, line: 90, size: 2176, elements: !87)
!86 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !{!88, !93, !111, !116, !118, !120, !125, !133, !138, !144, !145, !146, !151, !229, !230, !231}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !85, file: !86, line: 91, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !86, line: 68, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !84}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !85, file: !86, line: 93, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !86, line: 71, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!29, !84, !53, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !101, line: 55, size: 128, elements: !103)
!103 = !{!104, !105, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !102, file: !101, line: 57, baseType: !81, size: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !102, file: !101, line: 59, baseType: !106, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !101, line: 53, baseType: !29)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !102, file: !101, line: 61, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !77, line: 48, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !79, line: 129, baseType: !110)
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !85, file: !86, line: 94, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !86, line: 74, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !84, !53}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !85, file: !86, line: 95, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !86, line: 76, baseType: !113)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !85, file: !86, line: 96, baseType: !119, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !86, line: 78, baseType: !113)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !85, file: !86, line: 98, baseType: !121, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !86, line: 81, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!29, !84, !53, !106}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !85, file: !86, line: 99, baseType: !126, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !86, line: 83, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!29, !84, !130, !132}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !85, file: !86, line: 100, baseType: !134, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !86, line: 85, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!29, !84, !53, !29}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !85, file: !86, line: 101, baseType: !139, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !86, line: 87, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!29, !84, !130, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !85, file: !86, line: 104, baseType: !81, size: 8, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !85, file: !86, line: 105, baseType: !54, size: 1024, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !85, file: !86, line: 106, baseType: !147, size: 128, offset: 1664)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !55, line: 93, size: 128, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !147, file: !55, line: 93, baseType: !53, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !147, file: !55, line: 93, baseType: !69, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !85, file: !86, line: 107, baseType: !152, size: 192, offset: 1792)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !153, line: 59, size: 192, elements: !154)
!153 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!154 = !{!155, !220, !224}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !152, file: !153, line: 61, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !153, line: 51, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!11, !160, !110, !110}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !162, line: 77, size: 832, elements: !163)
!162 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!163 = !{!164, !171, !176, !181, !187, !189, !194, !195, !196, !201, !206, !211, !212, !213}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !161, file: !162, line: 79, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !162, line: 54, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!11, !160, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 58, baseType: !110)
!170 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !161, file: !162, line: 80, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !162, line: 56, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!11, !160, !169, !169}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !161, file: !162, line: 81, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !162, line: 62, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!11, !160, !11, !169}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !161, file: !162, line: 82, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !162, line: 58, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!29, !160, !186, !169, !169}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !161, file: !162, line: 83, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !162, line: 60, baseType: !173)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !161, file: !162, line: 84, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !162, line: 64, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !160, !11}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !161, file: !162, line: 87, baseType: !190, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !161, file: !162, line: 88, baseType: !165, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !161, file: !162, line: 92, baseType: !197, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !162, line: 66, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!11, !160, !110}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !161, file: !162, line: 93, baseType: !202, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !162, line: 68, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !160, !11, !110}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !161, file: !162, line: 99, baseType: !207, size: 64, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !162, line: 70, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!29, !160, !11, !169}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !161, file: !162, line: 100, baseType: !169, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 103, baseType: !160, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !161, file: !162, line: 104, baseType: !214, offset: 832)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !218)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !72, line: 20, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !74, line: 41, baseType: !217)
!217 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!218 = !{!219}
!219 = !DISubrange(count: -1)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !152, file: !153, line: 63, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !11}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !152, file: !153, line: 65, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !153, line: 56, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !11, !11}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !85, file: !86, line: 108, baseType: !160, size: 64, offset: 1984)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !86, line: 109, baseType: !84, size: 64, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !85, file: !86, line: 110, baseType: !11, size: 64, offset: 2112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !54, file: !55, line: 70, baseType: !11, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !54, file: !55, line: 72, baseType: !29, size: 32, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !54, file: !55, line: 82, baseType: !235, size: 64, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !237, line: 569, size: 14912, elements: !238)
!237 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !{!239, !240, !315, !316, !317, !318, !322, !323, !326, !327, !331, !343, !344, !345, !347, !348, !349, !411, !432, !433, !438, !445}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !236, file: !237, line: 571, baseType: !29, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !236, file: !237, line: 576, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !237, line: 287, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !237, line: 181, size: 1408, elements: !244)
!244 = !{!245, !248, !249, !250, !252, !253, !258, !259, !260, !267, !271, !276, !280, !281, !282, !283, !287, !291, !292, !293, !295, !296, !300, !314}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !243, file: !237, line: 182, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !243, file: !237, line: 183, baseType: !29, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !243, file: !237, line: 184, baseType: !29, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !243, file: !237, line: 185, baseType: !251, size: 16, offset: 128)
!251 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !243, file: !237, line: 186, baseType: !251, size: 16, offset: 144)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !243, file: !237, line: 187, baseType: !254, size: 128, offset: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !237, line: 117, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !254, file: !237, line: 118, baseType: !246, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !254, file: !237, line: 119, baseType: !29, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !243, file: !237, line: 188, baseType: !29, size: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !243, file: !237, line: 195, baseType: !11, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !243, file: !237, line: 197, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !235, !11, !266, !29}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !265, line: 145, baseType: !19)
!265 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !243, file: !237, line: 199, baseType: !268, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!264, !235, !11, !58, !29}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !243, file: !237, line: 202, baseType: !272, size: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !235, !11, !275, !29}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !265, line: 114, baseType: !19)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !243, file: !237, line: 203, baseType: !277, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!29, !235, !11}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !243, file: !237, line: 206, baseType: !254, size: 128, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !243, file: !237, line: 207, baseType: !246, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !243, file: !237, line: 208, baseType: !29, size: 32, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !243, file: !237, line: 211, baseType: !284, size: 24, offset: 928)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 24, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 3)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !243, file: !237, line: 212, baseType: !288, size: 8, offset: 952)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 8, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 1)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !243, file: !237, line: 215, baseType: !254, size: 128, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !243, file: !237, line: 218, baseType: !29, size: 32, offset: 1088)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !243, file: !237, line: 219, baseType: !294, size: 64, offset: 1152)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !265, line: 44, baseType: !19)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !243, file: !237, line: 222, baseType: !235, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !243, file: !237, line: 226, baseType: !297, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !265, line: 175, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !299, line: 12, baseType: !29)
!299 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !243, file: !237, line: 228, baseType: !301, size: 64, offset: 1312)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !265, line: 171, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 163, size: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !302, file: !265, line: 165, baseType: !29, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !302, file: !265, line: 170, baseType: !306, size: 32, offset: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !265, line: 166, size: 32, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !306, file: !265, line: 168, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !170, line: 124, baseType: !5)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !306, file: !265, line: 169, baseType: !311, size: 32)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 32, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 4)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !243, file: !237, line: 229, baseType: !29, size: 32, offset: 1376)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !236, file: !237, line: 576, baseType: !241, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !236, file: !237, line: 576, baseType: !241, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !236, file: !237, line: 578, baseType: !29, size: 32, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !236, file: !237, line: 579, baseType: !319, size: 200, offset: 288)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 200, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 25)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !236, file: !237, line: 582, baseType: !29, size: 32, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !236, file: !237, line: 583, baseType: !324, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !237, line: 40, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !236, file: !237, line: 585, baseType: !29, size: 32, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !236, file: !237, line: 587, baseType: !328, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !235}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !236, file: !237, line: 590, baseType: !332, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !237, line: 47, size: 256, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !333, file: !237, line: 49, baseType: !332, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !333, file: !237, line: 50, baseType: !29, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !333, file: !237, line: 50, baseType: !29, size: 32, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !333, file: !237, line: 50, baseType: !29, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !333, file: !237, line: 50, baseType: !29, size: 32, offset: 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !333, file: !237, line: 51, baseType: !341, size: 32, offset: 192)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 32, elements: !289)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !237, line: 25, baseType: !5)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !236, file: !237, line: 591, baseType: !29, size: 32, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !236, file: !237, line: 592, baseType: !332, size: 64, offset: 896)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !236, file: !237, line: 593, baseType: !346, size: 64, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !236, file: !237, line: 596, baseType: !29, size: 32, offset: 1024)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !236, file: !237, line: 597, baseType: !266, size: 64, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !236, file: !237, line: 632, baseType: !350, size: 2880, offset: 1152)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !237, line: 599, size: 2880, elements: !351)
!351 = !{!352, !402}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !350, file: !237, line: 622, baseType: !353, size: 1728)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !237, line: 601, size: 1728, elements: !354)
!354 = !{!355, !356, !357, !361, !373, !374, !376, !384, !385, !386, !387, !391, !395, !396, !397, !398, !399, !400, !401}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !353, file: !237, line: 603, baseType: !5, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !353, file: !237, line: 604, baseType: !266, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !353, file: !237, line: 605, baseType: !358, size: 208, offset: 128)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 208, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 26)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !353, file: !237, line: 606, baseType: !362, size: 288, offset: 352)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !237, line: 55, size: 288, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !362, file: !237, line: 57, baseType: !29, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !362, file: !237, line: 58, baseType: !29, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !362, file: !237, line: 59, baseType: !29, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !362, file: !237, line: 60, baseType: !29, size: 32, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !362, file: !237, line: 61, baseType: !29, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !362, file: !237, line: 62, baseType: !29, size: 32, offset: 160)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !362, file: !237, line: 63, baseType: !29, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !362, file: !237, line: 64, baseType: !29, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !362, file: !237, line: 65, baseType: !29, size: 32, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !353, file: !237, line: 607, baseType: !29, size: 32, offset: 640)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !353, file: !237, line: 608, baseType: !375, size: 64, offset: 704)
!375 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !353, file: !237, line: 609, baseType: !377, size: 112, offset: 768)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !237, line: 319, size: 112, elements: !378)
!378 = !{!379, !382, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !377, file: !237, line: 320, baseType: !380, size: 48)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 48, elements: !285)
!381 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !377, file: !237, line: 321, baseType: !380, size: 48, offset: 48)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !377, file: !237, line: 322, baseType: !381, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !353, file: !237, line: 610, baseType: !301, size: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !353, file: !237, line: 611, baseType: !301, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !353, file: !237, line: 612, baseType: !301, size: 64, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !353, file: !237, line: 613, baseType: !388, size: 64, offset: 1088)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 8)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !353, file: !237, line: 614, baseType: !392, size: 192, offset: 1152)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 192, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 24)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !353, file: !237, line: 615, baseType: !29, size: 32, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !353, file: !237, line: 616, baseType: !301, size: 64, offset: 1376)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !353, file: !237, line: 617, baseType: !301, size: 64, offset: 1440)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !353, file: !237, line: 618, baseType: !301, size: 64, offset: 1504)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !353, file: !237, line: 619, baseType: !301, size: 64, offset: 1568)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !353, file: !237, line: 620, baseType: !301, size: 64, offset: 1632)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !353, file: !237, line: 621, baseType: !29, size: 32, offset: 1696)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !350, file: !237, line: 631, baseType: !403, size: 2880)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !237, line: 626, size: 2880, elements: !404)
!404 = !{!405, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !403, file: !237, line: 629, baseType: !406, size: 1920)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1920, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 30)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !403, file: !237, line: 630, baseType: !410, size: 960, offset: 1920)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !407)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !236, file: !237, line: 636, baseType: !412, size: 64, offset: 4032)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !237, line: 93, size: 6336, elements: !414)
!414 = !{!415, !416, !417, !424}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !413, file: !237, line: 94, baseType: !412, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !413, file: !237, line: 95, baseType: !29, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !413, file: !237, line: 97, baseType: !418, size: 2048, offset: 128)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !422)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null}
!422 = !{!423}
!423 = !DISubrange(count: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !413, file: !237, line: 98, baseType: !425, size: 4160, offset: 2176)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !237, line: 74, size: 4160, elements: !426)
!426 = !{!427, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !425, file: !237, line: 75, baseType: !428, size: 2048)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !422)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !425, file: !237, line: 76, baseType: !428, size: 2048, offset: 2048)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !425, file: !237, line: 78, baseType: !342, size: 32, offset: 4096)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !425, file: !237, line: 81, baseType: !342, size: 32, offset: 4128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !236, file: !237, line: 637, baseType: !413, size: 6336, offset: 4096)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !236, file: !237, line: 641, baseType: !434, size: 64, offset: 10432)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !29}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !236, file: !237, line: 646, baseType: !439, size: 192, offset: 10496)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !237, line: 291, size: 192, elements: !440)
!440 = !{!441, !443, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !439, file: !237, line: 293, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !439, file: !237, line: 294, baseType: !29, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !439, file: !237, line: 295, baseType: !241, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !236, file: !237, line: 648, baseType: !446, size: 4224, offset: 10688)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4224, elements: !285)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !54, file: !55, line: 85, baseType: !448, size: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !450)
!450 = !{!451, !455, !456, !463, !476}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !449, file: !4, line: 116, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !453, line: 64, baseType: !454)
!453 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !453, line: 63, baseType: !110)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !449, file: !4, line: 118, baseType: !452, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !449, file: !4, line: 120, baseType: !457, size: 128, offset: 128)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !458, line: 51, size: 128, elements: !459)
!458 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !458, line: 52, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !458, line: 53, baseType: !461, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !449, file: !4, line: 122, baseType: !464, size: 256, offset: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !464, file: !4, line: 107, baseType: !3, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !464, file: !4, line: 109, baseType: !452, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !464, file: !4, line: 111, baseType: !469, size: 96, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !453, line: 72, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 68, size: 96, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !470, file: !453, line: 69, baseType: !29, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !470, file: !453, line: 70, baseType: !29, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !470, file: !453, line: 71, baseType: !475, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !453, line: 61, baseType: !29)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !449, file: !4, line: 124, baseType: !457, size: 128, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !49, file: !45, line: 38, baseType: !478, size: 64, offset: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !49, file: !45, line: 38, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !478, file: !45, line: 38, baseType: !48, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !44, file: !45, line: 42, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !33, file: !16, line: 149, baseType: !29, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !33, file: !16, line: 156, baseType: !29, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !33, file: !16, line: 159, baseType: !29, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !33, file: !16, line: 160, baseType: !487, size: 128, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !13, line: 413, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !13, line: 411, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 395, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !489, file: !13, line: 398, baseType: !11, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !489, file: !13, line: 399, baseType: !5, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !26, file: !16, line: 140, baseType: !36, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockLock", scope: !15, file: !16, line: 240, baseType: !23, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mtxUnblockLock", scope: !15, file: !16, line: 243, baseType: !31, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !16, line: 246, baseType: !12, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !15, file: !16, line: 247, baseType: !12, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_callback_t", file: !13, line: 557, baseType: !221)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cond_wait_cleanup_args_t", file: !1, line: 279, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 274, size: 192, elements: !502)
!502 = !{!503, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mutexPtr", scope: !501, file: !1, line: 276, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !501, file: !1, line: 277, baseType: !12, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "resultPtr", scope: !501, file: !1, line: 278, baseType: !143, size: 64, offset: 128)
!507 = !{i32 2, !"Dwarf Version", i32 4}
!508 = !{i32 2, !"Debug Info Version", i32 3}
!509 = !{i32 1, !"wchar_size", i32 4}
!510 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!511 = distinct !DISubprogram(name: "pthread_cond_wait", scope: !1, file: !1, line: 455, type: !512, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !515)
!512 = !DISubroutineType(types: !513)
!513 = !{!29, !514, !504}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!515 = !{!516, !517}
!516 = !DILocalVariable(name: "cond", arg: 1, scope: !511, file: !1, line: 455, type: !514)
!517 = !DILocalVariable(name: "mutex", arg: 2, scope: !511, file: !1, line: 455, type: !504)
!518 = !DILocation(line: 455, column: 37, scope: !511)
!519 = !DILocation(line: 455, column: 61, scope: !511)
!520 = !DILocation(line: 507, column: 11, scope: !511)
!521 = !DILocation(line: 507, column: 3, scope: !511)
!522 = distinct !DISubprogram(name: "pte_cond_timedwait", scope: !1, file: !1, line: 361, type: !523, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !533)
!523 = !DISubroutineType(types: !524)
!524 = !{!29, !514, !504, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !528, line: 52, size: 128, elements: !529)
!528 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!529 = !{!530, !532}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !527, file: !528, line: 53, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !528, line: 34, baseType: !19)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !527, file: !528, line: 54, baseType: !19, size: 64, offset: 64)
!533 = !{!534, !535, !536, !537, !538, !539, !540}
!534 = !DILocalVariable(name: "cond", arg: 1, scope: !522, file: !1, line: 361, type: !514)
!535 = !DILocalVariable(name: "mutex", arg: 2, scope: !522, file: !1, line: 362, type: !504)
!536 = !DILocalVariable(name: "abstime", arg: 3, scope: !522, file: !1, line: 362, type: !525)
!537 = !DILocalVariable(name: "result", scope: !522, file: !1, line: 364, type: !29)
!538 = !DILocalVariable(name: "cv", scope: !522, file: !1, line: 365, type: !12)
!539 = !DILocalVariable(name: "cleanup_args", scope: !522, file: !1, line: 366, type: !500)
!540 = !DILocalVariable(name: "_cleanup", scope: !541, file: !1, line: 411, type: !542)
!541 = distinct !DILexicalBlock(scope: !522, file: !1, line: 411, column: 3)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_t", file: !13, line: 555, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_cleanup_t", file: !13, line: 559, size: 192, elements: !544)
!544 = !{!545, !546, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !543, file: !13, line: 561, baseType: !498, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !543, file: !13, line: 562, baseType: !11, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !543, file: !13, line: 563, baseType: !548, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!549 = !DILocation(line: 361, column: 38, scope: !522)
!550 = !DILocation(line: 362, column: 39, scope: !522)
!551 = !DILocation(line: 362, column: 69, scope: !522)
!552 = !DILocation(line: 364, column: 3, scope: !522)
!553 = !DILocation(line: 364, column: 7, scope: !522)
!554 = !{!555, !555, i64 0}
!555 = !{!"int", !556, i64 0}
!556 = !{!"omnipotent char", !557, i64 0}
!557 = !{!"Simple C/C++ TBAA"}
!558 = !DILocation(line: 366, column: 3, scope: !522)
!559 = !DILocation(line: 368, column: 12, scope: !560)
!560 = distinct !DILexicalBlock(scope: !522, file: !1, line: 368, column: 7)
!561 = !DILocation(line: 368, column: 20, scope: !560)
!562 = !DILocation(line: 368, column: 23, scope: !560)
!563 = !{!564, !564, i64 0}
!564 = !{!"any pointer", !556, i64 0}
!565 = !DILocation(line: 368, column: 7, scope: !522)
!566 = !DILocation(line: 381, column: 16, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 380, column: 5)
!568 = distinct !DILexicalBlock(scope: !522, file: !1, line: 379, column: 7)
!569 = !DILocation(line: 381, column: 14, scope: !567)
!570 = !DILocation(line: 384, column: 19, scope: !571)
!571 = distinct !DILexicalBlock(scope: !522, file: !1, line: 384, column: 7)
!572 = !DILocation(line: 389, column: 8, scope: !522)
!573 = !DILocation(line: 365, column: 18, scope: !522)
!574 = !DILocation(line: 392, column: 23, scope: !575)
!575 = distinct !DILexicalBlock(scope: !522, file: !1, line: 392, column: 7)
!576 = !DILocation(line: 392, column: 7, scope: !575)
!577 = !DILocation(line: 392, column: 38, scope: !575)
!578 = !DILocation(line: 392, column: 7, scope: !522)
!579 = !DILocation(line: 394, column: 14, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !1, line: 393, column: 5)
!581 = !DILocation(line: 394, column: 7, scope: !580)
!582 = !DILocation(line: 397, column: 10, scope: !522)
!583 = !DILocation(line: 397, column: 3, scope: !522)
!584 = !{!585, !586, i64 0}
!585 = !{!"pthread_cond_t_", !586, i64 0, !586, i64 8, !586, i64 16, !564, i64 24, !564, i64 32, !564, i64 40, !564, i64 48, !564, i64 56}
!586 = !{!"long", !556, i64 0}
!587 = !DILocation(line: 399, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !522, file: !1, line: 399, column: 7)
!589 = !DILocation(line: 399, column: 38, scope: !588)
!590 = !DILocation(line: 399, column: 7, scope: !522)
!591 = !DILocation(line: 401, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !1, line: 400, column: 5)
!593 = !DILocation(line: 401, column: 7, scope: !592)
!594 = !DILocation(line: 407, column: 16, scope: !522)
!595 = !DILocation(line: 407, column: 25, scope: !522)
!596 = !{!597, !564, i64 0}
!597 = !{!"", !564, i64 0, !564, i64 8, !564, i64 16}
!598 = !DILocation(line: 408, column: 16, scope: !522)
!599 = !DILocation(line: 408, column: 19, scope: !522)
!600 = !{!597, !564, i64 8}
!601 = !DILocation(line: 409, column: 16, scope: !522)
!602 = !DILocation(line: 409, column: 26, scope: !522)
!603 = !{!597, !564, i64 16}
!604 = !DILocation(line: 411, column: 3, scope: !541)
!605 = !DILocation(line: 416, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !541, file: !1, line: 416, column: 7)
!607 = !DILocation(line: 416, column: 15, scope: !606)
!608 = !DILocation(line: 416, column: 47, scope: !606)
!609 = !DILocation(line: 416, column: 7, scope: !541)
!610 = !DILocation(line: 434, column: 32, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 434, column: 11)
!612 = distinct !DILexicalBlock(scope: !606, file: !1, line: 417, column: 5)
!613 = !DILocation(line: 434, column: 11, scope: !611)
!614 = !DILocation(line: 434, column: 57, scope: !611)
!615 = !DILocation(line: 434, column: 11, scope: !612)
!616 = !DILocation(line: 436, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !611, file: !1, line: 435, column: 9)
!618 = !DILocation(line: 436, column: 18, scope: !617)
!619 = !DILocation(line: 437, column: 9, scope: !617)
!620 = !DILocation(line: 444, column: 3, scope: !541)
!621 = !DILocation(line: 444, column: 3, scope: !522)
!622 = !DILocation(line: 449, column: 10, scope: !522)
!623 = !DILocation(line: 449, column: 3, scope: !522)
!624 = !DILocation(line: 0, scope: !522)
!625 = !DILocation(line: 451, column: 1, scope: !522)
!626 = distinct !DISubprogram(name: "pthread_cond_timedwait", scope: !1, file: !1, line: 513, type: !523, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !627)
!627 = !{!628, !629, !630}
!628 = !DILocalVariable(name: "cond", arg: 1, scope: !626, file: !1, line: 513, type: !514)
!629 = !DILocalVariable(name: "mutex", arg: 2, scope: !626, file: !1, line: 514, type: !504)
!630 = !DILocalVariable(name: "abstime", arg: 3, scope: !626, file: !1, line: 515, type: !525)
!631 = !DILocation(line: 513, column: 42, scope: !626)
!632 = !DILocation(line: 514, column: 43, scope: !626)
!633 = !DILocation(line: 515, column: 48, scope: !626)
!634 = !DILocation(line: 561, column: 15, scope: !635)
!635 = distinct !DILexicalBlock(scope: !626, file: !1, line: 561, column: 7)
!636 = !DILocation(line: 561, column: 7, scope: !626)
!637 = !DILocation(line: 566, column: 11, scope: !626)
!638 = !DILocation(line: 566, column: 3, scope: !626)
!639 = !DILocation(line: 0, scope: !626)
!640 = !DILocation(line: 568, column: 1, scope: !626)
!641 = distinct !DISubprogram(name: "pte_cond_wait_cleanup", scope: !1, file: !1, line: 282, type: !222, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !642)
!642 = !{!643, !644, !645, !646, !647, !648}
!643 = !DILocalVariable(name: "args", arg: 1, scope: !641, file: !1, line: 282, type: !11)
!644 = !DILocalVariable(name: "cleanup_args", scope: !641, file: !1, line: 284, type: !499)
!645 = !DILocalVariable(name: "cv", scope: !641, file: !1, line: 286, type: !12)
!646 = !DILocalVariable(name: "resultPtr", scope: !641, file: !1, line: 287, type: !143)
!647 = !DILocalVariable(name: "nSignalsWasLeft", scope: !641, file: !1, line: 288, type: !29)
!648 = !DILocalVariable(name: "result", scope: !641, file: !1, line: 289, type: !29)
!649 = !DILocation(line: 282, column: 30, scope: !641)
!650 = !DILocation(line: 284, column: 33, scope: !641)
!651 = !DILocation(line: 286, column: 37, scope: !641)
!652 = !DILocation(line: 286, column: 18, scope: !641)
!653 = !DILocation(line: 287, column: 34, scope: !641)
!654 = !DILocation(line: 287, column: 8, scope: !641)
!655 = !DILocation(line: 297, column: 43, scope: !656)
!656 = distinct !DILexicalBlock(scope: !641, file: !1, line: 297, column: 7)
!657 = !DILocation(line: 297, column: 17, scope: !656)
!658 = !DILocation(line: 289, column: 7, scope: !641)
!659 = !DILocation(line: 297, column: 61, scope: !656)
!660 = !DILocation(line: 297, column: 7, scope: !641)
!661 = !DILocation(line: 303, column: 35, scope: !662)
!662 = distinct !DILexicalBlock(scope: !641, file: !1, line: 303, column: 7)
!663 = !{!585, !586, i64 16}
!664 = !DILocation(line: 303, column: 31, scope: !662)
!665 = !DILocation(line: 288, column: 7, scope: !641)
!666 = !DILocation(line: 303, column: 9, scope: !662)
!667 = !DILocation(line: 303, column: 7, scope: !641)
!668 = !DILocation(line: 305, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !662, file: !1, line: 304, column: 5)
!670 = !DILocation(line: 306, column: 5, scope: !669)
!671 = !DILocation(line: 307, column: 34, scope: !672)
!672 = distinct !DILexicalBlock(scope: !662, file: !1, line: 307, column: 12)
!673 = !DILocation(line: 307, column: 27, scope: !672)
!674 = !{!585, !586, i64 8}
!675 = !DILocation(line: 307, column: 24, scope: !672)
!676 = !DILocation(line: 307, column: 12, scope: !662)
!677 = !DILocation(line: 311, column: 27, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 311, column: 11)
!679 = distinct !DILexicalBlock(scope: !672, file: !1, line: 308, column: 5)
!680 = !DILocation(line: 311, column: 11, scope: !678)
!681 = !DILocation(line: 311, column: 42, scope: !678)
!682 = !DILocation(line: 311, column: 11, scope: !679)
!683 = !DILocation(line: 313, column: 24, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !1, line: 312, column: 9)
!685 = !DILocation(line: 319, column: 11, scope: !684)
!686 = !DILocation(line: 321, column: 34, scope: !679)
!687 = !DILocation(line: 321, column: 11, scope: !679)
!688 = !DILocation(line: 321, column: 27, scope: !679)
!689 = !DILocation(line: 322, column: 11, scope: !690)
!690 = distinct !DILexicalBlock(scope: !679, file: !1, line: 322, column: 11)
!691 = !DILocation(line: 322, column: 42, scope: !690)
!692 = !DILocation(line: 322, column: 11, scope: !679)
!693 = !DILocation(line: 324, column: 24, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !1, line: 323, column: 9)
!695 = !DILocation(line: 330, column: 11, scope: !694)
!696 = !DILocation(line: 332, column: 24, scope: !679)
!697 = !DILocation(line: 333, column: 5, scope: !679)
!698 = !DILocation(line: 335, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !641, file: !1, line: 335, column: 7)
!700 = !DILocation(line: 335, column: 63, scope: !699)
!701 = !DILocation(line: 335, column: 7, scope: !641)
!702 = !DILocation(line: 341, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !641, file: !1, line: 341, column: 7)
!704 = !DILocation(line: 341, column: 7, scope: !641)
!705 = !DILocation(line: 343, column: 27, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 343, column: 11)
!707 = distinct !DILexicalBlock(scope: !703, file: !1, line: 342, column: 5)
!708 = !DILocation(line: 343, column: 11, scope: !706)
!709 = !DILocation(line: 343, column: 42, scope: !706)
!710 = !DILocation(line: 343, column: 11, scope: !707)
!711 = !DILocation(line: 345, column: 24, scope: !712)
!712 = distinct !DILexicalBlock(scope: !706, file: !1, line: 344, column: 9)
!713 = !DILocation(line: 346, column: 11, scope: !712)
!714 = !DILocation(line: 354, column: 51, scope: !715)
!715 = distinct !DILexicalBlock(scope: !641, file: !1, line: 354, column: 7)
!716 = !DILocation(line: 354, column: 17, scope: !715)
!717 = !DILocation(line: 354, column: 62, scope: !715)
!718 = !DILocation(line: 354, column: 7, scope: !641)
!719 = !DILocation(line: 0, scope: !720)
!720 = distinct !DILexicalBlock(scope: !656, file: !1, line: 298, column: 5)
!721 = !DILocation(line: 358, column: 1, scope: !641)
