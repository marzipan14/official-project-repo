; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/misc/syslog.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/misc/syslog.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@lock = internal global %struct.uk_mutex { i32 0, %struct.uk_thread* null, %struct.uk_waitq { %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.uk_mutex* @lock to i8*), i64 16) to %struct.uk_waitq_entry**) } }, align 8, !dbg !0
@log_ident = internal global [32 x i8] zeroinitializer, align 16, !dbg !465
@log_opt = internal unnamed_addr global i32 0, align 4, !dbg !468
@log_facility = internal unnamed_addr global i32 8, align 4, !dbg !499
@log_mask = internal unnamed_addr global i32 255, align 4, !dbg !501
@.str = private unnamed_addr constant [9 x i8] c"%b %e %T\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"<%d>%s %s%s%.0d%s: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@wq_entries = external dso_local global [32 x %struct.uk_waitq_entry], align 16
@uk_pr_crit.__str = internal global [14 x i8] c"libnewlibglue\00", section ".data_shared", align 1, !dbg !470
@uk_pr_crit.__str.6 = internal global [9 x i8] c"syslog.c\00", section ".data_shared", align 1, !dbg !494
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"m->lock_count > 0\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @openlog(i8*, i32, i32) local_unnamed_addr #0 !dbg !513 {
  tail call fastcc void @uk_mutex_lock() #8, !dbg !526
  %4 = icmp eq i8* %0, null, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br i1 %4, label %9, label %5, !dbg !528

; <label>:5:                                      ; preds = %3
  %6 = tail call i64 @strnlen(i8* nonnull %0, i64 31) #9, !dbg !529
  %7 = tail call i8* @memcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @log_ident, i64 0, i64 0), i8* nonnull %0, i64 %6) #9, !dbg !531
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* @log_ident, i64 0, i64 %6, !dbg !532
  store i8 0, i8* %8, align 1, !dbg !533, !tbaa !534
  br label %10, !dbg !537

; <label>:9:                                      ; preds = %3
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @log_ident, i64 0, i64 0), align 16, !dbg !538, !tbaa !534
  br label %10

; <label>:10:                                     ; preds = %9, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i32 %1, i32* @log_opt, align 4, !dbg !540, !tbaa !541
  store i32 %2, i32* @log_facility, align 4, !dbg !543, !tbaa !541
  tail call fastcc void @uk_mutex_unlock() #8, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  ret void, !dbg !545
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @uk_mutex_lock() unnamed_addr #2 !dbg !546 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !571
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !571
  %3 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !573, !tbaa !574
  store volatile i32 %3, i32* %1, align 4, !dbg !572, !tbaa !541
  %4 = load %struct.uk_thread*, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !578, !tbaa !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !583, !srcloc !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  %6 = and i64 %5, -65536, !dbg !602
  %7 = inttoptr i64 %6 to %struct.uk_thread**, !dbg !603
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 65536, !dbg !605, !tbaa !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %9 = icmp eq %struct.uk_thread* %4, %8
  br label %10, !dbg !609

; <label>:10:                                     ; preds = %110, %0
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !610, !srcloc !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !618, !srcloc !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  %13 = and i64 %12, -65536, !dbg !630
  %14 = or i64 %13, 4097, !dbg !630
  %15 = add nsw i64 %14, -1, !dbg !630
  %16 = inttoptr i64 %15 to i32*, !dbg !631
  %17 = load i32, i32* %16, align 4096, !dbg !632, !tbaa !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %18 = sext i32 %17 to i64, !dbg !634
  %19 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %18, !dbg !634
  %20 = bitcast %struct.uk_waitq_entry* %19 to i8*, !dbg !634
  %21 = tail call i8* @memset(i8* nonnull %20, i32 0, i64 24) #9, !dbg !634
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !635, !srcloc !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %23 = and i64 %22, -65536, !dbg !641
  %24 = inttoptr i64 %23 to i64*, !dbg !642
  %25 = load i64, i64* %24, align 65536, !dbg !642, !tbaa !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %26 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %18, i32 1, !dbg !634
  %27 = bitcast %struct.uk_thread** %26 to i64*, !dbg !634
  store i64 %25, i64* %27, align 8, !dbg !634, !tbaa !645
  %28 = load volatile i32, i32* %1, align 4, !dbg !648, !tbaa !541
  %29 = icmp eq i32 %28, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %29, label %103, label %30, !dbg !651

; <label>:30:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br i1 %9, label %103, label %31, !dbg !652

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 0
  %33 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %18, i32 2, i32 0
  br label %34, !dbg !653

; <label>:34:                                     ; preds = %31, %70
  %35 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !653, !srcloc !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %36 = and i64 %35, -65536, !dbg !662
  %37 = inttoptr i64 %36 to %struct.uk_thread**, !dbg !663
  %38 = load %struct.uk_thread*, %struct.uk_thread** %37, align 65536, !dbg !665, !tbaa !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  %39 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !668
  %40 = load i32, i32* %32, align 8, !dbg !680, !tbaa !682
  %41 = icmp eq i32 %40, 0, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %41, label %42, label %44, !dbg !684

; <label>:42:                                     ; preds = %34
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %33, align 8, !dbg !685, !tbaa !688
  %43 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !685, !tbaa !689
  store %struct.uk_waitq_entry* %19, %struct.uk_waitq_entry** %43, align 8, !dbg !685, !tbaa !606
  store %struct.uk_waitq_entry** %33, %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !685, !tbaa !689
  store i32 1, i32* %32, align 8, !dbg !690, !tbaa !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br label %44, !dbg !691

; <label>:44:                                     ; preds = %34, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  %45 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 6, !dbg !702
  store i64 0, i64* %45, align 8, !dbg !703, !tbaa !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %46 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 5, !dbg !717
  %47 = load i32, i32* %46, align 8, !dbg !718, !tbaa !719
  %48 = and i32 %47, -2, !dbg !718
  store i32 %48, i32* %46, align 8, !dbg !718, !tbaa !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %49 = icmp eq %struct.uk_thread* %38, null, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %49, label %50, label %51, !dbg !729, !prof !730

; <label>:50:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !731
  tail call void @ukplat_terminate(i32 3) #10, !dbg !731
  unreachable

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 9, !dbg !733
  %53 = load %struct.uk_sched*, %struct.uk_sched** %52, align 8, !dbg !733, !tbaa !734
  %54 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %53, i64 0, i32 3, !dbg !735
  %55 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %54, align 8, !dbg !735, !tbaa !736
  tail call void %55(%struct.uk_sched* %53, %struct.uk_thread* nonnull %38) #9, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  tail call void @ukplat_lcpu_restore_irqf(i64 %39) #9, !dbg !742
  %56 = load volatile i32, i32* %1, align 4, !dbg !743, !tbaa !541
  %57 = icmp eq i32 %56, 0, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %57, label %73, label %58, !dbg !746

; <label>:58:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  %59 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !748, !srcloc !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %60 = and i64 %59, -65536, !dbg !759
  %61 = inttoptr i64 %60 to %struct.uk_thread**, !dbg !760
  %62 = load %struct.uk_thread*, %struct.uk_thread** %61, align 65536, !dbg !762, !tbaa !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  %63 = icmp eq %struct.uk_thread* %62, null, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br i1 %63, label %64, label %65, !dbg !768, !prof !730

; <label>:64:                                     ; preds = %58
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !769
  tail call void @ukplat_terminate(i32 3) #10, !dbg !769
  unreachable

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %62, i64 0, i32 9, !dbg !771
  %67 = load %struct.uk_sched*, %struct.uk_sched** %66, align 8, !dbg !771, !tbaa !734
  %68 = icmp eq %struct.uk_sched* %67, null, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %68, label %69, label %70, !dbg !776, !prof !730

; <label>:69:                                     ; preds = %65
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !777
  tail call void @ukplat_terminate(i32 3) #10, !dbg !777
  unreachable

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %67, i64 0, i32 0, !dbg !779
  %72 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %71, align 8, !dbg !779, !tbaa !780
  tail call void %72(%struct.uk_sched* nonnull %67) #9, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br label %34, !dbg !783, !llvm.loop !784

; <label>:73:                                     ; preds = %51
  %74 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !787
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %38) #9, !dbg !788
  %75 = load i32, i32* %32, align 8, !dbg !801, !tbaa !682
  %76 = icmp eq i32 %75, 0, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %76, label %102, label %77, !dbg !803

; <label>:77:                                     ; preds = %73
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !804, !tbaa !805
  %79 = icmp eq %struct.uk_waitq_entry* %78, %19, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br i1 %79, label %80, label %84, !dbg !806

; <label>:80:                                     ; preds = %77
  %81 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %33, align 8, !dbg !807, !tbaa !688
  store %struct.uk_waitq_entry* %81, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !807, !tbaa !805
  %82 = icmp eq %struct.uk_waitq_entry* %81, null, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %82, label %83, label %101, !dbg !811

; <label>:83:                                     ; preds = %80
  store %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !807, !tbaa !689
  br label %100, !dbg !807

; <label>:84:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  %85 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %78, i64 0, i32 2, i32 0, !dbg !812
  %86 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %85, align 8, !dbg !812, !tbaa !688
  %87 = icmp eq %struct.uk_waitq_entry* %86, %19, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %87, label %95, label %88, !dbg !812

