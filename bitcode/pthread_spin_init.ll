; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_spin_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_spin_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_spinlock_t_ = type { i32, %union.anon }
%union.anon = type { %struct.pthread_mutex_t_* }
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
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.2, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.2 = type { %struct.anon.4 }
%struct.anon.4 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.uk_thread_sig = type { i64, i64, %struct.uk_list_head, %struct.uk_thread_sig_wait, %struct.uk_list_head }
%struct.uk_thread_sig_wait = type { i32, i64, %struct.siginfo_t }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.uk_list_head = type { %struct.uk_list_head*, %struct.uk_list_head* }
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.pte_handle_t = type { i8*, i32 }
%struct.pthread_mutexattr_t_ = type { i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_spin_init(%struct.pthread_spinlock_t_**, i32) local_unnamed_addr #0 !dbg !508 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread_mutexattr_t_*, align 8
  %5 = bitcast i32* %3 to i8*, !dbg !529
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !529
  store i32 0, i32* %3, align 4, !dbg !530, !tbaa !531
  %6 = icmp eq %struct.pthread_spinlock_t_** %0, null, !dbg !536
  br i1 %6, label %48, label %7, !dbg !538

; <label>:7:                                      ; preds = %2
  %8 = call i32 @pte_getprocessors(i32* nonnull %3) #5, !dbg !539
  %9 = icmp eq i32 %8, 0, !dbg !541
  br i1 %9, label %11, label %10, !dbg !542

; <label>:10:                                     ; preds = %7
  store i32 1, i32* %3, align 4, !dbg !543, !tbaa !531
  br label %16, !dbg !545

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !546, !tbaa !531
  %13 = icmp sgt i32 %12, 1, !dbg !542
  %14 = icmp eq i32 %1, 1, !dbg !548
  %15 = and i1 %14, %13, !dbg !545
  br i1 %15, label %48, label %16, !dbg !545

; <label>:16:                                     ; preds = %10, %11
  %17 = call i8* @calloc(i64 1, i64 16) #5, !dbg !551
  %18 = bitcast i8* %17 to %struct.pthread_spinlock_t_*, !dbg !552
  %19 = icmp eq i8* %17, null, !dbg !554
  br i1 %19, label %48, label %20, !dbg !556

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %3, align 4, !dbg !557, !tbaa !531
  %22 = icmp sgt i32 %21, 1, !dbg !558
  br i1 %22, label %23, label %27, !dbg !559

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !560
  %25 = bitcast i8* %24 to i32*, !dbg !562
  store i32 %21, i32* %25, align 8, !dbg !563, !tbaa !564
  %26 = bitcast i8* %17 to i32*, !dbg !565
  store i32 1, i32* %26, align 8, !dbg !566, !tbaa !567
  br label %45, !dbg !569

; <label>:27:                                     ; preds = %20
  %28 = bitcast %struct.pthread_mutexattr_t_** %4 to i8*, !dbg !570
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #4, !dbg !570
  %29 = call i32 @pthread_mutexattr_init(%struct.pthread_mutexattr_t_** nonnull %4) #5, !dbg !572
  %30 = icmp eq i32 %29, 0, !dbg !573
  br i1 %30, label %31, label %40, !dbg !575

; <label>:31:                                     ; preds = %27
  %32 = load %struct.pthread_mutexattr_t_*, %struct.pthread_mutexattr_t_** %4, align 8, !dbg !576, !tbaa !578
  %33 = getelementptr inbounds %struct.pthread_mutexattr_t_, %struct.pthread_mutexattr_t_* %32, i64 0, i32 0, !dbg !580
  store i32 %1, i32* %33, align 4, !dbg !581, !tbaa !582
  %34 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !584
  %35 = bitcast i8* %34 to %struct.pthread_mutex_t_**, !dbg !585
  %36 = call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull %35, %struct.pthread_mutexattr_t_** nonnull %4) #5, !dbg !586
  %37 = icmp eq i32 %36, 0, !dbg !587
  br i1 %37, label %38, label %40, !dbg !589

