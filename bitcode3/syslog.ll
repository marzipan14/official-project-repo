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

; Function Attrs: noredzone nounwind
define dso_local void @openlog(i8*, i32, i32) local_unnamed_addr #0 !dbg !513 {
  tail call fastcc void @uk_mutex_lock() #8, !dbg !526
  %4 = icmp eq i8* %0, null, !dbg !527
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
  store i32 %1, i32* @log_opt, align 4, !dbg !540, !tbaa !541
  store i32 %2, i32* @log_facility, align 4, !dbg !543, !tbaa !541
  %11 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !556
  %12 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !558, !tbaa !561
  %13 = icmp slt i32 %12, 1, !dbg !558
  br i1 %13, label %14, label %15, !dbg !565, !prof !566

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !567
  tail call void @ukplat_terminate(i32 3) #10, !dbg !567
  unreachable, !dbg !567

; <label>:15:                                     ; preds = %10
  %16 = add nsw i32 %12, -1, !dbg !569
  store i32 %16, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !569, !tbaa !561
  %17 = icmp eq i32 %16, 0, !dbg !571
  br i1 %17, label %18, label %30, !dbg !572

; <label>:18:                                     ; preds = %15
  store %struct.uk_thread* null, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !573, !tbaa !575
  %19 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !576
  %20 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !589, !tbaa !591
  %21 = icmp eq %struct.uk_waitq_entry* %20, null, !dbg !593
  br i1 %21, label %29, label %22, !dbg !593

; <label>:22:                                     ; preds = %18, %22
  %23 = phi %struct.uk_waitq_entry* [ %25, %22 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %23, i64 0, i32 2, i32 0, !dbg !593
  %25 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %24, align 8, !dbg !593, !tbaa !595
  %26 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %23, i64 0, i32 1, !dbg !599
  %27 = load %struct.uk_thread*, %struct.uk_thread** %26, align 8, !dbg !599, !tbaa !600
  tail call void @uk_thread_wake(%struct.uk_thread* %27) #9, !dbg !601
  %28 = icmp eq %struct.uk_waitq_entry* %25, null, !dbg !593
  br i1 %28, label %29, label %22, !dbg !593, !llvm.loop !602

; <label>:29:                                     ; preds = %22, %18
  tail call void @ukplat_lcpu_restore_irqf(i64 %19) #9, !dbg !605
  br label %30, !dbg !606

; <label>:30:                                     ; preds = %15, %29
  tail call void @ukplat_lcpu_restore_irqf(i64 %11) #9, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @uk_mutex_lock() unnamed_addr #2 !dbg !609 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !629
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !629
  %3 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !631, !tbaa !561
  store volatile i32 %3, i32* %1, align 4, !dbg !630, !tbaa !541
  %4 = load %struct.uk_thread*, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !632, !tbaa !575
  %5 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !634, !srcloc !649
  %6 = and i64 %5, -65536, !dbg !652
  %7 = inttoptr i64 %6 to %struct.uk_thread**, !dbg !653
  %8 = load %struct.uk_thread*, %struct.uk_thread** %7, align 65536, !dbg !655, !tbaa !656
  %9 = icmp eq %struct.uk_thread* %4, %8
  br label %10, !dbg !658

; <label>:10:                                     ; preds = %103, %0
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !659, !srcloc !649
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !665, !srcloc !649
  %13 = and i64 %12, -65536, !dbg !676
  %14 = or i64 %13, 4097, !dbg !676
  %15 = add nsw i64 %14, -1, !dbg !676
  %16 = inttoptr i64 %15 to i32*, !dbg !677
  %17 = load i32, i32* %16, align 4096, !dbg !678, !tbaa !541
  %18 = sext i32 %17 to i64, !dbg !679
  %19 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %18, !dbg !679
  %20 = bitcast %struct.uk_waitq_entry* %19 to i8*, !dbg !679
  %21 = tail call i8* @memset(i8* nonnull %20, i32 0, i64 24) #9, !dbg !679
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !680, !srcloc !649
  %23 = and i64 %22, -65536, !dbg !685
  %24 = inttoptr i64 %23 to i64*, !dbg !686
  %25 = load i64, i64* %24, align 65536, !dbg !686, !tbaa !656
  %26 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %18, i32 1, !dbg !679
  %27 = bitcast %struct.uk_thread** %26 to i64*, !dbg !679
  store i64 %25, i64* %27, align 8, !dbg !679, !tbaa !600
  %28 = load volatile i32, i32* %1, align 4, !dbg !688, !tbaa !541
  %29 = icmp eq i32 %28, 0, !dbg !690
  %30 = or i1 %29, %9, !dbg !691
  br i1 %30, label %96, label %31, !dbg !691

; <label>:31:                                     ; preds = %10
  %32 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %19, i64 0, i32 0
  %33 = getelementptr inbounds [32 x %struct.uk_waitq_entry], [32 x %struct.uk_waitq_entry]* @wq_entries, i64 0, i64 %18, i32 2, i32 0
  br label %34, !dbg !692

; <label>:34:                                     ; preds = %31, %70
  %35 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !692, !srcloc !649
  %36 = and i64 %35, -65536, !dbg !700
  %37 = inttoptr i64 %36 to %struct.uk_thread**, !dbg !701
  %38 = load %struct.uk_thread*, %struct.uk_thread** %37, align 65536, !dbg !703, !tbaa !656
  %39 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !705
  %40 = load i32, i32* %32, align 8, !dbg !715, !tbaa !717
  %41 = icmp eq i32 %40, 0, !dbg !718
  br i1 %41, label %42, label %44, !dbg !719

; <label>:42:                                     ; preds = %34
  store %struct.uk_waitq_entry* null, %struct.uk_waitq_entry** %33, align 8, !dbg !720, !tbaa !595
  %43 = load %struct.uk_waitq_entry**, %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !720, !tbaa !723
  store %struct.uk_waitq_entry* %19, %struct.uk_waitq_entry** %43, align 8, !dbg !720, !tbaa !656
  store %struct.uk_waitq_entry** %33, %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !720, !tbaa !723
  store i32 1, i32* %32, align 8, !dbg !724, !tbaa !717
  br label %44, !dbg !725

; <label>:44:                                     ; preds = %34, %42
  %45 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 6, !dbg !735
  store i64 0, i64* %45, align 8, !dbg !736, !tbaa !737
  %46 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 5, !dbg !749
  %47 = load i32, i32* %46, align 8, !dbg !750, !tbaa !751
  %48 = and i32 %47, -2, !dbg !750
  store i32 %48, i32* %46, align 8, !dbg !750, !tbaa !751
  %49 = icmp eq %struct.uk_thread* %38, null, !dbg !757
  br i1 %49, label %50, label %51, !dbg !760, !prof !566

; <label>:50:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !761
  tail call void @ukplat_terminate(i32 3) #10, !dbg !761
  unreachable, !dbg !761

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %38, i64 0, i32 9, !dbg !763
  %53 = load %struct.uk_sched*, %struct.uk_sched** %52, align 8, !dbg !763, !tbaa !764
  %54 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %53, i64 0, i32 3, !dbg !765
  %55 = load void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)** %54, align 8, !dbg !765, !tbaa !766
  tail call void %55(%struct.uk_sched* %53, %struct.uk_thread* nonnull %38) #9, !dbg !770
  tail call void @ukplat_lcpu_restore_irqf(i64 %39) #9, !dbg !771
  %56 = load volatile i32, i32* %1, align 4, !dbg !772, !tbaa !541
  %57 = icmp eq i32 %56, 0, !dbg !774
  br i1 %57, label %73, label %58, !dbg !775

