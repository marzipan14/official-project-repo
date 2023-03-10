; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }
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
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.pthread_cond_t_ = type { i64, i64, i64, %struct.sem_t_*, %struct.sem_t_*, %struct.pthread_mutex_t_*, %struct.pthread_cond_t_*, %struct.pthread_cond_t_* }
%struct.sem_t_ = type { i32, %struct.pthread_mutex_t_*, %struct.uk_semaphore* }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.pte_handle_t = type { i8*, i32 }
%struct.pthread_condattr_t_ = type { i32, i32 }
%struct.pthread_mutexattr_t_ = type { i32, i32 }

@pte_cond_list_lock = external dso_local local_unnamed_addr global %struct.uk_mutex*, align 8
@pte_cond_list_tail = external dso_local local_unnamed_addr global %struct.pthread_cond_t_*, align 8
@pte_cond_list_head = external dso_local local_unnamed_addr global %struct.pthread_cond_t_*, align 8

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_cond_init(%struct.pthread_cond_t_**, %struct.pthread_condattr_t_** readonly) local_unnamed_addr #0 !dbg !518 {
  %3 = icmp eq %struct.pthread_cond_t_** %0, null, !dbg !540
  br i1 %3, label %71, label %4, !dbg !542

; <label>:4:                                      ; preds = %2
  %5 = icmp eq %struct.pthread_condattr_t_** %1, null, !dbg !543
  br i1 %5, label %13, label %6, !dbg !545

; <label>:6:                                      ; preds = %4
  %7 = load %struct.pthread_condattr_t_*, %struct.pthread_condattr_t_** %1, align 8, !dbg !546, !tbaa !547
  %8 = icmp eq %struct.pthread_condattr_t_* %7, null, !dbg !551
  br i1 %8, label %13, label %9, !dbg !552

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.pthread_condattr_t_, %struct.pthread_condattr_t_* %7, i64 0, i32 1, !dbg !553
  %11 = load i32, i32* %10, align 4, !dbg !553, !tbaa !554
  %12 = icmp eq i32 %11, 1, !dbg !557
  br i1 %12, label %68, label %13, !dbg !558

; <label>:13:                                     ; preds = %6, %4, %9
  %14 = tail call i8* @calloc(i64 1, i64 64) #3, !dbg !559
  %15 = bitcast i8* %14 to %struct.pthread_cond_t_*, !dbg !560
  %16 = icmp eq i8* %14, null, !dbg !561
  br i1 %16, label %68, label %17, !dbg !563

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !564
  %19 = bitcast i8* %18 to i64*, !dbg !564
  store i64 0, i64* %19, align 8, !dbg !565, !tbaa !566
  %20 = bitcast i8* %14 to <2 x i64>*, !dbg !569
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 8, !dbg !569, !tbaa !570
  %21 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !571
  %22 = bitcast i8* %21 to %struct.sem_t_**, !dbg !571
  %23 = tail call i32 @sem_init(%struct.sem_t_** nonnull %22, i32 0, i32 1) #3, !dbg !573
  %24 = icmp eq i32 %23, 0, !dbg !574
  br i1 %24, label %28, label %25, !dbg !575

; <label>:25:                                     ; preds = %17
  %26 = tail call i32* @__errno() #3, !dbg !576
  %27 = load i32, i32* %26, align 4, !dbg !576, !tbaa !578
  br label %46, !dbg !580

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !581
  %30 = bitcast i8* %29 to %struct.sem_t_**, !dbg !581
  %31 = tail call i32 @sem_init(%struct.sem_t_** nonnull %30, i32 0, i32 0) #3, !dbg !583
  %32 = icmp eq i32 %31, 0, !dbg !584
  br i1 %32, label %36, label %33, !dbg !585

; <label>:33:                                     ; preds = %28
  %34 = tail call i32* @__errno() #3, !dbg !586
  %35 = load i32, i32* %34, align 4, !dbg !586, !tbaa !578
  br label %43, !dbg !588

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !589
  %38 = bitcast i8* %37 to %struct.pthread_mutex_t_**, !dbg !589
  %39 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull %38, %struct.pthread_mutexattr_t_** null) #3, !dbg !591
  %40 = icmp eq i32 %39, 0, !dbg !592
  br i1 %40, label %49, label %41, !dbg !593

