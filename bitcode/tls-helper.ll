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
  %7 = bitcast i8* %5 to i32*, !dbg !502
  br i1 %6, label %90, label %8, !dbg !502

; <label>:8:                                      ; preds = %1
  %9 = icmp sgt i32 %0, 0, !dbg !504
  br i1 %9, label %10, label %89, !dbg !508

; <label>:10:                                     ; preds = %8
  %11 = zext i32 %0 to i64
  %12 = icmp ult i32 %0, 8, !dbg !508
  br i1 %12, label %82, label %13, !dbg !508

; <label>:13:                                     ; preds = %10
  %14 = and i64 %11, 4294967288, !dbg !508
  %15 = add nsw i64 %14, -8, !dbg !508
  %16 = lshr exact i64 %15, 3, !dbg !508
  %17 = add nuw nsw i64 %16, 1, !dbg !508
  %18 = and i64 %17, 7, !dbg !508
  %19 = icmp ult i64 %15, 56, !dbg !508
  br i1 %19, label %67, label %20, !dbg !508

; <label>:20:                                     ; preds = %13
  %21 = sub nsw i64 %17, %18, !dbg !508
  br label %22, !dbg !508

; <label>:22:                                     ; preds = %22, %20
  %23 = phi i64 [ 0, %20 ], [ %64, %22 ], !dbg !509
  %24 = phi i64 [ %21, %20 ], [ %65, %22 ]
  %25 = getelementptr inbounds i32, i32* %7, i64 %23, !dbg !510
  %26 = bitcast i32* %25 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %26, align 4, !dbg !512, !tbaa !513
  %27 = getelementptr inbounds i32, i32* %25, i64 4, !dbg !512
  %28 = bitcast i32* %27 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %28, align 4, !dbg !512, !tbaa !513
  %29 = or i64 %23, 8, !dbg !509
  %30 = getelementptr inbounds i32, i32* %7, i64 %29, !dbg !510
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 4, !dbg !512, !tbaa !513
  %32 = getelementptr inbounds i32, i32* %30, i64 4, !dbg !512
  %33 = bitcast i32* %32 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %33, align 4, !dbg !512, !tbaa !513
  %34 = or i64 %23, 16, !dbg !509
  %35 = getelementptr inbounds i32, i32* %7, i64 %34, !dbg !510
  %36 = bitcast i32* %35 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %36, align 4, !dbg !512, !tbaa !513
  %37 = getelementptr inbounds i32, i32* %35, i64 4, !dbg !512
  %38 = bitcast i32* %37 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %38, align 4, !dbg !512, !tbaa !513
  %39 = or i64 %23, 24, !dbg !509
  %40 = getelementptr inbounds i32, i32* %7, i64 %39, !dbg !510
  %41 = bitcast i32* %40 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %41, align 4, !dbg !512, !tbaa !513
  %42 = getelementptr inbounds i32, i32* %40, i64 4, !dbg !512
  %43 = bitcast i32* %42 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %43, align 4, !dbg !512, !tbaa !513
  %44 = or i64 %23, 32, !dbg !509
  %45 = getelementptr inbounds i32, i32* %7, i64 %44, !dbg !510
  %46 = bitcast i32* %45 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %46, align 4, !dbg !512, !tbaa !513
  %47 = getelementptr inbounds i32, i32* %45, i64 4, !dbg !512
  %48 = bitcast i32* %47 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %48, align 4, !dbg !512, !tbaa !513
  %49 = or i64 %23, 40, !dbg !509
  %50 = getelementptr inbounds i32, i32* %7, i64 %49, !dbg !510
  %51 = bitcast i32* %50 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %51, align 4, !dbg !512, !tbaa !513
  %52 = getelementptr inbounds i32, i32* %50, i64 4, !dbg !512
  %53 = bitcast i32* %52 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %53, align 4, !dbg !512, !tbaa !513
  %54 = or i64 %23, 48, !dbg !509
  %55 = getelementptr inbounds i32, i32* %7, i64 %54, !dbg !510
  %56 = bitcast i32* %55 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %56, align 4, !dbg !512, !tbaa !513
  %57 = getelementptr inbounds i32, i32* %55, i64 4, !dbg !512
  %58 = bitcast i32* %57 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %58, align 4, !dbg !512, !tbaa !513
  %59 = or i64 %23, 56, !dbg !509
  %60 = getelementptr inbounds i32, i32* %7, i64 %59, !dbg !510
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %61, align 4, !dbg !512, !tbaa !513
  %62 = getelementptr inbounds i32, i32* %60, i64 4, !dbg !512
  %63 = bitcast i32* %62 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %63, align 4, !dbg !512, !tbaa !513
  %64 = add i64 %23, 64, !dbg !509
  %65 = add i64 %24, -8, !dbg !509
  %66 = icmp eq i64 %65, 0, !dbg !509
  br i1 %66, label %67, label %22, !dbg !509, !llvm.loop !515

