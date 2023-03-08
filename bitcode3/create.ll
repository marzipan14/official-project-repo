; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/create.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/create.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pte_handle_t = type { i8*, i32 }
%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }
%struct.ThreadParms = type { %struct.pte_handle_t, i8* (i8*)*, i8* }
%struct.pte_thread_t_ = type { %struct.uk_thread*, %struct.pte_handle_t, %struct.pte_thread_t_*, i32, i8*, i8*, i32, i32, %struct.pthread_mutex_t_*, i32, %struct.pthread_mutex_t_*, i32, i32, i32, [8 x i64], i8, i8*, i8* }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.0 }
%struct.anon.0 = type { %struct.uk_waitq_entry* }
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
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_create(%struct.pte_handle_t*, %struct.pthread_attr_t_** readonly, i8* (i8*)*, i8*) local_unnamed_addr #0 !dbg !559 {
  %5 = icmp ne %struct.pte_handle_t* %0, null, !dbg !607
  br i1 %5, label %6, label %8, !dbg !609

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.pte_handle_t, %struct.pte_handle_t* %0, i64 0, i32 1, !dbg !610
  store i32 0, i32* %7, align 8, !dbg !612, !tbaa !613
  br label %8, !dbg !619

; <label>:8:                                      ; preds = %6, %4
  %9 = icmp eq %struct.pthread_attr_t_** %1, null, !dbg !620
  br i1 %9, label %12, label %10, !dbg !622

; <label>:10:                                     ; preds = %8
  %11 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %1, align 8, !dbg !623, !tbaa !625
  br label %12, !dbg !627

; <label>:12:                                     ; preds = %8, %10
  %13 = phi %struct.pthread_attr_t_* [ %11, %10 ], [ null, %8 ], !dbg !628
  %14 = tail call { i8*, i32 } @pte_new() #3, !dbg !630
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !630
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !630
  %17 = zext i32 %16 to i64, !dbg !630
  %18 = icmp eq i8* %15, null, !dbg !633
  br i1 %18, label %19, label %20, !dbg !634

; <label>:19:                                     ; preds = %12
  tail call void @pte_threadDestroy(i8* null, i32 %16) #3, !dbg !635
  br label %88, !dbg !639

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds i8, i8* %15, i64 72, !dbg !640
  %22 = bitcast i8* %21 to i32*, !dbg !640
  %23 = load i32, i32* %22, align 8, !dbg !640, !tbaa !641
  %24 = tail call i8* @malloc(i64 32) #3, !dbg !643
  %25 = icmp eq i8* %24, null, !dbg !645
  br i1 %25, label %80, label %26, !dbg !646

; <label>:26:                                     ; preds = %20
  %27 = bitcast i8* %24 to i8**, !dbg !647
  store i8* %15, i8** %27, align 8, !dbg !647
  %28 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !647
  %29 = bitcast i8* %28 to i64*, !dbg !647
  store i64 %17, i64* %29, align 8, !dbg !647
  %30 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !648
  %31 = bitcast i8* %30 to i8* (i8*)**, !dbg !648
  store i8* (i8*)* %2, i8* (i8*)** %31, align 8, !dbg !649, !tbaa !650
  %32 = getelementptr inbounds i8, i8* %24, i64 24, !dbg !652
  %33 = bitcast i8* %32 to i8**, !dbg !652
  store i8* %3, i8** %33, align 8, !dbg !653, !tbaa !654
  %34 = icmp eq %struct.pthread_attr_t_* %13, null, !dbg !655
  br i1 %34, label %59, label %35, !dbg !657

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %13, i64 0, i32 2, !dbg !658
  %37 = load i64, i64* %36, align 8, !dbg !658, !tbaa !660
  %38 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %13, i64 0, i32 3, !dbg !665
  %39 = load i32, i32* %38, align 8, !dbg !665, !tbaa !666
  %40 = getelementptr inbounds i8, i8* %15, i64 60, !dbg !667
  %41 = bitcast i8* %40 to i32*, !dbg !667
  store i32 %39, i32* %41, align 4, !dbg !668, !tbaa !669
  %42 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %13, i64 0, i32 4, i32 0, !dbg !670
  %43 = load i32, i32* %42, align 4, !dbg !670, !tbaa !671
  %44 = tail call i32 (...) @pte_osThreadGetMaxPriority() #3, !dbg !672
  %45 = icmp sgt i32 %43, %44, !dbg !674
  br i1 %45, label %78, label %46, !dbg !675

; <label>:46:                                     ; preds = %35
  %47 = tail call i32 (...) @pte_osThreadGetMinPriority() #3, !dbg !676
  %48 = icmp slt i32 %43, %47, !dbg !677
  br i1 %48, label %78, label %49, !dbg !678

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %13, i64 0, i32 5, !dbg !679
  %51 = load i32, i32* %50, align 8, !dbg !679, !tbaa !681
  %52 = icmp eq i32 %51, 0, !dbg !682
  br i1 %52, label %53, label %59, !dbg !683