; <label>:41:                                     ; preds = %36
  %42 = tail call i32 @sem_destroy(%struct.sem_t_** nonnull %30) #3, !dbg !594
  br label %43, !dbg !595

; <label>:43:                                     ; preds = %41, %33
  %44 = phi i32 [ %35, %33 ], [ %39, %41 ], !dbg !596
  %45 = tail call i32 @sem_destroy(%struct.sem_t_** nonnull %22) #3, !dbg !597
  br label %46, !dbg !598

; <label>:46:                                     ; preds = %25, %43
  %47 = phi i32 [ %27, %25 ], [ %44, %43 ], !dbg !599
  tail call void @free(i8* nonnull %14) #3, !dbg !600
  %48 = icmp eq i32 %47, 0, !dbg !601
  br i1 %48, label %49, label %68, !dbg !603

; <label>:49:                                     ; preds = %36, %46
  %50 = phi %struct.pthread_cond_t_* [ null, %46 ], [ %15, %36 ]
  %51 = load %struct.uk_mutex*, %struct.uk_mutex** @pte_cond_list_lock, align 8, !dbg !604, !tbaa !547
  %52 = tail call i32 @pte_osMutexLock(%struct.uk_mutex* %51) #3, !dbg !606
  %53 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %50, i64 0, i32 6, !dbg !607
  store %struct.pthread_cond_t_* null, %struct.pthread_cond_t_** %53, align 8, !dbg !608, !tbaa !609
  %54 = load i64, i64* bitcast (%struct.pthread_cond_t_** @pte_cond_list_tail to i64*), align 8, !dbg !610, !tbaa !547
  %55 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %50, i64 0, i32 7, !dbg !611
  %56 = bitcast %struct.pthread_cond_t_** %55 to i64*, !dbg !612
  store i64 %54, i64* %56, align 8, !dbg !612, !tbaa !613
  %57 = icmp eq i64 %54, 0, !dbg !614
  br i1 %57, label %61, label %58, !dbg !616

; <label>:58:                                     ; preds = %49
  %59 = inttoptr i64 %54 to %struct.pthread_cond_t_*, !dbg !617
  %60 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %59, i64 0, i32 6, !dbg !618
  store %struct.pthread_cond_t_* %50, %struct.pthread_cond_t_** %60, align 8, !dbg !620, !tbaa !609
  br label %61, !dbg !621

; <label>:61:                                     ; preds = %49, %58
  store %struct.pthread_cond_t_* %50, %struct.pthread_cond_t_** @pte_cond_list_tail, align 8, !dbg !622, !tbaa !547
  %62 = load %struct.pthread_cond_t_*, %struct.pthread_cond_t_** @pte_cond_list_head, align 8, !dbg !623, !tbaa !547
  %63 = icmp eq %struct.pthread_cond_t_* %62, null, !dbg !625
  br i1 %63, label %64, label %65, !dbg !626

; <label>:64:                                     ; preds = %61
  store %struct.pthread_cond_t_* %50, %struct.pthread_cond_t_** @pte_cond_list_head, align 8, !dbg !627, !tbaa !547
  br label %65, !dbg !629

; <label>:65:                                     ; preds = %64, %61
  %66 = load %struct.uk_mutex*, %struct.uk_mutex** @pte_cond_list_lock, align 8, !dbg !630, !tbaa !547
  %67 = tail call i32 @pte_osMutexUnlock(%struct.uk_mutex* %66) #3, !dbg !631
  br label %68, !dbg !632

; <label>:68:                                     ; preds = %13, %9, %65, %46
  %69 = phi %struct.pthread_cond_t_* [ %50, %65 ], [ null, %46 ], [ %15, %13 ], [ null, %9 ]
  %70 = phi i32 [ 0, %65 ], [ %47, %46 ], [ 12, %13 ], [ 88, %9 ]
  store %struct.pthread_cond_t_* %69, %struct.pthread_cond_t_** %0, align 8, !dbg !633, !tbaa !547
  br label %71, !dbg !634

