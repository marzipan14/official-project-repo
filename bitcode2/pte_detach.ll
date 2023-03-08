; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_detach.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_detach.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_key_t_ = type { i32, void (i8*)*, %struct.pthread_mutex_t_*, i8* }
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

@pte_processInitialized = external dso_local local_unnamed_addr global i32, align 4
@pte_selfThreadKey = external dso_local local_unnamed_addr global %struct.pthread_key_t_*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_thread_detach_and_exit_np() local_unnamed_addr #0 !dbg !536 {
  tail call fastcc void @pte_thread_detach_common(i8 zeroext 1) #3, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret i32 1, !dbg !541
}

; Function Attrs: noredzone nounwind
define internal fastcc void @pte_thread_detach_common(i8 zeroext) unnamed_addr #0 !dbg !542 {
  %2 = load i32, i32* @pte_processInitialized, align 4, !dbg !551, !tbaa !552
  %3 = icmp eq i32 %2, 0, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %3, label %34, label %4, !dbg !556

; <label>:4:                                      ; preds = %1
  %5 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** @pte_selfThreadKey, align 8, !dbg !557, !tbaa !558
  %6 = tail call i8* @pthread_getspecific(%struct.pthread_key_t_* %5) #4, !dbg !560
  %7 = icmp eq i8* %6, null, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br i1 %7, label %33, label %8, !dbg !563

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !565
  %10 = bitcast i8* %9 to i8**, !dbg !567
  %11 = load i8*, i8** %10, align 8, !dbg !567
  %12 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !567
  %13 = bitcast i8* %12 to i32*, !dbg !567
  %14 = load i32, i32* %13, align 8, !dbg !567
  tail call void @pte_callUserDestroyRoutines(i8* %11, i32 %14) #4, !dbg !567
  %15 = getelementptr inbounds i8, i8* %6, i64 80, !dbg !568
  %16 = bitcast i8* %15 to %struct.pthread_mutex_t_**, !dbg !568
  %17 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %16) #4, !dbg !569
  %18 = getelementptr inbounds i8, i8* %6, i64 32, !dbg !570
  %19 = bitcast i8* %18 to i32*, !dbg !570
  store volatile i32 6, i32* %19, align 8, !dbg !571, !tbaa !572
  %20 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %16) #4, !dbg !575
  %21 = getelementptr inbounds i8, i8* %6, i64 60, !dbg !576
  %22 = bitcast i8* %21 to i32*, !dbg !576
  %23 = load i32, i32* %22, align 4, !dbg !576, !tbaa !578
  %24 = icmp eq i32 %23, 1, !dbg !579
  %25 = icmp ne i8 %0, 0, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %24, label %26, label %31, !dbg !583

; <label>:26:                                     ; preds = %8
  %27 = load i8*, i8** %10, align 8, !dbg !584
  %28 = load i32, i32* %13, align 8, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %25, label %29, label %30, !dbg !588

; <label>:29:                                     ; preds = %26
  tail call void @pte_threadExitAndDestroy(i8* %27, i32 %28) #4, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br label %33, !dbg !591

; <label>:30:                                     ; preds = %26
  tail call void @pte_threadDestroy(i8* %27, i32 %28) #4, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %33

; <label>:31:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %25, label %32, label %33, !dbg !593

; <label>:32:                                     ; preds = %31
  tail call void (...) @pte_osThreadExit() #4, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %33, !dbg !596

; <label>:33:                                     ; preds = %4, %30, %29, %32, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br label %34, !dbg !597

; <label>:34:                                     ; preds = %1, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_thread_detach_np() local_unnamed_addr #0 !dbg !599 {
  tail call fastcc void @pte_thread_detach_common(i8 zeroext 0) #3, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  ret i32 1, !dbg !601
}

