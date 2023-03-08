; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_timedwait.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_timedwait.c"
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
%struct.timespec = type { i64, i64 }
%struct.sem_timedwait_cleanup_args_t = type { %struct.sem_t_*, i32* }
%struct.pte_cleanup_t = type { void (i8*)*, i8*, %struct.pte_cleanup_t* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @sem_timedwait(%struct.sem_t_** readonly, %struct.timespec*) local_unnamed_addr #0 !dbg !506 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sem_timedwait_cleanup_args_t, align 8
  %6 = alloca %struct.pte_cleanup_t, align 8
  %7 = bitcast i32* %3 to i8*, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !546
  store i32 0, i32* %3, align 4, !dbg !547, !tbaa !548
  %8 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !552, !tbaa !553
  tail call void @pthread_testcancel() #5, !dbg !556
  %9 = icmp eq %struct.sem_t_** %0, null, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br i1 %9, label %10, label %11, !dbg !558

; <label>:10:                                     ; preds = %2
  store i32 22, i32* %3, align 4, !dbg !559, !tbaa !548
  br label %46, !dbg !561

; <label>:11:                                     ; preds = %2
  %12 = bitcast i32* %4 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !562
  %13 = icmp eq %struct.timespec* %1, null, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %13, label %16, label %14, !dbg !565

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @pte_relmillisecs(%struct.timespec* nonnull %1) #5, !dbg !566
  store i32 %15, i32* %4, align 4, !dbg !569, !tbaa !548
  br label %16

; <label>:16:                                     ; preds = %11, %14
  %17 = phi i32* [ %4, %14 ], [ null, %11 ], !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %8, i64 0, i32 1, !dbg !572
  %19 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %18) #5, !dbg !573
  store i32 %19, i32* %3, align 4, !dbg !574, !tbaa !548
  %20 = icmp eq i32 %19, 0, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br i1 %20, label %22, label %21, !dbg !576

; <label>:21:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !577
  br label %46, !dbg !561

; <label>:22:                                     ; preds = %16
  %23 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !578, !tbaa !553
  %24 = icmp eq %struct.sem_t_* %23, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br i1 %24, label %40, label %25, !dbg !581

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %8, i64 0, i32 0, !dbg !582
  %27 = load i32, i32* %26, align 8, !dbg !583, !tbaa !584
  %28 = add nsw i32 %27, -1, !dbg !583
  store i32 %28, i32* %26, align 8, !dbg !583, !tbaa !584
  %29 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %18) #5, !dbg !587
  %30 = icmp slt i32 %27, 1, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %30, label %31, label %43, !dbg !589

; <label>:31:                                     ; preds = %25
  %32 = bitcast %struct.sem_timedwait_cleanup_args_t* %5 to i8*, !dbg !590
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #4, !dbg !590
  %33 = getelementptr inbounds %struct.sem_timedwait_cleanup_args_t, %struct.sem_timedwait_cleanup_args_t* %5, i64 0, i32 0, !dbg !591
  store %struct.sem_t_* %8, %struct.sem_t_** %33, align 8, !dbg !592, !tbaa !593
  %34 = getelementptr inbounds %struct.sem_timedwait_cleanup_args_t, %struct.sem_timedwait_cleanup_args_t* %5, i64 0, i32 1, !dbg !595
  store i32* %3, i32** %34, align 8, !dbg !596, !tbaa !597
  %35 = bitcast %struct.pte_cleanup_t* %6 to i8*, !dbg !598
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %35) #4, !dbg !598
  call void @pte_push_cleanup(%struct.pte_cleanup_t* nonnull %6, void (i8*)* nonnull @pte_sem_timedwait_cleanup, i8* nonnull %32) #5, !dbg !598
  %36 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %8, i64 0, i32 2, !dbg !599
  %37 = load %struct.uk_semaphore*, %struct.uk_semaphore** %36, align 8, !dbg !599, !tbaa !600
  %38 = call i32 @pte_cancellable_wait(%struct.uk_semaphore* %37, i32* %17) #5, !dbg !601
  store i32 %38, i32* %3, align 4, !dbg !602, !tbaa !548
  %39 = call %struct.pte_cleanup_t* @pte_pop_cleanup(i32 %38) #5, !dbg !603
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %35) #4, !dbg !604
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #4, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br label %43, !dbg !606