; <label>:67:                                     ; preds = %22, %13
  %68 = phi i64 [ 0, %13 ], [ %64, %22 ]
  %69 = icmp eq i64 %18, 0, !dbg !509
  br i1 %69, label %80, label %70, !dbg !509

; <label>:70:                                     ; preds = %67, %70
  %71 = phi i64 [ %77, %70 ], [ %68, %67 ], !dbg !509
  %72 = phi i64 [ %78, %70 ], [ %18, %67 ]
  %73 = getelementptr inbounds i32, i32* %7, i64 %71, !dbg !510
  %74 = bitcast i32* %73 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %74, align 4, !dbg !512, !tbaa !513
  %75 = getelementptr inbounds i32, i32* %73, i64 4, !dbg !512
  %76 = bitcast i32* %75 to <4 x i32>*, !dbg !512
  store <4 x i32> zeroinitializer, <4 x i32>* %76, align 4, !dbg !512, !tbaa !513
  %77 = add i64 %71, 8, !dbg !509
  %78 = add i64 %72, -1, !dbg !509
  %79 = icmp eq i64 %78, 0, !dbg !509
  br i1 %79, label %80, label %70, !dbg !509, !llvm.loop !518

; <label>:80:                                     ; preds = %70, %67
  %81 = icmp eq i64 %14, %11
  br i1 %81, label %89, label %82, !dbg !508

; <label>:82:                                     ; preds = %80, %10
  %83 = phi i64 [ 0, %10 ], [ %14, %80 ]
  br label %84, !dbg !510

; <label>:84:                                     ; preds = %82, %84
  %85 = phi i64 [ %87, %84 ], [ %83, %82 ]
  %86 = getelementptr inbounds i32, i32* %7, i64 %85, !dbg !510
  store i32 0, i32* %86, align 4, !dbg !512, !tbaa !513
  %87 = add nuw nsw i64 %85, 1, !dbg !509
  %88 = icmp eq i64 %87, %11, !dbg !504
  br i1 %88, label %89, label %84, !dbg !508, !llvm.loop !520

; <label>:89:                                     ; preds = %84, %80, %8
  store i32 %0, i32* @maxTlsValues, align 4, !dbg !522, !tbaa !513
  br label %90, !dbg !524

