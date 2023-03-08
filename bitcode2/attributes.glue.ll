; ModuleID = '/root/.unikraft/libs/pthread-embedded/attributes.c'
source_filename = "/root/.unikraft/libs/pthread-embedded/attributes.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }
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

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_setguardsize(%struct.pthread_attr_t_** nocapture readnone, i64) local_unnamed_addr #0 !dbg !536 {
  %3 = icmp eq i64 %1, 0, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %4 = select i1 %3, i32 0, i32 22, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  ret i32 %4, !dbg !568
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getguardsize(%struct.pthread_attr_t_** nocapture readnone, i64*) local_unnamed_addr #0 !dbg !569 {
  %3 = icmp eq i64* %1, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %3, label %5, label %4, !dbg !582

; <label>:4:                                      ; preds = %2
  store i64 0, i64* %1, align 8, !dbg !583, !tbaa !584
  br label %5, !dbg !588

; <label>:5:                                      ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ 22, %2 ], !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  ret i32 %6, !dbg !590
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_setstack(%struct.pthread_attr_t_**, i8*, i64) local_unnamed_addr #0 !dbg !591 {
  %4 = tail call i32 @pthread_attr_setstacksize(%struct.pthread_attr_t_** %0, i64 %2) #4, !dbg !602
  %5 = icmp eq i32 %4, 0, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %5, label %6, label %8, !dbg !606

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @pthread_attr_setstackaddr(%struct.pthread_attr_t_** %0, i8* %1) #4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br label %8, !dbg !608

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %4, %3 ], [ %7, %6 ], !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  ret i32 %9, !dbg !610
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_setstacksize(%struct.pthread_attr_t_**, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_setstackaddr(%struct.pthread_attr_t_**, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getstack(%struct.pthread_attr_t_**, i8**, i64*) local_unnamed_addr #0 !dbg !611 {
  %4 = tail call i32 @pthread_attr_getstacksize(%struct.pthread_attr_t_** %0, i64* %2) #4, !dbg !622
  %5 = icmp eq i32 %4, 0, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br i1 %5, label %6, label %8, !dbg !626

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @pthread_attr_getstackaddr(%struct.pthread_attr_t_** %0, i8** %1) #4, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br label %8, !dbg !628

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %4, %3 ], [ %7, %6 ], !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  ret i32 %9, !dbg !630
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_getstacksize(%struct.pthread_attr_t_**, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_getstackaddr(%struct.pthread_attr_t_**, i8**) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_getattr_np(i8* readonly, i32, %struct.pthread_attr_t_** readonly) local_unnamed_addr #0 !dbg !631 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5, !dbg !644
  %6 = icmp eq i8* %0, null, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %6, label %32, label %7, !dbg !647

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %0 to %struct.uk_thread**, !dbg !649
  %9 = load %struct.uk_thread*, %struct.uk_thread** %8, align 8, !dbg !649, !tbaa !650
  %10 = icmp eq %struct.uk_thread* %9, null, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %10, label %32, label %11, !dbg !656

; <label>:11:                                     ; preds = %7
  %12 = icmp eq %struct.pthread_attr_t_** %2, null, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %12, label %32, label %13, !dbg !659

; <label>:13:                                     ; preds = %11
  %14 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %2, align 8, !dbg !660, !tbaa !661
  %15 = icmp eq %struct.pthread_attr_t_* %14, null, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br i1 %15, label %32, label %16, !dbg !663

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %9, i64 0, i32 1, !dbg !666
  %18 = bitcast i8** %17 to i64*, !dbg !666
  %19 = load i64, i64* %18, align 8, !dbg !666, !tbaa !667
  %20 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %14, i64 0, i32 1, !dbg !672
  %21 = bitcast i8** %20 to i64*, !dbg !673
  store i64 %19, i64* %21, align 8, !dbg !673, !tbaa !674
  %22 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %14, i64 0, i32 2, !dbg !677
  store i64 65536, i64* %22, align 8, !dbg !678, !tbaa !679
  %23 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %9, i64 0, i32 7, !dbg !680
  %24 = load i8, i8* %23, align 8, !dbg !680, !tbaa !681, !range !682
  %25 = zext i8 %24 to i32, !dbg !683
  %26 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %14, i64 0, i32 3, !dbg !684
  store i32 %25, i32* %26, align 8, !dbg !685, !tbaa !686
  %27 = call i32 @uk_thread_get_prio(%struct.uk_thread* nonnull %9, i32* nonnull %4) #4, !dbg !688
  %28 = icmp eq i32 %27, 0, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br i1 %28, label %29, label %32, !dbg !692

; <label>:29:                                     ; preds = %16
  %30 = load i32, i32* %4, align 4, !dbg !693, !tbaa !694
  %31 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %14, i64 0, i32 4, i32 0, !dbg !695
  store i32 %30, i32* %31, align 4, !dbg !696, !tbaa !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br label %32, !dbg !698

; <label>:32:                                     ; preds = %16, %29, %11, %13, %3, %7
  %33 = phi i32 [ 2, %7 ], [ 2, %3 ], [ 22, %13 ], [ 22, %11 ], [ 0, %29 ], [ 0, %16 ], !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  ret i32 %33, !dbg !701
}

; Function Attrs: noredzone
declare dso_local i32 @uk_thread_get_prio(%struct.uk_thread*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_setname_np(i8* readonly, i32, i8*) local_unnamed_addr #0 !dbg !702 {
  %4 = icmp eq i8* %0, null, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br i1 %4, label %14, label %5, !dbg !715

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to %struct.uk_thread**, !dbg !717
  %7 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !717, !tbaa !650
  %8 = icmp eq %struct.uk_thread* %7, null, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br i1 %8, label %14, label %9, !dbg !719

; <label>:9:                                      ; preds = %5
  %10 = tail call i64 @strnlen(i8* %2, i64 16) #4, !dbg !721
  %11 = icmp ugt i64 %10, 15, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %11, label %14, label %12, !dbg !725

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %7, i64 0, i32 0, !dbg !726
  store i8* %2, i8** %13, align 8, !dbg !727, !tbaa !728
  br label %14, !dbg !729

; <label>:14:                                     ; preds = %9, %3, %5, %12
  %15 = phi i32 [ 0, %12 ], [ 2, %5 ], [ 2, %3 ], [ 34, %9 ], !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  ret i32 %15, !dbg !732
}

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_getname_np(i8* readonly, i32, i8*, i64) local_unnamed_addr #0 !dbg !733 {
  %5 = icmp eq i8* %0, null, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %5, label %19, label %6, !dbg !748

; <label>:6:                                      ; preds = %4
  %7 = bitcast i8* %0 to %struct.uk_thread**, !dbg !750
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 8, !dbg !750, !tbaa !650
  %9 = icmp eq %struct.uk_thread* %8, null, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %9, label %19, label %10, !dbg !752

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %8, i64 0, i32 0, !dbg !754
  %12 = load i8*, i8** %11, align 8, !dbg !754, !tbaa !728
  %13 = tail call i64 @strlen(i8* %12) #4, !dbg !755
  %14 = add i64 %13, 1, !dbg !757
  %15 = icmp ugt i64 %14, %3, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br i1 %15, label %19, label %16, !dbg !760

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %11, align 8, !dbg !761, !tbaa !728
  %18 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17) #4, !dbg !762
  br label %19, !dbg !763