; <label>:58:                                     ; preds = %51
  %59 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !776, !srcloc !649
  %60 = and i64 %59, -65536, !dbg !786
  %61 = inttoptr i64 %60 to %struct.uk_thread**, !dbg !787
  %62 = load %struct.uk_thread*, %struct.uk_thread** %61, align 65536, !dbg !789, !tbaa !656
  %63 = icmp eq %struct.uk_thread* %62, null, !dbg !791
  br i1 %63, label %64, label %65, !dbg !794, !prof !566

; <label>:64:                                     ; preds = %58
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !795
  tail call void @ukplat_terminate(i32 3) #10, !dbg !795
  unreachable, !dbg !795

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds %struct.uk_thread, %struct.uk_thread* %62, i64 0, i32 9, !dbg !797
  %67 = load %struct.uk_sched*, %struct.uk_sched** %66, align 8, !dbg !797, !tbaa !764
  %68 = icmp eq %struct.uk_sched* %67, null, !dbg !799
  br i1 %68, label %69, label %70, !dbg !802, !prof !566

; <label>:69:                                     ; preds = %65
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !803
  tail call void @ukplat_terminate(i32 3) #10, !dbg !803
  unreachable, !dbg !803

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.uk_sched, %struct.uk_sched* %67, i64 0, i32 0, !dbg !805
  %72 = load void (%struct.uk_sched*)*, void (%struct.uk_sched*)** %71, align 8, !dbg !805, !tbaa !806
  tail call void %72(%struct.uk_sched* nonnull %67) #9, !dbg !807
  br label %34, !dbg !808, !llvm.loop !809

; <label>:73:                                     ; preds = %51
  %74 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !812
  tail call void @uk_thread_wake(%struct.uk_thread* nonnull %38) #9, !dbg !813
  %75 = load i32, i32* %32, align 8, !dbg !826, !tbaa !717
  %76 = icmp eq i32 %75, 0, !dbg !827
  br i1 %76, label %95, label %77, !dbg !828

; <label>:77:                                     ; preds = %73
  %78 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !829, !tbaa !591
  %79 = icmp eq %struct.uk_waitq_entry* %78, %19, !dbg !829
  br i1 %79, label %80, label %84, !dbg !830

; <label>:80:                                     ; preds = %77
  %81 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %33, align 8, !dbg !831, !tbaa !595
  store %struct.uk_waitq_entry* %81, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !831, !tbaa !591
  %82 = icmp eq %struct.uk_waitq_entry* %81, null, !dbg !831
  br i1 %82, label %83, label %94, !dbg !835

; <label>:83:                                     ; preds = %80
  store %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !831, !tbaa !723
  br label %94, !dbg !831

; <label>:84:                                     ; preds = %77, %84
  %85 = phi %struct.uk_waitq_entry* [ %87, %84 ], [ %78, %77 ], !dbg !836
  %86 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %85, i64 0, i32 2, i32 0, !dbg !836
  %87 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %86, align 8, !dbg !836, !tbaa !595
  %88 = icmp eq %struct.uk_waitq_entry* %87, %19, !dbg !836
  br i1 %88, label %89, label %84, !dbg !836, !llvm.loop !837

; <label>:89:                                     ; preds = %84
  %90 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %85, i64 0, i32 2, i32 0, !dbg !836
  %91 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %33, align 8, !dbg !839, !tbaa !595
  store %struct.uk_waitq_entry* %91, %struct.uk_waitq_entry** %90, align 8, !dbg !839, !tbaa !595
  %92 = icmp eq %struct.uk_waitq_entry* %91, null, !dbg !839
  br i1 %92, label %93, label %94, !dbg !842

; <label>:93:                                     ; preds = %89
  store %struct.uk_waitq_entry** %90, %struct.uk_waitq_entry*** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 1), align 8, !dbg !839, !tbaa !723
  br label %94, !dbg !839

; <label>:94:                                     ; preds = %93, %89, %83, %80
  store i32 0, i32* %32, align 8, !dbg !843, !tbaa !717
  br label %95, !dbg !844

; <label>:95:                                     ; preds = %73, %94
  tail call void @ukplat_lcpu_restore_irqf(i64 %74) #9, !dbg !845
  br label %96, !dbg !846

; <label>:96:                                     ; preds = %10, %95
  %97 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !847
  %98 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !849, !tbaa !561
  %99 = icmp eq i32 %98, 0, !dbg !851
  %100 = load %struct.uk_thread*, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !852
  %101 = icmp eq %struct.uk_thread* %100, %8, !dbg !853
  %102 = or i1 %99, %101, !dbg !854
  br i1 %102, label %104, label %103, !dbg !854

; <label>:103:                                    ; preds = %96
  tail call void @ukplat_lcpu_restore_irqf(i64 %97) #9, !dbg !855
  br label %10, !dbg !856, !llvm.loop !857

; <label>:104:                                    ; preds = %96
  %105 = add nsw i32 %98, 1, !dbg !860
  store i32 %105, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !860, !tbaa !561
  store %struct.uk_thread* %8, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !861, !tbaa !575
  tail call void @ukplat_lcpu_restore_irqf(i64 %97) #9, !dbg !862
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !863
  ret void, !dbg !863
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @closelog() local_unnamed_addr #5 !dbg !864 {
  ret void, !dbg !866
}

; Function Attrs: noredzone nounwind
define dso_local i32 @setlogmask(i32) local_unnamed_addr #0 !dbg !867 {
  tail call fastcc void @uk_mutex_lock() #8, !dbg !874
  %2 = load i32, i32* @log_mask, align 4, !dbg !875, !tbaa !541
  %3 = icmp eq i32 %0, 0, !dbg !877
  br i1 %3, label %5, label %4, !dbg !879

; <label>:4:                                      ; preds = %1
  store i32 %0, i32* @log_mask, align 4, !dbg !880, !tbaa !541
  br label %5, !dbg !881

; <label>:5:                                      ; preds = %1, %4
  %6 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !884
  %7 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !886, !tbaa !561
  %8 = icmp slt i32 %7, 1, !dbg !886
  br i1 %8, label %9, label %10, !dbg !887, !prof !566

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !888
  tail call void @ukplat_terminate(i32 3) #10, !dbg !888
  unreachable, !dbg !888

; <label>:10:                                     ; preds = %5
  %11 = add nsw i32 %7, -1, !dbg !889
  store i32 %11, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !889, !tbaa !561
  %12 = icmp eq i32 %11, 0, !dbg !890
  br i1 %12, label %13, label %25, !dbg !891

; <label>:13:                                     ; preds = %10
  store %struct.uk_thread* null, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !892, !tbaa !575
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !893
  %15 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !896, !tbaa !591
  %16 = icmp eq %struct.uk_waitq_entry* %15, null, !dbg !898
  br i1 %16, label %24, label %17, !dbg !898

; <label>:17:                                     ; preds = %13, %17
  %18 = phi %struct.uk_waitq_entry* [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 2, i32 0, !dbg !898
  %20 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %19, align 8, !dbg !898, !tbaa !595
  %21 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %18, i64 0, i32 1, !dbg !900
  %22 = load %struct.uk_thread*, %struct.uk_thread** %21, align 8, !dbg !900, !tbaa !600
  tail call void @uk_thread_wake(%struct.uk_thread* %22) #9, !dbg !901
  %23 = icmp eq %struct.uk_waitq_entry* %20, null, !dbg !898
  br i1 %23, label %24, label %17, !dbg !898, !llvm.loop !602

; <label>:24:                                     ; preds = %17, %13
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #9, !dbg !902
  br label %25, !dbg !903

; <label>:25:                                     ; preds = %10, %24
  tail call void @ukplat_lcpu_restore_irqf(i64 %6) #9, !dbg !904
  ret i32 %2, !dbg !905
}