; <label>:90:                                     ; preds = %1, %89
  %91 = phi i32 [ 0, %89 ], [ 1, %1 ], !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  ret i32 %91, !dbg !527
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexCreate(%struct.uk_mutex**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @pteTlsThreadInit() local_unnamed_addr #0 !dbg !528 {
  %1 = load i32, i32* @maxTlsValues, align 4, !dbg !534, !tbaa !513
  %2 = sext i32 %1 to i64, !dbg !534
  %3 = shl nsw i64 %2, 3, !dbg !535
  %4 = tail call i8* @malloc(i64 %3) #3, !dbg !536
  %5 = bitcast i8* %4 to i8**, !dbg !537
  %6 = load i32, i32* @maxTlsValues, align 4, !dbg !540, !tbaa !513
  %7 = icmp sgt i32 %6, 0, !dbg !543
  br i1 %7, label %8, label %87, !dbg !544

; <label>:8:                                      ; preds = %0
  %9 = sext i32 %6 to i64, !dbg !544
  %10 = icmp ult i32 %6, 4, !dbg !544
  br i1 %10, label %80, label %11, !dbg !544

; <label>:11:                                     ; preds = %8
  %12 = and i64 %9, -4, !dbg !544
  %13 = add nsw i64 %12, -4, !dbg !544
  %14 = lshr exact i64 %13, 2, !dbg !544
  %15 = add nuw nsw i64 %14, 1, !dbg !544
  %16 = and i64 %15, 7, !dbg !544
  %17 = icmp ult i64 %13, 28, !dbg !544
  br i1 %17, label %65, label %18, !dbg !544

; <label>:18:                                     ; preds = %11
  %19 = sub nsw i64 %15, %16, !dbg !544
  br label %20, !dbg !544

; <label>:20:                                     ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %62, %20 ], !dbg !545
  %22 = phi i64 [ %19, %18 ], [ %63, %20 ]
  %23 = getelementptr inbounds i8*, i8** %5, i64 %21, !dbg !546
  %24 = bitcast i8** %23 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %24, align 8, !dbg !548, !tbaa !496
  %25 = getelementptr inbounds i8*, i8** %23, i64 2, !dbg !548
  %26 = bitcast i8** %25 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %26, align 8, !dbg !548, !tbaa !496
  %27 = or i64 %21, 4, !dbg !545
  %28 = getelementptr inbounds i8*, i8** %5, i64 %27, !dbg !546
  %29 = bitcast i8** %28 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %29, align 8, !dbg !548, !tbaa !496
  %30 = getelementptr inbounds i8*, i8** %28, i64 2, !dbg !548
  %31 = bitcast i8** %30 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %31, align 8, !dbg !548, !tbaa !496
  %32 = or i64 %21, 8, !dbg !545
  %33 = getelementptr inbounds i8*, i8** %5, i64 %32, !dbg !546
  %34 = bitcast i8** %33 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %34, align 8, !dbg !548, !tbaa !496
  %35 = getelementptr inbounds i8*, i8** %33, i64 2, !dbg !548
  %36 = bitcast i8** %35 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %36, align 8, !dbg !548, !tbaa !496
  %37 = or i64 %21, 12, !dbg !545
  %38 = getelementptr inbounds i8*, i8** %5, i64 %37, !dbg !546
  %39 = bitcast i8** %38 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %39, align 8, !dbg !548, !tbaa !496
  %40 = getelementptr inbounds i8*, i8** %38, i64 2, !dbg !548
  %41 = bitcast i8** %40 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %41, align 8, !dbg !548, !tbaa !496
  %42 = or i64 %21, 16, !dbg !545
  %43 = getelementptr inbounds i8*, i8** %5, i64 %42, !dbg !546
  %44 = bitcast i8** %43 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %44, align 8, !dbg !548, !tbaa !496
  %45 = getelementptr inbounds i8*, i8** %43, i64 2, !dbg !548
  %46 = bitcast i8** %45 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %46, align 8, !dbg !548, !tbaa !496
  %47 = or i64 %21, 20, !dbg !545
  %48 = getelementptr inbounds i8*, i8** %5, i64 %47, !dbg !546
  %49 = bitcast i8** %48 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %49, align 8, !dbg !548, !tbaa !496
  %50 = getelementptr inbounds i8*, i8** %48, i64 2, !dbg !548
  %51 = bitcast i8** %50 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %51, align 8, !dbg !548, !tbaa !496
  %52 = or i64 %21, 24, !dbg !545
  %53 = getelementptr inbounds i8*, i8** %5, i64 %52, !dbg !546
  %54 = bitcast i8** %53 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %54, align 8, !dbg !548, !tbaa !496
  %55 = getelementptr inbounds i8*, i8** %53, i64 2, !dbg !548
  %56 = bitcast i8** %55 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %56, align 8, !dbg !548, !tbaa !496
  %57 = or i64 %21, 28, !dbg !545
  %58 = getelementptr inbounds i8*, i8** %5, i64 %57, !dbg !546
  %59 = bitcast i8** %58 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %59, align 8, !dbg !548, !tbaa !496
  %60 = getelementptr inbounds i8*, i8** %58, i64 2, !dbg !548
  %61 = bitcast i8** %60 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %61, align 8, !dbg !548, !tbaa !496
  %62 = add i64 %21, 32, !dbg !545
  %63 = add i64 %22, -8, !dbg !545
  %64 = icmp eq i64 %63, 0, !dbg !545
  br i1 %64, label %65, label %20, !dbg !545, !llvm.loop !549