; <label>:53:                                     ; preds = %49
  %54 = tail call { i8*, i32 } @pthread_self() #3, !dbg !684
  %55 = extractvalue { i8*, i32 } %54, 0, !dbg !684
  %56 = getelementptr inbounds i8, i8* %55, i64 72, !dbg !687
  %57 = bitcast i8* %56 to i32*, !dbg !687
  %58 = load i32, i32* %57, align 8, !dbg !687, !tbaa !641
  br label %59, !dbg !688

; <label>:59:                                     ; preds = %26, %49, %53
  %60 = phi i32 [ %58, %53 ], [ %43, %49 ], [ %23, %26 ], !dbg !689
  %61 = phi i64 [ %37, %53 ], [ %37, %49 ], [ 0, %26 ], !dbg !690
  %62 = getelementptr inbounds i8, i8* %15, i64 32, !dbg !692
  %63 = bitcast i8* %62 to i32*, !dbg !692
  store volatile i32 0, i32* %63, align 8, !dbg !693, !tbaa !694
  %64 = getelementptr inbounds i8, i8* %15, i64 176, !dbg !695
  %65 = bitcast i8* %64 to i8**, !dbg !695
  store i8* null, i8** %65, align 8, !dbg !696, !tbaa !697
  %66 = getelementptr inbounds i8, i8* %15, i64 64, !dbg !698
  %67 = bitcast i8* %66 to %struct.pthread_mutex_t_**, !dbg !698
  %68 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %67) #3, !dbg !699
  %69 = icmp eq i32 %68, 0, !dbg !700
  br i1 %69, label %70, label %72, !dbg !702

; <label>:70:                                     ; preds = %59
  store i32 %60, i32* %22, align 8, !dbg !703, !tbaa !641
  %71 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %67) #3, !dbg !705
  br label %72, !dbg !706

; <label>:72:                                     ; preds = %70, %59
  %73 = trunc i64 %61 to i32, !dbg !707
  %74 = bitcast i8* %15 to %struct.uk_thread**, !dbg !708
  %75 = tail call i32 @pte_osThreadCreate(i32 (i8*)* nonnull @pte_threadStart, i32 %73, i32 %60, i8* nonnull %24, %struct.uk_thread** %74) #3, !dbg !709
  %76 = icmp eq i32 %75, 0, !dbg !711
  br i1 %76, label %81, label %77, !dbg !713

; <label>:77:                                     ; preds = %72
  store %struct.uk_thread* null, %struct.uk_thread** %74, align 8, !dbg !714, !tbaa !716
  br label %78, !dbg !717

; <label>:78:                                     ; preds = %35, %46, %77
  %79 = phi i32 [ 11, %77 ], [ 22, %46 ], [ 22, %35 ]
  tail call void @pte_threadDestroy(i8* nonnull %15, i32 %16) #3, !dbg !635
  tail call void @free(i8* nonnull %24) #3, !dbg !718
  br label %88, !dbg !721

; <label>:80:                                     ; preds = %20
  tail call void @pte_threadDestroy(i8* nonnull %15, i32 %16) #3, !dbg !635
  br label %88, !dbg !639

; <label>:81:                                     ; preds = %72
  %82 = load %struct.uk_thread*, %struct.uk_thread** %74, align 8, !dbg !722, !tbaa !716
  %83 = tail call i32 @pte_osThreadStart(%struct.uk_thread* %82) #3, !dbg !724
  br i1 %5, label %84, label %88, !dbg !725

; <label>:84:                                     ; preds = %81
  %85 = getelementptr inbounds %struct.pte_handle_t, %struct.pte_handle_t* %0, i64 0, i32 0, !dbg !727
  store i8* %15, i8** %85, align 8, !dbg !727
  %86 = getelementptr inbounds %struct.pte_handle_t, %struct.pte_handle_t* %0, i64 0, i32 1, !dbg !727
  %87 = bitcast i32* %86 to i64*, !dbg !727
  store i64 %17, i64* %87, align 8, !dbg !727
  br label %88, !dbg !730

; <label>:88:                                     ; preds = %80, %19, %81, %84, %78
  %89 = phi i32 [ 11, %80 ], [ 0, %81 ], [ 0, %84 ], [ %79, %78 ], [ 11, %19 ]
  ret i32 %89, !dbg !731
}

