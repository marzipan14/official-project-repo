; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_once.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_once.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_once_t_ = type { i32, i8*, i32, i32 }
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

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_once(%struct.pthread_once_t_*, void ()*) local_unnamed_addr #0 !dbg !477 {
  %3 = alloca %struct.uk_semaphore*, align 8
  %4 = alloca %struct.pte_cleanup_t, align 8
  %5 = bitcast %struct.uk_semaphore** %3 to i8*, !dbg !512
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !512
  %6 = icmp eq %struct.pthread_once_t_* %0, null, !dbg !513
  %7 = icmp eq void ()* %1, null, !dbg !515
  %8 = or i1 %6, %7, !dbg !516
  br i1 %8, label %59, label %9, !dbg !516

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pthread_once_t_, %struct.pthread_once_t_* %0, i64 0, i32 0
  %11 = getelementptr inbounds %struct.pthread_once_t_, %struct.pthread_once_t_* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.pthread_once_t_, %struct.pthread_once_t_* %0, i64 0, i32 1
  %13 = bitcast i8** %12 to i64*
  %14 = bitcast %struct.pte_cleanup_t* %4 to i8*
  %15 = bitcast %struct.pthread_once_t_* %0 to i8*
  %16 = bitcast %struct.uk_semaphore** %3 to i64*
  %17 = bitcast i8** %12 to %struct.uk_semaphore**
  br label %18, !dbg !517

; <label>:18:                                     ; preds = %26, %9
  %19 = load i32, i32* %10, align 8, !dbg !517, !tbaa !518
  %20 = cmpxchg i32* %10, i32 0, i32 1 seq_cst seq_cst, !dbg !524
  switch i32 %19, label %31 [
    i32 2, label %59
    i32 0, label %21
  ], !dbg !526

; <label>:21:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #4, !dbg !527
  call void @pte_push_cleanup(%struct.pte_cleanup_t* nonnull %4, void (i8*)* nonnull @pte_once_init_routine_cleanup, i8* nonnull %15) #5, !dbg !527
  call void %1() #5, !dbg !528
  %22 = call %struct.pte_cleanup_t* @pte_pop_cleanup(i32 0) #5, !dbg !529
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #4, !dbg !530
  %23 = atomicrmw xchg i32* %10, i32 2 seq_cst, !dbg !531
  %24 = atomicrmw add i64* %13, i64 0 seq_cst, !dbg !532
  %25 = icmp eq i64 %24, 0, !dbg !532
  br i1 %25, label %26, label %27, !dbg !534

; <label>:26:                                     ; preds = %21, %53, %50, %57, %27
  br label %18, !dbg !517, !llvm.loop !535

; <label>:27:                                     ; preds = %21
  %28 = load %struct.uk_semaphore*, %struct.uk_semaphore** %17, align 8, !dbg !537, !tbaa !539
  %29 = load i32, i32* %11, align 8, !dbg !540, !tbaa !541
  %30 = call i32 @pte_osSemaphorePost(%struct.uk_semaphore* %28, i32 %29) #5, !dbg !542
  br label %26, !dbg !543

; <label>:31:                                     ; preds = %18
  %32 = atomicrmw add i32* %11, i32 1 seq_cst, !dbg !544
  %33 = atomicrmw add i64* %13, i64 0 seq_cst, !dbg !545
  %34 = icmp eq i64 %33, 0, !dbg !545
  br i1 %34, label %35, label %44, !dbg !546

; <label>:35:                                     ; preds = %31
  %36 = call i32 @pte_osSemaphoreCreate(i32 0, %struct.uk_semaphore** nonnull %3) #5, !dbg !548
  %37 = load i64, i64* %13, align 8, !dbg !549, !tbaa !550
  %38 = load i64, i64* %16, align 8, !dbg !552, !tbaa !553
  %39 = cmpxchg i64* %13, i64 0, i64 %38 seq_cst seq_cst, !dbg !552
  %40 = icmp eq i64 %37, 0, !dbg !554
  br i1 %40, label %44, label %41, !dbg !555