; <label>:38:                                     ; preds = %31
  %39 = bitcast i8* %17 to i32*, !dbg !590
  store i32 3, i32* %39, align 8, !dbg !592, !tbaa !567
  br label %40, !dbg !593

; <label>:40:                                     ; preds = %27, %38, %31
  %41 = phi i32 [ 0, %38 ], [ %36, %31 ], [ %29, %27 ], !dbg !594
  %42 = call i32 @pthread_mutexattr_destroy(%struct.pthread_mutexattr_t_** nonnull %4) #5, !dbg !595
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #4, !dbg !596
  %43 = icmp eq i32 %41, 0, !dbg !597
  br i1 %43, label %45, label %44, !dbg !569

; <label>:44:                                     ; preds = %40
  call void @free(i8* nonnull %17) #5, !dbg !599
  br label %45

; <label>:45:                                     ; preds = %23, %40, %44
  %46 = phi i32 [ %41, %44 ], [ 0, %40 ], [ 0, %23 ]
  %47 = phi %struct.pthread_spinlock_t_* [ null, %44 ], [ %18, %40 ], [ %18, %23 ]
  store %struct.pthread_spinlock_t_* %47, %struct.pthread_spinlock_t_** %0, align 8, !dbg !601, !tbaa !578
  br label %48, !dbg !603

