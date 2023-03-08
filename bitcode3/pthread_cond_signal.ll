; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_signal.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_signal.c"
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

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_cond_signal(%struct.pthread_cond_t_** readonly) local_unnamed_addr #0 !dbg !506 {
  %2 = tail call fastcc i32 @pte_cond_unblock(%struct.pthread_cond_t_** %0, i32 0) #3, !dbg !513
  ret i32 %2, !dbg !514
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @pte_cond_unblock(%struct.pthread_cond_t_** readonly, i32) unnamed_addr #0 !dbg !515 {
  %3 = icmp eq %struct.pthread_cond_t_** %0, null, !dbg !526
  br i1 %3, label %72, label %4, !dbg !528

; <label>:4:                                      ; preds = %2
  %5 = load %struct.pthread_cond_t_*, %struct.pthread_cond_t_** %0, align 8, !dbg !529, !tbaa !530
  %6 = ptrtoint %struct.pthread_cond_t_* %5 to i64, !dbg !534
  switch i64 %6, label %8 [
    i64 0, label %72
    i64 -1, label %7
  ], !dbg !534

; <label>:7:                                      ; preds = %4
  br label %72, !dbg !535

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %5, i64 0, i32 5, !dbg !538
  %10 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %9) #4, !dbg !540
  %11 = icmp eq i32 %10, 0, !dbg !542
  br i1 %11, label %12, label %72, !dbg !543

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %5, i64 0, i32 2, !dbg !544
  %14 = load i64, i64* %13, align 8, !dbg !544, !tbaa !546
  %15 = icmp eq i64 %14, 0, !dbg !549
  %16 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %5, i64 0, i32 0, !dbg !550
  %17 = load i64, i64* %16, align 8, !dbg !550, !tbaa !552
  br i1 %15, label %32, label %18, !dbg !553

; <label>:18:                                     ; preds = %12
  %19 = icmp eq i64 %17, 0, !dbg !554
  br i1 %19, label %20, label %22, !dbg !557

; <label>:20:                                     ; preds = %18
  %21 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %9) #4, !dbg !558
  br label %72, !dbg !560

; <label>:22:                                     ; preds = %18
  %23 = icmp eq i32 %1, 0, !dbg !561
  br i1 %23, label %29, label %24, !dbg !563

; <label>:24:                                     ; preds = %22
  %25 = trunc i64 %17 to i32, !dbg !564
  %26 = shl i64 %17, 32, !dbg !567
  %27 = ashr exact i64 %26, 32, !dbg !567
  %28 = add nsw i64 %27, %14, !dbg !568
  store i64 %28, i64* %13, align 8, !dbg !568, !tbaa !546
  br label %60, !dbg !569

; <label>:29:                                     ; preds = %22
  %30 = add nsw i64 %14, 1, !dbg !570
  store i64 %30, i64* %13, align 8, !dbg !570, !tbaa !546
  %31 = add nsw i64 %17, -1, !dbg !572
  br label %60

; <label>:32:                                     ; preds = %12
  %33 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %5, i64 0, i32 1, !dbg !573
  %34 = load i64, i64* %33, align 8, !dbg !573, !tbaa !574
  %35 = icmp sgt i64 %17, %34, !dbg !575
  br i1 %35, label %36, label %58, !dbg !576

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %5, i64 0, i32 4, !dbg !577
  %38 = tail call i32 @sem_wait(%struct.sem_t_** nonnull %37) #4, !dbg !580
  %39 = icmp eq i32 %38, 0, !dbg !581
  br i1 %39, label %44, label %40, !dbg !582

; <label>:40:                                     ; preds = %36
  %41 = tail call i32* @__errno() #4, !dbg !583
  %42 = load i32, i32* %41, align 4, !dbg !583, !tbaa !585
  %43 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %9) #4, !dbg !587
  br label %72, !dbg !588

; <label>:44:                                     ; preds = %36
  %45 = load i64, i64* %33, align 8, !dbg !589, !tbaa !574
  %46 = icmp eq i64 %45, 0, !dbg !591
  br i1 %46, label %50, label %47, !dbg !592

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %16, align 8, !dbg !593, !tbaa !552
  %49 = sub nsw i64 %48, %45, !dbg !593
  store i64 %49, i64* %16, align 8, !dbg !593, !tbaa !552
  store i64 0, i64* %33, align 8, !dbg !595, !tbaa !574
  br label %50, !dbg !596

