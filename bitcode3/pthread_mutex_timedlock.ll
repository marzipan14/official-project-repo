; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutex_timedlock.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutex_timedlock.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
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
%struct.pte_handle_t = type { i8*, i32 }
%struct.timespec = type { i64, i64 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_mutex_timedlock(%struct.pthread_mutex_t_**, %struct.timespec*) local_unnamed_addr #0 !dbg !502 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_** %0, align 8, !dbg !529, !tbaa !531
  %6 = icmp ult %struct.pthread_mutex_t_* %5, inttoptr (i64 -3 to %struct.pthread_mutex_t_*), !dbg !535
  br i1 %6, label %12, label %7, !dbg !536

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @pte_mutex_check_need_init(%struct.pthread_mutex_t_** nonnull %0) #4, !dbg !537
  %9 = icmp eq i32 %8, 0, !dbg !541
  br i1 %9, label %10, label %83, !dbg !542

; <label>:10:                                     ; preds = %7
  %11 = load %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_** %0, align 8, !dbg !543, !tbaa !531
  br label %12, !dbg !542

; <label>:12:                                     ; preds = %10, %2
  %13 = phi %struct.pthread_mutex_t_* [ %11, %10 ], [ %5, %2 ], !dbg !543
  %14 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 3, !dbg !545
  %15 = load i32, i32* %14, align 8, !dbg !545, !tbaa !546
  %16 = icmp eq i32 %15, 0, !dbg !550
  br i1 %16, label %17, label %38, !dbg !551

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 1, !dbg !552
  %19 = atomicrmw xchg i32* %18, i32 1 seq_cst, !dbg !552
  %20 = icmp eq i32 %19, 0, !dbg !555
  br i1 %20, label %83, label %21, !dbg !556

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 0
  %23 = bitcast i32* %4 to i8*
  %24 = icmp eq %struct.timespec* %1, null
  br label %25, !dbg !557

; <label>:25:                                     ; preds = %21, %35
  %26 = atomicrmw xchg i32* %18, i32 -1 seq_cst, !dbg !557
  %27 = icmp eq i32 %26, 0, !dbg !559
  br i1 %27, label %83, label %28, !dbg !560

; <label>:28:                                     ; preds = %25
  %29 = load %struct.uk_semaphore*, %struct.uk_semaphore** %22, align 8, !dbg !561, !tbaa !564
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5, !dbg !578
  br i1 %24, label %30, label %32, !dbg !579

; <label>:30:                                     ; preds = %28
  %31 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %29, i32* null) #4, !dbg !580
  br label %35, !dbg !584

; <label>:32:                                     ; preds = %28
  %33 = call i32 @pte_relmillisecs(%struct.timespec* nonnull %1) #4, !dbg !585
  store i32 %33, i32* %4, align 4, !dbg !588, !tbaa !589
  %34 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %29, i32* nonnull %4) #4, !dbg !590
  br label %35

; <label>:35:                                     ; preds = %30, %32
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ], !dbg !591
  %37 = icmp eq i32 %36, 3, !dbg !592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5, !dbg !594
  br i1 %37, label %83, label %25, !dbg !595, !llvm.loop !596

; <label>:38:                                     ; preds = %12
  %39 = tail call { i8*, i32 } @pthread_self() #4, !dbg !598
  %40 = extractvalue { i8*, i32 } %39, 0, !dbg !598
  %41 = extractvalue { i8*, i32 } %39, 1, !dbg !598
  %42 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 1, !dbg !600
  %43 = load i32, i32* %42, align 8, !dbg !600, !tbaa !601
  %44 = cmpxchg i32* %42, i32 0, i32 1 seq_cst seq_cst, !dbg !602
  %45 = icmp eq i32 %43, 0, !dbg !603
  br i1 %45, label %46, label %50, !dbg !604

; <label>:46:                                     ; preds = %38
  %47 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 2, !dbg !605
  store i32 1, i32* %47, align 4, !dbg !607, !tbaa !608
  %48 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 4, i32 0, !dbg !609
  store i8* %40, i8** %48, align 8, !dbg !609
  %49 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 4, i32 1, !dbg !609
  store i32 %41, i32* %49, align 8, !dbg !609
  br label %83, !dbg !610

