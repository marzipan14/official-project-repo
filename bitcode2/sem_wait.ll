; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_wait.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_wait.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sem_t_ = type { i32, %struct.pthread_mutex_t_*, %struct.uk_semaphore* }
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.pte_handle_t = type { i8*, i32 }
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
%struct.pte_cleanup_t = type { void (i8*)*, i8*, %struct.pte_cleanup_t* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @sem_wait(%struct.sem_t_** nocapture readonly) local_unnamed_addr #0 !dbg !500 {
  %2 = alloca %struct.pte_cleanup_t, align 8
  %3 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !526, !tbaa !527
  tail call void @pthread_testcancel() #4, !dbg !532
  %4 = icmp eq %struct.sem_t_* %3, null, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %4, label %5, label %6, !dbg !534

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  br label %23, !dbg !535

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %3, i64 0, i32 1, !dbg !537
  %8 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %7) #4, !dbg !538
  %9 = icmp eq i32 %8, 0, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %9, label %10, label %23, !dbg !540

; <label>:10:                                     ; preds = %6
  %11 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !541, !tbaa !527
  %12 = icmp eq %struct.sem_t_* %11, null, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %12, label %20, label %13, !dbg !544

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %3, i64 0, i32 0, !dbg !545
  %15 = load i32, i32* %14, align 8, !dbg !546, !tbaa !547
  %16 = add nsw i32 %15, -1, !dbg !546
  store i32 %16, i32* %14, align 8, !dbg !546, !tbaa !547
  %17 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %7) #4, !dbg !551
  %18 = icmp slt i32 %15, 1, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %18, label %25, label %19, !dbg !553

; <label>:19:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %36, !dbg !555

; <label>:20:                                     ; preds = %10
  %21 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %7) #4, !dbg !556
  %22 = tail call i32* @__errno() #4, !dbg !558
  store i32 22, i32* %22, align 4, !dbg !559, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br label %36

; <label>:23:                                     ; preds = %5, %6
  %24 = phi i32 [ %8, %6 ], [ 22, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %33, !dbg !555

; <label>:25:                                     ; preds = %13
  %26 = bitcast %struct.pte_cleanup_t* %2 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %26) #5, !dbg !562
  %27 = bitcast %struct.sem_t_* %3 to i8*, !dbg !562
  call void @pte_push_cleanup(%struct.pte_cleanup_t* nonnull %2, void (i8*)* nonnull @pte_sem_wait_cleanup, i8* %27) #4, !dbg !562
  %28 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %3, i64 0, i32 2, !dbg !563
  %29 = load %struct.uk_semaphore*, %struct.uk_semaphore** %28, align 8, !dbg !563, !tbaa !564
  %30 = call i32 @pte_cancellable_wait(%struct.uk_semaphore* %29, i32* null) #4, !dbg !565
  %31 = call %struct.pte_cleanup_t* @pte_pop_cleanup(i32 %30) #4, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %26) #5, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = icmp eq i32 %30, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %32, label %36, label %33, !dbg !555

; <label>:33:                                     ; preds = %23, %25
  %34 = phi i32 [ %24, %23 ], [ %30, %25 ]
  %35 = call i32* @__errno() #4, !dbg !571
  store i32 %34, i32* %35, align 4, !dbg !573, !tbaa !560
  br label %36, !dbg !574

; <label>:36:                                     ; preds = %25, %19, %20, %33
  %37 = phi i32 [ -1, %33 ], [ -1, %20 ], [ 0, %19 ], [ 0, %25 ], !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  ret i32 %37, !dbg !576
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @pthread_testcancel() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @pte_push_cleanup(%struct.pte_cleanup_t*, void (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal void @pte_sem_wait_cleanup(i8*) #0 !dbg !577 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !584
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !585
  %5 = bitcast i8* %4 to %struct.pthread_mutex_t_**, !dbg !585
  %6 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %5) #4, !dbg !587
  %7 = icmp eq i32 %6, 0, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %7, label %8, label %20, !dbg !589

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !591, !tbaa !560
  %9 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !593
  %10 = bitcast i8* %9 to %struct.uk_semaphore**, !dbg !593
  %11 = load %struct.uk_semaphore*, %struct.uk_semaphore** %10, align 8, !dbg !593, !tbaa !564
  %12 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %11, i32* nonnull %2) #4, !dbg !595
  %13 = icmp eq i32 %12, 0, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %13, label %18, label %14, !dbg !597