; Function Attrs: noredzone
declare dso_local { i8*, i32 } @pte_new() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadGetMaxPriority(...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadGetMinPriority(...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local { i8*, i32 } @pthread_self() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadCreate(i32 (i8*)*, i32, i32, i8*, %struct.uk_thread**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_threadStart(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadStart(%struct.uk_thread*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pte_threadDestroy(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!555, !556, !557}
!llvm.ident = !{!558}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !51)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/create.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10, !20, !25, !34}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 182, baseType: !5, size: 32, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "PTE_FALSE", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "PTE_TRUE", value: 1, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !26, line: 38, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!31 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!32 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!33 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 435, baseType: !35, size: 32, elements: !36)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!37 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!38 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!39 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!40 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!41 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!42 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!43 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!44 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!45 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!46 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!47 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!48 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!49 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!50 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!51 = !{!52, !53, !545}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !11, line: 83, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !11, line: 85, size: 1536, elements: !56)
!56 = !{!57, !500, !507, !508, !511, !512, !513, !514, !515, !532, !533, !534, !535, !536, !537, !542, !543, !544}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !55, file: !11, line: 87, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !59, line: 11, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !62, line: 59, size: 1024, elements: !63)
!62 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !{!64, !68, !69, !70, !71, !77, !82, !88, !90, !106, !255, !256, !257, !470}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !62, line: 60, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !61, file: !62, line: 61, baseType: !52, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !61, file: !62, line: 62, baseType: !52, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !61, file: !62, line: 63, baseType: !52, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !61, file: !62, line: 64, baseType: !72, size: 128, offset: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !61, file: !62, line: 64, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !72, file: !62, line: 64, baseType: !60, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !72, file: !62, line: 64, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !62, line: 65, baseType: !78, size: 32, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !79, line: 48, baseType: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !81, line: 79, baseType: !5)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !61, file: !62, line: 66, baseType: !83, size: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !84, line: 49, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 128, baseType: !87)
!86 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !61, file: !62, line: 67, baseType: !89, size: 8, offset: 512)
!89 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !61, file: !62, line: 68, baseType: !91, size: 128, offset: 576)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !92, line: 42, size: 128, elements: !93)
!92 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !{!94, !104}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !91, file: !92, line: 42, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !92, line: 35, size: 192, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !96, file: !92, line: 36, baseType: !35, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !96, file: !92, line: 37, baseType: !60, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !96, file: !92, line: 38, baseType: !101, size: 64, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 38, size: 64, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !101, file: !92, line: 38, baseType: !95, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !91, file: !92, line: 42, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !61, file: !62, line: 69, baseType: !107, size: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !109, line: 90, size: 2176, elements: !110)
!109 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !{!111, !116, !134, !139, !141, !143, !148, !156, !161, !167, !168, !169, !174, !252, !253, !254}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !108, file: !109, line: 91, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !109, line: 68, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !107}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !108, file: !109, line: 93, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !109, line: 71, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!35, !107, !60, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !124, line: 62, baseType: !125)
!124 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !124, line: 55, size: 128, elements: !126)
!126 = !{!127, !128, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !125, file: !124, line: 57, baseType: !89, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !125, file: !124, line: 59, baseType: !129, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !124, line: 53, baseType: !35)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !125, file: !124, line: 61, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !84, line: 48, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 129, baseType: !133)
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !108, file: !109, line: 94, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !109, line: 74, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !107, !60}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !108, file: !109, line: 95, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !109, line: 76, baseType: !136)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !108, file: !109, line: 96, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !109, line: 78, baseType: !136)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !108, file: !109, line: 98, baseType: !144, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !109, line: 81, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!35, !107, !60, !129}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !108, file: !109, line: 99, baseType: !149, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !109, line: 83, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!35, !107, !153, !155}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !108, file: !109, line: 100, baseType: !157, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !109, line: 85, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!35, !107, !60, !35}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !108, file: !109, line: 101, baseType: !162, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !109, line: 87, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!35, !107, !153, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !108, file: !109, line: 104, baseType: !89, size: 8, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !108, file: !109, line: 105, baseType: !61, size: 1024, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !108, file: !109, line: 106, baseType: !170, size: 128, offset: 1664)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !62, line: 93, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !170, file: !62, line: 93, baseType: !60, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !170, file: !62, line: 93, baseType: !76, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !108, file: !109, line: 107, baseType: !175, size: 192, offset: 1792)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !176, line: 59, size: 192, elements: !177)
!176 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!177 = !{!178, !243, !247}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !175, file: !176, line: 61, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !176, line: 51, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!52, !183, !133, !133}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !185, line: 77, size: 832, elements: !186)
!185 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!186 = !{!187, !194, !199, !204, !210, !212, !217, !218, !219, !224, !229, !234, !235, !236}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !184, file: !185, line: 79, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !185, line: 54, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!52, !183, !192}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 58, baseType: !133)
!193 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !184, file: !185, line: 80, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !185, line: 56, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!52, !183, !192, !192}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !184, file: !185, line: 81, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !185, line: 62, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!52, !183, !52, !192}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !184, file: !185, line: 82, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !185, line: 58, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!35, !183, !209, !192, !192}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !184, file: !185, line: 83, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !185, line: 60, baseType: !196)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !184, file: !185, line: 84, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !185, line: 64, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !183, !52}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !184, file: !185, line: 87, baseType: !213, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !184, file: !185, line: 88, baseType: !188, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !184, file: !185, line: 92, baseType: !220, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !185, line: 66, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!52, !183, !133}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !184, file: !185, line: 93, baseType: !225, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !185, line: 68, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !183, !52, !133}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !184, file: !185, line: 99, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !185, line: 70, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!35, !183, !52, !192}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !184, file: !185, line: 100, baseType: !192, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !185, line: 103, baseType: !183, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !184, file: !185, line: 104, baseType: !237, offset: 832)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !241)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !79, line: 20, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !81, line: 41, baseType: !240)
!240 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!241 = !{!242}
!242 = !DISubrange(count: -1)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !175, file: !176, line: 63, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !52}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !175, file: !176, line: 65, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !176, line: 56, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !52, !52}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !108, file: !109, line: 108, baseType: !183, size: 64, offset: 1984)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !109, line: 109, baseType: !107, size: 64, offset: 2048)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !108, file: !109, line: 110, baseType: !52, size: 64, offset: 2112)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !61, file: !62, line: 70, baseType: !52, size: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !61, file: !62, line: 72, baseType: !35, size: 32, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !61, file: !62, line: 82, baseType: !258, size: 64, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !260, line: 569, size: 14912, elements: !261)
!260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!261 = !{!262, !263, !338, !339, !340, !341, !345, !346, !349, !350, !354, !366, !367, !368, !370, !371, !372, !434, !455, !456, !461, !468}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !259, file: !260, line: 571, baseType: !35, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !259, file: !260, line: 576, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !260, line: 287, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !260, line: 181, size: 1408, elements: !267)
!267 = !{!268, !271, !272, !273, !275, !276, !281, !282, !283, !290, !294, !299, !303, !304, !305, !306, !310, !314, !315, !316, !318, !319, !323, !337}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !266, file: !260, line: 182, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !266, file: !260, line: 183, baseType: !35, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !266, file: !260, line: 184, baseType: !35, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !266, file: !260, line: 185, baseType: !274, size: 16, offset: 128)
!274 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !266, file: !260, line: 186, baseType: !274, size: 16, offset: 144)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !266, file: !260, line: 187, baseType: !277, size: 128, offset: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !260, line: 117, size: 128, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !277, file: !260, line: 118, baseType: !269, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !277, file: !260, line: 119, baseType: !35, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !266, file: !260, line: 188, baseType: !35, size: 32, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !266, file: !260, line: 195, baseType: !52, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !266, file: !260, line: 197, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !258, !52, !289, !35}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !288, line: 145, baseType: !87)
!288 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !266, file: !260, line: 199, baseType: !291, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!287, !258, !52, !65, !35}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !266, file: !260, line: 202, baseType: !295, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !258, !52, !298, !35}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !288, line: 114, baseType: !87)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !266, file: !260, line: 203, baseType: !300, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!35, !258, !52}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !266, file: !260, line: 206, baseType: !277, size: 128, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !266, file: !260, line: 207, baseType: !269, size: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !266, file: !260, line: 208, baseType: !35, size: 32, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !266, file: !260, line: 211, baseType: !307, size: 24, offset: 928)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 24, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 3)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !266, file: !260, line: 212, baseType: !311, size: 8, offset: 952)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 1)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !266, file: !260, line: 215, baseType: !277, size: 128, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !266, file: !260, line: 218, baseType: !35, size: 32, offset: 1088)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !266, file: !260, line: 219, baseType: !317, size: 64, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !288, line: 44, baseType: !87)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !266, file: !260, line: 222, baseType: !258, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !266, file: !260, line: 226, baseType: !320, size: 32, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !288, line: 175, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !322, line: 12, baseType: !35)
!322 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !266, file: !260, line: 228, baseType: !324, size: 64, offset: 1312)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !288, line: 171, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 163, size: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !325, file: !288, line: 165, baseType: !35, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !325, file: !288, line: 170, baseType: !329, size: 32, offset: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !288, line: 166, size: 32, elements: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !329, file: !288, line: 168, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !193, line: 124, baseType: !5)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !329, file: !288, line: 169, baseType: !334, size: 32)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 32, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 4)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !266, file: !260, line: 229, baseType: !35, size: 32, offset: 1376)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !259, file: !260, line: 576, baseType: !264, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !259, file: !260, line: 576, baseType: !264, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !259, file: !260, line: 578, baseType: !35, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !259, file: !260, line: 579, baseType: !342, size: 200, offset: 288)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 200, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 25)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !259, file: !260, line: 582, baseType: !35, size: 32, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !259, file: !260, line: 583, baseType: !347, size: 64, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !260, line: 40, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !259, file: !260, line: 585, baseType: !35, size: 32, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !259, file: !260, line: 587, baseType: !351, size: 64, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !258}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !259, file: !260, line: 590, baseType: !355, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !260, line: 47, size: 256, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !356, file: !260, line: 49, baseType: !355, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !356, file: !260, line: 50, baseType: !35, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !356, file: !260, line: 50, baseType: !35, size: 32, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !356, file: !260, line: 50, baseType: !35, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !356, file: !260, line: 50, baseType: !35, size: 32, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !356, file: !260, line: 51, baseType: !364, size: 32, offset: 192)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 32, elements: !312)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !260, line: 25, baseType: !5)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !259, file: !260, line: 591, baseType: !35, size: 32, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !259, file: !260, line: 592, baseType: !355, size: 64, offset: 896)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !259, file: !260, line: 593, baseType: !369, size: 64, offset: 960)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !259, file: !260, line: 596, baseType: !35, size: 32, offset: 1024)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !259, file: !260, line: 597, baseType: !289, size: 64, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !259, file: !260, line: 632, baseType: !373, size: 2880, offset: 1152)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !260, line: 599, size: 2880, elements: !374)
!374 = !{!375, !425}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !373, file: !260, line: 622, baseType: !376, size: 1728)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !260, line: 601, size: 1728, elements: !377)
!377 = !{!378, !379, !380, !384, !396, !397, !399, !407, !408, !409, !410, !414, !418, !419, !420, !421, !422, !423, !424}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !376, file: !260, line: 603, baseType: !5, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !376, file: !260, line: 604, baseType: !289, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !376, file: !260, line: 605, baseType: !381, size: 208, offset: 128)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 208, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 26)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !376, file: !260, line: 606, baseType: !385, size: 288, offset: 352)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !260, line: 55, size: 288, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !385, file: !260, line: 57, baseType: !35, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !385, file: !260, line: 58, baseType: !35, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !385, file: !260, line: 59, baseType: !35, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !385, file: !260, line: 60, baseType: !35, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !385, file: !260, line: 61, baseType: !35, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !385, file: !260, line: 62, baseType: !35, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !385, file: !260, line: 63, baseType: !35, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !385, file: !260, line: 64, baseType: !35, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !385, file: !260, line: 65, baseType: !35, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !376, file: !260, line: 607, baseType: !35, size: 32, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !376, file: !260, line: 608, baseType: !398, size: 64, offset: 704)
!398 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !376, file: !260, line: 609, baseType: !400, size: 112, offset: 768)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !260, line: 319, size: 112, elements: !401)
!401 = !{!402, !405, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !400, file: !260, line: 320, baseType: !403, size: 48)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 48, elements: !308)
!404 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !400, file: !260, line: 321, baseType: !403, size: 48, offset: 48)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !400, file: !260, line: 322, baseType: !404, size: 16, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !376, file: !260, line: 610, baseType: !324, size: 64, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !376, file: !260, line: 611, baseType: !324, size: 64, offset: 960)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !376, file: !260, line: 612, baseType: !324, size: 64, offset: 1024)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !376, file: !260, line: 613, baseType: !411, size: 64, offset: 1088)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !376, file: !260, line: 614, baseType: !415, size: 192, offset: 1152)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 24)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !376, file: !260, line: 615, baseType: !35, size: 32, offset: 1344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !376, file: !260, line: 616, baseType: !324, size: 64, offset: 1376)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !376, file: !260, line: 617, baseType: !324, size: 64, offset: 1440)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !376, file: !260, line: 618, baseType: !324, size: 64, offset: 1504)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !376, file: !260, line: 619, baseType: !324, size: 64, offset: 1568)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !376, file: !260, line: 620, baseType: !324, size: 64, offset: 1632)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !376, file: !260, line: 621, baseType: !35, size: 32, offset: 1696)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !373, file: !260, line: 631, baseType: !426, size: 2880)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !260, line: 626, size: 2880, elements: !427)
!427 = !{!428, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !426, file: !260, line: 629, baseType: !429, size: 1920)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 1920, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 30)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !426, file: !260, line: 630, baseType: !433, size: 960, offset: 1920)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !430)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !259, file: !260, line: 636, baseType: !435, size: 64, offset: 4032)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !260, line: 93, size: 6336, elements: !437)
!437 = !{!438, !439, !440, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !436, file: !260, line: 94, baseType: !435, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !436, file: !260, line: 95, baseType: !35, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !436, file: !260, line: 97, baseType: !441, size: 2048, offset: 128)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !445)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null}
!445 = !{!446}
!446 = !DISubrange(count: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !436, file: !260, line: 98, baseType: !448, size: 4160, offset: 2176)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !260, line: 74, size: 4160, elements: !449)
!449 = !{!450, !452, !453, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !448, file: !260, line: 75, baseType: !451, size: 2048)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !445)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !448, file: !260, line: 76, baseType: !451, size: 2048, offset: 2048)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !448, file: !260, line: 78, baseType: !365, size: 32, offset: 4096)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !448, file: !260, line: 81, baseType: !365, size: 32, offset: 4128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !259, file: !260, line: 637, baseType: !436, size: 6336, offset: 4096)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !259, file: !260, line: 641, baseType: !457, size: 64, offset: 10432)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !35}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !259, file: !260, line: 646, baseType: !462, size: 192, offset: 10496)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !260, line: 291, size: 192, elements: !463)
!463 = !{!464, !466, !467}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !462, file: !260, line: 293, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !462, file: !260, line: 294, baseType: !35, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !462, file: !260, line: 295, baseType: !264, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !259, file: !260, line: 648, baseType: !469, size: 4224, offset: 10688)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 4224, elements: !308)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !61, file: !62, line: 85, baseType: !471, size: 64, offset: 960)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !473)
!473 = !{!474, !478, !479, !486, !499}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !472, file: !4, line: 116, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !476, line: 64, baseType: !477)
!476 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !476, line: 63, baseType: !133)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !472, file: !4, line: 118, baseType: !475, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !472, file: !4, line: 120, baseType: !480, size: 128, offset: 128)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !481, line: 51, size: 128, elements: !482)
!481 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!482 = !{!483, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !481, line: 52, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !480, file: !481, line: 53, baseType: !484, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !472, file: !4, line: 122, baseType: !487, size: 256, offset: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !487, file: !4, line: 107, baseType: !3, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !487, file: !4, line: 109, baseType: !475, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !487, file: !4, line: 111, baseType: !492, size: 96, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !476, line: 72, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 68, size: 96, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !493, file: !476, line: 69, baseType: !35, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !493, file: !476, line: 70, baseType: !35, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !493, file: !476, line: 71, baseType: !498, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !476, line: 61, baseType: !35)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !472, file: !4, line: 124, baseType: !480, size: 128, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !55, file: !11, line: 88, baseType: !501, size: 128, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !21, line: 413, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !21, line: 411, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 395, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !503, file: !21, line: 398, baseType: !52, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !503, file: !21, line: 399, baseType: !5, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !55, file: !11, line: 89, baseType: !53, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !55, file: !11, line: 90, baseType: !509, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !11, line: 80, baseType: !10)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !55, file: !11, line: 91, baseType: !52, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !55, file: !11, line: 92, baseType: !52, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !55, file: !11, line: 93, baseType: !35, size: 32, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !55, file: !11, line: 94, baseType: !35, size: 32, offset: 480)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !55, file: !11, line: 95, baseType: !516, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !21, line: 417, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !11, line: 146, size: 320, elements: !519)
!519 = !{!520, !528, !529, !530, !531}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !518, file: !11, line: 148, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !59, line: 12, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !524, line: 51, size: 192, elements: !525)
!524 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !523, file: !524, line: 52, baseType: !87, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !523, file: !524, line: 53, baseType: !91, size: 128, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !518, file: !11, line: 149, baseType: !35, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !518, file: !11, line: 156, baseType: !35, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !518, file: !11, line: 159, baseType: !35, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !518, file: !11, line: 160, baseType: !501, size: 128, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !55, file: !11, line: 96, baseType: !35, size: 32, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !55, file: !11, line: 97, baseType: !516, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !55, file: !11, line: 98, baseType: !35, size: 32, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !55, file: !11, line: 99, baseType: !35, size: 32, offset: 736)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !55, file: !11, line: 100, baseType: !35, size: 32, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !55, file: !11, line: 102, baseType: !538, size: 512, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !539, line: 372, baseType: !540)
!539 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !412)
!541 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !55, file: !11, line: 104, baseType: !35, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !55, file: !11, line: 106, baseType: !52, size: 64, offset: 1408)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !55, file: !11, line: 107, baseType: !52, size: 64, offset: 1472)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThreadParms", file: !11, line: 223, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ThreadParms", file: !11, line: 226, size: 256, elements: !548)
!548 = !{!549, !550, !554}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !547, file: !11, line: 228, baseType: !501, size: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !547, file: !11, line: 229, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!52, !52}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !547, file: !11, line: 230, baseType: !52, size: 64, offset: 192)
!555 = !{i32 2, !"Dwarf Version", i32 4}
!556 = !{i32 2, !"Debug Info Version", i32 3}
!557 = !{i32 1, !"wchar_size", i32 4}
!558 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!559 = distinct !DISubprogram(name: "pthread_create", scope: !1, file: !1, line: 52, type: !560, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !583)
!560 = !DISubroutineType(types: !561)
!561 = !{!35, !562, !563, !551, !52}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !21, line: 414, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !11, line: 116, size: 320, elements: !568)
!568 = !{!569, !570, !571, !575, !576, !581, !582}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !567, file: !11, line: 118, baseType: !133, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !567, file: !11, line: 119, baseType: !52, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !567, file: !11, line: 120, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !573, line: 40, baseType: !574)
!573 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !288, line: 129, baseType: !133)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !567, file: !11, line: 121, baseType: !35, size: 32, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !567, file: !11, line: 122, baseType: !577, size: 32, offset: 224)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !578, line: 97, size: 32, elements: !579)
!578 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !577, file: !578, line: 99, baseType: !35, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !567, file: !11, line: 123, baseType: !35, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !567, file: !11, line: 124, baseType: !35, size: 32, offset: 288)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!584 = !DILocalVariable(name: "tid", arg: 1, scope: !559, file: !1, line: 52, type: !562)
!585 = !DILocalVariable(name: "attr", arg: 2, scope: !559, file: !1, line: 53, type: !563)
!586 = !DILocalVariable(name: "start", arg: 3, scope: !559, file: !1, line: 54, type: !551)
!587 = !DILocalVariable(name: "arg", arg: 4, scope: !559, file: !1, line: 54, type: !52)
!588 = !DILocalVariable(name: "thread", scope: !559, file: !1, line: 93, type: !501)
!589 = !DILocalVariable(name: "tp", scope: !559, file: !1, line: 94, type: !53)
!590 = !DILocalVariable(name: "a", scope: !559, file: !1, line: 95, type: !565)
!591 = !DILocalVariable(name: "result", scope: !559, file: !1, line: 96, type: !35)
!592 = !DILocalVariable(name: "run", scope: !559, file: !1, line: 97, type: !35)
!593 = !DILocalVariable(name: "parms", scope: !559, file: !1, line: 98, type: !545)
!594 = !DILocalVariable(name: "stackSize", scope: !559, file: !1, line: 99, type: !87)
!595 = !DILocalVariable(name: "priority", scope: !559, file: !1, line: 100, type: !35)
!596 = !DILocalVariable(name: "self", scope: !559, file: !1, line: 101, type: !501)
!597 = !DILocalVariable(name: "osResult", scope: !559, file: !1, line: 102, type: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !26, line: 60, baseType: !25)
!599 = !DILocation(line: 52, column: 29, scope: !559)
!600 = !DILocation(line: 53, column: 40, scope: !559)
!601 = !DILocation(line: 54, column: 25, scope: !559)
!602 = !DILocation(line: 54, column: 48, scope: !559)
!603 = !DILocation(line: 96, column: 7, scope: !559)
!604 = !DILocation(line: 97, column: 7, scope: !559)
!605 = !DILocation(line: 98, column: 16, scope: !559)
!606 = !DILocation(line: 100, column: 7, scope: !559)
!607 = !DILocation(line: 110, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !559, file: !1, line: 110, column: 7)
!609 = !DILocation(line: 110, column: 7, scope: !559)
!610 = !DILocation(line: 112, column: 12, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 111, column: 5)
!612 = !DILocation(line: 112, column: 14, scope: !611)
!613 = !{!614, !618, i64 8}
!614 = !{!"", !615, i64 0, !618, i64 8}
!615 = !{!"any pointer", !616, i64 0}
!616 = !{!"omnipotent char", !617, i64 0}
!617 = !{!"Simple C/C++ TBAA"}
!618 = !{!"int", !616, i64 0}
!619 = !DILocation(line: 113, column: 5, scope: !611)
!620 = !DILocation(line: 115, column: 12, scope: !621)
!621 = distinct !DILexicalBlock(scope: !559, file: !1, line: 115, column: 7)
!622 = !DILocation(line: 115, column: 7, scope: !559)
!623 = !DILocation(line: 117, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !1, line: 116, column: 5)
!625 = !{!615, !615, i64 0}
!626 = !DILocation(line: 95, column: 27, scope: !559)
!627 = !DILocation(line: 118, column: 5, scope: !624)
!628 = !DILocation(line: 0, scope: !629)
!629 = distinct !DILexicalBlock(scope: !621, file: !1, line: 120, column: 5)
!630 = !DILocation(line: 124, column: 17, scope: !631)
!631 = distinct !DILexicalBlock(scope: !559, file: !1, line: 124, column: 7)
!632 = !DILocation(line: 93, column: 13, scope: !559)
!633 = !DILocation(line: 124, column: 31, scope: !631)
!634 = !DILocation(line: 124, column: 7, scope: !559)
!635 = !DILocation(line: 241, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 239, column: 5)
!637 = distinct !DILexicalBlock(scope: !559, file: !1, line: 238, column: 7)
!638 = !DILocation(line: 94, column: 18, scope: !559)
!639 = !DILocation(line: 244, column: 11, scope: !636)
!640 = !DILocation(line: 131, column: 18, scope: !559)
!641 = !{!642, !618, i64 72}
!642 = !{!"pte_thread_t_", !615, i64 0, !614, i64 8, !615, i64 24, !616, i64 32, !615, i64 40, !615, i64 48, !618, i64 56, !618, i64 60, !615, i64 64, !618, i64 72, !615, i64 80, !618, i64 88, !618, i64 92, !618, i64 96, !616, i64 104, !618, i64 168, !615, i64 176, !615, i64 184}
!643 = !DILocation(line: 133, column: 32, scope: !644)
!644 = distinct !DILexicalBlock(scope: !559, file: !1, line: 133, column: 7)
!645 = !DILocation(line: 133, column: 58, scope: !644)
!646 = !DILocation(line: 133, column: 7, scope: !559)
!647 = !DILocation(line: 138, column: 16, scope: !559)
!648 = !DILocation(line: 139, column: 10, scope: !559)
!649 = !DILocation(line: 139, column: 16, scope: !559)
!650 = !{!651, !615, i64 16}
!651 = !{!"ThreadParms", !614, i64 0, !615, i64 16, !615, i64 24}
!652 = !DILocation(line: 140, column: 10, scope: !559)
!653 = !DILocation(line: 140, column: 14, scope: !559)
!654 = !{!651, !615, i64 24}
!655 = !DILocation(line: 142, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !559, file: !1, line: 142, column: 7)
!657 = !DILocation(line: 142, column: 7, scope: !559)
!658 = !DILocation(line: 144, column: 22, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !1, line: 143, column: 5)
!660 = !{!661, !662, i64 16}
!661 = !{!"pthread_attr_t_", !662, i64 0, !615, i64 8, !662, i64 16, !618, i64 24, !663, i64 28, !618, i64 32, !618, i64 36}
!662 = !{!"long", !616, i64 0}
!663 = !{!"sched_param", !618, i64 0}
!664 = !DILocation(line: 99, column: 8, scope: !559)
!665 = !DILocation(line: 145, column: 28, scope: !659)
!666 = !{!661, !618, i64 24}
!667 = !DILocation(line: 145, column: 11, scope: !659)
!668 = !DILocation(line: 145, column: 23, scope: !659)
!669 = !{!642, !618, i64 60}
!670 = !DILocation(line: 146, column: 27, scope: !659)
!671 = !{!661, !618, i64 28}
!672 = !DILocation(line: 148, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !659, file: !1, line: 148, column: 12)
!674 = !DILocation(line: 148, column: 22, scope: !673)
!675 = !DILocation(line: 148, column: 54, scope: !673)
!676 = !DILocation(line: 149, column: 24, scope: !673)
!677 = !DILocation(line: 149, column: 22, scope: !673)
!678 = !DILocation(line: 148, column: 12, scope: !659)
!679 = !DILocation(line: 162, column: 39, scope: !680)
!680 = distinct !DILexicalBlock(scope: !659, file: !1, line: 162, column: 11)
!681 = !{!661, !618, i64 32}
!682 = !DILocation(line: 162, column: 33, scope: !680)
!683 = !DILocation(line: 162, column: 11, scope: !659)
!684 = !DILocation(line: 169, column: 18, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !1, line: 163, column: 9)
!686 = !DILocation(line: 101, column: 13, scope: !559)
!687 = !DILocation(line: 170, column: 49, scope: !685)
!688 = !DILocation(line: 171, column: 9, scope: !685)
!689 = !DILocation(line: 0, scope: !559)
!690 = !DILocation(line: 0, scope: !691)
!691 = distinct !DILexicalBlock(scope: !656, file: !1, line: 176, column: 5)
!692 = !DILocation(line: 184, column: 7, scope: !559)
!693 = !DILocation(line: 184, column: 13, scope: !559)
!694 = !{!642, !616, i64 32}
!695 = !DILocation(line: 186, column: 7, scope: !559)
!696 = !DILocation(line: 186, column: 12, scope: !559)
!697 = !{!642, !615, i64 176}
!698 = !DILocation(line: 196, column: 37, scope: !559)
!699 = !DILocation(line: 196, column: 12, scope: !559)
!700 = !DILocation(line: 198, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !559, file: !1, line: 198, column: 7)
!702 = !DILocation(line: 198, column: 7, scope: !559)
!703 = !DILocation(line: 204, column: 26, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 199, column: 5)
!705 = !DILocation(line: 206, column: 14, scope: !704)
!706 = !DILocation(line: 207, column: 5, scope: !704)
!707 = !DILocation(line: 210, column: 33, scope: !559)
!708 = !DILocation(line: 213, column: 39, scope: !559)
!709 = !DILocation(line: 209, column: 14, scope: !559)
!710 = !DILocation(line: 102, column: 16, scope: !559)
!711 = !DILocation(line: 215, column: 16, scope: !712)
!712 = distinct !DILexicalBlock(scope: !559, file: !1, line: 215, column: 7)
!713 = !DILocation(line: 215, column: 7, scope: !559)
!714 = !DILocation(line: 222, column: 20, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !1, line: 221, column: 5)
!716 = !{!642, !615, i64 0}
!717 = !DILocation(line: 224, column: 7, scope: !715)
!718 = !DILocation(line: 246, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 245, column: 9)
!720 = distinct !DILexicalBlock(scope: !636, file: !1, line: 244, column: 11)
!721 = !DILocation(line: 247, column: 9, scope: !719)
!722 = !DILocation(line: 217, column: 29, scope: !723)
!723 = distinct !DILexicalBlock(scope: !712, file: !1, line: 216, column: 5)
!724 = !DILocation(line: 217, column: 7, scope: !723)
!725 = !DILocation(line: 251, column: 11, scope: !726)
!726 = distinct !DILexicalBlock(scope: !637, file: !1, line: 250, column: 5)
!727 = !DILocation(line: 253, column: 18, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 252, column: 9)
!729 = distinct !DILexicalBlock(scope: !726, file: !1, line: 251, column: 11)
!730 = !DILocation(line: 254, column: 9, scope: !728)
!731 = !DILocation(line: 257, column: 3, scope: !559)