; Function Attrs: noredzone nounwind
define dso_local void @syslog(i32, i8*, ...) local_unnamed_addr #0 !dbg !906 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca [256 x i8], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #6, !dbg !944
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !946
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !946
  %10 = bitcast i64* %5 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #6, !dbg !948
  %11 = bitcast %struct.tm* %6 to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %11) #6, !dbg !949
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %12) #6, !dbg !950
  %13 = load i32, i32* @log_mask, align 4, !dbg !952, !tbaa !541
  %14 = and i32 %0, 7, !dbg !954
  %15 = shl i32 1, %14, !dbg !954
  %16 = and i32 %13, %15, !dbg !955
  %17 = icmp eq i32 %16, 0, !dbg !955
  %18 = icmp ugt i32 %0, 1023, !dbg !956
  %19 = or i1 %18, %17, !dbg !957
  br i1 %19, label %93, label %20, !dbg !957

; <label>:20:                                     ; preds = %2
  tail call fastcc void @uk_mutex_lock() #8, !dbg !958
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !959
  call void @llvm.va_start(i8* nonnull %8), !dbg !959
  %22 = and i32 %0, 1016, !dbg !960
  %23 = icmp eq i32 %22, 0, !dbg !960
  %24 = load i32, i32* @log_facility, align 4, !dbg !962
  %25 = select i1 %23, i32 %24, i32 0, !dbg !963
  %26 = or i32 %25, %0, !dbg !963
  %27 = call i64 @time(i64* null) #9, !dbg !964
  store i64 %27, i64* %5, align 8, !dbg !966, !tbaa !967
  %28 = call %struct.tm* @gmtime_r(i64* nonnull %5, %struct.tm* nonnull %6) #9, !dbg !969
  %29 = call i64 @strftime(i8* nonnull %9, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* nonnull %6) #9, !dbg !970
  %30 = load i32, i32* @log_opt, align 4, !dbg !971, !tbaa !541
  %31 = and i32 %30, 1, !dbg !972
  %32 = icmp eq i32 %31, 0, !dbg !972
  br i1 %32, label %35, label %33, !dbg !973

; <label>:33:                                     ; preds = %20
  %34 = call i32 @getpid() #9, !dbg !974
  br label %35, !dbg !973

; <label>:35:                                     ; preds = %20, %33
  %36 = phi i32 [ %34, %33 ], [ 0, %20 ], !dbg !973
  %37 = icmp eq i32 %36, 0, !dbg !976
  %38 = zext i1 %37 to i64, !dbg !977
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.2, i64 0, i64 %38, !dbg !977
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.3, i64 0, i64 %38, !dbg !978
  %41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* nonnull %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @log_ident, i64 0, i64 0), i8* nonnull %39, i32 %36, i8* nonnull %40) #9, !dbg !979
  %42 = sext i32 %41 to i64, !dbg !981
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %42, !dbg !981
  %44 = sub nsw i64 256, %42, !dbg !982
  %45 = call i32 @vsnprintf(i8* nonnull %43, i64 %44, i8* %1, %struct.__va_list_tag* nonnull %21) #9, !dbg !983
  %46 = icmp sgt i32 %45, -1, !dbg !985
  br i1 %46, label %47, label %72, !dbg !987

; <label>:47:                                     ; preds = %35
  %48 = sub nsw i32 256, %41, !dbg !988
  %49 = icmp slt i32 %45, %48, !dbg !991
  %50 = add nsw i32 %45, %41, !dbg !992
  %51 = select i1 %49, i32 %50, i32 255, !dbg !993
  %52 = add nsw i32 %51, -1, !dbg !994
  %53 = sext i32 %52 to i64, !dbg !996
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %53, !dbg !996
  %55 = load i8, i8* %54, align 1, !dbg !996, !tbaa !534
  %56 = icmp eq i8 %55, 10, !dbg !997
  br i1 %56, label %61, label %57, !dbg !998

; <label>:57:                                     ; preds = %47
  %58 = add nsw i32 %51, 1, !dbg !999
  %59 = sext i32 %51 to i64, !dbg !1000
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %59, !dbg !1000
  store i8 10, i8* %60, align 1, !dbg !1001, !tbaa !534
  br label %61, !dbg !1000

; <label>:61:                                     ; preds = %47, %57
  %62 = phi i32 [ %58, %57 ], [ %51, %47 ], !dbg !1002
  %63 = sext i32 %62 to i64, !dbg !1003
  %64 = and i32 %26, 7, !dbg !1004
  %65 = icmp ugt i32 %64, 2, !dbg !1005
  %66 = call %struct._reent* @__getreent() #9, !dbg !1006
  %67 = getelementptr inbounds %struct._reent, %struct._reent* %66, i64 0, i32 3, !dbg !1007
  %68 = getelementptr inbounds %struct._reent, %struct._reent* %66, i64 0, i32 2, !dbg !1008
  %69 = select i1 %65, %struct.__sFILE** %67, %struct.__sFILE** %68, !dbg !1004
  %70 = load %struct.__sFILE*, %struct.__sFILE** %69, align 8, !dbg !1004, !tbaa !656
  %71 = call i64 @fwrite(i8* nonnull %12, i64 1, i64 %63, %struct.__sFILE* %70) #9, !dbg !1009
  br label %72, !dbg !1010

; <label>:72:                                     ; preds = %61, %35
  call void @llvm.va_end(i8* nonnull %8), !dbg !1011
  %73 = call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1014
  %74 = load i32, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !1016, !tbaa !561
  %75 = icmp slt i32 %74, 1, !dbg !1016
  br i1 %75, label %76, label %77, !dbg !1017, !prof !566

; <label>:76:                                     ; preds = %72
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !1018
  call void @ukplat_terminate(i32 3) #10, !dbg !1018
  unreachable, !dbg !1018

; <label>:77:                                     ; preds = %72
  %78 = add nsw i32 %74, -1, !dbg !1019
  store i32 %78, i32* getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 0), align 8, !dbg !1019, !tbaa !561
  %79 = icmp eq i32 %78, 0, !dbg !1020
  br i1 %79, label %80, label %92, !dbg !1021

; <label>:80:                                     ; preds = %77
  store %struct.uk_thread* null, %struct.uk_thread** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 1), align 8, !dbg !1022, !tbaa !575
  %81 = call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1023
  %82 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** getelementptr inbounds (%struct.uk_mutex, %struct.uk_mutex* @lock, i64 0, i32 2, i32 0), align 8, !dbg !1026, !tbaa !591
  %83 = icmp eq %struct.uk_waitq_entry* %82, null, !dbg !1028
  br i1 %83, label %91, label %84, !dbg !1028

