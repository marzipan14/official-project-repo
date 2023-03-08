; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutex_destroy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutex_destroy.c"
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
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.pte_handle_t = type { i8*, i32 }

@pte_mutex_test_init_lock = external dso_local local_unnamed_addr global %struct.uk_mutex*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t_** nocapture) local_unnamed_addr #0 !dbg !495 {
  %2 = alloca %struct.pthread_mutex_t_*, align 8
  %3 = bitcast %struct.pthread_mutex_t_** %2 to i8*, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !505
  %4 = load %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_** %0, align 8, !dbg !506, !tbaa !508
  %5 = icmp ult %struct.pthread_mutex_t_* %4, inttoptr (i64 -3 to %struct.pthread_mutex_t_*), !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %5, label %6, label %31, !dbg !513

; <label>:6:                                      ; preds = %1
  store %struct.pthread_mutex_t_* %4, %struct.pthread_mutex_t_** %2, align 8, !dbg !515, !tbaa !508
  %7 = call i32 @pthread_mutex_trylock(%struct.pthread_mutex_t_** nonnull %2) #5, !dbg !517
  %8 = icmp eq i32 %7, 0, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br i1 %8, label %9, label %43, !dbg !520

; <label>:9:                                      ; preds = %6
  %10 = load %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_** %2, align 8, !dbg !521, !tbaa !508
  %11 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %10, i64 0, i32 3, !dbg !524
  %12 = load i32, i32* %11, align 8, !dbg !524, !tbaa !525
  %13 = icmp eq i32 %12, 1, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %13, label %14, label %18, !dbg !530

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %10, i64 0, i32 2, !dbg !531
  %16 = load i32, i32* %15, align 4, !dbg !531, !tbaa !532
  %17 = icmp eq i32 %16, 1, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %17, label %18, label %29, !dbg !534

; <label>:18:                                     ; preds = %9, %14
  store %struct.pthread_mutex_t_* null, %struct.pthread_mutex_t_** %0, align 8, !dbg !535, !tbaa !508
  %19 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %2) #5, !dbg !537
  %20 = icmp eq i32 %19, 0, !dbg !538
  %21 = load %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_** %2, align 8, !dbg !540, !tbaa !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %20, label %22, label %28, !dbg !542

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.pthread_mutex_t_, %struct.pthread_mutex_t_* %21, i64 0, i32 0, !dbg !543
  %24 = load %struct.uk_semaphore*, %struct.uk_semaphore** %23, align 8, !dbg !543, !tbaa !545
  %25 = call i32 @pte_osSemaphoreDelete(%struct.uk_semaphore* %24) #5, !dbg !546
  %26 = bitcast %struct.pthread_mutex_t_** %2 to i8**, !dbg !547
  %27 = load i8*, i8** %26, align 8, !dbg !547, !tbaa !508
  call void @free(i8* %27) #5, !dbg !548
  br label %41, !dbg !549

; <label>:28:                                     ; preds = %18
  store %struct.pthread_mutex_t_* %21, %struct.pthread_mutex_t_** %0, align 8, !dbg !550, !tbaa !508
  br label %41

; <label>:29:                                     ; preds = %14
  %30 = add nsw i32 %16, -1, !dbg !551
  store i32 %30, i32* %15, align 4, !dbg !551, !tbaa !532
  br label %41

; <label>:31:                                     ; preds = %1
  %32 = load %struct.uk_mutex*, %struct.uk_mutex** @pte_mutex_test_init_lock, align 8, !dbg !553, !tbaa !508
  %33 = tail call i32 @pte_osMutexLock(%struct.uk_mutex* %32) #5, !dbg !555
  %34 = load %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_** %0, align 8, !dbg !556, !tbaa !508
  %35 = icmp ult %struct.pthread_mutex_t_* %34, inttoptr (i64 -3 to %struct.pthread_mutex_t_*), !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %35, label %37, label %36, !dbg !559

; <label>:36:                                     ; preds = %31
  store %struct.pthread_mutex_t_* null, %struct.pthread_mutex_t_** %0, align 8, !dbg !560, !tbaa !508
  br label %37, !dbg !562

; <label>:37:                                     ; preds = %31, %36
  %38 = phi i32 [ 0, %36 ], [ 16, %31 ], !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = load %struct.uk_mutex*, %struct.uk_mutex** @pte_mutex_test_init_lock, align 8, !dbg !565, !tbaa !508
  %40 = tail call i32 @pte_osMutexUnlock(%struct.uk_mutex* %39) #5, !dbg !566
  br label %41

