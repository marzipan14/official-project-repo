; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_destroy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_destroy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sem_t_ = type { i32, %struct.pthread_mutex_t_*, %struct.uk_semaphore* }
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.pte_handle_t = type { i8*, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@uk_pr_crit.__str = internal global [20 x i8] c"libpthread-embedded\00", section ".data_shared", align 16, !dbg !0
@uk_pr_crit.__str.3 = internal global [14 x i8] c"sem_destroy.c\00", section ".data_shared", align 1, !dbg !476
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @sem_destroy(%struct.sem_t_**) local_unnamed_addr #0 !dbg !503 {
  %2 = icmp eq %struct.sem_t_** %0, null, !dbg !555
  br i1 %2, label %42, label %3, !dbg !556

; <label>:3:                                      ; preds = %1
  %4 = load %struct.sem_t_*, %struct.sem_t_** %0, align 8, !dbg !557, !tbaa !558
  %5 = icmp eq %struct.sem_t_* %4, null, !dbg !562
  br i1 %5, label %42, label %6, !dbg !563

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %4, i64 0, i32 1, !dbg !564
  %8 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %7) #7, !dbg !565
  %9 = icmp eq i32 %8, 0, !dbg !566
  br i1 %9, label %10, label %42, !dbg !567

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %4, i64 0, i32 0, !dbg !568
  %12 = load i32, i32* %11, align 8, !dbg !568, !tbaa !569
  %13 = icmp slt i32 %12, 0, !dbg !572
  br i1 %13, label %14, label %16, !dbg !573

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %7) #7, !dbg !574
  br label %42, !dbg !576

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.sem_t_, %struct.sem_t_* %4, i64 0, i32 2, !dbg !577
  %18 = load %struct.uk_semaphore*, %struct.uk_semaphore** %17, align 8, !dbg !577, !tbaa !578
  %19 = tail call i32 @pte_osSemaphoreDelete(%struct.uk_semaphore* %18) #7, !dbg !579
  %20 = icmp eq i32 %19, 0, !dbg !581
  br i1 %20, label %23, label %21, !dbg !583

; <label>:21:                                     ; preds = %16
  %22 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %7) #7, !dbg !584
  br label %42, !dbg !586

; <label>:23:                                     ; preds = %16
  store %struct.sem_t_* null, %struct.sem_t_** %0, align 8, !dbg !587, !tbaa !558
  store i32 2147483647, i32* %11, align 8, !dbg !589, !tbaa !569
  %24 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %7) #7, !dbg !590
  br label %25, !dbg !591

; <label>:25:                                     ; preds = %37, %23
  %26 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !592, !srcloc !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  %27 = and i64 %26, -65536, !dbg !620
  %28 = inttoptr i64 %27 to %struct.uk_thread**, !dbg !621
  %29 = load %struct.uk_thread*, %struct.uk_thread** %28, align 65536, !dbg !623, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %30 = icmp eq %struct.uk_thread* %29, null, !dbg !626
  br i1 %30, label %31, label %32, !dbg !629, !prof !630

; <label>:31:                                     ; preds = %25
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !631
  tail call void @ukplat_terminate(i32 3) #8, !dbg !631
  unreachable, !dbg !631

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %29, i64 0, i32 9, !dbg !633
  %34 = load %struct.uk_sched*, %struct.uk_sched** %33, align 8, !dbg !633, !tbaa !634
  %35 = icmp eq %struct.uk_sched* %34, null, !dbg !641
  br i1 %35, label %36, label %37, !dbg !644, !prof !630

; <label>:36:                                     ; preds = %32
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !645
  tail call void @ukplat_terminate(i32 3) #8, !dbg !645
  unreachable, !dbg !645

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %34, i64 0, i32 0, !dbg !647
  %39 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %38, align 8, !dbg !647, !tbaa !648
  tail call void %39(%struct.uk_sched* nonnull %34) #7, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %40 = tail call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t_** nonnull %7) #7, !dbg !655
  %41 = icmp eq i32 %40, 16, !dbg !656
  br i1 %41, label %25, label %45, !dbg !657, !llvm.loop !658