; <label>:41:                                     ; preds = %35
  %42 = load %struct.uk_semaphore*, %struct.uk_semaphore** %3, align 8, !dbg !552
  %43 = call i32 @pte_osSemaphoreDelete(%struct.uk_semaphore* %42) #5, !dbg !556
  br label %44, !dbg !558

; <label>:44:                                     ; preds = %35, %31, %41
  %45 = atomicrmw add i32* %10, i32 0 seq_cst, !dbg !559
  %46 = icmp eq i32 %45, 1, !dbg !561
  br i1 %46, label %47, label %50, !dbg !562

; <label>:47:                                     ; preds = %44
  %48 = load %struct.uk_semaphore*, %struct.uk_semaphore** %17, align 8, !dbg !563, !tbaa !539
  %49 = call i32 @pte_osSemaphorePend(%struct.uk_semaphore* %48, i32* null) #5, !dbg !565
  br label %50, !dbg !566

; <label>:50:                                     ; preds = %47, %44
  %51 = atomicrmw add i32* %11, i32 -1 seq_cst, !dbg !567
  %52 = icmp eq i32 %51, 1, !dbg !569
  br i1 %52, label %53, label %26, !dbg !570

; <label>:53:                                     ; preds = %50
  %54 = atomicrmw xchg i64* %13, i64 0 seq_cst, !dbg !571
  %55 = inttoptr i64 %54 to %struct.uk_semaphore*, !dbg !574
  store %struct.uk_semaphore* %55, %struct.uk_semaphore** %3, align 8, !dbg !575, !tbaa !553
  %56 = icmp eq i64 %54, 0, !dbg !575
  br i1 %56, label %26, label %57, !dbg !576

; <label>:57:                                     ; preds = %53
  %58 = call i32 @pte_osSemaphoreDelete(%struct.uk_semaphore* %55) #5, !dbg !577
  br label %26, !dbg !579

