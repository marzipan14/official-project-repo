; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_setspecific.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_setspecific.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_key_t_ = type { i32, void (i8*)*, %struct.pthread_mutex_t_*, i8* }
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
%struct.pte_thread_t_ = type { %struct.uk_thread*, %struct.pte_handle_t, %struct.pte_thread_t_*, i32, i8*, i8*, i32, i32, %struct.pthread_mutex_t_*, i32, %struct.pthread_mutex_t_*, i32, i32, i32, [8 x i64], i8, i8*, i8* }
%struct.ThreadKeyAssoc = type { %struct.pte_thread_t_*, %struct.pthread_key_t_*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc* }

@pte_selfThreadKey = external dso_local local_unnamed_addr global %struct.pthread_key_t_*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_setspecific(%struct.pthread_key_t_*, i8*) local_unnamed_addr #0 !dbg !548 {
  %3 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** @pte_selfThreadKey, align 8, !dbg !572, !tbaa !573
  %4 = icmp eq %struct.pthread_key_t_* %3, %0, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %4, label %9, label %5, !dbg !578

; <label>:5:                                      ; preds = %2
  %6 = tail call { i8*, i32 } @pthread_self() #3, !dbg !579
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !579
  %8 = icmp eq i8* %7, null, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %8, label %70, label %21, !dbg !584

; <label>:9:                                      ; preds = %2
  %10 = tail call i8* @pthread_getspecific(%struct.pthread_key_t_* %0) #3, !dbg !585
  %11 = icmp eq i8* %10, null, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %11, label %12, label %14, !dbg !588

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i8* %1, null, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %13, label %20, label %16, !dbg !592

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !594
  br label %16

; <label>:16:                                     ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %1, %12 ]
  %18 = bitcast i8* %17 to i8**, !dbg !596
  %19 = load i8*, i8** %18, align 8, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %21

; <label>:20:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %70

; <label>:21:                                     ; preds = %16, %5
  %22 = phi i8* [ %7, %5 ], [ %19, %16 ]
  %23 = icmp eq %struct.pthread_key_t_* %0, null, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br i1 %23, label %70, label %24, !dbg !601

; <label>:24:                                     ; preds = %21
  %25 = icmp eq i8* %22, null, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %25, label %59, label %26, !dbg !603

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 1, !dbg !604
  %28 = load void (i8*)*, void (i8*)** %27, align 8, !dbg !604, !tbaa !605
  %29 = icmp ne void (i8*)* %28, null, !dbg !608
  %30 = icmp ne i8* %1, null, !dbg !609
  %31 = and i1 %30, %29, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %31, label %32, label %59, !dbg !610

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 2, !dbg !611
  %34 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %33) #3, !dbg !612
  %35 = icmp eq i32 %34, 0, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %35, label %36, label %60, !dbg !614

; <label>:36:                                     ; preds = %32
  %37 = bitcast i8* %22 to %struct.pte_thread_t_*, !dbg !615
  %38 = getelementptr inbounds i8, i8* %22, i64 64, !dbg !617
  %39 = bitcast i8* %38 to %struct.pthread_mutex_t_**, !dbg !617
  %40 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %39) #3, !dbg !618
  %41 = getelementptr inbounds i8, i8* %22, i64 176, !dbg !619
  %42 = bitcast i8* %41 to %struct.ThreadKeyAssoc**, !dbg !619
  %43 = load %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc** %42, align 8, !dbg !619, !tbaa !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %44 = icmp eq %struct.ThreadKeyAssoc* %43, null, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %44, label %54, label %45, !dbg !624

; <label>:45:                                     ; preds = %36, %50
  %46 = phi %struct.ThreadKeyAssoc* [ %52, %50 ], [ %43, %36 ]
  %47 = getelementptr inbounds %struct.ThreadKeyAssoc, %struct.ThreadKeyAssoc* %46, i64 0, i32 1, !dbg !626
  %48 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** %47, align 8, !dbg !626, !tbaa !629
  %49 = icmp eq %struct.pthread_key_t_* %48, %0, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %49, label %56, label %50, !dbg !632

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.ThreadKeyAssoc, %struct.ThreadKeyAssoc* %46, i64 0, i32 2, !dbg !633
  %52 = load %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc** %51, align 8, !dbg !633, !tbaa !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %53 = icmp eq %struct.ThreadKeyAssoc* %52, null, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %53, label %54, label %45, !dbg !624, !llvm.loop !635