; <label>:40:                                     ; preds = %22
  %41 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %18) #5, !dbg !607
  %42 = tail call i32* @__errno() #5, !dbg !609
  store i32 22, i32* %42, align 4, !dbg !610, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !577
  br label %51

; <label>:43:                                     ; preds = %25, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = load i32, i32* %3, align 4, !dbg !613, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = icmp eq i32 %44, 0, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %45, label %51, label %48, !dbg !561

; <label>:46:                                     ; preds = %10, %21
  %47 = phi i32 [ %19, %21 ], [ 22, %10 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br label %48, !dbg !616

; <label>:48:                                     ; preds = %46, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %46 ]
  %50 = call i32* @__errno() #5, !dbg !616
  store i32 %49, i32* %50, align 4, !dbg !618, !tbaa !548
  br label %51, !dbg !619

; <label>:51:                                     ; preds = %43, %40, %48
  %52 = phi i32 [ -1, %48 ], [ -1, %40 ], [ 0, %43 ], !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  ret i32 %52, !dbg !621
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @pthread_testcancel() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_relmillisecs(%struct.timespec*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @pte_push_cleanup(%struct.pte_cleanup_t*, void (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal void @pte_sem_timedwait_cleanup(i8* nocapture readonly) #0 !dbg !622 {
  %2 = alloca i32, align 4
  %3 = bitcast i8* %0 to %struct.sem_t_**, !dbg !632
  %4 = load %struct.sem_t_*, %struct.sem_t_** %3, align 8, !dbg !632, !tbaa !593
  %5 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %4, i64 0, i32 1, !dbg !634
  %6 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %5) #5, !dbg !635
  %7 = icmp eq i32 %6, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %7, label %8, label %24, !dbg !637

; <label>:8:                                      ; preds = %1
  %9 = bitcast i32* %2 to i8*, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !638
  store i32 0, i32* %2, align 4, !dbg !639, !tbaa !548
  %10 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %4, i64 0, i32 2, !dbg !640
  %11 = load %struct.uk_semaphore*, %struct.uk_semaphore** %10, align 8, !dbg !640, !tbaa !600
  %12 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %11, i32* nonnull %2) #5, !dbg !642
  %13 = icmp eq i32 %12, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br i1 %13, label %14, label %18, !dbg !644

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !645
  %16 = bitcast i8* %15 to i32**, !dbg !645
  %17 = load i32*, i32** %16, align 8, !dbg !645, !tbaa !597
  store i32 0, i32* %17, align 4, !dbg !647, !tbaa !548
  br label %22, !dbg !648

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %4, i64 0, i32 0, !dbg !649
  %20 = load i32, i32* %19, align 8, !dbg !651, !tbaa !584
  %21 = add nsw i32 %20, 1, !dbg !651
  store i32 %21, i32* %19, align 8, !dbg !651, !tbaa !584
  br label %22

; <label>:22:                                     ; preds = %18, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %5) #5, !dbg !652
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %24, !dbg !654

; <label>:24:                                     ; preds = %22, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  ret void, !dbg !655
}

