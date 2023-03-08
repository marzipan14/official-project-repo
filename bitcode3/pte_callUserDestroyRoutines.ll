; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_callUserDestroyRoutines.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_callUserDestroyRoutines.c"
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
%struct.ThreadKeyAssoc = type { %struct.pte_thread_t_*, %struct.pthread_key_t_*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc* }
%struct.pte_thread_t_ = type { %struct.uk_thread*, %struct.pte_handle_t, %struct.pte_thread_t_*, i32, i8*, i8*, i32, i32, %struct.pthread_mutex_t_*, i32, %struct.pthread_mutex_t_*, i32, i32, i32, [8 x i64], i8, i8*, i8* }
%struct.pthread_key_t_ = type { i32, void (i8*)*, %struct.pthread_mutex_t_*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@uk_pr_crit.__str = internal global [20 x i8] c"libpthread-embedded\00", section ".data_shared", align 16, !dbg !0
@uk_pr_crit.__str.3 = internal global [30 x i8] c"pte_callUserDestroyRoutines.c\00", section ".data_shared", align 16, !dbg !548

; Function Attrs: noredzone nounwind
define dso_local void @pte_callUserDestroyRoutines(i8*, i32) local_unnamed_addr #0 !dbg !573 {
  %3 = icmp eq i8* %0, null, !dbg !592
  br i1 %3, label %80, label %4, !dbg !593

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8, i8* %0, i64 64
  %6 = bitcast i8* %5 to %struct.pthread_mutex_t_**
  %7 = getelementptr inbounds i8, i8* %0, i64 176
  %8 = bitcast i8* %7 to i64*
  %9 = getelementptr inbounds i8, i8* %0, i64 184
  %10 = bitcast i8* %9 to i64*
  %11 = bitcast i8* %9 to %struct.ThreadKeyAssoc**
  br label %12, !dbg !594

; <label>:12:                                     ; preds = %4, %77
  %13 = phi i32 [ %14, %77 ], [ 0, %4 ], !dbg !595
  %14 = add nuw nsw i32 %13, 1, !dbg !594
  %15 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !598
  %16 = load i64, i64* %8, align 8, !dbg !599, !tbaa !600
  store i64 %16, i64* %10, align 8, !dbg !607, !tbaa !608
  %17 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !609
  %18 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !610
  %19 = load %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc** %11, align 8, !dbg !611, !tbaa !608
  %20 = icmp eq %struct.ThreadKeyAssoc* %19, null, !dbg !614
  br i1 %20, label %21, label %23, !dbg !615

; <label>:21:                                     ; preds = %12
  %22 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !616
  br label %80, !dbg !618

; <label>:23:                                     ; preds = %12
  %24 = icmp ult i32 %14, 5
  br label %25, !dbg !615

; <label>:25:                                     ; preds = %23, %72
  %26 = phi %struct.ThreadKeyAssoc* [ %19, %23 ], [ %75, %72 ]
  %27 = phi i32 [ 0, %23 ], [ %73, %72 ]
  %28 = getelementptr inbounds %struct.ThreadKeyAssoc, %struct.ThreadKeyAssoc* %26, i64 0, i32 1, !dbg !619
  %29 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** %28, align 8, !dbg !619, !tbaa !622
  %30 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %29, i64 0, i32 2, !dbg !624
  %31 = tail call i32 @pthread_mutex_trylock(%struct.pthread_mutex_t_** nonnull %30) #7, !dbg !625
  %32 = icmp eq i32 %31, 16, !dbg !626
  br i1 %32, label %33, label %49, !dbg !627

; <label>:33:                                     ; preds = %25
  %34 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !628
  %35 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !630, !srcloc !654
  %36 = and i64 %35, -65536, !dbg !657
  %37 = inttoptr i64 %36 to %struct.uk_thread**, !dbg !658
  %38 = load %struct.uk_thread*, %struct.uk_thread** %37, align 65536, !dbg !660, !tbaa !661
  %39 = icmp eq %struct.uk_thread* %38, null, !dbg !663
  br i1 %39, label %40, label %41, !dbg !666, !prof !667

; <label>:40:                                     ; preds = %33
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !668
  tail call void @ukplat_terminate(i32 3) #8, !dbg !668
  unreachable, !dbg !668

; <label>:41:                                     ; preds = %33
  %42 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 9, !dbg !670
  %43 = load %struct.uk_sched*, %struct.uk_sched** %42, align 8, !dbg !670, !tbaa !671
  %44 = icmp eq %struct.uk_sched* %43, null, !dbg !678
  br i1 %44, label %45, label %46, !dbg !681, !prof !667

; <label>:45:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !682
  tail call void @ukplat_terminate(i32 3) #8, !dbg !682
  unreachable, !dbg !682

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %43, i64 0, i32 0, !dbg !684
  %48 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %47, align 8, !dbg !684, !tbaa !685
  tail call void %48(%struct.uk_sched* nonnull %43) #7, !dbg !689
  br label %72, !dbg !690, !llvm.loop !691

; <label>:49:                                     ; preds = %25
  %50 = getelementptr inbounds %struct.ThreadKeyAssoc, %struct.ThreadKeyAssoc* %26, i64 0, i32 2, !dbg !694
  %51 = bitcast %struct.ThreadKeyAssoc** %50 to i64*, !dbg !694
  %52 = load i64, i64* %51, align 8, !dbg !694, !tbaa !695
  store i64 %52, i64* %10, align 8, !dbg !696, !tbaa !608
  %53 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** %28, align 8, !dbg !697, !tbaa !622
  %54 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %53, i64 0, i32 1, !dbg !699
  %55 = load void (i8*)*, void (i8*)** %54, align 8, !dbg !699, !tbaa !700
  %56 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %53, i64 0, i32 0, !dbg !703
  %57 = load i32, i32* %56, align 8, !dbg !703, !tbaa !704
  %58 = tail call i8* @pte_osTlsGetValue(i32 %57) #7, !dbg !705
  %59 = load i32, i32* %56, align 8, !dbg !707, !tbaa !704
  %60 = tail call i32 @pte_osTlsSetValue(i32 %59, i8* null) #7, !dbg !708
  %61 = icmp ne i8* %58, null, !dbg !709
  %62 = and i1 %24, %61, !dbg !711
  br i1 %62, label %63, label %68, !dbg !711

; <label>:63:                                     ; preds = %49
  %64 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !712
  %65 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %53, i64 0, i32 2, !dbg !714
  %66 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %65) #7, !dbg !715
  %67 = add nsw i32 %27, 1, !dbg !716
  tail call void %55(i8* nonnull %58) #7, !dbg !717
  br label %72, !dbg !718

