; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_key_delete.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_key_delete.c"
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
%struct.ThreadKeyAssoc = type { %struct.pte_thread_t_*, %struct.pthread_key_t_*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc* }
%struct.pte_thread_t_ = type { %struct.uk_thread*, %struct.pte_handle_t, %struct.pte_thread_t_*, i32, i8*, i8*, i32, i32, %struct.pthread_mutex_t_*, i32, %struct.pthread_mutex_t_*, i32, i32, i32, [8 x i64], i8, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@uk_pr_crit.__str = internal global [20 x i8] c"libpthread-embedded\00", section ".data_shared", align 16, !dbg !0
@uk_pr_crit.__str.3 = internal global [21 x i8] c"pthread_key_delete.c\00", section ".data_shared", align 16, !dbg !548
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_key_delete(%struct.pthread_key_t_*) local_unnamed_addr #0 !dbg !575 {
  %2 = icmp eq %struct.pthread_key_t_* %0, null, !dbg !590
  br i1 %2, label %63, label %3, !dbg !591

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 3, !dbg !592
  %5 = load i8*, i8** %4, align 8, !dbg !592, !tbaa !593
  %6 = icmp eq i8* %5, null, !dbg !599
  %7 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 1, !dbg !600
  br i1 %6, label %33, label %8, !dbg !601

; <label>:8:                                      ; preds = %3
  %9 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !602, !tbaa !603
  %10 = icmp eq void (i8*)* %9, null, !dbg !604
  br i1 %10, label %33, label %11, !dbg !605

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 2, !dbg !606
  %13 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %12) #7, !dbg !607
  %14 = icmp eq i32 %13, 0, !dbg !608
  br i1 %14, label %15, label %33, !dbg !609

; <label>:15:                                     ; preds = %11
  %16 = bitcast i8** %4 to %struct.ThreadKeyAssoc**, !dbg !610
  %17 = load %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc** %16, align 8, !dbg !610, !tbaa !593
  %18 = icmp eq %struct.ThreadKeyAssoc* %17, null, !dbg !612
  br i1 %18, label %31, label %19, !dbg !613

; <label>:19:                                     ; preds = %15, %28
  %20 = phi %struct.ThreadKeyAssoc* [ %29, %28 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.ThreadKeyAssoc, %struct.ThreadKeyAssoc* %20, i64 0, i32 0, !dbg !614
  %22 = load %struct.pte_thread_t_*, %struct.pte_thread_t_** %21, align 8, !dbg !614, !tbaa !615
  %23 = getelementptr inbounds %struct.pte_thread_t_, %struct.pte_thread_t_* %22, i64 0, i32 8, !dbg !618
  %24 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %23) #7, !dbg !620
  %25 = icmp eq i32 %24, 0, !dbg !621
  tail call void @pte_tkAssocDestroy(%struct.ThreadKeyAssoc* nonnull %20) #7, !dbg !622
  br i1 %25, label %26, label %28, !dbg !624

; <label>:26:                                     ; preds = %19
  %27 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %23) #7, !dbg !625
  br label %28, !dbg !627

; <label>:28:                                     ; preds = %26, %19
  %29 = load %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc** %16, align 8, !dbg !610, !tbaa !593
  %30 = icmp eq %struct.ThreadKeyAssoc* %29, null, !dbg !612
  br i1 %30, label %31, label %19, !dbg !613

; <label>:31:                                     ; preds = %28, %15
  %32 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %12) #7, !dbg !628
  br label %33, !dbg !629

; <label>:33:                                     ; preds = %3, %8, %31, %11
  %34 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 0, !dbg !630
  %35 = load i32, i32* %34, align 8, !dbg !630, !tbaa !631
  %36 = tail call i32 @pte_osTlsFree(i32 %35) #7, !dbg !632
  %37 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !633, !tbaa !603
  %38 = icmp eq void (i8*)* %37, null, !dbg !635
  br i1 %38, label %60, label %39, !dbg !636

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %0, i64 0, i32 2, !dbg !637
  %41 = tail call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t_** nonnull %40) #7, !dbg !639
  %42 = icmp eq i32 %41, 16, !dbg !640
  br i1 %42, label %43, label %60, !dbg !641

; <label>:43:                                     ; preds = %39, %55
  %44 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !642, !srcloc !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %45 = and i64 %44, -65536, !dbg !671
  %46 = inttoptr i64 %45 to %struct.uk_thread**, !dbg !672
  %47 = load %struct.uk_thread*, %struct.uk_thread** %46, align 65536, !dbg !674, !tbaa !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %48 = icmp eq %struct.uk_thread* %47, null, !dbg !678
  br i1 %48, label %49, label %50, !dbg !681, !prof !682