; <label>:88:                                     ; preds = %84, %88
  %89 = phi %struct.uk_waitq_entry* [ %91, %88 ], [ %86, %84 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  %90 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %89, i64 0, i32 2, i32 0, !dbg !812
  %91 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %90, align 8, !dbg !812, !tbaa !688
  %92 = icmp eq %struct.uk_waitq_entry* %91, %19, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %92, label %93, label %88, !dbg !812, !llvm.loop !813

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %89, i64 0, i32 2, i32 0, !dbg !812
  br label %95, !dbg !815

; <label>:95:                                     ; preds = %93, %84
  %96 = phi %struct.uk_waitq_entry** [ %85, %84 ], [ %94, %93 ], !dbg !812
  %97 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %33, align 8, !dbg !815, !tbaa !688
  store %struct.uk_waitq_entry* %97, %struct.uk_waitq_entry** %96, align 8, !dbg !815, !tbaa !688
  %98 = icmp eq %struct.uk_waitq_entry* %97, null, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %98, label %99, label %100, !dbg !818

; <label>:99:                                     ; preds = %95
  store %struct.uk_waitq_entry** %96, %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !815, !tbaa !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br label %100, !dbg !815

; <label>:100:                                    ; preds = %95, %99, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %101, !dbg !819

; <label>:101:                                    ; preds = %100, %80
  store i32 0, i32* %32, align 8, !dbg !819, !tbaa !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %102, !dbg !820

; <label>:102:                                    ; preds = %73, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  tail call void @ukplat_lcpu_restore_irqf(i64 %74) #9, !dbg !822
  br label %103, !dbg !823

; <label>:103:                                    ; preds = %10, %30, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  %104 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !825
  %105 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !827, !tbaa !574
  %106 = icmp eq i32 %105, 0, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %106, label %111, label %107, !dbg !830

; <label>:107:                                    ; preds = %103
  %108 = load %struct.uk_thread*, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !831, !tbaa !579
  %109 = icmp eq %struct.uk_thread* %108, %8, !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  br i1 %109, label %111, label %110, !dbg !833

; <label>:110:                                    ; preds = %107
  tail call void @ukplat_lcpu_restore_irqf(i64 %104) #9, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br label %10, !dbg !835, !llvm.loop !836

; <label>:111:                                    ; preds = %103, %107
  %112 = add nsw i32 %105, 1, !dbg !839
  store i32 %112, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !839, !tbaa !574
  store %struct.uk_thread* %8, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !840, !tbaa !579
  tail call void @ukplat_lcpu_restore_irqf(i64 %104) #9, !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  ret void, !dbg !842
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @uk_mutex_unlock() unnamed_addr #2 !dbg !843 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !851
  %2 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !853, !tbaa !574
  %3 = icmp slt i32 %2, 1, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %3, label %4, label %5, !dbg !856, !prof !730

; <label>:4:                                      ; preds = %0
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !857
  tail call void @ukplat_terminate(i32 3) #10, !dbg !857
  unreachable

; <label>:5:                                      ; preds = %0
  %6 = add nsw i32 %2, -1, !dbg !859
  store i32 %6, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !859, !tbaa !574
  %7 = icmp eq i32 %6, 0, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %7, label %8, label %20, !dbg !862

; <label>:8:                                      ; preds = %5
  store %struct.uk_thread* null, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !863, !tbaa !579
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !865
  %10 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !876, !tbaa !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  %11 = icmp eq %struct.uk_waitq_entry* %10, null, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %11, label %19, label %12, !dbg !879

; <label>:12:                                     ; preds = %8, %12
  %13 = phi %struct.uk_waitq_entry* [ %15, %12 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %13, i64 0, i32 2, i32 0, !dbg !879
  %15 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %14, align 8, !dbg !879, !tbaa !688
  %16 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %13, i64 0, i32 1, !dbg !882
  %17 = load %struct.uk_thread*, %struct.uk_thread** %16, align 8, !dbg !882, !tbaa !645
  tail call void @uk_thread_wake(%struct.uk_thread* %17) #9, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  %18 = icmp eq %struct.uk_waitq_entry* %15, null, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %18, label %19, label %12, !dbg !879, !llvm.loop !884

; <label>:19:                                     ; preds = %12, %8
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #9, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br label %20, !dbg !889

; <label>:20:                                     ; preds = %19, %5
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #9, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  ret void, !dbg !891
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @closelog() local_unnamed_addr #5 !dbg !892 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  ret void, !dbg !894
}

; Function Attrs: noredzone nounwind
define dso_local i32 @setlogmask(i32) local_unnamed_addr #0 !dbg !895 {
  tail call fastcc void @uk_mutex_lock() #8, !dbg !902
  %2 = load i32, i32* @log_mask, align 4, !dbg !903, !tbaa !541
  %3 = icmp eq i32 %0, 0, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %3, label %5, label %4, !dbg !907

; <label>:4:                                      ; preds = %1
  store i32 %0, i32* @log_mask, align 4, !dbg !908, !tbaa !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br label %5, !dbg !909

; <label>:5:                                      ; preds = %1, %4
  tail call fastcc void @uk_mutex_unlock() #8, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  ret i32 %2, !dbg !911
}

; Function Attrs: noredzone nounwind
define dso_local void @syslog(i32, i8*, ...) local_unnamed_addr #0 !dbg !912 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca [256 x i8], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #6, !dbg !950
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !952
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !952
  %10 = bitcast i64* %5 to i8*, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #6, !dbg !954
  %11 = bitcast %struct.tm* %6 to i8*, !dbg !955
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %11) #6, !dbg !955
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %12) #6, !dbg !956
  %13 = load i32, i32* @log_mask, align 4, !dbg !958, !tbaa !541
  %14 = and i32 %0, 7, !dbg !960
  %15 = shl i32 1, %14, !dbg !960
  %16 = and i32 %13, %15, !dbg !961
  %17 = icmp eq i32 %16, 0, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br i1 %17, label %75, label %18, !dbg !962

; <label>:18:                                     ; preds = %2
  %19 = icmp ugt i32 %0, 1023, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br i1 %19, label %75, label %20, !dbg !964

; <label>:20:                                     ; preds = %18
  tail call fastcc void @uk_mutex_lock() #8, !dbg !965
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !966
  call void @llvm.va_start(i8* nonnull %8), !dbg !966
  %22 = and i32 %0, 1016, !dbg !967
  %23 = icmp eq i32 %22, 0, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %23, label %24, label %27, !dbg !969

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* @log_facility, align 4, !dbg !970, !tbaa !541
  %26 = or i32 %25, %0, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br label %27, !dbg !972

; <label>:27:                                     ; preds = %20, %24
  %28 = phi i32 [ %0, %20 ], [ %26, %24 ]
  %29 = call i64 @time(i64* null) #9, !dbg !973
  store i64 %29, i64* %5, align 8, !dbg !975, !tbaa !976
  %30 = call %struct.tm* @gmtime_r(i64* nonnull %5, %struct.tm* nonnull %6) #9, !dbg !978
  %31 = call i64 @strftime(i8* nonnull %9, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* nonnull %6) #9, !dbg !979
  %32 = load i32, i32* @log_opt, align 4, !dbg !980, !tbaa !541
  %33 = and i32 %32, 1, !dbg !981
  %34 = icmp eq i32 %33, 0, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %34, label %37, label %35, !dbg !982

; <label>:35:                                     ; preds = %27
  %36 = call i32 @getpid() #9, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br label %37, !dbg !982

; <label>:37:                                     ; preds = %27, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %27 ], !dbg !982
  %39 = icmp eq i32 %38, 0, !dbg !985
  %40 = zext i1 %39 to i64, !dbg !986
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.2, i64 0, i64 %40, !dbg !986
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.3, i64 0, i64 %40, !dbg !987
  %43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* nonnull %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @log_ident, i64 0, i64 0), i8* nonnull %41, i32 %38, i8* nonnull %42) #9, !dbg !988
  %44 = sext i32 %43 to i64, !dbg !990
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %44, !dbg !990
  %46 = sub nsw i64 256, %44, !dbg !991
  %47 = call i32 @vsnprintf(i8* nonnull %45, i64 %46, i8* %1, %struct.__va_list_tag* nonnull %21) #9, !dbg !992
  %48 = icmp sgt i32 %47, -1, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br i1 %48, label %49, label %74, !dbg !996

; <label>:49:                                     ; preds = %37
  %50 = sub nsw i32 256, %43, !dbg !997
  %51 = icmp slt i32 %47, %50, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  %52 = add nsw i32 %47, %43, !dbg !1002
  %53 = select i1 %51, i32 %52, i32 255, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %54 = add nsw i32 %53, -1, !dbg !1003
  %55 = sext i32 %54 to i64, !dbg !1005
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %55, !dbg !1005
  %57 = load i8, i8* %56, align 1, !dbg !1005, !tbaa !534
  %58 = icmp eq i8 %57, 10, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %58, label %63, label %59, !dbg !1007

; <label>:59:                                     ; preds = %49
  %60 = add nsw i32 %53, 1, !dbg !1008
  %61 = sext i32 %53 to i64, !dbg !1009
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %61, !dbg !1009
  store i8 10, i8* %62, align 1, !dbg !1010, !tbaa !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br label %63, !dbg !1009