; <label>:50:                                     ; preds = %38
  %51 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 4, i32 0, !dbg !611
  %52 = load i8*, i8** %51, align 8, !dbg !611
  %53 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 4, i32 1, !dbg !611
  %54 = load i32, i32* %53, align 8, !dbg !611
  %55 = tail call i32 @pthread_equal(i8* %52, i32 %54, i8* %40, i32 %41) #4, !dbg !611
  %56 = icmp eq i32 %55, 0, !dbg !611
  br i1 %56, label %57, label %61, !dbg !614

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 0
  %59 = bitcast i32* %3 to i8*
  %60 = icmp eq %struct.timespec* %1, null
  br label %68, !dbg !615

; <label>:61:                                     ; preds = %50
  %62 = load i32, i32* %14, align 8, !dbg !617, !tbaa !546
  %63 = icmp eq i32 %62, 1, !dbg !620
  br i1 %63, label %64, label %83, !dbg !621

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 2, !dbg !622
  %66 = load i32, i32* %65, align 4, !dbg !624, !tbaa !608
  %67 = add nsw i32 %66, 1, !dbg !624
  store i32 %67, i32* %65, align 4, !dbg !624, !tbaa !608
  br label %83, !dbg !625

; <label>:68:                                     ; preds = %57, %78
  %69 = atomicrmw xchg i32* %42, i32 -1 seq_cst, !dbg !615
  %70 = icmp eq i32 %69, 0, !dbg !626
  br i1 %70, label %81, label %71, !dbg !627

; <label>:71:                                     ; preds = %68
  %72 = load %struct.uk_semaphore*, %struct.uk_semaphore** %58, align 8, !dbg !628, !tbaa !564
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %59) #5, !dbg !634
  br i1 %60, label %73, label %75, !dbg !635

; <label>:73:                                     ; preds = %71
  %74 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %72, i32* null) #4, !dbg !636
  br label %78, !dbg !638

; <label>:75:                                     ; preds = %71
  %76 = call i32 @pte_relmillisecs(%struct.timespec* nonnull %1) #4, !dbg !639
  store i32 %76, i32* %3, align 4, !dbg !641, !tbaa !589
  %77 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %72, i32* nonnull %3) #4, !dbg !642
  br label %78

; <label>:78:                                     ; preds = %73, %75
  %79 = phi i32 [ %74, %73 ], [ %77, %75 ], !dbg !643
  %80 = icmp eq i32 %79, 3, !dbg !644
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %59) #5, !dbg !645
  br i1 %80, label %83, label %68, !dbg !646, !llvm.loop !647

; <label>:81:                                     ; preds = %68
  %82 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %13, i64 0, i32 2, !dbg !649
  store i32 1, i32* %82, align 4, !dbg !650, !tbaa !608
  store i8* %40, i8** %51, align 8, !dbg !651
  store i32 %41, i32* %53, align 8, !dbg !651
  br label %83

