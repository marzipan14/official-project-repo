; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/platform/helper/tls-helper.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/platform/helper/tls-helper.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }
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
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.0 }
%struct.anon.0 = type { %struct.uk_waitq_entry* }

@globalTlsLock = common dso_local global %struct.uk_mutex* null, align 8, !dbg !0
@keysUsed = internal unnamed_addr global i32* null, align 8, !dbg !27
@maxTlsValues = internal unnamed_addr global i32 0, align 4, !dbg !29
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsGlobalInit(i32) local_unnamed_addr #0 !dbg !482 {
  %2 = tail call i32 @pte_osMutexCreate(%struct.uk_mutex** nonnull @globalTlsLock) #3, !dbg !491
  %3 = sext i32 %0 to i64, !dbg !492
  %4 = shl nsw i64 %3, 2, !dbg !493
  %5 = tail call i8* @malloc(i64 %4) #3, !dbg !494
  store i8* %5, i8** bitcast (i32** @keysUsed to i8**), align 8, !dbg !495, !tbaa !496
  %6 = icmp eq i8* %5, null, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %7 = bitcast i8* %5 to i32*, !dbg !502
  br i1 %6, label %41, label %8, !dbg !502

; <label>:8:                                      ; preds = %1
  %9 = icmp sgt i32 %0, 0, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %9, label %10, label %40, !dbg !508

; <label>:10:                                     ; preds = %8
  %11 = zext i32 %0 to i64
  %12 = add nsw i64 %11, -1, !dbg !508
  %13 = and i64 %11, 3, !dbg !508
  %14 = icmp ult i64 %12, 3, !dbg !508
  br i1 %14, label %30, label %15, !dbg !508

; <label>:15:                                     ; preds = %10
  %16 = sub nsw i64 %11, %13, !dbg !508
  br label %17, !dbg !508

; <label>:17:                                     ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %27, %17 ]
  %19 = phi i64 [ %16, %15 ], [ %28, %17 ]
  %20 = getelementptr inbounds i32, i32* %7, i64 %18, !dbg !509
  store i32 0, i32* %20, align 4, !dbg !511, !tbaa !512
  %21 = or i64 %18, 1, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %22 = getelementptr inbounds i32, i32* %7, i64 %21, !dbg !509
  store i32 0, i32* %22, align 4, !dbg !511, !tbaa !512
  %23 = or i64 %18, 2, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %24 = getelementptr inbounds i32, i32* %7, i64 %23, !dbg !509
  store i32 0, i32* %24, align 4, !dbg !511, !tbaa !512
  %25 = or i64 %18, 3, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %26 = getelementptr inbounds i32, i32* %7, i64 %25, !dbg !509
  store i32 0, i32* %26, align 4, !dbg !511, !tbaa !512
  %27 = add nuw nsw i64 %18, 4, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %28 = add i64 %19, -4, !dbg !508
  %29 = icmp eq i64 %28, 0, !dbg !508
  br i1 %29, label %30, label %17, !dbg !508, !llvm.loop !516

; <label>:30:                                     ; preds = %17, %10
  %31 = phi i64 [ 0, %10 ], [ %27, %17 ]
  %32 = icmp eq i64 %13, 0, !dbg !508
  br i1 %32, label %40, label %33, !dbg !508

; <label>:33:                                     ; preds = %30, %33
  %34 = phi i64 [ %37, %33 ], [ %31, %30 ]
  %35 = phi i64 [ %38, %33 ], [ %13, %30 ]
  %36 = getelementptr inbounds i32, i32* %7, i64 %34, !dbg !509
  store i32 0, i32* %36, align 4, !dbg !511, !tbaa !512
  %37 = add nuw nsw i64 %34, 1, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %38 = add i64 %35, -1, !dbg !508
  %39 = icmp eq i64 %38, 0, !dbg !508
  br i1 %39, label %40, label %33, !dbg !508, !llvm.loop !518

; <label>:40:                                     ; preds = %30, %33, %8
  store i32 %0, i32* @maxTlsValues, align 4, !dbg !520, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br label %41, !dbg !522

; <label>:41:                                     ; preds = %1, %40
  %42 = phi i32 [ 0, %40 ], [ 1, %1 ], !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  ret i32 %42, !dbg !525
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexCreate(%struct.uk_mutex**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @pteTlsThreadInit() local_unnamed_addr #0 !dbg !526 {
  %1 = load i32, i32* @maxTlsValues, align 4, !dbg !532, !tbaa !512
  %2 = sext i32 %1 to i64, !dbg !532
  %3 = shl nsw i64 %2, 3, !dbg !533
  %4 = tail call i8* @malloc(i64 %3) #3, !dbg !534
  %5 = bitcast i8* %4 to i8**, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  %6 = load i32, i32* @maxTlsValues, align 4, !dbg !540, !tbaa !512
  %7 = icmp sgt i32 %6, 0, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  br i1 %7, label %8, label %38, !dbg !543

; <label>:8:                                      ; preds = %0
  %9 = sext i32 %6 to i64, !dbg !543
  %10 = add nsw i64 %9, -1, !dbg !543
  %11 = and i64 %9, 3, !dbg !543
  %12 = icmp ult i64 %10, 3, !dbg !543
  br i1 %12, label %28, label %13, !dbg !543

; <label>:13:                                     ; preds = %8
  %14 = sub nsw i64 %9, %11, !dbg !543
  br label %15, !dbg !543

; <label>:15:                                     ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %25, %15 ]
  %17 = phi i64 [ %14, %13 ], [ %26, %15 ]
  %18 = getelementptr inbounds i8*, i8** %5, i64 %16, !dbg !544
  store i8* null, i8** %18, align 8, !dbg !546, !tbaa !496
  %19 = or i64 %16, 1, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %20 = getelementptr inbounds i8*, i8** %5, i64 %19, !dbg !544
  store i8* null, i8** %20, align 8, !dbg !546, !tbaa !496
  %21 = or i64 %16, 2, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %22 = getelementptr inbounds i8*, i8** %5, i64 %21, !dbg !544
  store i8* null, i8** %22, align 8, !dbg !546, !tbaa !496
  %23 = or i64 %16, 3, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %24 = getelementptr inbounds i8*, i8** %5, i64 %23, !dbg !544
  store i8* null, i8** %24, align 8, !dbg !546, !tbaa !496
  %25 = add nuw nsw i64 %16, 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %26 = add i64 %17, -4, !dbg !543
  %27 = icmp eq i64 %26, 0, !dbg !543
  br i1 %27, label %28, label %15, !dbg !543, !llvm.loop !549