; Function Attrs: noredzone
declare dso_local i32 @pte_cancellable_wait(%struct.uk_semaphore*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.pte_cleanup_t* @pte_pop_cleanup(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!502, !503, !504}
!llvm.ident = !{!505}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_timedwait.c", directory: "/root/.unikraft/apps/redis/build")
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
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_timedwait_cleanup_args_t", file: !1, line: 61, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 57, size: 128, elements: !29)
!29 = !{!30, !501}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !28, file: !1, line: 59, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !32, line: 78, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !35, line: 136, size: 192, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !39, !500}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !35, line: 138, baseType: !38, size: 32)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !34, file: !35, line: 139, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !22, line: 417, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !35, line: 146, size: 320, elements: !43)
!43 = !{!44, !490, !491, !492, !493}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !42, file: !35, line: 148, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !46, line: 12, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !49, line: 51, size: 192, elements: !50)
!49 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !48, file: !49, line: 52, baseType: !52, size: 64)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !48, file: !49, line: 53, baseType: !54, size: 128, offset: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !55, line: 42, size: 128, elements: !56)
!55 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !{!57, !488}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !54, file: !55, line: 42, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !55, line: 35, size: 192, elements: !60)
!60 = !{!61, !62, !484}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !59, file: !55, line: 36, baseType: !38, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !59, file: !55, line: 37, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !65, line: 59, size: 1024, elements: !66)
!65 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !{!67, !71, !72, !73, !74, !80, !85, !90, !92, !93, !239, !240, !241, !454}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 60, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !64, file: !65, line: 61, baseType: !20, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !64, file: !65, line: 62, baseType: !20, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !64, file: !65, line: 63, baseType: !20, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !64, file: !65, line: 64, baseType: !75, size: 128, offset: 256)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !64, file: !65, line: 64, size: 128, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !75, file: !65, line: 64, baseType: !63, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !75, file: !65, line: 64, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !65, line: 65, baseType: !81, size: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !82, line: 48, baseType: !83)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !84, line: 79, baseType: !5)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !64, file: !65, line: 66, baseType: !86, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !87, line: 49, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 128, baseType: !52)
!89 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !64, file: !65, line: 67, baseType: !91, size: 8, offset: 512)
!91 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !64, file: !65, line: 68, baseType: !54, size: 128, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !64, file: !65, line: 69, baseType: !94, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !96, line: 90, size: 2176, elements: !97)
!96 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !{!98, !103, !121, !126, !128, !130, !135, !143, !148, !154, !155, !156, !161, !236, !237, !238}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !95, file: !96, line: 91, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !96, line: 68, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !94}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !95, file: !96, line: 93, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !96, line: 71, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!38, !94, !63, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !111, line: 62, baseType: !112)
!111 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !111, line: 55, size: 128, elements: !113)
!113 = !{!114, !115, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !112, file: !111, line: 57, baseType: !91, size: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !112, file: !111, line: 59, baseType: !116, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !111, line: 53, baseType: !38)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !112, file: !111, line: 61, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !87, line: 48, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 129, baseType: !120)
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !95, file: !96, line: 94, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !96, line: 74, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !94, !63}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !95, file: !96, line: 95, baseType: !127, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !96, line: 76, baseType: !123)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !95, file: !96, line: 96, baseType: !129, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !96, line: 78, baseType: !123)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !95, file: !96, line: 98, baseType: !131, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !96, line: 81, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!38, !94, !63, !116}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !95, file: !96, line: 99, baseType: !136, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !96, line: 83, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!38, !94, !140, !142}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !95, file: !96, line: 100, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !96, line: 85, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!38, !94, !63, !38}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !95, file: !96, line: 101, baseType: !149, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !96, line: 87, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!38, !94, !140, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !95, file: !96, line: 104, baseType: !91, size: 8, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !95, file: !96, line: 105, baseType: !64, size: 1024, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !95, file: !96, line: 106, baseType: !157, size: 128, offset: 1664)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !65, line: 93, size: 128, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !157, file: !65, line: 93, baseType: !63, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !157, file: !65, line: 93, baseType: !79, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !95, file: !96, line: 107, baseType: !162, size: 192, offset: 1792)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !163, line: 59, size: 192, elements: !164)
!163 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!164 = !{!165, !230, !231}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !162, file: !163, line: 61, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !163, line: 51, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!20, !170, !120, !120}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !172, line: 77, size: 832, elements: !173)
!172 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !{!174, !181, !186, !191, !197, !199, !204, !205, !206, !211, !216, !221, !222, !223}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !171, file: !172, line: 79, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !172, line: 54, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!20, !170, !179}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 58, baseType: !120)
!180 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !171, file: !172, line: 80, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !172, line: 56, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!20, !170, !179, !179}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !171, file: !172, line: 81, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !172, line: 62, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!20, !170, !20, !179}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !171, file: !172, line: 82, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !172, line: 58, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!38, !170, !196, !179, !179}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !171, file: !172, line: 83, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !172, line: 60, baseType: !183)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !171, file: !172, line: 84, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !172, line: 64, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !170, !20}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !171, file: !172, line: 87, baseType: !200, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !171, file: !172, line: 88, baseType: !175, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !171, file: !172, line: 92, baseType: !207, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !172, line: 66, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!20, !170, !120}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !171, file: !172, line: 93, baseType: !212, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !172, line: 68, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !170, !20, !120}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !171, file: !172, line: 99, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !172, line: 70, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!38, !170, !20, !179}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !171, file: !172, line: 100, baseType: !179, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !172, line: 103, baseType: !170, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !171, file: !172, line: 104, baseType: !224, offset: 832)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !228)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !82, line: 20, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !84, line: 41, baseType: !227)
!227 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!228 = !{!229}
!229 = !DISubrange(count: -1)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !162, file: !163, line: 63, baseType: !23, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !162, file: !163, line: 65, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !163, line: 56, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !20, !20}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !95, file: !96, line: 108, baseType: !170, size: 64, offset: 1984)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 109, baseType: !94, size: 64, offset: 2048)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !95, file: !96, line: 110, baseType: !20, size: 64, offset: 2112)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !64, file: !65, line: 70, baseType: !20, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !64, file: !65, line: 72, baseType: !38, size: 32, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !64, file: !65, line: 82, baseType: !242, size: 64, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !244, line: 569, size: 14912, elements: !245)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !{!246, !247, !322, !323, !324, !325, !329, !330, !333, !334, !338, !350, !351, !352, !354, !355, !356, !418, !439, !440, !445, !452}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !243, file: !244, line: 571, baseType: !38, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !243, file: !244, line: 576, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !244, line: 287, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !244, line: 181, size: 1408, elements: !251)
!251 = !{!252, !255, !256, !257, !259, !260, !265, !266, !267, !274, !278, !283, !287, !288, !289, !290, !294, !298, !299, !300, !302, !303, !307, !321}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !250, file: !244, line: 182, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !250, file: !244, line: 183, baseType: !38, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !250, file: !244, line: 184, baseType: !38, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !250, file: !244, line: 185, baseType: !258, size: 16, offset: 128)
!258 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !250, file: !244, line: 186, baseType: !258, size: 16, offset: 144)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !250, file: !244, line: 187, baseType: !261, size: 128, offset: 192)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !244, line: 117, size: 128, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !261, file: !244, line: 118, baseType: !253, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !261, file: !244, line: 119, baseType: !38, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !250, file: !244, line: 188, baseType: !38, size: 32, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !250, file: !244, line: 195, baseType: !20, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !250, file: !244, line: 197, baseType: !268, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !242, !20, !273, !38}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !272, line: 145, baseType: !52)
!272 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !250, file: !244, line: 199, baseType: !275, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!271, !242, !20, !68, !38}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !250, file: !244, line: 202, baseType: !279, size: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !242, !20, !282, !38}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !272, line: 114, baseType: !52)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !250, file: !244, line: 203, baseType: !284, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!38, !242, !20}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !250, file: !244, line: 206, baseType: !261, size: 128, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !250, file: !244, line: 207, baseType: !253, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !250, file: !244, line: 208, baseType: !38, size: 32, offset: 896)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !250, file: !244, line: 211, baseType: !291, size: 24, offset: 928)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 24, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 3)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !250, file: !244, line: 212, baseType: !295, size: 8, offset: 952)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 8, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 1)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !250, file: !244, line: 215, baseType: !261, size: 128, offset: 960)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !250, file: !244, line: 218, baseType: !38, size: 32, offset: 1088)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !250, file: !244, line: 219, baseType: !301, size: 64, offset: 1152)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !272, line: 44, baseType: !52)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !250, file: !244, line: 222, baseType: !242, size: 64, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !250, file: !244, line: 226, baseType: !304, size: 32, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !272, line: 175, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !306, line: 12, baseType: !38)
!306 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !250, file: !244, line: 228, baseType: !308, size: 64, offset: 1312)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !272, line: 171, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 163, size: 64, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !309, file: !272, line: 165, baseType: !38, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !309, file: !272, line: 170, baseType: !313, size: 32, offset: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !272, line: 166, size: 32, elements: !314)
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !313, file: !272, line: 168, baseType: !316, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !180, line: 124, baseType: !5)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !313, file: !272, line: 169, baseType: !318, size: 32)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 32, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 4)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !250, file: !244, line: 229, baseType: !38, size: 32, offset: 1376)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !243, file: !244, line: 576, baseType: !248, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !243, file: !244, line: 576, baseType: !248, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !243, file: !244, line: 578, baseType: !38, size: 32, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !243, file: !244, line: 579, baseType: !326, size: 200, offset: 288)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 200, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 25)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !243, file: !244, line: 582, baseType: !38, size: 32, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !243, file: !244, line: 583, baseType: !331, size: 64, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !244, line: 40, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !243, file: !244, line: 585, baseType: !38, size: 32, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !243, file: !244, line: 587, baseType: !335, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !242}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !243, file: !244, line: 590, baseType: !339, size: 64, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !244, line: 47, size: 256, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !340, file: !244, line: 49, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !340, file: !244, line: 50, baseType: !38, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !340, file: !244, line: 50, baseType: !38, size: 32, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !340, file: !244, line: 50, baseType: !38, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !340, file: !244, line: 50, baseType: !38, size: 32, offset: 160)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !340, file: !244, line: 51, baseType: !348, size: 32, offset: 192)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 32, elements: !296)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !244, line: 25, baseType: !5)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !243, file: !244, line: 591, baseType: !38, size: 32, offset: 832)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !243, file: !244, line: 592, baseType: !339, size: 64, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !243, file: !244, line: 593, baseType: !353, size: 64, offset: 960)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !243, file: !244, line: 596, baseType: !38, size: 32, offset: 1024)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !243, file: !244, line: 597, baseType: !273, size: 64, offset: 1088)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !243, file: !244, line: 632, baseType: !357, size: 2880, offset: 1152)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 599, size: 2880, elements: !358)
!358 = !{!359, !409}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !357, file: !244, line: 622, baseType: !360, size: 1728)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !244, line: 601, size: 1728, elements: !361)
!361 = !{!362, !363, !364, !368, !380, !381, !383, !391, !392, !393, !394, !398, !402, !403, !404, !405, !406, !407, !408}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !360, file: !244, line: 603, baseType: !5, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !360, file: !244, line: 604, baseType: !273, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !360, file: !244, line: 605, baseType: !365, size: 208, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 208, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 26)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !360, file: !244, line: 606, baseType: !369, size: 288, offset: 352)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !244, line: 55, size: 288, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !369, file: !244, line: 57, baseType: !38, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !369, file: !244, line: 58, baseType: !38, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !369, file: !244, line: 59, baseType: !38, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !369, file: !244, line: 60, baseType: !38, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !369, file: !244, line: 61, baseType: !38, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !369, file: !244, line: 62, baseType: !38, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !369, file: !244, line: 63, baseType: !38, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !369, file: !244, line: 64, baseType: !38, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !369, file: !244, line: 65, baseType: !38, size: 32, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !360, file: !244, line: 607, baseType: !38, size: 32, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !360, file: !244, line: 608, baseType: !382, size: 64, offset: 704)
!382 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !360, file: !244, line: 609, baseType: !384, size: 112, offset: 768)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !244, line: 319, size: 112, elements: !385)
!385 = !{!386, !389, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !384, file: !244, line: 320, baseType: !387, size: 48)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 48, elements: !292)
!388 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !384, file: !244, line: 321, baseType: !387, size: 48, offset: 48)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !384, file: !244, line: 322, baseType: !388, size: 16, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !360, file: !244, line: 610, baseType: !308, size: 64, offset: 896)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !360, file: !244, line: 611, baseType: !308, size: 64, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !360, file: !244, line: 612, baseType: !308, size: 64, offset: 1024)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !360, file: !244, line: 613, baseType: !395, size: 64, offset: 1088)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !360, file: !244, line: 614, baseType: !399, size: 192, offset: 1152)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 24)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !360, file: !244, line: 615, baseType: !38, size: 32, offset: 1344)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !360, file: !244, line: 616, baseType: !308, size: 64, offset: 1376)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !360, file: !244, line: 617, baseType: !308, size: 64, offset: 1440)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !360, file: !244, line: 618, baseType: !308, size: 64, offset: 1504)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !360, file: !244, line: 619, baseType: !308, size: 64, offset: 1568)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !360, file: !244, line: 620, baseType: !308, size: 64, offset: 1632)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !360, file: !244, line: 621, baseType: !38, size: 32, offset: 1696)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !357, file: !244, line: 631, baseType: !410, size: 2880)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !244, line: 626, size: 2880, elements: !411)
!411 = !{!412, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !410, file: !244, line: 629, baseType: !413, size: 1920)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 1920, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 30)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !410, file: !244, line: 630, baseType: !417, size: 960, offset: 1920)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !414)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !243, file: !244, line: 636, baseType: !419, size: 64, offset: 4032)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !244, line: 93, size: 6336, elements: !421)
!421 = !{!422, !423, !424, !431}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !420, file: !244, line: 94, baseType: !419, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !420, file: !244, line: 95, baseType: !38, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !420, file: !244, line: 97, baseType: !425, size: 2048, offset: 128)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 2048, elements: !429)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null}
!429 = !{!430}
!430 = !DISubrange(count: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !420, file: !244, line: 98, baseType: !432, size: 4160, offset: 2176)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !244, line: 74, size: 4160, elements: !433)
!433 = !{!434, !436, !437, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !432, file: !244, line: 75, baseType: !435, size: 2048)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !429)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !432, file: !244, line: 76, baseType: !435, size: 2048, offset: 2048)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !432, file: !244, line: 78, baseType: !349, size: 32, offset: 4096)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !432, file: !244, line: 81, baseType: !349, size: 32, offset: 4128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !243, file: !244, line: 637, baseType: !420, size: 6336, offset: 4096)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !243, file: !244, line: 641, baseType: !441, size: 64, offset: 10432)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !38}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !243, file: !244, line: 646, baseType: !446, size: 192, offset: 10496)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !244, line: 291, size: 192, elements: !447)
!447 = !{!448, !450, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !446, file: !244, line: 293, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !446, file: !244, line: 294, baseType: !38, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !446, file: !244, line: 295, baseType: !248, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !243, file: !244, line: 648, baseType: !453, size: 4224, offset: 10688)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 4224, elements: !292)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !64, file: !65, line: 85, baseType: !455, size: 64, offset: 960)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !457)
!457 = !{!458, !462, !463, !470, !483}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !456, file: !4, line: 116, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !460, line: 64, baseType: !461)
!460 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !460, line: 63, baseType: !120)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !456, file: !4, line: 118, baseType: !459, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !456, file: !4, line: 120, baseType: !464, size: 128, offset: 128)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !465, line: 51, size: 128, elements: !466)
!465 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!466 = !{!467, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !465, line: 52, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !464, file: !465, line: 53, baseType: !468, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !456, file: !4, line: 122, baseType: !471, size: 256, offset: 256)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !472)
!472 = !{!473, !474, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !471, file: !4, line: 107, baseType: !3, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !471, file: !4, line: 109, baseType: !459, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !471, file: !4, line: 111, baseType: !476, size: 96, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !460, line: 72, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 68, size: 96, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !477, file: !460, line: 69, baseType: !38, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !477, file: !460, line: 70, baseType: !38, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !477, file: !460, line: 71, baseType: !482, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !460, line: 61, baseType: !38)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !456, file: !4, line: 124, baseType: !464, size: 128, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !59, file: !55, line: 38, baseType: !485, size: 64, offset: 128)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !55, line: 38, size: 64, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !485, file: !55, line: 38, baseType: !58, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !54, file: !55, line: 42, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !42, file: !35, line: 149, baseType: !38, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !42, file: !35, line: 156, baseType: !38, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !42, file: !35, line: 159, baseType: !38, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !42, file: !35, line: 160, baseType: !494, size: 128, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !22, line: 413, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !22, line: 411, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 395, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !496, file: !22, line: 398, baseType: !20, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !496, file: !22, line: 399, baseType: !5, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !34, file: !35, line: 140, baseType: !45, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "resultPtr", scope: !28, file: !1, line: 60, baseType: !153, size: 64, offset: 64)
!502 = !{i32 2, !"Dwarf Version", i32 4}
!503 = !{i32 2, !"Debug Info Version", i32 3}
!504 = !{i32 1, !"wchar_size", i32 4}
!505 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!506 = distinct !DISubprogram(name: "sem_timedwait", scope: !1, file: !1, line: 102, type: !507, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !518)
!507 = !DISubroutineType(types: !508)
!508 = !{!38, !509, !510}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !513, line: 52, size: 128, elements: !514)
!513 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!514 = !{!515, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !512, file: !513, line: 53, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !513, line: 34, baseType: !52)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !512, file: !513, line: 54, baseType: !52, size: 64, offset: 64)
!518 = !{!519, !520, !521, !522, !523, !526, !528, !531, !535}
!519 = !DILocalVariable(name: "sem", arg: 1, scope: !506, file: !1, line: 102, type: !509)
!520 = !DILocalVariable(name: "abstime", arg: 2, scope: !506, file: !1, line: 102, type: !510)
!521 = !DILocalVariable(name: "result", scope: !506, file: !1, line: 141, type: !38)
!522 = !DILocalVariable(name: "s", scope: !506, file: !1, line: 142, type: !31)
!523 = !DILocalVariable(name: "milliseconds", scope: !524, file: !1, line: 153, type: !5)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 152, column: 5)
!525 = distinct !DILexicalBlock(scope: !506, file: !1, line: 147, column: 7)
!526 = !DILocalVariable(name: "pTimeout", scope: !524, file: !1, line: 154, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!528 = !DILocalVariable(name: "v", scope: !529, file: !1, line: 171, type: !38)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 170, column: 9)
!530 = distinct !DILexicalBlock(scope: !524, file: !1, line: 169, column: 11)
!531 = !DILocalVariable(name: "cleanup_args", scope: !532, file: !1, line: 189, type: !27)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 188, column: 15)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 186, column: 13)
!534 = distinct !DILexicalBlock(scope: !529, file: !1, line: 185, column: 15)
!535 = !DILocalVariable(name: "_cleanup", scope: !536, file: !1, line: 195, type: !537)
!536 = distinct !DILexicalBlock(scope: !532, file: !1, line: 195, column: 17)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_t", file: !22, line: 555, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_cleanup_t", file: !22, line: 559, size: 192, elements: !539)
!539 = !{!540, !541, !542}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !538, file: !22, line: 561, baseType: !21, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !538, file: !22, line: 562, baseType: !20, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !538, file: !22, line: 563, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!544 = !DILocation(line: 102, column: 24, scope: !506)
!545 = !DILocation(line: 102, column: 52, scope: !506)
!546 = !DILocation(line: 141, column: 3, scope: !506)
!547 = !DILocation(line: 141, column: 7, scope: !506)
!548 = !{!549, !549, i64 0}
!549 = !{!"int", !550, i64 0}
!550 = !{!"omnipotent char", !551, i64 0}
!551 = !{!"Simple C/C++ TBAA"}
!552 = !DILocation(line: 142, column: 13, scope: !506)
!553 = !{!554, !554, i64 0}
!554 = !{!"any pointer", !550, i64 0}
!555 = !DILocation(line: 142, column: 9, scope: !506)
!556 = !DILocation(line: 145, column: 3, scope: !506)
!557 = !DILocation(line: 147, column: 11, scope: !525)
!558 = !DILocation(line: 147, column: 7, scope: !506)
!559 = !DILocation(line: 149, column: 14, scope: !560)
!560 = distinct !DILexicalBlock(scope: !525, file: !1, line: 148, column: 5)
!561 = !DILocation(line: 206, column: 7, scope: !506)
!562 = !DILocation(line: 153, column: 7, scope: !524)
!563 = !DILocation(line: 156, column: 19, scope: !564)
!564 = distinct !DILexicalBlock(scope: !524, file: !1, line: 156, column: 11)
!565 = !DILocation(line: 156, column: 11, scope: !524)
!566 = !DILocation(line: 165, column: 26, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !1, line: 161, column: 9)
!568 = !DILocation(line: 153, column: 20, scope: !524)
!569 = !DILocation(line: 165, column: 24, scope: !567)
!570 = !DILocation(line: 154, column: 21, scope: !524)
!571 = !DILocation(line: 0, scope: !567)
!572 = !DILocation(line: 169, column: 45, scope: !530)
!573 = !DILocation(line: 169, column: 21, scope: !530)
!574 = !DILocation(line: 169, column: 19, scope: !530)
!575 = !DILocation(line: 169, column: 52, scope: !530)
!576 = !DILocation(line: 169, column: 11, scope: !524)
!577 = !DILocation(line: 204, column: 5, scope: !525)
!578 = !DILocation(line: 175, column: 15, scope: !579)
!579 = distinct !DILexicalBlock(scope: !529, file: !1, line: 175, column: 15)
!580 = !DILocation(line: 175, column: 20, scope: !579)
!581 = !DILocation(line: 175, column: 15, scope: !529)
!582 = !DILocation(line: 182, column: 20, scope: !529)
!583 = !DILocation(line: 182, column: 15, scope: !529)
!584 = !{!585, !549, i64 0}
!585 = !{!"sem_t_", !549, i64 0, !554, i64 8, !554, i64 16}
!586 = !DILocation(line: 171, column: 15, scope: !529)
!587 = !DILocation(line: 183, column: 18, scope: !529)
!588 = !DILocation(line: 185, column: 17, scope: !534)
!589 = !DILocation(line: 185, column: 15, scope: !529)
!590 = !DILocation(line: 189, column: 17, scope: !532)
!591 = !DILocation(line: 191, column: 30, scope: !532)
!592 = !DILocation(line: 191, column: 34, scope: !532)
!593 = !{!594, !554, i64 0}
!594 = !{!"", !554, i64 0, !554, i64 8}
!595 = !DILocation(line: 192, column: 30, scope: !532)
!596 = !DILocation(line: 192, column: 40, scope: !532)
!597 = !{!594, !554, i64 8}
!598 = !DILocation(line: 195, column: 17, scope: !536)
!599 = !DILocation(line: 197, column: 50, scope: !536)
!600 = !{!585, !554, i64 16}
!601 = !DILocation(line: 197, column: 26, scope: !536)
!602 = !DILocation(line: 197, column: 24, scope: !536)
!603 = !DILocation(line: 199, column: 17, scope: !536)
!604 = !DILocation(line: 199, column: 17, scope: !532)
!605 = !DILocation(line: 200, column: 15, scope: !533)
!606 = !DILocation(line: 201, column: 13, scope: !533)
!607 = !DILocation(line: 177, column: 22, scope: !608)
!608 = distinct !DILexicalBlock(scope: !579, file: !1, line: 176, column: 13)
!609 = !DILocation(line: 178, column: 15, scope: !608)
!610 = !DILocation(line: 178, column: 21, scope: !608)
!611 = !DILocation(line: 179, column: 15, scope: !608)
!612 = !DILocation(line: 202, column: 9, scope: !530)
!613 = !DILocation(line: 206, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !506, file: !1, line: 206, column: 7)
!615 = !DILocation(line: 206, column: 14, scope: !614)
!616 = !DILocation(line: 209, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !1, line: 207, column: 5)
!618 = !DILocation(line: 209, column: 13, scope: !617)
!619 = !DILocation(line: 210, column: 7, scope: !617)
!620 = !DILocation(line: 0, scope: !608)
!621 = !DILocation(line: 216, column: 1, scope: !506)
!622 = distinct !DISubprogram(name: "pte_sem_timedwait_cleanup", scope: !1, file: !1, line: 64, type: !24, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !623)
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(name: "args", arg: 1, scope: !622, file: !1, line: 64, type: !20)
!625 = !DILocalVariable(name: "a", scope: !622, file: !1, line: 66, type: !26)
!626 = !DILocalVariable(name: "s", scope: !622, file: !1, line: 67, type: !31)
!627 = !DILocalVariable(name: "timeout", scope: !628, file: !1, line: 79, type: !5)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 70, column: 5)
!629 = distinct !DILexicalBlock(scope: !622, file: !1, line: 69, column: 7)
!630 = !DILocation(line: 64, column: 35, scope: !622)
!631 = !DILocation(line: 66, column: 34, scope: !622)
!632 = !DILocation(line: 67, column: 16, scope: !622)
!633 = !DILocation(line: 67, column: 9, scope: !622)
!634 = !DILocation(line: 69, column: 31, scope: !629)
!635 = !DILocation(line: 69, column: 7, scope: !629)
!636 = !DILocation(line: 69, column: 37, scope: !629)
!637 = !DILocation(line: 69, column: 7, scope: !622)
!638 = !DILocation(line: 79, column: 7, scope: !628)
!639 = !DILocation(line: 79, column: 20, scope: !628)
!640 = !DILocation(line: 80, column: 34, scope: !641)
!641 = distinct !DILexicalBlock(scope: !628, file: !1, line: 80, column: 11)
!642 = !DILocation(line: 80, column: 11, scope: !641)
!643 = !DILocation(line: 80, column: 49, scope: !641)
!644 = !DILocation(line: 80, column: 11, scope: !628)
!645 = !DILocation(line: 83, column: 16, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !1, line: 81, column: 9)
!647 = !DILocation(line: 83, column: 27, scope: !646)
!648 = !DILocation(line: 84, column: 9, scope: !646)
!649 = !DILocation(line: 88, column: 14, scope: !650)
!650 = distinct !DILexicalBlock(scope: !641, file: !1, line: 86, column: 9)
!651 = !DILocation(line: 88, column: 19, scope: !650)
!652 = !DILocation(line: 96, column: 14, scope: !628)
!653 = !DILocation(line: 97, column: 5, scope: !629)
!654 = !DILocation(line: 97, column: 5, scope: !628)
!655 = !DILocation(line: 98, column: 1, scope: !622)
