; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cancel.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cancel.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.0 }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon = type { %struct.uk_thread*, %struct.uk_thread** }
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
%struct.anon.0 = type { %struct.uk_waitq_entry* }
%struct.pte_handle_t = type { i8*, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_cancel(i8*, i32) local_unnamed_addr #0 !dbg !545 {
  %3 = tail call i32 @pthread_kill(i8* %0, i32 %1, i32 0) #3, !dbg !555
  %4 = icmp eq i32 %3, 0, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %4, label %5, label %55, !dbg !559

; <label>:5:                                      ; preds = %2
  %6 = tail call { i8*, i32 } @pthread_self() #3, !dbg !560
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !560
  %8 = icmp eq i8* %7, null, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %8, label %55, label %9, !dbg !564

; <label>:9:                                      ; preds = %5
  %10 = extractvalue { i8*, i32 } %6, 1, !dbg !560
  %11 = tail call i32 @pthread_equal(i8* %0, i32 %1, i8* nonnull %7, i32 %10) #3, !dbg !565
  %12 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !568
  %13 = bitcast i8* %12 to %struct.pthread_mutex_t_**, !dbg !568
  %14 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %13) #3, !dbg !569
  %15 = getelementptr inbounds i8, i8* %0, i64 92, !dbg !570
  %16 = bitcast i8* %15 to i32*, !dbg !570
  %17 = load i32, i32* %16, align 4, !dbg !570, !tbaa !572
  %18 = icmp eq i32 %17, 0, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %18, label %19, label %35, !dbg !580

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %0, i64 88, !dbg !581
  %21 = bitcast i8* %20 to i32*, !dbg !581
  %22 = load i32, i32* %21, align 8, !dbg !581, !tbaa !582
  %23 = icmp eq i32 %22, 0, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %23, label %24, label %35, !dbg !584

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !585
  %26 = bitcast i8* %25 to i32*, !dbg !585
  %27 = load volatile i32, i32* %26, align 8, !dbg !585, !tbaa !586
  %28 = icmp ult i32 %27, 4, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %28, label %29, label %35, !dbg !588

; <label>:29:                                     ; preds = %24
  %30 = icmp eq i32 %11, 0, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %30, label %33, label %31, !dbg !592

; <label>:31:                                     ; preds = %29
  store volatile i32 4, i32* %26, align 8, !dbg !593, !tbaa !586
  store i32 1, i32* %21, align 8, !dbg !595, !tbaa !582
  %32 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %13) #3, !dbg !596
  tail call void @pte_throw(i32 2) #3, !dbg !597
  br label %53, !dbg !598

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %13) #3, !dbg !599
  br label %53

; <label>:35:                                     ; preds = %24, %19, %9
  %36 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !601
  %37 = bitcast i8* %36 to i32*, !dbg !601
  %38 = load volatile i32, i32* %37, align 8, !dbg !601, !tbaa !586
  %39 = icmp ult i32 %38, 3, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  br i1 %39, label %40, label %46, !dbg !605

; <label>:40:                                     ; preds = %35
  store volatile i32 3, i32* %37, align 8, !dbg !606, !tbaa !586
  %41 = bitcast i8* %0 to %struct.uk_thread**, !dbg !608
  %42 = load %struct.uk_thread*, %struct.uk_thread** %41, align 8, !dbg !608, !tbaa !610
  %43 = tail call i32 @pte_osThreadCancel(%struct.uk_thread* %42) #3, !dbg !611
  %44 = icmp eq i32 %43, 0, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %44, label %50, label %45, !dbg !613

; <label>:45:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br label %50, !dbg !614

; <label>:46:                                     ; preds = %35
  %47 = load volatile i32, i32* %37, align 8, !dbg !616, !tbaa !586
  %48 = icmp ugt i32 %47, 3, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %48, label %49, label %50, !dbg !619

; <label>:49:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br label %50, !dbg !620

; <label>:50:                                     ; preds = %40, %46, %49, %45
  %51 = phi i32 [ 3, %45 ], [ 0, %40 ], [ 3, %49 ], [ 0, %46 ], !dbg !622
  %52 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %13) #3, !dbg !623
  br label %53