; <label>:48:                                     ; preds = %16, %11, %2, %45
  %49 = phi i32 [ %46, %45 ], [ 22, %2 ], [ 88, %11 ], [ 12, %16 ], !dbg !604
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  ret i32 %49, !dbg !605
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_getprocessors(i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutexattr_init(%struct.pthread_mutexattr_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t_**, %struct.pthread_mutexattr_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutexattr_destroy(%struct.pthread_mutexattr_t_**) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!504, !505, !506}
!llvm.ident = !{!507}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_spin_init.c", directory: "/root/.unikraft/apps/redis/build")
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
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_spinlock_t", file: !11, line: 423, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_spinlock_t_", file: !33, line: 190, size: 128, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "interlock", scope: !32, file: !33, line: 192, baseType: !12, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !32, file: !33, line: 197, baseType: !37, size: 64, offset: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !33, line: 193, size: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !37, file: !33, line: 195, baseType: !12, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !33, line: 196, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 417, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !33, line: 146, size: 320, elements: !44)
!44 = !{!45, !494, !495, !496, !497}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !43, file: !33, line: 148, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !47, line: 12, baseType: !48)
!47 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !50, line: 51, size: 192, elements: !51)
!50 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !{!52, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !49, file: !50, line: 52, baseType: !53, size: 64)
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !50, line: 53, baseType: !55, size: 128, offset: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !56, line: 42, size: 128, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !492}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !55, file: !56, line: 42, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !56, line: 35, size: 192, elements: !61)
!61 = !{!62, !63, !488}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !60, file: !56, line: 36, baseType: !12, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !60, file: !56, line: 37, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !66, line: 59, size: 1024, elements: !67)
!66 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !{!68, !72, !73, !74, !75, !81, !86, !91, !93, !94, !243, !244, !245, !458}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 60, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !65, file: !66, line: 61, baseType: !29, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !65, file: !66, line: 62, baseType: !29, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !65, file: !66, line: 63, baseType: !29, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !65, file: !66, line: 64, baseType: !76, size: 128, offset: 256)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !65, file: !66, line: 64, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !76, file: !66, line: 64, baseType: !64, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !76, file: !66, line: 64, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !66, line: 65, baseType: !82, size: 32, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !83, line: 48, baseType: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !85, line: 79, baseType: !5)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !65, file: !66, line: 66, baseType: !87, size: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !88, line: 49, baseType: !89)
!88 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !90, line: 128, baseType: !53)
!90 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !65, file: !66, line: 67, baseType: !92, size: 8, offset: 512)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !65, file: !66, line: 68, baseType: !55, size: 128, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !65, file: !66, line: 69, baseType: !95, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !97, line: 90, size: 2176, elements: !98)
!97 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !{!99, !104, !122, !127, !129, !131, !136, !144, !149, !155, !156, !157, !162, !240, !241, !242}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !96, file: !97, line: 91, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !97, line: 68, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !95}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !96, file: !97, line: 93, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !97, line: 71, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!12, !95, !64, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !112, line: 55, size: 128, elements: !114)
!114 = !{!115, !116, !118}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !113, file: !112, line: 57, baseType: !92, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !113, file: !112, line: 59, baseType: !117, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !112, line: 53, baseType: !12)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !113, file: !112, line: 61, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !88, line: 48, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !90, line: 129, baseType: !121)
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !96, file: !97, line: 94, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !97, line: 74, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !95, !64}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !96, file: !97, line: 95, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !97, line: 76, baseType: !124)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !96, file: !97, line: 96, baseType: !130, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !97, line: 78, baseType: !124)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !96, file: !97, line: 98, baseType: !132, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !97, line: 81, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!12, !95, !64, !117}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !96, file: !97, line: 99, baseType: !137, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !97, line: 83, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!12, !95, !141, !143}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !96, file: !97, line: 100, baseType: !145, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !97, line: 85, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!12, !95, !64, !12}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !96, file: !97, line: 101, baseType: !150, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !97, line: 87, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!12, !95, !141, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !96, file: !97, line: 104, baseType: !92, size: 8, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !96, file: !97, line: 105, baseType: !65, size: 1024, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !96, file: !97, line: 106, baseType: !158, size: 128, offset: 1664)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !66, line: 93, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !158, file: !66, line: 93, baseType: !64, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !158, file: !66, line: 93, baseType: !80, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !96, file: !97, line: 107, baseType: !163, size: 192, offset: 1792)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !164, line: 59, size: 192, elements: !165)
!164 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !{!166, !231, !235}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !163, file: !164, line: 61, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !164, line: 51, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!29, !171, !121, !121}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !173, line: 77, size: 832, elements: !174)
!173 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!174 = !{!175, !182, !187, !192, !198, !200, !205, !206, !207, !212, !217, !222, !223, !224}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !172, file: !173, line: 79, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !173, line: 54, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!29, !171, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 58, baseType: !121)
!181 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !172, file: !173, line: 80, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !173, line: 56, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!29, !171, !180, !180}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !172, file: !173, line: 81, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !173, line: 62, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!29, !171, !29, !180}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !172, file: !173, line: 82, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !173, line: 58, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!12, !171, !197, !180, !180}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !172, file: !173, line: 83, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !173, line: 60, baseType: !184)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !172, file: !173, line: 84, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !173, line: 64, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !171, !29}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !172, file: !173, line: 87, baseType: !201, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !172, file: !173, line: 88, baseType: !176, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !172, file: !173, line: 92, baseType: !208, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !173, line: 66, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!29, !171, !121}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !172, file: !173, line: 93, baseType: !213, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !173, line: 68, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !171, !29, !121}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !172, file: !173, line: 99, baseType: !218, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !173, line: 70, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!12, !171, !29, !180}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !172, file: !173, line: 100, baseType: !180, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 103, baseType: !171, size: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !172, file: !173, line: 104, baseType: !225, offset: 832)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !229)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !83, line: 20, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !85, line: 41, baseType: !228)
!228 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!229 = !{!230}
!230 = !DISubrange(count: -1)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !163, file: !164, line: 63, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !29}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !163, file: !164, line: 65, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !164, line: 56, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !29, !29}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !96, file: !97, line: 108, baseType: !171, size: 64, offset: 1984)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !97, line: 109, baseType: !95, size: 64, offset: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !96, file: !97, line: 110, baseType: !29, size: 64, offset: 2112)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !65, file: !66, line: 70, baseType: !29, size: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !65, file: !66, line: 72, baseType: !12, size: 32, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !65, file: !66, line: 82, baseType: !246, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !248, line: 569, size: 14912, elements: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !{!250, !251, !326, !327, !328, !329, !333, !334, !337, !338, !342, !354, !355, !356, !358, !359, !360, !422, !443, !444, !449, !456}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !247, file: !248, line: 571, baseType: !12, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !248, line: 287, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !248, line: 181, size: 1408, elements: !255)
!255 = !{!256, !259, !260, !261, !263, !264, !269, !270, !271, !278, !282, !287, !291, !292, !293, !294, !298, !302, !303, !304, !306, !307, !311, !325}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !254, file: !248, line: 182, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !254, file: !248, line: 183, baseType: !12, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !254, file: !248, line: 184, baseType: !12, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !254, file: !248, line: 185, baseType: !262, size: 16, offset: 128)
!262 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !254, file: !248, line: 186, baseType: !262, size: 16, offset: 144)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !254, file: !248, line: 187, baseType: !265, size: 128, offset: 192)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !248, line: 117, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !265, file: !248, line: 118, baseType: !257, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !265, file: !248, line: 119, baseType: !12, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !254, file: !248, line: 188, baseType: !12, size: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !254, file: !248, line: 195, baseType: !29, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !254, file: !248, line: 197, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !246, !29, !277, !12}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !276, line: 145, baseType: !53)
!276 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !254, file: !248, line: 199, baseType: !279, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!275, !246, !29, !69, !12}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !254, file: !248, line: 202, baseType: !283, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !246, !29, !286, !12}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !276, line: 114, baseType: !53)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !254, file: !248, line: 203, baseType: !288, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!12, !246, !29}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !254, file: !248, line: 206, baseType: !265, size: 128, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !254, file: !248, line: 207, baseType: !257, size: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !254, file: !248, line: 208, baseType: !12, size: 32, offset: 896)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !254, file: !248, line: 211, baseType: !295, size: 24, offset: 928)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 24, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !254, file: !248, line: 212, baseType: !299, size: 8, offset: 952)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 1)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !254, file: !248, line: 215, baseType: !265, size: 128, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !254, file: !248, line: 218, baseType: !12, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !254, file: !248, line: 219, baseType: !305, size: 64, offset: 1152)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !276, line: 44, baseType: !53)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !254, file: !248, line: 222, baseType: !246, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !254, file: !248, line: 226, baseType: !308, size: 32, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !276, line: 175, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !310, line: 12, baseType: !12)
!310 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !254, file: !248, line: 228, baseType: !312, size: 64, offset: 1312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !276, line: 171, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 163, size: 64, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !313, file: !276, line: 165, baseType: !12, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !313, file: !276, line: 170, baseType: !317, size: 32, offset: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !276, line: 166, size: 32, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !317, file: !276, line: 168, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !181, line: 124, baseType: !5)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !317, file: !276, line: 169, baseType: !322, size: 32)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 32, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 4)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !254, file: !248, line: 229, baseType: !12, size: 32, offset: 1376)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !247, file: !248, line: 578, baseType: !12, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !247, file: !248, line: 579, baseType: !330, size: 200, offset: 288)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 200, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 25)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !247, file: !248, line: 582, baseType: !12, size: 32, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !247, file: !248, line: 583, baseType: !335, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !248, line: 40, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !247, file: !248, line: 585, baseType: !12, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !247, file: !248, line: 587, baseType: !339, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !246}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !247, file: !248, line: 590, baseType: !343, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !248, line: 47, size: 256, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !344, file: !248, line: 49, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !344, file: !248, line: 50, baseType: !12, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !344, file: !248, line: 50, baseType: !12, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !344, file: !248, line: 50, baseType: !12, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !344, file: !248, line: 50, baseType: !12, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !344, file: !248, line: 51, baseType: !352, size: 32, offset: 192)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 32, elements: !300)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !248, line: 25, baseType: !5)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !247, file: !248, line: 591, baseType: !12, size: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !247, file: !248, line: 592, baseType: !343, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !247, file: !248, line: 593, baseType: !357, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !247, file: !248, line: 596, baseType: !12, size: 32, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !247, file: !248, line: 597, baseType: !277, size: 64, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !247, file: !248, line: 632, baseType: !361, size: 2880, offset: 1152)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !248, line: 599, size: 2880, elements: !362)
!362 = !{!363, !413}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !361, file: !248, line: 622, baseType: !364, size: 1728)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !248, line: 601, size: 1728, elements: !365)
!365 = !{!366, !367, !368, !372, !384, !385, !387, !395, !396, !397, !398, !402, !406, !407, !408, !409, !410, !411, !412}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !364, file: !248, line: 603, baseType: !5, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !364, file: !248, line: 604, baseType: !277, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !364, file: !248, line: 605, baseType: !369, size: 208, offset: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 208, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 26)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !364, file: !248, line: 606, baseType: !373, size: 288, offset: 352)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !248, line: 55, size: 288, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !373, file: !248, line: 57, baseType: !12, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !373, file: !248, line: 58, baseType: !12, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !373, file: !248, line: 59, baseType: !12, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !373, file: !248, line: 60, baseType: !12, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !373, file: !248, line: 61, baseType: !12, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !373, file: !248, line: 62, baseType: !12, size: 32, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !373, file: !248, line: 63, baseType: !12, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !373, file: !248, line: 64, baseType: !12, size: 32, offset: 224)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !373, file: !248, line: 65, baseType: !12, size: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !364, file: !248, line: 607, baseType: !12, size: 32, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !364, file: !248, line: 608, baseType: !386, size: 64, offset: 704)
!386 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !364, file: !248, line: 609, baseType: !388, size: 112, offset: 768)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !248, line: 319, size: 112, elements: !389)
!389 = !{!390, !393, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !388, file: !248, line: 320, baseType: !391, size: 48)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 48, elements: !296)
!392 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !388, file: !248, line: 321, baseType: !391, size: 48, offset: 48)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !388, file: !248, line: 322, baseType: !392, size: 16, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !364, file: !248, line: 610, baseType: !312, size: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !364, file: !248, line: 611, baseType: !312, size: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !364, file: !248, line: 612, baseType: !312, size: 64, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !364, file: !248, line: 613, baseType: !399, size: 64, offset: 1088)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !364, file: !248, line: 614, baseType: !403, size: 192, offset: 1152)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 192, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 24)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !364, file: !248, line: 615, baseType: !12, size: 32, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !364, file: !248, line: 616, baseType: !312, size: 64, offset: 1376)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !364, file: !248, line: 617, baseType: !312, size: 64, offset: 1440)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !364, file: !248, line: 618, baseType: !312, size: 64, offset: 1504)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !364, file: !248, line: 619, baseType: !312, size: 64, offset: 1568)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !364, file: !248, line: 620, baseType: !312, size: 64, offset: 1632)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !364, file: !248, line: 621, baseType: !12, size: 32, offset: 1696)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !361, file: !248, line: 631, baseType: !414, size: 2880)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !248, line: 626, size: 2880, elements: !415)
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !414, file: !248, line: 629, baseType: !417, size: 1920)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1920, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 30)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !414, file: !248, line: 630, baseType: !421, size: 960, offset: 1920)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !418)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !247, file: !248, line: 636, baseType: !423, size: 64, offset: 4032)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !248, line: 93, size: 6336, elements: !425)
!425 = !{!426, !427, !428, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !424, file: !248, line: 94, baseType: !423, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !424, file: !248, line: 95, baseType: !12, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !424, file: !248, line: 97, baseType: !429, size: 2048, offset: 128)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 2048, elements: !433)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null}
!433 = !{!434}
!434 = !DISubrange(count: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !424, file: !248, line: 98, baseType: !436, size: 4160, offset: 2176)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !248, line: 74, size: 4160, elements: !437)
!437 = !{!438, !440, !441, !442}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !436, file: !248, line: 75, baseType: !439, size: 2048)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !433)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !436, file: !248, line: 76, baseType: !439, size: 2048, offset: 2048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !436, file: !248, line: 78, baseType: !353, size: 32, offset: 4096)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !436, file: !248, line: 81, baseType: !353, size: 32, offset: 4128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !247, file: !248, line: 637, baseType: !424, size: 6336, offset: 4096)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !247, file: !248, line: 641, baseType: !445, size: 64, offset: 10432)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !12}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !247, file: !248, line: 646, baseType: !450, size: 192, offset: 10496)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !248, line: 291, size: 192, elements: !451)
!451 = !{!452, !454, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !450, file: !248, line: 293, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !450, file: !248, line: 294, baseType: !12, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !450, file: !248, line: 295, baseType: !252, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !247, file: !248, line: 648, baseType: !457, size: 4224, offset: 10688)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 4224, elements: !296)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !65, file: !66, line: 85, baseType: !459, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !461)
!461 = !{!462, !466, !467, !474, !487}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !460, file: !4, line: 116, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !464, line: 64, baseType: !465)
!464 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !464, line: 63, baseType: !121)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !460, file: !4, line: 118, baseType: !463, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !460, file: !4, line: 120, baseType: !468, size: 128, offset: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !469, line: 51, size: 128, elements: !470)
!469 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !469, line: 52, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !468, file: !469, line: 53, baseType: !472, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !460, file: !4, line: 122, baseType: !475, size: 256, offset: 256)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !475, file: !4, line: 107, baseType: !3, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !475, file: !4, line: 109, baseType: !463, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !475, file: !4, line: 111, baseType: !480, size: 96, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !464, line: 72, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 68, size: 96, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !481, file: !464, line: 69, baseType: !12, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !481, file: !464, line: 70, baseType: !12, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !481, file: !464, line: 71, baseType: !486, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !464, line: 61, baseType: !12)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !460, file: !4, line: 124, baseType: !468, size: 128, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !60, file: !56, line: 38, baseType: !489, size: 64, offset: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !56, line: 38, size: 64, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !489, file: !56, line: 38, baseType: !59, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !55, file: !56, line: 42, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !43, file: !33, line: 149, baseType: !12, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !43, file: !33, line: 156, baseType: !12, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !43, file: !33, line: 159, baseType: !12, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !43, file: !33, line: 160, baseType: !498, size: 128, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 413, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !11, line: 411, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 395, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !500, file: !11, line: 398, baseType: !29, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !500, file: !11, line: 399, baseType: !5, size: 32, offset: 64)
!504 = !{i32 2, !"Dwarf Version", i32 4}
!505 = !{i32 2, !"Debug Info Version", i32 3}
!506 = !{i32 1, !"wchar_size", i32 4}
!507 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!508 = distinct !DISubprogram(name: "pthread_spin_init", scope: !1, file: !1, line: 50, type: !509, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !512)
!509 = !DISubroutineType(types: !510)
!510 = !{!12, !511, !12}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DILocalVariable(name: "lock", arg: 1, scope: !508, file: !1, line: 50, type: !511)
!514 = !DILocalVariable(name: "pshared", arg: 2, scope: !508, file: !1, line: 50, type: !12)
!515 = !DILocalVariable(name: "s", scope: !508, file: !1, line: 52, type: !30)
!516 = !DILocalVariable(name: "cpus", scope: !508, file: !1, line: 53, type: !12)
!517 = !DILocalVariable(name: "result", scope: !508, file: !1, line: 54, type: !12)
!518 = !DILocalVariable(name: "ma", scope: !519, file: !1, line: 105, type: !521)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 104, column: 5)
!520 = distinct !DILexicalBlock(scope: !508, file: !1, line: 98, column: 7)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !11, line: 418, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutexattr_t_", file: !33, line: 163, size: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !523, file: !33, line: 165, baseType: !12, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !523, file: !33, line: 166, baseType: !12, size: 32, offset: 32)
!527 = !DILocation(line: 50, column: 41, scope: !508)
!528 = !DILocation(line: 50, column: 51, scope: !508)
!529 = !DILocation(line: 53, column: 3, scope: !508)
!530 = !DILocation(line: 53, column: 7, scope: !508)
!531 = !{!532, !532, i64 0}
!532 = !{!"int", !533, i64 0}
!533 = !{!"omnipotent char", !534, i64 0}
!534 = !{!"Simple C/C++ TBAA"}
!535 = !DILocation(line: 54, column: 7, scope: !508)
!536 = !DILocation(line: 56, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !508, file: !1, line: 56, column: 7)
!538 = !DILocation(line: 56, column: 7, scope: !508)
!539 = !DILocation(line: 61, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !508, file: !1, line: 61, column: 7)
!541 = !DILocation(line: 61, column: 9, scope: !540)
!542 = !DILocation(line: 61, column: 7, scope: !508)
!543 = !DILocation(line: 63, column: 12, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 62, column: 5)
!545 = !DILocation(line: 66, column: 7, scope: !508)
!546 = !DILocation(line: 66, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !508, file: !1, line: 66, column: 7)
!548 = !DILocation(line: 68, column: 19, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 68, column: 11)
!550 = distinct !DILexicalBlock(scope: !547, file: !1, line: 67, column: 5)
!551 = !DILocation(line: 91, column: 28, scope: !508)
!552 = !DILocation(line: 91, column: 7, scope: !508)
!553 = !DILocation(line: 52, column: 22, scope: !508)
!554 = !DILocation(line: 93, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !508, file: !1, line: 93, column: 7)
!556 = !DILocation(line: 93, column: 7, scope: !508)
!557 = !DILocation(line: 98, column: 7, scope: !520)
!558 = !DILocation(line: 98, column: 12, scope: !520)
!559 = !DILocation(line: 98, column: 7, scope: !508)
!560 = !DILocation(line: 100, column: 10, scope: !561)
!561 = distinct !DILexicalBlock(scope: !520, file: !1, line: 99, column: 5)
!562 = !DILocation(line: 100, column: 12, scope: !561)
!563 = !DILocation(line: 100, column: 17, scope: !561)
!564 = !{!533, !533, i64 0}
!565 = !DILocation(line: 101, column: 10, scope: !561)
!566 = !DILocation(line: 101, column: 20, scope: !561)
!567 = !{!568, !532, i64 0}
!568 = !{!"pthread_spinlock_t_", !532, i64 0, !533, i64 8}
!569 = !DILocation(line: 120, column: 7, scope: !508)
!570 = !DILocation(line: 105, column: 7, scope: !519)
!571 = !DILocation(line: 105, column: 27, scope: !519)
!572 = !DILocation(line: 106, column: 16, scope: !519)
!573 = !DILocation(line: 108, column: 13, scope: !574)
!574 = distinct !DILexicalBlock(scope: !519, file: !1, line: 108, column: 11)
!575 = !DILocation(line: 108, column: 11, scope: !519)
!576 = !DILocation(line: 110, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !1, line: 109, column: 9)
!578 = !{!579, !579, i64 0}
!579 = !{!"any pointer", !533, i64 0}
!580 = !DILocation(line: 110, column: 15, scope: !577)
!581 = !DILocation(line: 110, column: 23, scope: !577)
!582 = !{!583, !532, i64 0}
!583 = !{!"pthread_mutexattr_t_", !532, i64 0, !532, i64 4}
!584 = !DILocation(line: 111, column: 45, scope: !577)
!585 = !DILocation(line: 111, column: 47, scope: !577)
!586 = !DILocation(line: 111, column: 20, scope: !577)
!587 = !DILocation(line: 112, column: 17, scope: !588)
!588 = distinct !DILexicalBlock(scope: !577, file: !1, line: 112, column: 15)
!589 = !DILocation(line: 112, column: 15, scope: !577)
!590 = !DILocation(line: 114, column: 18, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !1, line: 113, column: 13)
!592 = !DILocation(line: 114, column: 28, scope: !591)
!593 = !DILocation(line: 115, column: 13, scope: !591)
!594 = !DILocation(line: 0, scope: !519)
!595 = !DILocation(line: 117, column: 14, scope: !519)
!596 = !DILocation(line: 118, column: 5, scope: !520)
!597 = !DILocation(line: 120, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !508, file: !1, line: 120, column: 7)
!599 = !DILocation(line: 126, column: 14, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !1, line: 125, column: 5)
!601 = !DILocation(line: 0, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !1, line: 121, column: 5)
!603 = !DILocation(line: 130, column: 3, scope: !508)
!604 = !DILocation(line: 0, scope: !508)
!605 = !DILocation(line: 131, column: 1, scope: !508)