; <label>:28:                                     ; preds = %15, %8
  %29 = phi i64 [ 0, %8 ], [ %25, %15 ]
  %30 = icmp eq i64 %11, 0, !dbg !543
  br i1 %30, label %38, label %31, !dbg !543

; <label>:31:                                     ; preds = %28, %31
  %32 = phi i64 [ %35, %31 ], [ %29, %28 ]
  %33 = phi i64 [ %36, %31 ], [ %11, %28 ]
  %34 = getelementptr inbounds i8*, i8** %5, i64 %32, !dbg !544
  store i8* null, i8** %34, align 8, !dbg !546, !tbaa !496
  %35 = add nuw nsw i64 %32, 1, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %36 = add i64 %33, -1, !dbg !543
  %37 = icmp eq i64 %36, 0, !dbg !543
  br i1 %37, label %38, label %31, !dbg !543, !llvm.loop !551

; <label>:38:                                     ; preds = %28, %31, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  ret i8* %4, !dbg !552
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsAlloc(i32* nocapture) local_unnamed_addr #0 !dbg !553 {
  %2 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !563, !tbaa !496
  %3 = tail call i32 @pte_osMutexLock(%struct.uk_mutex* %2) #3, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %4 = load i32, i32* @maxTlsValues, align 4, !dbg !568, !tbaa !512
  %5 = icmp sgt i32 %4, 0, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %5, label %6, label %22, !dbg !571

; <label>:6:                                      ; preds = %1
  %7 = load i32*, i32** @keysUsed, align 8, !tbaa !496
  %8 = sext i32 %4 to i64, !dbg !571
  br label %9, !dbg !571

; <label>:9:                                      ; preds = %6, %19
  %10 = phi i64 [ 0, %6 ], [ %20, %19 ]
  %11 = getelementptr inbounds i32, i32* %7, i64 %10, !dbg !572
  %12 = load i32, i32* %11, align 4, !dbg !572, !tbaa !512
  %13 = icmp eq i32 %12, 0, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br i1 %13, label %14, label %19, !dbg !576

; <label>:14:                                     ; preds = %9
  %15 = trunc i64 %10 to i32, !dbg !565
  %16 = and i64 %10, 4294967295, !dbg !572
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !572
  store i32 1, i32* %17, align 4, !dbg !577, !tbaa !512
  %18 = add nuw nsw i32 %15, 1, !dbg !579
  store i32 %18, i32* %0, align 4, !dbg !580, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br label %22, !dbg !581

; <label>:19:                                     ; preds = %9
  %20 = add nuw nsw i64 %10, 1, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %21 = icmp slt i64 %20, %8, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %21, label %9, label %22, !dbg !571, !llvm.loop !584

; <label>:22:                                     ; preds = %19, %1, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %1 ], [ 1, %19 ], !dbg !586
  %24 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !587, !tbaa !496
  %25 = tail call i32 @pte_osMutexUnlock(%struct.uk_mutex* %24) #3, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  ret i32 %23, !dbg !589
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @pteTlsGetValue(i8* readonly, i32) local_unnamed_addr #0 !dbg !590 {
  %3 = bitcast i8* %0 to i8**, !dbg !599
  %4 = load i32*, i32** @keysUsed, align 8, !dbg !601, !tbaa !496
  %5 = add i32 %1, -1, !dbg !603
  %6 = zext i32 %5 to i64, !dbg !601
  %7 = getelementptr inbounds i32, i32* %4, i64 %6, !dbg !601
  %8 = load i32, i32* %7, align 4, !dbg !601, !tbaa !512
  %9 = icmp eq i32 %8, 0, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  br i1 %9, label %15, label %10, !dbg !604

; <label>:10:                                     ; preds = %2
  %11 = icmp eq i8* %0, null, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br i1 %11, label %15, label %12, !dbg !608

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !609
  %14 = load i8*, i8** %13, align 8, !dbg !609, !tbaa !496
  br label %15, !dbg !611