; <label>:49:                                     ; preds = %43
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !683
  tail call void @ukplat_terminate(i32 3) #8, !dbg !683
  unreachable, !dbg !683

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %47, i64 0, i32 9, !dbg !685
  %52 = load %struct.uk_sched*, %struct.uk_sched** %51, align 8, !dbg !685, !tbaa !686
  %53 = icmp eq %struct.uk_sched* %52, null, !dbg !693
  br i1 %53, label %54, label %55, !dbg !696, !prof !682

; <label>:54:                                     ; preds = %50
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !697
  tail call void @ukplat_terminate(i32 3) #8, !dbg !697
  unreachable, !dbg !697

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %52, i64 0, i32 0, !dbg !699
  %57 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %56, align 8, !dbg !699, !tbaa !700
  tail call void %57(%struct.uk_sched* nonnull %52) #7, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  %58 = tail call i32 @pthread_mutex_destroy(%struct.pthread_mutex_t_** nonnull %40) #7, !dbg !639
  %59 = icmp eq i32 %58, 16, !dbg !640
  br i1 %59, label %43, label %60, !dbg !641, !llvm.loop !707

; <label>:60:                                     ; preds = %55, %39, %33
  %61 = phi i32 [ 0, %33 ], [ %41, %39 ], [ %58, %55 ], !dbg !709
  %62 = bitcast %struct.pthread_key_t_* %0 to i8*, !dbg !710
  tail call void @free(i8* %62) #7, !dbg !711
  br label %63, !dbg !712