; <label>:54:                                     ; preds = %50, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  %55 = tail call i32 @pte_tkAssocCreate(%struct.pte_thread_t_* %37, %struct.pthread_key_t_* nonnull %0) #3, !dbg !638
  br label %56, !dbg !641

; <label>:56:                                     ; preds = %45, %54
  %57 = phi i32 [ %55, %54 ], [ 0, %45 ], !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %58 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %39) #3, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br label %60, !dbg !645

; <label>:59:                                     ; preds = %26, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br label %64, !dbg !646

; <label>:60:                                     ; preds = %32, %56
  %61 = phi i32 [ %57, %56 ], [ 0, %32 ], !dbg !642
  %62 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %33) #3, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  %63 = icmp eq i32 %61, 0, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %63, label %64, label %70, !dbg !646

; <label>:64:                                     ; preds = %59, %60
  %65 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 0, !dbg !651
  %66 = load i32, i32* %65, align 8, !dbg !651, !tbaa !654
  %67 = tail call i32 @pte_osTlsSetValue(i32 %66, i8* %1) #3, !dbg !655
  %68 = icmp eq i32 %67, 0, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %68, label %70, label %69, !dbg !657

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br label %70, !dbg !658

; <label>:70:                                     ; preds = %69, %60, %21, %64, %5, %20
  %71 = phi i32 [ 2, %20 ], [ 2, %5 ], [ 11, %69 ], [ 0, %64 ], [ %61, %60 ], [ 0, %21 ], !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  ret i32 %71, !dbg !661
}