; Function Attrs: noredzone
declare dso_local i8* @pthread_getspecific(%struct.pthread_key_t_*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pte_callUserDestroyRoutines(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pte_threadExitAndDestroy(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pte_threadDestroy(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pte_osThreadExit(...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!532, !533, !534}
!llvm.ident = !{!535}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !38)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_detach.c", directory: "/root/.unikraft/apps/redis/build")
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
!38 = !{!39, !55}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !11, line: 83, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !11, line: 85, size: 1536, elements: !42)
!42 = !{!43, !487, !494, !495, !498, !499, !500, !501, !502, !519, !520, !521, !522, !523, !524, !529, !530, !531}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !41, file: !11, line: 87, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !45, line: 11, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !48, line: 59, size: 1024, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50, !54, !56, !57, !58, !64, !69, !75, !77, !93, !242, !243, !244, !457}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !47, file: !48, line: 60, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !47, file: !48, line: 61, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !47, file: !48, line: 62, baseType: !55, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !47, file: !48, line: 63, baseType: !55, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !47, file: !48, line: 64, baseType: !59, size: 128, offset: 256)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !47, file: !48, line: 64, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !59, file: !48, line: 64, baseType: !46, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !59, file: !48, line: 64, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !47, file: !48, line: 65, baseType: !65, size: 32, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !66, line: 48, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !68, line: 79, baseType: !5)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !47, file: !48, line: 66, baseType: !70, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !71, line: 49, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !73, line: 128, baseType: !74)
!73 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !47, file: !48, line: 67, baseType: !76, size: 8, offset: 512)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !47, file: !48, line: 68, baseType: !78, size: 128, offset: 576)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !79, line: 42, size: 128, elements: !80)
!79 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !{!81, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !78, file: !79, line: 42, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !79, line: 35, size: 192, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !83, file: !79, line: 36, baseType: !22, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !83, file: !79, line: 37, baseType: !46, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !83, file: !79, line: 38, baseType: !88, size: 64, offset: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 38, size: 64, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !88, file: !79, line: 38, baseType: !82, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !78, file: !79, line: 42, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !47, file: !48, line: 69, baseType: !94, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !96, line: 90, size: 2176, elements: !97)
!96 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !{!98, !103, !121, !126, !128, !130, !135, !143, !148, !154, !155, !156, !161, !239, !240, !241}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !95, file: !96, line: 91, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !96, line: 68, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !94}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !95, file: !96, line: 93, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !96, line: 71, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!22, !94, !46, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !111, line: 62, baseType: !112)
!111 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !111, line: 55, size: 128, elements: !113)
!113 = !{!114, !115, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !112, file: !111, line: 57, baseType: !76, size: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !112, file: !111, line: 59, baseType: !116, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !111, line: 53, baseType: !22)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !112, file: !111, line: 61, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !71, line: 48, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !73, line: 129, baseType: !120)
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !95, file: !96, line: 94, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !96, line: 74, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !94, !46}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !95, file: !96, line: 95, baseType: !127, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !96, line: 76, baseType: !123)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !95, file: !96, line: 96, baseType: !129, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !96, line: 78, baseType: !123)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !95, file: !96, line: 98, baseType: !131, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !96, line: 81, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!22, !94, !46, !116}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !95, file: !96, line: 99, baseType: !136, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !96, line: 83, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!22, !94, !140, !142}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !95, file: !96, line: 100, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !96, line: 85, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!22, !94, !46, !22}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !95, file: !96, line: 101, baseType: !149, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !96, line: 87, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!22, !94, !140, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !95, file: !96, line: 104, baseType: !76, size: 8, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !95, file: !96, line: 105, baseType: !47, size: 1024, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !95, file: !96, line: 106, baseType: !157, size: 128, offset: 1664)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !48, line: 93, size: 128, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !157, file: !48, line: 93, baseType: !46, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !157, file: !48, line: 93, baseType: !63, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !95, file: !96, line: 107, baseType: !162, size: 192, offset: 1792)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !163, line: 59, size: 192, elements: !164)
!163 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!164 = !{!165, !230, !234}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !162, file: !163, line: 61, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !163, line: 51, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!55, !170, !120, !120}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !172, line: 77, size: 832, elements: !173)
!172 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !{!174, !181, !186, !191, !197, !199, !204, !205, !206, !211, !216, !221, !222, !223}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !171, file: !172, line: 79, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !172, line: 54, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!55, !170, !179}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 58, baseType: !120)
!180 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !171, file: !172, line: 80, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !172, line: 56, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!55, !170, !179, !179}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !171, file: !172, line: 81, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !172, line: 62, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!55, !170, !55, !179}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !171, file: !172, line: 82, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !172, line: 58, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!22, !170, !196, !179, !179}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !171, file: !172, line: 83, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !172, line: 60, baseType: !183)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !171, file: !172, line: 84, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !172, line: 64, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !170, !55}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !171, file: !172, line: 87, baseType: !200, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !171, file: !172, line: 88, baseType: !175, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !171, file: !172, line: 92, baseType: !207, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !172, line: 66, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!55, !170, !120}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !171, file: !172, line: 93, baseType: !212, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !172, line: 68, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !170, !55, !120}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !171, file: !172, line: 99, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !172, line: 70, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!22, !170, !55, !179}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !171, file: !172, line: 100, baseType: !179, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !172, line: 103, baseType: !170, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !171, file: !172, line: 104, baseType: !224, offset: 832)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !228)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !66, line: 20, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !68, line: 41, baseType: !227)
!227 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!228 = !{!229}
!229 = !DISubrange(count: -1)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !162, file: !163, line: 63, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !55}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !162, file: !163, line: 65, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !163, line: 56, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !55, !55}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !95, file: !96, line: 108, baseType: !170, size: 64, offset: 1984)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 109, baseType: !94, size: 64, offset: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !95, file: !96, line: 110, baseType: !55, size: 64, offset: 2112)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !47, file: !48, line: 70, baseType: !55, size: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !47, file: !48, line: 72, baseType: !22, size: 32, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !47, file: !48, line: 82, baseType: !245, size: 64, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !247, line: 569, size: 14912, elements: !248)
!247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!248 = !{!249, !250, !325, !326, !327, !328, !332, !333, !336, !337, !341, !353, !354, !355, !357, !358, !359, !421, !442, !443, !448, !455}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !246, file: !247, line: 571, baseType: !22, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !246, file: !247, line: 576, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !247, line: 287, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !247, line: 181, size: 1408, elements: !254)
!254 = !{!255, !258, !259, !260, !262, !263, !268, !269, !270, !277, !281, !286, !290, !291, !292, !293, !297, !301, !302, !303, !305, !306, !310, !324}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !253, file: !247, line: 182, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !253, file: !247, line: 183, baseType: !22, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !253, file: !247, line: 184, baseType: !22, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !253, file: !247, line: 185, baseType: !261, size: 16, offset: 128)
!261 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !253, file: !247, line: 186, baseType: !261, size: 16, offset: 144)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !253, file: !247, line: 187, baseType: !264, size: 128, offset: 192)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !247, line: 117, size: 128, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !264, file: !247, line: 118, baseType: !256, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !264, file: !247, line: 119, baseType: !22, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !253, file: !247, line: 188, baseType: !22, size: 32, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !253, file: !247, line: 195, baseType: !55, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !253, file: !247, line: 197, baseType: !271, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !245, !55, !276, !22}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !275, line: 145, baseType: !74)
!275 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !253, file: !247, line: 199, baseType: !278, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!274, !245, !55, !51, !22}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !253, file: !247, line: 202, baseType: !282, size: 64, offset: 576)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!285, !245, !55, !285, !22}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !275, line: 114, baseType: !74)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !253, file: !247, line: 203, baseType: !287, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!22, !245, !55}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !253, file: !247, line: 206, baseType: !264, size: 128, offset: 704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !253, file: !247, line: 207, baseType: !256, size: 64, offset: 832)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !253, file: !247, line: 208, baseType: !22, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !253, file: !247, line: 211, baseType: !294, size: 24, offset: 928)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 24, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !253, file: !247, line: 212, baseType: !298, size: 8, offset: 952)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 8, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 1)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !253, file: !247, line: 215, baseType: !264, size: 128, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !253, file: !247, line: 218, baseType: !22, size: 32, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !253, file: !247, line: 219, baseType: !304, size: 64, offset: 1152)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !275, line: 44, baseType: !74)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !253, file: !247, line: 222, baseType: !245, size: 64, offset: 1216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !253, file: !247, line: 226, baseType: !307, size: 32, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !275, line: 175, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !309, line: 12, baseType: !22)
!309 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !253, file: !247, line: 228, baseType: !311, size: 64, offset: 1312)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !275, line: 171, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 163, size: 64, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !312, file: !275, line: 165, baseType: !22, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !312, file: !275, line: 170, baseType: !316, size: 32, offset: 32)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !275, line: 166, size: 32, elements: !317)
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !316, file: !275, line: 168, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !180, line: 124, baseType: !5)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !316, file: !275, line: 169, baseType: !321, size: 32)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 32, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 4)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !253, file: !247, line: 229, baseType: !22, size: 32, offset: 1376)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !246, file: !247, line: 576, baseType: !251, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !246, file: !247, line: 576, baseType: !251, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !246, file: !247, line: 578, baseType: !22, size: 32, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !246, file: !247, line: 579, baseType: !329, size: 200, offset: 288)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 200, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 25)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !246, file: !247, line: 582, baseType: !22, size: 32, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !246, file: !247, line: 583, baseType: !334, size: 64, offset: 576)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !247, line: 40, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !246, file: !247, line: 585, baseType: !22, size: 32, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !246, file: !247, line: 587, baseType: !338, size: 64, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !245}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !246, file: !247, line: 590, baseType: !342, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !247, line: 47, size: 256, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !343, file: !247, line: 49, baseType: !342, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !343, file: !247, line: 50, baseType: !22, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !343, file: !247, line: 50, baseType: !22, size: 32, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !343, file: !247, line: 50, baseType: !22, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !343, file: !247, line: 50, baseType: !22, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !343, file: !247, line: 51, baseType: !351, size: 32, offset: 192)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 32, elements: !299)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !247, line: 25, baseType: !5)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !246, file: !247, line: 591, baseType: !22, size: 32, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !246, file: !247, line: 592, baseType: !342, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !246, file: !247, line: 593, baseType: !356, size: 64, offset: 960)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !246, file: !247, line: 596, baseType: !22, size: 32, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !246, file: !247, line: 597, baseType: !276, size: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !246, file: !247, line: 632, baseType: !360, size: 2880, offset: 1152)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !247, line: 599, size: 2880, elements: !361)
!361 = !{!362, !412}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !360, file: !247, line: 622, baseType: !363, size: 1728)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !247, line: 601, size: 1728, elements: !364)
!364 = !{!365, !366, !367, !371, !383, !384, !386, !394, !395, !396, !397, !401, !405, !406, !407, !408, !409, !410, !411}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !363, file: !247, line: 603, baseType: !5, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !363, file: !247, line: 604, baseType: !276, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !363, file: !247, line: 605, baseType: !368, size: 208, offset: 128)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 208, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 26)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !363, file: !247, line: 606, baseType: !372, size: 288, offset: 352)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !247, line: 55, size: 288, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !372, file: !247, line: 57, baseType: !22, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !372, file: !247, line: 58, baseType: !22, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !372, file: !247, line: 59, baseType: !22, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !372, file: !247, line: 60, baseType: !22, size: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !372, file: !247, line: 61, baseType: !22, size: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !372, file: !247, line: 62, baseType: !22, size: 32, offset: 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !372, file: !247, line: 63, baseType: !22, size: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !372, file: !247, line: 64, baseType: !22, size: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !372, file: !247, line: 65, baseType: !22, size: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !363, file: !247, line: 607, baseType: !22, size: 32, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !363, file: !247, line: 608, baseType: !385, size: 64, offset: 704)
!385 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !363, file: !247, line: 609, baseType: !387, size: 112, offset: 768)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !247, line: 319, size: 112, elements: !388)
!388 = !{!389, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !387, file: !247, line: 320, baseType: !390, size: 48)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 48, elements: !295)
!391 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !387, file: !247, line: 321, baseType: !390, size: 48, offset: 48)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !387, file: !247, line: 322, baseType: !391, size: 16, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !363, file: !247, line: 610, baseType: !311, size: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !363, file: !247, line: 611, baseType: !311, size: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !363, file: !247, line: 612, baseType: !311, size: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !363, file: !247, line: 613, baseType: !398, size: 64, offset: 1088)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 8)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !363, file: !247, line: 614, baseType: !402, size: 192, offset: 1152)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 24)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !363, file: !247, line: 615, baseType: !22, size: 32, offset: 1344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !363, file: !247, line: 616, baseType: !311, size: 64, offset: 1376)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !363, file: !247, line: 617, baseType: !311, size: 64, offset: 1440)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !363, file: !247, line: 618, baseType: !311, size: 64, offset: 1504)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !363, file: !247, line: 619, baseType: !311, size: 64, offset: 1568)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !363, file: !247, line: 620, baseType: !311, size: 64, offset: 1632)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !363, file: !247, line: 621, baseType: !22, size: 32, offset: 1696)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !360, file: !247, line: 631, baseType: !413, size: 2880)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !247, line: 626, size: 2880, elements: !414)
!414 = !{!415, !419}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !413, file: !247, line: 629, baseType: !416, size: 1920)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 1920, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 30)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !413, file: !247, line: 630, baseType: !420, size: 960, offset: 1920)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !417)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !246, file: !247, line: 636, baseType: !422, size: 64, offset: 4032)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !247, line: 93, size: 6336, elements: !424)
!424 = !{!425, !426, !427, !434}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !423, file: !247, line: 94, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !423, file: !247, line: 95, baseType: !22, size: 32, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !423, file: !247, line: 97, baseType: !428, size: 2048, offset: 128)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 2048, elements: !432)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null}
!432 = !{!433}
!433 = !DISubrange(count: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !423, file: !247, line: 98, baseType: !435, size: 4160, offset: 2176)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !247, line: 74, size: 4160, elements: !436)
!436 = !{!437, !439, !440, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !435, file: !247, line: 75, baseType: !438, size: 2048)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !432)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !435, file: !247, line: 76, baseType: !438, size: 2048, offset: 2048)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !435, file: !247, line: 78, baseType: !352, size: 32, offset: 4096)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !435, file: !247, line: 81, baseType: !352, size: 32, offset: 4128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !246, file: !247, line: 637, baseType: !423, size: 6336, offset: 4096)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !246, file: !247, line: 641, baseType: !444, size: 64, offset: 10432)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !22}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !246, file: !247, line: 646, baseType: !449, size: 192, offset: 10496)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !247, line: 291, size: 192, elements: !450)
!450 = !{!451, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !449, file: !247, line: 293, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !449, file: !247, line: 294, baseType: !22, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !449, file: !247, line: 295, baseType: !251, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !246, file: !247, line: 648, baseType: !456, size: 4224, offset: 10688)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 4224, elements: !295)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !47, file: !48, line: 85, baseType: !458, size: 64, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !4, line: 114, size: 640, elements: !460)
!460 = !{!461, !465, !466, !473, !486}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !459, file: !4, line: 116, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !463, line: 64, baseType: !464)
!463 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !463, line: 63, baseType: !120)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !459, file: !4, line: 118, baseType: !462, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !459, file: !4, line: 120, baseType: !467, size: 128, offset: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !468, line: 51, size: 128, elements: !469)
!468 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!469 = !{!470, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !468, line: 52, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !467, file: !468, line: 53, baseType: !471, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !459, file: !4, line: 122, baseType: !474, size: 256, offset: 256)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !4, line: 98, size: 256, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !474, file: !4, line: 107, baseType: !3, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !474, file: !4, line: 109, baseType: !462, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !474, file: !4, line: 111, baseType: !479, size: 96, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !463, line: 72, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 68, size: 96, elements: !481)
!481 = !{!482, !483, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !480, file: !463, line: 69, baseType: !22, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !480, file: !463, line: 70, baseType: !22, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !480, file: !463, line: 71, baseType: !485, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !463, line: 61, baseType: !22)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !459, file: !4, line: 124, baseType: !467, size: 128, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !41, file: !11, line: 88, baseType: !488, size: 128, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !21, line: 413, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !21, line: 411, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 395, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !490, file: !21, line: 398, baseType: !55, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !490, file: !21, line: 399, baseType: !5, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !41, file: !11, line: 89, baseType: !39, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !41, file: !11, line: 90, baseType: !496, size: 32, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !11, line: 80, baseType: !10)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !41, file: !11, line: 91, baseType: !55, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !41, file: !11, line: 92, baseType: !55, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !41, file: !11, line: 93, baseType: !22, size: 32, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !41, file: !11, line: 94, baseType: !22, size: 32, offset: 480)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !41, file: !11, line: 95, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !21, line: 417, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !11, line: 146, size: 320, elements: !506)
!506 = !{!507, !515, !516, !517, !518}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !505, file: !11, line: 148, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !45, line: 12, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !511, line: 51, size: 192, elements: !512)
!511 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !510, file: !511, line: 52, baseType: !74, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !510, file: !511, line: 53, baseType: !78, size: 128, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !505, file: !11, line: 149, baseType: !22, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !505, file: !11, line: 156, baseType: !22, size: 32, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !505, file: !11, line: 159, baseType: !22, size: 32, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !505, file: !11, line: 160, baseType: !488, size: 128, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !41, file: !11, line: 96, baseType: !22, size: 32, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !41, file: !11, line: 97, baseType: !503, size: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !41, file: !11, line: 98, baseType: !22, size: 32, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !41, file: !11, line: 99, baseType: !22, size: 32, offset: 736)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !41, file: !11, line: 100, baseType: !22, size: 32, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !41, file: !11, line: 102, baseType: !525, size: 512, offset: 832)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !526, line: 372, baseType: !527)
!526 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 512, elements: !399)
!528 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !41, file: !11, line: 104, baseType: !22, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !41, file: !11, line: 106, baseType: !55, size: 64, offset: 1408)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !41, file: !11, line: 107, baseType: !55, size: 64, offset: 1472)
!532 = !{i32 2, !"Dwarf Version", i32 4}
!533 = !{i32 2, !"Debug Info Version", i32 3}
!534 = !{i32 1, !"wchar_size", i32 4}
!535 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!536 = distinct !DISubprogram(name: "pte_thread_detach_and_exit_np", scope: !1, file: !1, line: 97, type: !537, isLocal: false, isDefinition: true, scopeLine: 98, isOptimized: true, unit: !0, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!22}
!539 = !{}
!540 = !DILocation(line: 99, column: 10, scope: !536)
!541 = !DILocation(line: 99, column: 3, scope: !536)
!542 = distinct !DISubprogram(name: "pte_thread_detach_common", scope: !1, file: !1, line: 47, type: !543, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!22, !257}
!545 = !{!546, !547}
!546 = !DILocalVariable(name: "threadShouldExit", arg: 1, scope: !542, file: !1, line: 47, type: !257)
!547 = !DILocalVariable(name: "sp", scope: !548, file: !1, line: 55, type: !39)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 50, column: 5)
!549 = distinct !DILexicalBlock(scope: !542, file: !1, line: 49, column: 7)
!550 = !DILocation(line: 47, column: 41, scope: !542)
!551 = !DILocation(line: 49, column: 7, scope: !549)
!552 = !{!553, !553, i64 0}
!553 = !{!"int", !554, i64 0}
!554 = !{!"omnipotent char", !555, i64 0}
!555 = !{!"Simple C/C++ TBAA"}
!556 = !DILocation(line: 49, column: 7, scope: !542)
!557 = !DILocation(line: 55, column: 65, scope: !548)
!558 = !{!559, !559, i64 0}
!559 = !{!"any pointer", !554, i64 0}
!560 = !DILocation(line: 55, column: 44, scope: !548)
!561 = !DILocation(line: 57, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !548, file: !1, line: 57, column: 11)
!563 = !DILocation(line: 57, column: 11, scope: !548)
!564 = !DILocation(line: 55, column: 22, scope: !548)
!565 = !DILocation(line: 60, column: 44, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 58, column: 9)
!567 = !DILocation(line: 60, column: 11, scope: !566)
!568 = !DILocation(line: 62, column: 43, scope: !566)
!569 = !DILocation(line: 62, column: 18, scope: !566)
!570 = !DILocation(line: 63, column: 15, scope: !566)
!571 = !DILocation(line: 63, column: 21, scope: !566)
!572 = !{!573, !554, i64 32}
!573 = !{!"pte_thread_t_", !559, i64 0, !574, i64 8, !559, i64 24, !554, i64 32, !559, i64 40, !559, i64 48, !553, i64 56, !553, i64 60, !559, i64 64, !553, i64 72, !559, i64 80, !553, i64 88, !553, i64 92, !553, i64 96, !554, i64 104, !553, i64 168, !559, i64 176, !559, i64 184}
!574 = !{!"", !559, i64 0, !553, i64 8}
!575 = !DILocation(line: 69, column: 18, scope: !566)
!576 = !DILocation(line: 71, column: 19, scope: !577)
!577 = distinct !DILexicalBlock(scope: !566, file: !1, line: 71, column: 15)
!578 = !{!573, !553, i64 60}
!579 = !DILocation(line: 71, column: 31, scope: !577)
!580 = !DILocation(line: 0, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 86, column: 19)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 85, column: 13)
!583 = !DILocation(line: 71, column: 15, scope: !566)
!584 = !DILocation(line: 0, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 78, column: 17)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 73, column: 19)
!587 = distinct !DILexicalBlock(scope: !577, file: !1, line: 72, column: 13)
!588 = !DILocation(line: 73, column: 19, scope: !587)
!589 = !DILocation(line: 75, column: 19, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !1, line: 74, column: 17)
!591 = !DILocation(line: 76, column: 17, scope: !590)
!592 = !DILocation(line: 79, column: 19, scope: !585)
!593 = !DILocation(line: 86, column: 19, scope: !582)
!594 = !DILocation(line: 88, column: 19, scope: !595)
!595 = distinct !DILexicalBlock(scope: !581, file: !1, line: 87, column: 17)
!596 = !DILocation(line: 89, column: 17, scope: !595)
!597 = !DILocation(line: 92, column: 5, scope: !548)
!598 = !DILocation(line: 94, column: 3, scope: !542)
!599 = distinct !DISubprogram(name: "pte_thread_detach_np", scope: !1, file: !1, line: 102, type: !537, isLocal: false, isDefinition: true, scopeLine: 103, isOptimized: true, unit: !0, retainedNodes: !539)
!600 = !DILocation(line: 104, column: 10, scope: !599)
!601 = !DILocation(line: 104, column: 3, scope: !599)
