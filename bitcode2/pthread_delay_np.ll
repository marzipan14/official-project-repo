; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_delay_np.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_delay_np.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
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
%struct.pte_handle_t = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@uk_pr_crit.__str = internal global [20 x i8] c"libpthread-embedded\00", section ".data_shared", align 16, !dbg !0
@uk_pr_crit.__str.3 = internal global [19 x i8] c"pthread_delay_np.c\00", section ".data_shared", align 16, !dbg !555
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_delay_np(%struct.timespec* readonly) local_unnamed_addr #0 !dbg !582 {
  %2 = icmp eq %struct.timespec* %0, null, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %2, label %61, label %3, !dbg !606

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !607
  %5 = load i64, i64* %4, align 8, !dbg !607, !tbaa !609
  %6 = icmp eq i64 %5, 0, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !dbg !616, !tbaa !617
  br i1 %6, label %9, label %26, !dbg !615

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i64 %8, 0, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %10, label %11, label %26, !dbg !619

; <label>:11:                                     ; preds = %9
  tail call void @pthread_testcancel() #7, !dbg !620
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !622, !srcloc !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  %13 = and i64 %12, -65536, !dbg !649
  %14 = inttoptr i64 %13 to %struct.uk_thread**, !dbg !650
  %15 = load %struct.uk_thread*, %struct.uk_thread** %14, align 65536, !dbg !652, !tbaa !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %16 = icmp eq %struct.uk_thread* %15, null, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %16, label %17, label %18, !dbg !660, !prof !661

; <label>:17:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !662
  tail call void @ukplat_terminate(i32 3) #8, !dbg !662
  unreachable

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %15, i64 0, i32 9, !dbg !664
  %20 = load %struct.uk_sched*, %struct.uk_sched** %19, align 8, !dbg !664, !tbaa !665
  %21 = icmp eq %struct.uk_sched* %20, null, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %21, label %22, label %23, !dbg !675, !prof !661

; <label>:22:                                     ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !676
  tail call void @ukplat_terminate(i32 3) #8, !dbg !676
  unreachable

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %20, i64 0, i32 0, !dbg !678
  %25 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %24, align 8, !dbg !678, !tbaa !679
  tail call void %25(%struct.uk_sched* nonnull %20) #7, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  tail call void @pthread_testcancel() #7, !dbg !686
  br label %61, !dbg !687

; <label>:26:                                     ; preds = %3, %9
  %27 = trunc i64 %5 to i32, !dbg !688
  %28 = mul i32 %27, 1000, !dbg !688
  %29 = add nsw i64 %8, 999999, !dbg !690
  %30 = sdiv i64 %29, 1000000, !dbg !691
  %31 = trunc i64 %30 to i32, !dbg !692
  %32 = add i32 %28, %31, !dbg !694
  %33 = tail call { i8*, i32 } @pthread_self() #7, !dbg !696
  %34 = extractvalue { i8*, i32 } %33, 0, !dbg !696
  %35 = icmp eq i8* %34, null, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br i1 %35, label %61, label %36, !dbg !700

; <label>:36:                                     ; preds = %26
  %37 = getelementptr inbounds i8, i8* %34, i64 88, !dbg !702
  %38 = bitcast i8* %37 to i32*, !dbg !702
  %39 = load i32, i32* %38, align 8, !dbg !702, !tbaa !703
  %40 = icmp eq i32 %39, 0, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %40, label %41, label %60, !dbg !707

; <label>:41:                                     ; preds = %36
  %42 = bitcast i8* %34 to %struct.uk_thread**, !dbg !708
  %43 = load %struct.uk_thread*, %struct.uk_thread** %42, align 8, !dbg !708, !tbaa !709
  %44 = tail call i32 @pte_osThreadCheckCancel(%struct.uk_thread* %43) #7, !dbg !710
  %45 = icmp eq i32 %44, 4, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %45, label %46, label %58, !dbg !714

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds i8, i8* %34, i64 80, !dbg !715
  %48 = bitcast i8* %47 to %struct.pthread_mutex_t_**, !dbg !715
  %49 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %48) #7, !dbg !717
  %50 = getelementptr inbounds i8, i8* %34, i64 32, !dbg !718
  %51 = bitcast i8* %50 to i32*, !dbg !718
  %52 = load volatile i32, i32* %51, align 8, !dbg !718, !tbaa !720
  %53 = icmp ult i32 %52, 4, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %53, label %54, label %56, !dbg !722

; <label>:54:                                     ; preds = %46
  store volatile i32 4, i32* %51, align 8, !dbg !723, !tbaa !720
  store i32 1, i32* %38, align 8, !dbg !725, !tbaa !703
  %55 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %48) #7, !dbg !726
  tail call void @pte_throw(i32 2) #7, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  br label %56, !dbg !728