; Function Attrs: noredzone
declare dso_local { i8*, i32 } @pthread_self() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @pthread_getspecific(%struct.pthread_key_t_*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_tkAssocCreate(%struct.pte_thread_t_*, %struct.pthread_key_t_*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osTlsSetValue(i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!544, !545, !546}
!llvm.ident = !{!547}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_setspecific.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !10, !20}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !21, line: 38, baseType: !5, size: 32, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!29 = !{!30, !31, !525, !526}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !11, line: 83, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !11, line: 85, size: 1536, elements: !34)
!34 = !{!35, !479, !487, !488, !491, !492, !493, !494, !495, !512, !513, !514, !515, !516, !517, !522, !523, !524}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !33, file: !11, line: 87, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !37, line: 11, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !40, line: 59, size: 1024, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !46, !47, !48, !49, !55, !60, !66, !68, !85, !234, !235, !236, !449}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 60, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !39, file: !40, line: 61, baseType: !30, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !39, file: !40, line: 62, baseType: !30, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !39, file: !40, line: 63, baseType: !30, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !39, file: !40, line: 64, baseType: !50, size: 128, offset: 256)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !40, line: 64, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !50, file: !40, line: 64, baseType: !38, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !50, file: !40, line: 64, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !40, line: 65, baseType: !56, size: 32, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !57, line: 48, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !59, line: 79, baseType: !5)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !39, file: !40, line: 66, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !62, line: 49, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !64, line: 128, baseType: !65)
!64 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !39, file: !40, line: 67, baseType: !67, size: 8, offset: 512)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !39, file: !40, line: 68, baseType: !69, size: 128, offset: 576)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !70, line: 42, size: 128, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !69, file: !70, line: 42, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !70, line: 35, size: 192, elements: !75)
!75 = !{!76, !78, !79}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !74, file: !70, line: 36, baseType: !77, size: 32)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !74, file: !70, line: 37, baseType: !38, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !74, file: !70, line: 38, baseType: !80, size: 64, offset: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !70, line: 38, size: 64, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !80, file: !70, line: 38, baseType: !73, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !69, file: !70, line: 42, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !39, file: !40, line: 69, baseType: !86, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !88, line: 90, size: 2176, elements: !89)
!88 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !{!90, !95, !113, !118, !120, !122, !127, !135, !140, !146, !147, !148, !153, !231, !232, !233}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !87, file: !88, line: 91, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !88, line: 68, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !86}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !87, file: !88, line: 93, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !88, line: 71, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!77, !86, !38, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !103, line: 62, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !103, line: 55, size: 128, elements: !105)
!105 = !{!106, !107, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !104, file: !103, line: 57, baseType: !67, size: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !104, file: !103, line: 59, baseType: !108, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !103, line: 53, baseType: !77)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !104, file: !103, line: 61, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !62, line: 48, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 129, baseType: !112)
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !87, file: !88, line: 94, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !88, line: 74, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !86, !38}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !87, file: !88, line: 95, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !88, line: 76, baseType: !115)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !87, file: !88, line: 96, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !88, line: 78, baseType: !115)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !87, file: !88, line: 98, baseType: !123, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !88, line: 81, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!77, !86, !38, !108}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !87, file: !88, line: 99, baseType: !128, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !88, line: 83, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!77, !86, !132, !134}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !87, file: !88, line: 100, baseType: !136, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !88, line: 85, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!77, !86, !38, !77}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !87, file: !88, line: 101, baseType: !141, size: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !88, line: 87, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!77, !86, !132, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !87, file: !88, line: 104, baseType: !67, size: 8, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !87, file: !88, line: 105, baseType: !39, size: 1024, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !87, file: !88, line: 106, baseType: !149, size: 128, offset: 1664)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !40, line: 93, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !149, file: !40, line: 93, baseType: !38, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !149, file: !40, line: 93, baseType: !54, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !87, file: !88, line: 107, baseType: !154, size: 192, offset: 1792)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !155, line: 59, size: 192, elements: !156)
!155 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!156 = !{!157, !222, !226}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !154, file: !155, line: 61, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !155, line: 51, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!30, !162, !112, !112}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !164, line: 77, size: 832, elements: !165)
!164 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !{!166, !173, !178, !183, !189, !191, !196, !197, !198, !203, !208, !213, !214, !215}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !163, file: !164, line: 79, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !164, line: 54, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!30, !162, !171}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 58, baseType: !112)
!172 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !163, file: !164, line: 80, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !164, line: 56, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!30, !162, !171, !171}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !163, file: !164, line: 81, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !164, line: 62, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!30, !162, !30, !171}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !163, file: !164, line: 82, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !164, line: 58, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!77, !162, !188, !171, !171}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !163, file: !164, line: 83, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !164, line: 60, baseType: !175)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !163, file: !164, line: 84, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !164, line: 64, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !162, !30}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !163, file: !164, line: 87, baseType: !192, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !163, file: !164, line: 88, baseType: !167, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !163, file: !164, line: 92, baseType: !199, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !164, line: 66, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!30, !162, !112}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !163, file: !164, line: 93, baseType: !204, size: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !164, line: 68, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !162, !30, !112}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !163, file: !164, line: 99, baseType: !209, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !164, line: 70, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!77, !162, !30, !171}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !163, file: !164, line: 100, baseType: !171, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 103, baseType: !162, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !163, file: !164, line: 104, baseType: !216, offset: 832)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !220)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !57, line: 20, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !59, line: 41, baseType: !219)
!219 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!220 = !{!221}
!221 = !DISubrange(count: -1)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !154, file: !155, line: 63, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !30}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !154, file: !155, line: 65, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !155, line: 56, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !30, !30}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !87, file: !88, line: 108, baseType: !162, size: 64, offset: 1984)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !88, line: 109, baseType: !86, size: 64, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !87, file: !88, line: 110, baseType: !30, size: 64, offset: 2112)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !39, file: !40, line: 70, baseType: !30, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !39, file: !40, line: 72, baseType: !77, size: 32, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !39, file: !40, line: 82, baseType: !237, size: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !239, line: 569, size: 14912, elements: !240)
!239 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!240 = !{!241, !242, !317, !318, !319, !320, !324, !325, !328, !329, !333, !345, !346, !347, !349, !350, !351, !413, !434, !435, !440, !447}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !238, file: !239, line: 571, baseType: !77, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !238, file: !239, line: 576, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !239, line: 287, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !239, line: 181, size: 1408, elements: !246)
!246 = !{!247, !250, !251, !252, !254, !255, !260, !261, !262, !269, !273, !278, !282, !283, !284, !285, !289, !293, !294, !295, !297, !298, !302, !316}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !245, file: !239, line: 182, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !245, file: !239, line: 183, baseType: !77, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !245, file: !239, line: 184, baseType: !77, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !245, file: !239, line: 185, baseType: !253, size: 16, offset: 128)
!253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !245, file: !239, line: 186, baseType: !253, size: 16, offset: 144)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !245, file: !239, line: 187, baseType: !256, size: 128, offset: 192)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !239, line: 117, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !256, file: !239, line: 118, baseType: !248, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !256, file: !239, line: 119, baseType: !77, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !245, file: !239, line: 188, baseType: !77, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !245, file: !239, line: 195, baseType: !30, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !245, file: !239, line: 197, baseType: !263, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !237, !30, !268, !77}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !267, line: 145, baseType: !65)
!267 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !245, file: !239, line: 199, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!266, !237, !30, !43, !77}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !245, file: !239, line: 202, baseType: !274, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !237, !30, !277, !77}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !267, line: 114, baseType: !65)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !245, file: !239, line: 203, baseType: !279, size: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!77, !237, !30}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !245, file: !239, line: 206, baseType: !256, size: 128, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !245, file: !239, line: 207, baseType: !248, size: 64, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !245, file: !239, line: 208, baseType: !77, size: 32, offset: 896)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !245, file: !239, line: 211, baseType: !286, size: 24, offset: 928)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 24, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 3)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !245, file: !239, line: 212, baseType: !290, size: 8, offset: 952)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 8, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 1)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !245, file: !239, line: 215, baseType: !256, size: 128, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !245, file: !239, line: 218, baseType: !77, size: 32, offset: 1088)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !245, file: !239, line: 219, baseType: !296, size: 64, offset: 1152)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !267, line: 44, baseType: !65)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !245, file: !239, line: 222, baseType: !237, size: 64, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !245, file: !239, line: 226, baseType: !299, size: 32, offset: 1280)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !267, line: 175, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !301, line: 12, baseType: !77)
!301 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !245, file: !239, line: 228, baseType: !303, size: 64, offset: 1312)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !267, line: 171, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 163, size: 64, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !304, file: !267, line: 165, baseType: !77, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !304, file: !267, line: 170, baseType: !308, size: 32, offset: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !267, line: 166, size: 32, elements: !309)
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !308, file: !267, line: 168, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !172, line: 124, baseType: !5)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !308, file: !267, line: 169, baseType: !313, size: 32)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !245, file: !239, line: 229, baseType: !77, size: 32, offset: 1376)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !238, file: !239, line: 576, baseType: !243, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !238, file: !239, line: 576, baseType: !243, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !238, file: !239, line: 578, baseType: !77, size: 32, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !238, file: !239, line: 579, baseType: !321, size: 200, offset: 288)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 25)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !238, file: !239, line: 582, baseType: !77, size: 32, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !238, file: !239, line: 583, baseType: !326, size: 64, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !239, line: 40, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !238, file: !239, line: 585, baseType: !77, size: 32, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !238, file: !239, line: 587, baseType: !330, size: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !237}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !238, file: !239, line: 590, baseType: !334, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !239, line: 47, size: 256, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !335, file: !239, line: 49, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !335, file: !239, line: 50, baseType: !77, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !335, file: !239, line: 50, baseType: !77, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !335, file: !239, line: 50, baseType: !77, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !335, file: !239, line: 50, baseType: !77, size: 32, offset: 160)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !335, file: !239, line: 51, baseType: !343, size: 32, offset: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32, elements: !291)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !239, line: 25, baseType: !5)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !238, file: !239, line: 591, baseType: !77, size: 32, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !238, file: !239, line: 592, baseType: !334, size: 64, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !238, file: !239, line: 593, baseType: !348, size: 64, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !238, file: !239, line: 596, baseType: !77, size: 32, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !238, file: !239, line: 597, baseType: !268, size: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !238, file: !239, line: 632, baseType: !352, size: 2880, offset: 1152)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !239, line: 599, size: 2880, elements: !353)
!353 = !{!354, !404}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !352, file: !239, line: 622, baseType: !355, size: 1728)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !239, line: 601, size: 1728, elements: !356)
!356 = !{!357, !358, !359, !363, !375, !376, !378, !386, !387, !388, !389, !393, !397, !398, !399, !400, !401, !402, !403}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !355, file: !239, line: 603, baseType: !5, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !355, file: !239, line: 604, baseType: !268, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !355, file: !239, line: 605, baseType: !360, size: 208, offset: 128)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 26)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !355, file: !239, line: 606, baseType: !364, size: 288, offset: 352)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !239, line: 55, size: 288, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !364, file: !239, line: 57, baseType: !77, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !364, file: !239, line: 58, baseType: !77, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !364, file: !239, line: 59, baseType: !77, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !364, file: !239, line: 60, baseType: !77, size: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !364, file: !239, line: 61, baseType: !77, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !364, file: !239, line: 62, baseType: !77, size: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !364, file: !239, line: 63, baseType: !77, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !364, file: !239, line: 64, baseType: !77, size: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !364, file: !239, line: 65, baseType: !77, size: 32, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !355, file: !239, line: 607, baseType: !77, size: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !355, file: !239, line: 608, baseType: !377, size: 64, offset: 704)
!377 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !355, file: !239, line: 609, baseType: !379, size: 112, offset: 768)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !239, line: 319, size: 112, elements: !380)
!380 = !{!381, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !379, file: !239, line: 320, baseType: !382, size: 48)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 48, elements: !287)
!383 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !379, file: !239, line: 321, baseType: !382, size: 48, offset: 48)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !379, file: !239, line: 322, baseType: !383, size: 16, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !355, file: !239, line: 610, baseType: !303, size: 64, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !355, file: !239, line: 611, baseType: !303, size: 64, offset: 960)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !355, file: !239, line: 612, baseType: !303, size: 64, offset: 1024)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !355, file: !239, line: 613, baseType: !390, size: 64, offset: 1088)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !355, file: !239, line: 614, baseType: !394, size: 192, offset: 1152)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 24)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !355, file: !239, line: 615, baseType: !77, size: 32, offset: 1344)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !355, file: !239, line: 616, baseType: !303, size: 64, offset: 1376)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !355, file: !239, line: 617, baseType: !303, size: 64, offset: 1440)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !355, file: !239, line: 618, baseType: !303, size: 64, offset: 1504)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !355, file: !239, line: 619, baseType: !303, size: 64, offset: 1568)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !355, file: !239, line: 620, baseType: !303, size: 64, offset: 1632)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !355, file: !239, line: 621, baseType: !77, size: 32, offset: 1696)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !352, file: !239, line: 631, baseType: !405, size: 2880)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !239, line: 626, size: 2880, elements: !406)
!406 = !{!407, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !405, file: !239, line: 629, baseType: !408, size: 1920)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 1920, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 30)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !405, file: !239, line: 630, baseType: !412, size: 960, offset: 1920)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !409)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !238, file: !239, line: 636, baseType: !414, size: 64, offset: 4032)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !239, line: 93, size: 6336, elements: !416)
!416 = !{!417, !418, !419, !426}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !415, file: !239, line: 94, baseType: !414, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !415, file: !239, line: 95, baseType: !77, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !415, file: !239, line: 97, baseType: !420, size: 2048, offset: 128)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2048, elements: !424)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null}
!424 = !{!425}
!425 = !DISubrange(count: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !415, file: !239, line: 98, baseType: !427, size: 4160, offset: 2176)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !239, line: 74, size: 4160, elements: !428)
!428 = !{!429, !431, !432, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !427, file: !239, line: 75, baseType: !430, size: 2048)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !424)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !427, file: !239, line: 76, baseType: !430, size: 2048, offset: 2048)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !427, file: !239, line: 78, baseType: !344, size: 32, offset: 4096)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !427, file: !239, line: 81, baseType: !344, size: 32, offset: 4128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !238, file: !239, line: 637, baseType: !415, size: 6336, offset: 4096)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !238, file: !239, line: 641, baseType: !436, size: 64, offset: 10432)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !77}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !238, file: !239, line: 646, baseType: !441, size: 192, offset: 10496)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !239, line: 291, size: 192, elements: !442)
!442 = !{!443, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !441, file: !239, line: 293, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !441, file: !239, line: 294, baseType: !77, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !441, file: !239, line: 295, baseType: !243, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !238, file: !239, line: 648, baseType: !448, size: 4224, offset: 10688)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4224, elements: !287)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !39, file: !40, line: 85, baseType: !450, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !452)
!452 = !{!453, !457, !458, !465, !478}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !451, file: !4, line: 116, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !455, line: 64, baseType: !456)
!455 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !455, line: 63, baseType: !112)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !451, file: !4, line: 118, baseType: !454, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !451, file: !4, line: 120, baseType: !459, size: 128, offset: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !460, line: 51, size: 128, elements: !461)
!460 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !460, line: 52, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !459, file: !460, line: 53, baseType: !463, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !451, file: !4, line: 122, baseType: !466, size: 256, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !467)
!467 = !{!468, !469, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !466, file: !4, line: 107, baseType: !3, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !466, file: !4, line: 109, baseType: !454, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !466, file: !4, line: 111, baseType: !471, size: 96, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !455, line: 72, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 68, size: 96, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !472, file: !455, line: 69, baseType: !77, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !472, file: !455, line: 70, baseType: !77, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !472, file: !455, line: 71, baseType: !477, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !455, line: 61, baseType: !77)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !451, file: !4, line: 124, baseType: !459, size: 128, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !33, file: !11, line: 88, baseType: !480, size: 128, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !481, line: 413, baseType: !482)
!481 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !481, line: 411, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 395, size: 128, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !483, file: !481, line: 398, baseType: !30, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !483, file: !481, line: 399, baseType: !5, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !33, file: !11, line: 89, baseType: !31, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !33, file: !11, line: 90, baseType: !489, size: 32, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !11, line: 80, baseType: !10)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !33, file: !11, line: 91, baseType: !30, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !33, file: !11, line: 92, baseType: !30, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !33, file: !11, line: 93, baseType: !77, size: 32, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !33, file: !11, line: 94, baseType: !77, size: 32, offset: 480)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !33, file: !11, line: 95, baseType: !496, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !481, line: 417, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !11, line: 146, size: 320, elements: !499)
!499 = !{!500, !508, !509, !510, !511}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !498, file: !11, line: 148, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !37, line: 12, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !504, line: 51, size: 192, elements: !505)
!504 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !503, file: !504, line: 52, baseType: !65, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !503, file: !504, line: 53, baseType: !69, size: 128, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !498, file: !11, line: 149, baseType: !77, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !498, file: !11, line: 156, baseType: !77, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !498, file: !11, line: 159, baseType: !77, size: 32, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !498, file: !11, line: 160, baseType: !480, size: 128, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !33, file: !11, line: 96, baseType: !77, size: 32, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !33, file: !11, line: 97, baseType: !496, size: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !33, file: !11, line: 98, baseType: !77, size: 32, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !33, file: !11, line: 99, baseType: !77, size: 32, offset: 736)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !33, file: !11, line: 100, baseType: !77, size: 32, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !33, file: !11, line: 102, baseType: !518, size: 512, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !519, line: 372, baseType: !520)
!519 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 512, elements: !391)
!521 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !33, file: !11, line: 104, baseType: !77, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !33, file: !11, line: 106, baseType: !30, size: 64, offset: 1408)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !33, file: !11, line: 107, baseType: !30, size: 64, offset: 1472)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThreadKeyAssoc", file: !11, line: 224, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ThreadKeyAssoc", file: !11, line: 292, size: 384, elements: !529)
!529 = !{!530, !531, !540, !541, !542, !543}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !528, file: !11, line: 392, baseType: !31, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !528, file: !11, line: 393, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !481, line: 416, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_key_t_", file: !11, line: 214, size: 256, elements: !535)
!535 = !{!536, !537, !538, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !534, file: !11, line: 216, baseType: !5, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !534, file: !11, line: 217, baseType: !223, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "keyLock", scope: !534, file: !11, line: 218, baseType: !496, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !534, file: !11, line: 219, baseType: !30, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nextKey", scope: !528, file: !11, line: 394, baseType: !526, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nextThread", scope: !528, file: !11, line: 395, baseType: !526, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prevKey", scope: !528, file: !11, line: 396, baseType: !526, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prevThread", scope: !528, file: !11, line: 397, baseType: !526, size: 64, offset: 320)
!544 = !{i32 2, !"Dwarf Version", i32 4}
!545 = !{i32 2, !"Debug Info Version", i32 3}
!546 = !{i32 1, !"wchar_size", i32 4}
!547 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!548 = distinct !DISubprogram(name: "pthread_setspecific", scope: !1, file: !1, line: 50, type: !549, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !553)
!549 = !DISubroutineType(types: !550)
!550 = !{!77, !532, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!553 = !{!554, !555, !556, !557, !558, !561, !566}
!554 = !DILocalVariable(name: "key", arg: 1, scope: !548, file: !1, line: 50, type: !532)
!555 = !DILocalVariable(name: "value", arg: 2, scope: !548, file: !1, line: 50, type: !551)
!556 = !DILocalVariable(name: "self", scope: !548, file: !1, line: 76, type: !480)
!557 = !DILocalVariable(name: "result", scope: !548, file: !1, line: 77, type: !77)
!558 = !DILocalVariable(name: "sp", scope: !559, file: !1, line: 98, type: !31)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 93, column: 5)
!560 = distinct !DILexicalBlock(scope: !548, file: !1, line: 79, column: 7)
!561 = !DILocalVariable(name: "assoc", scope: !562, file: !1, line: 130, type: !526)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 120, column: 9)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 119, column: 11)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 118, column: 5)
!565 = distinct !DILexicalBlock(scope: !548, file: !1, line: 117, column: 7)
!566 = !DILocalVariable(name: "sp", scope: !567, file: !1, line: 134, type: !31)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 133, column: 13)
!568 = distinct !DILexicalBlock(scope: !562, file: !1, line: 132, column: 15)
!569 = !DILocation(line: 50, column: 36, scope: !548)
!570 = !DILocation(line: 50, column: 53, scope: !548)
!571 = !DILocation(line: 77, column: 7, scope: !548)
!572 = !DILocation(line: 79, column: 14, scope: !560)
!573 = !{!574, !574, i64 0}
!574 = !{!"any pointer", !575, i64 0}
!575 = !{!"omnipotent char", !576, i64 0}
!576 = !{!"Simple C/C++ TBAA"}
!577 = !DILocation(line: 79, column: 11, scope: !560)
!578 = !DILocation(line: 79, column: 7, scope: !548)
!579 = !DILocation(line: 86, column: 14, scope: !580)
!580 = distinct !DILexicalBlock(scope: !560, file: !1, line: 80, column: 5)
!581 = !DILocation(line: 76, column: 13, scope: !548)
!582 = !DILocation(line: 87, column: 18, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 87, column: 11)
!584 = !DILocation(line: 87, column: 11, scope: !580)
!585 = !DILocation(line: 98, column: 44, scope: !559)
!586 = !DILocation(line: 100, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !559, file: !1, line: 100, column: 11)
!588 = !DILocation(line: 100, column: 11, scope: !559)
!589 = !DILocation(line: 102, column: 21, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 102, column: 15)
!591 = distinct !DILexicalBlock(scope: !587, file: !1, line: 101, column: 9)
!592 = !DILocation(line: 102, column: 15, scope: !591)
!593 = !DILocation(line: 98, column: 22, scope: !559)
!594 = !DILocation(line: 111, column: 22, scope: !595)
!595 = distinct !DILexicalBlock(scope: !587, file: !1, line: 110, column: 9)
!596 = !DILocation(line: 0, scope: !595)
!597 = !DILocation(line: 113, column: 5, scope: !560)
!598 = !DILocation(line: 104, column: 15, scope: !599)
!599 = distinct !DILexicalBlock(scope: !590, file: !1, line: 103, column: 13)
!600 = !DILocation(line: 117, column: 11, scope: !565)
!601 = !DILocation(line: 117, column: 7, scope: !548)
!602 = !DILocation(line: 119, column: 18, scope: !563)
!603 = !DILocation(line: 119, column: 26, scope: !563)
!604 = !DILocation(line: 119, column: 34, scope: !563)
!605 = !{!606, !574, i64 8}
!606 = !{!"pthread_key_t_", !607, i64 0, !574, i64 8, !574, i64 16, !574, i64 24}
!607 = !{!"int", !575, i64 0}
!608 = !DILocation(line: 119, column: 45, scope: !563)
!609 = !DILocation(line: 119, column: 62, scope: !563)
!610 = !DILocation(line: 119, column: 53, scope: !563)
!611 = !DILocation(line: 132, column: 41, scope: !568)
!612 = !DILocation(line: 132, column: 15, scope: !568)
!613 = !DILocation(line: 132, column: 51, scope: !568)
!614 = !DILocation(line: 132, column: 15, scope: !562)
!615 = !DILocation(line: 134, column: 35, scope: !567)
!616 = !DILocation(line: 134, column: 30, scope: !567)
!617 = !DILocation(line: 136, column: 47, scope: !567)
!618 = !DILocation(line: 136, column: 22, scope: !567)
!619 = !DILocation(line: 138, column: 46, scope: !567)
!620 = !{!621, !574, i64 176}
!621 = !{!"pte_thread_t_", !574, i64 0, !622, i64 8, !574, i64 24, !575, i64 32, !574, i64 40, !574, i64 48, !607, i64 56, !607, i64 60, !574, i64 64, !607, i64 72, !574, i64 80, !607, i64 88, !607, i64 92, !607, i64 96, !575, i64 104, !607, i64 168, !574, i64 176, !574, i64 184}
!622 = !{!"", !574, i64 0, !607, i64 8}
!623 = !DILocation(line: 130, column: 27, scope: !562)
!624 = !DILocation(line: 142, column: 15, scope: !567)
!625 = !DILocation(line: 142, column: 28, scope: !567)
!626 = !DILocation(line: 144, column: 30, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 144, column: 23)
!628 = distinct !DILexicalBlock(scope: !567, file: !1, line: 143, column: 17)
!629 = !{!630, !574, i64 8}
!630 = !{!"ThreadKeyAssoc", !574, i64 0, !574, i64 8, !574, i64 16, !574, i64 24, !574, i64 32, !574, i64 40}
!631 = !DILocation(line: 144, column: 34, scope: !627)
!632 = !DILocation(line: 144, column: 23, scope: !628)
!633 = !DILocation(line: 151, column: 34, scope: !628)
!634 = !{!630, !574, i64 16}
!635 = distinct !{!635, !624, !636}
!636 = !DILocation(line: 152, column: 17, scope: !567)
!637 = !DILocation(line: 157, column: 19, scope: !567)
!638 = !DILocation(line: 159, column: 28, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 158, column: 17)
!640 = distinct !DILexicalBlock(scope: !567, file: !1, line: 157, column: 19)
!641 = !DILocation(line: 160, column: 17, scope: !639)
!642 = !DILocation(line: 0, scope: !548)
!643 = !DILocation(line: 0, scope: !639)
!644 = !DILocation(line: 162, column: 22, scope: !567)
!645 = !DILocation(line: 163, column: 13, scope: !567)
!646 = !DILocation(line: 167, column: 11, scope: !564)
!647 = !DILocation(line: 164, column: 18, scope: !562)
!648 = !DILocation(line: 165, column: 9, scope: !562)
!649 = !DILocation(line: 167, column: 18, scope: !650)
!650 = distinct !DILexicalBlock(scope: !564, file: !1, line: 167, column: 11)
!651 = !DILocation(line: 169, column: 39, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 169, column: 15)
!653 = distinct !DILexicalBlock(scope: !650, file: !1, line: 168, column: 9)
!654 = !{!606, !607, i64 0}
!655 = !DILocation(line: 169, column: 15, scope: !652)
!656 = !DILocation(line: 169, column: 60, scope: !652)
!657 = !DILocation(line: 169, column: 15, scope: !653)
!658 = !DILocation(line: 172, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !652, file: !1, line: 170, column: 13)
!660 = !DILocation(line: 0, scope: !599)
!661 = !DILocation(line: 178, column: 1, scope: !548)