; <label>:50:                                     ; preds = %44, %47
  %51 = icmp eq i32 %1, 0, !dbg !597
  br i1 %51, label %55, label %52, !dbg !599

; <label>:52:                                     ; preds = %50
  %53 = load i64, i64* %16, align 8, !dbg !600, !tbaa !552
  store i64 %53, i64* %13, align 8, !dbg !602, !tbaa !546
  %54 = trunc i64 %53 to i32, !dbg !603
  br label %60, !dbg !604

; <label>:55:                                     ; preds = %50
  store i64 1, i64* %13, align 8, !dbg !605, !tbaa !546
  %56 = load i64, i64* %16, align 8, !dbg !607, !tbaa !552
  %57 = add nsw i64 %56, -1, !dbg !607
  br label %60

; <label>:58:                                     ; preds = %32
  %59 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %9) #4, !dbg !608
  br label %72, !dbg !610

; <label>:60:                                     ; preds = %55, %52, %24, %29
  %61 = phi i64 [ %57, %55 ], [ 0, %52 ], [ 0, %24 ], [ %31, %29 ]
  %62 = phi i32 [ 1, %55 ], [ %54, %52 ], [ %25, %24 ], [ 1, %29 ], !dbg !611
  store i64 %61, i64* %16, align 8, !dbg !612, !tbaa !552
  %63 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %9) #4, !dbg !613
  %64 = icmp eq i32 %63, 0, !dbg !615
  br i1 %64, label %65, label %72, !dbg !616

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.pthread_cond_t_, %struct.pthread_cond_t_* %5, i64 0, i32 3, !dbg !617
  %67 = tail call i32 @sem_post_multiple(%struct.sem_t_** nonnull %66, i32 %62) #4, !dbg !620
  %68 = icmp eq i32 %67, 0, !dbg !621
  br i1 %68, label %72, label %69, !dbg !622

; <label>:69:                                     ; preds = %65
  %70 = tail call i32* @__errno() #4, !dbg !623
  %71 = load i32, i32* %70, align 4, !dbg !623, !tbaa !585
  br label %72, !dbg !625