; <label>:15:                                     ; preds = %2, %10, %12
  %16 = phi i8* [ %14, %12 ], [ null, %10 ], [ null, %2 ], !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  ret i8* %16, !dbg !615
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsSetValue(i8*, i32, i8*) local_unnamed_addr #0 !dbg !616 {
  %4 = icmp eq i8* %0, null, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %4, label %10, label %5, !dbg !630

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to i8**, !dbg !631
  %7 = add i32 %1, -1, !dbg !633
  %8 = zext i32 %7 to i64, !dbg !635
  %9 = getelementptr inbounds i8*, i8** %6, i64 %8, !dbg !635
  store i8* %2, i8** %9, align 8, !dbg !636, !tbaa !496
  br label %10, !dbg !638

; <label>:10:                                     ; preds = %3, %5
  %11 = phi i32 [ 0, %5 ], [ 5, %3 ], !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  ret i32 %11, !dbg !641
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsFree(i32) local_unnamed_addr #0 !dbg !642 {
  %2 = load i32*, i32** @keysUsed, align 8, !dbg !649, !tbaa !496
  %3 = icmp eq i32* %2, null, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br i1 %3, label %13, label %4, !dbg !652

; <label>:4:                                      ; preds = %1
  %5 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !653, !tbaa !496
  %6 = tail call i32 @pte_osMutexLock(%struct.uk_mutex* %5) #3, !dbg !655
  %7 = load i32*, i32** @keysUsed, align 8, !dbg !656, !tbaa !496
  %8 = add i32 %0, -1, !dbg !657
  %9 = zext i32 %8 to i64, !dbg !656
  %10 = getelementptr inbounds i32, i32* %7, i64 %9, !dbg !656
  store i32 0, i32* %10, align 4, !dbg !658, !tbaa !512
  %11 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !659, !tbaa !496
  %12 = tail call i32 @pte_osMutexUnlock(%struct.uk_mutex* %11) #3, !dbg !660
  br label %13, !dbg !662

; <label>:13:                                     ; preds = %1, %4
  %14 = phi i32 [ 0, %4 ], [ 2, %1 ], !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  ret i32 %14, !dbg !665
}