; <label>:59:                                     ; preds = %18, %2
  %60 = phi i32 [ 22, %2 ], [ 0, %18 ], !dbg !580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !583
  ret i32 %60, !dbg !584
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @pte_push_cleanup(%struct.pte_cleanup_t*, void (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal void @pte_once_init_routine_cleanup(i8* nocapture) #0 !dbg !585 {
  %2 = bitcast i8* %0 to i32*, !dbg !591
  %3 = atomicrmw xchg i32* %2, i32 0 seq_cst, !dbg !591
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !592
  %5 = bitcast i8* %4 to i64*, !dbg !592
  %6 = atomicrmw add i64* %5, i64 0 seq_cst, !dbg !592
  %7 = icmp eq i64 %6, 0, !dbg !592
  br i1 %7, label %12, label %8, !dbg !594

; <label>:8:                                      ; preds = %1
  %9 = bitcast i8* %4 to %struct.uk_semaphore**, !dbg !595
  %10 = load %struct.uk_semaphore*, %struct.uk_semaphore** %9, align 8, !dbg !595, !tbaa !539
  %11 = tail call i32 @pte_osSemaphorePost(%struct.uk_semaphore* %10, i32 1) #5, !dbg !597
  br label %12, !dbg !598

; <label>:12:                                     ; preds = %1, %8
  ret void, !dbg !599
}

; Function Attrs: noredzone
declare dso_local %struct.pte_cleanup_t* @pte_pop_cleanup(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphorePost(%struct.uk_semaphore*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphoreCreate(i32, %struct.uk_semaphore**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphoreDelete(%struct.uk_semaphore*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphorePend(%struct.uk_semaphore*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!473, !474, !475}
!llvm.ident = !{!476}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_once.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !{!11, !12, !17, !19, !464, !18, !465}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_callback_t", file: !13, line: 557, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !11}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !20, line: 12, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !23, line: 51, size: 192, elements: !24)
!23 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !22, file: !23, line: 52, baseType: !18, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !22, file: !23, line: 53, baseType: !27, size: 128, offset: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !28, line: 42, size: 128, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !462}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !27, file: !28, line: 42, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !28, line: 35, size: 192, elements: !33)
!33 = !{!34, !36, !458}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !32, file: !28, line: 36, baseType: !35, size: 32)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !32, file: !28, line: 37, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !39, line: 59, size: 1024, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !45, !46, !47, !48, !54, !59, !64, !66, !67, !213, !214, !215, !428}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !39, line: 60, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !38, file: !39, line: 61, baseType: !11, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !38, file: !39, line: 62, baseType: !11, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !38, file: !39, line: 63, baseType: !11, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !38, file: !39, line: 64, baseType: !49, size: 128, offset: 256)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !39, line: 64, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !49, file: !39, line: 64, baseType: !37, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !49, file: !39, line: 64, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !39, line: 65, baseType: !55, size: 32, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !56, line: 48, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !58, line: 79, baseType: !5)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !38, file: !39, line: 66, baseType: !60, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !61, line: 49, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !63, line: 128, baseType: !18)
!63 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !38, file: !39, line: 67, baseType: !65, size: 8, offset: 512)
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !38, file: !39, line: 68, baseType: !27, size: 128, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !38, file: !39, line: 69, baseType: !68, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !70, line: 90, size: 2176, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !77, !95, !100, !102, !104, !109, !117, !122, !128, !129, !130, !135, !210, !211, !212}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !69, file: !70, line: 91, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !70, line: 68, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !68}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !69, file: !70, line: 93, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !70, line: 71, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!35, !68, !37, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !85, line: 62, baseType: !86)
!85 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !85, line: 55, size: 128, elements: !87)
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !86, file: !85, line: 57, baseType: !65, size: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !86, file: !85, line: 59, baseType: !90, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !85, line: 53, baseType: !35)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !86, file: !85, line: 61, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !61, line: 48, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !63, line: 129, baseType: !94)
!94 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !69, file: !70, line: 94, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !70, line: 74, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !68, !37}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !69, file: !70, line: 95, baseType: !101, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !70, line: 76, baseType: !97)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !69, file: !70, line: 96, baseType: !103, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !70, line: 78, baseType: !97)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !69, file: !70, line: 98, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !70, line: 81, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!35, !68, !37, !90}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !69, file: !70, line: 99, baseType: !110, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !70, line: 83, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!35, !68, !114, !116}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !69, file: !70, line: 100, baseType: !118, size: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !70, line: 85, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!35, !68, !37, !35}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !69, file: !70, line: 101, baseType: !123, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !70, line: 87, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!35, !68, !114, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !69, file: !70, line: 104, baseType: !65, size: 8, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !69, file: !70, line: 105, baseType: !38, size: 1024, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !69, file: !70, line: 106, baseType: !131, size: 128, offset: 1664)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !39, line: 93, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !131, file: !39, line: 93, baseType: !37, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !131, file: !39, line: 93, baseType: !53, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !69, file: !70, line: 107, baseType: !136, size: 192, offset: 1792)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !137, line: 59, size: 192, elements: !138)
!137 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!138 = !{!139, !204, !205}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !136, file: !137, line: 61, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !137, line: 51, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!11, !144, !94, !94}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !146, line: 77, size: 832, elements: !147)
!146 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!147 = !{!148, !155, !160, !165, !171, !173, !178, !179, !180, !185, !190, !195, !196, !197}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !145, file: !146, line: 79, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !146, line: 54, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!11, !144, !153}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 58, baseType: !94)
!154 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !145, file: !146, line: 80, baseType: !156, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !146, line: 56, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!11, !144, !153, !153}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !145, file: !146, line: 81, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !146, line: 62, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!11, !144, !11, !153}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !145, file: !146, line: 82, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !146, line: 58, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!35, !144, !170, !153, !153}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !145, file: !146, line: 83, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !146, line: 60, baseType: !157)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !145, file: !146, line: 84, baseType: !174, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !146, line: 64, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !144, !11}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !145, file: !146, line: 87, baseType: !174, size: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !145, file: !146, line: 88, baseType: !149, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !145, file: !146, line: 92, baseType: !181, size: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !146, line: 66, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!11, !144, !94}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !145, file: !146, line: 93, baseType: !186, size: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !146, line: 68, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !144, !11, !94}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !145, file: !146, line: 99, baseType: !191, size: 64, offset: 640)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !146, line: 70, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!35, !144, !11, !153}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !145, file: !146, line: 100, baseType: !153, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 103, baseType: !144, size: 64, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !145, file: !146, line: 104, baseType: !198, offset: 832)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !202)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !56, line: 20, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !58, line: 41, baseType: !201)
!201 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!202 = !{!203}
!203 = !DISubrange(count: -1)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !136, file: !137, line: 63, baseType: !14, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !136, file: !137, line: 65, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !137, line: 56, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !11, !11}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !69, file: !70, line: 108, baseType: !144, size: 64, offset: 1984)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !70, line: 109, baseType: !68, size: 64, offset: 2048)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !69, file: !70, line: 110, baseType: !11, size: 64, offset: 2112)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !38, file: !39, line: 70, baseType: !11, size: 64, offset: 768)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !38, file: !39, line: 72, baseType: !35, size: 32, offset: 832)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !38, file: !39, line: 82, baseType: !216, size: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !218, line: 569, size: 14912, elements: !219)
!218 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!219 = !{!220, !221, !296, !297, !298, !299, !303, !304, !307, !308, !312, !324, !325, !326, !328, !329, !330, !392, !413, !414, !419, !426}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !217, file: !218, line: 571, baseType: !35, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !217, file: !218, line: 576, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !218, line: 287, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !218, line: 181, size: 1408, elements: !225)
!225 = !{!226, !229, !230, !231, !233, !234, !239, !240, !241, !248, !252, !257, !261, !262, !263, !264, !268, !272, !273, !274, !276, !277, !281, !295}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !224, file: !218, line: 182, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !224, file: !218, line: 183, baseType: !35, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !224, file: !218, line: 184, baseType: !35, size: 32, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !224, file: !218, line: 185, baseType: !232, size: 16, offset: 128)
!232 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !224, file: !218, line: 186, baseType: !232, size: 16, offset: 144)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !224, file: !218, line: 187, baseType: !235, size: 128, offset: 192)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !218, line: 117, size: 128, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !235, file: !218, line: 118, baseType: !227, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !235, file: !218, line: 119, baseType: !35, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !224, file: !218, line: 188, baseType: !35, size: 32, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !224, file: !218, line: 195, baseType: !11, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !224, file: !218, line: 197, baseType: !242, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !216, !11, !247, !35}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !246, line: 145, baseType: !18)
!246 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !224, file: !218, line: 199, baseType: !249, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!245, !216, !11, !42, !35}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !224, file: !218, line: 202, baseType: !253, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !216, !11, !256, !35}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !246, line: 114, baseType: !18)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !224, file: !218, line: 203, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!35, !216, !11}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !224, file: !218, line: 206, baseType: !235, size: 128, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !224, file: !218, line: 207, baseType: !227, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !224, file: !218, line: 208, baseType: !35, size: 32, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !224, file: !218, line: 211, baseType: !265, size: 24, offset: 928)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 24, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 3)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !224, file: !218, line: 212, baseType: !269, size: 8, offset: 952)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 8, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 1)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !224, file: !218, line: 215, baseType: !235, size: 128, offset: 960)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !224, file: !218, line: 218, baseType: !35, size: 32, offset: 1088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !224, file: !218, line: 219, baseType: !275, size: 64, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !246, line: 44, baseType: !18)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !224, file: !218, line: 222, baseType: !216, size: 64, offset: 1216)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !224, file: !218, line: 226, baseType: !278, size: 32, offset: 1280)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !246, line: 175, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !280, line: 12, baseType: !35)
!280 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !224, file: !218, line: 228, baseType: !282, size: 64, offset: 1312)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !246, line: 171, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 163, size: 64, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !283, file: !246, line: 165, baseType: !35, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !283, file: !246, line: 170, baseType: !287, size: 32, offset: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !246, line: 166, size: 32, elements: !288)
!288 = !{!289, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !287, file: !246, line: 168, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !154, line: 124, baseType: !5)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !287, file: !246, line: 169, baseType: !292, size: 32)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 32, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 4)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !224, file: !218, line: 229, baseType: !35, size: 32, offset: 1376)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !217, file: !218, line: 576, baseType: !222, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !217, file: !218, line: 576, baseType: !222, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !217, file: !218, line: 578, baseType: !35, size: 32, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !217, file: !218, line: 579, baseType: !300, size: 200, offset: 288)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 200, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 25)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !217, file: !218, line: 582, baseType: !35, size: 32, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !217, file: !218, line: 583, baseType: !305, size: 64, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !218, line: 40, flags: DIFlagFwdDecl)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !217, file: !218, line: 585, baseType: !35, size: 32, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !217, file: !218, line: 587, baseType: !309, size: 64, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !216}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !217, file: !218, line: 590, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !218, line: 47, size: 256, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !314, file: !218, line: 49, baseType: !313, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !314, file: !218, line: 50, baseType: !35, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !314, file: !218, line: 50, baseType: !35, size: 32, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !314, file: !218, line: 50, baseType: !35, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !314, file: !218, line: 50, baseType: !35, size: 32, offset: 160)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !314, file: !218, line: 51, baseType: !322, size: 32, offset: 192)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32, elements: !270)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !218, line: 25, baseType: !5)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !217, file: !218, line: 591, baseType: !35, size: 32, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !217, file: !218, line: 592, baseType: !313, size: 64, offset: 896)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !217, file: !218, line: 593, baseType: !327, size: 64, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !217, file: !218, line: 596, baseType: !35, size: 32, offset: 1024)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !217, file: !218, line: 597, baseType: !247, size: 64, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !217, file: !218, line: 632, baseType: !331, size: 2880, offset: 1152)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !218, line: 599, size: 2880, elements: !332)
!332 = !{!333, !383}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !331, file: !218, line: 622, baseType: !334, size: 1728)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !218, line: 601, size: 1728, elements: !335)
!335 = !{!336, !337, !338, !342, !354, !355, !357, !365, !366, !367, !368, !372, !376, !377, !378, !379, !380, !381, !382}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !334, file: !218, line: 603, baseType: !5, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !334, file: !218, line: 604, baseType: !247, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !334, file: !218, line: 605, baseType: !339, size: 208, offset: 128)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 208, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 26)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !334, file: !218, line: 606, baseType: !343, size: 288, offset: 352)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !218, line: 55, size: 288, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !343, file: !218, line: 57, baseType: !35, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !343, file: !218, line: 58, baseType: !35, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !343, file: !218, line: 59, baseType: !35, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !343, file: !218, line: 60, baseType: !35, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !343, file: !218, line: 61, baseType: !35, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !343, file: !218, line: 62, baseType: !35, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !343, file: !218, line: 63, baseType: !35, size: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !343, file: !218, line: 64, baseType: !35, size: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !343, file: !218, line: 65, baseType: !35, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !334, file: !218, line: 607, baseType: !35, size: 32, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !334, file: !218, line: 608, baseType: !356, size: 64, offset: 704)
!356 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !334, file: !218, line: 609, baseType: !358, size: 112, offset: 768)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !218, line: 319, size: 112, elements: !359)
!359 = !{!360, !363, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !358, file: !218, line: 320, baseType: !361, size: 48)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 48, elements: !266)
!362 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !358, file: !218, line: 321, baseType: !361, size: 48, offset: 48)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !358, file: !218, line: 322, baseType: !362, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !334, file: !218, line: 610, baseType: !282, size: 64, offset: 896)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !334, file: !218, line: 611, baseType: !282, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !334, file: !218, line: 612, baseType: !282, size: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !334, file: !218, line: 613, baseType: !369, size: 64, offset: 1088)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 8)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !334, file: !218, line: 614, baseType: !373, size: 192, offset: 1152)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 192, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 24)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !334, file: !218, line: 615, baseType: !35, size: 32, offset: 1344)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !334, file: !218, line: 616, baseType: !282, size: 64, offset: 1376)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !334, file: !218, line: 617, baseType: !282, size: 64, offset: 1440)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !334, file: !218, line: 618, baseType: !282, size: 64, offset: 1504)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !334, file: !218, line: 619, baseType: !282, size: 64, offset: 1568)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !334, file: !218, line: 620, baseType: !282, size: 64, offset: 1632)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !334, file: !218, line: 621, baseType: !35, size: 32, offset: 1696)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !331, file: !218, line: 631, baseType: !384, size: 2880)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !218, line: 626, size: 2880, elements: !385)
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !384, file: !218, line: 629, baseType: !387, size: 1920)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 1920, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 30)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !384, file: !218, line: 630, baseType: !391, size: 960, offset: 1920)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !388)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !217, file: !218, line: 636, baseType: !393, size: 64, offset: 4032)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !218, line: 93, size: 6336, elements: !395)
!395 = !{!396, !397, !398, !405}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !394, file: !218, line: 94, baseType: !393, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !394, file: !218, line: 95, baseType: !35, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !394, file: !218, line: 97, baseType: !399, size: 2048, offset: 128)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 2048, elements: !403)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null}
!403 = !{!404}
!404 = !DISubrange(count: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !394, file: !218, line: 98, baseType: !406, size: 4160, offset: 2176)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !218, line: 74, size: 4160, elements: !407)
!407 = !{!408, !410, !411, !412}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !406, file: !218, line: 75, baseType: !409, size: 2048)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !403)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !406, file: !218, line: 76, baseType: !409, size: 2048, offset: 2048)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !406, file: !218, line: 78, baseType: !323, size: 32, offset: 4096)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !406, file: !218, line: 81, baseType: !323, size: 32, offset: 4128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !217, file: !218, line: 637, baseType: !394, size: 6336, offset: 4096)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !217, file: !218, line: 641, baseType: !415, size: 64, offset: 10432)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !35}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !217, file: !218, line: 646, baseType: !420, size: 192, offset: 10496)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !218, line: 291, size: 192, elements: !421)
!421 = !{!422, !424, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !420, file: !218, line: 293, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !420, file: !218, line: 294, baseType: !35, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !420, file: !218, line: 295, baseType: !222, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !217, file: !218, line: 648, baseType: !427, size: 4224, offset: 10688)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 4224, elements: !266)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !38, file: !39, line: 85, baseType: !429, size: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !431)
!431 = !{!432, !436, !437, !444, !457}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !430, file: !4, line: 116, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !434, line: 64, baseType: !435)
!434 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !434, line: 63, baseType: !94)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !430, file: !4, line: 118, baseType: !433, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !430, file: !4, line: 120, baseType: !438, size: 128, offset: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !439, line: 51, size: 128, elements: !440)
!439 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!440 = !{!441, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !439, line: 52, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !438, file: !439, line: 53, baseType: !442, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !430, file: !4, line: 122, baseType: !445, size: 256, offset: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !446)
!446 = !{!447, !448, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !445, file: !4, line: 107, baseType: !3, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !445, file: !4, line: 109, baseType: !433, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !445, file: !4, line: 111, baseType: !450, size: 96, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !434, line: 72, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 68, size: 96, elements: !452)
!452 = !{!453, !454, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !451, file: !434, line: 69, baseType: !35, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !451, file: !434, line: 70, baseType: !35, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !451, file: !434, line: 71, baseType: !456, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !434, line: 61, baseType: !35)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !430, file: !4, line: 124, baseType: !438, size: 128, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !32, file: !28, line: 38, baseType: !459, size: 64, offset: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !32, file: !28, line: 38, size: 64, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !459, file: !28, line: 38, baseType: !31, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !27, file: !28, line: 42, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_once_t", file: !13, line: 415, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_once_t_", file: !13, line: 500, size: 192, elements: !468)
!468 = !{!469, !470, !471, !472}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !467, file: !13, line: 502, baseType: !35, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !467, file: !13, line: 503, baseType: !11, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "numSemaphoreUsers", scope: !467, file: !13, line: 504, baseType: !35, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !467, file: !13, line: 505, baseType: !35, size: 32, offset: 160)
!473 = !{i32 2, !"Dwarf Version", i32 4}
!474 = !{i32 2, !"Debug Info Version", i32 3}
!475 = !{i32 1, !"wchar_size", i32 4}
!476 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!477 = distinct !DISubprogram(name: "pthread_once", scope: !1, file: !1, line: 65, type: !478, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!35, !465, !400}
!480 = !{!481, !482, !483, !484, !485, !486, !488, !490, !502, !508}
!481 = !DILocalVariable(name: "once_control", arg: 1, scope: !477, file: !1, line: 65, type: !465)
!482 = !DILocalVariable(name: "init_routine", arg: 2, scope: !477, file: !1, line: 65, type: !400)
!483 = !DILocalVariable(name: "result", scope: !477, file: !1, line: 103, type: !35)
!484 = !DILocalVariable(name: "state", scope: !477, file: !1, line: 104, type: !35)
!485 = !DILocalVariable(name: "sema", scope: !477, file: !1, line: 105, type: !19)
!486 = !DILocalVariable(name: "__orig", scope: !487, file: !1, line: 118, type: !35)
!487 = distinct !DILexicalBlock(scope: !477, file: !1, line: 118, column: 13)
!488 = !DILocalVariable(name: "stored", scope: !489, file: !1, line: 118, type: !35)
!489 = distinct !DILexicalBlock(scope: !487, file: !1, line: 118, column: 13)
!490 = !DILocalVariable(name: "_cleanup", scope: !491, file: !1, line: 127, type: !495)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 127, column: 11)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 124, column: 9)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 123, column: 11)
!494 = distinct !DILexicalBlock(scope: !477, file: !1, line: 122, column: 5)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_t", file: !13, line: 555, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_cleanup_t", file: !13, line: 559, size: 192, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !496, file: !13, line: 561, baseType: !12, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !496, file: !13, line: 562, baseType: !11, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !496, file: !13, line: 563, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!502 = !DILocalVariable(name: "__orig", scope: !503, file: !1, line: 150, type: !18)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 150, column: 19)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 150, column: 19)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 147, column: 13)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 146, column: 15)
!507 = distinct !DILexicalBlock(scope: !493, file: !1, line: 143, column: 9)
!508 = !DILocalVariable(name: "stored", scope: !509, file: !1, line: 150, type: !18)
!509 = distinct !DILexicalBlock(scope: !503, file: !1, line: 150, column: 19)
!510 = !DILocation(line: 65, column: 32, scope: !477)
!511 = !DILocation(line: 65, column: 53, scope: !477)
!512 = !DILocation(line: 105, column: 3, scope: !477)
!513 = !DILocation(line: 107, column: 20, scope: !514)
!514 = distinct !DILexicalBlock(scope: !477, file: !1, line: 107, column: 7)
!515 = !DILocation(line: 107, column: 44, scope: !514)
!516 = !DILocation(line: 107, column: 28, scope: !514)
!517 = !DILocation(line: 118, column: 13, scope: !487)
!518 = !{!519, !520, i64 0}
!519 = !{!"pthread_once_t_", !520, i64 0, !523, i64 8, !520, i64 16, !520, i64 20}
!520 = !{!"int", !521, i64 0}
!521 = !{!"omnipotent char", !522, i64 0}
!522 = !{!"Simple C/C++ TBAA"}
!523 = !{!"any pointer", !521, i64 0}
!524 = !DILocation(line: 118, column: 13, scope: !489)
!525 = !DILocation(line: 104, column: 7, scope: !477)
!526 = !DILocation(line: 117, column: 3, scope: !477)
!527 = !DILocation(line: 127, column: 11, scope: !491)
!528 = !DILocation(line: 128, column: 11, scope: !491)
!529 = !DILocation(line: 129, column: 11, scope: !491)
!530 = !DILocation(line: 129, column: 11, scope: !492)
!531 = !DILocation(line: 131, column: 18, scope: !492)
!532 = !DILocation(line: 137, column: 15, scope: !533)
!533 = distinct !DILexicalBlock(scope: !492, file: !1, line: 137, column: 15)
!534 = !DILocation(line: 137, column: 15, scope: !492)
!535 = distinct !{!535, !526, !536}
!536 = !DILocation(line: 177, column: 5, scope: !477)
!537 = !DILocation(line: 139, column: 73, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !1, line: 138, column: 13)
!539 = !{!519, !523, i64 8}
!540 = !DILocation(line: 139, column: 97, scope: !538)
!541 = !{!519, !520, i64 16}
!542 = !DILocation(line: 139, column: 15, scope: !538)
!543 = !DILocation(line: 140, column: 13, scope: !538)
!544 = !DILocation(line: 144, column: 11, scope: !507)
!545 = !DILocation(line: 146, column: 16, scope: !506)
!546 = !DILocation(line: 146, column: 15, scope: !507)
!547 = !DILocation(line: 105, column: 25, scope: !477)
!548 = !DILocation(line: 148, column: 15, scope: !505)
!549 = !DILocation(line: 150, column: 19, scope: !503)
!550 = !{!551, !551, i64 0}
!551 = !{!"long", !521, i64 0}
!552 = !DILocation(line: 150, column: 19, scope: !509)
!553 = !{!523, !523, i64 0}
!554 = !DILocation(line: 150, column: 19, scope: !504)
!555 = !DILocation(line: 150, column: 19, scope: !505)
!556 = !DILocation(line: 154, column: 19, scope: !557)
!557 = distinct !DILexicalBlock(scope: !504, file: !1, line: 153, column: 17)
!558 = !DILocation(line: 155, column: 17, scope: !557)
!559 = !DILocation(line: 162, column: 15, scope: !560)
!560 = distinct !DILexicalBlock(scope: !507, file: !1, line: 162, column: 15)
!561 = !DILocation(line: 162, column: 65, scope: !560)
!562 = !DILocation(line: 162, column: 15, scope: !507)
!563 = !DILocation(line: 164, column: 73, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !1, line: 163, column: 13)
!565 = !DILocation(line: 164, column: 15, scope: !564)
!566 = !DILocation(line: 165, column: 13, scope: !564)
!567 = !DILocation(line: 167, column: 20, scope: !568)
!568 = distinct !DILexicalBlock(scope: !507, file: !1, line: 167, column: 15)
!569 = !DILocation(line: 167, column: 17, scope: !568)
!570 = !DILocation(line: 167, column: 15, scope: !507)
!571 = !DILocation(line: 171, column: 46, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 170, column: 19)
!573 = distinct !DILexicalBlock(scope: !568, file: !1, line: 168, column: 13)
!574 = !DILocation(line: 171, column: 22, scope: !572)
!575 = !DILocation(line: 170, column: 25, scope: !572)
!576 = !DILocation(line: 170, column: 19, scope: !573)
!577 = !DILocation(line: 173, column: 19, scope: !578)
!578 = distinct !DILexicalBlock(scope: !572, file: !1, line: 172, column: 17)
!579 = !DILocation(line: 174, column: 17, scope: !578)
!580 = !DILocation(line: 0, scope: !581)
!581 = distinct !DILexicalBlock(scope: !514, file: !1, line: 113, column: 5)
!582 = !DILocation(line: 103, column: 7, scope: !477)
!583 = !DILocation(line: 186, column: 1, scope: !477)
!584 = !DILocation(line: 185, column: 3, scope: !477)
!585 = distinct !DISubprogram(name: "pte_once_init_routine_cleanup", scope: !1, file: !1, line: 52, type: !15, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !586)
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "arg", arg: 1, scope: !585, file: !1, line: 52, type: !11)
!588 = !DILocalVariable(name: "once_control", scope: !585, file: !1, line: 54, type: !465)
!589 = !DILocation(line: 52, column: 38, scope: !585)
!590 = !DILocation(line: 54, column: 20, scope: !585)
!591 = !DILocation(line: 56, column: 10, scope: !585)
!592 = !DILocation(line: 58, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !585, file: !1, line: 58, column: 7)
!594 = !DILocation(line: 58, column: 7, scope: !585)
!595 = !DILocation(line: 60, column: 65, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 59, column: 5)
!597 = !DILocation(line: 60, column: 7, scope: !596)
!598 = !DILocation(line: 61, column: 5, scope: !596)
!599 = !DILocation(line: 62, column: 1, scope: !585)