; <label>:63:                                     ; preds = %1, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %1 ], !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  ret i32 %64, !dbg !713
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pte_tkAssocDestroy(%struct.ThreadKeyAssoc*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osTlsFree(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_destroy(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !714
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !714
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !716
  call void @llvm.va_start(i8* nonnull %3), !dbg !716
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !717
  call void @llvm.va_end(i8* nonnull %3), !dbg !720
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  ret void, !dbg !721
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

!llvm.module.flags = !{!571, !572, !573}
!llvm.ident = !{!574}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !568, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !553)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !36, globals: !547)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_key_delete.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !19, !29}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !13, line: 92, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 61, baseType: !14, size: 32, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !24, !25, !26, !27, !28}
!22 = !DIEnumerator(name: "PThreadStateInitial", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PThreadStateRunning", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PThreadStateSuspended", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "PThreadStateCancelPending", value: 3, isUnsigned: true)
!26 = !DIEnumerator(name: "PThreadStateCanceling", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "PThreadStateException", value: 5, isUnsigned: true)
!28 = !DIEnumerator(name: "PThreadStateLast", value: 6, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !30, line: 68, baseType: !14, size: 32, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!36 = !{!37, !38, !63}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThreadKeyAssoc", file: !20, line: 224, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ThreadKeyAssoc", file: !20, line: 292, size: 384, elements: !41)
!41 = !{!42, !534, !543, !544, !545, !546}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !40, file: !20, line: 392, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !20, line: 83, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !20, line: 85, size: 1536, elements: !46)
!46 = !{!47, !488, !496, !497, !500, !501, !502, !503, !504, !521, !522, !523, !524, !525, !526, !531, !532, !533}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !45, file: !20, line: 87, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !49, line: 11, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !52, line: 59, size: 1024, elements: !53)
!52 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !{!54, !55, !56, !57, !58, !64, !69, !75, !77, !94, !243, !244, !245, !458}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 60, baseType: !6, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !51, file: !52, line: 61, baseType: !37, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !51, file: !52, line: 62, baseType: !37, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !51, file: !52, line: 63, baseType: !37, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !51, file: !52, line: 64, baseType: !59, size: 128, offset: 256)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !52, line: 64, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !59, file: !52, line: 64, baseType: !50, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !59, file: !52, line: 64, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !52, line: 65, baseType: !65, size: 32, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !66, line: 48, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !68, line: 79, baseType: !14)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !51, file: !52, line: 66, baseType: !70, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !71, line: 49, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !73, line: 128, baseType: !74)
!73 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !51, file: !52, line: 67, baseType: !76, size: 8, offset: 512)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !51, file: !52, line: 68, baseType: !78, size: 128, offset: 576)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !79, line: 42, size: 128, elements: !80)
!79 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !{!81, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !78, file: !79, line: 42, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !79, line: 35, size: 192, elements: !84)
!84 = !{!85, !87, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !83, file: !79, line: 36, baseType: !86, size: 32)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !83, file: !79, line: 37, baseType: !50, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !83, file: !79, line: 38, baseType: !89, size: 64, offset: 128)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 38, size: 64, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !89, file: !79, line: 38, baseType: !82, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !78, file: !79, line: 42, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !51, file: !52, line: 69, baseType: !95, size: 64, offset: 704)
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
!108 = !{!86, !95, !50, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !112, line: 55, size: 128, elements: !114)
!114 = !{!115, !116, !118}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !113, file: !112, line: 57, baseType: !76, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !113, file: !112, line: 59, baseType: !117, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !112, line: 53, baseType: !86)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !113, file: !112, line: 61, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !71, line: 48, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !73, line: 129, baseType: !121)
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !96, file: !97, line: 94, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !97, line: 74, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !95, !50}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !96, file: !97, line: 95, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !97, line: 76, baseType: !124)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !96, file: !97, line: 96, baseType: !130, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !97, line: 78, baseType: !124)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !96, file: !97, line: 98, baseType: !132, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !97, line: 81, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!86, !95, !50, !117}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !96, file: !97, line: 99, baseType: !137, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !97, line: 83, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!86, !95, !141, !143}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !96, file: !97, line: 100, baseType: !145, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !97, line: 85, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!86, !95, !50, !86}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !96, file: !97, line: 101, baseType: !150, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !97, line: 87, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!86, !95, !141, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !96, file: !97, line: 104, baseType: !76, size: 8, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !96, file: !97, line: 105, baseType: !51, size: 1024, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !96, file: !97, line: 106, baseType: !158, size: 128, offset: 1664)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !52, line: 93, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !158, file: !52, line: 93, baseType: !50, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !158, file: !52, line: 93, baseType: !63, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !96, file: !97, line: 107, baseType: !163, size: 192, offset: 1792)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !164, line: 59, size: 192, elements: !165)
!164 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !{!166, !231, !235}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !163, file: !164, line: 61, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !164, line: 51, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!37, !171, !121, !121}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !173, line: 77, size: 832, elements: !174)
!173 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!174 = !{!175, !182, !187, !192, !198, !200, !205, !206, !207, !212, !217, !222, !223, !224}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !172, file: !173, line: 79, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !173, line: 54, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!37, !171, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 58, baseType: !121)
!181 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !172, file: !173, line: 80, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !173, line: 56, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!37, !171, !180, !180}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !172, file: !173, line: 81, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !173, line: 62, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!37, !171, !37, !180}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !172, file: !173, line: 82, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !173, line: 58, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!86, !171, !197, !180, !180}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !172, file: !173, line: 83, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !173, line: 60, baseType: !184)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !172, file: !173, line: 84, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !173, line: 64, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !171, !37}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !172, file: !173, line: 87, baseType: !201, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !172, file: !173, line: 88, baseType: !176, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !172, file: !173, line: 92, baseType: !208, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !173, line: 66, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!37, !171, !121}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !172, file: !173, line: 93, baseType: !213, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !173, line: 68, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !171, !37, !121}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !172, file: !173, line: 99, baseType: !218, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !173, line: 70, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!86, !171, !37, !180}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !172, file: !173, line: 100, baseType: !180, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 103, baseType: !171, size: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !172, file: !173, line: 104, baseType: !225, offset: 832)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !229)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !66, line: 20, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !68, line: 41, baseType: !228)
!228 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!229 = !{!230}
!230 = !DISubrange(count: -1)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !163, file: !164, line: 63, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !37}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !163, file: !164, line: 65, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !164, line: 56, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !37, !37}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !96, file: !97, line: 108, baseType: !171, size: 64, offset: 1984)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !97, line: 109, baseType: !95, size: 64, offset: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !96, file: !97, line: 110, baseType: !37, size: 64, offset: 2112)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !51, file: !52, line: 70, baseType: !37, size: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !51, file: !52, line: 72, baseType: !86, size: 32, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !51, file: !52, line: 82, baseType: !246, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !248, line: 569, size: 14912, elements: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !{!250, !251, !326, !327, !328, !329, !333, !334, !337, !338, !342, !354, !355, !356, !358, !359, !360, !422, !443, !444, !449, !456}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !247, file: !248, line: 571, baseType: !86, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !248, line: 287, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !248, line: 181, size: 1408, elements: !255)
!255 = !{!256, !259, !260, !261, !263, !264, !269, !270, !271, !278, !282, !287, !291, !292, !293, !294, !298, !302, !303, !304, !306, !307, !311, !325}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !254, file: !248, line: 182, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !254, file: !248, line: 183, baseType: !86, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !254, file: !248, line: 184, baseType: !86, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !254, file: !248, line: 185, baseType: !262, size: 16, offset: 128)
!262 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !254, file: !248, line: 186, baseType: !262, size: 16, offset: 144)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !254, file: !248, line: 187, baseType: !265, size: 128, offset: 192)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !248, line: 117, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !265, file: !248, line: 118, baseType: !257, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !265, file: !248, line: 119, baseType: !86, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !254, file: !248, line: 188, baseType: !86, size: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !254, file: !248, line: 195, baseType: !37, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !254, file: !248, line: 197, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !246, !37, !277, !86}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !276, line: 145, baseType: !74)
!276 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !254, file: !248, line: 199, baseType: !279, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!275, !246, !37, !6, !86}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !254, file: !248, line: 202, baseType: !283, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !246, !37, !286, !86}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !276, line: 114, baseType: !74)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !254, file: !248, line: 203, baseType: !288, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!86, !246, !37}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !254, file: !248, line: 206, baseType: !265, size: 128, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !254, file: !248, line: 207, baseType: !257, size: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !254, file: !248, line: 208, baseType: !86, size: 32, offset: 896)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !254, file: !248, line: 211, baseType: !295, size: 24, offset: 928)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 24, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !254, file: !248, line: 212, baseType: !299, size: 8, offset: 952)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 1)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !254, file: !248, line: 215, baseType: !265, size: 128, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !254, file: !248, line: 218, baseType: !86, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !254, file: !248, line: 219, baseType: !305, size: 64, offset: 1152)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !276, line: 44, baseType: !74)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !254, file: !248, line: 222, baseType: !246, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !254, file: !248, line: 226, baseType: !308, size: 32, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !276, line: 175, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !310, line: 12, baseType: !86)
!310 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !254, file: !248, line: 228, baseType: !312, size: 64, offset: 1312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !276, line: 171, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 163, size: 64, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !313, file: !276, line: 165, baseType: !86, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !313, file: !276, line: 170, baseType: !317, size: 32, offset: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !276, line: 166, size: 32, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !317, file: !276, line: 168, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !181, line: 124, baseType: !14)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !317, file: !276, line: 169, baseType: !322, size: 32)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 32, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 4)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !254, file: !248, line: 229, baseType: !86, size: 32, offset: 1376)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !247, file: !248, line: 576, baseType: !252, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !247, file: !248, line: 578, baseType: !86, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !247, file: !248, line: 579, baseType: !330, size: 200, offset: 288)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 25)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !247, file: !248, line: 582, baseType: !86, size: 32, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !247, file: !248, line: 583, baseType: !335, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !248, line: 40, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !247, file: !248, line: 585, baseType: !86, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !247, file: !248, line: 587, baseType: !339, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !246}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !247, file: !248, line: 590, baseType: !343, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !248, line: 47, size: 256, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !344, file: !248, line: 49, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !344, file: !248, line: 50, baseType: !86, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !344, file: !248, line: 50, baseType: !86, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !344, file: !248, line: 50, baseType: !86, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !344, file: !248, line: 50, baseType: !86, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !344, file: !248, line: 51, baseType: !352, size: 32, offset: 192)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 32, elements: !300)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !248, line: 25, baseType: !14)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !247, file: !248, line: 591, baseType: !86, size: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !247, file: !248, line: 592, baseType: !343, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !247, file: !248, line: 593, baseType: !357, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !247, file: !248, line: 596, baseType: !86, size: 32, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !247, file: !248, line: 597, baseType: !277, size: 64, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !247, file: !248, line: 632, baseType: !361, size: 2880, offset: 1152)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !248, line: 599, size: 2880, elements: !362)
!362 = !{!363, !413}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !361, file: !248, line: 622, baseType: !364, size: 1728)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !248, line: 601, size: 1728, elements: !365)
!365 = !{!366, !367, !368, !372, !384, !385, !387, !395, !396, !397, !398, !402, !406, !407, !408, !409, !410, !411, !412}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !364, file: !248, line: 603, baseType: !14, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !364, file: !248, line: 604, baseType: !277, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !364, file: !248, line: 605, baseType: !369, size: 208, offset: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 26)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !364, file: !248, line: 606, baseType: !373, size: 288, offset: 352)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !248, line: 55, size: 288, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !373, file: !248, line: 57, baseType: !86, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !373, file: !248, line: 58, baseType: !86, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !373, file: !248, line: 59, baseType: !86, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !373, file: !248, line: 60, baseType: !86, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !373, file: !248, line: 61, baseType: !86, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !373, file: !248, line: 62, baseType: !86, size: 32, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !373, file: !248, line: 63, baseType: !86, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !373, file: !248, line: 64, baseType: !86, size: 32, offset: 224)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !373, file: !248, line: 65, baseType: !86, size: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !364, file: !248, line: 607, baseType: !86, size: 32, offset: 640)
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
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !364, file: !248, line: 614, baseType: !403, size: 192, offset: 1152)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 24)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !364, file: !248, line: 615, baseType: !86, size: 32, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !364, file: !248, line: 616, baseType: !312, size: 64, offset: 1376)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !364, file: !248, line: 617, baseType: !312, size: 64, offset: 1440)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !364, file: !248, line: 618, baseType: !312, size: 64, offset: 1504)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !364, file: !248, line: 619, baseType: !312, size: 64, offset: 1568)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !364, file: !248, line: 620, baseType: !312, size: 64, offset: 1632)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !364, file: !248, line: 621, baseType: !86, size: 32, offset: 1696)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !361, file: !248, line: 631, baseType: !414, size: 2880)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !248, line: 626, size: 2880, elements: !415)
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !414, file: !248, line: 629, baseType: !417, size: 1920)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1920, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 30)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !414, file: !248, line: 630, baseType: !421, size: 960, offset: 1920)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !418)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !247, file: !248, line: 636, baseType: !423, size: 64, offset: 4032)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !248, line: 93, size: 6336, elements: !425)
!425 = !{!426, !427, !428, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !424, file: !248, line: 94, baseType: !423, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !424, file: !248, line: 95, baseType: !86, size: 32, offset: 64)
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
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !433)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !436, file: !248, line: 76, baseType: !439, size: 2048, offset: 2048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !436, file: !248, line: 78, baseType: !353, size: 32, offset: 4096)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !436, file: !248, line: 81, baseType: !353, size: 32, offset: 4128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !247, file: !248, line: 637, baseType: !424, size: 6336, offset: 4096)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !247, file: !248, line: 641, baseType: !445, size: 64, offset: 10432)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !86}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !247, file: !248, line: 646, baseType: !450, size: 192, offset: 10496)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !248, line: 291, size: 192, elements: !451)
!451 = !{!452, !454, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !450, file: !248, line: 293, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !450, file: !248, line: 294, baseType: !86, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !450, file: !248, line: 295, baseType: !252, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !247, file: !248, line: 648, baseType: !457, size: 4224, offset: 10688)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 4224, elements: !296)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !51, file: !52, line: 85, baseType: !459, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !13, line: 114, size: 640, elements: !461)
!461 = !{!462, !466, !467, !474, !487}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !460, file: !13, line: 116, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !464, line: 64, baseType: !465)
!464 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !464, line: 63, baseType: !121)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !460, file: !13, line: 118, baseType: !463, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !460, file: !13, line: 120, baseType: !468, size: 128, offset: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !469, line: 51, size: 128, elements: !470)
!469 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !469, line: 52, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !468, file: !469, line: 53, baseType: !472, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !460, file: !13, line: 122, baseType: !475, size: 256, offset: 256)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !13, line: 98, size: 256, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !475, file: !13, line: 107, baseType: !12, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !475, file: !13, line: 109, baseType: !463, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !475, file: !13, line: 111, baseType: !480, size: 96, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !464, line: 72, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 68, size: 96, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !481, file: !464, line: 69, baseType: !86, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !481, file: !464, line: 70, baseType: !86, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !481, file: !464, line: 71, baseType: !486, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !464, line: 61, baseType: !86)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !460, file: !13, line: 124, baseType: !468, size: 128, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !45, file: !20, line: 88, baseType: !489, size: 128, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !490, line: 413, baseType: !491)
!490 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !490, line: 411, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 395, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !492, file: !490, line: 398, baseType: !37, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !492, file: !490, line: 399, baseType: !14, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !45, file: !20, line: 89, baseType: !43, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !45, file: !20, line: 90, baseType: !498, size: 32, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !20, line: 80, baseType: !19)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !45, file: !20, line: 91, baseType: !37, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !45, file: !20, line: 92, baseType: !37, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !45, file: !20, line: 93, baseType: !86, size: 32, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !45, file: !20, line: 94, baseType: !86, size: 32, offset: 480)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !45, file: !20, line: 95, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !490, line: 417, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !20, line: 146, size: 320, elements: !508)
!508 = !{!509, !517, !518, !519, !520}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !507, file: !20, line: 148, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !49, line: 12, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !513, line: 51, size: 192, elements: !514)
!513 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !512, file: !513, line: 52, baseType: !74, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !512, file: !513, line: 53, baseType: !78, size: 128, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !507, file: !20, line: 149, baseType: !86, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !507, file: !20, line: 156, baseType: !86, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !507, file: !20, line: 159, baseType: !86, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !507, file: !20, line: 160, baseType: !489, size: 128, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !45, file: !20, line: 96, baseType: !86, size: 32, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !45, file: !20, line: 97, baseType: !505, size: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !45, file: !20, line: 98, baseType: !86, size: 32, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !45, file: !20, line: 99, baseType: !86, size: 32, offset: 736)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !45, file: !20, line: 100, baseType: !86, size: 32, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !45, file: !20, line: 102, baseType: !527, size: 512, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !528, line: 372, baseType: !529)
!528 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 512, elements: !400)
!530 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !45, file: !20, line: 104, baseType: !86, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !45, file: !20, line: 106, baseType: !37, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !45, file: !20, line: 107, baseType: !37, size: 64, offset: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !40, file: !20, line: 393, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !490, line: 416, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_key_t_", file: !20, line: 214, size: 256, elements: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !537, file: !20, line: 216, baseType: !14, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !537, file: !20, line: 217, baseType: !232, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "keyLock", scope: !537, file: !20, line: 218, baseType: !505, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !537, file: !20, line: 219, baseType: !37, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nextKey", scope: !40, file: !20, line: 394, baseType: !38, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nextThread", scope: !40, file: !20, line: 395, baseType: !38, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "prevKey", scope: !40, file: !20, line: 396, baseType: !38, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "prevThread", scope: !40, file: !20, line: 397, baseType: !38, size: 64, offset: 320)
!547 = !{!0, !548}
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !550, isLocal: true, isDefinition: true)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 168, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 21)
!553 = !{!554, !555}
!554 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!555 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !557, line: 46, baseType: !558)
!557 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !559, line: 51, baseType: !560)
!559 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !561)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !300)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !563)
!563 = !{!564, !565, !566, !567}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !562, file: !10, line: 196, baseType: !14, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !562, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !562, file: !10, line: 196, baseType: !37, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !562, file: !10, line: 196, baseType: !37, size: 64, offset: 128)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 20)
!571 = !{i32 2, !"Dwarf Version", i32 4}
!572 = !{i32 2, !"Debug Info Version", i32 3}
!573 = !{i32 1, !"wchar_size", i32 4}
!574 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!575 = distinct !DISubprogram(name: "pthread_key_delete", scope: !10, file: !10, line: 52, type: !576, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!86, !535}
!578 = !{!579, !580, !581, !586}
!579 = !DILocalVariable(name: "key", arg: 1, scope: !575, file: !10, line: 52, type: !535)
!580 = !DILocalVariable(name: "result", scope: !575, file: !10, line: 79, type: !86)
!581 = !DILocalVariable(name: "assoc", scope: !582, file: !10, line: 87, type: !38)
!582 = distinct !DILexicalBlock(scope: !583, file: !10, line: 86, column: 9)
!583 = distinct !DILexicalBlock(scope: !584, file: !10, line: 83, column: 11)
!584 = distinct !DILexicalBlock(scope: !585, file: !10, line: 82, column: 5)
!585 = distinct !DILexicalBlock(scope: !575, file: !10, line: 81, column: 7)
!586 = !DILocalVariable(name: "thread", scope: !587, file: !10, line: 98, type: !43)
!587 = distinct !DILexicalBlock(scope: !582, file: !10, line: 97, column: 13)
!588 = !DILocation(line: 52, column: 35, scope: !575)
!589 = !DILocation(line: 79, column: 7, scope: !575)
!590 = !DILocation(line: 81, column: 11, scope: !585)
!591 = !DILocation(line: 81, column: 7, scope: !575)
!592 = !DILocation(line: 83, column: 16, scope: !583)
!593 = !{!594, !598, i64 24}
!594 = !{!"pthread_key_t_", !595, i64 0, !598, i64 8, !598, i64 16, !598, i64 24}
!595 = !{!"int", !596, i64 0}
!596 = !{!"omnipotent char", !597, i64 0}
!597 = !{!"Simple C/C++ TBAA"}
!598 = !{!"any pointer", !596, i64 0}
!599 = !DILocation(line: 83, column: 24, scope: !583)
!600 = !DILocation(line: 0, scope: !583)
!601 = !DILocation(line: 83, column: 32, scope: !583)
!602 = !DILocation(line: 84, column: 16, scope: !583)
!603 = !{!594, !598, i64 8}
!604 = !DILocation(line: 84, column: 27, scope: !583)
!605 = !DILocation(line: 84, column: 35, scope: !583)
!606 = !DILocation(line: 85, column: 38, scope: !583)
!607 = !DILocation(line: 85, column: 11, scope: !583)
!608 = !DILocation(line: 85, column: 48, scope: !583)
!609 = !DILocation(line: 83, column: 11, scope: !584)
!610 = !DILocation(line: 96, column: 51, scope: !582)
!611 = !DILocation(line: 87, column: 27, scope: !582)
!612 = !DILocation(line: 96, column: 60, scope: !582)
!613 = !DILocation(line: 96, column: 11, scope: !582)
!614 = !DILocation(line: 98, column: 46, scope: !587)
!615 = !{!616, !598, i64 0}
!616 = !{!"ThreadKeyAssoc", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40}
!617 = !DILocation(line: 98, column: 30, scope: !587)
!618 = !DILocation(line: 106, column: 49, scope: !619)
!619 = distinct !DILexicalBlock(scope: !587, file: !10, line: 106, column: 19)
!620 = !DILocation(line: 106, column: 19, scope: !619)
!621 = !DILocation(line: 106, column: 62, scope: !619)
!622 = !DILocation(line: 0, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !10, line: 118, column: 17)
!624 = !DILocation(line: 106, column: 19, scope: !587)
!625 = !DILocation(line: 115, column: 26, scope: !626)
!626 = distinct !DILexicalBlock(scope: !619, file: !10, line: 107, column: 17)
!627 = !DILocation(line: 116, column: 17, scope: !626)
!628 = !DILocation(line: 123, column: 11, scope: !582)
!629 = !DILocation(line: 124, column: 9, scope: !582)
!630 = !DILocation(line: 126, column: 27, scope: !584)
!631 = !{!594, !595, i64 0}
!632 = !DILocation(line: 126, column: 7, scope: !584)
!633 = !DILocation(line: 127, column: 16, scope: !634)
!634 = distinct !DILexicalBlock(scope: !584, file: !10, line: 127, column: 11)
!635 = !DILocation(line: 127, column: 27, scope: !634)
!636 = !DILocation(line: 127, column: 11, scope: !584)
!637 = !DILocation(line: 130, column: 67, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !10, line: 128, column: 9)
!639 = !DILocation(line: 130, column: 37, scope: !638)
!640 = !DILocation(line: 130, column: 24, scope: !638)
!641 = !DILocation(line: 130, column: 11, scope: !638)
!642 = !DILocation(line: 120, column: 2, scope: !643, inlinedAt: !649)
!643 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !644, file: !644, line: 116, type: !645, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !647)
!644 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!645 = !DISubroutineType(types: !646)
!646 = !{!121}
!647 = !{!648}
!648 = !DILocalVariable(name: "sp", scope: !643, file: !644, line: 118, type: !121)
!649 = distinct !DILocation(line: 154, column: 21, scope: !650, inlinedAt: !656)
!650 = distinct !DISubprogram(name: "uk_thread_current", scope: !52, file: !52, line: 151, type: !651, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!50}
!653 = !{!654, !655}
!654 = !DILocalVariable(name: "current", scope: !650, file: !52, line: 153, type: !63)
!655 = !DILocalVariable(name: "sp", scope: !650, file: !52, line: 154, type: !121)
!656 = distinct !DILocation(line: 117, column: 30, scope: !657, inlinedAt: !661)
!657 = distinct !DISubprogram(name: "uk_sched_yield", scope: !97, file: !97, line: 114, type: !431, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !658)
!658 = !{!659, !660}
!659 = !DILocalVariable(name: "s", scope: !657, file: !97, line: 116, type: !95)
!660 = !DILocalVariable(name: "current", scope: !657, file: !97, line: 117, type: !50)
!661 = distinct !DILocation(line: 244, column: 2, scope: !662, inlinedAt: !665)
!662 = distinct !DISubprogram(name: "pte_osYield", scope: !663, file: !663, line: 242, type: !431, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !664)
!663 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!664 = !{}
!665 = distinct !DILocation(line: 132, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !638, file: !10, line: 131, column: 13)
!667 = !{i32 544186}
!668 = !DILocation(line: 118, column: 16, scope: !643, inlinedAt: !649)
!669 = !DILocation(line: 121, column: 2, scope: !643, inlinedAt: !649)
!670 = !DILocation(line: 154, column: 16, scope: !650, inlinedAt: !656)
!671 = !DILocation(line: 156, column: 38, scope: !650, inlinedAt: !656)
!672 = !DILocation(line: 156, column: 12, scope: !650, inlinedAt: !656)
!673 = !DILocation(line: 153, column: 21, scope: !650, inlinedAt: !656)
!674 = !DILocation(line: 158, column: 9, scope: !650, inlinedAt: !656)
!675 = !{!598, !598, i64 0}
!676 = !DILocation(line: 158, column: 2, scope: !650, inlinedAt: !656)
!677 = !DILocation(line: 117, column: 20, scope: !657, inlinedAt: !661)
!678 = !DILocation(line: 119, column: 2, scope: !679, inlinedAt: !661)
!679 = distinct !DILexicalBlock(scope: !680, file: !97, line: 119, column: 2)
!680 = distinct !DILexicalBlock(scope: !657, file: !97, line: 119, column: 2)
!681 = !DILocation(line: 119, column: 2, scope: !680, inlinedAt: !661)
!682 = !{!"branch_weights", i32 1, i32 2000}
!683 = !DILocation(line: 119, column: 2, scope: !684, inlinedAt: !661)
!684 = distinct !DILexicalBlock(scope: !679, file: !97, line: 119, column: 2)
!685 = !DILocation(line: 121, column: 15, scope: !657, inlinedAt: !661)
!686 = !{!687, !598, i64 88}
!687 = !{!"uk_thread", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !688, i64 32, !595, i64 48, !689, i64 56, !690, i64 64, !691, i64 72, !598, i64 88, !598, i64 96, !595, i64 104, !598, i64 112, !598, i64 120}
!688 = !{!"", !598, i64 0, !598, i64 8}
!689 = !{!"long", !596, i64 0}
!690 = !{!"_Bool", !596, i64 0}
!691 = !{!"uk_waitq", !598, i64 0, !598, i64 8}
!692 = !DILocation(line: 116, column: 19, scope: !657, inlinedAt: !661)
!693 = !DILocation(line: 122, column: 2, scope: !694, inlinedAt: !661)
!694 = distinct !DILexicalBlock(scope: !695, file: !97, line: 122, column: 2)
!695 = distinct !DILexicalBlock(scope: !657, file: !97, line: 122, column: 2)
!696 = !DILocation(line: 122, column: 2, scope: !695, inlinedAt: !661)
!697 = !DILocation(line: 122, column: 2, scope: !698, inlinedAt: !661)
!698 = distinct !DILexicalBlock(scope: !694, file: !97, line: 122, column: 2)
!699 = !DILocation(line: 123, column: 5, scope: !657, inlinedAt: !661)
!700 = !{!701, !598, i64 0}
!701 = !{!"uk_sched", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !690, i64 72, !687, i64 80, !702, i64 208, !703, i64 224, !598, i64 248, !598, i64 256, !598, i64 264}
!702 = !{!"uk_thread_list", !598, i64 0, !598, i64 8}
!703 = !{!"ukplat_ctx_callbacks", !598, i64 0, !598, i64 8, !598, i64 16}
!704 = !DILocation(line: 123, column: 2, scope: !657, inlinedAt: !661)
!705 = !DILocation(line: 124, column: 1, scope: !657, inlinedAt: !661)
!706 = !DILocation(line: 245, column: 1, scope: !662, inlinedAt: !665)
!707 = distinct !{!707, !641, !708}
!708 = !DILocation(line: 133, column: 13, scope: !638)
!709 = !DILocation(line: 0, scope: !575)
!710 = !DILocation(line: 136, column: 13, scope: !584)
!711 = !DILocation(line: 136, column: 7, scope: !584)
!712 = !DILocation(line: 137, column: 5, scope: !584)
!713 = !DILocation(line: 139, column: 3, scope: !575)
!714 = !DILocation(line: 196, column: 2, scope: !2)
!715 = !DILocation(line: 196, column: 10, scope: !2)
!716 = !DILocation(line: 197, column: 2, scope: !2)
!717 = !DILocation(line: 198, column: 2, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 198, column: 2)
!719 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!720 = !DILocation(line: 199, column: 2, scope: !2)
!721 = !DILocation(line: 200, column: 1, scope: !2)