; <label>:71:                                     ; preds = %2, %68
  %72 = phi i32 [ %70, %68 ], [ 22, %2 ], !dbg !635
  ret i32 %72, !dbg !636
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sem_init(%struct.sem_t_**, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t_**, %struct.pthread_mutexattr_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sem_destroy(%struct.sem_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!514, !515, !516}
!llvm.ident = !{!517}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_init.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 435, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!14 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!15 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!16 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!21 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!22 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!23 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!24 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!25 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!26 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!27 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !11, line: 419, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t_", file: !33, line: 233, size: 512, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !37, !38, !39, !510, !511, !512, !513}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersBlocked", scope: !32, file: !33, line: 235, baseType: !36, size: 64)
!36 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersGone", scope: !32, file: !33, line: 236, baseType: !36, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersToUnblock", scope: !32, file: !33, line: 237, baseType: !36, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockQueue", scope: !32, file: !33, line: 238, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !41, line: 78, baseType: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !33, line: 136, size: 192, elements: !44)
!44 = !{!45, !46, !509}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !33, line: 138, baseType: !12, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !43, file: !33, line: 139, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 417, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !33, line: 146, size: 320, elements: !50)
!50 = !{!51, !499, !500, !501, !502}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !49, file: !33, line: 148, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !53, line: 12, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !56, line: 51, size: 192, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !55, file: !56, line: 52, baseType: !36, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !55, file: !56, line: 53, baseType: !60, size: 128, offset: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !61, line: 42, size: 128, elements: !62)
!61 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !{!63, !497}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !60, file: !61, line: 42, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !61, line: 35, size: 192, elements: !66)
!66 = !{!67, !68, !493}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !65, file: !61, line: 36, baseType: !12, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !65, file: !61, line: 37, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !71, line: 59, size: 1024, elements: !72)
!71 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !{!73, !77, !78, !79, !80, !86, !91, !96, !98, !99, !248, !249, !250, !463}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 60, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !70, file: !71, line: 61, baseType: !29, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !70, file: !71, line: 62, baseType: !29, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !70, file: !71, line: 63, baseType: !29, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !70, file: !71, line: 64, baseType: !81, size: 128, offset: 256)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !71, line: 64, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !81, file: !71, line: 64, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !81, file: !71, line: 64, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !71, line: 65, baseType: !87, size: 32, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 48, baseType: !89)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !90, line: 79, baseType: !5)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !70, file: !71, line: 66, baseType: !92, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !93, line: 49, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 128, baseType: !36)
!95 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !70, file: !71, line: 67, baseType: !97, size: 8, offset: 512)
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !70, file: !71, line: 68, baseType: !60, size: 128, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !70, file: !71, line: 69, baseType: !100, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !102, line: 90, size: 2176, elements: !103)
!102 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !{!104, !109, !127, !132, !134, !136, !141, !149, !154, !160, !161, !162, !167, !245, !246, !247}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !101, file: !102, line: 91, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !102, line: 68, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !100}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !101, file: !102, line: 93, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !102, line: 71, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!12, !100, !69, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !117, line: 62, baseType: !118)
!117 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !117, line: 55, size: 128, elements: !119)
!119 = !{!120, !121, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !118, file: !117, line: 57, baseType: !97, size: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !118, file: !117, line: 59, baseType: !122, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !117, line: 53, baseType: !12)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !118, file: !117, line: 61, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !93, line: 48, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !95, line: 129, baseType: !126)
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !101, file: !102, line: 94, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !102, line: 74, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !100, !69}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !101, file: !102, line: 95, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !102, line: 76, baseType: !129)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !101, file: !102, line: 96, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !102, line: 78, baseType: !129)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !101, file: !102, line: 98, baseType: !137, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !102, line: 81, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!12, !100, !69, !122}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !101, file: !102, line: 99, baseType: !142, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !102, line: 83, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!12, !100, !146, !148}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !101, file: !102, line: 100, baseType: !150, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !102, line: 85, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!12, !100, !69, !12}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !101, file: !102, line: 101, baseType: !155, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !102, line: 87, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!12, !100, !146, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !101, file: !102, line: 104, baseType: !97, size: 8, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !101, file: !102, line: 105, baseType: !70, size: 1024, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !101, file: !102, line: 106, baseType: !163, size: 128, offset: 1664)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !71, line: 93, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !163, file: !71, line: 93, baseType: !69, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !163, file: !71, line: 93, baseType: !85, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !101, file: !102, line: 107, baseType: !168, size: 192, offset: 1792)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !169, line: 59, size: 192, elements: !170)
!169 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!170 = !{!171, !236, !240}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !168, file: !169, line: 61, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !169, line: 51, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!29, !176, !126, !126}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !178, line: 77, size: 832, elements: !179)
!178 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!179 = !{!180, !187, !192, !197, !203, !205, !210, !211, !212, !217, !222, !227, !228, !229}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !177, file: !178, line: 79, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !178, line: 54, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!29, !176, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 58, baseType: !126)
!186 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !177, file: !178, line: 80, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !178, line: 56, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!29, !176, !185, !185}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !177, file: !178, line: 81, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !178, line: 62, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!29, !176, !29, !185}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !177, file: !178, line: 82, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !178, line: 58, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!12, !176, !202, !185, !185}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !177, file: !178, line: 83, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !178, line: 60, baseType: !189)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !177, file: !178, line: 84, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !178, line: 64, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !176, !29}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !177, file: !178, line: 87, baseType: !206, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !177, file: !178, line: 88, baseType: !181, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !177, file: !178, line: 92, baseType: !213, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !178, line: 66, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!29, !176, !126}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !177, file: !178, line: 93, baseType: !218, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !178, line: 68, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !176, !29, !126}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !177, file: !178, line: 99, baseType: !223, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !178, line: 70, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!12, !176, !29, !185}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !177, file: !178, line: 100, baseType: !185, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !178, line: 103, baseType: !176, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !177, file: !178, line: 104, baseType: !230, offset: 832)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !234)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 20, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !90, line: 41, baseType: !233)
!233 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!234 = !{!235}
!235 = !DISubrange(count: -1)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !168, file: !169, line: 63, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !29}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !168, file: !169, line: 65, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !169, line: 56, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !29, !29}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !101, file: !102, line: 108, baseType: !176, size: 64, offset: 1984)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !101, file: !102, line: 109, baseType: !100, size: 64, offset: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !101, file: !102, line: 110, baseType: !29, size: 64, offset: 2112)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !70, file: !71, line: 70, baseType: !29, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !70, file: !71, line: 72, baseType: !12, size: 32, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !70, file: !71, line: 82, baseType: !251, size: 64, offset: 896)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !253, line: 569, size: 14912, elements: !254)
!253 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!254 = !{!255, !256, !331, !332, !333, !334, !338, !339, !342, !343, !347, !359, !360, !361, !363, !364, !365, !427, !448, !449, !454, !461}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !252, file: !253, line: 571, baseType: !12, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !252, file: !253, line: 576, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !253, line: 287, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !253, line: 181, size: 1408, elements: !260)
!260 = !{!261, !264, !265, !266, !268, !269, !274, !275, !276, !283, !287, !292, !296, !297, !298, !299, !303, !307, !308, !309, !311, !312, !316, !330}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !259, file: !253, line: 182, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !259, file: !253, line: 183, baseType: !12, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !259, file: !253, line: 184, baseType: !12, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !259, file: !253, line: 185, baseType: !267, size: 16, offset: 128)
!267 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !259, file: !253, line: 186, baseType: !267, size: 16, offset: 144)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !259, file: !253, line: 187, baseType: !270, size: 128, offset: 192)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !253, line: 117, size: 128, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !270, file: !253, line: 118, baseType: !262, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !270, file: !253, line: 119, baseType: !12, size: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !259, file: !253, line: 188, baseType: !12, size: 32, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !259, file: !253, line: 195, baseType: !29, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !259, file: !253, line: 197, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !251, !29, !282, !12}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !281, line: 145, baseType: !36)
!281 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !259, file: !253, line: 199, baseType: !284, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!280, !251, !29, !74, !12}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !259, file: !253, line: 202, baseType: !288, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !251, !29, !291, !12}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !281, line: 114, baseType: !36)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !259, file: !253, line: 203, baseType: !293, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!12, !251, !29}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !259, file: !253, line: 206, baseType: !270, size: 128, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !259, file: !253, line: 207, baseType: !262, size: 64, offset: 832)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !259, file: !253, line: 208, baseType: !12, size: 32, offset: 896)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !259, file: !253, line: 211, baseType: !300, size: 24, offset: 928)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 24, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 3)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !259, file: !253, line: 212, baseType: !304, size: 8, offset: 952)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 8, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 1)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !259, file: !253, line: 215, baseType: !270, size: 128, offset: 960)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !259, file: !253, line: 218, baseType: !12, size: 32, offset: 1088)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !259, file: !253, line: 219, baseType: !310, size: 64, offset: 1152)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !281, line: 44, baseType: !36)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !259, file: !253, line: 222, baseType: !251, size: 64, offset: 1216)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !259, file: !253, line: 226, baseType: !313, size: 32, offset: 1280)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !281, line: 175, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !315, line: 12, baseType: !12)
!315 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !259, file: !253, line: 228, baseType: !317, size: 64, offset: 1312)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !281, line: 171, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 163, size: 64, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !318, file: !281, line: 165, baseType: !12, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !318, file: !281, line: 170, baseType: !322, size: 32, offset: 32)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !281, line: 166, size: 32, elements: !323)
!323 = !{!324, !326}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !322, file: !281, line: 168, baseType: !325, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !186, line: 124, baseType: !5)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !322, file: !281, line: 169, baseType: !327, size: 32)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 32, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 4)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !259, file: !253, line: 229, baseType: !12, size: 32, offset: 1376)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !252, file: !253, line: 576, baseType: !257, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !252, file: !253, line: 576, baseType: !257, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !252, file: !253, line: 578, baseType: !12, size: 32, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !252, file: !253, line: 579, baseType: !335, size: 200, offset: 288)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 200, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 25)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !252, file: !253, line: 582, baseType: !12, size: 32, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !252, file: !253, line: 583, baseType: !340, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !253, line: 40, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !252, file: !253, line: 585, baseType: !12, size: 32, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !252, file: !253, line: 587, baseType: !344, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !251}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !252, file: !253, line: 590, baseType: !348, size: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !253, line: 47, size: 256, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !349, file: !253, line: 49, baseType: !348, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !349, file: !253, line: 50, baseType: !12, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !349, file: !253, line: 50, baseType: !12, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !349, file: !253, line: 50, baseType: !12, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !349, file: !253, line: 50, baseType: !12, size: 32, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !349, file: !253, line: 51, baseType: !357, size: 32, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 32, elements: !305)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !253, line: 25, baseType: !5)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !252, file: !253, line: 591, baseType: !12, size: 32, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !252, file: !253, line: 592, baseType: !348, size: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !252, file: !253, line: 593, baseType: !362, size: 64, offset: 960)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !252, file: !253, line: 596, baseType: !12, size: 32, offset: 1024)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !252, file: !253, line: 597, baseType: !282, size: 64, offset: 1088)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !252, file: !253, line: 632, baseType: !366, size: 2880, offset: 1152)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !253, line: 599, size: 2880, elements: !367)
!367 = !{!368, !418}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !366, file: !253, line: 622, baseType: !369, size: 1728)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !253, line: 601, size: 1728, elements: !370)
!370 = !{!371, !372, !373, !377, !389, !390, !392, !400, !401, !402, !403, !407, !411, !412, !413, !414, !415, !416, !417}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !369, file: !253, line: 603, baseType: !5, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !369, file: !253, line: 604, baseType: !282, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !369, file: !253, line: 605, baseType: !374, size: 208, offset: 128)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 208, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 26)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !369, file: !253, line: 606, baseType: !378, size: 288, offset: 352)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !253, line: 55, size: 288, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !378, file: !253, line: 57, baseType: !12, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !378, file: !253, line: 58, baseType: !12, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !378, file: !253, line: 59, baseType: !12, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !378, file: !253, line: 60, baseType: !12, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !378, file: !253, line: 61, baseType: !12, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !378, file: !253, line: 62, baseType: !12, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !378, file: !253, line: 63, baseType: !12, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !378, file: !253, line: 64, baseType: !12, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !378, file: !253, line: 65, baseType: !12, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !369, file: !253, line: 607, baseType: !12, size: 32, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !369, file: !253, line: 608, baseType: !391, size: 64, offset: 704)
!391 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !369, file: !253, line: 609, baseType: !393, size: 112, offset: 768)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !253, line: 319, size: 112, elements: !394)
!394 = !{!395, !398, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !393, file: !253, line: 320, baseType: !396, size: 48)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 48, elements: !301)
!397 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !393, file: !253, line: 321, baseType: !396, size: 48, offset: 48)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !393, file: !253, line: 322, baseType: !397, size: 16, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !369, file: !253, line: 610, baseType: !317, size: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !369, file: !253, line: 611, baseType: !317, size: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !369, file: !253, line: 612, baseType: !317, size: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !369, file: !253, line: 613, baseType: !404, size: 64, offset: 1088)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !369, file: !253, line: 614, baseType: !408, size: 192, offset: 1152)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 192, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 24)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !369, file: !253, line: 615, baseType: !12, size: 32, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !369, file: !253, line: 616, baseType: !317, size: 64, offset: 1376)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !369, file: !253, line: 617, baseType: !317, size: 64, offset: 1440)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !369, file: !253, line: 618, baseType: !317, size: 64, offset: 1504)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !369, file: !253, line: 619, baseType: !317, size: 64, offset: 1568)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !369, file: !253, line: 620, baseType: !317, size: 64, offset: 1632)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !369, file: !253, line: 621, baseType: !12, size: 32, offset: 1696)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !366, file: !253, line: 631, baseType: !419, size: 2880)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !253, line: 626, size: 2880, elements: !420)
!420 = !{!421, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !419, file: !253, line: 629, baseType: !422, size: 1920)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 1920, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 30)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !419, file: !253, line: 630, baseType: !426, size: 960, offset: 1920)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !423)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !252, file: !253, line: 636, baseType: !428, size: 64, offset: 4032)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !253, line: 93, size: 6336, elements: !430)
!430 = !{!431, !432, !433, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !429, file: !253, line: 94, baseType: !428, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !429, file: !253, line: 95, baseType: !12, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !429, file: !253, line: 97, baseType: !434, size: 2048, offset: 128)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !438)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null}
!438 = !{!439}
!439 = !DISubrange(count: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !429, file: !253, line: 98, baseType: !441, size: 4160, offset: 2176)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !253, line: 74, size: 4160, elements: !442)
!442 = !{!443, !445, !446, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !441, file: !253, line: 75, baseType: !444, size: 2048)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !438)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !441, file: !253, line: 76, baseType: !444, size: 2048, offset: 2048)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !441, file: !253, line: 78, baseType: !358, size: 32, offset: 4096)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !441, file: !253, line: 81, baseType: !358, size: 32, offset: 4128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !252, file: !253, line: 637, baseType: !429, size: 6336, offset: 4096)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !252, file: !253, line: 641, baseType: !450, size: 64, offset: 10432)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !12}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !252, file: !253, line: 646, baseType: !455, size: 192, offset: 10496)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !253, line: 291, size: 192, elements: !456)
!456 = !{!457, !459, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !455, file: !253, line: 293, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !455, file: !253, line: 294, baseType: !12, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !455, file: !253, line: 295, baseType: !257, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !252, file: !253, line: 648, baseType: !462, size: 4224, offset: 10688)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 4224, elements: !301)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !70, file: !71, line: 85, baseType: !464, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !466)
!466 = !{!467, !471, !472, !479, !492}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !465, file: !4, line: 116, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !469, line: 64, baseType: !470)
!469 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !469, line: 63, baseType: !126)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !465, file: !4, line: 118, baseType: !468, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !465, file: !4, line: 120, baseType: !473, size: 128, offset: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !474, line: 51, size: 128, elements: !475)
!474 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!475 = !{!476, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !474, line: 52, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !473, file: !474, line: 53, baseType: !477, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !465, file: !4, line: 122, baseType: !480, size: 256, offset: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !481)
!481 = !{!482, !483, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !480, file: !4, line: 107, baseType: !3, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !480, file: !4, line: 109, baseType: !468, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !480, file: !4, line: 111, baseType: !485, size: 96, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !469, line: 72, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 68, size: 96, elements: !487)
!487 = !{!488, !489, !490}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !486, file: !469, line: 69, baseType: !12, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !486, file: !469, line: 70, baseType: !12, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !486, file: !469, line: 71, baseType: !491, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !469, line: 61, baseType: !12)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !465, file: !4, line: 124, baseType: !473, size: 128, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !65, file: !61, line: 38, baseType: !494, size: 64, offset: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !65, file: !61, line: 38, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !494, file: !61, line: 38, baseType: !64, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !60, file: !61, line: 42, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !49, file: !33, line: 149, baseType: !12, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !49, file: !33, line: 156, baseType: !12, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !49, file: !33, line: 159, baseType: !12, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !49, file: !33, line: 160, baseType: !503, size: 128, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 413, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !11, line: 411, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 395, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !505, file: !11, line: 398, baseType: !29, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !505, file: !11, line: 399, baseType: !5, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !43, file: !33, line: 140, baseType: !52, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockLock", scope: !32, file: !33, line: 240, baseType: !40, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mtxUnblockLock", scope: !32, file: !33, line: 243, baseType: !47, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !33, line: 246, baseType: !30, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !32, file: !33, line: 247, baseType: !30, size: 64, offset: 448)
!514 = !{i32 2, !"Dwarf Version", i32 4}
!515 = !{i32 2, !"Debug Info Version", i32 3}
!516 = !{i32 1, !"wchar_size", i32 4}
!517 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!518 = distinct !DISubprogram(name: "pthread_cond_init", scope: !1, file: !1, line: 51, type: !519, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !532)
!519 = !DISubroutineType(types: !520)
!520 = !{!12, !521, !522}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !11, line: 420, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_condattr_t_", file: !33, line: 251, size: 64, elements: !527)
!527 = !{!528, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !526, file: !33, line: 253, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !530, line: 65, baseType: !12)
!530 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !526, file: !33, line: 254, baseType: !12, size: 32, offset: 32)
!532 = !{!533, !534, !535, !536}
!533 = !DILocalVariable(name: "cond", arg: 1, scope: !518, file: !1, line: 51, type: !521)
!534 = !DILocalVariable(name: "attr", arg: 2, scope: !518, file: !1, line: 51, type: !522)
!535 = !DILocalVariable(name: "result", scope: !518, file: !1, line: 79, type: !12)
!536 = !DILocalVariable(name: "cv", scope: !518, file: !1, line: 80, type: !30)
!537 = !DILocation(line: 51, column: 37, scope: !518)
!538 = !DILocation(line: 51, column: 70, scope: !518)
!539 = !DILocation(line: 80, column: 18, scope: !518)
!540 = !DILocation(line: 82, column: 12, scope: !541)
!541 = distinct !DILexicalBlock(scope: !518, file: !1, line: 82, column: 7)
!542 = !DILocation(line: 82, column: 7, scope: !518)
!543 = !DILocation(line: 87, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !518, file: !1, line: 87, column: 7)
!545 = !DILocation(line: 87, column: 21, scope: !544)
!546 = !DILocation(line: 87, column: 24, scope: !544)
!547 = !{!548, !548, i64 0}
!548 = !{!"any pointer", !549, i64 0}
!549 = !{!"omnipotent char", !550, i64 0}
!550 = !{!"Simple C/C++ TBAA"}
!551 = !DILocation(line: 87, column: 30, scope: !544)
!552 = !DILocation(line: 87, column: 39, scope: !544)
!553 = !DILocation(line: 88, column: 17, scope: !544)
!554 = !{!555, !556, i64 4}
!555 = !{!"pthread_condattr_t_", !556, i64 0, !556, i64 4}
!556 = !{!"int", !549, i64 0}
!557 = !DILocation(line: 88, column: 25, scope: !544)
!558 = !DILocation(line: 87, column: 7, scope: !518)
!559 = !DILocation(line: 98, column: 25, scope: !518)
!560 = !DILocation(line: 98, column: 8, scope: !518)
!561 = !DILocation(line: 100, column: 10, scope: !562)
!562 = distinct !DILexicalBlock(scope: !518, file: !1, line: 100, column: 7)
!563 = !DILocation(line: 100, column: 7, scope: !518)
!564 = !DILocation(line: 107, column: 7, scope: !518)
!565 = !DILocation(line: 107, column: 25, scope: !518)
!566 = !{!567, !568, i64 16}
!567 = !{!"pthread_cond_t_", !568, i64 0, !568, i64 8, !568, i64 16, !548, i64 24, !548, i64 32, !548, i64 40, !548, i64 48, !548, i64 56}
!568 = !{!"long", !549, i64 0}
!569 = !DILocation(line: 106, column: 23, scope: !518)
!570 = !{!568, !568, i64 0}
!571 = !DILocation(line: 110, column: 23, scope: !572)
!572 = distinct !DILexicalBlock(scope: !518, file: !1, line: 110, column: 7)
!573 = !DILocation(line: 110, column: 7, scope: !572)
!574 = !DILocation(line: 110, column: 44, scope: !572)
!575 = !DILocation(line: 110, column: 7, scope: !518)
!576 = !DILocation(line: 112, column: 16, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !1, line: 111, column: 5)
!578 = !{!556, !556, i64 0}
!579 = !DILocation(line: 79, column: 7, scope: !518)
!580 = !DILocation(line: 113, column: 7, scope: !577)
!581 = !DILocation(line: 116, column: 23, scope: !582)
!582 = distinct !DILexicalBlock(scope: !518, file: !1, line: 116, column: 7)
!583 = !DILocation(line: 116, column: 7, scope: !582)
!584 = !DILocation(line: 116, column: 45, scope: !582)
!585 = !DILocation(line: 116, column: 7, scope: !518)
!586 = !DILocation(line: 118, column: 16, scope: !587)
!587 = distinct !DILexicalBlock(scope: !582, file: !1, line: 117, column: 5)
!588 = !DILocation(line: 119, column: 7, scope: !587)
!589 = !DILocation(line: 122, column: 43, scope: !590)
!590 = distinct !DILexicalBlock(scope: !518, file: !1, line: 122, column: 7)
!591 = !DILocation(line: 122, column: 17, scope: !590)
!592 = !DILocation(line: 122, column: 64, scope: !590)
!593 = !DILocation(line: 122, column: 7, scope: !518)
!594 = !DILocation(line: 137, column: 10, scope: !518)
!595 = !DILocation(line: 137, column: 3, scope: !518)
!596 = !DILocation(line: 0, scope: !590)
!597 = !DILocation(line: 140, column: 10, scope: !518)
!598 = !DILocation(line: 140, column: 3, scope: !518)
!599 = !DILocation(line: 0, scope: !587)
!600 = !DILocation(line: 143, column: 10, scope: !518)
!601 = !DILocation(line: 147, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !518, file: !1, line: 147, column: 7)
!603 = !DILocation(line: 147, column: 7, scope: !518)
!604 = !DILocation(line: 150, column: 24, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !1, line: 148, column: 5)
!606 = !DILocation(line: 150, column: 7, scope: !605)
!607 = !DILocation(line: 152, column: 11, scope: !605)
!608 = !DILocation(line: 152, column: 16, scope: !605)
!609 = !{!567, !548, i64 48}
!610 = !DILocation(line: 153, column: 18, scope: !605)
!611 = !DILocation(line: 153, column: 11, scope: !605)
!612 = !DILocation(line: 153, column: 16, scope: !605)
!613 = !{!567, !548, i64 56}
!614 = !DILocation(line: 155, column: 30, scope: !615)
!615 = distinct !DILexicalBlock(scope: !605, file: !1, line: 155, column: 11)
!616 = !DILocation(line: 155, column: 11, scope: !605)
!617 = !DILocation(line: 155, column: 11, scope: !615)
!618 = !DILocation(line: 157, column: 31, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !1, line: 156, column: 9)
!620 = !DILocation(line: 157, column: 36, scope: !619)
!621 = !DILocation(line: 158, column: 9, scope: !619)
!622 = !DILocation(line: 160, column: 26, scope: !605)
!623 = !DILocation(line: 162, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !605, file: !1, line: 162, column: 11)
!625 = !DILocation(line: 162, column: 30, scope: !624)
!626 = !DILocation(line: 162, column: 11, scope: !605)
!627 = !DILocation(line: 164, column: 30, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !1, line: 163, column: 9)
!629 = !DILocation(line: 165, column: 9, scope: !628)
!630 = !DILocation(line: 167, column: 25, scope: !605)
!631 = !DILocation(line: 167, column: 7, scope: !605)
!632 = !DILocation(line: 168, column: 5, scope: !605)
!633 = !DILocation(line: 170, column: 9, scope: !518)
!634 = !DILocation(line: 172, column: 3, scope: !518)
!635 = !DILocation(line: 0, scope: !518)
!636 = !DILocation(line: 174, column: 1, scope: !518)
