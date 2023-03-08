; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlock_timedwrlock.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlock_timedwrlock.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_rwlock_t_ = type { %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_cond_t_*, i32, i32, i32, i32 }
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
%struct.pthread_cond_t_ = type { i64, i64, i64, %struct.sem_t_*, %struct.sem_t_*, %struct.pthread_mutex_t_*, %struct.pthread_cond_t_*, %struct.pthread_cond_t_* }
%struct.sem_t_ = type { i32, %struct.pthread_mutex_t_*, %struct.uk_semaphore* }
%struct.timespec = type { i64, i64 }
%struct.pte_cleanup_t = type { void (i8*)*, i8*, %struct.pte_cleanup_t* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_rwlock_timedwrlock(%struct.pthread_rwlock_t_**, %struct.timespec*) local_unnamed_addr #0 !dbg !514 {
  %3 = alloca %struct.pte_cleanup_t, align 8
  %4 = icmp eq %struct.pthread_rwlock_t_** %0, null, !dbg !546
  br i1 %4, label %64, label %5, !dbg !548

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.pthread_rwlock_t_** %0 to i64*, !dbg !549
  %7 = load i64, i64* %6, align 8, !dbg !549, !tbaa !550
  %8 = inttoptr i64 %7 to %struct.pthread_rwlock_t_*, !dbg !554
  switch i64 %7, label %15 [
    i64 0, label %64
    i64 -1, label %9
  ], !dbg !554

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @pte_rwlock_check_need_init(%struct.pthread_rwlock_t_** nonnull %0) #4, !dbg !555
  %11 = or i32 %10, 16, !dbg !559
  %12 = icmp eq i32 %11, 16, !dbg !559
  br i1 %12, label %13, label %64, !dbg !559

; <label>:13:                                     ; preds = %9
  %14 = load %struct.pthread_rwlock_t_*, %struct.pthread_rwlock_t_** %0, align 8, !dbg !561, !tbaa !550
  br label %15, !dbg !559

; <label>:15:                                     ; preds = %13, %5
  %16 = phi %struct.pthread_rwlock_t_* [ %14, %13 ], [ %8, %5 ], !dbg !561
  %17 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 6, !dbg !563
  %18 = load i32, i32* %17, align 4, !dbg !563, !tbaa !565
  %19 = icmp eq i32 %18, 262974946, !dbg !568
  br i1 %19, label %20, label %64, !dbg !569

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 0, !dbg !570
  %22 = tail call i32 @pthread_mutex_timedlock(%struct.pthread_mutex_t_** %21, %struct.timespec* %1) #4, !dbg !572
  %23 = icmp eq i32 %22, 0, !dbg !573
  br i1 %23, label %24, label %64, !dbg !574

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 1, !dbg !575
  %26 = tail call i32 @pthread_mutex_timedlock(%struct.pthread_mutex_t_** nonnull %25, %struct.timespec* %1) #4, !dbg !577
  %27 = icmp eq i32 %26, 0, !dbg !578
  br i1 %27, label %30, label %28, !dbg !579

; <label>:28:                                     ; preds = %24
  %29 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** %21) #4, !dbg !580
  br label %64, !dbg !582

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 4, !dbg !583
  %32 = load i32, i32* %31, align 4, !dbg !583, !tbaa !584
  %33 = icmp eq i32 %32, 0, !dbg !585
  br i1 %33, label %34, label %61, !dbg !586

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 5, !dbg !587
  %36 = load i32, i32* %35, align 8, !dbg !587, !tbaa !589
  %37 = icmp sgt i32 %36, 0, !dbg !590
  %38 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 3
  %39 = load i32, i32* %38, align 8, !dbg !591, !tbaa !592
  br i1 %37, label %40, label %42, !dbg !593

; <label>:40:                                     ; preds = %34
  %41 = sub nsw i32 %39, %36, !dbg !594
  store i32 %41, i32* %38, align 8, !dbg !594, !tbaa !592
  store i32 0, i32* %35, align 8, !dbg !596, !tbaa !589
  br label %42, !dbg !597