; <label>:19:                                     ; preds = %10, %4, %6, %16
  %20 = phi i32 [ 0, %16 ], [ 2, %6 ], [ 2, %4 ], [ 34, %10 ], !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  ret i32 %20, !dbg !766
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!532, !533, !534}
!llvm.ident = !{!535}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !38)
!1 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/attributes.c", directory: "/root/.unikraft/apps/redis/build")
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
!536 = distinct !DISubprogram(name: "pthread_attr_setguardsize", scope: !1, file: !1, line: 35, type: !537, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !558)
!537 = !DISubroutineType(types: !538)
!538 = !{!22, !539, !547}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !21, line: 414, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !11, line: 116, size: 320, elements: !543)
!543 = !{!544, !545, !546, !550, !551, !556, !557}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !542, file: !11, line: 118, baseType: !120, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !542, file: !11, line: 119, baseType: !55, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !542, file: !11, line: 120, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !548, line: 40, baseType: !549)
!548 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !275, line: 129, baseType: !120)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !542, file: !11, line: 121, baseType: !22, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !542, file: !11, line: 122, baseType: !552, size: 32, offset: 224)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !553, line: 97, size: 32, elements: !554)
!553 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !552, file: !553, line: 99, baseType: !22, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !542, file: !11, line: 123, baseType: !22, size: 32, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !542, file: !11, line: 124, baseType: !22, size: 32, offset: 288)
!558 = !{!559, !560}
!559 = !DILocalVariable(name: "attr", arg: 1, scope: !536, file: !1, line: 35, type: !539)
!560 = !DILocalVariable(name: "guardsize", arg: 2, scope: !536, file: !1, line: 35, type: !547)
!561 = !DILocation(line: 35, column: 47, scope: !536)
!562 = !DILocation(line: 35, column: 60, scope: !536)
!563 = !DILocation(line: 37, column: 16, scope: !564)
!564 = distinct !DILexicalBlock(scope: !536, file: !1, line: 37, column: 6)
!565 = !DILocation(line: 37, column: 6, scope: !536)
!566 = !DILocation(line: 0, scope: !564)
!567 = !DILocation(line: 40, column: 2, scope: !536)
!568 = !DILocation(line: 41, column: 1, scope: !536)
!569 = distinct !DISubprogram(name: "pthread_attr_getguardsize", scope: !1, file: !1, line: 43, type: !570, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !575)
!570 = !DISubroutineType(types: !571)
!571 = !{!22, !572, !574}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!575 = !{!576, !577}
!576 = !DILocalVariable(name: "attr", arg: 1, scope: !569, file: !1, line: 43, type: !572)
!577 = !DILocalVariable(name: "guardsize", arg: 2, scope: !569, file: !1, line: 43, type: !574)
!578 = !DILocation(line: 43, column: 53, scope: !569)
!579 = !DILocation(line: 43, column: 67, scope: !569)
!580 = !DILocation(line: 45, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !569, file: !1, line: 45, column: 6)
!582 = !DILocation(line: 45, column: 6, scope: !569)
!583 = !DILocation(line: 48, column: 13, scope: !569)
!584 = !{!585, !585, i64 0}
!585 = !{!"long", !586, i64 0}
!586 = !{!"omnipotent char", !587, i64 0}
!587 = !{!"Simple C/C++ TBAA"}
!588 = !DILocation(line: 50, column: 2, scope: !569)
!589 = !DILocation(line: 0, scope: !581)
!590 = !DILocation(line: 51, column: 1, scope: !569)
!591 = distinct !DISubprogram(name: "pthread_attr_setstack", scope: !1, file: !1, line: 53, type: !592, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!22, !539, !55, !547}
!594 = !{!595, !596, !597, !598}
!595 = !DILocalVariable(name: "attr", arg: 1, scope: !591, file: !1, line: 53, type: !539)
!596 = !DILocalVariable(name: "stackaddr", arg: 2, scope: !591, file: !1, line: 54, type: !55)
!597 = !DILocalVariable(name: "stacksize", arg: 3, scope: !591, file: !1, line: 54, type: !547)
!598 = !DILocalVariable(name: "rc", scope: !591, file: !1, line: 56, type: !22)
!599 = !DILocation(line: 53, column: 43, scope: !591)
!600 = !DILocation(line: 54, column: 9, scope: !591)
!601 = !DILocation(line: 54, column: 27, scope: !591)
!602 = !DILocation(line: 58, column: 7, scope: !591)
!603 = !DILocation(line: 56, column: 6, scope: !591)
!604 = !DILocation(line: 59, column: 6, scope: !605)
!605 = distinct !DILexicalBlock(scope: !591, file: !1, line: 59, column: 6)
!606 = !DILocation(line: 59, column: 6, scope: !591)
!607 = !DILocation(line: 62, column: 7, scope: !591)
!608 = !DILocation(line: 62, column: 2, scope: !591)
!609 = !DILocation(line: 0, scope: !591)
!610 = !DILocation(line: 65, column: 2, scope: !591)
!611 = distinct !DISubprogram(name: "pthread_attr_getstack", scope: !1, file: !1, line: 68, type: !612, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!22, !572, !196, !574}
!614 = !{!615, !616, !617, !618}
!615 = !DILocalVariable(name: "attr", arg: 1, scope: !611, file: !1, line: 68, type: !572)
!616 = !DILocalVariable(name: "stackaddr", arg: 2, scope: !611, file: !1, line: 69, type: !196)
!617 = !DILocalVariable(name: "stacksize", arg: 3, scope: !611, file: !1, line: 69, type: !574)
!618 = !DILocalVariable(name: "rc", scope: !611, file: !1, line: 71, type: !22)
!619 = !DILocation(line: 68, column: 49, scope: !611)
!620 = !DILocation(line: 69, column: 10, scope: !611)
!621 = !DILocation(line: 69, column: 29, scope: !611)
!622 = !DILocation(line: 73, column: 7, scope: !611)
!623 = !DILocation(line: 71, column: 6, scope: !611)
!624 = !DILocation(line: 74, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !611, file: !1, line: 74, column: 6)
!626 = !DILocation(line: 74, column: 6, scope: !611)
!627 = !DILocation(line: 77, column: 7, scope: !611)
!628 = !DILocation(line: 77, column: 2, scope: !611)
!629 = !DILocation(line: 0, scope: !611)
!630 = !DILocation(line: 80, column: 2, scope: !611)
!631 = distinct !DISubprogram(name: "pthread_getattr_np", scope: !1, file: !1, line: 83, type: !632, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!22, !488, !539}
!634 = !{!635, !636, !637, !638, !639, !640, !641}
!635 = !DILocalVariable(name: "thread", arg: 1, scope: !631, file: !1, line: 83, type: !488)
!636 = !DILocalVariable(name: "attr", arg: 2, scope: !631, file: !1, line: 83, type: !539)
!637 = !DILocalVariable(name: "tp", scope: !631, file: !1, line: 85, type: !39)
!638 = !DILocalVariable(name: "_uk_thread", scope: !631, file: !1, line: 86, type: !46)
!639 = !DILocalVariable(name: "_attr", scope: !631, file: !1, line: 87, type: !540)
!640 = !DILocalVariable(name: "prio", scope: !631, file: !1, line: 88, type: !116)
!641 = !DILocalVariable(name: "rc", scope: !631, file: !1, line: 89, type: !22)
!642 = !DILocation(line: 83, column: 34, scope: !631)
!643 = !DILocation(line: 83, column: 58, scope: !631)
!644 = !DILocation(line: 88, column: 2, scope: !631)
!645 = !DILocation(line: 91, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !631, file: !1, line: 91, column: 6)
!647 = !DILocation(line: 91, column: 17, scope: !646)
!648 = !DILocation(line: 85, column: 16, scope: !631)
!649 = !DILocation(line: 91, column: 24, scope: !646)
!650 = !{!651, !652, i64 0}
!651 = !{!"pte_thread_t_", !652, i64 0, !653, i64 8, !652, i64 24, !586, i64 32, !652, i64 40, !652, i64 48, !654, i64 56, !654, i64 60, !652, i64 64, !654, i64 72, !652, i64 80, !654, i64 88, !654, i64 92, !654, i64 96, !586, i64 104, !654, i64 168, !652, i64 176, !652, i64 184}
!652 = !{!"any pointer", !586, i64 0}
!653 = !{!"", !652, i64 0, !654, i64 8}
!654 = !{!"int", !586, i64 0}
!655 = !DILocation(line: 91, column: 33, scope: !646)
!656 = !DILocation(line: 91, column: 6, scope: !631)
!657 = !DILocation(line: 94, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !631, file: !1, line: 94, column: 6)
!659 = !DILocation(line: 94, column: 19, scope: !658)
!660 = !DILocation(line: 94, column: 22, scope: !658)
!661 = !{!652, !652, i64 0}
!662 = !DILocation(line: 94, column: 28, scope: !658)
!663 = !DILocation(line: 94, column: 6, scope: !631)
!664 = !DILocation(line: 86, column: 20, scope: !631)
!665 = !DILocation(line: 87, column: 17, scope: !631)
!666 = !DILocation(line: 99, column: 33, scope: !631)
!667 = !{!668, !652, i64 8}
!668 = !{!"uk_thread", !652, i64 0, !652, i64 8, !652, i64 16, !652, i64 24, !669, i64 32, !654, i64 48, !585, i64 56, !670, i64 64, !671, i64 72, !652, i64 88, !652, i64 96, !654, i64 104, !652, i64 112, !652, i64 120}
!669 = !{!"", !652, i64 0, !652, i64 8}
!670 = !{!"_Bool", !586, i64 0}
!671 = !{!"uk_waitq", !652, i64 0, !652, i64 8}
!672 = !DILocation(line: 99, column: 9, scope: !631)
!673 = !DILocation(line: 99, column: 19, scope: !631)
!674 = !{!675, !652, i64 8}
!675 = !{!"pthread_attr_t_", !585, i64 0, !652, i64 8, !585, i64 16, !654, i64 24, !676, i64 28, !654, i64 32, !654, i64 36}
!676 = !{!"sched_param", !654, i64 0}
!677 = !DILocation(line: 100, column: 9, scope: !631)
!678 = !DILocation(line: 100, column: 19, scope: !631)
!679 = !{!675, !585, i64 16}
!680 = !DILocation(line: 102, column: 36, scope: !631)
!681 = !{!668, !670, i64 64}
!682 = !{i8 0, i8 2}
!683 = !DILocation(line: 102, column: 24, scope: !631)
!684 = !DILocation(line: 102, column: 9, scope: !631)
!685 = !DILocation(line: 102, column: 21, scope: !631)
!686 = !{!675, !654, i64 24}
!687 = !DILocation(line: 88, column: 9, scope: !631)
!688 = !DILocation(line: 105, column: 2, scope: !631)
!689 = !DILocation(line: 89, column: 6, scope: !631)
!690 = !DILocation(line: 106, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !631, file: !1, line: 106, column: 6)
!692 = !DILocation(line: 106, column: 6, scope: !631)
!693 = !DILocation(line: 107, column: 33, scope: !691)
!694 = !{!654, !654, i64 0}
!695 = !DILocation(line: 107, column: 16, scope: !691)
!696 = !DILocation(line: 107, column: 31, scope: !691)
!697 = !{!675, !654, i64 28}
!698 = !DILocation(line: 107, column: 3, scope: !691)
!699 = !DILocation(line: 0, scope: !631)
!700 = !DILocation(line: 0, scope: !646)
!701 = !DILocation(line: 112, column: 1, scope: !631)
!702 = distinct !DISubprogram(name: "pthread_setname_np", scope: !1, file: !1, line: 114, type: !703, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!22, !488, !51}
!705 = !{!706, !707, !708, !709, !710}
!706 = !DILocalVariable(name: "thread", arg: 1, scope: !702, file: !1, line: 114, type: !488)
!707 = !DILocalVariable(name: "name", arg: 2, scope: !702, file: !1, line: 114, type: !51)
!708 = !DILocalVariable(name: "tp", scope: !702, file: !1, line: 116, type: !39)
!709 = !DILocalVariable(name: "_uk_thread", scope: !702, file: !1, line: 117, type: !46)
!710 = !DILocalVariable(name: "len", scope: !702, file: !1, line: 118, type: !547)
!711 = !DILocation(line: 114, column: 34, scope: !702)
!712 = !DILocation(line: 114, column: 54, scope: !702)
!713 = !DILocation(line: 120, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !702, file: !1, line: 120, column: 6)
!715 = !DILocation(line: 120, column: 17, scope: !714)
!716 = !DILocation(line: 116, column: 16, scope: !702)
!717 = !DILocation(line: 120, column: 24, scope: !714)
!718 = !DILocation(line: 120, column: 33, scope: !714)
!719 = !DILocation(line: 120, column: 6, scope: !702)
!720 = !DILocation(line: 117, column: 20, scope: !702)
!721 = !DILocation(line: 125, column: 8, scope: !702)
!722 = !DILocation(line: 118, column: 9, scope: !702)
!723 = !DILocation(line: 126, column: 10, scope: !724)
!724 = distinct !DILexicalBlock(scope: !702, file: !1, line: 126, column: 6)
!725 = !DILocation(line: 126, column: 6, scope: !702)
!726 = !DILocation(line: 129, column: 14, scope: !702)
!727 = !DILocation(line: 129, column: 19, scope: !702)
!728 = !{!668, !652, i64 0}
!729 = !DILocation(line: 131, column: 2, scope: !702)
!730 = !DILocation(line: 0, scope: !702)
!731 = !DILocation(line: 0, scope: !714)
!732 = !DILocation(line: 132, column: 1, scope: !702)
!733 = distinct !DISubprogram(name: "pthread_getname_np", scope: !1, file: !1, line: 134, type: !734, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!22, !488, !276, !547}
!736 = !{!737, !738, !739, !740, !741, !742}
!737 = !DILocalVariable(name: "thread", arg: 1, scope: !733, file: !1, line: 134, type: !488)
!738 = !DILocalVariable(name: "name", arg: 2, scope: !733, file: !1, line: 134, type: !276)
!739 = !DILocalVariable(name: "len", arg: 3, scope: !733, file: !1, line: 134, type: !547)
!740 = !DILocalVariable(name: "tp", scope: !733, file: !1, line: 136, type: !39)
!741 = !DILocalVariable(name: "_uk_thread", scope: !733, file: !1, line: 137, type: !46)
!742 = !DILocalVariable(name: "_len", scope: !733, file: !1, line: 138, type: !547)
!743 = !DILocation(line: 134, column: 34, scope: !733)
!744 = !DILocation(line: 134, column: 48, scope: !733)
!745 = !DILocation(line: 134, column: 61, scope: !733)
!746 = !DILocation(line: 140, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !733, file: !1, line: 140, column: 6)
!748 = !DILocation(line: 140, column: 17, scope: !747)
!749 = !DILocation(line: 136, column: 16, scope: !733)
!750 = !DILocation(line: 140, column: 24, scope: !747)
!751 = !DILocation(line: 140, column: 33, scope: !747)
!752 = !DILocation(line: 140, column: 6, scope: !733)
!753 = !DILocation(line: 137, column: 20, scope: !733)
!754 = !DILocation(line: 145, column: 28, scope: !733)
!755 = !DILocation(line: 145, column: 9, scope: !733)
!756 = !DILocation(line: 138, column: 9, scope: !733)
!757 = !DILocation(line: 146, column: 17, scope: !758)
!758 = distinct !DILexicalBlock(scope: !733, file: !1, line: 146, column: 6)
!759 = !DILocation(line: 146, column: 10, scope: !758)
!760 = !DILocation(line: 146, column: 6, scope: !733)
!761 = !DILocation(line: 149, column: 33, scope: !733)
!762 = !DILocation(line: 149, column: 2, scope: !733)
!763 = !DILocation(line: 151, column: 2, scope: !733)
!764 = !DILocation(line: 0, scope: !733)
!765 = !DILocation(line: 0, scope: !747)
!766 = !DILocation(line: 152, column: 1, scope: !733)