; <label>:72:                                     ; preds = %60, %69, %65, %8, %4, %2, %58, %40, %20, %7
  %73 = phi i32 [ 0, %7 ], [ %21, %20 ], [ %42, %40 ], [ %59, %58 ], [ 22, %4 ], [ 22, %2 ], [ %10, %8 ], [ %71, %69 ], [ 0, %65 ], [ %63, %60 ], !dbg !626
  ret i32 %73, !dbg !627
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_cond_broadcast(%struct.pthread_cond_t_** readonly) local_unnamed_addr #0 !dbg !628 {
  %2 = tail call fastcc i32 @pte_cond_unblock(%struct.pthread_cond_t_** %0, i32 1) #3, !dbg !632
  ret i32 %2, !dbg !633
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sem_wait(%struct.sem_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sem_post_multiple(%struct.sem_t_**, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!502, !503, !504}
!llvm.ident = !{!505}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cond_signal.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 182, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "PTE_FALSE", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "PTE_TRUE", value: 1, isUnsigned: true)
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !11, line: 419, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t_", file: !20, line: 233, size: 512, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !24, !25, !26, !498, !499, !500, !501}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersBlocked", scope: !19, file: !20, line: 235, baseType: !23, size: 64)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersGone", scope: !19, file: !20, line: 236, baseType: !23, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersToUnblock", scope: !19, file: !20, line: 237, baseType: !23, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockQueue", scope: !19, file: !20, line: 238, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !28, line: 78, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !20, line: 136, size: 192, elements: !31)
!31 = !{!32, !34, !497}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !30, file: !20, line: 138, baseType: !33, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !30, file: !20, line: 139, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 417, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !20, line: 146, size: 320, elements: !38)
!38 = !{!39, !487, !488, !489, !490}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !37, file: !20, line: 148, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !41, line: 12, baseType: !42)
!41 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !44, line: 51, size: 192, elements: !45)
!44 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !43, file: !44, line: 52, baseType: !23, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !43, file: !44, line: 53, baseType: !48, size: 128, offset: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !49, line: 42, size: 128, elements: !50)
!49 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !485}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !48, file: !49, line: 42, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !49, line: 35, size: 192, elements: !54)
!54 = !{!55, !56, !481}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !53, file: !49, line: 36, baseType: !33, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !53, file: !49, line: 37, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !59, line: 59, size: 1024, elements: !60)
!59 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !{!61, !65, !66, !67, !68, !74, !79, !84, !86, !87, !236, !237, !238, !451}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !59, line: 60, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !58, file: !59, line: 61, baseType: !16, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !58, file: !59, line: 62, baseType: !16, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !58, file: !59, line: 63, baseType: !16, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !58, file: !59, line: 64, baseType: !69, size: 128, offset: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !59, line: 64, size: 128, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !69, file: !59, line: 64, baseType: !57, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !69, file: !59, line: 64, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !59, line: 65, baseType: !75, size: 32, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 48, baseType: !77)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !78, line: 79, baseType: !5)
!78 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!79 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !58, file: !59, line: 66, baseType: !80, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !81, line: 49, baseType: !82)
!81 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !83, line: 128, baseType: !23)
!83 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !58, file: !59, line: 67, baseType: !85, size: 8, offset: 512)
!85 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !58, file: !59, line: 68, baseType: !48, size: 128, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !58, file: !59, line: 69, baseType: !88, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !90, line: 90, size: 2176, elements: !91)
!90 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !{!92, !97, !115, !120, !122, !124, !129, !137, !142, !148, !149, !150, !155, !233, !234, !235}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !89, file: !90, line: 91, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !90, line: 68, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !88}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !89, file: !90, line: 93, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !90, line: 71, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!33, !88, !57, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !105, line: 62, baseType: !106)
!105 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !105, line: 55, size: 128, elements: !107)
!107 = !{!108, !109, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !106, file: !105, line: 57, baseType: !85, size: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !106, file: !105, line: 59, baseType: !110, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !105, line: 53, baseType: !33)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !106, file: !105, line: 61, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !81, line: 48, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !83, line: 129, baseType: !114)
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !89, file: !90, line: 94, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !90, line: 74, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !88, !57}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !89, file: !90, line: 95, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !90, line: 76, baseType: !117)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !89, file: !90, line: 96, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !90, line: 78, baseType: !117)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !89, file: !90, line: 98, baseType: !125, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !90, line: 81, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!33, !88, !57, !110}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !89, file: !90, line: 99, baseType: !130, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !90, line: 83, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!33, !88, !134, !136}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !89, file: !90, line: 100, baseType: !138, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !90, line: 85, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!33, !88, !57, !33}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !89, file: !90, line: 101, baseType: !143, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !90, line: 87, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!33, !88, !134, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !89, file: !90, line: 104, baseType: !85, size: 8, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !89, file: !90, line: 105, baseType: !58, size: 1024, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !89, file: !90, line: 106, baseType: !151, size: 128, offset: 1664)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !59, line: 93, size: 128, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !151, file: !59, line: 93, baseType: !57, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !151, file: !59, line: 93, baseType: !73, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !89, file: !90, line: 107, baseType: !156, size: 192, offset: 1792)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !157, line: 59, size: 192, elements: !158)
!157 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!158 = !{!159, !224, !228}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !156, file: !157, line: 61, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !157, line: 51, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!16, !164, !114, !114}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !166, line: 77, size: 832, elements: !167)
!166 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!167 = !{!168, !175, !180, !185, !191, !193, !198, !199, !200, !205, !210, !215, !216, !217}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !165, file: !166, line: 79, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !166, line: 54, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!16, !164, !173}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 58, baseType: !114)
!174 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !165, file: !166, line: 80, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !166, line: 56, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!16, !164, !173, !173}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !165, file: !166, line: 81, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !166, line: 62, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!16, !164, !16, !173}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !165, file: !166, line: 82, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !166, line: 58, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!33, !164, !190, !173, !173}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !165, file: !166, line: 83, baseType: !192, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !166, line: 60, baseType: !177)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !165, file: !166, line: 84, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !166, line: 64, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !164, !16}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !165, file: !166, line: 87, baseType: !194, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !165, file: !166, line: 88, baseType: !169, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !165, file: !166, line: 92, baseType: !201, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !166, line: 66, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!16, !164, !114}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !165, file: !166, line: 93, baseType: !206, size: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !166, line: 68, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !164, !16, !114}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !165, file: !166, line: 99, baseType: !211, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !166, line: 70, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!33, !164, !16, !173}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !165, file: !166, line: 100, baseType: !173, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 103, baseType: !164, size: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !165, file: !166, line: 104, baseType: !218, offset: 832)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, elements: !222)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !76, line: 20, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !78, line: 41, baseType: !221)
!221 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!222 = !{!223}
!223 = !DISubrange(count: -1)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !156, file: !157, line: 63, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !16}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !156, file: !157, line: 65, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !157, line: 56, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !16, !16}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !89, file: !90, line: 108, baseType: !164, size: 64, offset: 1984)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !90, line: 109, baseType: !88, size: 64, offset: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !89, file: !90, line: 110, baseType: !16, size: 64, offset: 2112)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !58, file: !59, line: 70, baseType: !16, size: 64, offset: 768)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !58, file: !59, line: 72, baseType: !33, size: 32, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !58, file: !59, line: 82, baseType: !239, size: 64, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !241, line: 569, size: 14912, elements: !242)
!241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!242 = !{!243, !244, !319, !320, !321, !322, !326, !327, !330, !331, !335, !347, !348, !349, !351, !352, !353, !415, !436, !437, !442, !449}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !240, file: !241, line: 571, baseType: !33, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !240, file: !241, line: 576, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !241, line: 287, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !241, line: 181, size: 1408, elements: !248)
!248 = !{!249, !252, !253, !254, !256, !257, !262, !263, !264, !271, !275, !280, !284, !285, !286, !287, !291, !295, !296, !297, !299, !300, !304, !318}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !247, file: !241, line: 182, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !247, file: !241, line: 183, baseType: !33, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !247, file: !241, line: 184, baseType: !33, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !247, file: !241, line: 185, baseType: !255, size: 16, offset: 128)
!255 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !247, file: !241, line: 186, baseType: !255, size: 16, offset: 144)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !247, file: !241, line: 187, baseType: !258, size: 128, offset: 192)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !241, line: 117, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !258, file: !241, line: 118, baseType: !250, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !258, file: !241, line: 119, baseType: !33, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !247, file: !241, line: 188, baseType: !33, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !247, file: !241, line: 195, baseType: !16, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !247, file: !241, line: 197, baseType: !265, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !239, !16, !270, !33}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !269, line: 145, baseType: !23)
!269 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !247, file: !241, line: 199, baseType: !272, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!268, !239, !16, !62, !33}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !247, file: !241, line: 202, baseType: !276, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !239, !16, !279, !33}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !269, line: 114, baseType: !23)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !247, file: !241, line: 203, baseType: !281, size: 64, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!33, !239, !16}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !247, file: !241, line: 206, baseType: !258, size: 128, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !247, file: !241, line: 207, baseType: !250, size: 64, offset: 832)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !247, file: !241, line: 208, baseType: !33, size: 32, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !247, file: !241, line: 211, baseType: !288, size: 24, offset: 928)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 24, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 3)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !247, file: !241, line: 212, baseType: !292, size: 8, offset: 952)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 8, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 1)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !247, file: !241, line: 215, baseType: !258, size: 128, offset: 960)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !247, file: !241, line: 218, baseType: !33, size: 32, offset: 1088)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !247, file: !241, line: 219, baseType: !298, size: 64, offset: 1152)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !269, line: 44, baseType: !23)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !247, file: !241, line: 222, baseType: !239, size: 64, offset: 1216)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !247, file: !241, line: 226, baseType: !301, size: 32, offset: 1280)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !269, line: 175, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !303, line: 12, baseType: !33)
!303 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !247, file: !241, line: 228, baseType: !305, size: 64, offset: 1312)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !269, line: 171, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 163, size: 64, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !306, file: !269, line: 165, baseType: !33, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !306, file: !269, line: 170, baseType: !310, size: 32, offset: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !269, line: 166, size: 32, elements: !311)
!311 = !{!312, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !310, file: !269, line: 168, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !174, line: 124, baseType: !5)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !310, file: !269, line: 169, baseType: !315, size: 32)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 32, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 4)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !247, file: !241, line: 229, baseType: !33, size: 32, offset: 1376)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !240, file: !241, line: 576, baseType: !245, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !240, file: !241, line: 576, baseType: !245, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !240, file: !241, line: 578, baseType: !33, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !240, file: !241, line: 579, baseType: !323, size: 200, offset: 288)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 200, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 25)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !240, file: !241, line: 582, baseType: !33, size: 32, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !240, file: !241, line: 583, baseType: !328, size: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !241, line: 40, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !240, file: !241, line: 585, baseType: !33, size: 32, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !240, file: !241, line: 587, baseType: !332, size: 64, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !239}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !240, file: !241, line: 590, baseType: !336, size: 64, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !241, line: 47, size: 256, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !337, file: !241, line: 49, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !337, file: !241, line: 50, baseType: !33, size: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !337, file: !241, line: 50, baseType: !33, size: 32, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !337, file: !241, line: 50, baseType: !33, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !337, file: !241, line: 50, baseType: !33, size: 32, offset: 160)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !337, file: !241, line: 51, baseType: !345, size: 32, offset: 192)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 32, elements: !293)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !241, line: 25, baseType: !5)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !240, file: !241, line: 591, baseType: !33, size: 32, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !240, file: !241, line: 592, baseType: !336, size: 64, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !240, file: !241, line: 593, baseType: !350, size: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !240, file: !241, line: 596, baseType: !33, size: 32, offset: 1024)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !240, file: !241, line: 597, baseType: !270, size: 64, offset: 1088)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !240, file: !241, line: 632, baseType: !354, size: 2880, offset: 1152)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !240, file: !241, line: 599, size: 2880, elements: !355)
!355 = !{!356, !406}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !354, file: !241, line: 622, baseType: !357, size: 1728)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !241, line: 601, size: 1728, elements: !358)
!358 = !{!359, !360, !361, !365, !377, !378, !380, !388, !389, !390, !391, !395, !399, !400, !401, !402, !403, !404, !405}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !357, file: !241, line: 603, baseType: !5, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !357, file: !241, line: 604, baseType: !270, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !357, file: !241, line: 605, baseType: !362, size: 208, offset: 128)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 208, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 26)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !357, file: !241, line: 606, baseType: !366, size: 288, offset: 352)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !241, line: 55, size: 288, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !366, file: !241, line: 57, baseType: !33, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !366, file: !241, line: 58, baseType: !33, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !366, file: !241, line: 59, baseType: !33, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !366, file: !241, line: 60, baseType: !33, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !366, file: !241, line: 61, baseType: !33, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !366, file: !241, line: 62, baseType: !33, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !366, file: !241, line: 63, baseType: !33, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !366, file: !241, line: 64, baseType: !33, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !366, file: !241, line: 65, baseType: !33, size: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !357, file: !241, line: 607, baseType: !33, size: 32, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !357, file: !241, line: 608, baseType: !379, size: 64, offset: 704)
!379 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !357, file: !241, line: 609, baseType: !381, size: 112, offset: 768)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !241, line: 319, size: 112, elements: !382)
!382 = !{!383, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !381, file: !241, line: 320, baseType: !384, size: 48)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 48, elements: !289)
!385 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !381, file: !241, line: 321, baseType: !384, size: 48, offset: 48)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !381, file: !241, line: 322, baseType: !385, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !357, file: !241, line: 610, baseType: !305, size: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !357, file: !241, line: 611, baseType: !305, size: 64, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !357, file: !241, line: 612, baseType: !305, size: 64, offset: 1024)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !357, file: !241, line: 613, baseType: !392, size: 64, offset: 1088)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 8)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !357, file: !241, line: 614, baseType: !396, size: 192, offset: 1152)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 24)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !357, file: !241, line: 615, baseType: !33, size: 32, offset: 1344)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !357, file: !241, line: 616, baseType: !305, size: 64, offset: 1376)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !357, file: !241, line: 617, baseType: !305, size: 64, offset: 1440)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !357, file: !241, line: 618, baseType: !305, size: 64, offset: 1504)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !357, file: !241, line: 619, baseType: !305, size: 64, offset: 1568)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !357, file: !241, line: 620, baseType: !305, size: 64, offset: 1632)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !357, file: !241, line: 621, baseType: !33, size: 32, offset: 1696)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !354, file: !241, line: 631, baseType: !407, size: 2880)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !241, line: 626, size: 2880, elements: !408)
!408 = !{!409, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !407, file: !241, line: 629, baseType: !410, size: 1920)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1920, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 30)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !407, file: !241, line: 630, baseType: !414, size: 960, offset: 1920)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !411)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !240, file: !241, line: 636, baseType: !416, size: 64, offset: 4032)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !241, line: 93, size: 6336, elements: !418)
!418 = !{!419, !420, !421, !428}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !417, file: !241, line: 94, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !417, file: !241, line: 95, baseType: !33, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !417, file: !241, line: 97, baseType: !422, size: 2048, offset: 128)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 2048, elements: !426)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null}
!426 = !{!427}
!427 = !DISubrange(count: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !417, file: !241, line: 98, baseType: !429, size: 4160, offset: 2176)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !241, line: 74, size: 4160, elements: !430)
!430 = !{!431, !433, !434, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !429, file: !241, line: 75, baseType: !432, size: 2048)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !426)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !429, file: !241, line: 76, baseType: !432, size: 2048, offset: 2048)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !429, file: !241, line: 78, baseType: !346, size: 32, offset: 4096)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !429, file: !241, line: 81, baseType: !346, size: 32, offset: 4128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !240, file: !241, line: 637, baseType: !417, size: 6336, offset: 4096)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !240, file: !241, line: 641, baseType: !438, size: 64, offset: 10432)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !33}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !240, file: !241, line: 646, baseType: !443, size: 192, offset: 10496)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !241, line: 291, size: 192, elements: !444)
!444 = !{!445, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !443, file: !241, line: 293, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !443, file: !241, line: 294, baseType: !33, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !443, file: !241, line: 295, baseType: !245, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !240, file: !241, line: 648, baseType: !450, size: 4224, offset: 10688)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 4224, elements: !289)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !58, file: !59, line: 85, baseType: !452, size: 64, offset: 960)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !454)
!454 = !{!455, !459, !460, !467, !480}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !453, file: !4, line: 116, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !457, line: 64, baseType: !458)
!457 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !457, line: 63, baseType: !114)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !453, file: !4, line: 118, baseType: !456, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !453, file: !4, line: 120, baseType: !461, size: 128, offset: 128)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !462, line: 51, size: 128, elements: !463)
!462 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!463 = !{!464, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !462, line: 52, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !461, file: !462, line: 53, baseType: !465, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !453, file: !4, line: 122, baseType: !468, size: 256, offset: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !468, file: !4, line: 107, baseType: !3, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !468, file: !4, line: 109, baseType: !456, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !468, file: !4, line: 111, baseType: !473, size: 96, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !457, line: 72, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 68, size: 96, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !474, file: !457, line: 69, baseType: !33, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !474, file: !457, line: 70, baseType: !33, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !474, file: !457, line: 71, baseType: !479, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !457, line: 61, baseType: !33)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !453, file: !4, line: 124, baseType: !461, size: 128, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !53, file: !49, line: 38, baseType: !482, size: 64, offset: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !53, file: !49, line: 38, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !482, file: !49, line: 38, baseType: !52, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !48, file: !49, line: 42, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !37, file: !20, line: 149, baseType: !33, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !37, file: !20, line: 156, baseType: !33, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !37, file: !20, line: 159, baseType: !33, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !37, file: !20, line: 160, baseType: !491, size: 128, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 413, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !11, line: 411, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 395, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !493, file: !11, line: 398, baseType: !16, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !493, file: !11, line: 399, baseType: !5, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !30, file: !20, line: 140, baseType: !40, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockLock", scope: !19, file: !20, line: 240, baseType: !27, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mtxUnblockLock", scope: !19, file: !20, line: 243, baseType: !35, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !20, line: 246, baseType: !17, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !19, file: !20, line: 247, baseType: !17, size: 64, offset: 448)
!502 = !{i32 2, !"Dwarf Version", i32 4}
!503 = !{i32 2, !"Debug Info Version", i32 3}
!504 = !{i32 1, !"wchar_size", i32 4}
!505 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!506 = distinct !DISubprogram(name: "pthread_cond_signal", scope: !1, file: !1, line: 160, type: !507, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !510)
!507 = !DISubroutineType(types: !508)
!508 = !{!33, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!510 = !{!511}
!511 = !DILocalVariable(name: "cond", arg: 1, scope: !506, file: !1, line: 160, type: !509)
!512 = !DILocation(line: 160, column: 39, scope: !506)
!513 = !DILocation(line: 197, column: 11, scope: !506)
!514 = !DILocation(line: 197, column: 3, scope: !506)
!515 = distinct !DISubprogram(name: "pte_cond_unblock", scope: !1, file: !1, line: 52, type: !516, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!33, !509, !33}
!518 = !{!519, !520, !521, !522, !523}
!519 = !DILocalVariable(name: "cond", arg: 1, scope: !515, file: !1, line: 52, type: !509)
!520 = !DILocalVariable(name: "unblockAll", arg: 2, scope: !515, file: !1, line: 52, type: !33)
!521 = !DILocalVariable(name: "result", scope: !515, file: !1, line: 73, type: !33)
!522 = !DILocalVariable(name: "cv", scope: !515, file: !1, line: 74, type: !17)
!523 = !DILocalVariable(name: "nSignalsToIssue", scope: !515, file: !1, line: 75, type: !33)
!524 = !DILocation(line: 52, column: 36, scope: !515)
!525 = !DILocation(line: 52, column: 46, scope: !515)
!526 = !DILocation(line: 77, column: 12, scope: !527)
!527 = distinct !DILexicalBlock(scope: !515, file: !1, line: 77, column: 7)
!528 = !DILocation(line: 77, column: 20, scope: !527)
!529 = !DILocation(line: 77, column: 23, scope: !527)
!530 = !{!531, !531, i64 0}
!531 = !{!"any pointer", !532, i64 0}
!532 = !{!"omnipotent char", !533, i64 0}
!533 = !{!"Simple C/C++ TBAA"}
!534 = !DILocation(line: 77, column: 7, scope: !515)
!535 = !DILocation(line: 90, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 89, column: 5)
!537 = distinct !DILexicalBlock(scope: !515, file: !1, line: 88, column: 7)
!538 = !DILocation(line: 93, column: 43, scope: !539)
!539 = distinct !DILexicalBlock(scope: !515, file: !1, line: 93, column: 7)
!540 = !DILocation(line: 93, column: 17, scope: !539)
!541 = !DILocation(line: 73, column: 7, scope: !515)
!542 = !DILocation(line: 93, column: 61, scope: !539)
!543 = !DILocation(line: 93, column: 7, scope: !515)
!544 = !DILocation(line: 98, column: 16, scope: !545)
!545 = distinct !DILexicalBlock(scope: !515, file: !1, line: 98, column: 7)
!546 = !{!547, !548, i64 16}
!547 = !{!"pthread_cond_t_", !548, i64 0, !548, i64 8, !548, i64 16, !531, i64 24, !531, i64 32, !531, i64 40, !531, i64 48, !531, i64 56}
!548 = !{!"long", !532, i64 0}
!549 = !DILocation(line: 98, column: 9, scope: !545)
!550 = !DILocation(line: 0, scope: !551)
!551 = distinct !DILexicalBlock(scope: !545, file: !1, line: 116, column: 12)
!552 = !{!547, !548, i64 0}
!553 = !DILocation(line: 98, column: 7, scope: !515)
!554 = !DILocation(line: 100, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 100, column: 11)
!556 = distinct !DILexicalBlock(scope: !545, file: !1, line: 99, column: 5)
!557 = !DILocation(line: 100, column: 11, scope: !556)
!558 = !DILocation(line: 102, column: 18, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !1, line: 101, column: 9)
!560 = !DILocation(line: 102, column: 11, scope: !559)
!561 = !DILocation(line: 104, column: 11, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !1, line: 104, column: 11)
!563 = !DILocation(line: 104, column: 11, scope: !556)
!564 = !DILocation(line: 106, column: 55, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !1, line: 105, column: 9)
!566 = !DILocation(line: 75, column: 7, scope: !515)
!567 = !DILocation(line: 106, column: 36, scope: !565)
!568 = !DILocation(line: 106, column: 33, scope: !565)
!569 = !DILocation(line: 108, column: 9, scope: !565)
!570 = !DILocation(line: 112, column: 32, scope: !571)
!571 = distinct !DILexicalBlock(scope: !562, file: !1, line: 110, column: 9)
!572 = !DILocation(line: 113, column: 30, scope: !571)
!573 = !DILocation(line: 116, column: 38, scope: !551)
!574 = !{!547, !548, i64 8}
!575 = !DILocation(line: 116, column: 32, scope: !551)
!576 = !DILocation(line: 116, column: 12, scope: !545)
!577 = !DILocation(line: 120, column: 27, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 120, column: 11)
!579 = distinct !DILexicalBlock(scope: !551, file: !1, line: 117, column: 5)
!580 = !DILocation(line: 120, column: 11, scope: !578)
!581 = !DILocation(line: 120, column: 42, scope: !578)
!582 = !DILocation(line: 120, column: 11, scope: !579)
!583 = !DILocation(line: 122, column: 20, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !1, line: 121, column: 9)
!585 = !{!586, !586, i64 0}
!586 = !{!"int", !532, i64 0}
!587 = !DILocation(line: 123, column: 18, scope: !584)
!588 = !DILocation(line: 124, column: 11, scope: !584)
!589 = !DILocation(line: 126, column: 20, scope: !590)
!590 = distinct !DILexicalBlock(scope: !579, file: !1, line: 126, column: 11)
!591 = !DILocation(line: 126, column: 13, scope: !590)
!592 = !DILocation(line: 126, column: 11, scope: !579)
!593 = !DILocation(line: 128, column: 31, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !1, line: 127, column: 9)
!595 = !DILocation(line: 129, column: 28, scope: !594)
!596 = !DILocation(line: 130, column: 9, scope: !594)
!597 = !DILocation(line: 131, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !579, file: !1, line: 131, column: 11)
!599 = !DILocation(line: 131, column: 11, scope: !579)
!600 = !DILocation(line: 133, column: 57, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !1, line: 132, column: 9)
!602 = !DILocation(line: 133, column: 51, scope: !601)
!603 = !DILocation(line: 133, column: 29, scope: !601)
!604 = !DILocation(line: 135, column: 9, scope: !601)
!605 = !DILocation(line: 138, column: 51, scope: !606)
!606 = distinct !DILexicalBlock(scope: !598, file: !1, line: 137, column: 9)
!607 = !DILocation(line: 139, column: 30, scope: !606)
!608 = !DILocation(line: 144, column: 14, scope: !609)
!609 = distinct !DILexicalBlock(scope: !551, file: !1, line: 143, column: 5)
!610 = !DILocation(line: 144, column: 7, scope: !609)
!611 = !DILocation(line: 0, scope: !606)
!612 = !DILocation(line: 0, scope: !571)
!613 = !DILocation(line: 147, column: 17, scope: !614)
!614 = distinct !DILexicalBlock(scope: !515, file: !1, line: 147, column: 7)
!615 = !DILocation(line: 147, column: 63, scope: !614)
!616 = !DILocation(line: 147, column: 7, scope: !515)
!617 = !DILocation(line: 149, column: 36, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 149, column: 11)
!619 = distinct !DILexicalBlock(scope: !614, file: !1, line: 148, column: 5)
!620 = !DILocation(line: 149, column: 11, scope: !618)
!621 = !DILocation(line: 149, column: 69, scope: !618)
!622 = !DILocation(line: 149, column: 11, scope: !619)
!623 = !DILocation(line: 151, column: 20, scope: !624)
!624 = distinct !DILexicalBlock(scope: !618, file: !1, line: 150, column: 9)
!625 = !DILocation(line: 152, column: 9, scope: !624)
!626 = !DILocation(line: 0, scope: !609)
!627 = !DILocation(line: 157, column: 1, scope: !515)
!628 = distinct !DISubprogram(name: "pthread_cond_broadcast", scope: !1, file: !1, line: 202, type: !507, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !629)
!629 = !{!630}
!630 = !DILocalVariable(name: "cond", arg: 1, scope: !628, file: !1, line: 202, type: !509)
!631 = !DILocation(line: 202, column: 42, scope: !628)
!632 = !DILocation(line: 236, column: 11, scope: !628)
!633 = !DILocation(line: 236, column: 3, scope: !628)