; <label>:63:                                     ; preds = %49, %59
  %64 = phi i32 [ %60, %59 ], [ %53, %49 ], !dbg !1011
  %65 = sext i32 %64 to i64, !dbg !1012
  %66 = and i32 %28, 7, !dbg !1013
  %67 = icmp ugt i32 %66, 2, !dbg !1014
  %68 = call %struct._reent* @__getreent() #9, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  %69 = getelementptr inbounds %struct._reent, %struct._reent* %68, i64 0, i32 2, !dbg !1016
  %70 = getelementptr inbounds %struct._reent, %struct._reent* %68, i64 0, i32 3, !dbg !1017
  %71 = select i1 %67, %struct.__sFILE** %70, %struct.__sFILE** %69, !dbg !1013
  %72 = load %struct.__sFILE*, %struct.__sFILE** %71, align 8, !dbg !1015, !tbaa !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  %73 = call i64 @fwrite(i8* nonnull %12, i64 1, i64 %65, %struct.__sFILE* %72) #9, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br label %74, !dbg !1019

; <label>:74:                                     ; preds = %63, %37
  call void @llvm.va_end(i8* nonnull %8), !dbg !1020
  call fastcc void @uk_mutex_unlock() #8, !dbg !1021
  br label %75, !dbg !1022