; <label>:83:                                     ; preds = %78, %35, %25, %46, %81, %64, %17, %61, %7
  %84 = phi i32 [ %8, %7 ], [ 45, %61 ], [ 0, %17 ], [ 0, %64 ], [ 0, %81 ], [ 0, %46 ], [ 0, %25 ], [ 116, %35 ], [ 116, %78 ]
  ret i32 %84, !dbg !652
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_mutex_check_need_init(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local { i8*, i32 } @pthread_self() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_equal(i8*, i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_relmillisecs(%struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!498, !499, !500}
!llvm.ident = !{!501}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !31)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutex_timedlock.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 539, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21}
!13 = !DIEnumerator(name: "PTHREAD_MUTEX_FAST_NP", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "PTHREAD_MUTEX_RECURSIVE_NP", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "PTHREAD_MUTEX_ERRORCHECK_NP", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "PTHREAD_MUTEX_TIMED_NP", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PTHREAD_MUTEX_ADAPTIVE_NP", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "PTHREAD_MUTEX_NORMAL", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "PTHREAD_MUTEX_RECURSIVE", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "PTHREAD_MUTEX_ERRORCHECK", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "PTHREAD_MUTEX_DEFAULT", value: 0, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !23, line: 38, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!30 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!31 = !{!32, !66}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 417, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !35, line: 146, size: 320, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !488, !489, !490, !491}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !34, file: !35, line: 148, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !39, line: 12, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !42, line: 51, size: 192, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !41, file: !42, line: 52, baseType: !45, size: 64)
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !41, file: !42, line: 53, baseType: !47, size: 128, offset: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !48, line: 42, size: 128, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50, !486}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !47, file: !48, line: 42, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !48, line: 35, size: 192, elements: !53)
!53 = !{!54, !56, !482}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !52, file: !48, line: 36, baseType: !55, size: 32)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !52, file: !48, line: 37, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !59, line: 59, size: 1024, elements: !60)
!59 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !{!61, !65, !67, !68, !69, !75, !80, !85, !87, !88, !237, !238, !239, !452}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !59, line: 60, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !58, file: !59, line: 61, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !58, file: !59, line: 62, baseType: !66, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !58, file: !59, line: 63, baseType: !66, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !58, file: !59, line: 64, baseType: !70, size: 128, offset: 256)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !59, line: 64, size: 128, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !70, file: !59, line: 64, baseType: !57, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !70, file: !59, line: 64, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !59, line: 65, baseType: !76, size: 32, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 48, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 79, baseType: !5)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !58, file: !59, line: 66, baseType: !81, size: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !82, line: 49, baseType: !83)
!82 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !84, line: 128, baseType: !45)
!84 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !58, file: !59, line: 67, baseType: !86, size: 8, offset: 512)
!86 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !58, file: !59, line: 68, baseType: !47, size: 128, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !58, file: !59, line: 69, baseType: !89, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !91, line: 90, size: 2176, elements: !92)
!91 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !{!93, !98, !116, !121, !123, !125, !130, !138, !143, !149, !150, !151, !156, !234, !235, !236}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !90, file: !91, line: 91, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !91, line: 68, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !89}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !90, file: !91, line: 93, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !91, line: 71, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!55, !89, !57, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !106, line: 55, size: 128, elements: !108)
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !107, file: !106, line: 57, baseType: !86, size: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !107, file: !106, line: 59, baseType: !111, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !106, line: 53, baseType: !55)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !107, file: !106, line: 61, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !82, line: 48, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !84, line: 129, baseType: !115)
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !90, file: !91, line: 94, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !91, line: 74, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !89, !57}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !90, file: !91, line: 95, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !91, line: 76, baseType: !118)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !90, file: !91, line: 96, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !91, line: 78, baseType: !118)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !90, file: !91, line: 98, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !91, line: 81, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!55, !89, !57, !111}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !90, file: !91, line: 99, baseType: !131, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !91, line: 83, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!55, !89, !135, !137}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !90, file: !91, line: 100, baseType: !139, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !91, line: 85, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!55, !89, !57, !55}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !90, file: !91, line: 101, baseType: !144, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !91, line: 87, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!55, !89, !135, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !90, file: !91, line: 104, baseType: !86, size: 8, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !90, file: !91, line: 105, baseType: !58, size: 1024, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !90, file: !91, line: 106, baseType: !152, size: 128, offset: 1664)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !59, line: 93, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !152, file: !59, line: 93, baseType: !57, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !152, file: !59, line: 93, baseType: !74, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !90, file: !91, line: 107, baseType: !157, size: 192, offset: 1792)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !158, line: 59, size: 192, elements: !159)
!158 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!159 = !{!160, !225, !229}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !157, file: !158, line: 61, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !158, line: 51, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!66, !165, !115, !115}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !167, line: 77, size: 832, elements: !168)
!167 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!168 = !{!169, !176, !181, !186, !192, !194, !199, !200, !201, !206, !211, !216, !217, !218}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !166, file: !167, line: 79, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !167, line: 54, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!66, !165, !174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 58, baseType: !115)
!175 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!176 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !166, file: !167, line: 80, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !167, line: 56, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!66, !165, !174, !174}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !166, file: !167, line: 81, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !167, line: 62, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!66, !165, !66, !174}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !166, file: !167, line: 82, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !167, line: 58, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!55, !165, !191, !174, !174}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !166, file: !167, line: 83, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !167, line: 60, baseType: !178)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !166, file: !167, line: 84, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !167, line: 64, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !165, !66}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !166, file: !167, line: 87, baseType: !195, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !166, file: !167, line: 88, baseType: !170, size: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !166, file: !167, line: 92, baseType: !202, size: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !167, line: 66, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!66, !165, !115}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !166, file: !167, line: 93, baseType: !207, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !167, line: 68, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !165, !66, !115}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !166, file: !167, line: 99, baseType: !212, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !167, line: 70, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!55, !165, !66, !174}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !167, line: 100, baseType: !174, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !167, line: 103, baseType: !165, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !166, file: !167, line: 104, baseType: !219, offset: 832)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !77, line: 20, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !79, line: 41, baseType: !222)
!222 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!223 = !{!224}
!224 = !DISubrange(count: -1)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !157, file: !158, line: 63, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !66}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !157, file: !158, line: 65, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !158, line: 56, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !66, !66}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !90, file: !91, line: 108, baseType: !165, size: 64, offset: 1984)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !91, line: 109, baseType: !89, size: 64, offset: 2048)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !90, file: !91, line: 110, baseType: !66, size: 64, offset: 2112)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !58, file: !59, line: 70, baseType: !66, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !58, file: !59, line: 72, baseType: !55, size: 32, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !58, file: !59, line: 82, baseType: !240, size: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !242, line: 569, size: 14912, elements: !243)
!242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!243 = !{!244, !245, !320, !321, !322, !323, !327, !328, !331, !332, !336, !348, !349, !350, !352, !353, !354, !416, !437, !438, !443, !450}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !241, file: !242, line: 571, baseType: !55, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !241, file: !242, line: 576, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !242, line: 287, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !242, line: 181, size: 1408, elements: !249)
!249 = !{!250, !253, !254, !255, !257, !258, !263, !264, !265, !272, !276, !281, !285, !286, !287, !288, !292, !296, !297, !298, !300, !301, !305, !319}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !248, file: !242, line: 182, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !248, file: !242, line: 183, baseType: !55, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !248, file: !242, line: 184, baseType: !55, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !248, file: !242, line: 185, baseType: !256, size: 16, offset: 128)
!256 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !248, file: !242, line: 186, baseType: !256, size: 16, offset: 144)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !248, file: !242, line: 187, baseType: !259, size: 128, offset: 192)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !242, line: 117, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !259, file: !242, line: 118, baseType: !251, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !259, file: !242, line: 119, baseType: !55, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !248, file: !242, line: 188, baseType: !55, size: 32, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !248, file: !242, line: 195, baseType: !66, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !248, file: !242, line: 197, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !240, !66, !271, !55}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !270, line: 145, baseType: !45)
!270 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !248, file: !242, line: 199, baseType: !273, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!269, !240, !66, !62, !55}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !248, file: !242, line: 202, baseType: !277, size: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !240, !66, !280, !55}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !270, line: 114, baseType: !45)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !248, file: !242, line: 203, baseType: !282, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!55, !240, !66}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !248, file: !242, line: 206, baseType: !259, size: 128, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !248, file: !242, line: 207, baseType: !251, size: 64, offset: 832)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !248, file: !242, line: 208, baseType: !55, size: 32, offset: 896)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !248, file: !242, line: 211, baseType: !289, size: 24, offset: 928)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 24, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !248, file: !242, line: 212, baseType: !293, size: 8, offset: 952)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 8, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 1)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !248, file: !242, line: 215, baseType: !259, size: 128, offset: 960)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !248, file: !242, line: 218, baseType: !55, size: 32, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !248, file: !242, line: 219, baseType: !299, size: 64, offset: 1152)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !270, line: 44, baseType: !45)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !248, file: !242, line: 222, baseType: !240, size: 64, offset: 1216)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !248, file: !242, line: 226, baseType: !302, size: 32, offset: 1280)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !270, line: 175, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !304, line: 12, baseType: !55)
!304 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !248, file: !242, line: 228, baseType: !306, size: 64, offset: 1312)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !270, line: 171, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 163, size: 64, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !307, file: !270, line: 165, baseType: !55, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !307, file: !270, line: 170, baseType: !311, size: 32, offset: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !270, line: 166, size: 32, elements: !312)
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !311, file: !270, line: 168, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !175, line: 124, baseType: !5)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !311, file: !270, line: 169, baseType: !316, size: 32)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 32, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 4)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !248, file: !242, line: 229, baseType: !55, size: 32, offset: 1376)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !241, file: !242, line: 576, baseType: !246, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !241, file: !242, line: 576, baseType: !246, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !241, file: !242, line: 578, baseType: !55, size: 32, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !241, file: !242, line: 579, baseType: !324, size: 200, offset: 288)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 200, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 25)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !241, file: !242, line: 582, baseType: !55, size: 32, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !241, file: !242, line: 583, baseType: !329, size: 64, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !242, line: 40, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !241, file: !242, line: 585, baseType: !55, size: 32, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !241, file: !242, line: 587, baseType: !333, size: 64, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !240}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !241, file: !242, line: 590, baseType: !337, size: 64, offset: 768)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !242, line: 47, size: 256, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !338, file: !242, line: 49, baseType: !337, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !338, file: !242, line: 50, baseType: !55, size: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !338, file: !242, line: 50, baseType: !55, size: 32, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !338, file: !242, line: 50, baseType: !55, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !338, file: !242, line: 50, baseType: !55, size: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !338, file: !242, line: 51, baseType: !346, size: 32, offset: 192)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 32, elements: !294)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !242, line: 25, baseType: !5)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !241, file: !242, line: 591, baseType: !55, size: 32, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !241, file: !242, line: 592, baseType: !337, size: 64, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !241, file: !242, line: 593, baseType: !351, size: 64, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !241, file: !242, line: 596, baseType: !55, size: 32, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !241, file: !242, line: 597, baseType: !271, size: 64, offset: 1088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !241, file: !242, line: 632, baseType: !355, size: 2880, offset: 1152)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !242, line: 599, size: 2880, elements: !356)
!356 = !{!357, !407}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !355, file: !242, line: 622, baseType: !358, size: 1728)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !242, line: 601, size: 1728, elements: !359)
!359 = !{!360, !361, !362, !366, !378, !379, !381, !389, !390, !391, !392, !396, !400, !401, !402, !403, !404, !405, !406}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !358, file: !242, line: 603, baseType: !5, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !358, file: !242, line: 604, baseType: !271, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !358, file: !242, line: 605, baseType: !363, size: 208, offset: 128)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 208, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 26)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !358, file: !242, line: 606, baseType: !367, size: 288, offset: 352)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !242, line: 55, size: 288, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !367, file: !242, line: 57, baseType: !55, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !367, file: !242, line: 58, baseType: !55, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !367, file: !242, line: 59, baseType: !55, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !367, file: !242, line: 60, baseType: !55, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !367, file: !242, line: 61, baseType: !55, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !367, file: !242, line: 62, baseType: !55, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !367, file: !242, line: 63, baseType: !55, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !367, file: !242, line: 64, baseType: !55, size: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !367, file: !242, line: 65, baseType: !55, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !358, file: !242, line: 607, baseType: !55, size: 32, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !358, file: !242, line: 608, baseType: !380, size: 64, offset: 704)
!380 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !358, file: !242, line: 609, baseType: !382, size: 112, offset: 768)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !242, line: 319, size: 112, elements: !383)
!383 = !{!384, !387, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !382, file: !242, line: 320, baseType: !385, size: 48)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 48, elements: !290)
!386 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !382, file: !242, line: 321, baseType: !385, size: 48, offset: 48)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !382, file: !242, line: 322, baseType: !386, size: 16, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !358, file: !242, line: 610, baseType: !306, size: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !358, file: !242, line: 611, baseType: !306, size: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !358, file: !242, line: 612, baseType: !306, size: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !358, file: !242, line: 613, baseType: !393, size: 64, offset: 1088)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !358, file: !242, line: 614, baseType: !397, size: 192, offset: 1152)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 24)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !358, file: !242, line: 615, baseType: !55, size: 32, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !358, file: !242, line: 616, baseType: !306, size: 64, offset: 1376)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !358, file: !242, line: 617, baseType: !306, size: 64, offset: 1440)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !358, file: !242, line: 618, baseType: !306, size: 64, offset: 1504)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !358, file: !242, line: 619, baseType: !306, size: 64, offset: 1568)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !358, file: !242, line: 620, baseType: !306, size: 64, offset: 1632)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !358, file: !242, line: 621, baseType: !55, size: 32, offset: 1696)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !355, file: !242, line: 631, baseType: !408, size: 2880)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !242, line: 626, size: 2880, elements: !409)
!409 = !{!410, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !408, file: !242, line: 629, baseType: !411, size: 1920)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 1920, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 30)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !408, file: !242, line: 630, baseType: !415, size: 960, offset: 1920)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !412)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !241, file: !242, line: 636, baseType: !417, size: 64, offset: 4032)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !242, line: 93, size: 6336, elements: !419)
!419 = !{!420, !421, !422, !429}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !418, file: !242, line: 94, baseType: !417, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !418, file: !242, line: 95, baseType: !55, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !418, file: !242, line: 97, baseType: !423, size: 2048, offset: 128)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 2048, elements: !427)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null}
!427 = !{!428}
!428 = !DISubrange(count: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !418, file: !242, line: 98, baseType: !430, size: 4160, offset: 2176)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !242, line: 74, size: 4160, elements: !431)
!431 = !{!432, !434, !435, !436}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !430, file: !242, line: 75, baseType: !433, size: 2048)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2048, elements: !427)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !430, file: !242, line: 76, baseType: !433, size: 2048, offset: 2048)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !430, file: !242, line: 78, baseType: !347, size: 32, offset: 4096)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !430, file: !242, line: 81, baseType: !347, size: 32, offset: 4128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !241, file: !242, line: 637, baseType: !418, size: 6336, offset: 4096)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !241, file: !242, line: 641, baseType: !439, size: 64, offset: 10432)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !55}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !241, file: !242, line: 646, baseType: !444, size: 192, offset: 10496)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !242, line: 291, size: 192, elements: !445)
!445 = !{!446, !448, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !444, file: !242, line: 293, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !444, file: !242, line: 294, baseType: !55, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !444, file: !242, line: 295, baseType: !246, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !241, file: !242, line: 648, baseType: !451, size: 4224, offset: 10688)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 4224, elements: !290)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !58, file: !59, line: 85, baseType: !453, size: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !455)
!455 = !{!456, !460, !461, !468, !481}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !454, file: !4, line: 116, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !458, line: 64, baseType: !459)
!458 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !458, line: 63, baseType: !115)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !454, file: !4, line: 118, baseType: !457, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !454, file: !4, line: 120, baseType: !462, size: 128, offset: 128)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !463, line: 51, size: 128, elements: !464)
!463 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!464 = !{!465, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !463, line: 52, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !462, file: !463, line: 53, baseType: !466, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !454, file: !4, line: 122, baseType: !469, size: 256, offset: 256)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !470)
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !469, file: !4, line: 107, baseType: !3, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !469, file: !4, line: 109, baseType: !457, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !469, file: !4, line: 111, baseType: !474, size: 96, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !458, line: 72, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 68, size: 96, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !475, file: !458, line: 69, baseType: !55, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !475, file: !458, line: 70, baseType: !55, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !475, file: !458, line: 71, baseType: !480, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !458, line: 61, baseType: !55)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !454, file: !4, line: 124, baseType: !462, size: 128, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !52, file: !48, line: 38, baseType: !483, size: 64, offset: 128)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !52, file: !48, line: 38, size: 64, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !483, file: !48, line: 38, baseType: !51, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !47, file: !48, line: 42, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !34, file: !35, line: 149, baseType: !55, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !34, file: !35, line: 156, baseType: !55, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !35, line: 159, baseType: !55, size: 32, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !34, file: !35, line: 160, baseType: !492, size: 128, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 413, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !11, line: 411, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 395, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !494, file: !11, line: 398, baseType: !66, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !494, file: !11, line: 399, baseType: !5, size: 32, offset: 64)
!498 = !{i32 2, !"Dwarf Version", i32 4}
!499 = !{i32 2, !"Debug Info Version", i32 3}
!500 = !{i32 1, !"wchar_size", i32 4}
!501 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!502 = distinct !DISubprogram(name: "pthread_mutex_timedlock", scope: !1, file: !1, line: 111, type: !503, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !514)
!503 = !DISubroutineType(types: !504)
!504 = !{!55, !505, !506}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !509, line: 52, size: 128, elements: !510)
!509 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!510 = !{!511, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !508, file: !509, line: 53, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !509, line: 34, baseType: !45)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !508, file: !509, line: 54, baseType: !45, size: 64, offset: 64)
!514 = !{!515, !516, !517, !518, !519, !522, !525}
!515 = !DILocalVariable(name: "mutex", arg: 1, scope: !502, file: !1, line: 111, type: !505)
!516 = !DILocalVariable(name: "abstime", arg: 2, scope: !502, file: !1, line: 112, type: !506)
!517 = !DILocalVariable(name: "result", scope: !502, file: !1, line: 114, type: !55)
!518 = !DILocalVariable(name: "mx", scope: !502, file: !1, line: 115, type: !32)
!519 = !DILocalVariable(name: "self", scope: !520, file: !1, line: 152, type: !492)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 151, column: 5)
!521 = distinct !DILexicalBlock(scope: !502, file: !1, line: 137, column: 7)
!522 = !DILocalVariable(name: "__orig", scope: !523, file: !1, line: 154, type: !55)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 154, column: 11)
!524 = distinct !DILexicalBlock(scope: !520, file: !1, line: 154, column: 11)
!525 = !DILocalVariable(name: "stored", scope: !526, file: !1, line: 154, type: !55)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 154, column: 11)
!527 = !DILocation(line: 111, column: 44, scope: !502)
!528 = !DILocation(line: 112, column: 49, scope: !502)
!529 = !DILocation(line: 127, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !502, file: !1, line: 127, column: 7)
!531 = !{!532, !532, i64 0}
!532 = !{!"any pointer", !533, i64 0}
!533 = !{!"omnipotent char", !534, i64 0}
!534 = !{!"Simple C/C++ TBAA"}
!535 = !DILocation(line: 127, column: 14, scope: !530)
!536 = !DILocation(line: 127, column: 7, scope: !502)
!537 = !DILocation(line: 129, column: 21, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 129, column: 11)
!539 = distinct !DILexicalBlock(scope: !530, file: !1, line: 128, column: 5)
!540 = !DILocation(line: 114, column: 7, scope: !502)
!541 = !DILocation(line: 129, column: 56, scope: !538)
!542 = !DILocation(line: 129, column: 11, scope: !539)
!543 = !DILocation(line: 135, column: 8, scope: !502)
!544 = !DILocation(line: 115, column: 19, scope: !502)
!545 = !DILocation(line: 137, column: 11, scope: !521)
!546 = !{!547, !548, i64 16}
!547 = !{!"pthread_mutex_t_", !532, i64 0, !548, i64 8, !548, i64 12, !548, i64 16, !549, i64 24}
!548 = !{!"int", !533, i64 0}
!549 = !{!"", !532, i64 0, !548, i64 8}
!550 = !DILocation(line: 137, column: 16, scope: !521)
!551 = !DILocation(line: 137, column: 7, scope: !502)
!552 = !DILocation(line: 139, column: 11, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 139, column: 11)
!554 = distinct !DILexicalBlock(scope: !521, file: !1, line: 138, column: 5)
!555 = !DILocation(line: 139, column: 48, scope: !553)
!556 = !DILocation(line: 139, column: 11, scope: !554)
!557 = !DILocation(line: 141, column: 18, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !1, line: 140, column: 9)
!559 = !DILocation(line: 141, column: 56, scope: !558)
!560 = !DILocation(line: 141, column: 11, scope: !558)
!561 = !DILocation(line: 143, column: 59, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 143, column: 19)
!563 = distinct !DILexicalBlock(scope: !558, file: !1, line: 142, column: 13)
!564 = !{!547, !532, i64 0}
!565 = !DILocalVariable(name: "event", arg: 1, scope: !566, file: !1, line: 53, type: !38)
!566 = distinct !DISubprogram(name: "pte_timed_eventwait", scope: !1, file: !1, line: 53, type: !567, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!55, !38, !506}
!569 = !{!565, !570, !571, !572, !574}
!570 = !DILocalVariable(name: "abstime", arg: 2, scope: !566, file: !1, line: 53, type: !506)
!571 = !DILocalVariable(name: "milliseconds", scope: !566, file: !1, line: 77, type: !5)
!572 = !DILocalVariable(name: "status", scope: !566, file: !1, line: 78, type: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !23, line: 60, baseType: !22)
!574 = !DILocalVariable(name: "retval", scope: !566, file: !1, line: 79, type: !55)
!575 = !DILocation(line: 53, column: 44, scope: !566, inlinedAt: !576)
!576 = distinct !DILocation(line: 143, column: 34, scope: !562)
!577 = !DILocation(line: 53, column: 74, scope: !566, inlinedAt: !576)
!578 = !DILocation(line: 77, column: 3, scope: !566, inlinedAt: !576)
!579 = !DILocation(line: 81, column: 7, scope: !566, inlinedAt: !576)
!580 = !DILocation(line: 83, column: 16, scope: !581, inlinedAt: !576)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 82, column: 5)
!582 = distinct !DILexicalBlock(scope: !566, file: !1, line: 81, column: 7)
!583 = !DILocation(line: 78, column: 16, scope: !566, inlinedAt: !576)
!584 = !DILocation(line: 84, column: 5, scope: !581, inlinedAt: !576)
!585 = !DILocation(line: 90, column: 22, scope: !586, inlinedAt: !576)
!586 = distinct !DILexicalBlock(scope: !582, file: !1, line: 86, column: 5)
!587 = !DILocation(line: 77, column: 16, scope: !566, inlinedAt: !576)
!588 = !DILocation(line: 90, column: 20, scope: !586, inlinedAt: !576)
!589 = !{!548, !548, i64 0}
!590 = !DILocation(line: 92, column: 16, scope: !586, inlinedAt: !576)
!591 = !DILocation(line: 0, scope: !586, inlinedAt: !576)
!592 = !DILocation(line: 96, column: 14, scope: !593, inlinedAt: !576)
!593 = distinct !DILexicalBlock(scope: !566, file: !1, line: 96, column: 7)
!594 = !DILocation(line: 107, column: 1, scope: !566, inlinedAt: !576)
!595 = !DILocation(line: 143, column: 19, scope: !563)
!596 = distinct !{!596, !560, !597}
!597 = !DILocation(line: 147, column: 13, scope: !558)
!598 = !DILocation(line: 152, column: 24, scope: !520)
!599 = !DILocation(line: 152, column: 17, scope: !520)
!600 = !DILocation(line: 154, column: 11, scope: !523)
!601 = !{!547, !548, i64 8}
!602 = !DILocation(line: 154, column: 11, scope: !526)
!603 = !DILocation(line: 154, column: 58, scope: !524)
!604 = !DILocation(line: 154, column: 11, scope: !520)
!605 = !DILocation(line: 156, column: 15, scope: !606)
!606 = distinct !DILexicalBlock(scope: !524, file: !1, line: 155, column: 9)
!607 = !DILocation(line: 156, column: 31, scope: !606)
!608 = !{!547, !548, i64 12}
!609 = !DILocation(line: 157, column: 29, scope: !606)
!610 = !DILocation(line: 158, column: 9, scope: !606)
!611 = !DILocation(line: 161, column: 15, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 161, column: 15)
!613 = distinct !DILexicalBlock(scope: !524, file: !1, line: 160, column: 9)
!614 = !DILocation(line: 161, column: 15, scope: !613)
!615 = !DILocation(line: 174, column: 22, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !1, line: 173, column: 13)
!617 = !DILocation(line: 163, column: 23, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 163, column: 19)
!619 = distinct !DILexicalBlock(scope: !612, file: !1, line: 162, column: 13)
!620 = !DILocation(line: 163, column: 28, scope: !618)
!621 = !DILocation(line: 163, column: 19, scope: !619)
!622 = !DILocation(line: 165, column: 23, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !1, line: 164, column: 17)
!624 = !DILocation(line: 165, column: 38, scope: !623)
!625 = !DILocation(line: 171, column: 13, scope: !619)
!626 = !DILocation(line: 174, column: 60, scope: !616)
!627 = !DILocation(line: 174, column: 15, scope: !616)
!628 = !DILocation(line: 176, column: 63, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 176, column: 23)
!630 = distinct !DILexicalBlock(scope: !616, file: !1, line: 175, column: 17)
!631 = !DILocation(line: 53, column: 44, scope: !566, inlinedAt: !632)
!632 = distinct !DILocation(line: 176, column: 38, scope: !629)
!633 = !DILocation(line: 53, column: 74, scope: !566, inlinedAt: !632)
!634 = !DILocation(line: 77, column: 3, scope: !566, inlinedAt: !632)
!635 = !DILocation(line: 81, column: 7, scope: !566, inlinedAt: !632)
!636 = !DILocation(line: 83, column: 16, scope: !581, inlinedAt: !632)
!637 = !DILocation(line: 78, column: 16, scope: !566, inlinedAt: !632)
!638 = !DILocation(line: 84, column: 5, scope: !581, inlinedAt: !632)
!639 = !DILocation(line: 90, column: 22, scope: !586, inlinedAt: !632)
!640 = !DILocation(line: 77, column: 16, scope: !566, inlinedAt: !632)
!641 = !DILocation(line: 90, column: 20, scope: !586, inlinedAt: !632)
!642 = !DILocation(line: 92, column: 16, scope: !586, inlinedAt: !632)
!643 = !DILocation(line: 0, scope: !586, inlinedAt: !632)
!644 = !DILocation(line: 96, column: 14, scope: !593, inlinedAt: !632)
!645 = !DILocation(line: 107, column: 1, scope: !566, inlinedAt: !632)
!646 = !DILocation(line: 176, column: 23, scope: !630)
!647 = distinct !{!647, !627, !648}
!648 = !DILocation(line: 180, column: 17, scope: !616)
!649 = !DILocation(line: 182, column: 19, scope: !616)
!650 = !DILocation(line: 182, column: 35, scope: !616)
!651 = !DILocation(line: 183, column: 33, scope: !616)
!652 = !DILocation(line: 189, column: 1, scope: !502)