; <label>:14:                                     ; preds = %8
  %15 = bitcast i8* %0 to i32*, !dbg !598
  %16 = load i32, i32* %15, align 8, !dbg !600, !tbaa !547
  %17 = add nsw i32 %16, 1, !dbg !600
  store i32 %17, i32* %15, align 8, !dbg !600, !tbaa !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br label %18, !dbg !601

; <label>:18:                                     ; preds = %8, %14
  %19 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %5) #4, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br label %20, !dbg !603

; <label>:20:                                     ; preds = %18, %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret void, !dbg !604
}

; Function Attrs: noredzone
declare dso_local i32 @pte_cancellable_wait(%struct.uk_semaphore*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.pte_cleanup_t* @pte_pop_cleanup(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @sem_wait_nocancel(%struct.sem_t_** nocapture readonly) local_unnamed_addr #0 !dbg !605 {
  %2 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !617, !tbaa !527
  tail call void @pthread_testcancel() #4, !dbg !619
  %3 = icmp eq %struct.sem_t_* %2, null, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %3, label %4, label %5, !dbg !621

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br label %25, !dbg !622

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %2, i64 0, i32 1, !dbg !624
  %7 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %6) #4, !dbg !625
  %8 = icmp eq i32 %7, 0, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %8, label %9, label %25, !dbg !627

; <label>:9:                                      ; preds = %5
  %10 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !628, !tbaa !527
  %11 = icmp eq %struct.sem_t_* %10, null, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %11, label %12, label %15, !dbg !631

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #4, !dbg !632
  %14 = tail call i32* @__errno() #4, !dbg !634
  store i32 22, i32* %14, align 4, !dbg !635, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %29

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %2, i64 0, i32 0, !dbg !637
  %17 = load i32, i32* %16, align 8, !dbg !638, !tbaa !547
  %18 = add nsw i32 %17, -1, !dbg !638
  store i32 %18, i32* %16, align 8, !dbg !638, !tbaa !547
  %19 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #4, !dbg !640
  %20 = icmp slt i32 %17, 1, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %20, label %21, label %28, !dbg !643

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %2, i64 0, i32 2, !dbg !644
  %23 = load %struct.uk_semaphore*, %struct.uk_semaphore** %22, align 8, !dbg !644, !tbaa !564
  %24 = tail call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %23, i32* null) #4, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br label %28, !dbg !647