; <label>:42:                                     ; preds = %34, %40
  %43 = phi i32 [ %41, %40 ], [ %39, %34 ], !dbg !598
  %44 = icmp sgt i32 %43, 0, !dbg !599
  br i1 %44, label %45, label %61, !dbg !600

; <label>:45:                                     ; preds = %42
  %46 = sub nsw i32 0, %43, !dbg !601
  store i32 %46, i32* %35, align 8, !dbg !602, !tbaa !589
  %47 = bitcast %struct.pte_cleanup_t* %3 to i8*, !dbg !603
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %47) #5, !dbg !603
  %48 = bitcast %struct.pthread_rwlock_t_* %16 to i8*, !dbg !603
  call void @pte_push_cleanup(%struct.pte_cleanup_t* nonnull %3, void (i8*)* nonnull @pte_rwlock_cancelwrwait, i8* %48) #4, !dbg !603
  %49 = getelementptr inbounds %struct.pthread_rwlock_t_, %struct.pthread_rwlock_t_* %16, i64 0, i32 2
  br label %50, !dbg !604

; <label>:50:                                     ; preds = %53, %45
  %51 = call i32 @pthread_cond_timedwait(%struct.pthread_cond_t_** nonnull %49, %struct.pthread_mutex_t_** nonnull %25, %struct.timespec* %1) #4, !dbg !605
  %52 = icmp eq i32 %51, 0, !dbg !607
  br i1 %52, label %53, label %59, !dbg !608

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %35, align 8, !dbg !609, !tbaa !589
  %55 = icmp slt i32 %54, 0, !dbg !610
  br i1 %55, label %50, label %56, !dbg !611, !llvm.loop !612

; <label>:56:                                     ; preds = %53
  %57 = call %struct.pte_cleanup_t* @pte_pop_cleanup(i32 0) #4, !dbg !614
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %47) #5, !dbg !615
  store i32 0, i32* %38, align 8, !dbg !616, !tbaa !592
  %58 = load i32, i32* %31, align 4, !dbg !619, !tbaa !584
  br label %61, !dbg !622

; <label>:59:                                     ; preds = %50
  %60 = call %struct.pte_cleanup_t* @pte_pop_cleanup(i32 1) #4, !dbg !614
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %47) #5, !dbg !615
  br label %64

; <label>:61:                                     ; preds = %56, %42, %30
  %62 = phi i32 [ %58, %56 ], [ 0, %42 ], [ %32, %30 ], !dbg !619
  %63 = add nsw i32 %62, 1, !dbg !619
  store i32 %63, i32* %31, align 4, !dbg !619, !tbaa !584
  br label %64, !dbg !623