; <label>:53:                                     ; preds = %31, %33, %50
  %54 = phi i32 [ 0, %31 ], [ 1, %33 ], [ %51, %50 ], !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %55, !dbg !625

; <label>:55:                                     ; preds = %5, %2, %53
  %56 = phi i32 [ %54, %53 ], [ %3, %2 ], [ 12, %5 ], !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  ret i32 %56, !dbg !628
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_kill(i8*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local { i8*, i32 } @pthread_self() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_equal(i8*, i32, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pte_throw(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadCancel(%struct.uk_thread*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!541, !542, !543}
!llvm.ident = !{!544}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_cancel.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10, !20, !38}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 61, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !14, !15, !16, !17, !18, !19}
!13 = !DIEnumerator(name: "PThreadStateInitial", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "PThreadStateRunning", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "PThreadStateSuspended", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "PThreadStateCancelPending", value: 3, isUnsigned: true)
!17 = !DIEnumerator(name: "PThreadStateCanceling", value: 4, isUnsigned: true)
!18 = !DIEnumerator(name: "PThreadStateException", value: 5, isUnsigned: true)
!19 = !DIEnumerator(name: "PThreadStateLast", value: 6, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 435, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!24 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!25 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!26 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!27 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!28 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!29 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!30 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!31 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!32 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!33 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!34 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!35 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!36 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!37 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !39, line: 38, baseType: !5, size: 32, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !11, line: 83, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !11, line: 85, size: 1536, elements: !52)
!52 = !{!53, !496, !503, !504, !507, !508, !509, !510, !511, !528, !529, !530, !531, !532, !533, !538, !539, !540}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !51, file: !11, line: 87, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !55, line: 11, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !58, line: 59, size: 1024, elements: !59)
!58 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !{!60, !64, !65, !66, !67, !73, !78, !84, !86, !102, !251, !252, !253, !466}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 60, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !57, file: !58, line: 61, baseType: !48, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !57, file: !58, line: 62, baseType: !48, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !57, file: !58, line: 63, baseType: !48, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !57, file: !58, line: 64, baseType: !68, size: 128, offset: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !57, file: !58, line: 64, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !68, file: !58, line: 64, baseType: !56, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !68, file: !58, line: 64, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !58, line: 65, baseType: !74, size: 32, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !75, line: 48, baseType: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !77, line: 79, baseType: !5)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !57, file: !58, line: 66, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !80, line: 49, baseType: !81)
!80 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !82, line: 128, baseType: !83)
!82 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !57, file: !58, line: 67, baseType: !85, size: 8, offset: 512)
!85 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !57, file: !58, line: 68, baseType: !87, size: 128, offset: 576)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !88, line: 42, size: 128, elements: !89)
!88 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !{!90, !100}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !87, file: !88, line: 42, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !88, line: 35, size: 192, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !92, file: !88, line: 36, baseType: !22, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !92, file: !88, line: 37, baseType: !56, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !92, file: !88, line: 38, baseType: !97, size: 64, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 38, size: 64, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !97, file: !88, line: 38, baseType: !91, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !87, file: !88, line: 42, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !57, file: !58, line: 69, baseType: !103, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !105, line: 90, size: 2176, elements: !106)
!105 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !{!107, !112, !130, !135, !137, !139, !144, !152, !157, !163, !164, !165, !170, !248, !249, !250}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !104, file: !105, line: 91, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !105, line: 68, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !103}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !104, file: !105, line: 93, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !105, line: 71, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!22, !103, !56, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !120, line: 62, baseType: !121)
!120 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !120, line: 55, size: 128, elements: !122)
!122 = !{!123, !124, !126}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !121, file: !120, line: 57, baseType: !85, size: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !121, file: !120, line: 59, baseType: !125, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !120, line: 53, baseType: !22)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !121, file: !120, line: 61, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !80, line: 48, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !82, line: 129, baseType: !129)
!129 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !104, file: !105, line: 94, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !105, line: 74, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !103, !56}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !104, file: !105, line: 95, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !105, line: 76, baseType: !132)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !104, file: !105, line: 96, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !105, line: 78, baseType: !132)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !104, file: !105, line: 98, baseType: !140, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !105, line: 81, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!22, !103, !56, !125}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !104, file: !105, line: 99, baseType: !145, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !105, line: 83, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!22, !103, !149, !151}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !104, file: !105, line: 100, baseType: !153, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !105, line: 85, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!22, !103, !56, !22}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !104, file: !105, line: 101, baseType: !158, size: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !105, line: 87, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!22, !103, !149, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !104, file: !105, line: 104, baseType: !85, size: 8, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !104, file: !105, line: 105, baseType: !57, size: 1024, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !104, file: !105, line: 106, baseType: !166, size: 128, offset: 1664)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !58, line: 93, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !166, file: !58, line: 93, baseType: !56, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !166, file: !58, line: 93, baseType: !72, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !104, file: !105, line: 107, baseType: !171, size: 192, offset: 1792)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !172, line: 59, size: 192, elements: !173)
!172 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !{!174, !239, !243}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !171, file: !172, line: 61, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !172, line: 51, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!48, !179, !129, !129}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !181, line: 77, size: 832, elements: !182)
!181 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!182 = !{!183, !190, !195, !200, !206, !208, !213, !214, !215, !220, !225, !230, !231, !232}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !180, file: !181, line: 79, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !181, line: 54, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!48, !179, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 58, baseType: !129)
!189 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !180, file: !181, line: 80, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !181, line: 56, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!48, !179, !188, !188}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !180, file: !181, line: 81, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !181, line: 62, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!48, !179, !48, !188}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !180, file: !181, line: 82, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !181, line: 58, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!22, !179, !205, !188, !188}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !180, file: !181, line: 83, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !181, line: 60, baseType: !192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !180, file: !181, line: 84, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !181, line: 64, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !179, !48}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !180, file: !181, line: 87, baseType: !209, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !180, file: !181, line: 88, baseType: !184, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !180, file: !181, line: 92, baseType: !216, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !181, line: 66, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!48, !179, !129}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !180, file: !181, line: 93, baseType: !221, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !181, line: 68, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !179, !48, !129}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !180, file: !181, line: 99, baseType: !226, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !181, line: 70, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!22, !179, !48, !188}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !180, file: !181, line: 100, baseType: !188, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !181, line: 103, baseType: !179, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !180, file: !181, line: 104, baseType: !233, offset: 832)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, elements: !237)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !75, line: 20, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !77, line: 41, baseType: !236)
!236 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!237 = !{!238}
!238 = !DISubrange(count: -1)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !171, file: !172, line: 63, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !48}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !171, file: !172, line: 65, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !172, line: 56, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !48, !48}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !104, file: !105, line: 108, baseType: !179, size: 64, offset: 1984)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !105, line: 109, baseType: !103, size: 64, offset: 2048)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !104, file: !105, line: 110, baseType: !48, size: 64, offset: 2112)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !57, file: !58, line: 70, baseType: !48, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !57, file: !58, line: 72, baseType: !22, size: 32, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !57, file: !58, line: 82, baseType: !254, size: 64, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !256, line: 569, size: 14912, elements: !257)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !{!258, !259, !334, !335, !336, !337, !341, !342, !345, !346, !350, !362, !363, !364, !366, !367, !368, !430, !451, !452, !457, !464}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !255, file: !256, line: 571, baseType: !22, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !255, file: !256, line: 576, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !256, line: 287, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !256, line: 181, size: 1408, elements: !263)
!263 = !{!264, !267, !268, !269, !271, !272, !277, !278, !279, !286, !290, !295, !299, !300, !301, !302, !306, !310, !311, !312, !314, !315, !319, !333}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !262, file: !256, line: 182, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !262, file: !256, line: 183, baseType: !22, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !262, file: !256, line: 184, baseType: !22, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !262, file: !256, line: 185, baseType: !270, size: 16, offset: 128)
!270 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !262, file: !256, line: 186, baseType: !270, size: 16, offset: 144)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !262, file: !256, line: 187, baseType: !273, size: 128, offset: 192)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !256, line: 117, size: 128, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !273, file: !256, line: 118, baseType: !265, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !273, file: !256, line: 119, baseType: !22, size: 32, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !262, file: !256, line: 188, baseType: !22, size: 32, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !262, file: !256, line: 195, baseType: !48, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !262, file: !256, line: 197, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !254, !48, !285, !22}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !284, line: 145, baseType: !83)
!284 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !262, file: !256, line: 199, baseType: !287, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!283, !254, !48, !61, !22}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !262, file: !256, line: 202, baseType: !291, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !254, !48, !294, !22}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !284, line: 114, baseType: !83)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !262, file: !256, line: 203, baseType: !296, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!22, !254, !48}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !262, file: !256, line: 206, baseType: !273, size: 128, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !262, file: !256, line: 207, baseType: !265, size: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !262, file: !256, line: 208, baseType: !22, size: 32, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !262, file: !256, line: 211, baseType: !303, size: 24, offset: 928)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 24, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 3)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !262, file: !256, line: 212, baseType: !307, size: 8, offset: 952)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 8, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 1)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !262, file: !256, line: 215, baseType: !273, size: 128, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !262, file: !256, line: 218, baseType: !22, size: 32, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !262, file: !256, line: 219, baseType: !313, size: 64, offset: 1152)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !284, line: 44, baseType: !83)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !262, file: !256, line: 222, baseType: !254, size: 64, offset: 1216)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !262, file: !256, line: 226, baseType: !316, size: 32, offset: 1280)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !284, line: 175, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !318, line: 12, baseType: !22)
!318 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !262, file: !256, line: 228, baseType: !320, size: 64, offset: 1312)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !284, line: 171, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 163, size: 64, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !321, file: !284, line: 165, baseType: !22, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !321, file: !284, line: 170, baseType: !325, size: 32, offset: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !284, line: 166, size: 32, elements: !326)
!326 = !{!327, !329}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !325, file: !284, line: 168, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !189, line: 124, baseType: !5)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !325, file: !284, line: 169, baseType: !330, size: 32)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 32, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 4)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !262, file: !256, line: 229, baseType: !22, size: 32, offset: 1376)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !255, file: !256, line: 576, baseType: !260, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !255, file: !256, line: 576, baseType: !260, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !255, file: !256, line: 578, baseType: !22, size: 32, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !255, file: !256, line: 579, baseType: !338, size: 200, offset: 288)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 200, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 25)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !255, file: !256, line: 582, baseType: !22, size: 32, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !255, file: !256, line: 583, baseType: !343, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !256, line: 40, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !255, file: !256, line: 585, baseType: !22, size: 32, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !255, file: !256, line: 587, baseType: !347, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !254}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !255, file: !256, line: 590, baseType: !351, size: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !256, line: 47, size: 256, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !352, file: !256, line: 49, baseType: !351, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !352, file: !256, line: 50, baseType: !22, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !352, file: !256, line: 50, baseType: !22, size: 32, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !352, file: !256, line: 50, baseType: !22, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !352, file: !256, line: 50, baseType: !22, size: 32, offset: 160)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !352, file: !256, line: 51, baseType: !360, size: 32, offset: 192)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 32, elements: !308)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !256, line: 25, baseType: !5)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !255, file: !256, line: 591, baseType: !22, size: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !255, file: !256, line: 592, baseType: !351, size: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !255, file: !256, line: 593, baseType: !365, size: 64, offset: 960)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !255, file: !256, line: 596, baseType: !22, size: 32, offset: 1024)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !255, file: !256, line: 597, baseType: !285, size: 64, offset: 1088)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !255, file: !256, line: 632, baseType: !369, size: 2880, offset: 1152)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !256, line: 599, size: 2880, elements: !370)
!370 = !{!371, !421}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !369, file: !256, line: 622, baseType: !372, size: 1728)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !256, line: 601, size: 1728, elements: !373)
!373 = !{!374, !375, !376, !380, !392, !393, !395, !403, !404, !405, !406, !410, !414, !415, !416, !417, !418, !419, !420}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !372, file: !256, line: 603, baseType: !5, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !372, file: !256, line: 604, baseType: !285, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !372, file: !256, line: 605, baseType: !377, size: 208, offset: 128)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 208, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 26)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !372, file: !256, line: 606, baseType: !381, size: 288, offset: 352)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !256, line: 55, size: 288, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !381, file: !256, line: 57, baseType: !22, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !381, file: !256, line: 58, baseType: !22, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !381, file: !256, line: 59, baseType: !22, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !381, file: !256, line: 60, baseType: !22, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !381, file: !256, line: 61, baseType: !22, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !381, file: !256, line: 62, baseType: !22, size: 32, offset: 160)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !381, file: !256, line: 63, baseType: !22, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !381, file: !256, line: 64, baseType: !22, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !381, file: !256, line: 65, baseType: !22, size: 32, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !372, file: !256, line: 607, baseType: !22, size: 32, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !372, file: !256, line: 608, baseType: !394, size: 64, offset: 704)
!394 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !372, file: !256, line: 609, baseType: !396, size: 112, offset: 768)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !256, line: 319, size: 112, elements: !397)
!397 = !{!398, !401, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !396, file: !256, line: 320, baseType: !399, size: 48)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 48, elements: !304)
!400 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !396, file: !256, line: 321, baseType: !399, size: 48, offset: 48)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !396, file: !256, line: 322, baseType: !400, size: 16, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !372, file: !256, line: 610, baseType: !320, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !372, file: !256, line: 611, baseType: !320, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !372, file: !256, line: 612, baseType: !320, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !372, file: !256, line: 613, baseType: !407, size: 64, offset: 1088)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 8)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !372, file: !256, line: 614, baseType: !411, size: 192, offset: 1152)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 24)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !372, file: !256, line: 615, baseType: !22, size: 32, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !372, file: !256, line: 616, baseType: !320, size: 64, offset: 1376)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !372, file: !256, line: 617, baseType: !320, size: 64, offset: 1440)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !372, file: !256, line: 618, baseType: !320, size: 64, offset: 1504)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !372, file: !256, line: 619, baseType: !320, size: 64, offset: 1568)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !372, file: !256, line: 620, baseType: !320, size: 64, offset: 1632)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !372, file: !256, line: 621, baseType: !22, size: 32, offset: 1696)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !369, file: !256, line: 631, baseType: !422, size: 2880)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !256, line: 626, size: 2880, elements: !423)
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !422, file: !256, line: 629, baseType: !425, size: 1920)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1920, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 30)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !422, file: !256, line: 630, baseType: !429, size: 960, offset: 1920)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !426)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !255, file: !256, line: 636, baseType: !431, size: 64, offset: 4032)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !256, line: 93, size: 6336, elements: !433)
!433 = !{!434, !435, !436, !443}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !432, file: !256, line: 94, baseType: !431, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !432, file: !256, line: 95, baseType: !22, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !432, file: !256, line: 97, baseType: !437, size: 2048, offset: 128)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 2048, elements: !441)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null}
!441 = !{!442}
!442 = !DISubrange(count: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !432, file: !256, line: 98, baseType: !444, size: 4160, offset: 2176)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !256, line: 74, size: 4160, elements: !445)
!445 = !{!446, !448, !449, !450}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !444, file: !256, line: 75, baseType: !447, size: 2048)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !441)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !444, file: !256, line: 76, baseType: !447, size: 2048, offset: 2048)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !444, file: !256, line: 78, baseType: !361, size: 32, offset: 4096)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !444, file: !256, line: 81, baseType: !361, size: 32, offset: 4128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !255, file: !256, line: 637, baseType: !432, size: 6336, offset: 4096)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !255, file: !256, line: 641, baseType: !453, size: 64, offset: 10432)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !22}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !255, file: !256, line: 646, baseType: !458, size: 192, offset: 10496)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !256, line: 291, size: 192, elements: !459)
!459 = !{!460, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !458, file: !256, line: 293, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !458, file: !256, line: 294, baseType: !22, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !458, file: !256, line: 295, baseType: !260, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !255, file: !256, line: 648, baseType: !465, size: 4224, offset: 10688)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 4224, elements: !304)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !57, file: !58, line: 85, baseType: !467, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !469)
!469 = !{!470, !474, !475, !482, !495}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !468, file: !4, line: 116, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !472, line: 64, baseType: !473)
!472 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !472, line: 63, baseType: !129)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !468, file: !4, line: 118, baseType: !471, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !468, file: !4, line: 120, baseType: !476, size: 128, offset: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !477, line: 51, size: 128, elements: !478)
!477 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!478 = !{!479, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !477, line: 52, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !476, file: !477, line: 53, baseType: !480, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !468, file: !4, line: 122, baseType: !483, size: 256, offset: 256)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !484)
!484 = !{!485, !486, !487}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !483, file: !4, line: 107, baseType: !3, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !483, file: !4, line: 109, baseType: !471, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !483, file: !4, line: 111, baseType: !488, size: 96, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !472, line: 72, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 68, size: 96, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !489, file: !472, line: 69, baseType: !22, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !489, file: !472, line: 70, baseType: !22, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !489, file: !472, line: 71, baseType: !494, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !472, line: 61, baseType: !22)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !468, file: !4, line: 124, baseType: !476, size: 128, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !51, file: !11, line: 88, baseType: !497, size: 128, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !21, line: 413, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !21, line: 411, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 395, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !499, file: !21, line: 398, baseType: !48, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !499, file: !21, line: 399, baseType: !5, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !51, file: !11, line: 89, baseType: !49, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !51, file: !11, line: 90, baseType: !505, size: 32, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !11, line: 80, baseType: !10)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !51, file: !11, line: 91, baseType: !48, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !51, file: !11, line: 92, baseType: !48, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !51, file: !11, line: 93, baseType: !22, size: 32, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !51, file: !11, line: 94, baseType: !22, size: 32, offset: 480)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !51, file: !11, line: 95, baseType: !512, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !21, line: 417, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !11, line: 146, size: 320, elements: !515)
!515 = !{!516, !524, !525, !526, !527}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !514, file: !11, line: 148, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !55, line: 12, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !520, line: 51, size: 192, elements: !521)
!520 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !519, file: !520, line: 52, baseType: !83, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !519, file: !520, line: 53, baseType: !87, size: 128, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !514, file: !11, line: 149, baseType: !22, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !514, file: !11, line: 156, baseType: !22, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !514, file: !11, line: 159, baseType: !22, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !514, file: !11, line: 160, baseType: !497, size: 128, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !51, file: !11, line: 96, baseType: !22, size: 32, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !51, file: !11, line: 97, baseType: !512, size: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !51, file: !11, line: 98, baseType: !22, size: 32, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !51, file: !11, line: 99, baseType: !22, size: 32, offset: 736)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !51, file: !11, line: 100, baseType: !22, size: 32, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !51, file: !11, line: 102, baseType: !534, size: 512, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !535, line: 372, baseType: !536)
!535 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 512, elements: !408)
!537 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !51, file: !11, line: 104, baseType: !22, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !51, file: !11, line: 106, baseType: !48, size: 64, offset: 1408)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !51, file: !11, line: 107, baseType: !48, size: 64, offset: 1472)
!541 = !{i32 2, !"Dwarf Version", i32 4}
!542 = !{i32 2, !"Debug Info Version", i32 3}
!543 = !{i32 1, !"wchar_size", i32 4}
!544 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!545 = distinct !DISubprogram(name: "pthread_cancel", scope: !1, file: !1, line: 48, type: !546, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!22, !497}
!548 = !{!549, !550, !551, !552, !553}
!549 = !DILocalVariable(name: "thread", arg: 1, scope: !545, file: !1, line: 48, type: !497)
!550 = !DILocalVariable(name: "result", scope: !545, file: !1, line: 71, type: !22)
!551 = !DILocalVariable(name: "cancel_self", scope: !545, file: !1, line: 72, type: !22)
!552 = !DILocalVariable(name: "self", scope: !545, file: !1, line: 73, type: !497)
!553 = !DILocalVariable(name: "tp", scope: !545, file: !1, line: 74, type: !49)
!554 = !DILocation(line: 48, column: 27, scope: !545)
!555 = !DILocation(line: 76, column: 12, scope: !545)
!556 = !DILocation(line: 71, column: 7, scope: !545)
!557 = !DILocation(line: 78, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !545, file: !1, line: 78, column: 7)
!559 = !DILocation(line: 78, column: 7, scope: !545)
!560 = !DILocation(line: 83, column: 15, scope: !561)
!561 = distinct !DILexicalBlock(scope: !545, file: !1, line: 83, column: 7)
!562 = !DILocation(line: 73, column: 13, scope: !545)
!563 = !DILocation(line: 83, column: 34, scope: !561)
!564 = !DILocation(line: 83, column: 7, scope: !545)
!565 = !DILocation(line: 102, column: 17, scope: !545)
!566 = !DILocation(line: 72, column: 7, scope: !545)
!567 = !DILocation(line: 74, column: 18, scope: !545)
!568 = !DILocation(line: 109, column: 35, scope: !545)
!569 = !DILocation(line: 109, column: 10, scope: !545)
!570 = !DILocation(line: 111, column: 11, scope: !571)
!571 = distinct !DILexicalBlock(scope: !545, file: !1, line: 111, column: 7)
!572 = !{!573, !578, i64 92}
!573 = !{!"pte_thread_t_", !574, i64 0, !577, i64 8, !574, i64 24, !575, i64 32, !574, i64 40, !574, i64 48, !578, i64 56, !578, i64 60, !574, i64 64, !578, i64 72, !574, i64 80, !578, i64 88, !578, i64 92, !578, i64 96, !575, i64 104, !578, i64 168, !574, i64 176, !574, i64 184}
!574 = !{!"any pointer", !575, i64 0}
!575 = !{!"omnipotent char", !576, i64 0}
!576 = !{!"Simple C/C++ TBAA"}
!577 = !{!"", !574, i64 0, !578, i64 8}
!578 = !{!"int", !575, i64 0}
!579 = !DILocation(line: 111, column: 22, scope: !571)
!580 = !DILocation(line: 112, column: 7, scope: !571)
!581 = !DILocation(line: 112, column: 14, scope: !571)
!582 = !{!573, !578, i64 88}
!583 = !DILocation(line: 112, column: 26, scope: !571)
!584 = !DILocation(line: 113, column: 7, scope: !571)
!585 = !DILocation(line: 113, column: 14, scope: !571)
!586 = !{!573, !575, i64 32}
!587 = !DILocation(line: 113, column: 20, scope: !571)
!588 = !DILocation(line: 111, column: 7, scope: !545)
!589 = !DILocation(line: 115, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 115, column: 11)
!591 = distinct !DILexicalBlock(scope: !571, file: !1, line: 114, column: 5)
!592 = !DILocation(line: 115, column: 11, scope: !591)
!593 = !DILocation(line: 117, column: 21, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !1, line: 116, column: 9)
!595 = !DILocation(line: 118, column: 27, scope: !594)
!596 = !DILocation(line: 120, column: 18, scope: !594)
!597 = !DILocation(line: 121, column: 11, scope: !594)
!598 = !DILocation(line: 124, column: 9, scope: !594)
!599 = !DILocation(line: 144, column: 18, scope: !600)
!600 = distinct !DILexicalBlock(scope: !590, file: !1, line: 126, column: 9)
!601 = !DILocation(line: 155, column: 15, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 155, column: 11)
!603 = distinct !DILexicalBlock(scope: !571, file: !1, line: 151, column: 5)
!604 = !DILocation(line: 155, column: 21, scope: !602)
!605 = !DILocation(line: 155, column: 11, scope: !603)
!606 = !DILocation(line: 157, column: 21, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !1, line: 156, column: 9)
!608 = !DILocation(line: 159, column: 38, scope: !609)
!609 = distinct !DILexicalBlock(scope: !607, file: !1, line: 159, column: 15)
!610 = !{!573, !574, i64 0}
!611 = !DILocation(line: 159, column: 15, scope: !609)
!612 = !DILocation(line: 159, column: 48, scope: !609)
!613 = !DILocation(line: 159, column: 15, scope: !607)
!614 = !DILocation(line: 162, column: 13, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !1, line: 160, column: 13)
!616 = !DILocation(line: 164, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !602, file: !1, line: 164, column: 16)
!618 = !DILocation(line: 164, column: 26, scope: !617)
!619 = !DILocation(line: 164, column: 16, scope: !602)
!620 = !DILocation(line: 167, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !1, line: 165, column: 9)
!622 = !DILocation(line: 0, scope: !545)
!623 = !DILocation(line: 169, column: 14, scope: !603)
!624 = !DILocation(line: 0, scope: !615)
!625 = !DILocation(line: 172, column: 3, scope: !545)
!626 = !DILocation(line: 0, scope: !627)
!627 = distinct !DILexicalBlock(scope: !558, file: !1, line: 79, column: 5)
!628 = !DILocation(line: 173, column: 1, scope: !545)