; <label>:41:                                     ; preds = %37, %29, %28, %22
  %42 = phi i32 [ %38, %37 ], [ 16, %29 ], [ %19, %28 ], [ 0, %22 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %43, !dbg !567

; <label>:43:                                     ; preds = %41, %6
  %44 = phi i32 [ %7, %6 ], [ %42, %41 ], !dbg !568
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  ret i32 %44, !dbg !569
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_trylock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphoreDelete(%struct.uk_semaphore*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!491, !492, !493}
!llvm.ident = !{!494}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutex_destroy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10}
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
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 417, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !26, line: 146, size: 320, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !481, !482, !483, !484}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !25, file: !26, line: 148, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !30, line: 12, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !33, line: 51, size: 192, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !32, file: !33, line: 52, baseType: !36, size: 64)
!36 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !32, file: !33, line: 53, baseType: !38, size: 128, offset: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !39, line: 42, size: 128, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !479}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !38, file: !39, line: 42, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !39, line: 35, size: 192, elements: !44)
!44 = !{!45, !47, !475}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !43, file: !39, line: 36, baseType: !46, size: 32)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !43, file: !39, line: 37, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !50, line: 59, size: 1024, elements: !51)
!50 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !{!52, !56, !58, !59, !60, !66, !71, !76, !78, !79, !230, !231, !232, !445}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !50, line: 60, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !49, file: !50, line: 61, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !49, file: !50, line: 62, baseType: !57, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !49, file: !50, line: 63, baseType: !57, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !49, file: !50, line: 64, baseType: !61, size: 128, offset: 256)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !49, file: !50, line: 64, size: 128, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !61, file: !50, line: 64, baseType: !48, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !61, file: !50, line: 64, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !50, line: 65, baseType: !67, size: 32, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !68, line: 48, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !70, line: 79, baseType: !5)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !49, file: !50, line: 66, baseType: !72, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !73, line: 49, baseType: !74)
!73 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !75, line: 128, baseType: !36)
!75 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !49, file: !50, line: 67, baseType: !77, size: 8, offset: 512)
!77 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !49, file: !50, line: 68, baseType: !38, size: 128, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !49, file: !50, line: 69, baseType: !80, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !82, line: 90, size: 2176, elements: !83)
!82 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !{!84, !89, !107, !112, !114, !116, !121, !129, !134, !140, !141, !142, !147, !227, !228, !229}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !81, file: !82, line: 91, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !82, line: 68, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !80}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !81, file: !82, line: 93, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !82, line: 71, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!46, !80, !48, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !97, line: 62, baseType: !98)
!97 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !97, line: 55, size: 128, elements: !99)
!99 = !{!100, !101, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !98, file: !97, line: 57, baseType: !77, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !98, file: !97, line: 59, baseType: !102, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !97, line: 53, baseType: !46)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !98, file: !97, line: 61, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !73, line: 48, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !75, line: 129, baseType: !106)
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !81, file: !82, line: 94, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !82, line: 74, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !80, !48}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !81, file: !82, line: 95, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !82, line: 76, baseType: !109)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !81, file: !82, line: 96, baseType: !115, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !82, line: 78, baseType: !109)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !81, file: !82, line: 98, baseType: !117, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !82, line: 81, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!46, !80, !48, !102}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !81, file: !82, line: 99, baseType: !122, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !82, line: 83, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!46, !80, !126, !128}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !81, file: !82, line: 100, baseType: !130, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !82, line: 85, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!46, !80, !48, !46}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !81, file: !82, line: 101, baseType: !135, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !82, line: 87, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!46, !80, !126, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !81, file: !82, line: 104, baseType: !77, size: 8, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !81, file: !82, line: 105, baseType: !49, size: 1024, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !81, file: !82, line: 106, baseType: !143, size: 128, offset: 1664)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !50, line: 93, size: 128, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !143, file: !50, line: 93, baseType: !48, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !143, file: !50, line: 93, baseType: !65, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !81, file: !82, line: 107, baseType: !148, size: 192, offset: 1792)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !149, line: 59, size: 192, elements: !150)
!149 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!150 = !{!151, !218, !222}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !148, file: !149, line: 61, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !149, line: 51, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!57, !156, !106, !106}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !158, line: 77, size: 832, elements: !159)
!158 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!159 = !{!160, !169, !174, !179, !185, !187, !192, !193, !194, !199, !204, !209, !210, !211}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !157, file: !158, line: 79, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !158, line: 54, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!57, !156, !165}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 40, baseType: !167)
!166 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !168, line: 129, baseType: !106)
!168 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !157, file: !158, line: 80, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !158, line: 56, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!57, !156, !165, !165}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !157, file: !158, line: 81, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !158, line: 62, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!57, !156, !57, !165}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !157, file: !158, line: 82, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !158, line: 58, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!46, !156, !184, !165, !165}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !157, file: !158, line: 83, baseType: !186, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !158, line: 60, baseType: !171)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !157, file: !158, line: 84, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !158, line: 64, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !156, !57}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !157, file: !158, line: 87, baseType: !188, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !157, file: !158, line: 88, baseType: !161, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !157, file: !158, line: 92, baseType: !195, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !158, line: 66, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!57, !156, !106}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !157, file: !158, line: 93, baseType: !200, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !158, line: 68, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !156, !57, !106}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !157, file: !158, line: 99, baseType: !205, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !158, line: 70, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!46, !156, !57, !165}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !157, file: !158, line: 100, baseType: !165, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 103, baseType: !156, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !157, file: !158, line: 104, baseType: !212, offset: 832)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, elements: !216)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !68, line: 20, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !70, line: 41, baseType: !215)
!215 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!216 = !{!217}
!217 = !DISubrange(count: -1)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !148, file: !149, line: 63, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !57}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !148, file: !149, line: 65, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !149, line: 56, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !57, !57}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !81, file: !82, line: 108, baseType: !156, size: 64, offset: 1984)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !82, line: 109, baseType: !80, size: 64, offset: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !81, file: !82, line: 110, baseType: !57, size: 64, offset: 2112)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !49, file: !50, line: 70, baseType: !57, size: 64, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !49, file: !50, line: 72, baseType: !46, size: 32, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !49, file: !50, line: 82, baseType: !233, size: 64, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !235, line: 569, size: 14912, elements: !236)
!235 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!236 = !{!237, !238, !313, !314, !315, !316, !320, !321, !324, !325, !329, !341, !342, !343, !345, !346, !347, !409, !430, !431, !436, !443}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !234, file: !235, line: 571, baseType: !46, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !234, file: !235, line: 576, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !235, line: 287, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !235, line: 181, size: 1408, elements: !242)
!242 = !{!243, !246, !247, !248, !250, !251, !256, !257, !258, !264, !268, !273, !277, !278, !279, !280, !284, !288, !289, !290, !292, !293, !297, !312}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !241, file: !235, line: 182, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !241, file: !235, line: 183, baseType: !46, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !241, file: !235, line: 184, baseType: !46, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !241, file: !235, line: 185, baseType: !249, size: 16, offset: 128)
!249 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !241, file: !235, line: 186, baseType: !249, size: 16, offset: 144)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !241, file: !235, line: 187, baseType: !252, size: 128, offset: 192)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !235, line: 117, size: 128, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !252, file: !235, line: 118, baseType: !244, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !252, file: !235, line: 119, baseType: !46, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !241, file: !235, line: 188, baseType: !46, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !241, file: !235, line: 195, baseType: !57, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !241, file: !235, line: 197, baseType: !259, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !233, !57, !263, !46}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !168, line: 145, baseType: !36)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !241, file: !235, line: 199, baseType: !265, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!262, !233, !57, !53, !46}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !241, file: !235, line: 202, baseType: !269, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !233, !57, !272, !46}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !168, line: 114, baseType: !36)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !241, file: !235, line: 203, baseType: !274, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!46, !233, !57}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !241, file: !235, line: 206, baseType: !252, size: 128, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !241, file: !235, line: 207, baseType: !244, size: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !241, file: !235, line: 208, baseType: !46, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !241, file: !235, line: 211, baseType: !281, size: 24, offset: 928)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 24, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 3)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !241, file: !235, line: 212, baseType: !285, size: 8, offset: 952)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 8, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 1)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !241, file: !235, line: 215, baseType: !252, size: 128, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !241, file: !235, line: 218, baseType: !46, size: 32, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !241, file: !235, line: 219, baseType: !291, size: 64, offset: 1152)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !168, line: 44, baseType: !36)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !241, file: !235, line: 222, baseType: !233, size: 64, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !241, file: !235, line: 226, baseType: !294, size: 32, offset: 1280)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !168, line: 175, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !296, line: 12, baseType: !46)
!296 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !241, file: !235, line: 228, baseType: !298, size: 64, offset: 1312)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !168, line: 171, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 163, size: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !299, file: !168, line: 165, baseType: !46, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !299, file: !168, line: 170, baseType: !303, size: 32, offset: 32)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !168, line: 166, size: 32, elements: !304)
!304 = !{!305, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !303, file: !168, line: 168, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !307, line: 124, baseType: !5)
!307 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !303, file: !168, line: 169, baseType: !309, size: 32)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 32, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 4)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !241, file: !235, line: 229, baseType: !46, size: 32, offset: 1376)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !234, file: !235, line: 576, baseType: !239, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !234, file: !235, line: 576, baseType: !239, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !234, file: !235, line: 578, baseType: !46, size: 32, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !234, file: !235, line: 579, baseType: !317, size: 200, offset: 288)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 200, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 25)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !234, file: !235, line: 582, baseType: !46, size: 32, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !234, file: !235, line: 583, baseType: !322, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !235, line: 40, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !234, file: !235, line: 585, baseType: !46, size: 32, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !234, file: !235, line: 587, baseType: !326, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !233}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !234, file: !235, line: 590, baseType: !330, size: 64, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !235, line: 47, size: 256, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !331, file: !235, line: 49, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !331, file: !235, line: 50, baseType: !46, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !331, file: !235, line: 50, baseType: !46, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !331, file: !235, line: 50, baseType: !46, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !331, file: !235, line: 50, baseType: !46, size: 32, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !331, file: !235, line: 51, baseType: !339, size: 32, offset: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 32, elements: !286)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !235, line: 25, baseType: !5)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !234, file: !235, line: 591, baseType: !46, size: 32, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !234, file: !235, line: 592, baseType: !330, size: 64, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !234, file: !235, line: 593, baseType: !344, size: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !234, file: !235, line: 596, baseType: !46, size: 32, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !234, file: !235, line: 597, baseType: !263, size: 64, offset: 1088)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !234, file: !235, line: 632, baseType: !348, size: 2880, offset: 1152)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !235, line: 599, size: 2880, elements: !349)
!349 = !{!350, !400}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !348, file: !235, line: 622, baseType: !351, size: 1728)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !235, line: 601, size: 1728, elements: !352)
!352 = !{!353, !354, !355, !359, !371, !372, !374, !382, !383, !384, !385, !389, !393, !394, !395, !396, !397, !398, !399}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !351, file: !235, line: 603, baseType: !5, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !351, file: !235, line: 604, baseType: !263, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !351, file: !235, line: 605, baseType: !356, size: 208, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 208, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 26)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !351, file: !235, line: 606, baseType: !360, size: 288, offset: 352)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !235, line: 55, size: 288, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !360, file: !235, line: 57, baseType: !46, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !360, file: !235, line: 58, baseType: !46, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !360, file: !235, line: 59, baseType: !46, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !360, file: !235, line: 60, baseType: !46, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !360, file: !235, line: 61, baseType: !46, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !360, file: !235, line: 62, baseType: !46, size: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !360, file: !235, line: 63, baseType: !46, size: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !360, file: !235, line: 64, baseType: !46, size: 32, offset: 224)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !360, file: !235, line: 65, baseType: !46, size: 32, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !351, file: !235, line: 607, baseType: !46, size: 32, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !351, file: !235, line: 608, baseType: !373, size: 64, offset: 704)
!373 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !351, file: !235, line: 609, baseType: !375, size: 112, offset: 768)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !235, line: 319, size: 112, elements: !376)
!376 = !{!377, !380, !381}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !375, file: !235, line: 320, baseType: !378, size: 48)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 48, elements: !282)
!379 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !375, file: !235, line: 321, baseType: !378, size: 48, offset: 48)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !375, file: !235, line: 322, baseType: !379, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !351, file: !235, line: 610, baseType: !298, size: 64, offset: 896)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !351, file: !235, line: 611, baseType: !298, size: 64, offset: 960)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !351, file: !235, line: 612, baseType: !298, size: 64, offset: 1024)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !351, file: !235, line: 613, baseType: !386, size: 64, offset: 1088)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !351, file: !235, line: 614, baseType: !390, size: 192, offset: 1152)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 192, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 24)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !351, file: !235, line: 615, baseType: !46, size: 32, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !351, file: !235, line: 616, baseType: !298, size: 64, offset: 1376)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !351, file: !235, line: 617, baseType: !298, size: 64, offset: 1440)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !351, file: !235, line: 618, baseType: !298, size: 64, offset: 1504)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !351, file: !235, line: 619, baseType: !298, size: 64, offset: 1568)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !351, file: !235, line: 620, baseType: !298, size: 64, offset: 1632)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !351, file: !235, line: 621, baseType: !46, size: 32, offset: 1696)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !348, file: !235, line: 631, baseType: !401, size: 2880)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !235, line: 626, size: 2880, elements: !402)
!402 = !{!403, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !401, file: !235, line: 629, baseType: !404, size: 1920)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 1920, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 30)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !401, file: !235, line: 630, baseType: !408, size: 960, offset: 1920)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !405)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !234, file: !235, line: 636, baseType: !410, size: 64, offset: 4032)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !235, line: 93, size: 6336, elements: !412)
!412 = !{!413, !414, !415, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !411, file: !235, line: 94, baseType: !410, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !411, file: !235, line: 95, baseType: !46, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !411, file: !235, line: 97, baseType: !416, size: 2048, offset: 128)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 2048, elements: !420)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null}
!420 = !{!421}
!421 = !DISubrange(count: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !411, file: !235, line: 98, baseType: !423, size: 4160, offset: 2176)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !235, line: 74, size: 4160, elements: !424)
!424 = !{!425, !427, !428, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !423, file: !235, line: 75, baseType: !426, size: 2048)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2048, elements: !420)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !423, file: !235, line: 76, baseType: !426, size: 2048, offset: 2048)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !423, file: !235, line: 78, baseType: !340, size: 32, offset: 4096)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !423, file: !235, line: 81, baseType: !340, size: 32, offset: 4128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !234, file: !235, line: 637, baseType: !411, size: 6336, offset: 4096)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !234, file: !235, line: 641, baseType: !432, size: 64, offset: 10432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !46}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !234, file: !235, line: 646, baseType: !437, size: 192, offset: 10496)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !235, line: 291, size: 192, elements: !438)
!438 = !{!439, !441, !442}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !437, file: !235, line: 293, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !437, file: !235, line: 294, baseType: !46, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !437, file: !235, line: 295, baseType: !239, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !234, file: !235, line: 648, baseType: !444, size: 4224, offset: 10688)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 4224, elements: !282)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !49, file: !50, line: 85, baseType: !446, size: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !448)
!448 = !{!449, !453, !454, !461, !474}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !447, file: !4, line: 116, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !451, line: 64, baseType: !452)
!451 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !451, line: 63, baseType: !106)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !447, file: !4, line: 118, baseType: !450, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !447, file: !4, line: 120, baseType: !455, size: 128, offset: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !456, line: 51, size: 128, elements: !457)
!456 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!457 = !{!458, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !456, line: 52, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !455, file: !456, line: 53, baseType: !459, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !447, file: !4, line: 122, baseType: !462, size: 256, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !462, file: !4, line: 107, baseType: !3, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !462, file: !4, line: 109, baseType: !450, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !462, file: !4, line: 111, baseType: !467, size: 96, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !451, line: 72, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 68, size: 96, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !468, file: !451, line: 69, baseType: !46, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !468, file: !451, line: 70, baseType: !46, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !468, file: !451, line: 71, baseType: !473, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !451, line: 61, baseType: !46)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !447, file: !4, line: 124, baseType: !455, size: 128, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !43, file: !39, line: 38, baseType: !476, size: 64, offset: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !43, file: !39, line: 38, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !476, file: !39, line: 38, baseType: !42, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !38, file: !39, line: 42, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !25, file: !26, line: 149, baseType: !46, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !25, file: !26, line: 156, baseType: !46, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !25, file: !26, line: 159, baseType: !46, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !25, file: !26, line: 160, baseType: !485, size: 128, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 413, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !11, line: 411, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 395, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !487, file: !11, line: 398, baseType: !57, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !487, file: !11, line: 399, baseType: !5, size: 32, offset: 64)
!491 = !{i32 2, !"Dwarf Version", i32 4}
!492 = !{i32 2, !"Debug Info Version", i32 3}
!493 = !{i32 1, !"wchar_size", i32 4}
!494 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!495 = distinct !DISubprogram(name: "pthread_mutex_destroy", scope: !1, file: !1, line: 52, type: !496, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !499)
!496 = !DISubroutineType(types: !497)
!497 = !{!46, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "mutex", arg: 1, scope: !495, file: !1, line: 52, type: !498)
!501 = !DILocalVariable(name: "result", scope: !495, file: !1, line: 54, type: !46)
!502 = !DILocalVariable(name: "mx", scope: !495, file: !1, line: 55, type: !23)
!503 = !DILocation(line: 52, column: 42, scope: !495)
!504 = !DILocation(line: 54, column: 7, scope: !495)
!505 = !DILocation(line: 55, column: 3, scope: !495)
!506 = !DILocation(line: 64, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !495, file: !1, line: 64, column: 7)
!508 = !{!509, !509, i64 0}
!509 = !{!"any pointer", !510, i64 0}
!510 = !{!"omnipotent char", !511, i64 0}
!511 = !{!"Simple C/C++ TBAA"}
!512 = !DILocation(line: 64, column: 14, scope: !507)
!513 = !DILocation(line: 64, column: 7, scope: !495)
!514 = !DILocation(line: 55, column: 19, scope: !495)
!515 = !DILocation(line: 66, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !507, file: !1, line: 65, column: 5)
!517 = !DILocation(line: 68, column: 16, scope: !516)
!518 = !DILocation(line: 74, column: 18, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !1, line: 74, column: 11)
!520 = !DILocation(line: 74, column: 11, scope: !516)
!521 = !DILocation(line: 76, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 76, column: 15)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 75, column: 9)
!524 = !DILocation(line: 76, column: 19, scope: !522)
!525 = !{!526, !527, i64 16}
!526 = !{!"pthread_mutex_t_", !509, i64 0, !527, i64 8, !527, i64 12, !527, i64 16, !528, i64 24}
!527 = !{!"int", !510, i64 0}
!528 = !{!"", !509, i64 0, !527, i64 8}
!529 = !DILocation(line: 76, column: 24, scope: !522)
!530 = !DILocation(line: 76, column: 51, scope: !522)
!531 = !DILocation(line: 76, column: 63, scope: !522)
!532 = !{!526, !527, i64 12}
!533 = !DILocation(line: 76, column: 56, scope: !522)
!534 = !DILocation(line: 76, column: 15, scope: !523)
!535 = !DILocation(line: 89, column: 22, scope: !536)
!536 = distinct !DILexicalBlock(scope: !522, file: !1, line: 77, column: 13)
!537 = !DILocation(line: 91, column: 24, scope: !536)
!538 = !DILocation(line: 93, column: 26, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 93, column: 19)
!540 = !DILocation(line: 0, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !1, line: 101, column: 17)
!542 = !DILocation(line: 93, column: 19, scope: !536)
!543 = !DILocation(line: 95, column: 45, scope: !544)
!544 = distinct !DILexicalBlock(scope: !539, file: !1, line: 94, column: 17)
!545 = !{!526, !509, i64 0}
!546 = !DILocation(line: 95, column: 19, scope: !544)
!547 = !DILocation(line: 97, column: 24, scope: !544)
!548 = !DILocation(line: 97, column: 19, scope: !544)
!549 = !DILocation(line: 99, column: 17, scope: !544)
!550 = !DILocation(line: 105, column: 26, scope: !541)
!551 = !DILocation(line: 113, column: 34, scope: !552)
!552 = distinct !DILexicalBlock(scope: !522, file: !1, line: 109, column: 13)
!553 = !DILocation(line: 124, column: 24, scope: !554)
!554 = distinct !DILexicalBlock(scope: !507, file: !1, line: 119, column: 5)
!555 = !DILocation(line: 124, column: 7, scope: !554)
!556 = !DILocation(line: 130, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !1, line: 130, column: 11)
!558 = !DILocation(line: 130, column: 18, scope: !557)
!559 = !DILocation(line: 130, column: 11, scope: !554)
!560 = !DILocation(line: 138, column: 18, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !1, line: 131, column: 9)
!562 = !DILocation(line: 139, column: 9, scope: !561)
!563 = !DILocation(line: 0, scope: !564)
!564 = distinct !DILexicalBlock(scope: !557, file: !1, line: 141, column: 9)
!565 = !DILocation(line: 149, column: 25, scope: !554)
!566 = !DILocation(line: 149, column: 7, scope: !554)
!567 = !DILocation(line: 154, column: 1, scope: !495)
!568 = !DILocation(line: 0, scope: !495)
!569 = !DILocation(line: 153, column: 3, scope: !495)