; <label>:65:                                     ; preds = %20, %11
  %66 = phi i64 [ 0, %11 ], [ %62, %20 ]
  %67 = icmp eq i64 %16, 0, !dbg !545
  br i1 %67, label %78, label %68, !dbg !545

; <label>:68:                                     ; preds = %65, %68
  %69 = phi i64 [ %75, %68 ], [ %66, %65 ], !dbg !545
  %70 = phi i64 [ %76, %68 ], [ %16, %65 ]
  %71 = getelementptr inbounds i8*, i8** %5, i64 %69, !dbg !546
  %72 = bitcast i8** %71 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %72, align 8, !dbg !548, !tbaa !496
  %73 = getelementptr inbounds i8*, i8** %71, i64 2, !dbg !548
  %74 = bitcast i8** %73 to <2 x i8*>*, !dbg !548
  store <2 x i8*> zeroinitializer, <2 x i8*>* %74, align 8, !dbg !548, !tbaa !496
  %75 = add i64 %69, 4, !dbg !545
  %76 = add i64 %70, -1, !dbg !545
  %77 = icmp eq i64 %76, 0, !dbg !545
  br i1 %77, label %78, label %68, !dbg !545, !llvm.loop !551

; <label>:78:                                     ; preds = %68, %65
  %79 = icmp eq i64 %12, %9
  br i1 %79, label %87, label %80, !dbg !544

; <label>:80:                                     ; preds = %78, %8
  %81 = phi i64 [ 0, %8 ], [ %12, %78 ]
  br label %82, !dbg !546

; <label>:82:                                     ; preds = %80, %82
  %83 = phi i64 [ %85, %82 ], [ %81, %80 ]
  %84 = getelementptr inbounds i8*, i8** %5, i64 %83, !dbg !546
  store i8* null, i8** %84, align 8, !dbg !548, !tbaa !496
  %85 = add nuw nsw i64 %83, 1, !dbg !545
  %86 = icmp slt i64 %85, %9, !dbg !543
  br i1 %86, label %82, label %87, !dbg !544, !llvm.loop !552

; <label>:87:                                     ; preds = %82, %78, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  ret i8* %4, !dbg !553
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsAlloc(i32* nocapture) local_unnamed_addr #0 !dbg !554 {
  %2 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !564, !tbaa !496
  %3 = tail call i32 @pte_osMutexLock(%struct.uk_mutex* %2) #3, !dbg !565
  %4 = load i32, i32* @maxTlsValues, align 4, !dbg !567, !tbaa !513
  %5 = icmp sgt i32 %4, 0, !dbg !570
  br i1 %5, label %6, label %22, !dbg !571

; <label>:6:                                      ; preds = %1
  %7 = load i32*, i32** @keysUsed, align 8, !tbaa !496
  %8 = sext i32 %4 to i64, !dbg !571
  br label %9, !dbg !571

; <label>:9:                                      ; preds = %6, %19
  %10 = phi i64 [ 0, %6 ], [ %20, %19 ]
  %11 = getelementptr inbounds i32, i32* %7, i64 %10, !dbg !572
  %12 = load i32, i32* %11, align 4, !dbg !572, !tbaa !513
  %13 = icmp eq i32 %12, 0, !dbg !575
  br i1 %13, label %14, label %19, !dbg !576