; <label>:75:                                     ; preds = %18, %2, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %12) #6, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %11) #6, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #6, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #6, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  ret void, !dbg !1022
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @getpid() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @fwrite(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #2 !dbg !472 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1024
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1026
  call void @llvm.va_start(i8* nonnull %3), !dbg !1026
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.6, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !1027
  call void @llvm.va_end(i8* nonnull %3), !dbg !1030
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  ret void, !dbg !1031
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #7

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @uk_thread_wake(%struct.uk_thread*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!509, !510, !511}
!llvm.ident = !{!512}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !3, line: 70, type: !503, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !464)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/misc/syslog.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !6, line: 92, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !13, line: 68, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!19 = !{!20, !21, !128, !95}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !24, line: 59, size: 1024, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !30, !32, !33, !34, !39, !44, !50, !52, !68, !219, !220, !221, !434}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !24, line: 60, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !23, file: !24, line: 61, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !23, file: !24, line: 62, baseType: !31, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !23, file: !24, line: 63, baseType: !31, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !23, file: !24, line: 64, baseType: !35, size: 128, offset: 256)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !23, file: !24, line: 64, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !35, file: !24, line: 64, baseType: !22, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !35, file: !24, line: 64, baseType: !21, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !24, line: 65, baseType: !40, size: 32, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 48, baseType: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !43, line: 79, baseType: !7)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !23, file: !24, line: 66, baseType: !45, size: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !46, line: 49, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !48, line: 128, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !23, file: !24, line: 67, baseType: !51, size: 8, offset: 512)
!51 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !23, file: !24, line: 68, baseType: !53, size: 128, offset: 576)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !54, line: 42, size: 128, elements: !55)
!54 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !{!56, !66}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !53, file: !54, line: 42, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !54, line: 35, size: 192, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !58, file: !54, line: 36, baseType: !20, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !58, file: !54, line: 37, baseType: !22, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !58, file: !54, line: 38, baseType: !63, size: 64, offset: 128)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !54, line: 38, size: 64, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !63, file: !54, line: 38, baseType: !57, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !53, file: !54, line: 42, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !23, file: !24, line: 69, baseType: !69, size: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !71, line: 90, size: 2176, elements: !72)
!71 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !{!73, !78, !96, !101, !103, !105, !110, !118, !123, !129, !130, !131, !136, !216, !217, !218}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !70, file: !71, line: 91, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !71, line: 68, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !69}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !70, file: !71, line: 93, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !71, line: 71, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!20, !69, !22, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !86, line: 62, baseType: !87)
!86 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !86, line: 55, size: 128, elements: !88)
!88 = !{!89, !90, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !87, file: !86, line: 57, baseType: !51, size: 8)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !87, file: !86, line: 59, baseType: !91, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !86, line: 53, baseType: !20)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !87, file: !86, line: 61, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !46, line: 48, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !48, line: 129, baseType: !95)
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !70, file: !71, line: 94, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !71, line: 74, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !69, !22}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !70, file: !71, line: 95, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !71, line: 76, baseType: !98)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !70, file: !71, line: 96, baseType: !104, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !71, line: 78, baseType: !98)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !70, file: !71, line: 98, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !71, line: 81, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!20, !69, !22, !91}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !70, file: !71, line: 99, baseType: !111, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !71, line: 83, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!20, !69, !115, !117}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !70, file: !71, line: 100, baseType: !119, size: 64, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !71, line: 85, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!20, !69, !22, !20}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !70, file: !71, line: 101, baseType: !124, size: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !71, line: 87, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!20, !69, !115, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !70, file: !71, line: 104, baseType: !51, size: 8, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !70, file: !71, line: 105, baseType: !23, size: 1024, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !70, file: !71, line: 106, baseType: !132, size: 128, offset: 1664)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !24, line: 93, size: 128, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !132, file: !24, line: 93, baseType: !22, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !132, file: !24, line: 93, baseType: !21, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !70, file: !71, line: 107, baseType: !137, size: 192, offset: 1792)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !138, line: 59, size: 192, elements: !139)
!138 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !{!140, !207, !211}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !137, file: !138, line: 61, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !138, line: 51, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!31, !145, !95, !95}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !147, line: 77, size: 832, elements: !148)
!147 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !{!149, !158, !163, !168, !174, !176, !181, !182, !183, !188, !193, !198, !199, !200}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !146, file: !147, line: 79, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !147, line: 54, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!31, !145, !154}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 40, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !157, line: 129, baseType: !95)
!157 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!158 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !146, file: !147, line: 80, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !147, line: 56, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!31, !145, !154, !154}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !146, file: !147, line: 81, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !147, line: 62, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!31, !145, !31, !154}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !146, file: !147, line: 82, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !147, line: 58, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!20, !145, !173, !154, !154}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !146, file: !147, line: 83, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !147, line: 60, baseType: !160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !146, file: !147, line: 84, baseType: !177, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !147, line: 64, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !145, !31}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !146, file: !147, line: 87, baseType: !177, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !146, file: !147, line: 88, baseType: !150, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !146, file: !147, line: 92, baseType: !184, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !147, line: 66, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!31, !145, !95}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !146, file: !147, line: 93, baseType: !189, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !147, line: 68, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !145, !31, !95}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !146, file: !147, line: 99, baseType: !194, size: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !147, line: 70, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!20, !145, !31, !154}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !146, file: !147, line: 100, baseType: !154, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !147, line: 103, baseType: !145, size: 64, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !146, file: !147, line: 104, baseType: !201, offset: 832)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !205)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !41, line: 20, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !43, line: 41, baseType: !204)
!204 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!205 = !{!206}
!206 = !DISubrange(count: -1)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !137, file: !138, line: 63, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !31}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !137, file: !138, line: 65, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !138, line: 56, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !31, !31}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !70, file: !71, line: 108, baseType: !145, size: 64, offset: 1984)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !71, line: 109, baseType: !69, size: 64, offset: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !70, file: !71, line: 110, baseType: !31, size: 64, offset: 2112)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !23, file: !24, line: 70, baseType: !31, size: 64, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !23, file: !24, line: 72, baseType: !20, size: 32, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !23, file: !24, line: 82, baseType: !222, size: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !224, line: 569, size: 14912, elements: !225)
!224 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!225 = !{!226, !227, !302, !303, !304, !305, !309, !310, !313, !314, !318, !330, !331, !332, !334, !335, !336, !398, !419, !420, !425, !432}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !223, file: !224, line: 571, baseType: !20, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !223, file: !224, line: 576, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !224, line: 287, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !224, line: 181, size: 1408, elements: !231)
!231 = !{!232, !235, !236, !237, !239, !240, !245, !246, !247, !253, !257, !262, !266, !267, !268, !269, !273, !277, !278, !279, !281, !282, !286, !301}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !230, file: !224, line: 182, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !230, file: !224, line: 183, baseType: !20, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !230, file: !224, line: 184, baseType: !20, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !230, file: !224, line: 185, baseType: !238, size: 16, offset: 128)
!238 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !230, file: !224, line: 186, baseType: !238, size: 16, offset: 144)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !230, file: !224, line: 187, baseType: !241, size: 128, offset: 192)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !224, line: 117, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !241, file: !224, line: 118, baseType: !233, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !241, file: !224, line: 119, baseType: !20, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !230, file: !224, line: 188, baseType: !20, size: 32, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !230, file: !224, line: 195, baseType: !31, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !230, file: !224, line: 197, baseType: !248, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !222, !31, !252, !20}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !157, line: 145, baseType: !49)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !230, file: !224, line: 199, baseType: !254, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!251, !222, !31, !27, !20}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !230, file: !224, line: 202, baseType: !258, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !222, !31, !261, !20}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !157, line: 114, baseType: !49)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !230, file: !224, line: 203, baseType: !263, size: 64, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!20, !222, !31}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !230, file: !224, line: 206, baseType: !241, size: 128, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !230, file: !224, line: 207, baseType: !233, size: 64, offset: 832)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !230, file: !224, line: 208, baseType: !20, size: 32, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !230, file: !224, line: 211, baseType: !270, size: 24, offset: 928)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 24, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !230, file: !224, line: 212, baseType: !274, size: 8, offset: 952)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 8, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 1)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !230, file: !224, line: 215, baseType: !241, size: 128, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !230, file: !224, line: 218, baseType: !20, size: 32, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !230, file: !224, line: 219, baseType: !280, size: 64, offset: 1152)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !157, line: 44, baseType: !49)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !230, file: !224, line: 222, baseType: !222, size: 64, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !230, file: !224, line: 226, baseType: !283, size: 32, offset: 1280)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !157, line: 175, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !285, line: 12, baseType: !20)
!285 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !230, file: !224, line: 228, baseType: !287, size: 64, offset: 1312)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !157, line: 171, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 163, size: 64, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !288, file: !157, line: 165, baseType: !20, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !288, file: !157, line: 170, baseType: !292, size: 32, offset: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !288, file: !157, line: 166, size: 32, elements: !293)
!293 = !{!294, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !292, file: !157, line: 168, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !296, line: 124, baseType: !7)
!296 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !292, file: !157, line: 169, baseType: !298, size: 32)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 32, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 4)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !230, file: !224, line: 229, baseType: !20, size: 32, offset: 1376)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !223, file: !224, line: 576, baseType: !228, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !223, file: !224, line: 576, baseType: !228, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !223, file: !224, line: 578, baseType: !20, size: 32, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !223, file: !224, line: 579, baseType: !306, size: 200, offset: 288)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 25)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !223, file: !224, line: 582, baseType: !20, size: 32, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !223, file: !224, line: 583, baseType: !311, size: 64, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !224, line: 40, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !223, file: !224, line: 585, baseType: !20, size: 32, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !223, file: !224, line: 587, baseType: !315, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !222}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !223, file: !224, line: 590, baseType: !319, size: 64, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !224, line: 47, size: 256, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !320, file: !224, line: 49, baseType: !319, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !320, file: !224, line: 50, baseType: !20, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !320, file: !224, line: 50, baseType: !20, size: 32, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !320, file: !224, line: 50, baseType: !20, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !320, file: !224, line: 50, baseType: !20, size: 32, offset: 160)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !320, file: !224, line: 51, baseType: !328, size: 32, offset: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 32, elements: !275)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !224, line: 25, baseType: !7)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !223, file: !224, line: 591, baseType: !20, size: 32, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !223, file: !224, line: 592, baseType: !319, size: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !223, file: !224, line: 593, baseType: !333, size: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !223, file: !224, line: 596, baseType: !20, size: 32, offset: 1024)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !223, file: !224, line: 597, baseType: !252, size: 64, offset: 1088)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !223, file: !224, line: 632, baseType: !337, size: 2880, offset: 1152)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 599, size: 2880, elements: !338)
!338 = !{!339, !389}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !337, file: !224, line: 622, baseType: !340, size: 1728)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !224, line: 601, size: 1728, elements: !341)
!341 = !{!342, !343, !344, !348, !360, !361, !363, !371, !372, !373, !374, !378, !382, !383, !384, !385, !386, !387, !388}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !340, file: !224, line: 603, baseType: !7, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !340, file: !224, line: 604, baseType: !252, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !340, file: !224, line: 605, baseType: !345, size: 208, offset: 128)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 208, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 26)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !340, file: !224, line: 606, baseType: !349, size: 288, offset: 352)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !224, line: 55, size: 288, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !349, file: !224, line: 57, baseType: !20, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !349, file: !224, line: 58, baseType: !20, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !349, file: !224, line: 59, baseType: !20, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !349, file: !224, line: 60, baseType: !20, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !349, file: !224, line: 61, baseType: !20, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !349, file: !224, line: 62, baseType: !20, size: 32, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !349, file: !224, line: 63, baseType: !20, size: 32, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !349, file: !224, line: 64, baseType: !20, size: 32, offset: 224)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !349, file: !224, line: 65, baseType: !20, size: 32, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !340, file: !224, line: 607, baseType: !20, size: 32, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !340, file: !224, line: 608, baseType: !362, size: 64, offset: 704)
!362 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !340, file: !224, line: 609, baseType: !364, size: 112, offset: 768)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !224, line: 319, size: 112, elements: !365)
!365 = !{!366, !369, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !364, file: !224, line: 320, baseType: !367, size: 48)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 48, elements: !271)
!368 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !364, file: !224, line: 321, baseType: !367, size: 48, offset: 48)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !364, file: !224, line: 322, baseType: !368, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !340, file: !224, line: 610, baseType: !287, size: 64, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !340, file: !224, line: 611, baseType: !287, size: 64, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !340, file: !224, line: 612, baseType: !287, size: 64, offset: 1024)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !340, file: !224, line: 613, baseType: !375, size: 64, offset: 1088)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !340, file: !224, line: 614, baseType: !379, size: 192, offset: 1152)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 24)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !340, file: !224, line: 615, baseType: !20, size: 32, offset: 1344)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !340, file: !224, line: 616, baseType: !287, size: 64, offset: 1376)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !340, file: !224, line: 617, baseType: !287, size: 64, offset: 1440)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !340, file: !224, line: 618, baseType: !287, size: 64, offset: 1504)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !340, file: !224, line: 619, baseType: !287, size: 64, offset: 1568)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !340, file: !224, line: 620, baseType: !287, size: 64, offset: 1632)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !340, file: !224, line: 621, baseType: !20, size: 32, offset: 1696)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !337, file: !224, line: 631, baseType: !390, size: 2880)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !224, line: 626, size: 2880, elements: !391)
!391 = !{!392, !396}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !390, file: !224, line: 629, baseType: !393, size: 1920)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1920, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 30)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !390, file: !224, line: 630, baseType: !397, size: 960, offset: 1920)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !394)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !223, file: !224, line: 636, baseType: !399, size: 64, offset: 4032)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !224, line: 93, size: 6336, elements: !401)
!401 = !{!402, !403, !404, !411}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !400, file: !224, line: 94, baseType: !399, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !400, file: !224, line: 95, baseType: !20, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !400, file: !224, line: 97, baseType: !405, size: 2048, offset: 128)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 2048, elements: !409)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null}
!409 = !{!410}
!410 = !DISubrange(count: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !400, file: !224, line: 98, baseType: !412, size: 4160, offset: 2176)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !224, line: 74, size: 4160, elements: !413)
!413 = !{!414, !416, !417, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !412, file: !224, line: 75, baseType: !415, size: 2048)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !409)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !412, file: !224, line: 76, baseType: !415, size: 2048, offset: 2048)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !412, file: !224, line: 78, baseType: !329, size: 32, offset: 4096)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !412, file: !224, line: 81, baseType: !329, size: 32, offset: 4128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !223, file: !224, line: 637, baseType: !400, size: 6336, offset: 4096)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !223, file: !224, line: 641, baseType: !421, size: 64, offset: 10432)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !20}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !223, file: !224, line: 646, baseType: !426, size: 192, offset: 10496)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !224, line: 291, size: 192, elements: !427)
!427 = !{!428, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !426, file: !224, line: 293, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !426, file: !224, line: 294, baseType: !20, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !426, file: !224, line: 295, baseType: !228, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !223, file: !224, line: 648, baseType: !433, size: 4224, offset: 10688)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4224, elements: !271)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !23, file: !24, line: 85, baseType: !435, size: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !6, line: 114, size: 640, elements: !437)
!437 = !{!438, !442, !443, !450, !463}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !436, file: !6, line: 116, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !440, line: 64, baseType: !441)
!440 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !440, line: 63, baseType: !95)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !436, file: !6, line: 118, baseType: !439, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !436, file: !6, line: 120, baseType: !444, size: 128, offset: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !445, line: 51, size: 128, elements: !446)
!445 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !445, line: 52, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !444, file: !445, line: 53, baseType: !448, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !436, file: !6, line: 122, baseType: !451, size: 256, offset: 256)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !6, line: 98, size: 256, elements: !452)
!452 = !{!453, !454, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !451, file: !6, line: 107, baseType: !5, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !451, file: !6, line: 109, baseType: !439, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !451, file: !6, line: 111, baseType: !456, size: 96, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !440, line: 72, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 68, size: 96, elements: !458)
!458 = !{!459, !460, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !457, file: !440, line: 69, baseType: !20, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !457, file: !440, line: 70, baseType: !20, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !457, file: !440, line: 71, baseType: !462, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !440, line: 61, baseType: !20)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !436, file: !6, line: 124, baseType: !444, size: 128, offset: 512)
!464 = !{!465, !468, !470, !494, !0, !499, !501}
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "log_ident", scope: !2, file: !3, line: 71, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !409)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "log_opt", scope: !2, file: !3, line: 72, type: !20, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "__str", scope: !472, file: !473, line: 198, type: !491, isLocal: true, isDefinition: true)
!472 = distinct !DISubprogram(name: "uk_pr_crit", scope: !473, file: !473, line: 194, type: !474, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !476)
!473 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!474 = !DISubroutineType(types: !475)
!475 = !{null, !27, null}
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "fmt", arg: 1, scope: !472, file: !473, line: 194, type: !27)
!478 = !DILocalVariable(name: "argp", scope: !472, file: !473, line: 196, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !480, line: 46, baseType: !481)
!480 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !482, line: 51, baseType: !483)
!482 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 113, baseType: !484)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 192, elements: !275)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 113, size: 192, elements: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !485, file: !3, line: 113, baseType: !7, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !485, file: !3, line: 113, baseType: !7, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !485, file: !3, line: 113, baseType: !31, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !485, file: !3, line: 113, baseType: !31, size: 64, offset: 128)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 112, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 14)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "__str", scope: !472, file: !473, line: 198, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 72, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 9)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "log_facility", scope: !2, file: !3, line: 74, type: !20, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "log_mask", scope: !2, file: !3, line: 73, type: !20, isLocal: true, isDefinition: true)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mutex", file: !504, line: 58, size: 256, elements: !505)
!504 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/mutex.h", directory: "/root/.unikraft/apps/redis/build")
!505 = !{!506, !507, !508}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !503, file: !504, line: 59, baseType: !20, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !503, file: !504, line: 60, baseType: !22, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !503, file: !504, line: 61, baseType: !53, size: 128, offset: 128)
!509 = !{i32 2, !"Dwarf Version", i32 4}
!510 = !{i32 2, !"Debug Info Version", i32 3}
!511 = !{i32 1, !"wchar_size", i32 4}
!512 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!513 = distinct !DISubprogram(name: "openlog", scope: !3, file: !3, line: 76, type: !514, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !27, !20, !20}
!516 = !{!517, !518, !519, !520}
!517 = !DILocalVariable(name: "ident", arg: 1, scope: !513, file: !3, line: 76, type: !27)
!518 = !DILocalVariable(name: "opt", arg: 2, scope: !513, file: !3, line: 76, type: !20)
!519 = !DILocalVariable(name: "facility", arg: 3, scope: !513, file: !3, line: 76, type: !20)
!520 = !DILocalVariable(name: "n", scope: !521, file: !3, line: 81, type: !154)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 80, column: 13)
!522 = distinct !DILexicalBlock(scope: !513, file: !3, line: 80, column: 6)
!523 = !DILocation(line: 76, column: 26, scope: !513)
!524 = !DILocation(line: 76, column: 37, scope: !513)
!525 = !DILocation(line: 76, column: 46, scope: !513)
!526 = !DILocation(line: 78, column: 2, scope: !513)
!527 = !DILocation(line: 80, column: 6, scope: !522)
!528 = !DILocation(line: 80, column: 6, scope: !513)
!529 = !DILocation(line: 83, column: 7, scope: !521)
!530 = !DILocation(line: 81, column: 10, scope: !521)
!531 = !DILocation(line: 84, column: 3, scope: !521)
!532 = !DILocation(line: 85, column: 3, scope: !521)
!533 = !DILocation(line: 85, column: 16, scope: !521)
!534 = !{!535, !535, i64 0}
!535 = !{!"omnipotent char", !536, i64 0}
!536 = !{!"Simple C/C++ TBAA"}
!537 = !DILocation(line: 86, column: 2, scope: !521)
!538 = !DILocation(line: 87, column: 16, scope: !539)
!539 = distinct !DILexicalBlock(scope: !522, file: !3, line: 86, column: 9)
!540 = !DILocation(line: 89, column: 10, scope: !513)
!541 = !{!542, !542, i64 0}
!542 = !{!"int", !535, i64 0}
!543 = !DILocation(line: 90, column: 15, scope: !513)
!544 = !DILocation(line: 92, column: 2, scope: !513)
!545 = !DILocation(line: 93, column: 1, scope: !513)
!546 = distinct !DISubprogram(name: "uk_mutex_lock", scope: !504, file: !504, line: 69, type: !547, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !550)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!550 = !{!551, !552, !553, !554, !557, !559, !562, !567, !568, !569}
!551 = !DILocalVariable(name: "m", arg: 1, scope: !546, file: !504, line: 69, type: !549)
!552 = !DILocalVariable(name: "current", scope: !546, file: !504, line: 71, type: !22)
!553 = !DILocalVariable(name: "irqf", scope: !546, file: !504, line: 72, type: !95)
!554 = !DILocalVariable(name: "wq", scope: !546, file: !504, line: 77, type: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!557 = !DILocalVariable(name: "lock_count", scope: !546, file: !504, line: 78, type: !558)
!558 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!559 = !DILocalVariable(name: "owner", scope: !546, file: !504, line: 79, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!562 = !DILocalVariable(name: "__current", scope: !563, file: !504, line: 87, type: !22)
!563 = distinct !DILexicalBlock(scope: !564, file: !504, line: 86, column: 5)
!564 = distinct !DILexicalBlock(scope: !565, file: !504, line: 85, column: 11)
!565 = distinct !DILexicalBlock(scope: !566, file: !504, line: 85, column: 2)
!566 = distinct !DILexicalBlock(scope: !546, file: !504, line: 85, column: 2)
!567 = !DILocalVariable(name: "flags", scope: !563, file: !504, line: 88, type: !95)
!568 = !DILocalVariable(name: "__cur", scope: !563, file: !504, line: 89, type: !22)
!569 = !DILocalVariable(name: "__wait", scope: !563, file: !504, line: 89, type: !57)
!570 = !DILocation(line: 69, column: 51, scope: !546)
!571 = !DILocation(line: 78, column: 2, scope: !546)
!572 = !DILocation(line: 78, column: 15, scope: !546)
!573 = !DILocation(line: 78, column: 31, scope: !546)
!574 = !{!575, !542, i64 0}
!575 = !{!"uk_mutex", !542, i64 0, !576, i64 8, !577, i64 16}
!576 = !{!"any pointer", !535, i64 0}
!577 = !{!"uk_waitq", !576, i64 0, !576, i64 8}
!578 = !DILocation(line: 79, column: 40, scope: !546)
!579 = !{!575, !576, i64 8}
!580 = !DILocation(line: 79, column: 29, scope: !546)
!581 = !DILocation(line: 81, column: 2, scope: !582)
!582 = distinct !DILexicalBlock(scope: !546, file: !504, line: 81, column: 2)
!583 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !590)
!584 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !585, file: !585, line: 116, type: !586, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !588)
!585 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!586 = !DISubroutineType(types: !587)
!587 = !{!95}
!588 = !{!589}
!589 = !DILocalVariable(name: "sp", scope: !584, file: !585, line: 118, type: !95)
!590 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !597)
!591 = distinct !DISubprogram(name: "uk_thread_current", scope: !24, file: !24, line: 151, type: !592, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!22}
!594 = !{!595, !596}
!595 = !DILocalVariable(name: "current", scope: !591, file: !24, line: 153, type: !21)
!596 = !DILocalVariable(name: "sp", scope: !591, file: !24, line: 154, type: !95)
!597 = distinct !DILocation(line: 83, column: 2, scope: !546)
!598 = !{i32 547740}
!599 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !590)
!600 = !DILocation(line: 121, column: 2, scope: !584, inlinedAt: !590)
!601 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !597)
!602 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !597)
!603 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !597)
!604 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !597)
!605 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !597)
!606 = !{!576, !576, i64 0}
!607 = !DILocation(line: 158, column: 2, scope: !591, inlinedAt: !597)
!608 = !DILocation(line: 71, column: 20, scope: !546)
!609 = !DILocation(line: 85, column: 2, scope: !546)
!610 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !611)
!611 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !612)
!612 = distinct !DILocation(line: 89, column: 3, scope: !563)
!613 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !611)
!614 = !DILocation(line: 121, column: 2, scope: !584, inlinedAt: !611)
!615 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !612)
!616 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !612)
!617 = !DILocation(line: 158, column: 2, scope: !591, inlinedAt: !612)
!618 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !619)
!619 = distinct !DILocation(line: 49, column: 21, scope: !620, inlinedAt: !626)
!620 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !621, file: !621, line: 47, type: !622, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !624)
!621 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!622 = !DISubroutineType(types: !623)
!623 = !{!20}
!624 = !{!625}
!625 = !DILocalVariable(name: "sp", scope: !620, file: !621, line: 49, type: !95)
!626 = distinct !DILocation(line: 89, column: 3, scope: !563)
!627 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !619)
!628 = !DILocation(line: 121, column: 2, scope: !584, inlinedAt: !619)
!629 = !DILocation(line: 49, column: 16, scope: !620, inlinedAt: !626)
!630 = !DILocation(line: 50, column: 19, scope: !620, inlinedAt: !626)
!631 = !DILocation(line: 50, column: 11, scope: !620, inlinedAt: !626)
!632 = !DILocation(line: 50, column: 9, scope: !620, inlinedAt: !626)
!633 = !DILocation(line: 50, column: 2, scope: !620, inlinedAt: !626)
!634 = !DILocation(line: 89, column: 3, scope: !563)
!635 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !636)
!636 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !637)
!637 = distinct !DILocation(line: 89, column: 3, scope: !563)
!638 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !636)
!639 = !DILocation(line: 121, column: 2, scope: !584, inlinedAt: !636)
!640 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !637)
!641 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !637)
!642 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !637)
!643 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !637)
!644 = !DILocation(line: 158, column: 2, scope: !591, inlinedAt: !637)
!645 = !{!646, !576, i64 8}
!646 = !{!"uk_waitq_entry", !542, i64 0, !576, i64 8, !647, i64 16}
!647 = !{!"", !576, i64 0}
!648 = !DILocation(line: 90, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !563, file: !504, line: 90, column: 7)
!650 = !DILocation(line: 90, column: 18, scope: !649)
!651 = !DILocation(line: 90, column: 23, scope: !649)
!652 = !DILocation(line: 90, column: 7, scope: !563)
!653 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !654)
!654 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !655)
!655 = distinct !DILocation(line: 93, column: 16, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !504, line: 92, column: 12)
!657 = distinct !DILexicalBlock(scope: !658, file: !504, line: 92, column: 3)
!658 = distinct !DILexicalBlock(scope: !563, file: !504, line: 92, column: 3)
!659 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !654)
!660 = !DILocation(line: 121, column: 2, scope: !584, inlinedAt: !654)
!661 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !655)
!662 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !655)
!663 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !655)
!664 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !655)
!665 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !655)
!666 = !DILocation(line: 158, column: 2, scope: !591, inlinedAt: !655)
!667 = !DILocation(line: 87, column: 21, scope: !563)
!668 = !DILocation(line: 95, column: 12, scope: !656)
!669 = !DILocation(line: 88, column: 17, scope: !563)
!670 = !DILocalVariable(name: "entry", arg: 2, scope: !671, file: !672, line: 59, type: !57)
!671 = distinct !DISubprogram(name: "uk_waitq_add", scope: !672, file: !672, line: 58, type: !673, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !676)
!672 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!673 = !DISubroutineType(types: !674)
!674 = !{null, !675, !57}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!676 = !{!677, !670}
!677 = !DILocalVariable(name: "wq", arg: 1, scope: !671, file: !672, line: 58, type: !675)
!678 = !DILocation(line: 59, column: 26, scope: !671, inlinedAt: !679)
!679 = distinct !DILocation(line: 96, column: 4, scope: !656)
!680 = !DILocation(line: 61, column: 14, scope: !681, inlinedAt: !679)
!681 = distinct !DILexicalBlock(scope: !671, file: !672, line: 61, column: 6)
!682 = !{!646, !542, i64 0}
!683 = !DILocation(line: 61, column: 7, scope: !681, inlinedAt: !679)
!684 = !DILocation(line: 61, column: 6, scope: !671, inlinedAt: !679)
!685 = !DILocation(line: 62, column: 3, scope: !686, inlinedAt: !679)
!686 = distinct !DILexicalBlock(scope: !687, file: !672, line: 62, column: 3)
!687 = distinct !DILexicalBlock(scope: !681, file: !672, line: 61, column: 23)
!688 = !{!646, !576, i64 16}
!689 = !{!577, !576, i64 8}
!690 = !DILocation(line: 63, column: 18, scope: !687, inlinedAt: !679)
!691 = !DILocation(line: 64, column: 2, scope: !687, inlinedAt: !679)
!692 = !DILocation(line: 65, column: 1, scope: !671, inlinedAt: !679)
!693 = !DILocalVariable(name: "thread", arg: 1, scope: !694, file: !24, line: 122, type: !22)
!694 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !24, file: !24, line: 122, type: !695, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !22, !45}
!697 = !{!693, !698}
!698 = !DILocalVariable(name: "time", arg: 2, scope: !694, file: !24, line: 122, type: !45)
!699 = !DILocation(line: 122, column: 64, scope: !694, inlinedAt: !700)
!700 = distinct !DILocation(line: 97, column: 4, scope: !656)
!701 = !DILocation(line: 122, column: 80, scope: !694, inlinedAt: !700)
!702 = !DILocation(line: 124, column: 10, scope: !694, inlinedAt: !700)
!703 = !DILocation(line: 124, column: 22, scope: !694, inlinedAt: !700)
!704 = !{!705, !707, i64 56}
!705 = !{!"uk_thread", !576, i64 0, !576, i64 8, !576, i64 16, !576, i64 24, !706, i64 32, !542, i64 48, !707, i64 56, !708, i64 64, !577, i64 72, !576, i64 88, !576, i64 96, !542, i64 104, !576, i64 112, !576, i64 120}
!706 = !{!"", !576, i64 0, !576, i64 8}
!707 = !{!"long", !535, i64 0}
!708 = !{!"_Bool", !535, i64 0}
!709 = !DILocation(line: 125, column: 1, scope: !694, inlinedAt: !700)
!710 = !DILocalVariable(name: "thread", arg: 1, scope: !711, file: !24, line: 183, type: !22)
!711 = distinct !DISubprogram(name: "clear_runnable", scope: !24, file: !24, line: 183, type: !712, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !22}
!714 = !{!710}
!715 = !DILocation(line: 183, column: 53, scope: !711, inlinedAt: !716)
!716 = distinct !DILocation(line: 99, column: 4, scope: !656)
!717 = !DILocation(line: 185, column: 10, scope: !711, inlinedAt: !716)
!718 = !DILocation(line: 185, column: 16, scope: !711, inlinedAt: !716)
!719 = !{!705, !542, i64 48}
!720 = !DILocation(line: 186, column: 1, scope: !711, inlinedAt: !716)
!721 = !DILocalVariable(name: "t", arg: 1, scope: !722, file: !71, line: 151, type: !22)
!722 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !71, file: !71, line: 151, type: !712, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !723)
!723 = !{!721}
!724 = !DILocation(line: 151, column: 62, scope: !722, inlinedAt: !725)
!725 = distinct !DILocation(line: 100, column: 4, scope: !656)
!726 = !DILocation(line: 153, column: 2, scope: !727, inlinedAt: !725)
!727 = distinct !DILexicalBlock(scope: !728, file: !71, line: 153, column: 2)
!728 = distinct !DILexicalBlock(scope: !722, file: !71, line: 153, column: 2)
!729 = !DILocation(line: 153, column: 2, scope: !728, inlinedAt: !725)
!730 = !{!"branch_weights", i32 1, i32 2000}
!731 = !DILocation(line: 153, column: 2, scope: !732, inlinedAt: !725)
!732 = distinct !DILexicalBlock(scope: !727, file: !71, line: 153, column: 2)
!733 = !DILocation(line: 154, column: 6, scope: !722, inlinedAt: !725)
!734 = !{!705, !576, i64 88}
!735 = !DILocation(line: 154, column: 14, scope: !722, inlinedAt: !725)
!736 = !{!737, !576, i64 24}
!737 = !{!"uk_sched", !576, i64 0, !576, i64 8, !576, i64 16, !576, i64 24, !576, i64 32, !576, i64 40, !576, i64 48, !576, i64 56, !576, i64 64, !708, i64 72, !705, i64 80, !738, i64 208, !739, i64 224, !576, i64 248, !576, i64 256, !576, i64 264}
!738 = !{!"uk_thread_list", !576, i64 0, !576, i64 8}
!739 = !{!"ukplat_ctx_callbacks", !576, i64 0, !576, i64 8, !576, i64 16}
!740 = !DILocation(line: 154, column: 2, scope: !722, inlinedAt: !725)
!741 = !DILocation(line: 155, column: 1, scope: !722, inlinedAt: !725)
!742 = !DILocation(line: 102, column: 4, scope: !656)
!743 = !DILocation(line: 103, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !656, file: !504, line: 103, column: 8)
!745 = !DILocation(line: 103, column: 19, scope: !744)
!746 = !DILocation(line: 103, column: 24, scope: !744)
!747 = !DILocation(line: 103, column: 8, scope: !656)
!748 = !DILocation(line: 120, column: 2, scope: !584, inlinedAt: !749)
!749 = distinct !DILocation(line: 154, column: 21, scope: !591, inlinedAt: !750)
!750 = distinct !DILocation(line: 117, column: 30, scope: !751, inlinedAt: !755)
!751 = distinct !DISubprogram(name: "uk_sched_yield", scope: !71, file: !71, line: 114, type: !407, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !752)
!752 = !{!753, !754}
!753 = !DILocalVariable(name: "s", scope: !751, file: !71, line: 116, type: !69)
!754 = !DILocalVariable(name: "current", scope: !751, file: !71, line: 117, type: !22)
!755 = distinct !DILocation(line: 105, column: 4, scope: !656)
!756 = !DILocation(line: 118, column: 16, scope: !584, inlinedAt: !749)
!757 = !DILocation(line: 121, column: 2, scope: !584, inlinedAt: !749)
!758 = !DILocation(line: 154, column: 16, scope: !591, inlinedAt: !750)
!759 = !DILocation(line: 156, column: 38, scope: !591, inlinedAt: !750)
!760 = !DILocation(line: 156, column: 12, scope: !591, inlinedAt: !750)
!761 = !DILocation(line: 153, column: 21, scope: !591, inlinedAt: !750)
!762 = !DILocation(line: 158, column: 9, scope: !591, inlinedAt: !750)
!763 = !DILocation(line: 158, column: 2, scope: !591, inlinedAt: !750)
!764 = !DILocation(line: 117, column: 20, scope: !751, inlinedAt: !755)
!765 = !DILocation(line: 119, column: 2, scope: !766, inlinedAt: !755)
!766 = distinct !DILexicalBlock(scope: !767, file: !71, line: 119, column: 2)
!767 = distinct !DILexicalBlock(scope: !751, file: !71, line: 119, column: 2)
!768 = !DILocation(line: 119, column: 2, scope: !767, inlinedAt: !755)
!769 = !DILocation(line: 119, column: 2, scope: !770, inlinedAt: !755)
!770 = distinct !DILexicalBlock(scope: !766, file: !71, line: 119, column: 2)
!771 = !DILocation(line: 121, column: 15, scope: !751, inlinedAt: !755)
!772 = !DILocation(line: 116, column: 19, scope: !751, inlinedAt: !755)
!773 = !DILocation(line: 122, column: 2, scope: !774, inlinedAt: !755)
!774 = distinct !DILexicalBlock(scope: !775, file: !71, line: 122, column: 2)
!775 = distinct !DILexicalBlock(scope: !751, file: !71, line: 122, column: 2)
!776 = !DILocation(line: 122, column: 2, scope: !775, inlinedAt: !755)
!777 = !DILocation(line: 122, column: 2, scope: !778, inlinedAt: !755)
!778 = distinct !DILexicalBlock(scope: !774, file: !71, line: 122, column: 2)
!779 = !DILocation(line: 123, column: 5, scope: !751, inlinedAt: !755)
!780 = !{!737, !576, i64 0}
!781 = !DILocation(line: 123, column: 2, scope: !751, inlinedAt: !755)
!782 = !DILocation(line: 124, column: 1, scope: !751, inlinedAt: !755)
!783 = !DILocation(line: 92, column: 3, scope: !657)
!784 = distinct !{!784, !785, !786}
!785 = !DILocation(line: 92, column: 3, scope: !658)
!786 = !DILocation(line: 106, column: 3, scope: !658)
!787 = !DILocation(line: 107, column: 11, scope: !563)
!788 = !DILocation(line: 109, column: 3, scope: !563)
!789 = !DILocalVariable(name: "entry", arg: 2, scope: !790, file: !672, line: 69, type: !57)
!790 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !672, file: !672, line: 68, type: !673, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !791)
!791 = !{!792, !789, !793}
!792 = !DILocalVariable(name: "wq", arg: 1, scope: !790, file: !672, line: 68, type: !675)
!793 = !DILocalVariable(name: "curelm", scope: !794, file: !672, line: 72, type: !57)
!794 = distinct !DILexicalBlock(scope: !795, file: !672, line: 72, column: 3)
!795 = distinct !DILexicalBlock(scope: !796, file: !672, line: 72, column: 3)
!796 = distinct !DILexicalBlock(scope: !797, file: !672, line: 72, column: 3)
!797 = distinct !DILexicalBlock(scope: !798, file: !672, line: 71, column: 22)
!798 = distinct !DILexicalBlock(scope: !790, file: !672, line: 71, column: 6)
!799 = !DILocation(line: 69, column: 26, scope: !790, inlinedAt: !800)
!800 = distinct !DILocation(line: 110, column: 3, scope: !563)
!801 = !DILocation(line: 71, column: 13, scope: !798, inlinedAt: !800)
!802 = !DILocation(line: 71, column: 6, scope: !798, inlinedAt: !800)
!803 = !DILocation(line: 71, column: 6, scope: !790, inlinedAt: !800)
!804 = !DILocation(line: 72, column: 3, scope: !795, inlinedAt: !800)
!805 = !{!577, !576, i64 0}
!806 = !DILocation(line: 72, column: 3, scope: !796, inlinedAt: !800)
!807 = !DILocation(line: 72, column: 3, scope: !808, inlinedAt: !800)
!808 = distinct !DILexicalBlock(scope: !809, file: !672, line: 72, column: 3)
!809 = distinct !DILexicalBlock(scope: !810, file: !672, line: 72, column: 3)
!810 = distinct !DILexicalBlock(scope: !795, file: !672, line: 72, column: 3)
!811 = !DILocation(line: 72, column: 3, scope: !809, inlinedAt: !800)
!812 = !DILocation(line: 72, column: 3, scope: !794, inlinedAt: !800)
!813 = distinct !{!813, !814, !814}
!814 = !DILocation(line: 72, column: 3, scope: !794)
!815 = !DILocation(line: 72, column: 3, scope: !816, inlinedAt: !800)
!816 = distinct !DILexicalBlock(scope: !817, file: !672, line: 72, column: 3)
!817 = distinct !DILexicalBlock(scope: !794, file: !672, line: 72, column: 3)
!818 = !DILocation(line: 72, column: 3, scope: !817, inlinedAt: !800)
!819 = !DILocation(line: 73, column: 18, scope: !797, inlinedAt: !800)
!820 = !DILocation(line: 74, column: 2, scope: !797, inlinedAt: !800)
!821 = !DILocation(line: 75, column: 1, scope: !790, inlinedAt: !800)
!822 = !DILocation(line: 111, column: 3, scope: !563)
!823 = !DILocation(line: 112, column: 2, scope: !564)
!824 = !DILocation(line: 0, scope: !649)
!825 = !DILocation(line: 114, column: 9, scope: !564)
!826 = !DILocation(line: 72, column: 16, scope: !546)
!827 = !DILocation(line: 115, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !564, file: !504, line: 115, column: 6)
!829 = !DILocation(line: 115, column: 20, scope: !828)
!830 = !DILocation(line: 115, column: 25, scope: !828)
!831 = !DILocation(line: 115, column: 31, scope: !828)
!832 = !DILocation(line: 115, column: 37, scope: !828)
!833 = !DILocation(line: 115, column: 6, scope: !564)
!834 = !DILocation(line: 117, column: 2, scope: !564)
!835 = !DILocation(line: 85, column: 2, scope: !565)
!836 = distinct !{!836, !837, !838}
!837 = !DILocation(line: 85, column: 2, scope: !566)
!838 = !DILocation(line: 118, column: 1, scope: !566)
!839 = !DILocation(line: 119, column: 15, scope: !546)
!840 = !DILocation(line: 120, column: 11, scope: !546)
!841 = !DILocation(line: 121, column: 2, scope: !546)
!842 = !DILocation(line: 122, column: 1, scope: !546)
!843 = distinct !DISubprogram(name: "uk_mutex_unlock", scope: !504, file: !504, line: 149, type: !547, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !844)
!844 = !{!845, !846, !847}
!845 = !DILocalVariable(name: "m", arg: 1, scope: !843, file: !504, line: 149, type: !549)
!846 = !DILocalVariable(name: "irqf", scope: !843, file: !504, line: 151, type: !95)
!847 = !DILocalVariable(name: "wq", scope: !843, file: !504, line: 153, type: !555)
!848 = !DILocation(line: 149, column: 53, scope: !843)
!849 = !DILocation(line: 155, column: 2, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !504, line: 155, column: 2)
!851 = !DILocation(line: 157, column: 9, scope: !843)
!852 = !DILocation(line: 151, column: 16, scope: !843)
!853 = !DILocation(line: 158, column: 2, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !504, line: 158, column: 2)
!855 = distinct !DILexicalBlock(scope: !843, file: !504, line: 158, column: 2)
!856 = !DILocation(line: 158, column: 2, scope: !855)
!857 = !DILocation(line: 158, column: 2, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !504, line: 158, column: 2)
!859 = !DILocation(line: 159, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !843, file: !504, line: 159, column: 6)
!861 = !DILocation(line: 159, column: 22, scope: !860)
!862 = !DILocation(line: 159, column: 6, scope: !843)
!863 = !DILocation(line: 160, column: 12, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !504, line: 159, column: 28)
!865 = !DILocation(line: 104, column: 10, scope: !866, inlinedAt: !874)
!866 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !672, file: !672, line: 99, type: !867, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !675}
!869 = !{!870, !871, !872, !873}
!870 = !DILocalVariable(name: "wq", arg: 1, scope: !866, file: !672, line: 99, type: !675)
!871 = !DILocalVariable(name: "flags", scope: !866, file: !672, line: 101, type: !95)
!872 = !DILocalVariable(name: "curr", scope: !866, file: !672, line: 102, type: !57)
!873 = !DILocalVariable(name: "tmp", scope: !866, file: !672, line: 102, type: !57)
!874 = distinct !DILocation(line: 161, column: 3, scope: !864)
!875 = !DILocation(line: 101, column: 16, scope: !866, inlinedAt: !874)
!876 = !DILocation(line: 105, column: 2, scope: !877, inlinedAt: !874)
!877 = distinct !DILexicalBlock(scope: !866, file: !672, line: 105, column: 2)
!878 = !DILocation(line: 102, column: 25, scope: !866, inlinedAt: !874)
!879 = !DILocation(line: 105, column: 2, scope: !880, inlinedAt: !874)
!880 = distinct !DILexicalBlock(scope: !877, file: !672, line: 105, column: 2)
!881 = !DILocation(line: 102, column: 32, scope: !866, inlinedAt: !874)
!882 = !DILocation(line: 106, column: 24, scope: !880, inlinedAt: !874)
!883 = !DILocation(line: 106, column: 3, scope: !880, inlinedAt: !874)
!884 = distinct !{!884, !885, !886}
!885 = !DILocation(line: 105, column: 2, scope: !877)
!886 = !DILocation(line: 106, column: 30, scope: !877)
!887 = !DILocation(line: 107, column: 2, scope: !866, inlinedAt: !874)
!888 = !DILocation(line: 108, column: 1, scope: !866, inlinedAt: !874)
!889 = !DILocation(line: 162, column: 2, scope: !864)
!890 = !DILocation(line: 163, column: 2, scope: !843)
!891 = !DILocation(line: 164, column: 1, scope: !843)
!892 = distinct !DISubprogram(name: "closelog", scope: !3, file: !3, line: 95, type: !407, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !893)
!893 = !{}
!894 = !DILocation(line: 97, column: 1, scope: !892)
!895 = distinct !DISubprogram(name: "setlogmask", scope: !3, file: !3, line: 99, type: !896, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !898)
!896 = !DISubroutineType(types: !897)
!897 = !{!20, !20}
!898 = !{!899, !900}
!899 = !DILocalVariable(name: "maskpri", arg: 1, scope: !895, file: !3, line: 99, type: !20)
!900 = !DILocalVariable(name: "ret", scope: !895, file: !3, line: 101, type: !20)
!901 = !DILocation(line: 99, column: 20, scope: !895)
!902 = !DILocation(line: 103, column: 2, scope: !895)
!903 = !DILocation(line: 104, column: 8, scope: !895)
!904 = !DILocation(line: 101, column: 6, scope: !895)
!905 = !DILocation(line: 105, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !895, file: !3, line: 105, column: 6)
!907 = !DILocation(line: 105, column: 6, scope: !895)
!908 = !DILocation(line: 106, column: 12, scope: !906)
!909 = !DILocation(line: 106, column: 3, scope: !906)
!910 = !DILocation(line: 107, column: 2, scope: !895)
!911 = !DILocation(line: 108, column: 2, scope: !895)
!912 = distinct !DISubprogram(name: "syslog", scope: !3, file: !3, line: 111, type: !913, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !20, !27, null}
!915 = !{!916, !917, !918, !919, !923, !926, !941, !945, !946, !947}
!916 = !DILocalVariable(name: "priority", arg: 1, scope: !912, file: !3, line: 111, type: !20)
!917 = !DILocalVariable(name: "message", arg: 2, scope: !912, file: !3, line: 111, type: !27)
!918 = !DILocalVariable(name: "ap", scope: !912, file: !3, line: 113, type: !479)
!919 = !DILocalVariable(name: "timebuf", scope: !912, file: !3, line: 114, type: !920)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 16)
!923 = !DILocalVariable(name: "now", scope: !912, file: !3, line: 115, type: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !925, line: 34, baseType: !49)
!925 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!926 = !DILocalVariable(name: "tm", scope: !912, file: !3, line: 116, type: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !928, line: 31, size: 448, elements: !929)
!928 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !927, file: !928, line: 32, baseType: !20, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !927, file: !928, line: 33, baseType: !20, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !927, file: !928, line: 34, baseType: !20, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !927, file: !928, line: 35, baseType: !20, size: 32, offset: 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !927, file: !928, line: 36, baseType: !20, size: 32, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !927, file: !928, line: 37, baseType: !20, size: 32, offset: 160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !927, file: !928, line: 38, baseType: !20, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !927, file: !928, line: 39, baseType: !20, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !927, file: !928, line: 40, baseType: !20, size: 32, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !927, file: !928, line: 41, baseType: !49, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !927, file: !928, line: 42, baseType: !27, size: 64, offset: 384)
!941 = !DILocalVariable(name: "buf", scope: !912, file: !3, line: 117, type: !942)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 256)
!945 = !DILocalVariable(name: "pid", scope: !912, file: !3, line: 118, type: !20)
!946 = !DILocalVariable(name: "l", scope: !912, file: !3, line: 119, type: !20)
!947 = !DILocalVariable(name: "l2", scope: !912, file: !3, line: 119, type: !20)
!948 = !DILocation(line: 111, column: 17, scope: !912)
!949 = !DILocation(line: 111, column: 39, scope: !912)
!950 = !DILocation(line: 113, column: 2, scope: !912)
!951 = !DILocation(line: 113, column: 10, scope: !912)
!952 = !DILocation(line: 114, column: 2, scope: !912)
!953 = !DILocation(line: 114, column: 7, scope: !912)
!954 = !DILocation(line: 115, column: 2, scope: !912)
!955 = !DILocation(line: 116, column: 2, scope: !912)
!956 = !DILocation(line: 117, column: 2, scope: !912)
!957 = !DILocation(line: 117, column: 7, scope: !912)
!958 = !DILocation(line: 121, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !912, file: !3, line: 121, column: 6)
!960 = !DILocation(line: 121, column: 19, scope: !959)
!961 = !DILocation(line: 121, column: 17, scope: !959)
!962 = !DILocation(line: 121, column: 43, scope: !959)
!963 = !DILocation(line: 121, column: 56, scope: !959)
!964 = !DILocation(line: 121, column: 6, scope: !912)
!965 = !DILocation(line: 124, column: 2, scope: !912)
!966 = !DILocation(line: 126, column: 2, scope: !912)
!967 = !DILocation(line: 128, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !912, file: !3, line: 128, column: 6)
!969 = !DILocation(line: 128, column: 6, scope: !912)
!970 = !DILocation(line: 129, column: 15, scope: !968)
!971 = !DILocation(line: 129, column: 12, scope: !968)
!972 = !DILocation(line: 129, column: 3, scope: !968)
!973 = !DILocation(line: 131, column: 8, scope: !912)
!974 = !DILocation(line: 115, column: 9, scope: !912)
!975 = !DILocation(line: 131, column: 6, scope: !912)
!976 = !{!707, !707, i64 0}
!977 = !DILocation(line: 116, column: 12, scope: !912)
!978 = !DILocation(line: 132, column: 2, scope: !912)
!979 = !DILocation(line: 133, column: 2, scope: !912)
!980 = !DILocation(line: 135, column: 9, scope: !912)
!981 = !DILocation(line: 135, column: 17, scope: !912)
!982 = !DILocation(line: 135, column: 8, scope: !912)
!983 = !DILocation(line: 135, column: 30, scope: !912)
!984 = !DILocation(line: 118, column: 6, scope: !912)
!985 = !DILocation(line: 137, column: 21, scope: !912)
!986 = !DILocation(line: 137, column: 19, scope: !912)
!987 = !DILocation(line: 137, column: 36, scope: !912)
!988 = !DILocation(line: 136, column: 6, scope: !912)
!989 = !DILocation(line: 119, column: 6, scope: !912)
!990 = !DILocation(line: 138, column: 21, scope: !912)
!991 = !DILocation(line: 138, column: 38, scope: !912)
!992 = !DILocation(line: 138, column: 7, scope: !912)
!993 = !DILocation(line: 119, column: 9, scope: !912)
!994 = !DILocation(line: 139, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !912, file: !3, line: 139, column: 6)
!996 = !DILocation(line: 139, column: 6, scope: !912)
!997 = !DILocation(line: 140, column: 31, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 140, column: 7)
!999 = distinct !DILexicalBlock(scope: !995, file: !3, line: 139, column: 15)
!1000 = !DILocation(line: 140, column: 10, scope: !998)
!1001 = !DILocation(line: 140, column: 7, scope: !999)
!1002 = !DILocation(line: 143, column: 6, scope: !998)
!1003 = !DILocation(line: 144, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 144, column: 7)
!1005 = !DILocation(line: 144, column: 7, scope: !1004)
!1006 = !DILocation(line: 144, column: 18, scope: !1004)
!1007 = !DILocation(line: 144, column: 7, scope: !999)
!1008 = !DILocation(line: 145, column: 9, scope: !1004)
!1009 = !DILocation(line: 145, column: 4, scope: !1004)
!1010 = !DILocation(line: 145, column: 13, scope: !1004)
!1011 = !DILocation(line: 0, scope: !998)
!1012 = !DILocation(line: 146, column: 18, scope: !999)
!1013 = !DILocation(line: 147, column: 4, scope: !999)
!1014 = !DILocation(line: 147, column: 22, scope: !999)
!1015 = !DILocation(line: 0, scope: !999)
!1016 = !DILocation(line: 147, column: 44, scope: !999)
!1017 = !DILocation(line: 147, column: 35, scope: !999)
!1018 = !DILocation(line: 146, column: 3, scope: !999)
!1019 = !DILocation(line: 148, column: 2, scope: !999)
!1020 = !DILocation(line: 150, column: 2, scope: !912)
!1021 = !DILocation(line: 152, column: 2, scope: !912)
!1022 = !DILocation(line: 153, column: 1, scope: !912)
!1023 = !DILocation(line: 0, scope: !959)
!1024 = !DILocation(line: 196, column: 2, scope: !472)
!1025 = !DILocation(line: 196, column: 10, scope: !472)
!1026 = !DILocation(line: 197, column: 2, scope: !472)
!1027 = !DILocation(line: 198, column: 2, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !473, line: 198, column: 2)
!1029 = distinct !DILexicalBlock(scope: !472, file: !473, line: 198, column: 2)
!1030 = !DILocation(line: 199, column: 2, scope: !472)
!1031 = !DILocation(line: 200, column: 1, scope: !472)