; <label>:25:                                     ; preds = %4, %5
  %26 = phi i32 [ %7, %5 ], [ 22, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  %27 = tail call i32* @__errno() #4, !dbg !649
  store i32 %26, i32* %27, align 4, !dbg !652, !tbaa !560
  br label %29, !dbg !653

; <label>:28:                                     ; preds = %21, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br label %29, !dbg !655

; <label>:29:                                     ; preds = %12, %28, %25
  %30 = phi i32 [ -1, %25 ], [ 0, %28 ], [ -1, %12 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  ret i32 %30, !dbg !657
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!496, !497, !498}
!llvm.ident = !{!499}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_wait.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !11, line: 38, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!17 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!18 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!19 = !{!20, !21, !26}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_callback_t", file: !22, line: 557, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !20}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !27, line: 78, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !30, line: 136, size: 192, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32, !34, !495}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !29, file: !30, line: 138, baseType: !33, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !29, file: !30, line: 139, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !22, line: 417, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !30, line: 146, size: 320, elements: !38)
!38 = !{!39, !485, !486, !487, !488}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !37, file: !30, line: 148, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !41, line: 12, baseType: !42)
!41 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !44, line: 51, size: 192, elements: !45)
!44 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !43, file: !44, line: 52, baseType: !47, size: 64)
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !43, file: !44, line: 53, baseType: !49, size: 128, offset: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !50, line: 42, size: 128, elements: !51)
!50 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !{!52, !483}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !49, file: !50, line: 42, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !50, line: 35, size: 192, elements: !55)
!55 = !{!56, !57, !479}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !54, file: !50, line: 36, baseType: !33, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !54, file: !50, line: 37, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !60, line: 59, size: 1024, elements: !61)
!60 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!61 = !{!62, !66, !67, !68, !69, !75, !80, !85, !87, !88, !234, !235, !236, !449}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 60, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !59, file: !60, line: 61, baseType: !20, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !59, file: !60, line: 62, baseType: !20, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !59, file: !60, line: 63, baseType: !20, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !59, file: !60, line: 64, baseType: !70, size: 128, offset: 256)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !60, line: 64, size: 128, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !70, file: !60, line: 64, baseType: !58, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !70, file: !60, line: 64, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !60, line: 65, baseType: !76, size: 32, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 48, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 79, baseType: !5)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !59, file: !60, line: 66, baseType: !81, size: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !82, line: 49, baseType: !83)
!82 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !84, line: 128, baseType: !47)
!84 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !59, file: !60, line: 67, baseType: !86, size: 8, offset: 512)
!86 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !59, file: !60, line: 68, baseType: !49, size: 128, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !59, file: !60, line: 69, baseType: !89, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !91, line: 90, size: 2176, elements: !92)
!91 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !{!93, !98, !116, !121, !123, !125, !130, !138, !143, !149, !150, !151, !156, !231, !232, !233}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !90, file: !91, line: 91, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !91, line: 68, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !89}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !90, file: !91, line: 93, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !91, line: 71, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!33, !89, !58, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !106, line: 55, size: 128, elements: !108)
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !107, file: !106, line: 57, baseType: !86, size: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !107, file: !106, line: 59, baseType: !111, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !106, line: 53, baseType: !33)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !107, file: !106, line: 61, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !82, line: 48, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !84, line: 129, baseType: !115)
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !90, file: !91, line: 94, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !91, line: 74, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !89, !58}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !90, file: !91, line: 95, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !91, line: 76, baseType: !118)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !90, file: !91, line: 96, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !91, line: 78, baseType: !118)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !90, file: !91, line: 98, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !91, line: 81, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!33, !89, !58, !111}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !90, file: !91, line: 99, baseType: !131, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !91, line: 83, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!33, !89, !135, !137}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !90, file: !91, line: 100, baseType: !139, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !91, line: 85, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!33, !89, !58, !33}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !90, file: !91, line: 101, baseType: !144, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !91, line: 87, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!33, !89, !135, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !90, file: !91, line: 104, baseType: !86, size: 8, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !90, file: !91, line: 105, baseType: !59, size: 1024, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !90, file: !91, line: 106, baseType: !152, size: 128, offset: 1664)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !60, line: 93, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !152, file: !60, line: 93, baseType: !58, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !152, file: !60, line: 93, baseType: !74, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !90, file: !91, line: 107, baseType: !157, size: 192, offset: 1792)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !158, line: 59, size: 192, elements: !159)
!158 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!159 = !{!160, !225, !226}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !157, file: !158, line: 61, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !158, line: 51, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!20, !165, !115, !115}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !167, line: 77, size: 832, elements: !168)
!167 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!168 = !{!169, !176, !181, !186, !192, !194, !199, !200, !201, !206, !211, !216, !217, !218}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !166, file: !167, line: 79, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !167, line: 54, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!20, !165, !174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 58, baseType: !115)
!175 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!176 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !166, file: !167, line: 80, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !167, line: 56, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!20, !165, !174, !174}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !166, file: !167, line: 81, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !167, line: 62, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!20, !165, !20, !174}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !166, file: !167, line: 82, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !167, line: 58, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!33, !165, !191, !174, !174}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !166, file: !167, line: 83, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !167, line: 60, baseType: !178)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !166, file: !167, line: 84, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !167, line: 64, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !165, !20}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !166, file: !167, line: 87, baseType: !195, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !166, file: !167, line: 88, baseType: !170, size: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !166, file: !167, line: 92, baseType: !202, size: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !167, line: 66, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!20, !165, !115}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !166, file: !167, line: 93, baseType: !207, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !167, line: 68, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !165, !20, !115}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !166, file: !167, line: 99, baseType: !212, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !167, line: 70, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!33, !165, !20, !174}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !167, line: 100, baseType: !174, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !167, line: 103, baseType: !165, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !166, file: !167, line: 104, baseType: !219, offset: 832)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !77, line: 20, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !79, line: 41, baseType: !222)
!222 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!223 = !{!224}
!224 = !DISubrange(count: -1)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !157, file: !158, line: 63, baseType: !23, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !157, file: !158, line: 65, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !158, line: 56, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !20, !20}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !90, file: !91, line: 108, baseType: !165, size: 64, offset: 1984)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !91, line: 109, baseType: !89, size: 64, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !90, file: !91, line: 110, baseType: !20, size: 64, offset: 2112)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !59, file: !60, line: 70, baseType: !20, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !59, file: !60, line: 72, baseType: !33, size: 32, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !59, file: !60, line: 82, baseType: !237, size: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !239, line: 569, size: 14912, elements: !240)
!239 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!240 = !{!241, !242, !317, !318, !319, !320, !324, !325, !328, !329, !333, !345, !346, !347, !349, !350, !351, !413, !434, !435, !440, !447}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !238, file: !239, line: 571, baseType: !33, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !238, file: !239, line: 576, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !239, line: 287, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !239, line: 181, size: 1408, elements: !246)
!246 = !{!247, !250, !251, !252, !254, !255, !260, !261, !262, !269, !273, !278, !282, !283, !284, !285, !289, !293, !294, !295, !297, !298, !302, !316}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !245, file: !239, line: 182, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !245, file: !239, line: 183, baseType: !33, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !245, file: !239, line: 184, baseType: !33, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !245, file: !239, line: 185, baseType: !253, size: 16, offset: 128)
!253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !245, file: !239, line: 186, baseType: !253, size: 16, offset: 144)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !245, file: !239, line: 187, baseType: !256, size: 128, offset: 192)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !239, line: 117, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !256, file: !239, line: 118, baseType: !248, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !256, file: !239, line: 119, baseType: !33, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !245, file: !239, line: 188, baseType: !33, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !245, file: !239, line: 195, baseType: !20, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !245, file: !239, line: 197, baseType: !263, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !237, !20, !268, !33}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !267, line: 145, baseType: !47)
!267 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !245, file: !239, line: 199, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!266, !237, !20, !63, !33}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !245, file: !239, line: 202, baseType: !274, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !237, !20, !277, !33}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !267, line: 114, baseType: !47)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !245, file: !239, line: 203, baseType: !279, size: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!33, !237, !20}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !245, file: !239, line: 206, baseType: !256, size: 128, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !245, file: !239, line: 207, baseType: !248, size: 64, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !245, file: !239, line: 208, baseType: !33, size: 32, offset: 896)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !245, file: !239, line: 211, baseType: !286, size: 24, offset: 928)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 24, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 3)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !245, file: !239, line: 212, baseType: !290, size: 8, offset: 952)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 8, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 1)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !245, file: !239, line: 215, baseType: !256, size: 128, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !245, file: !239, line: 218, baseType: !33, size: 32, offset: 1088)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !245, file: !239, line: 219, baseType: !296, size: 64, offset: 1152)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !267, line: 44, baseType: !47)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !245, file: !239, line: 222, baseType: !237, size: 64, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !245, file: !239, line: 226, baseType: !299, size: 32, offset: 1280)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !267, line: 175, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !301, line: 12, baseType: !33)
!301 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !245, file: !239, line: 228, baseType: !303, size: 64, offset: 1312)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !267, line: 171, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 163, size: 64, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !304, file: !267, line: 165, baseType: !33, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !304, file: !267, line: 170, baseType: !308, size: 32, offset: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !267, line: 166, size: 32, elements: !309)
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !308, file: !267, line: 168, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !175, line: 124, baseType: !5)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !308, file: !267, line: 169, baseType: !313, size: 32)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !245, file: !239, line: 229, baseType: !33, size: 32, offset: 1376)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !238, file: !239, line: 576, baseType: !243, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !238, file: !239, line: 576, baseType: !243, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !238, file: !239, line: 578, baseType: !33, size: 32, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !238, file: !239, line: 579, baseType: !321, size: 200, offset: 288)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 200, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 25)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !238, file: !239, line: 582, baseType: !33, size: 32, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !238, file: !239, line: 583, baseType: !326, size: 64, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !239, line: 40, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !238, file: !239, line: 585, baseType: !33, size: 32, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !238, file: !239, line: 587, baseType: !330, size: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !237}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !238, file: !239, line: 590, baseType: !334, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !239, line: 47, size: 256, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !335, file: !239, line: 49, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !335, file: !239, line: 50, baseType: !33, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !335, file: !239, line: 50, baseType: !33, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !335, file: !239, line: 50, baseType: !33, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !335, file: !239, line: 50, baseType: !33, size: 32, offset: 160)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !335, file: !239, line: 51, baseType: !343, size: 32, offset: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32, elements: !291)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !239, line: 25, baseType: !5)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !238, file: !239, line: 591, baseType: !33, size: 32, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !238, file: !239, line: 592, baseType: !334, size: 64, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !238, file: !239, line: 593, baseType: !348, size: 64, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !238, file: !239, line: 596, baseType: !33, size: 32, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !238, file: !239, line: 597, baseType: !268, size: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !238, file: !239, line: 632, baseType: !352, size: 2880, offset: 1152)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !239, line: 599, size: 2880, elements: !353)
!353 = !{!354, !404}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !352, file: !239, line: 622, baseType: !355, size: 1728)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !239, line: 601, size: 1728, elements: !356)
!356 = !{!357, !358, !359, !363, !375, !376, !378, !386, !387, !388, !389, !393, !397, !398, !399, !400, !401, !402, !403}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !355, file: !239, line: 603, baseType: !5, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !355, file: !239, line: 604, baseType: !268, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !355, file: !239, line: 605, baseType: !360, size: 208, offset: 128)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 208, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 26)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !355, file: !239, line: 606, baseType: !364, size: 288, offset: 352)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !239, line: 55, size: 288, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !364, file: !239, line: 57, baseType: !33, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !364, file: !239, line: 58, baseType: !33, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !364, file: !239, line: 59, baseType: !33, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !364, file: !239, line: 60, baseType: !33, size: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !364, file: !239, line: 61, baseType: !33, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !364, file: !239, line: 62, baseType: !33, size: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !364, file: !239, line: 63, baseType: !33, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !364, file: !239, line: 64, baseType: !33, size: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !364, file: !239, line: 65, baseType: !33, size: 32, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !355, file: !239, line: 607, baseType: !33, size: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !355, file: !239, line: 608, baseType: !377, size: 64, offset: 704)
!377 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !355, file: !239, line: 609, baseType: !379, size: 112, offset: 768)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !239, line: 319, size: 112, elements: !380)
!380 = !{!381, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !379, file: !239, line: 320, baseType: !382, size: 48)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 48, elements: !287)
!383 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !379, file: !239, line: 321, baseType: !382, size: 48, offset: 48)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !379, file: !239, line: 322, baseType: !383, size: 16, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !355, file: !239, line: 610, baseType: !303, size: 64, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !355, file: !239, line: 611, baseType: !303, size: 64, offset: 960)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !355, file: !239, line: 612, baseType: !303, size: 64, offset: 1024)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !355, file: !239, line: 613, baseType: !390, size: 64, offset: 1088)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !355, file: !239, line: 614, baseType: !394, size: 192, offset: 1152)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 24)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !355, file: !239, line: 615, baseType: !33, size: 32, offset: 1344)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !355, file: !239, line: 616, baseType: !303, size: 64, offset: 1376)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !355, file: !239, line: 617, baseType: !303, size: 64, offset: 1440)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !355, file: !239, line: 618, baseType: !303, size: 64, offset: 1504)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !355, file: !239, line: 619, baseType: !303, size: 64, offset: 1568)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !355, file: !239, line: 620, baseType: !303, size: 64, offset: 1632)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !355, file: !239, line: 621, baseType: !33, size: 32, offset: 1696)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !352, file: !239, line: 631, baseType: !405, size: 2880)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !239, line: 626, size: 2880, elements: !406)
!406 = !{!407, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !405, file: !239, line: 629, baseType: !408, size: 1920)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 1920, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 30)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !405, file: !239, line: 630, baseType: !412, size: 960, offset: 1920)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !409)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !238, file: !239, line: 636, baseType: !414, size: 64, offset: 4032)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !239, line: 93, size: 6336, elements: !416)
!416 = !{!417, !418, !419, !426}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !415, file: !239, line: 94, baseType: !414, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !415, file: !239, line: 95, baseType: !33, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !415, file: !239, line: 97, baseType: !420, size: 2048, offset: 128)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2048, elements: !424)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null}
!424 = !{!425}
!425 = !DISubrange(count: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !415, file: !239, line: 98, baseType: !427, size: 4160, offset: 2176)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !239, line: 74, size: 4160, elements: !428)
!428 = !{!429, !431, !432, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !427, file: !239, line: 75, baseType: !430, size: 2048)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !424)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !427, file: !239, line: 76, baseType: !430, size: 2048, offset: 2048)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !427, file: !239, line: 78, baseType: !344, size: 32, offset: 4096)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !427, file: !239, line: 81, baseType: !344, size: 32, offset: 4128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !238, file: !239, line: 637, baseType: !415, size: 6336, offset: 4096)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !238, file: !239, line: 641, baseType: !436, size: 64, offset: 10432)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !33}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !238, file: !239, line: 646, baseType: !441, size: 192, offset: 10496)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !239, line: 291, size: 192, elements: !442)
!442 = !{!443, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !441, file: !239, line: 293, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !441, file: !239, line: 294, baseType: !33, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !441, file: !239, line: 295, baseType: !243, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !238, file: !239, line: 648, baseType: !448, size: 4224, offset: 10688)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4224, elements: !287)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !59, file: !60, line: 85, baseType: !450, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !452)
!452 = !{!453, !457, !458, !465, !478}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !451, file: !4, line: 116, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !455, line: 64, baseType: !456)
!455 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !455, line: 63, baseType: !115)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !451, file: !4, line: 118, baseType: !454, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !451, file: !4, line: 120, baseType: !459, size: 128, offset: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !460, line: 51, size: 128, elements: !461)
!460 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !460, line: 52, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !459, file: !460, line: 53, baseType: !463, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !451, file: !4, line: 122, baseType: !466, size: 256, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !467)
!467 = !{!468, !469, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !466, file: !4, line: 107, baseType: !3, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !466, file: !4, line: 109, baseType: !454, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !466, file: !4, line: 111, baseType: !471, size: 96, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !455, line: 72, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 68, size: 96, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !472, file: !455, line: 69, baseType: !33, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !472, file: !455, line: 70, baseType: !33, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !472, file: !455, line: 71, baseType: !477, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !455, line: 61, baseType: !33)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !451, file: !4, line: 124, baseType: !459, size: 128, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !54, file: !50, line: 38, baseType: !480, size: 64, offset: 128)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !50, line: 38, size: 64, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !480, file: !50, line: 38, baseType: !53, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !49, file: !50, line: 42, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !37, file: !30, line: 149, baseType: !33, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !37, file: !30, line: 156, baseType: !33, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !37, file: !30, line: 159, baseType: !33, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !37, file: !30, line: 160, baseType: !489, size: 128, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !22, line: 413, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !22, line: 411, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 395, size: 128, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !491, file: !22, line: 398, baseType: !20, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !491, file: !22, line: 399, baseType: !5, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !29, file: !30, line: 140, baseType: !40, size: 64, offset: 128)
!496 = !{i32 2, !"Dwarf Version", i32 4}
!497 = !{i32 2, !"Debug Info Version", i32 3}
!498 = !{i32 1, !"wchar_size", i32 4}
!499 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!500 = distinct !DISubprogram(name: "sem_wait", scope: !1, file: !1, line: 90, type: !501, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !504)
!501 = !DISubroutineType(types: !502)
!502 = !{!33, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!504 = !{!505, !506, !507, !508, !513}
!505 = !DILocalVariable(name: "sem", arg: 1, scope: !500, file: !1, line: 90, type: !503)
!506 = !DILocalVariable(name: "result", scope: !500, file: !1, line: 120, type: !33)
!507 = !DILocalVariable(name: "s", scope: !500, file: !1, line: 121, type: !26)
!508 = !DILocalVariable(name: "v", scope: !509, file: !1, line: 133, type: !33)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 132, column: 9)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 131, column: 11)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 130, column: 5)
!512 = distinct !DILexicalBlock(scope: !500, file: !1, line: 125, column: 7)
!513 = !DILocalVariable(name: "_cleanup", scope: !514, file: !1, line: 150, type: !517)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 150, column: 15)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 148, column: 13)
!516 = distinct !DILexicalBlock(scope: !509, file: !1, line: 147, column: 15)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_t", file: !22, line: 555, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_cleanup_t", file: !22, line: 559, size: 192, elements: !519)
!519 = !{!520, !521, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !518, file: !22, line: 561, baseType: !21, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !518, file: !22, line: 562, baseType: !20, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !518, file: !22, line: 563, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!524 = !DILocation(line: 90, column: 19, scope: !500)
!525 = !DILocation(line: 120, column: 7, scope: !500)
!526 = !DILocation(line: 121, column: 13, scope: !500)
!527 = !{!528, !528, i64 0}
!528 = !{!"any pointer", !529, i64 0}
!529 = !{!"omnipotent char", !530, i64 0}
!530 = !{!"Simple C/C++ TBAA"}
!531 = !DILocation(line: 121, column: 9, scope: !500)
!532 = !DILocation(line: 123, column: 3, scope: !500)
!533 = !DILocation(line: 125, column: 9, scope: !512)
!534 = !DILocation(line: 125, column: 7, scope: !500)
!535 = !DILocation(line: 128, column: 5, scope: !536)
!536 = distinct !DILexicalBlock(scope: !512, file: !1, line: 126, column: 5)
!537 = !DILocation(line: 131, column: 45, scope: !510)
!538 = !DILocation(line: 131, column: 21, scope: !510)
!539 = !DILocation(line: 131, column: 52, scope: !510)
!540 = !DILocation(line: 131, column: 11, scope: !511)
!541 = !DILocation(line: 137, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !509, file: !1, line: 137, column: 15)
!543 = !DILocation(line: 137, column: 20, scope: !542)
!544 = !DILocation(line: 137, column: 15, scope: !509)
!545 = !DILocation(line: 144, column: 20, scope: !509)
!546 = !DILocation(line: 144, column: 15, scope: !509)
!547 = !{!548, !549, i64 0}
!548 = !{!"sem_t_", !549, i64 0, !528, i64 8, !528, i64 16}
!549 = !{!"int", !529, i64 0}
!550 = !DILocation(line: 133, column: 15, scope: !509)
!551 = !DILocation(line: 145, column: 18, scope: !509)
!552 = !DILocation(line: 147, column: 17, scope: !516)
!553 = !DILocation(line: 147, column: 15, scope: !509)
!554 = !DILocation(line: 164, column: 9, scope: !510)
!555 = !DILocation(line: 168, column: 7, scope: !500)
!556 = !DILocation(line: 139, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !542, file: !1, line: 138, column: 13)
!558 = !DILocation(line: 140, column: 15, scope: !557)
!559 = !DILocation(line: 140, column: 21, scope: !557)
!560 = !{!549, !549, i64 0}
!561 = !DILocation(line: 141, column: 15, scope: !557)
!562 = !DILocation(line: 150, column: 15, scope: !514)
!563 = !DILocation(line: 151, column: 48, scope: !514)
!564 = !{!548, !528, i64 16}
!565 = !DILocation(line: 151, column: 24, scope: !514)
!566 = !DILocation(line: 153, column: 15, scope: !514)
!567 = !DILocation(line: 153, column: 15, scope: !515)
!568 = !DILocation(line: 163, column: 13, scope: !515)
!569 = !DILocation(line: 168, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !500, file: !1, line: 168, column: 7)
!571 = !DILocation(line: 170, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !570, file: !1, line: 169, column: 5)
!573 = !DILocation(line: 170, column: 13, scope: !572)
!574 = !DILocation(line: 171, column: 7, scope: !572)
!575 = !DILocation(line: 0, scope: !557)
!576 = !DILocation(line: 176, column: 1, scope: !500)
!577 = distinct !DISubprogram(name: "pte_sem_wait_cleanup", scope: !1, file: !1, line: 59, type: !24, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !578)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "sem", arg: 1, scope: !577, file: !1, line: 59, type: !20)
!580 = !DILocalVariable(name: "s", scope: !577, file: !1, line: 61, type: !26)
!581 = !DILocalVariable(name: "timeout", scope: !577, file: !1, line: 62, type: !5)
!582 = !DILocation(line: 59, column: 29, scope: !577)
!583 = !DILocation(line: 61, column: 9, scope: !577)
!584 = !DILocation(line: 62, column: 3, scope: !577)
!585 = !DILocation(line: 64, column: 31, scope: !586)
!586 = distinct !DILexicalBlock(scope: !577, file: !1, line: 64, column: 7)
!587 = !DILocation(line: 64, column: 7, scope: !586)
!588 = !DILocation(line: 64, column: 37, scope: !586)
!589 = !DILocation(line: 64, column: 7, scope: !577)
!590 = !DILocation(line: 62, column: 16, scope: !577)
!591 = !DILocation(line: 73, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !586, file: !1, line: 65, column: 5)
!593 = !DILocation(line: 74, column: 34, scope: !594)
!594 = distinct !DILexicalBlock(scope: !592, file: !1, line: 74, column: 11)
!595 = !DILocation(line: 74, column: 11, scope: !594)
!596 = !DILocation(line: 74, column: 49, scope: !594)
!597 = !DILocation(line: 74, column: 11, scope: !592)
!598 = !DILocation(line: 76, column: 16, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !1, line: 75, column: 9)
!600 = !DILocation(line: 76, column: 11, scope: !599)
!601 = !DILocation(line: 83, column: 9, scope: !599)
!602 = !DILocation(line: 84, column: 14, scope: !592)
!603 = !DILocation(line: 85, column: 5, scope: !592)
!604 = !DILocation(line: 86, column: 1, scope: !577)
!605 = distinct !DISubprogram(name: "sem_wait_nocancel", scope: !1, file: !1, line: 180, type: !501, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !606)
!606 = !{!607, !608, !609, !610}
!607 = !DILocalVariable(name: "sem", arg: 1, scope: !605, file: !1, line: 180, type: !503)
!608 = !DILocalVariable(name: "result", scope: !605, file: !1, line: 211, type: !33)
!609 = !DILocalVariable(name: "s", scope: !605, file: !1, line: 212, type: !26)
!610 = !DILocalVariable(name: "v", scope: !611, file: !1, line: 224, type: !33)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 223, column: 9)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 222, column: 11)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 221, column: 5)
!614 = distinct !DILexicalBlock(scope: !605, file: !1, line: 216, column: 7)
!615 = !DILocation(line: 180, column: 28, scope: !605)
!616 = !DILocation(line: 211, column: 7, scope: !605)
!617 = !DILocation(line: 212, column: 13, scope: !605)
!618 = !DILocation(line: 212, column: 9, scope: !605)
!619 = !DILocation(line: 214, column: 3, scope: !605)
!620 = !DILocation(line: 216, column: 9, scope: !614)
!621 = !DILocation(line: 216, column: 7, scope: !605)
!622 = !DILocation(line: 219, column: 5, scope: !623)
!623 = distinct !DILexicalBlock(scope: !614, file: !1, line: 217, column: 5)
!624 = !DILocation(line: 222, column: 45, scope: !612)
!625 = !DILocation(line: 222, column: 21, scope: !612)
!626 = !DILocation(line: 222, column: 52, scope: !612)
!627 = !DILocation(line: 222, column: 11, scope: !613)
!628 = !DILocation(line: 228, column: 15, scope: !629)
!629 = distinct !DILexicalBlock(scope: !611, file: !1, line: 228, column: 15)
!630 = !DILocation(line: 228, column: 20, scope: !629)
!631 = !DILocation(line: 228, column: 15, scope: !611)
!632 = !DILocation(line: 230, column: 22, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !1, line: 229, column: 13)
!634 = !DILocation(line: 231, column: 15, scope: !633)
!635 = !DILocation(line: 231, column: 21, scope: !633)
!636 = !DILocation(line: 232, column: 15, scope: !633)
!637 = !DILocation(line: 235, column: 20, scope: !611)
!638 = !DILocation(line: 235, column: 15, scope: !611)
!639 = !DILocation(line: 224, column: 15, scope: !611)
!640 = !DILocation(line: 236, column: 18, scope: !611)
!641 = !DILocation(line: 238, column: 17, scope: !642)
!642 = distinct !DILexicalBlock(scope: !611, file: !1, line: 238, column: 15)
!643 = !DILocation(line: 238, column: 15, scope: !611)
!644 = !DILocation(line: 240, column: 38, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 239, column: 13)
!646 = !DILocation(line: 240, column: 15, scope: !645)
!647 = !DILocation(line: 241, column: 13, scope: !645)
!648 = !DILocation(line: 246, column: 7, scope: !605)
!649 = !DILocation(line: 248, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 247, column: 5)
!651 = distinct !DILexicalBlock(scope: !605, file: !1, line: 246, column: 7)
!652 = !DILocation(line: 248, column: 13, scope: !650)
!653 = !DILocation(line: 249, column: 7, scope: !650)
!654 = !DILocation(line: 242, column: 9, scope: !612)
!655 = !DILocation(line: 252, column: 3, scope: !605)
!656 = !DILocation(line: 0, scope: !633)
!657 = !DILocation(line: 254, column: 1, scope: !605)