; <label>:42:                                     ; preds = %21, %1, %3, %6, %14
  %43 = phi i32 [ 22, %21 ], [ 22, %1 ], [ 22, %3 ], [ %8, %6 ], [ 16, %14 ]
  %44 = tail call i32* @__errno() #7, !dbg !660
  store i32 %43, i32* %44, align 4, !dbg !663, !tbaa !664
  br label %47, !dbg !665

; <label>:45:                                     ; preds = %37
  %46 = bitcast %struct.sem_t_* %4 to i8*, !dbg !666
  tail call void @free(i8* %46) #7, !dbg !667
  br label %47, !dbg !668

; <label>:47:                                     ; preds = %45, %42
  %48 = phi i32 [ -1, %42 ], [ 0, %45 ], !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  ret i32 %48, !dbg !670
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pte_osSemaphoreDelete(%struct.uk_semaphore*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !671
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !673
  call void @llvm.va_start(i8* nonnull %3), !dbg !673
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !674
  call void @llvm.va_end(i8* nonnull %3), !dbg !677
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  ret void, !dbg !678
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!499, !500, !501}
!llvm.ident = !{!502}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !496, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !481)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !35, globals: !475)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_destroy.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !19, !28}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !13, line: 92, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !20, line: 38, baseType: !14, size: 32, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!26 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !29, line: 68, baseType: !14, size: 32, elements: !30)
!29 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !40, line: 59, size: 1024, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !43, !44, !45, !46, !51, !56, !62, !64, !81, !230, !231, !232, !445}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 60, baseType: !6, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !39, file: !40, line: 61, baseType: !36, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !39, file: !40, line: 62, baseType: !36, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !39, file: !40, line: 63, baseType: !36, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !39, file: !40, line: 64, baseType: !47, size: 128, offset: 256)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !40, line: 64, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !47, file: !40, line: 64, baseType: !38, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !47, file: !40, line: 64, baseType: !37, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !40, line: 65, baseType: !52, size: 32, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 48, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !55, line: 79, baseType: !14)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !39, file: !40, line: 66, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !58, line: 49, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !60, line: 128, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !39, file: !40, line: 67, baseType: !63, size: 8, offset: 512)
!63 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !39, file: !40, line: 68, baseType: !65, size: 128, offset: 576)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !66, line: 42, size: 128, elements: !67)
!66 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !{!68, !79}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !65, file: !66, line: 42, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !66, line: 35, size: 192, elements: !71)
!71 = !{!72, !74, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !70, file: !66, line: 36, baseType: !73, size: 32)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !70, file: !66, line: 37, baseType: !38, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !70, file: !66, line: 38, baseType: !76, size: 64, offset: 128)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 38, size: 64, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !76, file: !66, line: 38, baseType: !69, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !65, file: !66, line: 42, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !39, file: !40, line: 69, baseType: !82, size: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !84, line: 90, size: 2176, elements: !85)
!84 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !{!86, !91, !109, !114, !116, !118, !123, !131, !136, !142, !143, !144, !149, !227, !228, !229}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !83, file: !84, line: 91, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !84, line: 68, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !82}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !83, file: !84, line: 93, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !84, line: 71, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!73, !82, !38, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !99, line: 62, baseType: !100)
!99 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !99, line: 55, size: 128, elements: !101)
!101 = !{!102, !103, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !100, file: !99, line: 57, baseType: !63, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !100, file: !99, line: 59, baseType: !104, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !99, line: 53, baseType: !73)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !100, file: !99, line: 61, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !58, line: 48, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !60, line: 129, baseType: !108)
!108 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !83, file: !84, line: 94, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !84, line: 74, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !82, !38}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !83, file: !84, line: 95, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !84, line: 76, baseType: !111)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !83, file: !84, line: 96, baseType: !117, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !84, line: 78, baseType: !111)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !83, file: !84, line: 98, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !84, line: 81, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!73, !82, !38, !104}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !83, file: !84, line: 99, baseType: !124, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !84, line: 83, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!73, !82, !128, !130}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !83, file: !84, line: 100, baseType: !132, size: 64, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !84, line: 85, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!73, !82, !38, !73}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !83, file: !84, line: 101, baseType: !137, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !84, line: 87, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!73, !82, !128, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !83, file: !84, line: 104, baseType: !63, size: 8, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !83, file: !84, line: 105, baseType: !39, size: 1024, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !83, file: !84, line: 106, baseType: !145, size: 128, offset: 1664)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !40, line: 93, size: 128, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !145, file: !40, line: 93, baseType: !38, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !145, file: !40, line: 93, baseType: !37, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !83, file: !84, line: 107, baseType: !150, size: 192, offset: 1792)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !151, line: 59, size: 192, elements: !152)
!151 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!152 = !{!153, !218, !222}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !150, file: !151, line: 61, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !151, line: 51, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!36, !158, !108, !108}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !160, line: 77, size: 832, elements: !161)
!160 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!161 = !{!162, !169, !174, !179, !185, !187, !192, !193, !194, !199, !204, !209, !210, !211}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !159, file: !160, line: 79, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !160, line: 54, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!36, !158, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 58, baseType: !108)
!168 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !159, file: !160, line: 80, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !160, line: 56, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!36, !158, !167, !167}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !159, file: !160, line: 81, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !160, line: 62, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!36, !158, !36, !167}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !159, file: !160, line: 82, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !160, line: 58, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!73, !158, !184, !167, !167}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !159, file: !160, line: 83, baseType: !186, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !160, line: 60, baseType: !171)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !159, file: !160, line: 84, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !160, line: 64, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !158, !36}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !159, file: !160, line: 87, baseType: !188, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !159, file: !160, line: 88, baseType: !163, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !159, file: !160, line: 92, baseType: !195, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !160, line: 66, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!36, !158, !108}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !159, file: !160, line: 93, baseType: !200, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !160, line: 68, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !158, !36, !108}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !159, file: !160, line: 99, baseType: !205, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !160, line: 70, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!73, !158, !36, !167}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !159, file: !160, line: 100, baseType: !167, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !160, line: 103, baseType: !158, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !159, file: !160, line: 104, baseType: !212, offset: 832)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, elements: !216)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !53, line: 20, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !55, line: 41, baseType: !215)
!215 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!216 = !{!217}
!217 = !DISubrange(count: -1)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !150, file: !151, line: 63, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !36}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !150, file: !151, line: 65, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !151, line: 56, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !36, !36}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !83, file: !84, line: 108, baseType: !158, size: 64, offset: 1984)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !84, line: 109, baseType: !82, size: 64, offset: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !83, file: !84, line: 110, baseType: !36, size: 64, offset: 2112)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !39, file: !40, line: 70, baseType: !36, size: 64, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !39, file: !40, line: 72, baseType: !73, size: 32, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !39, file: !40, line: 82, baseType: !233, size: 64, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !235, line: 569, size: 14912, elements: !236)
!235 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!236 = !{!237, !238, !313, !314, !315, !316, !320, !321, !324, !325, !329, !341, !342, !343, !345, !346, !347, !409, !430, !431, !436, !443}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !234, file: !235, line: 571, baseType: !73, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !234, file: !235, line: 576, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !235, line: 287, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !235, line: 181, size: 1408, elements: !242)
!242 = !{!243, !246, !247, !248, !250, !251, !256, !257, !258, !265, !269, !274, !278, !279, !280, !281, !285, !289, !290, !291, !293, !294, !298, !312}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !241, file: !235, line: 182, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !241, file: !235, line: 183, baseType: !73, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !241, file: !235, line: 184, baseType: !73, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !241, file: !235, line: 185, baseType: !249, size: 16, offset: 128)
!249 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !241, file: !235, line: 186, baseType: !249, size: 16, offset: 144)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !241, file: !235, line: 187, baseType: !252, size: 128, offset: 192)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !235, line: 117, size: 128, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !252, file: !235, line: 118, baseType: !244, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !252, file: !235, line: 119, baseType: !73, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !241, file: !235, line: 188, baseType: !73, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !241, file: !235, line: 195, baseType: !36, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !241, file: !235, line: 197, baseType: !259, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !233, !36, !264, !73}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !263, line: 145, baseType: !61)
!263 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !241, file: !235, line: 199, baseType: !266, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!262, !233, !36, !6, !73}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !241, file: !235, line: 202, baseType: !270, size: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !233, !36, !273, !73}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !263, line: 114, baseType: !61)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !241, file: !235, line: 203, baseType: !275, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!73, !233, !36}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !241, file: !235, line: 206, baseType: !252, size: 128, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !241, file: !235, line: 207, baseType: !244, size: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !241, file: !235, line: 208, baseType: !73, size: 32, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !241, file: !235, line: 211, baseType: !282, size: 24, offset: 928)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 24, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !241, file: !235, line: 212, baseType: !286, size: 8, offset: 952)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 8, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 1)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !241, file: !235, line: 215, baseType: !252, size: 128, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !241, file: !235, line: 218, baseType: !73, size: 32, offset: 1088)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !241, file: !235, line: 219, baseType: !292, size: 64, offset: 1152)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !263, line: 44, baseType: !61)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !241, file: !235, line: 222, baseType: !233, size: 64, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !241, file: !235, line: 226, baseType: !295, size: 32, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !263, line: 175, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !297, line: 12, baseType: !73)
!297 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !241, file: !235, line: 228, baseType: !299, size: 64, offset: 1312)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !263, line: 171, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 163, size: 64, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !300, file: !263, line: 165, baseType: !73, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !300, file: !263, line: 170, baseType: !304, size: 32, offset: 32)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !263, line: 166, size: 32, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !304, file: !263, line: 168, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !168, line: 124, baseType: !14)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !304, file: !263, line: 169, baseType: !309, size: 32)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 32, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 4)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !241, file: !235, line: 229, baseType: !73, size: 32, offset: 1376)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !234, file: !235, line: 576, baseType: !239, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !234, file: !235, line: 576, baseType: !239, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !234, file: !235, line: 578, baseType: !73, size: 32, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !234, file: !235, line: 579, baseType: !317, size: 200, offset: 288)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 25)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !234, file: !235, line: 582, baseType: !73, size: 32, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !234, file: !235, line: 583, baseType: !322, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !235, line: 40, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !234, file: !235, line: 585, baseType: !73, size: 32, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !234, file: !235, line: 587, baseType: !326, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !233}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !234, file: !235, line: 590, baseType: !330, size: 64, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !235, line: 47, size: 256, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !331, file: !235, line: 49, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !331, file: !235, line: 50, baseType: !73, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !331, file: !235, line: 50, baseType: !73, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !331, file: !235, line: 50, baseType: !73, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !331, file: !235, line: 50, baseType: !73, size: 32, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !331, file: !235, line: 51, baseType: !339, size: 32, offset: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 32, elements: !287)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !235, line: 25, baseType: !14)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !234, file: !235, line: 591, baseType: !73, size: 32, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !234, file: !235, line: 592, baseType: !330, size: 64, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !234, file: !235, line: 593, baseType: !344, size: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !234, file: !235, line: 596, baseType: !73, size: 32, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !234, file: !235, line: 597, baseType: !264, size: 64, offset: 1088)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !234, file: !235, line: 632, baseType: !348, size: 2880, offset: 1152)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !235, line: 599, size: 2880, elements: !349)
!349 = !{!350, !400}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !348, file: !235, line: 622, baseType: !351, size: 1728)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !235, line: 601, size: 1728, elements: !352)
!352 = !{!353, !354, !355, !359, !371, !372, !374, !382, !383, !384, !385, !389, !393, !394, !395, !396, !397, !398, !399}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !351, file: !235, line: 603, baseType: !14, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !351, file: !235, line: 604, baseType: !264, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !351, file: !235, line: 605, baseType: !356, size: 208, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 26)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !351, file: !235, line: 606, baseType: !360, size: 288, offset: 352)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !235, line: 55, size: 288, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !360, file: !235, line: 57, baseType: !73, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !360, file: !235, line: 58, baseType: !73, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !360, file: !235, line: 59, baseType: !73, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !360, file: !235, line: 60, baseType: !73, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !360, file: !235, line: 61, baseType: !73, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !360, file: !235, line: 62, baseType: !73, size: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !360, file: !235, line: 63, baseType: !73, size: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !360, file: !235, line: 64, baseType: !73, size: 32, offset: 224)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !360, file: !235, line: 65, baseType: !73, size: 32, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !351, file: !235, line: 607, baseType: !73, size: 32, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !351, file: !235, line: 608, baseType: !373, size: 64, offset: 704)
!373 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !351, file: !235, line: 609, baseType: !375, size: 112, offset: 768)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !235, line: 319, size: 112, elements: !376)
!376 = !{!377, !380, !381}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !375, file: !235, line: 320, baseType: !378, size: 48)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 48, elements: !283)
!379 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !375, file: !235, line: 321, baseType: !378, size: 48, offset: 48)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !375, file: !235, line: 322, baseType: !379, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !351, file: !235, line: 610, baseType: !299, size: 64, offset: 896)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !351, file: !235, line: 611, baseType: !299, size: 64, offset: 960)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !351, file: !235, line: 612, baseType: !299, size: 64, offset: 1024)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !351, file: !235, line: 613, baseType: !386, size: 64, offset: 1088)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !351, file: !235, line: 614, baseType: !390, size: 192, offset: 1152)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 24)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !351, file: !235, line: 615, baseType: !73, size: 32, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !351, file: !235, line: 616, baseType: !299, size: 64, offset: 1376)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !351, file: !235, line: 617, baseType: !299, size: 64, offset: 1440)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !351, file: !235, line: 618, baseType: !299, size: 64, offset: 1504)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !351, file: !235, line: 619, baseType: !299, size: 64, offset: 1568)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !351, file: !235, line: 620, baseType: !299, size: 64, offset: 1632)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !351, file: !235, line: 621, baseType: !73, size: 32, offset: 1696)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !348, file: !235, line: 631, baseType: !401, size: 2880)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !235, line: 626, size: 2880, elements: !402)
!402 = !{!403, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !401, file: !235, line: 629, baseType: !404, size: 1920)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 1920, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 30)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !401, file: !235, line: 630, baseType: !408, size: 960, offset: 1920)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !405)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !234, file: !235, line: 636, baseType: !410, size: 64, offset: 4032)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !235, line: 93, size: 6336, elements: !412)
!412 = !{!413, !414, !415, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !411, file: !235, line: 94, baseType: !410, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !411, file: !235, line: 95, baseType: !73, size: 32, offset: 64)
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
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !420)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !423, file: !235, line: 76, baseType: !426, size: 2048, offset: 2048)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !423, file: !235, line: 78, baseType: !340, size: 32, offset: 4096)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !423, file: !235, line: 81, baseType: !340, size: 32, offset: 4128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !234, file: !235, line: 637, baseType: !411, size: 6336, offset: 4096)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !234, file: !235, line: 641, baseType: !432, size: 64, offset: 10432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !73}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !234, file: !235, line: 646, baseType: !437, size: 192, offset: 10496)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !235, line: 291, size: 192, elements: !438)
!438 = !{!439, !441, !442}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !437, file: !235, line: 293, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !437, file: !235, line: 294, baseType: !73, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !437, file: !235, line: 295, baseType: !239, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !234, file: !235, line: 648, baseType: !444, size: 4224, offset: 10688)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 4224, elements: !283)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !39, file: !40, line: 85, baseType: !446, size: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !13, line: 114, size: 640, elements: !448)
!448 = !{!449, !453, !454, !461, !474}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !447, file: !13, line: 116, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !451, line: 64, baseType: !452)
!451 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !451, line: 63, baseType: !108)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !447, file: !13, line: 118, baseType: !450, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !447, file: !13, line: 120, baseType: !455, size: 128, offset: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !456, line: 51, size: 128, elements: !457)
!456 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!457 = !{!458, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !456, line: 52, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !455, file: !456, line: 53, baseType: !459, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !447, file: !13, line: 122, baseType: !462, size: 256, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !13, line: 98, size: 256, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !462, file: !13, line: 107, baseType: !12, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !462, file: !13, line: 109, baseType: !450, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !462, file: !13, line: 111, baseType: !467, size: 96, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !451, line: 72, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 68, size: 96, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !468, file: !451, line: 69, baseType: !73, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !468, file: !451, line: 70, baseType: !73, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !468, file: !451, line: 71, baseType: !473, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !451, line: 61, baseType: !73)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !447, file: !13, line: 124, baseType: !455, size: 128, offset: 512)
!475 = !{!0, !476}
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !478, isLocal: true, isDefinition: true)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 112, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 14)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!483 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !485, line: 46, baseType: !486)
!485 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !487, line: 51, baseType: !488)
!487 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !489)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 192, elements: !287)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !491)
!491 = !{!492, !493, !494, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !490, file: !10, line: 196, baseType: !14, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !490, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !490, file: !10, line: 196, baseType: !36, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !490, file: !10, line: 196, baseType: !36, size: 64, offset: 128)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 20)
!499 = !{i32 2, !"Dwarf Version", i32 4}
!500 = !{i32 2, !"Debug Info Version", i32 3}
!501 = !{i32 1, !"wchar_size", i32 4}
!502 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!503 = distinct !DISubprogram(name: "sem_destroy", scope: !10, file: !10, line: 61, type: !504, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !540)
!504 = !DISubroutineType(types: !505)
!505 = !{!73, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !508, line: 78, baseType: !509)
!508 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sem_t_", file: !511, line: 136, size: 192, elements: !512)
!511 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!512 = !{!513, !514, !539}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !510, file: !511, line: 138, baseType: !73, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !510, file: !511, line: 139, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !516, line: 417, baseType: !517)
!516 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !511, line: 146, size: 320, elements: !519)
!519 = !{!520, !529, !530, !531, !532}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !518, file: !511, line: 148, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !522, line: 12, baseType: !523)
!522 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !525, line: 51, size: 192, elements: !526)
!525 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !524, file: !525, line: 52, baseType: !61, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !524, file: !525, line: 53, baseType: !65, size: 128, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !518, file: !511, line: 149, baseType: !73, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !518, file: !511, line: 156, baseType: !73, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !518, file: !511, line: 159, baseType: !73, size: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !518, file: !511, line: 160, baseType: !533, size: 128, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !516, line: 413, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !516, line: 411, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 395, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !535, file: !516, line: 398, baseType: !36, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !535, file: !516, line: 399, baseType: !14, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !510, file: !511, line: 140, baseType: !521, size: 64, offset: 128)
!540 = !{!541, !542, !543, !544}
!541 = !DILocalVariable(name: "sem", arg: 1, scope: !503, file: !10, line: 61, type: !506)
!542 = !DILocalVariable(name: "result", scope: !503, file: !10, line: 86, type: !73)
!543 = !DILocalVariable(name: "s", scope: !503, file: !10, line: 87, type: !507)
!544 = !DILocalVariable(name: "osResult", scope: !545, file: !10, line: 107, type: !551)
!545 = distinct !DILexicalBlock(scope: !546, file: !10, line: 105, column: 13)
!546 = distinct !DILexicalBlock(scope: !547, file: !10, line: 99, column: 15)
!547 = distinct !DILexicalBlock(scope: !548, file: !10, line: 98, column: 9)
!548 = distinct !DILexicalBlock(scope: !549, file: !10, line: 97, column: 11)
!549 = distinct !DILexicalBlock(scope: !550, file: !10, line: 94, column: 5)
!550 = distinct !DILexicalBlock(scope: !503, file: !10, line: 89, column: 7)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !20, line: 60, baseType: !19)
!552 = !DILocation(line: 61, column: 22, scope: !503)
!553 = !DILocation(line: 86, column: 7, scope: !503)
!554 = !DILocation(line: 87, column: 9, scope: !503)
!555 = !DILocation(line: 89, column: 11, scope: !550)
!556 = !DILocation(line: 89, column: 19, scope: !550)
!557 = !DILocation(line: 89, column: 22, scope: !550)
!558 = !{!559, !559, i64 0}
!559 = !{!"any pointer", !560, i64 0}
!560 = !{!"omnipotent char", !561, i64 0}
!561 = !{!"Simple C/C++ TBAA"}
!562 = !DILocation(line: 89, column: 27, scope: !550)
!563 = !DILocation(line: 89, column: 7, scope: !503)
!564 = !DILocation(line: 97, column: 45, scope: !548)
!565 = !DILocation(line: 97, column: 21, scope: !548)
!566 = !DILocation(line: 97, column: 52, scope: !548)
!567 = !DILocation(line: 97, column: 11, scope: !549)
!568 = !DILocation(line: 99, column: 18, scope: !546)
!569 = !{!570, !571, i64 0}
!570 = !{!"sem_t_", !571, i64 0, !559, i64 8, !559, i64 16}
!571 = !{!"int", !560, i64 0}
!572 = !DILocation(line: 99, column: 24, scope: !546)
!573 = !DILocation(line: 99, column: 15, scope: !547)
!574 = !DILocation(line: 101, column: 22, scope: !575)
!575 = distinct !DILexicalBlock(scope: !546, file: !10, line: 100, column: 13)
!576 = !DILocation(line: 103, column: 13, scope: !575)
!577 = !DILocation(line: 107, column: 64, scope: !545)
!578 = !{!570, !559, i64 16}
!579 = !DILocation(line: 107, column: 39, scope: !545)
!580 = !DILocation(line: 107, column: 28, scope: !545)
!581 = !DILocation(line: 109, column: 28, scope: !582)
!582 = distinct !DILexicalBlock(scope: !545, file: !10, line: 109, column: 19)
!583 = !DILocation(line: 109, column: 19, scope: !545)
!584 = !DILocation(line: 111, column: 26, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !10, line: 110, column: 17)
!586 = !DILocation(line: 113, column: 17, scope: !585)
!587 = !DILocation(line: 124, column: 24, scope: !588)
!588 = distinct !DILexicalBlock(scope: !582, file: !10, line: 115, column: 17)
!589 = !DILocation(line: 128, column: 28, scope: !588)
!590 = !DILocation(line: 130, column: 26, scope: !588)
!591 = !DILocation(line: 132, column: 19, scope: !588)
!592 = !DILocation(line: 120, column: 2, scope: !593, inlinedAt: !599)
!593 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !594, file: !594, line: 116, type: !595, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !597)
!594 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!595 = !DISubroutineType(types: !596)
!596 = !{!108}
!597 = !{!598}
!598 = !DILocalVariable(name: "sp", scope: !593, file: !594, line: 118, type: !108)
!599 = distinct !DILocation(line: 154, column: 21, scope: !600, inlinedAt: !606)
!600 = distinct !DISubprogram(name: "uk_thread_current", scope: !40, file: !40, line: 151, type: !601, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!38}
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "current", scope: !600, file: !40, line: 153, type: !37)
!605 = !DILocalVariable(name: "sp", scope: !600, file: !40, line: 154, type: !108)
!606 = distinct !DILocation(line: 117, column: 30, scope: !607, inlinedAt: !611)
!607 = distinct !DISubprogram(name: "uk_sched_yield", scope: !84, file: !84, line: 114, type: !418, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !608)
!608 = !{!609, !610}
!609 = !DILocalVariable(name: "s", scope: !607, file: !84, line: 116, type: !82)
!610 = !DILocalVariable(name: "current", scope: !607, file: !84, line: 117, type: !38)
!611 = distinct !DILocation(line: 244, column: 2, scope: !612, inlinedAt: !614)
!612 = distinct !DISubprogram(name: "pte_osYield", scope: !20, file: !20, line: 242, type: !418, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !613)
!613 = !{}
!614 = distinct !DILocation(line: 138, column: 23, scope: !615)
!615 = distinct !DILexicalBlock(scope: !588, file: !10, line: 133, column: 21)
!616 = !{i32 528241}
!617 = !DILocation(line: 118, column: 16, scope: !593, inlinedAt: !599)
!618 = !DILocation(line: 121, column: 2, scope: !593, inlinedAt: !599)
!619 = !DILocation(line: 154, column: 16, scope: !600, inlinedAt: !606)
!620 = !DILocation(line: 156, column: 38, scope: !600, inlinedAt: !606)
!621 = !DILocation(line: 156, column: 12, scope: !600, inlinedAt: !606)
!622 = !DILocation(line: 153, column: 21, scope: !600, inlinedAt: !606)
!623 = !DILocation(line: 158, column: 9, scope: !600, inlinedAt: !606)
!624 = !DILocation(line: 158, column: 2, scope: !600, inlinedAt: !606)
!625 = !DILocation(line: 117, column: 20, scope: !607, inlinedAt: !611)
!626 = !DILocation(line: 119, column: 2, scope: !627, inlinedAt: !611)
!627 = distinct !DILexicalBlock(scope: !628, file: !84, line: 119, column: 2)
!628 = distinct !DILexicalBlock(scope: !607, file: !84, line: 119, column: 2)
!629 = !DILocation(line: 119, column: 2, scope: !628, inlinedAt: !611)
!630 = !{!"branch_weights", i32 1, i32 2000}
!631 = !DILocation(line: 119, column: 2, scope: !632, inlinedAt: !611)
!632 = distinct !DILexicalBlock(scope: !627, file: !84, line: 119, column: 2)
!633 = !DILocation(line: 121, column: 15, scope: !607, inlinedAt: !611)
!634 = !{!635, !559, i64 88}
!635 = !{!"uk_thread", !559, i64 0, !559, i64 8, !559, i64 16, !559, i64 24, !636, i64 32, !571, i64 48, !637, i64 56, !638, i64 64, !639, i64 72, !559, i64 88, !559, i64 96, !571, i64 104, !559, i64 112, !559, i64 120}
!636 = !{!"", !559, i64 0, !559, i64 8}
!637 = !{!"long", !560, i64 0}
!638 = !{!"_Bool", !560, i64 0}
!639 = !{!"uk_waitq", !559, i64 0, !559, i64 8}
!640 = !DILocation(line: 116, column: 19, scope: !607, inlinedAt: !611)
!641 = !DILocation(line: 122, column: 2, scope: !642, inlinedAt: !611)
!642 = distinct !DILexicalBlock(scope: !643, file: !84, line: 122, column: 2)
!643 = distinct !DILexicalBlock(scope: !607, file: !84, line: 122, column: 2)
!644 = !DILocation(line: 122, column: 2, scope: !643, inlinedAt: !611)
!645 = !DILocation(line: 122, column: 2, scope: !646, inlinedAt: !611)
!646 = distinct !DILexicalBlock(scope: !642, file: !84, line: 122, column: 2)
!647 = !DILocation(line: 123, column: 5, scope: !607, inlinedAt: !611)
!648 = !{!649, !559, i64 0}
!649 = !{!"uk_sched", !559, i64 0, !559, i64 8, !559, i64 16, !559, i64 24, !559, i64 32, !559, i64 40, !559, i64 48, !559, i64 56, !559, i64 64, !638, i64 72, !635, i64 80, !650, i64 208, !651, i64 224, !559, i64 248, !559, i64 256, !559, i64 264}
!650 = !{!"uk_thread_list", !559, i64 0, !559, i64 8}
!651 = !{!"ukplat_ctx_callbacks", !559, i64 0, !559, i64 8, !559, i64 16}
!652 = !DILocation(line: 123, column: 2, scope: !607, inlinedAt: !611)
!653 = !DILocation(line: 124, column: 1, scope: !607, inlinedAt: !611)
!654 = !DILocation(line: 245, column: 1, scope: !612, inlinedAt: !614)
!655 = !DILocation(line: 140, column: 26, scope: !588)
!656 = !DILocation(line: 140, column: 59, scope: !588)
!657 = !DILocation(line: 139, column: 21, scope: !615)
!658 = distinct !{!658, !591, !659}
!659 = !DILocation(line: 140, column: 67, scope: !588)
!660 = !DILocation(line: 148, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !10, line: 147, column: 5)
!662 = distinct !DILexicalBlock(scope: !503, file: !10, line: 146, column: 7)
!663 = !DILocation(line: 148, column: 13, scope: !661)
!664 = !{!571, !571, i64 0}
!665 = !DILocation(line: 149, column: 7, scope: !661)
!666 = !DILocation(line: 152, column: 9, scope: !503)
!667 = !DILocation(line: 152, column: 3, scope: !503)
!668 = !DILocation(line: 154, column: 3, scope: !503)
!669 = !DILocation(line: 0, scope: !503)
!670 = !DILocation(line: 156, column: 1, scope: !503)
!671 = !DILocation(line: 196, column: 2, scope: !2)
!672 = !DILocation(line: 196, column: 10, scope: !2)
!673 = !DILocation(line: 197, column: 2, scope: !2)
!674 = !DILocation(line: 198, column: 2, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 198, column: 2)
!676 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!677 = !DILocation(line: 199, column: 2, scope: !2)
!678 = !DILocation(line: 200, column: 1, scope: !2)