; Function Attrs: noredzone nounwind
define dso_local void @pteTlsThreadDestroy(i8*) local_unnamed_addr #0 !dbg !666 {
  tail call void @free(i8* %0) #3, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  ret void, !dbg !671
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @pteTlsGlobalDestroy() local_unnamed_addr #0 !dbg !672 {
  %1 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !674, !tbaa !496
  %2 = tail call i32 @pte_osMutexDelete(%struct.uk_mutex* %1) #3, !dbg !675
  %3 = load i8*, i8** bitcast (i32** @keysUsed to i8**), align 8, !dbg !676, !tbaa !496
  tail call void @free(i8* %3) #3, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  ret void, !dbg !678
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexDelete(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!478, !479, !480}
!llvm.ident = !{!481}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "globalTlsLock", scope: !2, file: !3, line: 39, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/platform/helper/tls-helper.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pte_osResult", file: !6, line: 38, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_generic_osal.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "PTE_OS_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "PTE_OS_NO_RESOURCES", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "PTE_OS_GENERAL_FAILURE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "PTE_OS_TIMEOUT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "PTE_OS_INTERRUPTED", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "PTE_OS_INVALID_PARAM", value: 5, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !16, line: 92, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!26 = !{!27, !29, !0}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "keysUsed", scope: !2, file: !3, line: 34, type: !22, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "maxTlsValues", scope: !2, file: !3, line: 37, type: !23, isLocal: true, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osMutexHandle", file: !32, line: 13, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_osal.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !35, line: 58, size: 256, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38, !477}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !34, file: !35, line: 59, baseType: !23, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !34, file: !35, line: 60, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !41, line: 59, size: 1024, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !47, !48, !49, !50, !56, !61, !67, !69, !85, !232, !233, !234, !447}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 60, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !40, file: !41, line: 61, baseType: !24, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !40, file: !41, line: 62, baseType: !24, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !40, file: !41, line: 63, baseType: !24, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !40, file: !41, line: 64, baseType: !51, size: 128, offset: 256)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !41, line: 64, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !51, file: !41, line: 64, baseType: !39, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !51, file: !41, line: 64, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !41, line: 65, baseType: !57, size: 32, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !58, line: 48, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !60, line: 79, baseType: !7)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !40, file: !41, line: 66, baseType: !62, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !63, line: 49, baseType: !64)
!63 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !65, line: 128, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !40, file: !41, line: 67, baseType: !68, size: 8, offset: 512)
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !40, file: !41, line: 68, baseType: !70, size: 128, offset: 576)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !71, line: 42, size: 128, elements: !72)
!71 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !{!73, !83}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !70, file: !71, line: 42, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !71, line: 35, size: 192, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !75, file: !71, line: 36, baseType: !23, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !75, file: !71, line: 37, baseType: !39, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !75, file: !71, line: 38, baseType: !80, size: 64, offset: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !71, line: 38, size: 64, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !80, file: !71, line: 38, baseType: !74, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !70, file: !71, line: 42, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !40, file: !41, line: 69, baseType: !86, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !88, line: 90, size: 2176, elements: !89)
!88 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !{!90, !95, !113, !118, !120, !122, !127, !135, !140, !145, !146, !147, !152, !229, !230, !231}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !87, file: !88, line: 91, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !88, line: 68, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !86}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !87, file: !88, line: 93, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !88, line: 71, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!23, !86, !39, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !103, line: 62, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !103, line: 55, size: 128, elements: !105)
!105 = !{!106, !107, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !104, file: !103, line: 57, baseType: !68, size: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !104, file: !103, line: 59, baseType: !108, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !103, line: 53, baseType: !23)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !104, file: !103, line: 61, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !63, line: 48, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !65, line: 129, baseType: !112)
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !87, file: !88, line: 94, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !88, line: 74, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !86, !39}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !87, file: !88, line: 95, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !88, line: 76, baseType: !115)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !87, file: !88, line: 96, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !88, line: 78, baseType: !115)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !87, file: !88, line: 98, baseType: !123, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !88, line: 81, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!23, !86, !39, !108}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !87, file: !88, line: 99, baseType: !128, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !88, line: 83, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!23, !86, !132, !134}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !87, file: !88, line: 100, baseType: !136, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !88, line: 85, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!23, !86, !39, !23}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !87, file: !88, line: 101, baseType: !141, size: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !88, line: 87, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!23, !86, !132, !22}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !87, file: !88, line: 104, baseType: !68, size: 8, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !87, file: !88, line: 105, baseType: !40, size: 1024, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !87, file: !88, line: 106, baseType: !148, size: 128, offset: 1664)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !41, line: 93, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !148, file: !41, line: 93, baseType: !39, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !148, file: !41, line: 93, baseType: !55, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !87, file: !88, line: 107, baseType: !153, size: 192, offset: 1792)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !154, line: 59, size: 192, elements: !155)
!154 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!155 = !{!156, !220, !224}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !153, file: !154, line: 61, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !154, line: 51, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!24, !161, !112, !112}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !163, line: 77, size: 832, elements: !164)
!163 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!164 = !{!165, !172, !177, !182, !187, !189, !194, !195, !196, !201, !206, !211, !212, !213}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !162, file: !163, line: 79, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !163, line: 54, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!24, !161, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 58, baseType: !112)
!171 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !162, file: !163, line: 80, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !163, line: 56, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!24, !161, !170, !170}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !162, file: !163, line: 81, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !163, line: 62, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!24, !161, !24, !170}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !162, file: !163, line: 82, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !163, line: 58, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!23, !161, !25, !170, !170}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !162, file: !163, line: 83, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !163, line: 60, baseType: !174)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !162, file: !163, line: 84, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !163, line: 64, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !161, !24}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !162, file: !163, line: 87, baseType: !190, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !162, file: !163, line: 88, baseType: !166, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !162, file: !163, line: 92, baseType: !197, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !163, line: 66, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!24, !161, !112}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !162, file: !163, line: 93, baseType: !202, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !163, line: 68, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !161, !24, !112}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !162, file: !163, line: 99, baseType: !207, size: 64, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !163, line: 70, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!23, !161, !24, !170}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !162, file: !163, line: 100, baseType: !170, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !163, line: 103, baseType: !161, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !162, file: !163, line: 104, baseType: !214, offset: 832)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !218)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !58, line: 20, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !60, line: 41, baseType: !217)
!217 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!218 = !{!219}
!219 = !DISubrange(count: -1)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !153, file: !154, line: 63, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !24}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !153, file: !154, line: 65, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !154, line: 56, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !24, !24}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !87, file: !88, line: 108, baseType: !161, size: 64, offset: 1984)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !88, line: 109, baseType: !86, size: 64, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !87, file: !88, line: 110, baseType: !24, size: 64, offset: 2112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !40, file: !41, line: 70, baseType: !24, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !40, file: !41, line: 72, baseType: !23, size: 32, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !40, file: !41, line: 82, baseType: !235, size: 64, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !237, line: 569, size: 14912, elements: !238)
!237 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !{!239, !240, !315, !316, !317, !318, !322, !323, !326, !327, !331, !343, !344, !345, !347, !348, !349, !411, !432, !433, !438, !445}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !236, file: !237, line: 571, baseType: !23, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !236, file: !237, line: 576, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !237, line: 287, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !237, line: 181, size: 1408, elements: !244)
!244 = !{!245, !248, !249, !250, !252, !253, !258, !259, !260, !267, !271, !276, !280, !281, !282, !283, !287, !291, !292, !293, !295, !296, !300, !314}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !243, file: !237, line: 182, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !243, file: !237, line: 183, baseType: !23, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !243, file: !237, line: 184, baseType: !23, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !243, file: !237, line: 185, baseType: !251, size: 16, offset: 128)
!251 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !243, file: !237, line: 186, baseType: !251, size: 16, offset: 144)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !243, file: !237, line: 187, baseType: !254, size: 128, offset: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !237, line: 117, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !254, file: !237, line: 118, baseType: !246, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !254, file: !237, line: 119, baseType: !23, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !243, file: !237, line: 188, baseType: !23, size: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !243, file: !237, line: 195, baseType: !24, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !243, file: !237, line: 197, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !235, !24, !266, !23}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !265, line: 145, baseType: !66)
!265 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !243, file: !237, line: 199, baseType: !268, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!264, !235, !24, !44, !23}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !243, file: !237, line: 202, baseType: !272, size: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !235, !24, !275, !23}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !265, line: 114, baseType: !66)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !243, file: !237, line: 203, baseType: !277, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!23, !235, !24}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !243, file: !237, line: 206, baseType: !254, size: 128, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !243, file: !237, line: 207, baseType: !246, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !243, file: !237, line: 208, baseType: !23, size: 32, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !243, file: !237, line: 211, baseType: !284, size: 24, offset: 928)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 24, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 3)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !243, file: !237, line: 212, baseType: !288, size: 8, offset: 952)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 8, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 1)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !243, file: !237, line: 215, baseType: !254, size: 128, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !243, file: !237, line: 218, baseType: !23, size: 32, offset: 1088)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !243, file: !237, line: 219, baseType: !294, size: 64, offset: 1152)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !265, line: 44, baseType: !66)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !243, file: !237, line: 222, baseType: !235, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !243, file: !237, line: 226, baseType: !297, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !265, line: 175, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !299, line: 12, baseType: !23)
!299 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !243, file: !237, line: 228, baseType: !301, size: 64, offset: 1312)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !265, line: 171, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 163, size: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !302, file: !265, line: 165, baseType: !23, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !302, file: !265, line: 170, baseType: !306, size: 32, offset: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !265, line: 166, size: 32, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !306, file: !265, line: 168, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !171, line: 124, baseType: !7)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !306, file: !265, line: 169, baseType: !311, size: 32)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 32, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 4)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !243, file: !237, line: 229, baseType: !23, size: 32, offset: 1376)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !236, file: !237, line: 576, baseType: !241, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !236, file: !237, line: 576, baseType: !241, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !236, file: !237, line: 578, baseType: !23, size: 32, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !236, file: !237, line: 579, baseType: !319, size: 200, offset: 288)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 25)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !236, file: !237, line: 582, baseType: !23, size: 32, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !236, file: !237, line: 583, baseType: !324, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !237, line: 40, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !236, file: !237, line: 585, baseType: !23, size: 32, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !236, file: !237, line: 587, baseType: !328, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !235}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !236, file: !237, line: 590, baseType: !332, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !237, line: 47, size: 256, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !333, file: !237, line: 49, baseType: !332, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !333, file: !237, line: 50, baseType: !23, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !333, file: !237, line: 50, baseType: !23, size: 32, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !333, file: !237, line: 50, baseType: !23, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !333, file: !237, line: 50, baseType: !23, size: 32, offset: 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !333, file: !237, line: 51, baseType: !341, size: 32, offset: 192)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 32, elements: !289)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !237, line: 25, baseType: !7)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !236, file: !237, line: 591, baseType: !23, size: 32, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !236, file: !237, line: 592, baseType: !332, size: 64, offset: 896)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !236, file: !237, line: 593, baseType: !346, size: 64, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !236, file: !237, line: 596, baseType: !23, size: 32, offset: 1024)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !236, file: !237, line: 597, baseType: !266, size: 64, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !236, file: !237, line: 632, baseType: !350, size: 2880, offset: 1152)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !237, line: 599, size: 2880, elements: !351)
!351 = !{!352, !402}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !350, file: !237, line: 622, baseType: !353, size: 1728)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !237, line: 601, size: 1728, elements: !354)
!354 = !{!355, !356, !357, !361, !373, !374, !376, !384, !385, !386, !387, !391, !395, !396, !397, !398, !399, !400, !401}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !353, file: !237, line: 603, baseType: !7, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !353, file: !237, line: 604, baseType: !266, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !353, file: !237, line: 605, baseType: !358, size: 208, offset: 128)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 208, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 26)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !353, file: !237, line: 606, baseType: !362, size: 288, offset: 352)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !237, line: 55, size: 288, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !362, file: !237, line: 57, baseType: !23, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !362, file: !237, line: 58, baseType: !23, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !362, file: !237, line: 59, baseType: !23, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !362, file: !237, line: 60, baseType: !23, size: 32, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !362, file: !237, line: 61, baseType: !23, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !362, file: !237, line: 62, baseType: !23, size: 32, offset: 160)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !362, file: !237, line: 63, baseType: !23, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !362, file: !237, line: 64, baseType: !23, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !362, file: !237, line: 65, baseType: !23, size: 32, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !353, file: !237, line: 607, baseType: !23, size: 32, offset: 640)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !353, file: !237, line: 608, baseType: !375, size: 64, offset: 704)
!375 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !353, file: !237, line: 609, baseType: !377, size: 112, offset: 768)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !237, line: 319, size: 112, elements: !378)
!378 = !{!379, !382, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !377, file: !237, line: 320, baseType: !380, size: 48)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 48, elements: !285)
!381 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !377, file: !237, line: 321, baseType: !380, size: 48, offset: 48)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !377, file: !237, line: 322, baseType: !381, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !353, file: !237, line: 610, baseType: !301, size: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !353, file: !237, line: 611, baseType: !301, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !353, file: !237, line: 612, baseType: !301, size: 64, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !353, file: !237, line: 613, baseType: !388, size: 64, offset: 1088)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 8)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !353, file: !237, line: 614, baseType: !392, size: 192, offset: 1152)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 24)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !353, file: !237, line: 615, baseType: !23, size: 32, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !353, file: !237, line: 616, baseType: !301, size: 64, offset: 1376)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !353, file: !237, line: 617, baseType: !301, size: 64, offset: 1440)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !353, file: !237, line: 618, baseType: !301, size: 64, offset: 1504)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !353, file: !237, line: 619, baseType: !301, size: 64, offset: 1568)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !353, file: !237, line: 620, baseType: !301, size: 64, offset: 1632)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !353, file: !237, line: 621, baseType: !23, size: 32, offset: 1696)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !350, file: !237, line: 631, baseType: !403, size: 2880)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !237, line: 626, size: 2880, elements: !404)
!404 = !{!405, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !403, file: !237, line: 629, baseType: !406, size: 1920)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1920, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 30)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !403, file: !237, line: 630, baseType: !410, size: 960, offset: 1920)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !407)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !236, file: !237, line: 636, baseType: !412, size: 64, offset: 4032)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !237, line: 93, size: 6336, elements: !414)
!414 = !{!415, !416, !417, !424}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !413, file: !237, line: 94, baseType: !412, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !413, file: !237, line: 95, baseType: !23, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !413, file: !237, line: 97, baseType: !418, size: 2048, offset: 128)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !422)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null}
!422 = !{!423}
!423 = !DISubrange(count: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !413, file: !237, line: 98, baseType: !425, size: 4160, offset: 2176)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !237, line: 74, size: 4160, elements: !426)
!426 = !{!427, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !425, file: !237, line: 75, baseType: !428, size: 2048)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !422)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !425, file: !237, line: 76, baseType: !428, size: 2048, offset: 2048)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !425, file: !237, line: 78, baseType: !342, size: 32, offset: 4096)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !425, file: !237, line: 81, baseType: !342, size: 32, offset: 4128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !236, file: !237, line: 637, baseType: !413, size: 6336, offset: 4096)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !236, file: !237, line: 641, baseType: !434, size: 64, offset: 10432)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !23}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !236, file: !237, line: 646, baseType: !439, size: 192, offset: 10496)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !237, line: 291, size: 192, elements: !440)
!440 = !{!441, !443, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !439, file: !237, line: 293, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !439, file: !237, line: 294, baseType: !23, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !439, file: !237, line: 295, baseType: !241, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !236, file: !237, line: 648, baseType: !446, size: 4224, offset: 10688)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4224, elements: !285)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !40, file: !41, line: 85, baseType: !448, size: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !16, line: 114, size: 640, elements: !450)
!450 = !{!451, !455, !456, !463, !476}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !449, file: !16, line: 116, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !453, line: 64, baseType: !454)
!453 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !453, line: 63, baseType: !112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !449, file: !16, line: 118, baseType: !452, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !449, file: !16, line: 120, baseType: !457, size: 128, offset: 128)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !458, line: 51, size: 128, elements: !459)
!458 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !458, line: 52, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !458, line: 53, baseType: !461, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !449, file: !16, line: 122, baseType: !464, size: 256, offset: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !16, line: 98, size: 256, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !464, file: !16, line: 107, baseType: !15, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !464, file: !16, line: 109, baseType: !452, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !464, file: !16, line: 111, baseType: !469, size: 96, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !453, line: 72, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 68, size: 96, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !470, file: !453, line: 69, baseType: !23, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !470, file: !453, line: 70, baseType: !23, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !470, file: !453, line: 71, baseType: !475, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !453, line: 61, baseType: !23)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !449, file: !16, line: 124, baseType: !457, size: 128, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !34, file: !35, line: 61, baseType: !70, size: 128, offset: 128)
!478 = !{i32 2, !"Dwarf Version", i32 4}
!479 = !{i32 2, !"Debug Info Version", i32 3}
!480 = !{i32 1, !"wchar_size", i32 4}
!481 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!482 = distinct !DISubprogram(name: "pteTlsGlobalInit", scope: !3, file: !3, line: 41, type: !483, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !486)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !23}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_osResult", file: !6, line: 60, baseType: !5)
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(name: "maxEntries", arg: 1, scope: !482, file: !3, line: 41, type: !23)
!488 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 43, type: !23)
!489 = !DILocalVariable(name: "result", scope: !482, file: !3, line: 44, type: !485)
!490 = !DILocation(line: 41, column: 35, scope: !482)
!491 = !DILocation(line: 46, column: 3, scope: !482)
!492 = !DILocation(line: 48, column: 29, scope: !482)
!493 = !DILocation(line: 48, column: 40, scope: !482)
!494 = !DILocation(line: 48, column: 22, scope: !482)
!495 = !DILocation(line: 48, column: 12, scope: !482)
!496 = !{!497, !497, i64 0}
!497 = !{!"any pointer", !498, i64 0}
!498 = !{!"omnipotent char", !499, i64 0}
!499 = !{!"Simple C/C++ TBAA"}
!500 = !DILocation(line: 50, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !482, file: !3, line: 50, column: 7)
!502 = !DILocation(line: 50, column: 7, scope: !482)
!503 = !DILocation(line: 43, column: 7, scope: !482)
!504 = !DILocation(line: 52, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 52, column: 7)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 52, column: 7)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 51, column: 5)
!508 = !DILocation(line: 52, column: 7, scope: !506)
!509 = !DILocation(line: 54, column: 11, scope: !510)
!510 = distinct !DILexicalBlock(scope: !505, file: !3, line: 53, column: 9)
!511 = !DILocation(line: 54, column: 23, scope: !510)
!512 = !{!513, !513, i64 0}
!513 = !{!"int", !498, i64 0}
!514 = !DILocation(line: 52, column: 30, scope: !505)
!515 = !DILocation(line: 52, column: 7, scope: !505)
!516 = distinct !{!516, !508, !517}
!517 = !DILocation(line: 55, column: 9, scope: !506)
!518 = distinct !{!518, !519}
!519 = !{!"llvm.loop.unroll.disable"}
!520 = !DILocation(line: 57, column: 20, scope: !507)
!521 = !DILocation(line: 44, column: 16, scope: !482)
!522 = !DILocation(line: 60, column: 5, scope: !507)
!523 = !DILocation(line: 0, scope: !524)
!524 = distinct !DILexicalBlock(scope: !501, file: !3, line: 62, column: 5)
!525 = !DILocation(line: 66, column: 3, scope: !482)
!526 = distinct !DISubprogram(name: "pteTlsThreadInit", scope: !3, file: !3, line: 70, type: !527, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!24}
!529 = !{!530, !531}
!530 = !DILocalVariable(name: "pTlsStruct", scope: !526, file: !3, line: 72, type: !25)
!531 = !DILocalVariable(name: "i", scope: !526, file: !3, line: 73, type: !23)
!532 = !DILocation(line: 75, column: 33, scope: !526)
!533 = !DILocation(line: 75, column: 46, scope: !526)
!534 = !DILocation(line: 75, column: 26, scope: !526)
!535 = !DILocation(line: 75, column: 16, scope: !526)
!536 = !DILocation(line: 72, column: 11, scope: !526)
!537 = !DILocation(line: 73, column: 7, scope: !526)
!538 = !DILocation(line: 78, column: 8, scope: !539)
!539 = distinct !DILexicalBlock(scope: !526, file: !3, line: 78, column: 3)
!540 = !DILocation(line: 78, column: 15, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !3, line: 78, column: 3)
!542 = !DILocation(line: 78, column: 14, scope: !541)
!543 = !DILocation(line: 78, column: 3, scope: !539)
!544 = !DILocation(line: 80, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 79, column: 5)
!546 = !DILocation(line: 80, column: 21, scope: !545)
!547 = !DILocation(line: 78, column: 29, scope: !541)
!548 = !DILocation(line: 78, column: 3, scope: !541)
!549 = distinct !{!549, !543, !550}
!550 = !DILocation(line: 81, column: 5, scope: !539)
!551 = distinct !{!551, !519}
!552 = !DILocation(line: 83, column: 3, scope: !526)
!553 = distinct !DISubprogram(name: "pteTlsAlloc", scope: !3, file: !3, line: 87, type: !554, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !557)
!554 = !DISubroutineType(types: !555)
!555 = !{!485, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(name: "pKey", arg: 1, scope: !553, file: !3, line: 87, type: !556)
!559 = !DILocalVariable(name: "i", scope: !553, file: !3, line: 89, type: !23)
!560 = !DILocalVariable(name: "result", scope: !553, file: !3, line: 90, type: !485)
!561 = !DILocation(line: 87, column: 40, scope: !553)
!562 = !DILocation(line: 90, column: 16, scope: !553)
!563 = !DILocation(line: 93, column: 19, scope: !553)
!564 = !DILocation(line: 93, column: 3, scope: !553)
!565 = !DILocation(line: 89, column: 7, scope: !553)
!566 = !DILocation(line: 95, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !553, file: !3, line: 95, column: 3)
!568 = !DILocation(line: 95, column: 14, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !3, line: 95, column: 3)
!570 = !DILocation(line: 95, column: 13, scope: !569)
!571 = !DILocation(line: 95, column: 3, scope: !567)
!572 = !DILocation(line: 97, column: 11, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 97, column: 11)
!574 = distinct !DILexicalBlock(scope: !569, file: !3, line: 96, column: 5)
!575 = !DILocation(line: 97, column: 23, scope: !573)
!576 = !DILocation(line: 97, column: 11, scope: !574)
!577 = !DILocation(line: 99, column: 23, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !3, line: 98, column: 9)
!579 = !DILocation(line: 101, column: 20, scope: !578)
!580 = !DILocation(line: 101, column: 17, scope: !578)
!581 = !DILocation(line: 103, column: 11, scope: !578)
!582 = !DILocation(line: 95, column: 28, scope: !569)
!583 = !DILocation(line: 95, column: 3, scope: !569)
!584 = distinct !{!584, !571, !585}
!585 = !DILocation(line: 105, column: 5, scope: !567)
!586 = !DILocation(line: 0, scope: !553)
!587 = !DILocation(line: 107, column: 21, scope: !553)
!588 = !DILocation(line: 107, column: 3, scope: !553)
!589 = !DILocation(line: 109, column: 3, scope: !553)
!590 = distinct !DISubprogram(name: "pteTlsGetValue", scope: !3, file: !3, line: 113, type: !591, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!24, !24, !7}
!593 = !{!594, !595, !596}
!594 = !DILocalVariable(name: "pTlsThreadStruct", arg: 1, scope: !590, file: !3, line: 113, type: !24)
!595 = !DILocalVariable(name: "index", arg: 2, scope: !590, file: !3, line: 113, type: !7)
!596 = !DILocalVariable(name: "pTls", scope: !590, file: !3, line: 115, type: !25)
!597 = !DILocation(line: 113, column: 29, scope: !590)
!598 = !DILocation(line: 113, column: 60, scope: !590)
!599 = !DILocation(line: 115, column: 17, scope: !590)
!600 = !DILocation(line: 115, column: 10, scope: !590)
!601 = !DILocation(line: 117, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !590, file: !3, line: 117, column: 7)
!603 = !DILocation(line: 117, column: 21, scope: !602)
!604 = !DILocation(line: 117, column: 7, scope: !590)
!605 = !DILocation(line: 119, column: 16, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 119, column: 11)
!607 = distinct !DILexicalBlock(scope: !602, file: !3, line: 118, column: 5)
!608 = !DILocation(line: 119, column: 11, scope: !607)
!609 = !DILocation(line: 121, column: 18, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 120, column: 9)
!611 = !DILocation(line: 121, column: 11, scope: !610)
!612 = !DILocation(line: 0, scope: !613)
!613 = distinct !DILexicalBlock(scope: !602, file: !3, line: 129, column: 5)
!614 = !DILocation(line: 0, scope: !610)
!615 = !DILocation(line: 132, column: 1, scope: !590)
!616 = distinct !DISubprogram(name: "pteTlsSetValue", scope: !3, file: !3, line: 135, type: !617, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!485, !24, !7, !24}
!619 = !{!620, !621, !622, !623, !624}
!620 = !DILocalVariable(name: "pTlsThreadStruct", arg: 1, scope: !616, file: !3, line: 135, type: !24)
!621 = !DILocalVariable(name: "index", arg: 2, scope: !616, file: !3, line: 135, type: !7)
!622 = !DILocalVariable(name: "value", arg: 3, scope: !616, file: !3, line: 135, type: !24)
!623 = !DILocalVariable(name: "result", scope: !616, file: !3, line: 137, type: !485)
!624 = !DILocalVariable(name: "pTls", scope: !616, file: !3, line: 138, type: !25)
!625 = !DILocation(line: 135, column: 35, scope: !616)
!626 = !DILocation(line: 135, column: 66, scope: !616)
!627 = !DILocation(line: 135, column: 80, scope: !616)
!628 = !DILocation(line: 140, column: 12, scope: !629)
!629 = distinct !DILexicalBlock(scope: !616, file: !3, line: 140, column: 7)
!630 = !DILocation(line: 140, column: 7, scope: !616)
!631 = !DILocation(line: 138, column: 18, scope: !616)
!632 = !DILocation(line: 138, column: 11, scope: !616)
!633 = !DILocation(line: 142, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 141, column: 5)
!635 = !DILocation(line: 142, column: 7, scope: !634)
!636 = !DILocation(line: 142, column: 21, scope: !634)
!637 = !DILocation(line: 137, column: 16, scope: !616)
!638 = !DILocation(line: 144, column: 5, scope: !634)
!639 = !DILocation(line: 0, scope: !640)
!640 = distinct !DILexicalBlock(scope: !629, file: !3, line: 146, column: 5)
!641 = !DILocation(line: 150, column: 3, scope: !616)
!642 = distinct !DISubprogram(name: "pteTlsFree", scope: !3, file: !3, line: 154, type: !643, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!485, !7}
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "index", arg: 1, scope: !642, file: !3, line: 154, type: !7)
!647 = !DILocalVariable(name: "result", scope: !642, file: !3, line: 156, type: !485)
!648 = !DILocation(line: 154, column: 38, scope: !642)
!649 = !DILocation(line: 158, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !642, file: !3, line: 158, column: 7)
!651 = !DILocation(line: 158, column: 16, scope: !650)
!652 = !DILocation(line: 158, column: 7, scope: !642)
!653 = !DILocation(line: 160, column: 23, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !3, line: 159, column: 5)
!655 = !DILocation(line: 160, column: 7, scope: !654)
!656 = !DILocation(line: 162, column: 7, scope: !654)
!657 = !DILocation(line: 162, column: 21, scope: !654)
!658 = !DILocation(line: 162, column: 25, scope: !654)
!659 = !DILocation(line: 164, column: 25, scope: !654)
!660 = !DILocation(line: 164, column: 7, scope: !654)
!661 = !DILocation(line: 156, column: 16, scope: !642)
!662 = !DILocation(line: 167, column: 5, scope: !654)
!663 = !DILocation(line: 0, scope: !664)
!664 = distinct !DILexicalBlock(scope: !650, file: !3, line: 169, column: 5)
!665 = !DILocation(line: 173, column: 3, scope: !642)
!666 = distinct !DISubprogram(name: "pteTlsThreadDestroy", scope: !3, file: !3, line: 176, type: !222, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !667)
!667 = !{!668}
!668 = !DILocalVariable(name: "pTlsThreadStruct", arg: 1, scope: !666, file: !3, line: 176, type: !24)
!669 = !DILocation(line: 176, column: 33, scope: !666)
!670 = !DILocation(line: 178, column: 3, scope: !666)
!671 = !DILocation(line: 179, column: 1, scope: !666)
!672 = distinct !DISubprogram(name: "pteTlsGlobalDestroy", scope: !3, file: !3, line: 181, type: !420, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !673)
!673 = !{}
!674 = !DILocation(line: 183, column: 21, scope: !672)
!675 = !DILocation(line: 183, column: 3, scope: !672)
!676 = !DILocation(line: 184, column: 8, scope: !672)
!677 = !DILocation(line: 184, column: 3, scope: !672)
!678 = !DILocation(line: 185, column: 1, scope: !672)