; <label>:84:                                     ; preds = %80, %84
  %85 = phi %struct.uk_waitq_entry* [ %87, %84 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %85, i64 0, i32 2, i32 0, !dbg !1028
  %87 = load %struct.uk_waitq_entry*, %struct.uk_waitq_entry** %86, align 8, !dbg !1028, !tbaa !595
  %88 = getelementptr inbounds %struct.uk_waitq_entry, %struct.uk_waitq_entry* %85, i64 0, i32 1, !dbg !1030
  %89 = load %struct.uk_thread*, %struct.uk_thread** %88, align 8, !dbg !1030, !tbaa !600
  call void @uk_thread_wake(%struct.uk_thread* %89) #9, !dbg !1031
  %90 = icmp eq %struct.uk_waitq_entry* %87, null, !dbg !1028
  br i1 %90, label %91, label %84, !dbg !1028, !llvm.loop !602

; <label>:91:                                     ; preds = %84, %80
  call void @ukplat_lcpu_restore_irqf(i64 %81) #9, !dbg !1032
  br label %92, !dbg !1033

; <label>:92:                                     ; preds = %77, %91
  call void @ukplat_lcpu_restore_irqf(i64 %73) #9, !dbg !1034
  br label %93, !dbg !1035

; <label>:93:                                     ; preds = %2, %92
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %12) #6, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %11) #6, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #6, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #6, !dbg !1035
  ret void, !dbg !1035
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
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1036
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1036
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1038
  call void @llvm.va_start(i8* nonnull %3), !dbg !1038
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.6, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !1039
  call void @llvm.va_end(i8* nonnull %3), !dbg !1042
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1043
  ret void, !dbg !1043
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
attributes #5 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!544 = !DILocalVariable(name: "m", arg: 1, scope: !545, file: !504, line: 149, type: !548)
!545 = distinct !DISubprogram(name: "uk_mutex_unlock", scope: !504, file: !504, line: 149, type: !546, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !549)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!549 = !{!544, !550, !551}
!550 = !DILocalVariable(name: "irqf", scope: !545, file: !504, line: 151, type: !95)
!551 = !DILocalVariable(name: "wq", scope: !545, file: !504, line: 153, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!554 = !DILocation(line: 149, column: 53, scope: !545, inlinedAt: !555)
!555 = distinct !DILocation(line: 92, column: 2, scope: !513)
!556 = !DILocation(line: 157, column: 9, scope: !545, inlinedAt: !555)
!557 = !DILocation(line: 151, column: 16, scope: !545, inlinedAt: !555)
!558 = !DILocation(line: 158, column: 2, scope: !559, inlinedAt: !555)
!559 = distinct !DILexicalBlock(scope: !560, file: !504, line: 158, column: 2)
!560 = distinct !DILexicalBlock(scope: !545, file: !504, line: 158, column: 2)
!561 = !{!562, !542, i64 0}
!562 = !{!"uk_mutex", !542, i64 0, !563, i64 8, !564, i64 16}
!563 = !{!"any pointer", !535, i64 0}
!564 = !{!"uk_waitq", !563, i64 0, !563, i64 8}
!565 = !DILocation(line: 158, column: 2, scope: !560, inlinedAt: !555)
!566 = !{!"branch_weights", i32 1, i32 2000}
!567 = !DILocation(line: 158, column: 2, scope: !568, inlinedAt: !555)
!568 = distinct !DILexicalBlock(scope: !559, file: !504, line: 158, column: 2)
!569 = !DILocation(line: 159, column: 6, scope: !570, inlinedAt: !555)
!570 = distinct !DILexicalBlock(scope: !545, file: !504, line: 159, column: 6)
!571 = !DILocation(line: 159, column: 22, scope: !570, inlinedAt: !555)
!572 = !DILocation(line: 159, column: 6, scope: !545, inlinedAt: !555)
!573 = !DILocation(line: 160, column: 12, scope: !574, inlinedAt: !555)
!574 = distinct !DILexicalBlock(scope: !570, file: !504, line: 159, column: 28)
!575 = !{!562, !563, i64 8}
!576 = !DILocation(line: 104, column: 10, scope: !577, inlinedAt: !587)
!577 = distinct !DISubprogram(name: "uk_waitq_wake_up", scope: !578, file: !578, line: 99, type: !579, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !582)
!578 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait.h", directory: "/root/.unikraft/apps/redis/build")
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!582 = !{!583, !584, !585, !586}
!583 = !DILocalVariable(name: "wq", arg: 1, scope: !577, file: !578, line: 99, type: !581)
!584 = !DILocalVariable(name: "flags", scope: !577, file: !578, line: 101, type: !95)
!585 = !DILocalVariable(name: "curr", scope: !577, file: !578, line: 102, type: !57)
!586 = !DILocalVariable(name: "tmp", scope: !577, file: !578, line: 102, type: !57)
!587 = distinct !DILocation(line: 161, column: 3, scope: !574, inlinedAt: !555)
!588 = !DILocation(line: 101, column: 16, scope: !577, inlinedAt: !587)
!589 = !DILocation(line: 105, column: 2, scope: !590, inlinedAt: !587)
!590 = distinct !DILexicalBlock(scope: !577, file: !578, line: 105, column: 2)
!591 = !{!564, !563, i64 0}
!592 = !DILocation(line: 102, column: 25, scope: !577, inlinedAt: !587)
!593 = !DILocation(line: 105, column: 2, scope: !594, inlinedAt: !587)
!594 = distinct !DILexicalBlock(scope: !590, file: !578, line: 105, column: 2)
!595 = !{!596, !563, i64 16}
!596 = !{!"uk_waitq_entry", !542, i64 0, !563, i64 8, !597, i64 16}
!597 = !{!"", !563, i64 0}
!598 = !DILocation(line: 102, column: 32, scope: !577, inlinedAt: !587)
!599 = !DILocation(line: 106, column: 24, scope: !594, inlinedAt: !587)
!600 = !{!596, !563, i64 8}
!601 = !DILocation(line: 106, column: 3, scope: !594, inlinedAt: !587)
!602 = distinct !{!602, !603, !604}
!603 = !DILocation(line: 105, column: 2, scope: !590)
!604 = !DILocation(line: 106, column: 30, scope: !590)
!605 = !DILocation(line: 107, column: 2, scope: !577, inlinedAt: !587)
!606 = !DILocation(line: 162, column: 2, scope: !574, inlinedAt: !555)
!607 = !DILocation(line: 163, column: 2, scope: !545, inlinedAt: !555)
!608 = !DILocation(line: 93, column: 1, scope: !513)
!609 = distinct !DISubprogram(name: "uk_mutex_lock", scope: !504, file: !504, line: 69, type: !546, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !610)
!610 = !{!611, !612, !613, !614, !615, !617, !620, !625, !626, !627}
!611 = !DILocalVariable(name: "m", arg: 1, scope: !609, file: !504, line: 69, type: !548)
!612 = !DILocalVariable(name: "current", scope: !609, file: !504, line: 71, type: !22)
!613 = !DILocalVariable(name: "irqf", scope: !609, file: !504, line: 72, type: !95)
!614 = !DILocalVariable(name: "wq", scope: !609, file: !504, line: 77, type: !552)
!615 = !DILocalVariable(name: "lock_count", scope: !609, file: !504, line: 78, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!617 = !DILocalVariable(name: "owner", scope: !609, file: !504, line: 79, type: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!620 = !DILocalVariable(name: "__current", scope: !621, file: !504, line: 87, type: !22)
!621 = distinct !DILexicalBlock(scope: !622, file: !504, line: 86, column: 5)
!622 = distinct !DILexicalBlock(scope: !623, file: !504, line: 85, column: 11)
!623 = distinct !DILexicalBlock(scope: !624, file: !504, line: 85, column: 2)
!624 = distinct !DILexicalBlock(scope: !609, file: !504, line: 85, column: 2)
!625 = !DILocalVariable(name: "flags", scope: !621, file: !504, line: 88, type: !95)
!626 = !DILocalVariable(name: "__cur", scope: !621, file: !504, line: 89, type: !22)
!627 = !DILocalVariable(name: "__wait", scope: !621, file: !504, line: 89, type: !57)
!628 = !DILocation(line: 69, column: 51, scope: !609)
!629 = !DILocation(line: 78, column: 2, scope: !609)
!630 = !DILocation(line: 78, column: 15, scope: !609)
!631 = !DILocation(line: 78, column: 31, scope: !609)
!632 = !DILocation(line: 79, column: 40, scope: !609)
!633 = !DILocation(line: 79, column: 29, scope: !609)
!634 = !DILocation(line: 120, column: 2, scope: !635, inlinedAt: !641)
!635 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !636, file: !636, line: 116, type: !637, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !639)
!636 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!637 = !DISubroutineType(types: !638)
!638 = !{!95}
!639 = !{!640}
!640 = !DILocalVariable(name: "sp", scope: !635, file: !636, line: 118, type: !95)
!641 = distinct !DILocation(line: 154, column: 21, scope: !642, inlinedAt: !648)
!642 = distinct !DISubprogram(name: "uk_thread_current", scope: !24, file: !24, line: 151, type: !643, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!22}
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "current", scope: !642, file: !24, line: 153, type: !21)
!647 = !DILocalVariable(name: "sp", scope: !642, file: !24, line: 154, type: !95)
!648 = distinct !DILocation(line: 83, column: 2, scope: !609)
!649 = !{i32 547740}
!650 = !DILocation(line: 118, column: 16, scope: !635, inlinedAt: !641)
!651 = !DILocation(line: 154, column: 16, scope: !642, inlinedAt: !648)
!652 = !DILocation(line: 156, column: 38, scope: !642, inlinedAt: !648)
!653 = !DILocation(line: 156, column: 12, scope: !642, inlinedAt: !648)
!654 = !DILocation(line: 153, column: 21, scope: !642, inlinedAt: !648)
!655 = !DILocation(line: 158, column: 9, scope: !642, inlinedAt: !648)
!656 = !{!563, !563, i64 0}
!657 = !DILocation(line: 71, column: 20, scope: !609)
!658 = !DILocation(line: 85, column: 2, scope: !609)
!659 = !DILocation(line: 120, column: 2, scope: !635, inlinedAt: !660)
!660 = distinct !DILocation(line: 154, column: 21, scope: !642, inlinedAt: !661)
!661 = distinct !DILocation(line: 89, column: 3, scope: !621)
!662 = !DILocation(line: 118, column: 16, scope: !635, inlinedAt: !660)
!663 = !DILocation(line: 154, column: 16, scope: !642, inlinedAt: !661)
!664 = !DILocation(line: 153, column: 21, scope: !642, inlinedAt: !661)
!665 = !DILocation(line: 120, column: 2, scope: !635, inlinedAt: !666)
!666 = distinct !DILocation(line: 49, column: 21, scope: !667, inlinedAt: !673)
!667 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !668, file: !668, line: 47, type: !669, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!668 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!669 = !DISubroutineType(types: !670)
!670 = !{!20}
!671 = !{!672}
!672 = !DILocalVariable(name: "sp", scope: !667, file: !668, line: 49, type: !95)
!673 = distinct !DILocation(line: 89, column: 3, scope: !621)
!674 = !DILocation(line: 118, column: 16, scope: !635, inlinedAt: !666)
!675 = !DILocation(line: 49, column: 16, scope: !667, inlinedAt: !673)
!676 = !DILocation(line: 50, column: 19, scope: !667, inlinedAt: !673)
!677 = !DILocation(line: 50, column: 11, scope: !667, inlinedAt: !673)
!678 = !DILocation(line: 50, column: 9, scope: !667, inlinedAt: !673)
!679 = !DILocation(line: 89, column: 3, scope: !621)
!680 = !DILocation(line: 120, column: 2, scope: !635, inlinedAt: !681)
!681 = distinct !DILocation(line: 154, column: 21, scope: !642, inlinedAt: !682)
!682 = distinct !DILocation(line: 89, column: 3, scope: !621)
!683 = !DILocation(line: 118, column: 16, scope: !635, inlinedAt: !681)
!684 = !DILocation(line: 154, column: 16, scope: !642, inlinedAt: !682)
!685 = !DILocation(line: 156, column: 38, scope: !642, inlinedAt: !682)
!686 = !DILocation(line: 158, column: 9, scope: !642, inlinedAt: !682)
!687 = !DILocation(line: 153, column: 21, scope: !642, inlinedAt: !682)
!688 = !DILocation(line: 90, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !621, file: !504, line: 90, column: 7)
!690 = !DILocation(line: 90, column: 18, scope: !689)
!691 = !DILocation(line: 90, column: 23, scope: !689)
!692 = !DILocation(line: 120, column: 2, scope: !635, inlinedAt: !693)
!693 = distinct !DILocation(line: 154, column: 21, scope: !642, inlinedAt: !694)
!694 = distinct !DILocation(line: 93, column: 16, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !504, line: 92, column: 12)
!696 = distinct !DILexicalBlock(scope: !697, file: !504, line: 92, column: 3)
!697 = distinct !DILexicalBlock(scope: !621, file: !504, line: 92, column: 3)
!698 = !DILocation(line: 118, column: 16, scope: !635, inlinedAt: !693)
!699 = !DILocation(line: 154, column: 16, scope: !642, inlinedAt: !694)
!700 = !DILocation(line: 156, column: 38, scope: !642, inlinedAt: !694)
!701 = !DILocation(line: 156, column: 12, scope: !642, inlinedAt: !694)
!702 = !DILocation(line: 153, column: 21, scope: !642, inlinedAt: !694)
!703 = !DILocation(line: 158, column: 9, scope: !642, inlinedAt: !694)
!704 = !DILocation(line: 87, column: 21, scope: !621)
!705 = !DILocation(line: 95, column: 12, scope: !695)
!706 = !DILocation(line: 88, column: 17, scope: !621)
!707 = !DILocalVariable(name: "entry", arg: 2, scope: !708, file: !578, line: 59, type: !57)
!708 = distinct !DISubprogram(name: "uk_waitq_add", scope: !578, file: !578, line: 58, type: !709, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !581, !57}
!711 = !{!712, !707}
!712 = !DILocalVariable(name: "wq", arg: 1, scope: !708, file: !578, line: 58, type: !581)
!713 = !DILocation(line: 59, column: 26, scope: !708, inlinedAt: !714)
!714 = distinct !DILocation(line: 96, column: 4, scope: !695)
!715 = !DILocation(line: 61, column: 14, scope: !716, inlinedAt: !714)
!716 = distinct !DILexicalBlock(scope: !708, file: !578, line: 61, column: 6)
!717 = !{!596, !542, i64 0}
!718 = !DILocation(line: 61, column: 7, scope: !716, inlinedAt: !714)
!719 = !DILocation(line: 61, column: 6, scope: !708, inlinedAt: !714)
!720 = !DILocation(line: 62, column: 3, scope: !721, inlinedAt: !714)
!721 = distinct !DILexicalBlock(scope: !722, file: !578, line: 62, column: 3)
!722 = distinct !DILexicalBlock(scope: !716, file: !578, line: 61, column: 23)
!723 = !{!564, !563, i64 8}
!724 = !DILocation(line: 63, column: 18, scope: !722, inlinedAt: !714)
!725 = !DILocation(line: 64, column: 2, scope: !722, inlinedAt: !714)
!726 = !DILocalVariable(name: "thread", arg: 1, scope: !727, file: !24, line: 122, type: !22)
!727 = distinct !DISubprogram(name: "uk_thread_set_wakeup_time", scope: !24, file: !24, line: 122, type: !728, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !22, !45}
!730 = !{!726, !731}
!731 = !DILocalVariable(name: "time", arg: 2, scope: !727, file: !24, line: 122, type: !45)
!732 = !DILocation(line: 122, column: 64, scope: !727, inlinedAt: !733)
!733 = distinct !DILocation(line: 97, column: 4, scope: !695)
!734 = !DILocation(line: 122, column: 80, scope: !727, inlinedAt: !733)
!735 = !DILocation(line: 124, column: 10, scope: !727, inlinedAt: !733)
!736 = !DILocation(line: 124, column: 22, scope: !727, inlinedAt: !733)
!737 = !{!738, !740, i64 56}
!738 = !{!"uk_thread", !563, i64 0, !563, i64 8, !563, i64 16, !563, i64 24, !739, i64 32, !542, i64 48, !740, i64 56, !741, i64 64, !564, i64 72, !563, i64 88, !563, i64 96, !542, i64 104, !563, i64 112, !563, i64 120}
!739 = !{!"", !563, i64 0, !563, i64 8}
!740 = !{!"long", !535, i64 0}
!741 = !{!"_Bool", !535, i64 0}
!742 = !DILocalVariable(name: "thread", arg: 1, scope: !743, file: !24, line: 183, type: !22)
!743 = distinct !DISubprogram(name: "clear_runnable", scope: !24, file: !24, line: 183, type: !744, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !22}
!746 = !{!742}
!747 = !DILocation(line: 183, column: 53, scope: !743, inlinedAt: !748)
!748 = distinct !DILocation(line: 99, column: 4, scope: !695)
!749 = !DILocation(line: 185, column: 10, scope: !743, inlinedAt: !748)
!750 = !DILocation(line: 185, column: 16, scope: !743, inlinedAt: !748)
!751 = !{!738, !542, i64 48}
!752 = !DILocalVariable(name: "t", arg: 1, scope: !753, file: !71, line: 151, type: !22)
!753 = distinct !DISubprogram(name: "uk_sched_thread_blocked", scope: !71, file: !71, line: 151, type: !744, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !754)
!754 = !{!752}
!755 = !DILocation(line: 151, column: 62, scope: !753, inlinedAt: !756)
!756 = distinct !DILocation(line: 100, column: 4, scope: !695)
!757 = !DILocation(line: 153, column: 2, scope: !758, inlinedAt: !756)
!758 = distinct !DILexicalBlock(scope: !759, file: !71, line: 153, column: 2)
!759 = distinct !DILexicalBlock(scope: !753, file: !71, line: 153, column: 2)
!760 = !DILocation(line: 153, column: 2, scope: !759, inlinedAt: !756)
!761 = !DILocation(line: 153, column: 2, scope: !762, inlinedAt: !756)
!762 = distinct !DILexicalBlock(scope: !758, file: !71, line: 153, column: 2)
!763 = !DILocation(line: 154, column: 6, scope: !753, inlinedAt: !756)
!764 = !{!738, !563, i64 88}
!765 = !DILocation(line: 154, column: 14, scope: !753, inlinedAt: !756)
!766 = !{!767, !563, i64 24}
!767 = !{!"uk_sched", !563, i64 0, !563, i64 8, !563, i64 16, !563, i64 24, !563, i64 32, !563, i64 40, !563, i64 48, !563, i64 56, !563, i64 64, !741, i64 72, !738, i64 80, !768, i64 208, !769, i64 224, !563, i64 248, !563, i64 256, !563, i64 264}
!768 = !{!"uk_thread_list", !563, i64 0, !563, i64 8}
!769 = !{!"ukplat_ctx_callbacks", !563, i64 0, !563, i64 8, !563, i64 16}
!770 = !DILocation(line: 154, column: 2, scope: !753, inlinedAt: !756)
!771 = !DILocation(line: 102, column: 4, scope: !695)
!772 = !DILocation(line: 103, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !695, file: !504, line: 103, column: 8)
!774 = !DILocation(line: 103, column: 19, scope: !773)
!775 = !DILocation(line: 103, column: 24, scope: !773)
!776 = !DILocation(line: 120, column: 2, scope: !635, inlinedAt: !777)
!777 = distinct !DILocation(line: 154, column: 21, scope: !642, inlinedAt: !778)
!778 = distinct !DILocation(line: 117, column: 30, scope: !779, inlinedAt: !783)
!779 = distinct !DISubprogram(name: "uk_sched_yield", scope: !71, file: !71, line: 114, type: !407, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !780)
!780 = !{!781, !782}
!781 = !DILocalVariable(name: "s", scope: !779, file: !71, line: 116, type: !69)
!782 = !DILocalVariable(name: "current", scope: !779, file: !71, line: 117, type: !22)
!783 = distinct !DILocation(line: 105, column: 4, scope: !695)
!784 = !DILocation(line: 118, column: 16, scope: !635, inlinedAt: !777)
!785 = !DILocation(line: 154, column: 16, scope: !642, inlinedAt: !778)
!786 = !DILocation(line: 156, column: 38, scope: !642, inlinedAt: !778)
!787 = !DILocation(line: 156, column: 12, scope: !642, inlinedAt: !778)
!788 = !DILocation(line: 153, column: 21, scope: !642, inlinedAt: !778)
!789 = !DILocation(line: 158, column: 9, scope: !642, inlinedAt: !778)
!790 = !DILocation(line: 117, column: 20, scope: !779, inlinedAt: !783)
!791 = !DILocation(line: 119, column: 2, scope: !792, inlinedAt: !783)
!792 = distinct !DILexicalBlock(scope: !793, file: !71, line: 119, column: 2)
!793 = distinct !DILexicalBlock(scope: !779, file: !71, line: 119, column: 2)
!794 = !DILocation(line: 119, column: 2, scope: !793, inlinedAt: !783)
!795 = !DILocation(line: 119, column: 2, scope: !796, inlinedAt: !783)
!796 = distinct !DILexicalBlock(scope: !792, file: !71, line: 119, column: 2)
!797 = !DILocation(line: 121, column: 15, scope: !779, inlinedAt: !783)
!798 = !DILocation(line: 116, column: 19, scope: !779, inlinedAt: !783)
!799 = !DILocation(line: 122, column: 2, scope: !800, inlinedAt: !783)
!800 = distinct !DILexicalBlock(scope: !801, file: !71, line: 122, column: 2)
!801 = distinct !DILexicalBlock(scope: !779, file: !71, line: 122, column: 2)
!802 = !DILocation(line: 122, column: 2, scope: !801, inlinedAt: !783)
!803 = !DILocation(line: 122, column: 2, scope: !804, inlinedAt: !783)
!804 = distinct !DILexicalBlock(scope: !800, file: !71, line: 122, column: 2)
!805 = !DILocation(line: 123, column: 5, scope: !779, inlinedAt: !783)
!806 = !{!767, !563, i64 0}
!807 = !DILocation(line: 123, column: 2, scope: !779, inlinedAt: !783)
!808 = !DILocation(line: 92, column: 3, scope: !696)
!809 = distinct !{!809, !810, !811}
!810 = !DILocation(line: 92, column: 3, scope: !697)
!811 = !DILocation(line: 106, column: 3, scope: !697)
!812 = !DILocation(line: 107, column: 11, scope: !621)
!813 = !DILocation(line: 109, column: 3, scope: !621)
!814 = !DILocalVariable(name: "entry", arg: 2, scope: !815, file: !578, line: 69, type: !57)
!815 = distinct !DISubprogram(name: "uk_waitq_remove", scope: !578, file: !578, line: 68, type: !709, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !816)
!816 = !{!817, !814, !818}
!817 = !DILocalVariable(name: "wq", arg: 1, scope: !815, file: !578, line: 68, type: !581)
!818 = !DILocalVariable(name: "curelm", scope: !819, file: !578, line: 72, type: !57)
!819 = distinct !DILexicalBlock(scope: !820, file: !578, line: 72, column: 3)
!820 = distinct !DILexicalBlock(scope: !821, file: !578, line: 72, column: 3)
!821 = distinct !DILexicalBlock(scope: !822, file: !578, line: 72, column: 3)
!822 = distinct !DILexicalBlock(scope: !823, file: !578, line: 71, column: 22)
!823 = distinct !DILexicalBlock(scope: !815, file: !578, line: 71, column: 6)
!824 = !DILocation(line: 69, column: 26, scope: !815, inlinedAt: !825)
!825 = distinct !DILocation(line: 110, column: 3, scope: !621)
!826 = !DILocation(line: 71, column: 13, scope: !823, inlinedAt: !825)
!827 = !DILocation(line: 71, column: 6, scope: !823, inlinedAt: !825)
!828 = !DILocation(line: 71, column: 6, scope: !815, inlinedAt: !825)
!829 = !DILocation(line: 72, column: 3, scope: !820, inlinedAt: !825)
!830 = !DILocation(line: 72, column: 3, scope: !821, inlinedAt: !825)
!831 = !DILocation(line: 72, column: 3, scope: !832, inlinedAt: !825)
!832 = distinct !DILexicalBlock(scope: !833, file: !578, line: 72, column: 3)
!833 = distinct !DILexicalBlock(scope: !834, file: !578, line: 72, column: 3)
!834 = distinct !DILexicalBlock(scope: !820, file: !578, line: 72, column: 3)
!835 = !DILocation(line: 72, column: 3, scope: !833, inlinedAt: !825)
!836 = !DILocation(line: 72, column: 3, scope: !819, inlinedAt: !825)
!837 = distinct !{!837, !838, !838}
!838 = !DILocation(line: 72, column: 3, scope: !819)
!839 = !DILocation(line: 72, column: 3, scope: !840, inlinedAt: !825)
!840 = distinct !DILexicalBlock(scope: !841, file: !578, line: 72, column: 3)
!841 = distinct !DILexicalBlock(scope: !819, file: !578, line: 72, column: 3)
!842 = !DILocation(line: 72, column: 3, scope: !841, inlinedAt: !825)
!843 = !DILocation(line: 73, column: 18, scope: !822, inlinedAt: !825)
!844 = !DILocation(line: 74, column: 2, scope: !822, inlinedAt: !825)
!845 = !DILocation(line: 111, column: 3, scope: !621)
!846 = !DILocation(line: 112, column: 2, scope: !622)
!847 = !DILocation(line: 114, column: 9, scope: !622)
!848 = !DILocation(line: 72, column: 16, scope: !609)
!849 = !DILocation(line: 115, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !622, file: !504, line: 115, column: 6)
!851 = !DILocation(line: 115, column: 20, scope: !850)
!852 = !DILocation(line: 115, column: 31, scope: !850)
!853 = !DILocation(line: 115, column: 37, scope: !850)
!854 = !DILocation(line: 115, column: 25, scope: !850)
!855 = !DILocation(line: 117, column: 2, scope: !622)
!856 = !DILocation(line: 85, column: 2, scope: !623)
!857 = distinct !{!857, !858, !859}
!858 = !DILocation(line: 85, column: 2, scope: !624)
!859 = !DILocation(line: 118, column: 1, scope: !624)
!860 = !DILocation(line: 119, column: 15, scope: !609)
!861 = !DILocation(line: 120, column: 11, scope: !609)
!862 = !DILocation(line: 121, column: 2, scope: !609)
!863 = !DILocation(line: 122, column: 1, scope: !609)
!864 = distinct !DISubprogram(name: "closelog", scope: !3, file: !3, line: 95, type: !407, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !865)
!865 = !{}
!866 = !DILocation(line: 97, column: 1, scope: !864)
!867 = distinct !DISubprogram(name: "setlogmask", scope: !3, file: !3, line: 99, type: !868, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!20, !20}
!870 = !{!871, !872}
!871 = !DILocalVariable(name: "maskpri", arg: 1, scope: !867, file: !3, line: 99, type: !20)
!872 = !DILocalVariable(name: "ret", scope: !867, file: !3, line: 101, type: !20)
!873 = !DILocation(line: 99, column: 20, scope: !867)
!874 = !DILocation(line: 103, column: 2, scope: !867)
!875 = !DILocation(line: 104, column: 8, scope: !867)
!876 = !DILocation(line: 101, column: 6, scope: !867)
!877 = !DILocation(line: 105, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !867, file: !3, line: 105, column: 6)
!879 = !DILocation(line: 105, column: 6, scope: !867)
!880 = !DILocation(line: 106, column: 12, scope: !878)
!881 = !DILocation(line: 106, column: 3, scope: !878)
!882 = !DILocation(line: 149, column: 53, scope: !545, inlinedAt: !883)
!883 = distinct !DILocation(line: 107, column: 2, scope: !867)
!884 = !DILocation(line: 157, column: 9, scope: !545, inlinedAt: !883)
!885 = !DILocation(line: 151, column: 16, scope: !545, inlinedAt: !883)
!886 = !DILocation(line: 158, column: 2, scope: !559, inlinedAt: !883)
!887 = !DILocation(line: 158, column: 2, scope: !560, inlinedAt: !883)
!888 = !DILocation(line: 158, column: 2, scope: !568, inlinedAt: !883)
!889 = !DILocation(line: 159, column: 6, scope: !570, inlinedAt: !883)
!890 = !DILocation(line: 159, column: 22, scope: !570, inlinedAt: !883)
!891 = !DILocation(line: 159, column: 6, scope: !545, inlinedAt: !883)
!892 = !DILocation(line: 160, column: 12, scope: !574, inlinedAt: !883)
!893 = !DILocation(line: 104, column: 10, scope: !577, inlinedAt: !894)
!894 = distinct !DILocation(line: 161, column: 3, scope: !574, inlinedAt: !883)
!895 = !DILocation(line: 101, column: 16, scope: !577, inlinedAt: !894)
!896 = !DILocation(line: 105, column: 2, scope: !590, inlinedAt: !894)
!897 = !DILocation(line: 102, column: 25, scope: !577, inlinedAt: !894)
!898 = !DILocation(line: 105, column: 2, scope: !594, inlinedAt: !894)
!899 = !DILocation(line: 102, column: 32, scope: !577, inlinedAt: !894)
!900 = !DILocation(line: 106, column: 24, scope: !594, inlinedAt: !894)
!901 = !DILocation(line: 106, column: 3, scope: !594, inlinedAt: !894)
!902 = !DILocation(line: 107, column: 2, scope: !577, inlinedAt: !894)
!903 = !DILocation(line: 162, column: 2, scope: !574, inlinedAt: !883)
!904 = !DILocation(line: 163, column: 2, scope: !545, inlinedAt: !883)
!905 = !DILocation(line: 108, column: 2, scope: !867)
!906 = distinct !DISubprogram(name: "syslog", scope: !3, file: !3, line: 111, type: !907, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !20, !27, null}
!909 = !{!910, !911, !912, !913, !917, !920, !935, !939, !940, !941}
!910 = !DILocalVariable(name: "priority", arg: 1, scope: !906, file: !3, line: 111, type: !20)
!911 = !DILocalVariable(name: "message", arg: 2, scope: !906, file: !3, line: 111, type: !27)
!912 = !DILocalVariable(name: "ap", scope: !906, file: !3, line: 113, type: !479)
!913 = !DILocalVariable(name: "timebuf", scope: !906, file: !3, line: 114, type: !914)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 16)
!917 = !DILocalVariable(name: "now", scope: !906, file: !3, line: 115, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !919, line: 34, baseType: !49)
!919 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!920 = !DILocalVariable(name: "tm", scope: !906, file: !3, line: 116, type: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !922, line: 31, size: 448, elements: !923)
!922 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !921, file: !922, line: 32, baseType: !20, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !921, file: !922, line: 33, baseType: !20, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !921, file: !922, line: 34, baseType: !20, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !921, file: !922, line: 35, baseType: !20, size: 32, offset: 96)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !921, file: !922, line: 36, baseType: !20, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !921, file: !922, line: 37, baseType: !20, size: 32, offset: 160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !921, file: !922, line: 38, baseType: !20, size: 32, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !921, file: !922, line: 39, baseType: !20, size: 32, offset: 224)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !921, file: !922, line: 40, baseType: !20, size: 32, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !921, file: !922, line: 41, baseType: !49, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !921, file: !922, line: 42, baseType: !27, size: 64, offset: 384)
!935 = !DILocalVariable(name: "buf", scope: !906, file: !3, line: 117, type: !936)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 256)
!939 = !DILocalVariable(name: "pid", scope: !906, file: !3, line: 118, type: !20)
!940 = !DILocalVariable(name: "l", scope: !906, file: !3, line: 119, type: !20)
!941 = !DILocalVariable(name: "l2", scope: !906, file: !3, line: 119, type: !20)
!942 = !DILocation(line: 111, column: 17, scope: !906)
!943 = !DILocation(line: 111, column: 39, scope: !906)
!944 = !DILocation(line: 113, column: 2, scope: !906)
!945 = !DILocation(line: 113, column: 10, scope: !906)
!946 = !DILocation(line: 114, column: 2, scope: !906)
!947 = !DILocation(line: 114, column: 7, scope: !906)
!948 = !DILocation(line: 115, column: 2, scope: !906)
!949 = !DILocation(line: 116, column: 2, scope: !906)
!950 = !DILocation(line: 117, column: 2, scope: !906)
!951 = !DILocation(line: 117, column: 7, scope: !906)
!952 = !DILocation(line: 121, column: 8, scope: !953)
!953 = distinct !DILexicalBlock(scope: !906, file: !3, line: 121, column: 6)
!954 = !DILocation(line: 121, column: 19, scope: !953)
!955 = !DILocation(line: 121, column: 17, scope: !953)
!956 = !DILocation(line: 121, column: 56, scope: !953)
!957 = !DILocation(line: 121, column: 43, scope: !953)
!958 = !DILocation(line: 124, column: 2, scope: !906)
!959 = !DILocation(line: 126, column: 2, scope: !906)
!960 = !DILocation(line: 128, column: 17, scope: !961)
!961 = distinct !DILexicalBlock(scope: !906, file: !3, line: 128, column: 6)
!962 = !DILocation(line: 129, column: 15, scope: !961)
!963 = !DILocation(line: 128, column: 6, scope: !906)
!964 = !DILocation(line: 131, column: 8, scope: !906)
!965 = !DILocation(line: 115, column: 9, scope: !906)
!966 = !DILocation(line: 131, column: 6, scope: !906)
!967 = !{!740, !740, i64 0}
!968 = !DILocation(line: 116, column: 12, scope: !906)
!969 = !DILocation(line: 132, column: 2, scope: !906)
!970 = !DILocation(line: 133, column: 2, scope: !906)
!971 = !DILocation(line: 135, column: 9, scope: !906)
!972 = !DILocation(line: 135, column: 17, scope: !906)
!973 = !DILocation(line: 135, column: 8, scope: !906)
!974 = !DILocation(line: 135, column: 30, scope: !906)
!975 = !DILocation(line: 118, column: 6, scope: !906)
!976 = !DILocation(line: 137, column: 21, scope: !906)
!977 = !DILocation(line: 137, column: 19, scope: !906)
!978 = !DILocation(line: 137, column: 36, scope: !906)
!979 = !DILocation(line: 136, column: 6, scope: !906)
!980 = !DILocation(line: 119, column: 6, scope: !906)
!981 = !DILocation(line: 138, column: 21, scope: !906)
!982 = !DILocation(line: 138, column: 38, scope: !906)
!983 = !DILocation(line: 138, column: 7, scope: !906)
!984 = !DILocation(line: 119, column: 9, scope: !906)
!985 = !DILocation(line: 139, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !906, file: !3, line: 139, column: 6)
!987 = !DILocation(line: 139, column: 6, scope: !906)
!988 = !DILocation(line: 140, column: 31, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 140, column: 7)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 139, column: 15)
!991 = !DILocation(line: 140, column: 10, scope: !989)
!992 = !DILocation(line: 143, column: 6, scope: !989)
!993 = !DILocation(line: 140, column: 7, scope: !990)
!994 = !DILocation(line: 144, column: 13, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 144, column: 7)
!996 = !DILocation(line: 144, column: 7, scope: !995)
!997 = !DILocation(line: 144, column: 18, scope: !995)
!998 = !DILocation(line: 144, column: 7, scope: !990)
!999 = !DILocation(line: 145, column: 9, scope: !995)
!1000 = !DILocation(line: 145, column: 4, scope: !995)
!1001 = !DILocation(line: 145, column: 13, scope: !995)
!1002 = !DILocation(line: 0, scope: !989)
!1003 = !DILocation(line: 146, column: 18, scope: !990)
!1004 = !DILocation(line: 147, column: 4, scope: !990)
!1005 = !DILocation(line: 147, column: 22, scope: !990)
!1006 = !DILocation(line: 0, scope: !990)
!1007 = !DILocation(line: 147, column: 35, scope: !990)
!1008 = !DILocation(line: 147, column: 44, scope: !990)
!1009 = !DILocation(line: 146, column: 3, scope: !990)
!1010 = !DILocation(line: 148, column: 2, scope: !990)
!1011 = !DILocation(line: 150, column: 2, scope: !906)
!1012 = !DILocation(line: 149, column: 53, scope: !545, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 152, column: 2, scope: !906)
!1014 = !DILocation(line: 157, column: 9, scope: !545, inlinedAt: !1013)
!1015 = !DILocation(line: 151, column: 16, scope: !545, inlinedAt: !1013)
!1016 = !DILocation(line: 158, column: 2, scope: !559, inlinedAt: !1013)
!1017 = !DILocation(line: 158, column: 2, scope: !560, inlinedAt: !1013)
!1018 = !DILocation(line: 158, column: 2, scope: !568, inlinedAt: !1013)
!1019 = !DILocation(line: 159, column: 6, scope: !570, inlinedAt: !1013)
!1020 = !DILocation(line: 159, column: 22, scope: !570, inlinedAt: !1013)
!1021 = !DILocation(line: 159, column: 6, scope: !545, inlinedAt: !1013)
!1022 = !DILocation(line: 160, column: 12, scope: !574, inlinedAt: !1013)
!1023 = !DILocation(line: 104, column: 10, scope: !577, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 161, column: 3, scope: !574, inlinedAt: !1013)
!1025 = !DILocation(line: 101, column: 16, scope: !577, inlinedAt: !1024)
!1026 = !DILocation(line: 105, column: 2, scope: !590, inlinedAt: !1024)
!1027 = !DILocation(line: 102, column: 25, scope: !577, inlinedAt: !1024)
!1028 = !DILocation(line: 105, column: 2, scope: !594, inlinedAt: !1024)
!1029 = !DILocation(line: 102, column: 32, scope: !577, inlinedAt: !1024)
!1030 = !DILocation(line: 106, column: 24, scope: !594, inlinedAt: !1024)
!1031 = !DILocation(line: 106, column: 3, scope: !594, inlinedAt: !1024)
!1032 = !DILocation(line: 107, column: 2, scope: !577, inlinedAt: !1024)
!1033 = !DILocation(line: 162, column: 2, scope: !574, inlinedAt: !1013)
!1034 = !DILocation(line: 163, column: 2, scope: !545, inlinedAt: !1013)
!1035 = !DILocation(line: 153, column: 1, scope: !906)
!1036 = !DILocation(line: 196, column: 2, scope: !472)
!1037 = !DILocation(line: 196, column: 10, scope: !472)
!1038 = !DILocation(line: 197, column: 2, scope: !472)
!1039 = !DILocation(line: 198, column: 2, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !473, line: 198, column: 2)
!1041 = distinct !DILexicalBlock(scope: !472, file: !473, line: 198, column: 2)
!1042 = !DILocation(line: 199, column: 2, scope: !472)
!1043 = !DILocation(line: 200, column: 1, scope: !472)