; <label>:64:                                     ; preds = %59, %61, %20, %15, %9, %5, %2, %28
  %65 = phi i32 [ %26, %28 ], [ 22, %5 ], [ 22, %2 ], [ %10, %9 ], [ 22, %15 ], [ %22, %20 ], [ 0, %61 ], [ %51, %59 ], !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  ret i32 %65, !dbg !625
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_rwlock_check_need_init(%struct.pthread_rwlock_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_timedlock(%struct.pthread_mutex_t_**, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @pte_push_cleanup(%struct.pte_cleanup_t*, void (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @pte_rwlock_cancelwrwait(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_cond_timedwait(%struct.pthread_cond_t_**, %struct.pthread_mutex_t_**, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.pte_cleanup_t* @pte_pop_cleanup(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!510, !511, !512}
!llvm.ident = !{!513}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlock_timedwrlock.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !{!11, !12, !509}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !13, line: 421, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_rwlock_t_", file: !16, line: 259, size: 320, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !483, !484, !505, !506, !507, !508}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "mtxExclusiveAccess", scope: !15, file: !16, line: 261, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !13, line: 417, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !16, line: 146, size: 320, elements: !22)
!22 = !{!23, !473, !474, !475, !476}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !21, file: !16, line: 148, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !25, line: 12, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !28, line: 51, size: 192, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !27, file: !28, line: 52, baseType: !31, size: 64)
!31 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !27, file: !28, line: 53, baseType: !33, size: 128, offset: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !34, line: 42, size: 128, elements: !35)
!34 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !{!36, !471}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !33, file: !34, line: 42, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !34, line: 35, size: 192, elements: !39)
!39 = !{!40, !42, !467}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !38, file: !34, line: 36, baseType: !41, size: 32)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !38, file: !34, line: 37, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !45, line: 59, size: 1024, elements: !46)
!45 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !{!47, !51, !52, !53, !54, !60, !65, !70, !72, !73, !222, !223, !224, !437}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !45, line: 60, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !44, file: !45, line: 61, baseType: !11, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !44, file: !45, line: 62, baseType: !11, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !44, file: !45, line: 63, baseType: !11, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !44, file: !45, line: 64, baseType: !55, size: 128, offset: 256)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !45, line: 64, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !55, file: !45, line: 64, baseType: !43, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !55, file: !45, line: 64, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !45, line: 65, baseType: !61, size: 32, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 48, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 79, baseType: !5)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !44, file: !45, line: 66, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !67, line: 49, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !69, line: 128, baseType: !31)
!69 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !44, file: !45, line: 67, baseType: !71, size: 8, offset: 512)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !44, file: !45, line: 68, baseType: !33, size: 128, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !44, file: !45, line: 69, baseType: !74, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !76, line: 90, size: 2176, elements: !77)
!76 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !{!78, !83, !101, !106, !108, !110, !115, !123, !128, !134, !135, !136, !141, !219, !220, !221}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !75, file: !76, line: 91, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !76, line: 68, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !74}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !75, file: !76, line: 93, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !76, line: 71, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!41, !74, !43, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !91, line: 62, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !91, line: 55, size: 128, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !92, file: !91, line: 57, baseType: !71, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !92, file: !91, line: 59, baseType: !96, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !91, line: 53, baseType: !41)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !92, file: !91, line: 61, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !67, line: 48, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !69, line: 129, baseType: !100)
!100 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !75, file: !76, line: 94, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !76, line: 74, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !74, !43}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !75, file: !76, line: 95, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !76, line: 76, baseType: !103)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !75, file: !76, line: 96, baseType: !109, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !76, line: 78, baseType: !103)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !75, file: !76, line: 98, baseType: !111, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !76, line: 81, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!41, !74, !43, !96}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !75, file: !76, line: 99, baseType: !116, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !76, line: 83, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!41, !74, !120, !122}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !75, file: !76, line: 100, baseType: !124, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !76, line: 85, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!41, !74, !43, !41}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !75, file: !76, line: 101, baseType: !129, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !76, line: 87, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!41, !74, !120, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !75, file: !76, line: 104, baseType: !71, size: 8, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !75, file: !76, line: 105, baseType: !44, size: 1024, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !75, file: !76, line: 106, baseType: !137, size: 128, offset: 1664)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !45, line: 93, size: 128, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !137, file: !45, line: 93, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !137, file: !45, line: 93, baseType: !59, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !75, file: !76, line: 107, baseType: !142, size: 192, offset: 1792)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !143, line: 59, size: 192, elements: !144)
!143 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!144 = !{!145, !210, !214}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !142, file: !143, line: 61, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !143, line: 51, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!11, !150, !100, !100}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !152, line: 77, size: 832, elements: !153)
!152 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!153 = !{!154, !161, !166, !171, !177, !179, !184, !185, !186, !191, !196, !201, !202, !203}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !151, file: !152, line: 79, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !152, line: 54, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !150, !159}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 58, baseType: !100)
!160 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !151, file: !152, line: 80, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !152, line: 56, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!11, !150, !159, !159}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !151, file: !152, line: 81, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !152, line: 62, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!11, !150, !11, !159}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !151, file: !152, line: 82, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !152, line: 58, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!41, !150, !176, !159, !159}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !151, file: !152, line: 83, baseType: !178, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !152, line: 60, baseType: !163)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !151, file: !152, line: 84, baseType: !180, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !152, line: 64, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !150, !11}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !151, file: !152, line: 87, baseType: !180, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !151, file: !152, line: 88, baseType: !155, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !151, file: !152, line: 92, baseType: !187, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !152, line: 66, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!11, !150, !100}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !151, file: !152, line: 93, baseType: !192, size: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !152, line: 68, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !150, !11, !100}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !151, file: !152, line: 99, baseType: !197, size: 64, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !152, line: 70, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!41, !150, !11, !159}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !151, file: !152, line: 100, baseType: !159, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 103, baseType: !150, size: 64, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !151, file: !152, line: 104, baseType: !204, offset: 832)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, elements: !208)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !62, line: 20, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !64, line: 41, baseType: !207)
!207 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!208 = !{!209}
!209 = !DISubrange(count: -1)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !142, file: !143, line: 63, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !11}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !142, file: !143, line: 65, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !143, line: 56, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !11, !11}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !75, file: !76, line: 108, baseType: !150, size: 64, offset: 1984)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !76, line: 109, baseType: !74, size: 64, offset: 2048)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !75, file: !76, line: 110, baseType: !11, size: 64, offset: 2112)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !44, file: !45, line: 70, baseType: !11, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !44, file: !45, line: 72, baseType: !41, size: 32, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !44, file: !45, line: 82, baseType: !225, size: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !227, line: 569, size: 14912, elements: !228)
!227 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!228 = !{!229, !230, !305, !306, !307, !308, !312, !313, !316, !317, !321, !333, !334, !335, !337, !338, !339, !401, !422, !423, !428, !435}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !226, file: !227, line: 571, baseType: !41, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !226, file: !227, line: 576, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !227, line: 287, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !227, line: 181, size: 1408, elements: !234)
!234 = !{!235, !238, !239, !240, !242, !243, !248, !249, !250, !257, !261, !266, !270, !271, !272, !273, !277, !281, !282, !283, !285, !286, !290, !304}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !233, file: !227, line: 182, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !233, file: !227, line: 183, baseType: !41, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !233, file: !227, line: 184, baseType: !41, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !233, file: !227, line: 185, baseType: !241, size: 16, offset: 128)
!241 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !233, file: !227, line: 186, baseType: !241, size: 16, offset: 144)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !233, file: !227, line: 187, baseType: !244, size: 128, offset: 192)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !227, line: 117, size: 128, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !244, file: !227, line: 118, baseType: !236, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !244, file: !227, line: 119, baseType: !41, size: 32, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !233, file: !227, line: 188, baseType: !41, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !233, file: !227, line: 195, baseType: !11, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !233, file: !227, line: 197, baseType: !251, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !225, !11, !256, !41}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !255, line: 145, baseType: !31)
!255 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !233, file: !227, line: 199, baseType: !258, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!254, !225, !11, !48, !41}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !233, file: !227, line: 202, baseType: !262, size: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !225, !11, !265, !41}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !255, line: 114, baseType: !31)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !233, file: !227, line: 203, baseType: !267, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!41, !225, !11}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !233, file: !227, line: 206, baseType: !244, size: 128, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !233, file: !227, line: 207, baseType: !236, size: 64, offset: 832)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !233, file: !227, line: 208, baseType: !41, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !233, file: !227, line: 211, baseType: !274, size: 24, offset: 928)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 24, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 3)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !233, file: !227, line: 212, baseType: !278, size: 8, offset: 952)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 8, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 1)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !233, file: !227, line: 215, baseType: !244, size: 128, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !233, file: !227, line: 218, baseType: !41, size: 32, offset: 1088)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !233, file: !227, line: 219, baseType: !284, size: 64, offset: 1152)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !255, line: 44, baseType: !31)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !233, file: !227, line: 222, baseType: !225, size: 64, offset: 1216)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !233, file: !227, line: 226, baseType: !287, size: 32, offset: 1280)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !255, line: 175, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !289, line: 12, baseType: !41)
!289 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !233, file: !227, line: 228, baseType: !291, size: 64, offset: 1312)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !255, line: 171, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 163, size: 64, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !292, file: !255, line: 165, baseType: !41, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !292, file: !255, line: 170, baseType: !296, size: 32, offset: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !255, line: 166, size: 32, elements: !297)
!297 = !{!298, !300}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !296, file: !255, line: 168, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !160, line: 124, baseType: !5)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !296, file: !255, line: 169, baseType: !301, size: 32)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 32, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 4)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !233, file: !227, line: 229, baseType: !41, size: 32, offset: 1376)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !226, file: !227, line: 576, baseType: !231, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !226, file: !227, line: 576, baseType: !231, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !226, file: !227, line: 578, baseType: !41, size: 32, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !226, file: !227, line: 579, baseType: !309, size: 200, offset: 288)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 200, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 25)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !226, file: !227, line: 582, baseType: !41, size: 32, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !226, file: !227, line: 583, baseType: !314, size: 64, offset: 576)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !227, line: 40, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !226, file: !227, line: 585, baseType: !41, size: 32, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !226, file: !227, line: 587, baseType: !318, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !225}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !226, file: !227, line: 590, baseType: !322, size: 64, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !227, line: 47, size: 256, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !323, file: !227, line: 49, baseType: !322, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !323, file: !227, line: 50, baseType: !41, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !323, file: !227, line: 50, baseType: !41, size: 32, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !323, file: !227, line: 50, baseType: !41, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !323, file: !227, line: 50, baseType: !41, size: 32, offset: 160)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !323, file: !227, line: 51, baseType: !331, size: 32, offset: 192)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 32, elements: !279)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !227, line: 25, baseType: !5)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !226, file: !227, line: 591, baseType: !41, size: 32, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !226, file: !227, line: 592, baseType: !322, size: 64, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !226, file: !227, line: 593, baseType: !336, size: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !226, file: !227, line: 596, baseType: !41, size: 32, offset: 1024)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !226, file: !227, line: 597, baseType: !256, size: 64, offset: 1088)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !226, file: !227, line: 632, baseType: !340, size: 2880, offset: 1152)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !227, line: 599, size: 2880, elements: !341)
!341 = !{!342, !392}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !340, file: !227, line: 622, baseType: !343, size: 1728)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !227, line: 601, size: 1728, elements: !344)
!344 = !{!345, !346, !347, !351, !363, !364, !366, !374, !375, !376, !377, !381, !385, !386, !387, !388, !389, !390, !391}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !343, file: !227, line: 603, baseType: !5, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !343, file: !227, line: 604, baseType: !256, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !343, file: !227, line: 605, baseType: !348, size: 208, offset: 128)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 26)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !343, file: !227, line: 606, baseType: !352, size: 288, offset: 352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !227, line: 55, size: 288, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !352, file: !227, line: 57, baseType: !41, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !352, file: !227, line: 58, baseType: !41, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !352, file: !227, line: 59, baseType: !41, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !352, file: !227, line: 60, baseType: !41, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !352, file: !227, line: 61, baseType: !41, size: 32, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !352, file: !227, line: 62, baseType: !41, size: 32, offset: 160)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !352, file: !227, line: 63, baseType: !41, size: 32, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !352, file: !227, line: 64, baseType: !41, size: 32, offset: 224)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !352, file: !227, line: 65, baseType: !41, size: 32, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !343, file: !227, line: 607, baseType: !41, size: 32, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !343, file: !227, line: 608, baseType: !365, size: 64, offset: 704)
!365 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !343, file: !227, line: 609, baseType: !367, size: 112, offset: 768)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !227, line: 319, size: 112, elements: !368)
!368 = !{!369, !372, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !367, file: !227, line: 320, baseType: !370, size: 48)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 48, elements: !275)
!371 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !367, file: !227, line: 321, baseType: !370, size: 48, offset: 48)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !367, file: !227, line: 322, baseType: !371, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !343, file: !227, line: 610, baseType: !291, size: 64, offset: 896)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !343, file: !227, line: 611, baseType: !291, size: 64, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !343, file: !227, line: 612, baseType: !291, size: 64, offset: 1024)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !343, file: !227, line: 613, baseType: !378, size: 64, offset: 1088)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 8)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !343, file: !227, line: 614, baseType: !382, size: 192, offset: 1152)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 24)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !343, file: !227, line: 615, baseType: !41, size: 32, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !343, file: !227, line: 616, baseType: !291, size: 64, offset: 1376)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !343, file: !227, line: 617, baseType: !291, size: 64, offset: 1440)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !343, file: !227, line: 618, baseType: !291, size: 64, offset: 1504)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !343, file: !227, line: 619, baseType: !291, size: 64, offset: 1568)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !343, file: !227, line: 620, baseType: !291, size: 64, offset: 1632)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !343, file: !227, line: 621, baseType: !41, size: 32, offset: 1696)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !340, file: !227, line: 631, baseType: !393, size: 2880)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !227, line: 626, size: 2880, elements: !394)
!394 = !{!395, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !393, file: !227, line: 629, baseType: !396, size: 1920)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 1920, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 30)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !393, file: !227, line: 630, baseType: !400, size: 960, offset: 1920)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !397)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !226, file: !227, line: 636, baseType: !402, size: 64, offset: 4032)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !227, line: 93, size: 6336, elements: !404)
!404 = !{!405, !406, !407, !414}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !403, file: !227, line: 94, baseType: !402, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !403, file: !227, line: 95, baseType: !41, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !403, file: !227, line: 97, baseType: !408, size: 2048, offset: 128)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !412)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null}
!412 = !{!413}
!413 = !DISubrange(count: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !403, file: !227, line: 98, baseType: !415, size: 4160, offset: 2176)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !227, line: 74, size: 4160, elements: !416)
!416 = !{!417, !419, !420, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !415, file: !227, line: 75, baseType: !418, size: 2048)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !412)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !415, file: !227, line: 76, baseType: !418, size: 2048, offset: 2048)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !415, file: !227, line: 78, baseType: !332, size: 32, offset: 4096)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !415, file: !227, line: 81, baseType: !332, size: 32, offset: 4128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !226, file: !227, line: 637, baseType: !403, size: 6336, offset: 4096)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !226, file: !227, line: 641, baseType: !424, size: 64, offset: 10432)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !41}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !226, file: !227, line: 646, baseType: !429, size: 192, offset: 10496)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !227, line: 291, size: 192, elements: !430)
!430 = !{!431, !433, !434}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !429, file: !227, line: 293, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !429, file: !227, line: 294, baseType: !41, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !429, file: !227, line: 295, baseType: !231, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !226, file: !227, line: 648, baseType: !436, size: 4224, offset: 10688)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 4224, elements: !275)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !44, file: !45, line: 85, baseType: !438, size: 64, offset: 960)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !440)
!440 = !{!441, !445, !446, !453, !466}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !439, file: !4, line: 116, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !443, line: 64, baseType: !444)
!443 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !443, line: 63, baseType: !100)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !439, file: !4, line: 118, baseType: !442, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !439, file: !4, line: 120, baseType: !447, size: 128, offset: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !448, line: 51, size: 128, elements: !449)
!448 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!449 = !{!450, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !448, line: 52, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !447, file: !448, line: 53, baseType: !451, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !439, file: !4, line: 122, baseType: !454, size: 256, offset: 256)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !455)
!455 = !{!456, !457, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !454, file: !4, line: 107, baseType: !3, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !454, file: !4, line: 109, baseType: !442, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !454, file: !4, line: 111, baseType: !459, size: 96, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !443, line: 72, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 68, size: 96, elements: !461)
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !460, file: !443, line: 69, baseType: !41, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !460, file: !443, line: 70, baseType: !41, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !460, file: !443, line: 71, baseType: !465, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !443, line: 61, baseType: !41)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !439, file: !4, line: 124, baseType: !447, size: 128, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !38, file: !34, line: 38, baseType: !468, size: 64, offset: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !34, line: 38, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !468, file: !34, line: 38, baseType: !37, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !33, file: !34, line: 42, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !21, file: !16, line: 149, baseType: !41, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !21, file: !16, line: 156, baseType: !41, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !21, file: !16, line: 159, baseType: !41, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !21, file: !16, line: 160, baseType: !477, size: 128, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !13, line: 413, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !13, line: 411, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 395, size: 128, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !479, file: !13, line: 398, baseType: !11, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !479, file: !13, line: 399, baseType: !5, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mtxSharedAccessCompleted", scope: !15, file: !16, line: 262, baseType: !19, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cndSharedAccessCompleted", scope: !15, file: !16, line: 263, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !13, line: 419, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t_", file: !16, line: 233, size: 512, elements: !488)
!488 = !{!489, !490, !491, !492, !501, !502, !503, !504}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersBlocked", scope: !487, file: !16, line: 235, baseType: !31, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersGone", scope: !487, file: !16, line: 236, baseType: !31, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nWaitersToUnblock", scope: !487, file: !16, line: 237, baseType: !31, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockQueue", scope: !487, file: !16, line: 238, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !494, line: 78, baseType: !495)
!494 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !16, line: 136, size: 192, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !496, file: !16, line: 138, baseType: !41, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !496, file: !16, line: 139, baseType: !19, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !496, file: !16, line: 140, baseType: !24, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "semBlockLock", scope: !487, file: !16, line: 240, baseType: !493, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mtxUnblockLock", scope: !487, file: !16, line: 243, baseType: !19, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !16, line: 246, baseType: !485, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !487, file: !16, line: 247, baseType: !485, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nSharedAccessCount", scope: !15, file: !16, line: 264, baseType: !41, size: 32, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nExclusiveAccessCount", scope: !15, file: !16, line: 265, baseType: !41, size: 32, offset: 224)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nCompletedSharedAccessCount", scope: !15, file: !16, line: 266, baseType: !41, size: 32, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nMagic", scope: !15, file: !16, line: 267, baseType: !41, size: 32, offset: 288)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_callback_t", file: !13, line: 557, baseType: !211)
!510 = !{i32 2, !"Dwarf Version", i32 4}
!511 = !{i32 2, !"Debug Info Version", i32 3}
!512 = !{i32 1, !"wchar_size", i32 4}
!513 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!514 = distinct !DISubprogram(name: "pthread_rwlock_timedwrlock", scope: !1, file: !1, line: 50, type: !515, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !526)
!515 = !DISubroutineType(types: !516)
!516 = !{!41, !517, !518}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !521, line: 52, size: 128, elements: !522)
!521 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!522 = !{!523, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !520, file: !521, line: 53, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !521, line: 34, baseType: !31)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !520, file: !521, line: 54, baseType: !31, size: 64, offset: 64)
!526 = !{!527, !528, !529, !530, !531}
!527 = !DILocalVariable(name: "rwlock", arg: 1, scope: !514, file: !1, line: 50, type: !517)
!528 = !DILocalVariable(name: "abstime", arg: 2, scope: !514, file: !1, line: 51, type: !518)
!529 = !DILocalVariable(name: "result", scope: !514, file: !1, line: 53, type: !41)
!530 = !DILocalVariable(name: "rwl", scope: !514, file: !1, line: 54, type: !12)
!531 = !DILocalVariable(name: "_cleanup", scope: !532, file: !1, line: 114, type: !537)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 114, column: 11)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 107, column: 9)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 106, column: 11)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 99, column: 5)
!536 = distinct !DILexicalBlock(scope: !514, file: !1, line: 98, column: 7)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_t", file: !13, line: 555, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_cleanup_t", file: !13, line: 559, size: 192, elements: !539)
!539 = !{!540, !541, !542}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !538, file: !13, line: 561, baseType: !509, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !538, file: !13, line: 562, baseType: !11, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !538, file: !13, line: 563, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!544 = !DILocation(line: 50, column: 48, scope: !514)
!545 = !DILocation(line: 51, column: 52, scope: !514)
!546 = !DILocation(line: 56, column: 14, scope: !547)
!547 = distinct !DILexicalBlock(scope: !514, file: !1, line: 56, column: 7)
!548 = !DILocation(line: 56, column: 22, scope: !547)
!549 = !DILocation(line: 56, column: 25, scope: !547)
!550 = !{!551, !551, i64 0}
!551 = !{!"any pointer", !552, i64 0}
!552 = !{!"omnipotent char", !553, i64 0}
!553 = !{!"Simple C/C++ TBAA"}
!554 = !DILocation(line: 56, column: 7, scope: !514)
!555 = !DILocation(line: 69, column: 16, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 68, column: 5)
!557 = distinct !DILexicalBlock(scope: !514, file: !1, line: 67, column: 7)
!558 = !DILocation(line: 53, column: 7, scope: !514)
!559 = !DILocation(line: 71, column: 23, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 71, column: 11)
!561 = !DILocation(line: 77, column: 9, scope: !514)
!562 = !DILocation(line: 54, column: 20, scope: !514)
!563 = !DILocation(line: 79, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !514, file: !1, line: 79, column: 7)
!565 = !{!566, !567, i64 36}
!566 = !{!"pthread_rwlock_t_", !551, i64 0, !551, i64 8, !551, i64 16, !567, i64 24, !567, i64 28, !567, i64 32, !567, i64 36}
!567 = !{!"int", !552, i64 0}
!568 = !DILocation(line: 79, column: 19, scope: !564)
!569 = !DILocation(line: 79, column: 7, scope: !514)
!570 = !DILocation(line: 85, column: 42, scope: !571)
!571 = distinct !DILexicalBlock(scope: !514, file: !1, line: 84, column: 7)
!572 = !DILocation(line: 85, column: 10, scope: !571)
!573 = !DILocation(line: 85, column: 73, scope: !571)
!574 = !DILocation(line: 84, column: 7, scope: !514)
!575 = !DILocation(line: 91, column: 42, scope: !576)
!576 = distinct !DILexicalBlock(scope: !514, file: !1, line: 90, column: 7)
!577 = !DILocation(line: 91, column: 10, scope: !576)
!578 = !DILocation(line: 92, column: 45, scope: !576)
!579 = !DILocation(line: 90, column: 7, scope: !514)
!580 = !DILocation(line: 94, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !1, line: 93, column: 5)
!582 = !DILocation(line: 95, column: 7, scope: !581)
!583 = !DILocation(line: 98, column: 12, scope: !536)
!584 = !{!566, !567, i64 28}
!585 = !DILocation(line: 98, column: 34, scope: !536)
!586 = !DILocation(line: 98, column: 7, scope: !514)
!587 = !DILocation(line: 100, column: 16, scope: !588)
!588 = distinct !DILexicalBlock(scope: !535, file: !1, line: 100, column: 11)
!589 = !{!566, !567, i64 32}
!590 = !DILocation(line: 100, column: 44, scope: !588)
!591 = !DILocation(line: 0, scope: !534)
!592 = !{!566, !567, i64 24}
!593 = !DILocation(line: 100, column: 11, scope: !535)
!594 = !DILocation(line: 102, column: 35, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 101, column: 9)
!596 = !DILocation(line: 103, column: 44, scope: !595)
!597 = !DILocation(line: 104, column: 9, scope: !595)
!598 = !DILocation(line: 106, column: 16, scope: !534)
!599 = !DILocation(line: 106, column: 35, scope: !534)
!600 = !DILocation(line: 106, column: 11, scope: !535)
!601 = !DILocation(line: 108, column: 46, scope: !533)
!602 = !DILocation(line: 108, column: 44, scope: !533)
!603 = !DILocation(line: 114, column: 11, scope: !532)
!604 = !DILocation(line: 116, column: 11, scope: !532)
!605 = !DILocation(line: 119, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !532, file: !1, line: 117, column: 13)
!607 = !DILocation(line: 123, column: 25, scope: !532)
!608 = !DILocation(line: 123, column: 30, scope: !532)
!609 = !DILocation(line: 123, column: 38, scope: !532)
!610 = !DILocation(line: 123, column: 66, scope: !532)
!611 = !DILocation(line: 122, column: 13, scope: !606)
!612 = distinct !{!612, !604, !613}
!613 = !DILocation(line: 123, column: 69, scope: !532)
!614 = !DILocation(line: 125, column: 11, scope: !532)
!615 = !DILocation(line: 125, column: 11, scope: !533)
!616 = !DILocation(line: 129, column: 39, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 128, column: 13)
!618 = distinct !DILexicalBlock(scope: !533, file: !1, line: 127, column: 15)
!619 = !DILocation(line: 136, column: 33, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 135, column: 5)
!621 = distinct !DILexicalBlock(scope: !514, file: !1, line: 134, column: 7)
!622 = !DILocation(line: 130, column: 13, scope: !617)
!623 = !DILocation(line: 137, column: 5, scope: !620)
!624 = !DILocation(line: 0, scope: !514)
!625 = !DILocation(line: 140, column: 1, scope: !514)