; <label>:56:                                     ; preds = %46, %54
  %57 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %48) #7, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br label %61

; <label>:58:                                     ; preds = %41
  %59 = icmp eq i32 %44, 0, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %59, label %61, label %63

; <label>:60:                                     ; preds = %36
  tail call void @pte_osThreadSleep(i32 %32) #7, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %61

; <label>:61:                                     ; preds = %60, %58, %26, %1, %23, %56
  %62 = phi i32 [ 3, %56 ], [ 0, %23 ], [ 22, %1 ], [ 12, %26 ], [ 0, %58 ], [ 0, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63, !dbg !738

; <label>:63:                                     ; preds = %61, %58
  %64 = phi i32 [ 22, %58 ], [ %62, %61 ], !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  ret i32 %64, !dbg !738
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @pthread_testcancel() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local { i8*, i32 } @pthread_self() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadCheckCancel(%struct.uk_thread*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pte_throw(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pte_osThreadSleep(i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !740
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !740
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !742
  call void @llvm.va_start(i8* nonnull %3), !dbg !742
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !743
  call void @llvm.va_end(i8* nonnull %3), !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  ret void, !dbg !747
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

!llvm.module.flags = !{!578, !579, !580}
!llvm.ident = !{!581}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !575, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !560)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !63, globals: !554)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_delay_np.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !19, !29, !47, !56}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 435, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!33 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!34 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!35 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!36 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!37 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!38 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!39 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!40 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!41 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!42 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!43 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!44 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!45 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!46 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !48, line: 38, baseType: !14, size: 32, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!55 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !57, line: 68, baseType: !14, size: 32, elements: !58)
!57 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!63 = !{!64, !65, !85}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !20, line: 83, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !20, line: 85, size: 1536, elements: !68)
!68 = !{!69, !509, !516, !517, !520, !521, !522, !523, !524, !541, !542, !543, !544, !545, !546, !551, !552, !553}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !67, file: !20, line: 87, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !71, line: 11, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !74, line: 59, size: 1024, elements: !75)
!74 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !{!76, !77, !78, !79, !80, !86, !91, !97, !99, !115, !264, !265, !266, !479}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 60, baseType: !6, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !73, file: !74, line: 61, baseType: !64, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !73, file: !74, line: 62, baseType: !64, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !73, file: !74, line: 63, baseType: !64, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !73, file: !74, line: 64, baseType: !81, size: 128, offset: 256)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !74, line: 64, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !81, file: !74, line: 64, baseType: !72, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !81, file: !74, line: 64, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 65, baseType: !87, size: 32, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 48, baseType: !89)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !90, line: 79, baseType: !14)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !73, file: !74, line: 66, baseType: !92, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !93, line: 49, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 128, baseType: !96)
!95 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !73, file: !74, line: 67, baseType: !98, size: 8, offset: 512)
!98 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !73, file: !74, line: 68, baseType: !100, size: 128, offset: 576)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !101, line: 42, size: 128, elements: !102)
!101 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !{!103, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !100, file: !101, line: 42, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !101, line: 35, size: 192, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !105, file: !101, line: 36, baseType: !31, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !105, file: !101, line: 37, baseType: !72, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !105, file: !101, line: 38, baseType: !110, size: 64, offset: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !101, line: 38, size: 64, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !110, file: !101, line: 38, baseType: !104, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !100, file: !101, line: 42, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !73, file: !74, line: 69, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !118, line: 90, size: 2176, elements: !119)
!118 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!119 = !{!120, !125, !143, !148, !150, !152, !157, !165, !170, !176, !177, !178, !183, !261, !262, !263}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !117, file: !118, line: 91, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !118, line: 68, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !116}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !117, file: !118, line: 93, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !118, line: 71, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!31, !116, !72, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !133, line: 62, baseType: !134)
!133 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !133, line: 55, size: 128, elements: !135)
!135 = !{!136, !137, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !134, file: !133, line: 57, baseType: !98, size: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !134, file: !133, line: 59, baseType: !138, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !133, line: 53, baseType: !31)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !134, file: !133, line: 61, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !93, line: 48, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !95, line: 129, baseType: !142)
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !117, file: !118, line: 94, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !118, line: 74, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !116, !72}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !117, file: !118, line: 95, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !118, line: 76, baseType: !145)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !117, file: !118, line: 96, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !118, line: 78, baseType: !145)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !117, file: !118, line: 98, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !118, line: 81, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!31, !116, !72, !138}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !117, file: !118, line: 99, baseType: !158, size: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !118, line: 83, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!31, !116, !162, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !117, file: !118, line: 100, baseType: !166, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !118, line: 85, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!31, !116, !72, !31}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !117, file: !118, line: 101, baseType: !171, size: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !118, line: 87, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!31, !116, !162, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !117, file: !118, line: 104, baseType: !98, size: 8, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !117, file: !118, line: 105, baseType: !73, size: 1024, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !117, file: !118, line: 106, baseType: !179, size: 128, offset: 1664)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !74, line: 93, size: 128, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !179, file: !74, line: 93, baseType: !72, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !179, file: !74, line: 93, baseType: !85, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !117, file: !118, line: 107, baseType: !184, size: 192, offset: 1792)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !185, line: 59, size: 192, elements: !186)
!185 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!186 = !{!187, !252, !256}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !184, file: !185, line: 61, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !185, line: 51, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!64, !192, !142, !142}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !194, line: 77, size: 832, elements: !195)
!194 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!195 = !{!196, !203, !208, !213, !219, !221, !226, !227, !228, !233, !238, !243, !244, !245}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !193, file: !194, line: 79, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !194, line: 54, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!64, !192, !201}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 58, baseType: !142)
!202 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !193, file: !194, line: 80, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !194, line: 56, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!64, !192, !201, !201}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !193, file: !194, line: 81, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !194, line: 62, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!64, !192, !64, !201}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !193, file: !194, line: 82, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !194, line: 58, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!31, !192, !218, !201, !201}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !193, file: !194, line: 83, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !194, line: 60, baseType: !205)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !193, file: !194, line: 84, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !194, line: 64, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !192, !64}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !193, file: !194, line: 87, baseType: !222, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !193, file: !194, line: 88, baseType: !197, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !193, file: !194, line: 92, baseType: !229, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !194, line: 66, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!64, !192, !142}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !193, file: !194, line: 93, baseType: !234, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !194, line: 68, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !192, !64, !142}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !193, file: !194, line: 99, baseType: !239, size: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !194, line: 70, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!31, !192, !64, !201}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !193, file: !194, line: 100, baseType: !201, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !194, line: 103, baseType: !192, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !193, file: !194, line: 104, baseType: !246, offset: 832)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, elements: !250)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 20, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !90, line: 41, baseType: !249)
!249 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!250 = !{!251}
!251 = !DISubrange(count: -1)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !184, file: !185, line: 63, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !64}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !184, file: !185, line: 65, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !185, line: 56, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !64, !64}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !117, file: !118, line: 108, baseType: !192, size: 64, offset: 1984)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !118, line: 109, baseType: !116, size: 64, offset: 2048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !117, file: !118, line: 110, baseType: !64, size: 64, offset: 2112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !73, file: !74, line: 70, baseType: !64, size: 64, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !73, file: !74, line: 72, baseType: !31, size: 32, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !73, file: !74, line: 82, baseType: !267, size: 64, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !269, line: 569, size: 14912, elements: !270)
!269 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!270 = !{!271, !272, !347, !348, !349, !350, !354, !355, !358, !359, !363, !375, !376, !377, !379, !380, !381, !443, !464, !465, !470, !477}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !268, file: !269, line: 571, baseType: !31, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !268, file: !269, line: 576, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !269, line: 287, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !269, line: 181, size: 1408, elements: !276)
!276 = !{!277, !280, !281, !282, !284, !285, !290, !291, !292, !299, !303, !308, !312, !313, !314, !315, !319, !323, !324, !325, !327, !328, !332, !346}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !275, file: !269, line: 182, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !275, file: !269, line: 183, baseType: !31, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !275, file: !269, line: 184, baseType: !31, size: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !275, file: !269, line: 185, baseType: !283, size: 16, offset: 128)
!283 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !275, file: !269, line: 186, baseType: !283, size: 16, offset: 144)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !275, file: !269, line: 187, baseType: !286, size: 128, offset: 192)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !269, line: 117, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !286, file: !269, line: 118, baseType: !278, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !286, file: !269, line: 119, baseType: !31, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !275, file: !269, line: 188, baseType: !31, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !275, file: !269, line: 195, baseType: !64, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !275, file: !269, line: 197, baseType: !293, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !267, !64, !298, !31}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !297, line: 145, baseType: !96)
!297 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !275, file: !269, line: 199, baseType: !300, size: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!296, !267, !64, !6, !31}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !275, file: !269, line: 202, baseType: !304, size: 64, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !267, !64, !307, !31}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !297, line: 114, baseType: !96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !275, file: !269, line: 203, baseType: !309, size: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!31, !267, !64}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !275, file: !269, line: 206, baseType: !286, size: 128, offset: 704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !275, file: !269, line: 207, baseType: !278, size: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !275, file: !269, line: 208, baseType: !31, size: 32, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !275, file: !269, line: 211, baseType: !316, size: 24, offset: 928)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 24, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 3)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !275, file: !269, line: 212, baseType: !320, size: 8, offset: 952)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 8, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 1)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !275, file: !269, line: 215, baseType: !286, size: 128, offset: 960)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !275, file: !269, line: 218, baseType: !31, size: 32, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !275, file: !269, line: 219, baseType: !326, size: 64, offset: 1152)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !297, line: 44, baseType: !96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !275, file: !269, line: 222, baseType: !267, size: 64, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !275, file: !269, line: 226, baseType: !329, size: 32, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !297, line: 175, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !331, line: 12, baseType: !31)
!331 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !275, file: !269, line: 228, baseType: !333, size: 64, offset: 1312)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !297, line: 171, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 163, size: 64, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !334, file: !297, line: 165, baseType: !31, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !334, file: !297, line: 170, baseType: !338, size: 32, offset: 32)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !297, line: 166, size: 32, elements: !339)
!339 = !{!340, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !338, file: !297, line: 168, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !202, line: 124, baseType: !14)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !338, file: !297, line: 169, baseType: !343, size: 32)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 32, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 4)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !275, file: !269, line: 229, baseType: !31, size: 32, offset: 1376)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !268, file: !269, line: 576, baseType: !273, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !268, file: !269, line: 576, baseType: !273, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !268, file: !269, line: 578, baseType: !31, size: 32, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !268, file: !269, line: 579, baseType: !351, size: 200, offset: 288)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 25)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !268, file: !269, line: 582, baseType: !31, size: 32, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !268, file: !269, line: 583, baseType: !356, size: 64, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !269, line: 40, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !268, file: !269, line: 585, baseType: !31, size: 32, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !268, file: !269, line: 587, baseType: !360, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !267}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !268, file: !269, line: 590, baseType: !364, size: 64, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !269, line: 47, size: 256, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !365, file: !269, line: 49, baseType: !364, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !365, file: !269, line: 50, baseType: !31, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !365, file: !269, line: 50, baseType: !31, size: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !365, file: !269, line: 50, baseType: !31, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !365, file: !269, line: 50, baseType: !31, size: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !365, file: !269, line: 51, baseType: !373, size: 32, offset: 192)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 32, elements: !321)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !269, line: 25, baseType: !14)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !268, file: !269, line: 591, baseType: !31, size: 32, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !268, file: !269, line: 592, baseType: !364, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !268, file: !269, line: 593, baseType: !378, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !268, file: !269, line: 596, baseType: !31, size: 32, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !268, file: !269, line: 597, baseType: !298, size: 64, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !268, file: !269, line: 632, baseType: !382, size: 2880, offset: 1152)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !269, line: 599, size: 2880, elements: !383)
!383 = !{!384, !434}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !382, file: !269, line: 622, baseType: !385, size: 1728)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !269, line: 601, size: 1728, elements: !386)
!386 = !{!387, !388, !389, !393, !405, !406, !408, !416, !417, !418, !419, !423, !427, !428, !429, !430, !431, !432, !433}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !385, file: !269, line: 603, baseType: !14, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !385, file: !269, line: 604, baseType: !298, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !385, file: !269, line: 605, baseType: !390, size: 208, offset: 128)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 26)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !385, file: !269, line: 606, baseType: !394, size: 288, offset: 352)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !269, line: 55, size: 288, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !394, file: !269, line: 57, baseType: !31, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !394, file: !269, line: 58, baseType: !31, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !394, file: !269, line: 59, baseType: !31, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !394, file: !269, line: 60, baseType: !31, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !394, file: !269, line: 61, baseType: !31, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !394, file: !269, line: 62, baseType: !31, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !394, file: !269, line: 63, baseType: !31, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !394, file: !269, line: 64, baseType: !31, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !394, file: !269, line: 65, baseType: !31, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !385, file: !269, line: 607, baseType: !31, size: 32, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !385, file: !269, line: 608, baseType: !407, size: 64, offset: 704)
!407 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !385, file: !269, line: 609, baseType: !409, size: 112, offset: 768)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !269, line: 319, size: 112, elements: !410)
!410 = !{!411, !414, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !409, file: !269, line: 320, baseType: !412, size: 48)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 48, elements: !317)
!413 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !409, file: !269, line: 321, baseType: !412, size: 48, offset: 48)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !409, file: !269, line: 322, baseType: !413, size: 16, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !385, file: !269, line: 610, baseType: !333, size: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !385, file: !269, line: 611, baseType: !333, size: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !385, file: !269, line: 612, baseType: !333, size: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !385, file: !269, line: 613, baseType: !420, size: 64, offset: 1088)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !385, file: !269, line: 614, baseType: !424, size: 192, offset: 1152)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 24)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !385, file: !269, line: 615, baseType: !31, size: 32, offset: 1344)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !385, file: !269, line: 616, baseType: !333, size: 64, offset: 1376)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !385, file: !269, line: 617, baseType: !333, size: 64, offset: 1440)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !385, file: !269, line: 618, baseType: !333, size: 64, offset: 1504)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !385, file: !269, line: 619, baseType: !333, size: 64, offset: 1568)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !385, file: !269, line: 620, baseType: !333, size: 64, offset: 1632)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !385, file: !269, line: 621, baseType: !31, size: 32, offset: 1696)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !382, file: !269, line: 631, baseType: !435, size: 2880)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !269, line: 626, size: 2880, elements: !436)
!436 = !{!437, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !435, file: !269, line: 629, baseType: !438, size: 1920)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 1920, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 30)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !435, file: !269, line: 630, baseType: !442, size: 960, offset: 1920)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !439)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !268, file: !269, line: 636, baseType: !444, size: 64, offset: 4032)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !269, line: 93, size: 6336, elements: !446)
!446 = !{!447, !448, !449, !456}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !445, file: !269, line: 94, baseType: !444, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !445, file: !269, line: 95, baseType: !31, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !445, file: !269, line: 97, baseType: !450, size: 2048, offset: 128)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 2048, elements: !454)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null}
!454 = !{!455}
!455 = !DISubrange(count: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !445, file: !269, line: 98, baseType: !457, size: 4160, offset: 2176)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !269, line: 74, size: 4160, elements: !458)
!458 = !{!459, !461, !462, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !457, file: !269, line: 75, baseType: !460, size: 2048)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !454)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !457, file: !269, line: 76, baseType: !460, size: 2048, offset: 2048)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !457, file: !269, line: 78, baseType: !374, size: 32, offset: 4096)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !457, file: !269, line: 81, baseType: !374, size: 32, offset: 4128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !268, file: !269, line: 637, baseType: !445, size: 6336, offset: 4096)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !268, file: !269, line: 641, baseType: !466, size: 64, offset: 10432)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !31}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !268, file: !269, line: 646, baseType: !471, size: 192, offset: 10496)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !269, line: 291, size: 192, elements: !472)
!472 = !{!473, !475, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !471, file: !269, line: 293, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !471, file: !269, line: 294, baseType: !31, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !471, file: !269, line: 295, baseType: !273, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !268, file: !269, line: 648, baseType: !478, size: 4224, offset: 10688)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 4224, elements: !317)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !73, file: !74, line: 85, baseType: !480, size: 64, offset: 960)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !13, line: 114, size: 640, elements: !482)
!482 = !{!483, !487, !488, !495, !508}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !481, file: !13, line: 116, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !485, line: 64, baseType: !486)
!485 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !485, line: 63, baseType: !142)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !481, file: !13, line: 118, baseType: !484, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !481, file: !13, line: 120, baseType: !489, size: 128, offset: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !490, line: 51, size: 128, elements: !491)
!490 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!491 = !{!492, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !490, line: 52, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !489, file: !490, line: 53, baseType: !493, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !481, file: !13, line: 122, baseType: !496, size: 256, offset: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !13, line: 98, size: 256, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !496, file: !13, line: 107, baseType: !12, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !496, file: !13, line: 109, baseType: !484, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !496, file: !13, line: 111, baseType: !501, size: 96, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !485, line: 72, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 68, size: 96, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !502, file: !485, line: 69, baseType: !31, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !502, file: !485, line: 70, baseType: !31, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !502, file: !485, line: 71, baseType: !507, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !485, line: 61, baseType: !31)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !481, file: !13, line: 124, baseType: !489, size: 128, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !67, file: !20, line: 88, baseType: !510, size: 128, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !30, line: 413, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !30, line: 411, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 395, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !512, file: !30, line: 398, baseType: !64, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !512, file: !30, line: 399, baseType: !14, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !67, file: !20, line: 89, baseType: !65, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !67, file: !20, line: 90, baseType: !518, size: 32, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !20, line: 80, baseType: !19)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !67, file: !20, line: 91, baseType: !64, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !67, file: !20, line: 92, baseType: !64, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !67, file: !20, line: 93, baseType: !31, size: 32, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !67, file: !20, line: 94, baseType: !31, size: 32, offset: 480)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !67, file: !20, line: 95, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !30, line: 417, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !20, line: 146, size: 320, elements: !528)
!528 = !{!529, !537, !538, !539, !540}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !527, file: !20, line: 148, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !71, line: 12, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !533, line: 51, size: 192, elements: !534)
!533 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !532, file: !533, line: 52, baseType: !96, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !532, file: !533, line: 53, baseType: !100, size: 128, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !527, file: !20, line: 149, baseType: !31, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !527, file: !20, line: 156, baseType: !31, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !527, file: !20, line: 159, baseType: !31, size: 32, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !527, file: !20, line: 160, baseType: !510, size: 128, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !67, file: !20, line: 96, baseType: !31, size: 32, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !67, file: !20, line: 97, baseType: !525, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !67, file: !20, line: 98, baseType: !31, size: 32, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !67, file: !20, line: 99, baseType: !31, size: 32, offset: 736)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !67, file: !20, line: 100, baseType: !31, size: 32, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !67, file: !20, line: 102, baseType: !547, size: 512, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !548, line: 372, baseType: !549)
!548 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 512, elements: !421)
!550 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !67, file: !20, line: 104, baseType: !31, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !67, file: !20, line: 106, baseType: !64, size: 64, offset: 1408)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !67, file: !20, line: 107, baseType: !64, size: 64, offset: 1472)
!554 = !{!0, !555}
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 152, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 19)
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!562 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !564, line: 46, baseType: !565)
!564 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !566, line: 51, baseType: !567)
!566 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 192, elements: !321)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !570)
!570 = !{!571, !572, !573, !574}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !569, file: !10, line: 196, baseType: !14, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !569, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !569, file: !10, line: 196, baseType: !64, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !569, file: !10, line: 196, baseType: !64, size: 64, offset: 128)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 20)
!578 = !{i32 2, !"Dwarf Version", i32 4}
!579 = !{i32 2, !"Debug Info Version", i32 3}
!580 = !{i32 1, !"wchar_size", i32 4}
!581 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!582 = distinct !DISubprogram(name: "pthread_delay_np", scope: !10, file: !10, line: 91, type: !583, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !592)
!583 = !DISubroutineType(types: !584)
!584 = !{!31, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !587, line: 52, size: 128, elements: !588)
!587 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!588 = !{!589, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !586, file: !587, line: 53, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !587, line: 34, baseType: !96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !586, file: !587, line: 54, baseType: !96, size: 64, offset: 64)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DILocalVariable(name: "interval", arg: 1, scope: !582, file: !10, line: 91, type: !585)
!594 = !DILocalVariable(name: "wait_time", scope: !582, file: !10, line: 93, type: !14)
!595 = !DILocalVariable(name: "secs_in_millisecs", scope: !582, file: !10, line: 94, type: !14)
!596 = !DILocalVariable(name: "millisecs", scope: !582, file: !10, line: 95, type: !14)
!597 = !DILocalVariable(name: "self", scope: !582, file: !10, line: 96, type: !510)
!598 = !DILocalVariable(name: "sp", scope: !582, file: !10, line: 97, type: !65)
!599 = !DILocalVariable(name: "cancelStatus", scope: !600, file: !10, line: 129, type: !602)
!600 = distinct !DILexicalBlock(scope: !601, file: !10, line: 128, column: 5)
!601 = distinct !DILexicalBlock(scope: !582, file: !10, line: 127, column: 7)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !48, line: 60, baseType: !47)
!603 = !DILocation(line: 91, column: 36, scope: !582)
!604 = !DILocation(line: 99, column: 16, scope: !605)
!605 = distinct !DILexicalBlock(scope: !582, file: !10, line: 99, column: 7)
!606 = !DILocation(line: 99, column: 7, scope: !582)
!607 = !DILocation(line: 104, column: 17, scope: !608)
!608 = distinct !DILexicalBlock(scope: !582, file: !10, line: 104, column: 7)
!609 = !{!610, !611, i64 0}
!610 = !{!"timespec", !611, i64 0, !611, i64 8}
!611 = !{!"long", !612, i64 0}
!612 = !{!"omnipotent char", !613, i64 0}
!613 = !{!"Simple C/C++ TBAA"}
!614 = !DILocation(line: 104, column: 24, scope: !608)
!615 = !DILocation(line: 104, column: 30, scope: !608)
!616 = !DILocation(line: 0, scope: !582)
!617 = !{!610, !611, i64 8}
!618 = !DILocation(line: 104, column: 51, scope: !608)
!619 = !DILocation(line: 104, column: 7, scope: !582)
!620 = !DILocation(line: 106, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !608, file: !10, line: 105, column: 5)
!622 = !DILocation(line: 120, column: 2, scope: !623, inlinedAt: !629)
!623 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !624, file: !624, line: 116, type: !625, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !627)
!624 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!625 = !DISubroutineType(types: !626)
!626 = !{!142}
!627 = !{!628}
!628 = !DILocalVariable(name: "sp", scope: !623, file: !624, line: 118, type: !142)
!629 = distinct !DILocation(line: 154, column: 21, scope: !630, inlinedAt: !636)
!630 = distinct !DISubprogram(name: "uk_thread_current", scope: !74, file: !74, line: 151, type: !631, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!72}
!633 = !{!634, !635}
!634 = !DILocalVariable(name: "current", scope: !630, file: !74, line: 153, type: !85)
!635 = !DILocalVariable(name: "sp", scope: !630, file: !74, line: 154, type: !142)
!636 = distinct !DILocation(line: 117, column: 30, scope: !637, inlinedAt: !641)
!637 = distinct !DISubprogram(name: "uk_sched_yield", scope: !118, file: !118, line: 114, type: !452, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !638)
!638 = !{!639, !640}
!639 = !DILocalVariable(name: "s", scope: !637, file: !118, line: 116, type: !116)
!640 = !DILocalVariable(name: "current", scope: !637, file: !118, line: 117, type: !72)
!641 = distinct !DILocation(line: 244, column: 2, scope: !642, inlinedAt: !644)
!642 = distinct !DISubprogram(name: "pte_osYield", scope: !48, file: !48, line: 242, type: !452, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !643)
!643 = !{}
!644 = distinct !DILocation(line: 107, column: 7, scope: !621)
!645 = !{i32 508076}
!646 = !DILocation(line: 118, column: 16, scope: !623, inlinedAt: !629)
!647 = !DILocation(line: 121, column: 2, scope: !623, inlinedAt: !629)
!648 = !DILocation(line: 154, column: 16, scope: !630, inlinedAt: !636)
!649 = !DILocation(line: 156, column: 38, scope: !630, inlinedAt: !636)
!650 = !DILocation(line: 156, column: 12, scope: !630, inlinedAt: !636)
!651 = !DILocation(line: 153, column: 21, scope: !630, inlinedAt: !636)
!652 = !DILocation(line: 158, column: 9, scope: !630, inlinedAt: !636)
!653 = !{!654, !654, i64 0}
!654 = !{!"any pointer", !612, i64 0}
!655 = !DILocation(line: 158, column: 2, scope: !630, inlinedAt: !636)
!656 = !DILocation(line: 117, column: 20, scope: !637, inlinedAt: !641)
!657 = !DILocation(line: 119, column: 2, scope: !658, inlinedAt: !641)
!658 = distinct !DILexicalBlock(scope: !659, file: !118, line: 119, column: 2)
!659 = distinct !DILexicalBlock(scope: !637, file: !118, line: 119, column: 2)
!660 = !DILocation(line: 119, column: 2, scope: !659, inlinedAt: !641)
!661 = !{!"branch_weights", i32 1, i32 2000}
!662 = !DILocation(line: 119, column: 2, scope: !663, inlinedAt: !641)
!663 = distinct !DILexicalBlock(scope: !658, file: !118, line: 119, column: 2)
!664 = !DILocation(line: 121, column: 15, scope: !637, inlinedAt: !641)
!665 = !{!666, !654, i64 88}
!666 = !{!"uk_thread", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !667, i64 32, !668, i64 48, !611, i64 56, !669, i64 64, !670, i64 72, !654, i64 88, !654, i64 96, !668, i64 104, !654, i64 112, !654, i64 120}
!667 = !{!"", !654, i64 0, !654, i64 8}
!668 = !{!"int", !612, i64 0}
!669 = !{!"_Bool", !612, i64 0}
!670 = !{!"uk_waitq", !654, i64 0, !654, i64 8}
!671 = !DILocation(line: 116, column: 19, scope: !637, inlinedAt: !641)
!672 = !DILocation(line: 122, column: 2, scope: !673, inlinedAt: !641)
!673 = distinct !DILexicalBlock(scope: !674, file: !118, line: 122, column: 2)
!674 = distinct !DILexicalBlock(scope: !637, file: !118, line: 122, column: 2)
!675 = !DILocation(line: 122, column: 2, scope: !674, inlinedAt: !641)
!676 = !DILocation(line: 122, column: 2, scope: !677, inlinedAt: !641)
!677 = distinct !DILexicalBlock(scope: !673, file: !118, line: 122, column: 2)
!678 = !DILocation(line: 123, column: 5, scope: !637, inlinedAt: !641)
!679 = !{!680, !654, i64 0}
!680 = !{!"uk_sched", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !669, i64 72, !666, i64 80, !681, i64 208, !682, i64 224, !654, i64 248, !654, i64 256, !654, i64 264}
!681 = !{!"uk_thread_list", !654, i64 0, !654, i64 8}
!682 = !{!"ukplat_ctx_callbacks", !654, i64 0, !654, i64 8, !654, i64 16}
!683 = !DILocation(line: 123, column: 2, scope: !637, inlinedAt: !641)
!684 = !DILocation(line: 124, column: 1, scope: !637, inlinedAt: !641)
!685 = !DILocation(line: 245, column: 1, scope: !642, inlinedAt: !644)
!686 = !DILocation(line: 108, column: 7, scope: !621)
!687 = !DILocation(line: 109, column: 7, scope: !621)
!688 = !DILocation(line: 113, column: 23, scope: !582)
!689 = !DILocation(line: 94, column: 16, scope: !582)
!690 = !DILocation(line: 116, column: 34, scope: !582)
!691 = !DILocation(line: 116, column: 45, scope: !582)
!692 = !DILocation(line: 116, column: 15, scope: !582)
!693 = !DILocation(line: 95, column: 16, scope: !582)
!694 = !DILocation(line: 118, column: 33, scope: !582)
!695 = !DILocation(line: 93, column: 16, scope: !582)
!696 = !DILocation(line: 120, column: 23, scope: !697)
!697 = distinct !DILexicalBlock(scope: !582, file: !10, line: 120, column: 7)
!698 = !DILocation(line: 96, column: 13, scope: !582)
!699 = !DILocation(line: 120, column: 12, scope: !697)
!700 = !DILocation(line: 120, column: 7, scope: !582)
!701 = !DILocation(line: 97, column: 18, scope: !582)
!702 = !DILocation(line: 127, column: 11, scope: !601)
!703 = !{!704, !668, i64 88}
!704 = !{!"pte_thread_t_", !654, i64 0, !705, i64 8, !654, i64 24, !612, i64 32, !654, i64 40, !654, i64 48, !668, i64 56, !668, i64 60, !654, i64 64, !668, i64 72, !654, i64 80, !668, i64 88, !668, i64 92, !668, i64 96, !612, i64 104, !668, i64 168, !654, i64 176, !654, i64 184}
!705 = !{!"", !654, i64 0, !668, i64 8}
!706 = !DILocation(line: 127, column: 23, scope: !601)
!707 = !DILocation(line: 127, column: 7, scope: !582)
!708 = !DILocation(line: 134, column: 50, scope: !600)
!709 = !{!704, !654, i64 0}
!710 = !DILocation(line: 134, column: 22, scope: !600)
!711 = !DILocation(line: 129, column: 20, scope: !600)
!712 = !DILocation(line: 136, column: 24, scope: !713)
!713 = distinct !DILexicalBlock(scope: !600, file: !10, line: 136, column: 11)
!714 = !DILocation(line: 136, column: 11, scope: !600)
!715 = !DILocation(line: 141, column: 43, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !10, line: 137, column: 9)
!717 = !DILocation(line: 141, column: 18, scope: !716)
!718 = !DILocation(line: 142, column: 19, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !10, line: 142, column: 15)
!720 = !{!704, !612, i64 32}
!721 = !DILocation(line: 142, column: 25, scope: !719)
!722 = !DILocation(line: 142, column: 15, scope: !716)
!723 = !DILocation(line: 144, column: 25, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !10, line: 143, column: 13)
!725 = !DILocation(line: 145, column: 31, scope: !724)
!726 = !DILocation(line: 146, column: 22, scope: !724)
!727 = !DILocation(line: 148, column: 15, scope: !724)
!728 = !DILocation(line: 149, column: 13, scope: !724)
!729 = !DILocation(line: 151, column: 18, scope: !716)
!730 = !DILocation(line: 152, column: 11, scope: !716)
!731 = !DILocation(line: 154, column: 29, scope: !732)
!732 = distinct !DILexicalBlock(scope: !713, file: !10, line: 154, column: 16)
!733 = !DILocation(line: 154, column: 16, scope: !713)
!734 = !DILocation(line: 0, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !10, line: 155, column: 9)
!736 = !DILocation(line: 162, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !601, file: !10, line: 161, column: 5)
!738 = !DILocation(line: 166, column: 1, scope: !582)
!739 = !DILocation(line: 0, scope: !716)
!740 = !DILocation(line: 196, column: 2, scope: !2)
!741 = !DILocation(line: 196, column: 10, scope: !2)
!742 = !DILocation(line: 197, column: 2, scope: !2)
!743 = !DILocation(line: 198, column: 2, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 198, column: 2)
!745 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!746 = !DILocation(line: 199, column: 2, scope: !2)
!747 = !DILocation(line: 200, column: 1, scope: !2)