; <label>:68:                                     ; preds = %49
  tail call void @pte_tkAssocDestroy(%struct.ThreadKeyAssoc* nonnull %26) #7, !dbg !719
  %69 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !721
  %70 = getelementptr inbounds %struct.pthread_key_t_, %struct.pthread_key_t_* %53, i64 0, i32 2, !dbg !722
  %71 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %70) #7, !dbg !723
  br label %72

; <label>:72:                                     ; preds = %63, %68, %46
  %73 = phi i32 [ %27, %46 ], [ %67, %63 ], [ %27, %68 ], !dbg !724
  %74 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !610
  %75 = load %struct.ThreadKeyAssoc*, %struct.ThreadKeyAssoc** %11, align 8, !dbg !611, !tbaa !608
  %76 = icmp eq %struct.ThreadKeyAssoc* %75, null, !dbg !614
  br i1 %76, label %77, label %25, !dbg !615

; <label>:77:                                     ; preds = %72
  %78 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %6) #7, !dbg !616
  %79 = icmp eq i32 %73, 0, !dbg !618
  br i1 %79, label %80, label %12, !dbg !618, !llvm.loop !725

; <label>:80:                                     ; preds = %77, %21, %2
  ret void, !dbg !728
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_trylock(%struct.pthread_mutex_t_**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @pte_osTlsGetValue(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pte_osTlsSetValue(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pte_tkAssocDestroy(%struct.ThreadKeyAssoc*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !729
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !729
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !731
  call void @llvm.va_start(i8* nonnull %3), !dbg !731
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !732
  call void @llvm.va_end(i8* nonnull %3), !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !736
  ret void, !dbg !736
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

!llvm.module.flags = !{!569, !570, !571}
!llvm.ident = !{!572}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !566, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !551)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !36, globals: !547)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_callUserDestroyRoutines.c", directory: "/root/.unikraft/apps/redis/build")
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
!36 = !{!37, !38, !529, !58}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_thread_t", file: !20, line: 83, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_thread_t_", file: !20, line: 85, size: 1536, elements: !41)
!41 = !{!42, !483, !491, !492, !495, !496, !497, !498, !499, !516, !517, !518, !519, !520, !521, !526, !527, !528}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "threadId", scope: !40, file: !20, line: 87, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osThreadHandle", file: !44, line: 11, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !47, line: 59, size: 1024, elements: !48)
!47 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !{!49, !50, !51, !52, !53, !59, !64, !70, !72, !89, !238, !239, !240, !453}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !47, line: 60, baseType: !6, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !46, file: !47, line: 61, baseType: !37, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !46, file: !47, line: 62, baseType: !37, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !46, file: !47, line: 63, baseType: !37, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !46, file: !47, line: 64, baseType: !54, size: 128, offset: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !47, line: 64, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !54, file: !47, line: 64, baseType: !45, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !54, file: !47, line: 64, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !47, line: 65, baseType: !60, size: 32, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !61, line: 48, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !63, line: 79, baseType: !14)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !46, file: !47, line: 66, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !66, line: 49, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !68, line: 128, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !46, file: !47, line: 67, baseType: !71, size: 8, offset: 512)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !46, file: !47, line: 68, baseType: !73, size: 128, offset: 576)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !74, line: 42, size: 128, elements: !75)
!74 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !{!76, !87}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !73, file: !74, line: 42, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !74, line: 35, size: 192, elements: !79)
!79 = !{!80, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !78, file: !74, line: 36, baseType: !81, size: 32)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !78, file: !74, line: 37, baseType: !45, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !78, file: !74, line: 38, baseType: !84, size: 64, offset: 128)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !78, file: !74, line: 38, size: 64, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !84, file: !74, line: 38, baseType: !77, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !73, file: !74, line: 42, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !46, file: !47, line: 69, baseType: !90, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !92, line: 90, size: 2176, elements: !93)
!92 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !{!94, !99, !117, !122, !124, !126, !131, !139, !144, !150, !151, !152, !157, !235, !236, !237}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !91, file: !92, line: 91, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !92, line: 68, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !90}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !91, file: !92, line: 93, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !92, line: 71, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!81, !90, !45, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !107, line: 62, baseType: !108)
!107 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !107, line: 55, size: 128, elements: !109)
!109 = !{!110, !111, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !108, file: !107, line: 57, baseType: !71, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !108, file: !107, line: 59, baseType: !112, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !107, line: 53, baseType: !81)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !108, file: !107, line: 61, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !66, line: 48, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !68, line: 129, baseType: !116)
!116 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !91, file: !92, line: 94, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !92, line: 74, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !90, !45}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !91, file: !92, line: 95, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !92, line: 76, baseType: !119)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !91, file: !92, line: 96, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !92, line: 78, baseType: !119)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !91, file: !92, line: 98, baseType: !127, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !92, line: 81, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!81, !90, !45, !112}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !91, file: !92, line: 99, baseType: !132, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !92, line: 83, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!81, !90, !136, !138}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !91, file: !92, line: 100, baseType: !140, size: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !92, line: 85, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!81, !90, !45, !81}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !91, file: !92, line: 101, baseType: !145, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !92, line: 87, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!81, !90, !136, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !91, file: !92, line: 104, baseType: !71, size: 8, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !91, file: !92, line: 105, baseType: !46, size: 1024, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !91, file: !92, line: 106, baseType: !153, size: 128, offset: 1664)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !47, line: 93, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !153, file: !47, line: 93, baseType: !45, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !153, file: !47, line: 93, baseType: !58, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !91, file: !92, line: 107, baseType: !158, size: 192, offset: 1792)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !159, line: 59, size: 192, elements: !160)
!159 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!160 = !{!161, !226, !230}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !158, file: !159, line: 61, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !159, line: 51, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!37, !166, !116, !116}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !168, line: 77, size: 832, elements: !169)
!168 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!169 = !{!170, !177, !182, !187, !193, !195, !200, !201, !202, !207, !212, !217, !218, !219}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !167, file: !168, line: 79, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !168, line: 54, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!37, !166, !175}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 58, baseType: !116)
!176 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !167, file: !168, line: 80, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !168, line: 56, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!37, !166, !175, !175}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !167, file: !168, line: 81, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !168, line: 62, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!37, !166, !37, !175}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !167, file: !168, line: 82, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !168, line: 58, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!81, !166, !192, !175, !175}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !167, file: !168, line: 83, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !168, line: 60, baseType: !179)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !167, file: !168, line: 84, baseType: !196, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !168, line: 64, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !166, !37}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !167, file: !168, line: 87, baseType: !196, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !167, file: !168, line: 88, baseType: !171, size: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !167, file: !168, line: 92, baseType: !203, size: 64, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !168, line: 66, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!37, !166, !116}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !167, file: !168, line: 93, baseType: !208, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !168, line: 68, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !166, !37, !116}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !167, file: !168, line: 99, baseType: !213, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !168, line: 70, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!81, !166, !37, !175}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !167, file: !168, line: 100, baseType: !175, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 103, baseType: !166, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !167, file: !168, line: 104, baseType: !220, offset: 832)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !224)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !61, line: 20, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !63, line: 41, baseType: !223)
!223 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!224 = !{!225}
!225 = !DISubrange(count: -1)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !158, file: !159, line: 63, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !37}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !158, file: !159, line: 65, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !159, line: 56, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !37, !37}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !91, file: !92, line: 108, baseType: !166, size: 64, offset: 1984)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !92, line: 109, baseType: !90, size: 64, offset: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !91, file: !92, line: 110, baseType: !37, size: 64, offset: 2112)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !46, file: !47, line: 70, baseType: !37, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !46, file: !47, line: 72, baseType: !81, size: 32, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !46, file: !47, line: 82, baseType: !241, size: 64, offset: 896)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !243, line: 569, size: 14912, elements: !244)
!243 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !{!245, !246, !321, !322, !323, !324, !328, !329, !332, !333, !337, !349, !350, !351, !353, !354, !355, !417, !438, !439, !444, !451}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !242, file: !243, line: 571, baseType: !81, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !242, file: !243, line: 576, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !243, line: 287, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !243, line: 181, size: 1408, elements: !250)
!250 = !{!251, !254, !255, !256, !258, !259, !264, !265, !266, !273, !277, !282, !286, !287, !288, !289, !293, !297, !298, !299, !301, !302, !306, !320}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !249, file: !243, line: 182, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !249, file: !243, line: 183, baseType: !81, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !249, file: !243, line: 184, baseType: !81, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !249, file: !243, line: 185, baseType: !257, size: 16, offset: 128)
!257 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !249, file: !243, line: 186, baseType: !257, size: 16, offset: 144)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !249, file: !243, line: 187, baseType: !260, size: 128, offset: 192)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !243, line: 117, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !260, file: !243, line: 118, baseType: !252, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !260, file: !243, line: 119, baseType: !81, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !249, file: !243, line: 188, baseType: !81, size: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !249, file: !243, line: 195, baseType: !37, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !249, file: !243, line: 197, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !241, !37, !272, !81}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !271, line: 145, baseType: !69)
!271 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !249, file: !243, line: 199, baseType: !274, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!270, !241, !37, !6, !81}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !249, file: !243, line: 202, baseType: !278, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !241, !37, !281, !81}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !271, line: 114, baseType: !69)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !249, file: !243, line: 203, baseType: !283, size: 64, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!81, !241, !37}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !249, file: !243, line: 206, baseType: !260, size: 128, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !249, file: !243, line: 207, baseType: !252, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !249, file: !243, line: 208, baseType: !81, size: 32, offset: 896)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !249, file: !243, line: 211, baseType: !290, size: 24, offset: 928)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 24, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !249, file: !243, line: 212, baseType: !294, size: 8, offset: 952)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 8, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 1)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !249, file: !243, line: 215, baseType: !260, size: 128, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !249, file: !243, line: 218, baseType: !81, size: 32, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !249, file: !243, line: 219, baseType: !300, size: 64, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !271, line: 44, baseType: !69)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !249, file: !243, line: 222, baseType: !241, size: 64, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !249, file: !243, line: 226, baseType: !303, size: 32, offset: 1280)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !271, line: 175, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !305, line: 12, baseType: !81)
!305 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !249, file: !243, line: 228, baseType: !307, size: 64, offset: 1312)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !271, line: 171, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 163, size: 64, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !308, file: !271, line: 165, baseType: !81, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !308, file: !271, line: 170, baseType: !312, size: 32, offset: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !271, line: 166, size: 32, elements: !313)
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !312, file: !271, line: 168, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !176, line: 124, baseType: !14)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !312, file: !271, line: 169, baseType: !317, size: 32)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 32, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 4)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !249, file: !243, line: 229, baseType: !81, size: 32, offset: 1376)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !242, file: !243, line: 576, baseType: !247, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !242, file: !243, line: 576, baseType: !247, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !242, file: !243, line: 578, baseType: !81, size: 32, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !242, file: !243, line: 579, baseType: !325, size: 200, offset: 288)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 25)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !242, file: !243, line: 582, baseType: !81, size: 32, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !242, file: !243, line: 583, baseType: !330, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !243, line: 40, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !242, file: !243, line: 585, baseType: !81, size: 32, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !242, file: !243, line: 587, baseType: !334, size: 64, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !241}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !242, file: !243, line: 590, baseType: !338, size: 64, offset: 768)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !243, line: 47, size: 256, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !339, file: !243, line: 49, baseType: !338, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !339, file: !243, line: 50, baseType: !81, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !339, file: !243, line: 50, baseType: !81, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !339, file: !243, line: 50, baseType: !81, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !339, file: !243, line: 50, baseType: !81, size: 32, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !339, file: !243, line: 51, baseType: !347, size: 32, offset: 192)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 32, elements: !295)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !243, line: 25, baseType: !14)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !242, file: !243, line: 591, baseType: !81, size: 32, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !242, file: !243, line: 592, baseType: !338, size: 64, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !242, file: !243, line: 593, baseType: !352, size: 64, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !242, file: !243, line: 596, baseType: !81, size: 32, offset: 1024)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !242, file: !243, line: 597, baseType: !272, size: 64, offset: 1088)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !242, file: !243, line: 632, baseType: !356, size: 2880, offset: 1152)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !243, line: 599, size: 2880, elements: !357)
!357 = !{!358, !408}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !356, file: !243, line: 622, baseType: !359, size: 1728)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !243, line: 601, size: 1728, elements: !360)
!360 = !{!361, !362, !363, !367, !379, !380, !382, !390, !391, !392, !393, !397, !401, !402, !403, !404, !405, !406, !407}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !359, file: !243, line: 603, baseType: !14, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !359, file: !243, line: 604, baseType: !272, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !359, file: !243, line: 605, baseType: !364, size: 208, offset: 128)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 26)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !359, file: !243, line: 606, baseType: !368, size: 288, offset: 352)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !243, line: 55, size: 288, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !368, file: !243, line: 57, baseType: !81, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !368, file: !243, line: 58, baseType: !81, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !368, file: !243, line: 59, baseType: !81, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !368, file: !243, line: 60, baseType: !81, size: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !368, file: !243, line: 61, baseType: !81, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !368, file: !243, line: 62, baseType: !81, size: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !368, file: !243, line: 63, baseType: !81, size: 32, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !368, file: !243, line: 64, baseType: !81, size: 32, offset: 224)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !368, file: !243, line: 65, baseType: !81, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !359, file: !243, line: 607, baseType: !81, size: 32, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !359, file: !243, line: 608, baseType: !381, size: 64, offset: 704)
!381 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !359, file: !243, line: 609, baseType: !383, size: 112, offset: 768)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !243, line: 319, size: 112, elements: !384)
!384 = !{!385, !388, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !383, file: !243, line: 320, baseType: !386, size: 48)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 48, elements: !291)
!387 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !383, file: !243, line: 321, baseType: !386, size: 48, offset: 48)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !383, file: !243, line: 322, baseType: !387, size: 16, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !359, file: !243, line: 610, baseType: !307, size: 64, offset: 896)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !359, file: !243, line: 611, baseType: !307, size: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !359, file: !243, line: 612, baseType: !307, size: 64, offset: 1024)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !359, file: !243, line: 613, baseType: !394, size: 64, offset: 1088)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !359, file: !243, line: 614, baseType: !398, size: 192, offset: 1152)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 24)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !359, file: !243, line: 615, baseType: !81, size: 32, offset: 1344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !359, file: !243, line: 616, baseType: !307, size: 64, offset: 1376)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !359, file: !243, line: 617, baseType: !307, size: 64, offset: 1440)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !359, file: !243, line: 618, baseType: !307, size: 64, offset: 1504)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !359, file: !243, line: 619, baseType: !307, size: 64, offset: 1568)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !359, file: !243, line: 620, baseType: !307, size: 64, offset: 1632)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !359, file: !243, line: 621, baseType: !81, size: 32, offset: 1696)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !356, file: !243, line: 631, baseType: !409, size: 2880)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !243, line: 626, size: 2880, elements: !410)
!410 = !{!411, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !409, file: !243, line: 629, baseType: !412, size: 1920)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 1920, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 30)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !409, file: !243, line: 630, baseType: !416, size: 960, offset: 1920)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !413)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !242, file: !243, line: 636, baseType: !418, size: 64, offset: 4032)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !243, line: 93, size: 6336, elements: !420)
!420 = !{!421, !422, !423, !430}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !419, file: !243, line: 94, baseType: !418, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !419, file: !243, line: 95, baseType: !81, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !419, file: !243, line: 97, baseType: !424, size: 2048, offset: 128)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2048, elements: !428)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null}
!428 = !{!429}
!429 = !DISubrange(count: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !419, file: !243, line: 98, baseType: !431, size: 4160, offset: 2176)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !243, line: 74, size: 4160, elements: !432)
!432 = !{!433, !435, !436, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !431, file: !243, line: 75, baseType: !434, size: 2048)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !428)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !431, file: !243, line: 76, baseType: !434, size: 2048, offset: 2048)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !431, file: !243, line: 78, baseType: !348, size: 32, offset: 4096)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !431, file: !243, line: 81, baseType: !348, size: 32, offset: 4128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !242, file: !243, line: 637, baseType: !419, size: 6336, offset: 4096)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !242, file: !243, line: 641, baseType: !440, size: 64, offset: 10432)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !81}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !242, file: !243, line: 646, baseType: !445, size: 192, offset: 10496)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !243, line: 291, size: 192, elements: !446)
!446 = !{!447, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !445, file: !243, line: 293, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !445, file: !243, line: 294, baseType: !81, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !445, file: !243, line: 295, baseType: !247, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !242, file: !243, line: 648, baseType: !452, size: 4224, offset: 10688)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 4224, elements: !291)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !46, file: !47, line: 85, baseType: !454, size: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !13, line: 114, size: 640, elements: !456)
!456 = !{!457, !461, !462, !469, !482}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !455, file: !13, line: 116, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !459, line: 64, baseType: !460)
!459 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !459, line: 63, baseType: !116)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !455, file: !13, line: 118, baseType: !458, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !455, file: !13, line: 120, baseType: !463, size: 128, offset: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !464, line: 51, size: 128, elements: !465)
!464 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !{!466, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !464, line: 52, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !463, file: !464, line: 53, baseType: !467, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !455, file: !13, line: 122, baseType: !470, size: 256, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !13, line: 98, size: 256, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !470, file: !13, line: 107, baseType: !12, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !470, file: !13, line: 109, baseType: !458, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !470, file: !13, line: 111, baseType: !475, size: 96, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !459, line: 72, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 68, size: 96, elements: !477)
!477 = !{!478, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !476, file: !459, line: 69, baseType: !81, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !476, file: !459, line: 70, baseType: !81, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !476, file: !459, line: 71, baseType: !481, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !459, line: 61, baseType: !81)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !455, file: !13, line: 124, baseType: !463, size: 128, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ptHandle", scope: !40, file: !20, line: 88, baseType: !484, size: 128, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !485, line: 413, baseType: !486)
!485 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !485, line: 411, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 395, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !487, file: !485, line: 398, baseType: !37, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !487, file: !485, line: 399, baseType: !14, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "prevReuse", scope: !40, file: !20, line: 89, baseType: !38, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !40, file: !20, line: 90, baseType: !493, size: 32, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "PThreadState", file: !20, line: 80, baseType: !19)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "exitStatus", scope: !40, file: !20, line: 91, baseType: !37, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "parms", scope: !40, file: !20, line: 92, baseType: !37, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ptErrno", scope: !40, file: !20, line: 93, baseType: !81, size: 32, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "detachState", scope: !40, file: !20, line: 94, baseType: !81, size: 32, offset: 480)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "threadLock", scope: !40, file: !20, line: 95, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !485, line: 417, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !20, line: 146, size: 320, elements: !503)
!503 = !{!504, !512, !513, !514, !515}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !502, file: !20, line: 148, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osSemaphoreHandle", file: !44, line: 12, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !508, line: 51, size: 192, elements: !509)
!508 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !507, file: !508, line: 52, baseType: !69, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !507, file: !508, line: 53, baseType: !73, size: 128, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock_idx", scope: !502, file: !20, line: 149, baseType: !81, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_count", scope: !502, file: !20, line: 156, baseType: !81, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !502, file: !20, line: 159, baseType: !81, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ownerThread", scope: !502, file: !20, line: 160, baseType: !484, size: 128, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !40, file: !20, line: 96, baseType: !81, size: 32, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cancelLock", scope: !40, file: !20, line: 97, baseType: !500, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cancelState", scope: !40, file: !20, line: 98, baseType: !81, size: 32, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cancelType", scope: !40, file: !20, line: 99, baseType: !81, size: 32, offset: 736)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cancelEvent", scope: !40, file: !20, line: 100, baseType: !81, size: 32, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start_mark", scope: !40, file: !20, line: 102, baseType: !522, size: 512, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !523, line: 372, baseType: !524)
!523 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 512, elements: !395)
!525 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "implicit", scope: !40, file: !20, line: 104, baseType: !81, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !40, file: !20, line: 106, baseType: !37, size: 64, offset: 1408)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nextAssoc", scope: !40, file: !20, line: 107, baseType: !37, size: 64, offset: 1472)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThreadKeyAssoc", file: !20, line: 224, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ThreadKeyAssoc", file: !20, line: 292, size: 384, elements: !532)
!532 = !{!533, !534, !543, !544, !545, !546}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !531, file: !20, line: 392, baseType: !38, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !531, file: !20, line: 393, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !485, line: 416, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_key_t_", file: !20, line: 214, size: 256, elements: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !537, file: !20, line: 216, baseType: !14, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !537, file: !20, line: 217, baseType: !227, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "keyLock", scope: !537, file: !20, line: 218, baseType: !500, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !537, file: !20, line: 219, baseType: !37, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nextKey", scope: !531, file: !20, line: 394, baseType: !529, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nextThread", scope: !531, file: !20, line: 395, baseType: !529, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "prevKey", scope: !531, file: !20, line: 396, baseType: !529, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "prevThread", scope: !531, file: !20, line: 397, baseType: !529, size: 64, offset: 320)
!547 = !{!0, !548}
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !550, isLocal: true, isDefinition: true)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 240, elements: !413)
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!553 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !555, line: 46, baseType: !556)
!555 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !557, line: 51, baseType: !558)
!557 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 192, elements: !295)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !561)
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !560, file: !10, line: 196, baseType: !14, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !560, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !560, file: !10, line: 196, baseType: !37, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !560, file: !10, line: 196, baseType: !37, size: 64, offset: 128)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 20)
!569 = !{i32 2, !"Dwarf Version", i32 4}
!570 = !{i32 2, !"Debug Info Version", i32 3}
!571 = !{i32 1, !"wchar_size", i32 4}
!572 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!573 = distinct !DISubprogram(name: "pte_callUserDestroyRoutines", scope: !10, file: !10, line: 58, type: !574, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !484}
!576 = !{!577, !578, !579, !582, !583, !584, !589, !590}
!577 = !DILocalVariable(name: "thread", arg: 1, scope: !573, file: !10, line: 58, type: !484)
!578 = !DILocalVariable(name: "assoc", scope: !573, file: !10, line: 76, type: !529)
!579 = !DILocalVariable(name: "assocsRemaining", scope: !580, file: !10, line: 80, type: !81)
!580 = distinct !DILexicalBlock(scope: !581, file: !10, line: 79, column: 5)
!581 = distinct !DILexicalBlock(scope: !573, file: !10, line: 78, column: 7)
!582 = !DILocalVariable(name: "iterations", scope: !580, file: !10, line: 81, type: !81)
!583 = !DILocalVariable(name: "sp", scope: !580, file: !10, line: 82, type: !38)
!584 = !DILocalVariable(name: "value", scope: !585, file: !10, line: 109, type: !37)
!585 = distinct !DILexicalBlock(scope: !586, file: !10, line: 108, column: 13)
!586 = distinct !DILexicalBlock(scope: !587, file: !10, line: 107, column: 11)
!587 = distinct !DILexicalBlock(scope: !588, file: !10, line: 107, column: 11)
!588 = distinct !DILexicalBlock(scope: !580, file: !10, line: 91, column: 9)
!589 = !DILocalVariable(name: "k", scope: !585, file: !10, line: 110, type: !535)
!590 = !DILocalVariable(name: "destructor", scope: !585, file: !10, line: 111, type: !227)
!591 = !DILocation(line: 58, column: 40, scope: !573)
!592 = !DILocation(line: 78, column: 16, scope: !581)
!593 = !DILocation(line: 78, column: 7, scope: !573)
!594 = !DILocation(line: 93, column: 21, scope: !588)
!595 = !DILocation(line: 0, scope: !588)
!596 = !DILocation(line: 81, column: 11, scope: !580)
!597 = !DILocation(line: 80, column: 11, scope: !580)
!598 = !DILocation(line: 95, column: 18, scope: !588)
!599 = !DILocation(line: 104, column: 31, scope: !588)
!600 = !{!601, !602, i64 176}
!601 = !{!"pte_thread_t_", !602, i64 0, !605, i64 8, !602, i64 24, !603, i64 32, !602, i64 40, !602, i64 48, !606, i64 56, !606, i64 60, !602, i64 64, !606, i64 72, !602, i64 80, !606, i64 88, !606, i64 92, !606, i64 96, !603, i64 104, !606, i64 168, !602, i64 176, !602, i64 184}
!602 = !{!"any pointer", !603, i64 0}
!603 = !{!"omnipotent char", !604, i64 0}
!604 = !{!"Simple C/C++ TBAA"}
!605 = !{!"", !602, i64 0, !606, i64 8}
!606 = !{!"int", !603, i64 0}
!607 = !DILocation(line: 104, column: 25, scope: !588)
!608 = !{!601, !602, i64 184}
!609 = !DILocation(line: 105, column: 18, scope: !588)
!610 = !DILocation(line: 118, column: 22, scope: !585)
!611 = !DILocation(line: 120, column: 50, scope: !612)
!612 = distinct !DILexicalBlock(scope: !585, file: !10, line: 120, column: 19)
!613 = !DILocation(line: 76, column: 20, scope: !573)
!614 = !DILocation(line: 120, column: 61, scope: !612)
!615 = !DILocation(line: 120, column: 19, scope: !585)
!616 = !DILocation(line: 123, column: 19, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !10, line: 121, column: 17)
!618 = !DILocation(line: 226, column: 9, scope: !588)
!619 = !DILocation(line: 138, column: 54, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !10, line: 138, column: 23)
!621 = distinct !DILexicalBlock(scope: !612, file: !10, line: 127, column: 17)
!622 = !{!623, !602, i64 8}
!623 = !{!"ThreadKeyAssoc", !602, i64 0, !602, i64 8, !602, i64 16, !602, i64 24, !602, i64 32, !602, i64 40}
!624 = !DILocation(line: 138, column: 59, scope: !620)
!625 = !DILocation(line: 138, column: 23, scope: !620)
!626 = !DILocation(line: 138, column: 69, scope: !620)
!627 = !DILocation(line: 138, column: 23, scope: !621)
!628 = !DILocation(line: 140, column: 23, scope: !629)
!629 = distinct !DILexicalBlock(scope: !620, file: !10, line: 139, column: 21)
!630 = !DILocation(line: 120, column: 2, scope: !631, inlinedAt: !637)
!631 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !632, file: !632, line: 116, type: !633, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !635)
!632 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!633 = !DISubroutineType(types: !634)
!634 = !{!116}
!635 = !{!636}
!636 = !DILocalVariable(name: "sp", scope: !631, file: !632, line: 118, type: !116)
!637 = distinct !DILocation(line: 154, column: 21, scope: !638, inlinedAt: !644)
!638 = distinct !DISubprogram(name: "uk_thread_current", scope: !47, file: !47, line: 151, type: !639, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{!45}
!641 = !{!642, !643}
!642 = !DILocalVariable(name: "current", scope: !638, file: !47, line: 153, type: !58)
!643 = !DILocalVariable(name: "sp", scope: !638, file: !47, line: 154, type: !116)
!644 = distinct !DILocation(line: 117, column: 30, scope: !645, inlinedAt: !649)
!645 = distinct !DISubprogram(name: "uk_sched_yield", scope: !92, file: !92, line: 114, type: !426, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !646)
!646 = !{!647, !648}
!647 = !DILocalVariable(name: "s", scope: !645, file: !92, line: 116, type: !90)
!648 = !DILocalVariable(name: "current", scope: !645, file: !92, line: 117, type: !45)
!649 = distinct !DILocation(line: 244, column: 2, scope: !650, inlinedAt: !653)
!650 = distinct !DISubprogram(name: "pte_osYield", scope: !651, file: !651, line: 242, type: !426, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !652)
!651 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!652 = !{}
!653 = distinct !DILocation(line: 141, column: 23, scope: !629)
!654 = !{i32 547750}
!655 = !DILocation(line: 118, column: 16, scope: !631, inlinedAt: !637)
!656 = !DILocation(line: 154, column: 16, scope: !638, inlinedAt: !644)
!657 = !DILocation(line: 156, column: 38, scope: !638, inlinedAt: !644)
!658 = !DILocation(line: 156, column: 12, scope: !638, inlinedAt: !644)
!659 = !DILocation(line: 153, column: 21, scope: !638, inlinedAt: !644)
!660 = !DILocation(line: 158, column: 9, scope: !638, inlinedAt: !644)
!661 = !{!602, !602, i64 0}
!662 = !DILocation(line: 117, column: 20, scope: !645, inlinedAt: !649)
!663 = !DILocation(line: 119, column: 2, scope: !664, inlinedAt: !649)
!664 = distinct !DILexicalBlock(scope: !665, file: !92, line: 119, column: 2)
!665 = distinct !DILexicalBlock(scope: !645, file: !92, line: 119, column: 2)
!666 = !DILocation(line: 119, column: 2, scope: !665, inlinedAt: !649)
!667 = !{!"branch_weights", i32 1, i32 2000}
!668 = !DILocation(line: 119, column: 2, scope: !669, inlinedAt: !649)
!669 = distinct !DILexicalBlock(scope: !664, file: !92, line: 119, column: 2)
!670 = !DILocation(line: 121, column: 15, scope: !645, inlinedAt: !649)
!671 = !{!672, !602, i64 88}
!672 = !{!"uk_thread", !602, i64 0, !602, i64 8, !602, i64 16, !602, i64 24, !673, i64 32, !606, i64 48, !674, i64 56, !675, i64 64, !676, i64 72, !602, i64 88, !602, i64 96, !606, i64 104, !602, i64 112, !602, i64 120}
!673 = !{!"", !602, i64 0, !602, i64 8}
!674 = !{!"long", !603, i64 0}
!675 = !{!"_Bool", !603, i64 0}
!676 = !{!"uk_waitq", !602, i64 0, !602, i64 8}
!677 = !DILocation(line: 116, column: 19, scope: !645, inlinedAt: !649)
!678 = !DILocation(line: 122, column: 2, scope: !679, inlinedAt: !649)
!679 = distinct !DILexicalBlock(scope: !680, file: !92, line: 122, column: 2)
!680 = distinct !DILexicalBlock(scope: !645, file: !92, line: 122, column: 2)
!681 = !DILocation(line: 122, column: 2, scope: !680, inlinedAt: !649)
!682 = !DILocation(line: 122, column: 2, scope: !683, inlinedAt: !649)
!683 = distinct !DILexicalBlock(scope: !679, file: !92, line: 122, column: 2)
!684 = !DILocation(line: 123, column: 5, scope: !645, inlinedAt: !649)
!685 = !{!686, !602, i64 0}
!686 = !{!"uk_sched", !602, i64 0, !602, i64 8, !602, i64 16, !602, i64 24, !602, i64 32, !602, i64 40, !602, i64 48, !602, i64 56, !602, i64 64, !675, i64 72, !672, i64 80, !687, i64 208, !688, i64 224, !602, i64 248, !602, i64 256, !602, i64 264}
!687 = !{!"uk_thread_list", !602, i64 0, !602, i64 8}
!688 = !{!"ukplat_ctx_callbacks", !602, i64 0, !602, i64 8, !602, i64 16}
!689 = !DILocation(line: 123, column: 2, scope: !645, inlinedAt: !649)
!690 = !DILocation(line: 147, column: 23, scope: !629)
!691 = distinct !{!691, !692, !693}
!692 = !DILocation(line: 107, column: 11, scope: !587)
!693 = !DILocation(line: 225, column: 13, scope: !587)
!694 = !DILocation(line: 153, column: 38, scope: !585)
!695 = !{!623, !602, i64 16}
!696 = !DILocation(line: 153, column: 29, scope: !585)
!697 = !DILocation(line: 162, column: 26, scope: !585)
!698 = !DILocation(line: 110, column: 29, scope: !585)
!699 = !DILocation(line: 163, column: 31, scope: !585)
!700 = !{!701, !602, i64 8}
!701 = !{!"pthread_key_t_", !606, i64 0, !602, i64 8, !602, i64 16, !602, i64 24}
!702 = !DILocation(line: 111, column: 22, scope: !585)
!703 = !DILocation(line: 164, column: 44, scope: !585)
!704 = !{!701, !606, i64 0}
!705 = !DILocation(line: 164, column: 23, scope: !585)
!706 = !DILocation(line: 109, column: 22, scope: !585)
!707 = !DILocation(line: 165, column: 37, scope: !585)
!708 = !DILocation(line: 165, column: 15, scope: !585)
!709 = !DILocation(line: 168, column: 25, scope: !710)
!710 = distinct !DILexicalBlock(scope: !585, file: !10, line: 168, column: 19)
!711 = !DILocation(line: 168, column: 33, scope: !710)
!712 = !DILocation(line: 177, column: 26, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !10, line: 169, column: 17)
!714 = !DILocation(line: 178, column: 52, scope: !713)
!715 = !DILocation(line: 178, column: 26, scope: !713)
!716 = !DILocation(line: 180, column: 34, scope: !713)
!717 = !DILocation(line: 210, column: 19, scope: !713)
!718 = !DILocation(line: 214, column: 17, scope: !713)
!719 = !DILocation(line: 221, column: 19, scope: !720)
!720 = distinct !DILexicalBlock(scope: !710, file: !10, line: 216, column: 17)
!721 = !DILocation(line: 222, column: 26, scope: !720)
!722 = !DILocation(line: 223, column: 52, scope: !720)
!723 = !DILocation(line: 223, column: 26, scope: !720)
!724 = !DILocation(line: 0, scope: !713)
!725 = distinct !{!725, !726, !727}
!726 = !DILocation(line: 90, column: 7, scope: !580)
!727 = !DILocation(line: 227, column: 29, scope: !580)
!728 = !DILocation(line: 229, column: 1, scope: !573)
!729 = !DILocation(line: 196, column: 2, scope: !2)
!730 = !DILocation(line: 196, column: 10, scope: !2)
!731 = !DILocation(line: 197, column: 2, scope: !2)
!732 = !DILocation(line: 198, column: 2, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 198, column: 2)
!734 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!735 = !DILocation(line: 199, column: 2, scope: !2)
!736 = !DILocation(line: 200, column: 1, scope: !2)