; <label>:14:                                     ; preds = %9
  %15 = trunc i64 %10 to i32, !dbg !566
  %16 = and i64 %10, 4294967295, !dbg !572
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !572
  store i32 1, i32* %17, align 4, !dbg !577, !tbaa !513
  %18 = add nuw nsw i32 %15, 1, !dbg !579
  store i32 %18, i32* %0, align 4, !dbg !580, !tbaa !513
  br label %22, !dbg !581

; <label>:19:                                     ; preds = %9
  %20 = add nuw nsw i64 %10, 1, !dbg !582
  %21 = icmp slt i64 %20, %8, !dbg !570
  br i1 %21, label %9, label %22, !dbg !571, !llvm.loop !583

; <label>:22:                                     ; preds = %19, %1, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %1 ], [ 1, %19 ], !dbg !585
  %24 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !586, !tbaa !496
  %25 = tail call i32 @pte_osMutexUnlock(%struct.uk_mutex* %24) #3, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  ret i32 %23, !dbg !588
}

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexLock(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osMutexUnlock(%struct.uk_mutex*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @pteTlsGetValue(i8* readonly, i32) local_unnamed_addr #0 !dbg !589 {
  %3 = load i32*, i32** @keysUsed, align 8, !dbg !598, !tbaa !496
  %4 = add i32 %1, -1, !dbg !600
  %5 = zext i32 %4 to i64, !dbg !598
  %6 = getelementptr inbounds i32, i32* %3, i64 %5, !dbg !598
  %7 = load i32, i32* %6, align 4, !dbg !598, !tbaa !513
  %8 = icmp eq i32 %7, 0, !dbg !598
  %9 = icmp eq i8* %0, null, !dbg !601
  %10 = or i1 %9, %8, !dbg !604
  br i1 %10, label %15, label %11, !dbg !604

; <label>:11:                                     ; preds = %2
  %12 = bitcast i8* %0 to i8**, !dbg !605
  %13 = getelementptr inbounds i8*, i8** %12, i64 %5, !dbg !607
  %14 = load i8*, i8** %13, align 8, !dbg !607, !tbaa !496
  br label %15, !dbg !609

; <label>:15:                                     ; preds = %2, %11
  %16 = phi i8* [ %14, %11 ], [ null, %2 ], !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  ret i8* %16, !dbg !612
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsSetValue(i8*, i32, i8*) local_unnamed_addr #0 !dbg !613 {
  %4 = icmp eq i8* %0, null, !dbg !625
  br i1 %4, label %10, label %5, !dbg !627

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to i8**, !dbg !628
  %7 = add i32 %1, -1, !dbg !630
  %8 = zext i32 %7 to i64, !dbg !632
  %9 = getelementptr inbounds i8*, i8** %6, i64 %8, !dbg !632
  store i8* %2, i8** %9, align 8, !dbg !633, !tbaa !496
  br label %10, !dbg !635

; <label>:10:                                     ; preds = %3, %5
  %11 = phi i32 [ 0, %5 ], [ 5, %3 ], !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  ret i32 %11, !dbg !638
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pteTlsFree(i32) local_unnamed_addr #0 !dbg !639 {
  %2 = load i32*, i32** @keysUsed, align 8, !dbg !646, !tbaa !496
  %3 = icmp eq i32* %2, null, !dbg !648
  br i1 %3, label %13, label %4, !dbg !649

; <label>:4:                                      ; preds = %1
  %5 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !650, !tbaa !496
  %6 = tail call i32 @pte_osMutexLock(%struct.uk_mutex* %5) #3, !dbg !652
  %7 = load i32*, i32** @keysUsed, align 8, !dbg !653, !tbaa !496
  %8 = add i32 %0, -1, !dbg !654
  %9 = zext i32 %8 to i64, !dbg !653
  %10 = getelementptr inbounds i32, i32* %7, i64 %9, !dbg !653
  store i32 0, i32* %10, align 4, !dbg !655, !tbaa !513
  %11 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !656, !tbaa !496
  %12 = tail call i32 @pte_osMutexUnlock(%struct.uk_mutex* %11) #3, !dbg !657
  br label %13, !dbg !659

; <label>:13:                                     ; preds = %1, %4
  %14 = phi i32 [ 0, %4 ], [ 2, %1 ], !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  ret i32 %14, !dbg !662
}

; Function Attrs: noredzone nounwind
define dso_local void @pteTlsThreadDestroy(i8*) local_unnamed_addr #0 !dbg !663 {
  tail call void @free(i8* %0) #3, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  ret void, !dbg !668
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @pteTlsGlobalDestroy() local_unnamed_addr #0 !dbg !669 {
  %1 = load %struct.uk_mutex*, %struct.uk_mutex** @globalTlsLock, align 8, !dbg !671, !tbaa !496
  %2 = tail call i32 @pte_osMutexDelete(%struct.uk_mutex* %1) #3, !dbg !672
  %3 = load i8*, i8** bitcast (i32** @keysUsed to i8**), align 8, !dbg !673, !tbaa !496
  tail call void @free(i8* %3) #3, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  ret void, !dbg !675
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
!509 = !DILocation(line: 52, column: 30, scope: !505)
!510 = !DILocation(line: 54, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !505, file: !3, line: 53, column: 9)
!512 = !DILocation(line: 54, column: 23, scope: !511)
!513 = !{!514, !514, i64 0}
!514 = !{!"int", !498, i64 0}
!515 = distinct !{!515, !508, !516, !517}
!516 = !DILocation(line: 55, column: 9, scope: !506)
!517 = !{!"llvm.loop.isvectorized", i32 1}
!518 = distinct !{!518, !519}
!519 = !{!"llvm.loop.unroll.disable"}
!520 = distinct !{!520, !508, !516, !521, !517}
!521 = !{!"llvm.loop.unroll.runtime.disable"}
!522 = !DILocation(line: 57, column: 20, scope: !507)
!523 = !DILocation(line: 44, column: 16, scope: !482)
!524 = !DILocation(line: 60, column: 5, scope: !507)
!525 = !DILocation(line: 0, scope: !526)
!526 = distinct !DILexicalBlock(scope: !501, file: !3, line: 62, column: 5)
!527 = !DILocation(line: 66, column: 3, scope: !482)
!528 = distinct !DISubprogram(name: "pteTlsThreadInit", scope: !3, file: !3, line: 70, type: !529, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!24}
!531 = !{!532, !533}
!532 = !DILocalVariable(name: "pTlsStruct", scope: !528, file: !3, line: 72, type: !25)
!533 = !DILocalVariable(name: "i", scope: !528, file: !3, line: 73, type: !23)
!534 = !DILocation(line: 75, column: 33, scope: !528)
!535 = !DILocation(line: 75, column: 46, scope: !528)
!536 = !DILocation(line: 75, column: 26, scope: !528)
!537 = !DILocation(line: 75, column: 16, scope: !528)
!538 = !DILocation(line: 72, column: 11, scope: !528)
!539 = !DILocation(line: 73, column: 7, scope: !528)
!540 = !DILocation(line: 78, column: 15, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 78, column: 3)
!542 = distinct !DILexicalBlock(scope: !528, file: !3, line: 78, column: 3)
!543 = !DILocation(line: 78, column: 14, scope: !541)
!544 = !DILocation(line: 78, column: 3, scope: !542)
!545 = !DILocation(line: 78, column: 29, scope: !541)
!546 = !DILocation(line: 80, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !541, file: !3, line: 79, column: 5)
!548 = !DILocation(line: 80, column: 21, scope: !547)
!549 = distinct !{!549, !544, !550, !517}
!550 = !DILocation(line: 81, column: 5, scope: !542)
!551 = distinct !{!551, !519}
!552 = distinct !{!552, !544, !550, !521, !517}
!553 = !DILocation(line: 83, column: 3, scope: !528)
!554 = distinct !DISubprogram(name: "pteTlsAlloc", scope: !3, file: !3, line: 87, type: !555, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !558)
!555 = !DISubroutineType(types: !556)
!556 = !{!485, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(name: "pKey", arg: 1, scope: !554, file: !3, line: 87, type: !557)
!560 = !DILocalVariable(name: "i", scope: !554, file: !3, line: 89, type: !23)
!561 = !DILocalVariable(name: "result", scope: !554, file: !3, line: 90, type: !485)
!562 = !DILocation(line: 87, column: 40, scope: !554)
!563 = !DILocation(line: 90, column: 16, scope: !554)
!564 = !DILocation(line: 93, column: 19, scope: !554)
!565 = !DILocation(line: 93, column: 3, scope: !554)
!566 = !DILocation(line: 89, column: 7, scope: !554)
!567 = !DILocation(line: 95, column: 14, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 95, column: 3)
!569 = distinct !DILexicalBlock(scope: !554, file: !3, line: 95, column: 3)
!570 = !DILocation(line: 95, column: 13, scope: !568)
!571 = !DILocation(line: 95, column: 3, scope: !569)
!572 = !DILocation(line: 97, column: 11, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 97, column: 11)
!574 = distinct !DILexicalBlock(scope: !568, file: !3, line: 96, column: 5)
!575 = !DILocation(line: 97, column: 23, scope: !573)
!576 = !DILocation(line: 97, column: 11, scope: !574)
!577 = !DILocation(line: 99, column: 23, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !3, line: 98, column: 9)
!579 = !DILocation(line: 101, column: 20, scope: !578)
!580 = !DILocation(line: 101, column: 17, scope: !578)
!581 = !DILocation(line: 103, column: 11, scope: !578)
!582 = !DILocation(line: 95, column: 28, scope: !568)
!583 = distinct !{!583, !571, !584}
!584 = !DILocation(line: 105, column: 5, scope: !569)
!585 = !DILocation(line: 0, scope: !554)
!586 = !DILocation(line: 107, column: 21, scope: !554)
!587 = !DILocation(line: 107, column: 3, scope: !554)
!588 = !DILocation(line: 109, column: 3, scope: !554)
!589 = distinct !DISubprogram(name: "pteTlsGetValue", scope: !3, file: !3, line: 113, type: !590, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{!24, !24, !7}
!592 = !{!593, !594, !595}
!593 = !DILocalVariable(name: "pTlsThreadStruct", arg: 1, scope: !589, file: !3, line: 113, type: !24)
!594 = !DILocalVariable(name: "index", arg: 2, scope: !589, file: !3, line: 113, type: !7)
!595 = !DILocalVariable(name: "pTls", scope: !589, file: !3, line: 115, type: !25)
!596 = !DILocation(line: 113, column: 29, scope: !589)
!597 = !DILocation(line: 113, column: 60, scope: !589)
!598 = !DILocation(line: 117, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !589, file: !3, line: 117, column: 7)
!600 = !DILocation(line: 117, column: 21, scope: !599)
!601 = !DILocation(line: 119, column: 16, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 119, column: 11)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 118, column: 5)
!604 = !DILocation(line: 117, column: 7, scope: !589)
!605 = !DILocation(line: 115, column: 17, scope: !589)
!606 = !DILocation(line: 115, column: 10, scope: !589)
!607 = !DILocation(line: 121, column: 18, scope: !608)
!608 = distinct !DILexicalBlock(scope: !602, file: !3, line: 120, column: 9)
!609 = !DILocation(line: 121, column: 11, scope: !608)
!610 = !DILocation(line: 0, scope: !611)
!611 = distinct !DILexicalBlock(scope: !599, file: !3, line: 129, column: 5)
!612 = !DILocation(line: 132, column: 1, scope: !589)
!613 = distinct !DISubprogram(name: "pteTlsSetValue", scope: !3, file: !3, line: 135, type: !614, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!485, !24, !7, !24}
!616 = !{!617, !618, !619, !620, !621}
!617 = !DILocalVariable(name: "pTlsThreadStruct", arg: 1, scope: !613, file: !3, line: 135, type: !24)
!618 = !DILocalVariable(name: "index", arg: 2, scope: !613, file: !3, line: 135, type: !7)
!619 = !DILocalVariable(name: "value", arg: 3, scope: !613, file: !3, line: 135, type: !24)
!620 = !DILocalVariable(name: "result", scope: !613, file: !3, line: 137, type: !485)
!621 = !DILocalVariable(name: "pTls", scope: !613, file: !3, line: 138, type: !25)
!622 = !DILocation(line: 135, column: 35, scope: !613)
!623 = !DILocation(line: 135, column: 66, scope: !613)
!624 = !DILocation(line: 135, column: 80, scope: !613)
!625 = !DILocation(line: 140, column: 12, scope: !626)
!626 = distinct !DILexicalBlock(scope: !613, file: !3, line: 140, column: 7)
!627 = !DILocation(line: 140, column: 7, scope: !613)
!628 = !DILocation(line: 138, column: 18, scope: !613)
!629 = !DILocation(line: 138, column: 11, scope: !613)
!630 = !DILocation(line: 142, column: 17, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !3, line: 141, column: 5)
!632 = !DILocation(line: 142, column: 7, scope: !631)
!633 = !DILocation(line: 142, column: 21, scope: !631)
!634 = !DILocation(line: 137, column: 16, scope: !613)
!635 = !DILocation(line: 144, column: 5, scope: !631)
!636 = !DILocation(line: 0, scope: !637)
!637 = distinct !DILexicalBlock(scope: !626, file: !3, line: 146, column: 5)
!638 = !DILocation(line: 150, column: 3, scope: !613)
!639 = distinct !DISubprogram(name: "pteTlsFree", scope: !3, file: !3, line: 154, type: !640, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{!485, !7}
!642 = !{!643, !644}
!643 = !DILocalVariable(name: "index", arg: 1, scope: !639, file: !3, line: 154, type: !7)
!644 = !DILocalVariable(name: "result", scope: !639, file: !3, line: 156, type: !485)
!645 = !DILocation(line: 154, column: 38, scope: !639)
!646 = !DILocation(line: 158, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !639, file: !3, line: 158, column: 7)
!648 = !DILocation(line: 158, column: 16, scope: !647)
!649 = !DILocation(line: 158, column: 7, scope: !639)
!650 = !DILocation(line: 160, column: 23, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !3, line: 159, column: 5)
!652 = !DILocation(line: 160, column: 7, scope: !651)
!653 = !DILocation(line: 162, column: 7, scope: !651)
!654 = !DILocation(line: 162, column: 21, scope: !651)
!655 = !DILocation(line: 162, column: 25, scope: !651)
!656 = !DILocation(line: 164, column: 25, scope: !651)
!657 = !DILocation(line: 164, column: 7, scope: !651)
!658 = !DILocation(line: 156, column: 16, scope: !639)
!659 = !DILocation(line: 167, column: 5, scope: !651)
!660 = !DILocation(line: 0, scope: !661)
!661 = distinct !DILexicalBlock(scope: !647, file: !3, line: 169, column: 5)
!662 = !DILocation(line: 173, column: 3, scope: !639)
!663 = distinct !DISubprogram(name: "pteTlsThreadDestroy", scope: !3, file: !3, line: 176, type: !222, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !664)
!664 = !{!665}
!665 = !DILocalVariable(name: "pTlsThreadStruct", arg: 1, scope: !663, file: !3, line: 176, type: !24)
!666 = !DILocation(line: 176, column: 33, scope: !663)
!667 = !DILocation(line: 178, column: 3, scope: !663)
!668 = !DILocation(line: 179, column: 1, scope: !663)
!669 = distinct !DISubprogram(name: "pteTlsGlobalDestroy", scope: !3, file: !3, line: 181, type: !420, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!670 = !{}
!671 = !DILocation(line: 183, column: 21, scope: !669)
!672 = !DILocation(line: 183, column: 3, scope: !669)
!673 = !DILocation(line: 184, column: 8, scope: !669)
!674 = !DILocation(line: 184, column: 3, scope: !669)
!675 = !DILocation(line: 185, column: 1, scope: !669)
