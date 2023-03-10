; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_init.c"
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
%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }

@pte_processInitialized = external dso_local local_unnamed_addr global i32, align 4
@pte_selfThreadKey = external dso_local global %struct.pthread_key_t_*, align 8
@pte_cleanupKey = external dso_local global %struct.pthread_key_t_*, align 8
@pte_thread_reuse_lock = external dso_local global %struct.uk_mutex*, align 8
@pte_mutex_test_init_lock = external dso_local global %struct.uk_mutex*, align 8
@pte_cond_list_lock = external dso_local global %struct.uk_mutex*, align 8
@pte_cond_test_init_lock = external dso_local global %struct.uk_mutex*, align 8
@pte_rwlock_test_init_lock = external dso_local global %struct.uk_mutex*, align 8
@pte_spinlock_test_init_lock = external dso_local global %struct.uk_mutex*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_init() local_unnamed_addr #0 !dbg !13 {
  %1 = load i32, i32* @pte_processInitialized, align 4, !dbg !18, !tbaa !20
  %2 = icmp eq i32 %1, 0, !dbg !18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  br i1 %2, label %3, label %19, !dbg !24

; <label>:3:                                      ; preds = %0
  store i32 1, i32* @pte_processInitialized, align 4, !dbg !25, !tbaa !20
  %4 = tail call i32 @pte_osInit() #2, !dbg !26
  %5 = tail call i32 @pthread_key_create(%struct.pthread_key_t_** nonnull @pte_selfThreadKey, void (i8*)* null) #2, !dbg !27
  %6 = icmp eq i32 %5, 0, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %6, label %7, label %10, !dbg !30

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @pthread_key_create(%struct.pthread_key_t_** nonnull @pte_cleanupKey, void (i8*)* null) #2, !dbg !31
  %9 = icmp eq i32 %8, 0, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %9, label %11, label %10, !dbg !33

; <label>:10:                                     ; preds = %7, %3
  tail call void @pthread_terminate() #2, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br label %11, !dbg !36

; <label>:11:                                     ; preds = %7, %10
  %12 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @pte_thread_reuse_lock) #2, !dbg !37
  %13 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @pte_mutex_test_init_lock) #2, !dbg !38
  %14 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @pte_cond_list_lock) #2, !dbg !39
  %15 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @pte_cond_test_init_lock) #2, !dbg !40
  %16 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @pte_rwlock_test_init_lock) #2, !dbg !41
  %17 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @pte_spinlock_test_init_lock) #2, !dbg !42
  %18 = load i32, i32* @pte_processInitialized, align 4, !dbg !43, !tbaa !20
  br label %19, !dbg !44

; <label>:19:                                     ; preds = %0, %11
  %20 = phi i32 [ %18, %11 ], [ 1, %0 ], !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i32 %20, !dbg !48
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osInit() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_key_create(%struct.pthread_key_t_**, void (i8*)*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @pthread_terminate() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexCreate(%struct.uk_mutex**) local_unnamed_addr #1

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_init.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 182, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "PTE_FALSE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PTE_TRUE", value: 1, isUnsigned: true)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "pthread_init", scope: !1, file: !1, line: 49, type: !14, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{}
!18 = !DILocation(line: 52, column: 7, scope: !19)
!19 = distinct !DILexicalBlock(scope: !13, file: !1, line: 52, column: 7)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 52, column: 7, scope: !13)
!25 = !DILocation(line: 64, column: 26, scope: !13)
!26 = !DILocation(line: 67, column: 3, scope: !13)
!27 = !DILocation(line: 72, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !1, line: 72, column: 7)
!29 = !DILocation(line: 72, column: 54, scope: !28)
!30 = !DILocation(line: 72, column: 60, scope: !28)
!31 = !DILocation(line: 73, column: 8, scope: !28)
!32 = !DILocation(line: 73, column: 51, scope: !28)
!33 = !DILocation(line: 72, column: 7, scope: !13)
!34 = !DILocation(line: 75, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 74, column: 5)
!36 = !DILocation(line: 76, column: 5, scope: !35)
!37 = !DILocation(line: 81, column: 3, scope: !13)
!38 = !DILocation(line: 82, column: 3, scope: !13)
!39 = !DILocation(line: 83, column: 3, scope: !13)
!40 = !DILocation(line: 84, column: 3, scope: !13)
!41 = !DILocation(line: 85, column: 3, scope: !13)
!42 = !DILocation(line: 86, column: 3, scope: !13)
!43 = !DILocation(line: 89, column: 11, scope: !13)
!44 = !DILocation(line: 89, column: 3, scope: !13)
!45 = !DILocation(line: 0, scope: !13)
!46 = !DILocation(line: 0, scope: !47)
!47 = distinct !DILexicalBlock(scope: !19, file: !1, line: 53, column: 5)
!48 = !DILocation(line: 91, column: 1, scope: !13)
