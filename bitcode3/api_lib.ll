; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/api_lib.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/api_lib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.ip_addr = type { %union.anon.0, i8 }
%union.anon.0 = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.netconn = type { i32, i32, %union.anon, i8, %struct.sys_sem_t, %struct.sys_mbox_t, %struct.sys_mbox_t, i32, i8, %struct.api_msg*, void (%struct.netconn*, i32, i16)* }
%union.anon = type { %struct.ip_pcb* }
%struct.ip_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8 }
%struct.sys_sem_t = type { %struct.uk_semaphore, i32 }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.9, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.9 = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.11, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.11 = type { %struct.anon.13 }
%struct.anon.13 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.uk_thread_sig = type { i64, i64, %struct.uk_list_head, %struct.uk_thread_sig_wait, %struct.uk_list_head }
%struct.uk_thread_sig_wait = type { i32, i64, %struct.siginfo_t }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.uk_list_head = type { %struct.uk_list_head*, %struct.uk_list_head* }
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.sys_mbox_t = type { %struct.uk_alloc*, %struct.uk_mbox*, i32 }
%struct.uk_mbox = type opaque
%struct.api_msg = type { %struct.netconn*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.netvector*, i16, i64, i64, i64, i8 }
%struct.netvector = type { i8*, i64 }
%struct.tcp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb*, i8*, i32, i8, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.tcp_seg*, %struct.tcp_seg*, %struct.tcp_seg*, %struct.pbuf*, %struct.tcp_pcb_listen*, i8 (i8*, %struct.tcp_pcb*, i16)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, i8)*, i8 (i8*, %struct.tcp_pcb*)*, void (i8*, i8)*, i32, i8, i8, i8, i8, i8, i8 }
%struct.tcp_seg = type { %struct.tcp_seg*, %struct.pbuf*, i16, i8, %struct.tcp_hdr* }
%struct.tcp_hdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.tcp_pcb_listen = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb_listen*, i8*, i32, i8, i16, i8 (i8*, %struct.tcp_pcb*, i8)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon.7 = type { i8, i8 }
%struct.anon.3 = type { %struct.ip_addr*, i16, i8 }
%struct.netbuf = type { %struct.pbuf*, %struct.pbuf*, %struct.ip_addr, i16 }
%struct.anon.8 = type { %struct.ip_addr*, %struct.ip_addr*, i8, i32 }
%struct.dns_api_msg = type { i8*, %struct.ip_addr*, i8, %struct.sys_sem_t*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"freeing conn without freeing pcb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"conn has no recvmbox\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"conn->acceptmbox shouldn't exist\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"conn has no op_completed\00", align 1
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"netconn_getaddr: invalid conn\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"netconn_getaddr: invalid addr\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"netconn_getaddr: invalid port\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"netconn_bind: invalid conn\00", align 1
@ip_addr_any = external dso_local constant %struct.ip_addr, align 4
@ip6_addr_any = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@ip_addr_any_type = external dso_local constant %struct.ip_addr, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"netconn_bind_if: invalid conn\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"netconn_connect: invalid conn\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"netconn_disconnect: invalid conn\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"netconn_listen: invalid conn\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"netconn_accept: invalid pointer\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"netconn_accept: invalid conn\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"netconn_recv_tcp_pbuf: invalid conn\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"netconn_recv_udp_raw_netbuf: invalid conn\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"netconn_recv: invalid pointer\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"netconn_recv: invalid conn\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"netconn_send: invalid conn\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"netconn_write: invalid conn\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"netconn_write: invalid conn->type\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"do_write failed to write all bytes\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"netconn_join_leave_group: invalid conn\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"netconn_gethostbyname: invalid name\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"netconn_gethostbyname: invalid addr\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.28 = internal global [10 x i8] c"api_lib.c\00", section ".data_shared", align 1, !dbg !884
@.str.29 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"buf != NULL\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"netconn_close: invalid conn\00", align 1

; Function Attrs: noredzone nounwind
define dso_local %struct.netconn* @netconn_new_with_proto_and_callback(i32, i8 zeroext, void (%struct.netconn*, i32, i16)*) local_unnamed_addr #0 !dbg !906 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !921
  %6 = tail call %struct.netconn* @netconn_alloc(i32 %0, void (%struct.netconn*, i32, i16)* %2) #7, !dbg !922
  %7 = icmp eq %struct.netconn* %6, null, !dbg !924
  br i1 %7, label %47, label %8, !dbg !925

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !926
  %10 = bitcast %union.anon.1* %9 to i8*, !dbg !927
  store i8 %1, i8* %10, align 8, !dbg !928, !tbaa !929
  %11 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !932
  store %struct.netconn* %6, %struct.netconn** %11, align 8, !dbg !933, !tbaa !934
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 4, !dbg !949
  %13 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_newconn, i8* nonnull %5, %struct.sys_sem_t* nonnull %12) #7, !dbg !950
  %14 = icmp eq i8 %13, 0, !dbg !952
  br i1 %14, label %15, label %19, !dbg !954

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !955
  %17 = load i8, i8* %16, align 8, !dbg !955, !tbaa !957
  %18 = icmp eq i8 %17, 0, !dbg !959
  br i1 %18, label %47, label %19, !dbg !961

; <label>:19:                                     ; preds = %8, %15
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 2, !dbg !962
  %21 = bitcast %union.anon* %20 to %struct.tcp_pcb**, !dbg !962
  %22 = load %struct.tcp_pcb*, %struct.tcp_pcb** %21, align 8, !dbg !962, !tbaa !929
  %23 = icmp eq %struct.tcp_pcb* %22, null, !dbg !962
  br i1 %23, label %25, label %24, !dbg !966

; <label>:24:                                     ; preds = %19
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !967
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !970
  call void @ukplat_terminate(i32 3) #9, !dbg !970
  unreachable, !dbg !970

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 5, !dbg !974
  %27 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %26) #7, !dbg !974
  %28 = icmp eq i32 %27, 0, !dbg !974
  br i1 %28, label %29, label %30, !dbg !977

; <label>:29:                                     ; preds = %25
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !978
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !981
  call void @ukplat_terminate(i32 3) #9, !dbg !981
  unreachable, !dbg !981

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 6, !dbg !985
  %32 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %31) #7, !dbg !985
  %33 = icmp eq i32 %32, 0, !dbg !985
  br i1 %33, label %35, label %34, !dbg !988

; <label>:34:                                     ; preds = %30
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !989
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !992
  call void @ukplat_terminate(i32 3) #9, !dbg !992
  unreachable, !dbg !992

; <label>:35:                                     ; preds = %30
  %36 = call i32 @sys_sem_valid(%struct.sys_sem_t* nonnull %12) #7, !dbg !996
  %37 = icmp eq i32 %36, 0, !dbg !996
  br i1 %37, label %38, label %39, !dbg !999

; <label>:38:                                     ; preds = %35
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1000
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1003
  call void @ukplat_terminate(i32 3) #9, !dbg !1003
  unreachable, !dbg !1003

; <label>:39:                                     ; preds = %35
  call void @sys_sem_free(%struct.sys_sem_t* nonnull %12) #7, !dbg !1007
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %26) #7, !dbg !1008
  %40 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1009, !tbaa !1010
  %41 = icmp eq %struct.uk_alloc* %40, null, !dbg !1023
  br i1 %41, label %42, label %43, !dbg !1026, !prof !1027

; <label>:42:                                     ; preds = %39
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !1028
  call void @ukplat_terminate(i32 3) #9, !dbg !1028
  unreachable, !dbg !1028

; <label>:43:                                     ; preds = %39
  %44 = bitcast %struct.netconn* %6 to i8*, !dbg !1030
  %45 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %40, i64 0, i32 5, !dbg !1033
  %46 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %45, align 8, !dbg !1033, !tbaa !1010
  call void %46(%struct.uk_alloc* nonnull %40, i8* %44) #7, !dbg !1034
  br label %47

; <label>:47:                                     ; preds = %3, %15, %43
  %48 = phi %struct.netconn* [ null, %43 ], [ %6, %15 ], [ null, %3 ], !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1036
  ret %struct.netconn* %48, !dbg !1036
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.netconn* @netconn_alloc(i32, void (%struct.netconn*, i32, i16)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_newconn(i8*) #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1038
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1038
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1040
  call void @llvm.va_start(i8* nonnull %3), !dbg !1040
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.28, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !1041
  call void @llvm.va_end(i8* nonnull %3), !dbg !1044
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1045
  ret void, !dbg !1045
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_mbox_valid(%struct.sys_mbox_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sys_sem_valid(%struct.sys_sem_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sys_sem_free(%struct.sys_sem_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sys_mbox_free(%struct.sys_mbox_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_prepare_delete(%struct.netconn*) local_unnamed_addr #0 !dbg !1046 {
  %2 = alloca %struct.api_msg, align 8
  %3 = bitcast %struct.api_msg* %2 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1054
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1055
  br i1 %4, label %16, label %5, !dbg !1057

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !1058
  store %struct.netconn* %0, %struct.netconn** %6, align 8, !dbg !1059, !tbaa !934
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 2, !dbg !1060
  %8 = bitcast %union.anon.1* %7 to %struct.anon.7*, !dbg !1061
  %9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %8, i64 0, i32 1, !dbg !1062
  store i8 41, i8* %9, align 1, !dbg !1063, !tbaa !929
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1067
  %11 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_delconn, i8* nonnull %3, %struct.sys_sem_t* nonnull %10) #7, !dbg !1068
  %12 = icmp eq i8 %11, 0, !dbg !1070
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !1071
  %14 = load i8, i8* %13, align 8, !dbg !1071
  %15 = select i1 %12, i8 %14, i8 %11, !dbg !1072
  br label %16, !dbg !1074

; <label>:16:                                     ; preds = %5, %1
  %17 = phi i8 [ 0, %1 ], [ %15, %5 ], !dbg !1075
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1076
  ret i8 %17, !dbg !1076
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_delconn(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_delete(%struct.netconn*) local_unnamed_addr #0 !dbg !1077 {
  %2 = alloca %struct.api_msg, align 8
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1082
  br i1 %3, label %18, label %4, !dbg !1084

; <label>:4:                                      ; preds = %1
  %5 = bitcast %struct.api_msg* %2 to i8*, !dbg !1088
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1088
  %6 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !1089
  store %struct.netconn* %0, %struct.netconn** %6, align 8, !dbg !1090, !tbaa !934
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 2, !dbg !1091
  %8 = bitcast %union.anon.1* %7 to %struct.anon.7*, !dbg !1092
  %9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %8, i64 0, i32 1, !dbg !1093
  store i8 41, i8* %9, align 1, !dbg !1094, !tbaa !929
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1098
  %11 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_delconn, i8* nonnull %5, %struct.sys_sem_t* nonnull %10) #7, !dbg !1099
  %12 = icmp eq i8 %11, 0, !dbg !1101
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !1102
  %14 = load i8, i8* %13, align 8, !dbg !1102
  %15 = select i1 %12, i8 %14, i8 %11, !dbg !1103
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1105
  %16 = icmp eq i8 %15, 0, !dbg !1107
  br i1 %16, label %17, label %18, !dbg !1109

; <label>:17:                                     ; preds = %4
  call void @netconn_free(%struct.netconn* nonnull %0) #7, !dbg !1110
  br label %18, !dbg !1112

; <label>:18:                                     ; preds = %4, %17, %1
  %19 = phi i8 [ 0, %1 ], [ 0, %17 ], [ %15, %4 ], !dbg !1113
  ret i8 %19, !dbg !1114
}

; Function Attrs: noredzone
declare dso_local void @netconn_free(%struct.netconn*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_getaddr(%struct.netconn*, %struct.ip_addr*, i16*, i8 zeroext) local_unnamed_addr #0 !dbg !1115 {
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !1129
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1129
  %7 = icmp eq %struct.netconn* %0, null, !dbg !1130
  br i1 %7, label %8, label %9, !dbg !1133

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1134
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1137
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1137
  unreachable, !dbg !1137

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip_addr* %1, null, !dbg !1141
  br i1 %10, label %11, label %12, !dbg !1144

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1145
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1148
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1148
  unreachable, !dbg !1148

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i16* %2, null, !dbg !1152
  br i1 %13, label %14, label %15, !dbg !1155

; <label>:14:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1156
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1159
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1159
  unreachable, !dbg !1159

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !1163
  store %struct.netconn* %0, %struct.netconn** %16, align 8, !dbg !1164, !tbaa !934
  %17 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !1165
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 2, !dbg !1166
  %19 = bitcast i64* %18 to i8*, !dbg !1166
  store i8 %3, i8* %19, align 8, !dbg !1167, !tbaa !929
  %20 = bitcast %union.anon.1* %17 to %struct.ip_addr**, !dbg !1168
  store %struct.ip_addr* %1, %struct.ip_addr** %20, align 8, !dbg !1169, !tbaa !929
  %21 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 1, !dbg !1170
  %22 = bitcast i16* %21 to i16**, !dbg !1170
  store i16* %2, i16** %22, align 8, !dbg !1171, !tbaa !929
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1175
  %24 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_getaddr, i8* nonnull %6, %struct.sys_sem_t* nonnull %23) #7, !dbg !1176
  %25 = icmp eq i8 %24, 0, !dbg !1178
  %26 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !1179
  %27 = load i8, i8* %26, align 8, !dbg !1179
  %28 = select i1 %25, i8 %27, i8 %24, !dbg !1180
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1182
  ret i8 %28, !dbg !1182
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_getaddr(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_bind(%struct.netconn*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1183 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !1195
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1195
  %6 = icmp eq %struct.netconn* %0, null, !dbg !1196
  br i1 %6, label %7, label %8, !dbg !1199

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1200
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1203
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1203
  unreachable, !dbg !1203

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.ip_addr* %1, null, !dbg !1207
  %10 = select i1 %9, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !1209
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1210
  %12 = load i8, i8* %11, align 4, !dbg !1210, !tbaa !1212
  %13 = and i8 %12, 32, !dbg !1210
  %14 = icmp eq i8 %13, 0, !dbg !1220
  br i1 %14, label %15, label %49, !dbg !1221

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i64 0, i32 1, !dbg !1222
  %17 = load i8, i8* %16, align 4, !dbg !1222, !tbaa !1223
  %18 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 1), align 4, !dbg !1222, !tbaa !1223
  %19 = icmp eq i8 %17, %18, !dbg !1222
  br i1 %19, label %20, label %49, !dbg !1225

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i8 %17, 6, !dbg !1222
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1222
  %23 = load i32, i32* %22, align 4, !dbg !1222, !tbaa !929
  %24 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1222, !tbaa !929
  %25 = icmp eq i32 %23, %24, !dbg !1222
  br i1 %21, label %26, label %47, !dbg !1225

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %49, !dbg !1222

; <label>:27:                                     ; preds = %26
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1222
  %29 = load i32, i32* %28, align 4, !dbg !1222, !tbaa !929
  %30 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !1222, !tbaa !929
  %31 = icmp eq i32 %29, %30, !dbg !1222
  br i1 %31, label %32, label %49, !dbg !1222

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1222
  %34 = load i32, i32* %33, align 4, !dbg !1222, !tbaa !929
  %35 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !1222, !tbaa !929
  %36 = icmp eq i32 %34, %35, !dbg !1222
  br i1 %36, label %37, label %49, !dbg !1222

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1222
  %39 = load i32, i32* %38, align 4, !dbg !1222, !tbaa !929
  %40 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !1222, !tbaa !929
  %41 = icmp eq i32 %39, %40, !dbg !1222
  br i1 %41, label %42, label %49, !dbg !1222

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %10, i64 0, i32 0, i32 0, i32 1, !dbg !1222
  %44 = load i8, i8* %43, align 4, !dbg !1222, !tbaa !929
  %45 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !1222, !tbaa !929
  %46 = icmp eq i8 %44, %45, !dbg !1222
  br i1 %46, label %48, label %49, !dbg !1222

; <label>:47:                                     ; preds = %20
  br i1 %25, label %48, label %49, !dbg !1225

; <label>:48:                                     ; preds = %47, %42
  br label %49, !dbg !1226

; <label>:49:                                     ; preds = %15, %48, %47, %42, %37, %32, %27, %26, %8
  %50 = phi %struct.ip_addr* [ %10, %15 ], [ @ip_addr_any_type, %48 ], [ %10, %42 ], [ %10, %37 ], [ %10, %32 ], [ %10, %27 ], [ %10, %26 ], [ %10, %47 ], [ %10, %8 ], !dbg !1228
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !1230
  store %struct.netconn* %0, %struct.netconn** %51, align 8, !dbg !1231, !tbaa !934
  %52 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !1232
  %53 = bitcast %union.anon.1* %52 to %struct.ip_addr**, !dbg !1233
  store %struct.ip_addr* %50, %struct.ip_addr** %53, align 8, !dbg !1234, !tbaa !929
  %54 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, i32 0, i32 1, !dbg !1235
  store i16 %2, i16* %54, align 8, !dbg !1236, !tbaa !929
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1240
  %56 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_bind, i8* nonnull %5, %struct.sys_sem_t* nonnull %55) #7, !dbg !1241
  %57 = icmp eq i8 %56, 0, !dbg !1243
  %58 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !1244
  %59 = load i8, i8* %58, align 8, !dbg !1244
  %60 = select i1 %57, i8 %59, i8 %56, !dbg !1245
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1247
  ret i8 %60, !dbg !1247
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_bind(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_bind_if(%struct.netconn*, i8 zeroext) local_unnamed_addr #0 !dbg !1248 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1258
  %5 = icmp eq %struct.netconn* %0, null, !dbg !1259
  br i1 %5, label %6, label %7, !dbg !1262

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1263
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1266
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1266
  unreachable, !dbg !1266

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !1270
  store %struct.netconn* %0, %struct.netconn** %8, align 8, !dbg !1271, !tbaa !934
  %9 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 2, !dbg !1272
  %10 = bitcast %union.anon.1* %9 to %struct.anon.3*, !dbg !1273
  %11 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %10, i64 0, i32 2, !dbg !1274
  store i8 %1, i8* %11, align 2, !dbg !1275, !tbaa !929
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1279
  %13 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_bind_if, i8* nonnull %4, %struct.sys_sem_t* nonnull %12) #7, !dbg !1280
  %14 = icmp eq i8 %13, 0, !dbg !1282
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !1283
  %16 = load i8, i8* %15, align 8, !dbg !1283
  %17 = select i1 %14, i8 %16, i8 %13, !dbg !1284
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1286
  ret i8 %17, !dbg !1286
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_bind_if(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_connect(%struct.netconn*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1287 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !1297
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1297
  %6 = icmp eq %struct.netconn* %0, null, !dbg !1298
  br i1 %6, label %7, label %8, !dbg !1301

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1302
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1305
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1305
  unreachable, !dbg !1305

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.ip_addr* %1, null, !dbg !1309
  %10 = select i1 %9, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !1311
  %11 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !1312
  store %struct.netconn* %0, %struct.netconn** %11, align 8, !dbg !1313, !tbaa !934
  %12 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !1314
  %13 = bitcast %union.anon.1* %12 to %struct.ip_addr**, !dbg !1315
  store %struct.ip_addr* %10, %struct.ip_addr** %13, align 8, !dbg !1316, !tbaa !929
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, i32 0, i32 1, !dbg !1317
  store i16 %2, i16* %14, align 8, !dbg !1318, !tbaa !929
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1322
  %16 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_connect, i8* nonnull %5, %struct.sys_sem_t* nonnull %15) #7, !dbg !1323
  %17 = icmp eq i8 %16, 0, !dbg !1325
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !1326
  %19 = load i8, i8* %18, align 8, !dbg !1326
  %20 = select i1 %17, i8 %19, i8 %16, !dbg !1327
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1329
  ret i8 %20, !dbg !1329
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_connect(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_disconnect(%struct.netconn*) local_unnamed_addr #0 !dbg !1330 {
  %2 = alloca %struct.api_msg, align 8
  %3 = bitcast %struct.api_msg* %2 to i8*, !dbg !1336
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1336
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1337
  br i1 %4, label %5, label %6, !dbg !1340

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1341
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1344
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1344
  unreachable, !dbg !1344

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !1348
  store %struct.netconn* %0, %struct.netconn** %7, align 8, !dbg !1349, !tbaa !934
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1353
  %9 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_disconnect, i8* nonnull %3, %struct.sys_sem_t* nonnull %8) #7, !dbg !1354
  %10 = icmp eq i8 %9, 0, !dbg !1356
  %11 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !1357
  %12 = load i8, i8* %11, align 8, !dbg !1357
  %13 = select i1 %10, i8 %12, i8 %9, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1360
  ret i8 %13, !dbg !1360
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_disconnect(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_listen_with_backlog(%struct.netconn*, i8 zeroext) local_unnamed_addr #0 !dbg !1361 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !1369
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1369
  %5 = icmp eq %struct.netconn* %0, null, !dbg !1370
  br i1 %5, label %6, label %7, !dbg !1373

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1374
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1377
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1377
  unreachable, !dbg !1377

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !1381
  store %struct.netconn* %0, %struct.netconn** %8, align 8, !dbg !1382, !tbaa !934
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1386
  %10 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_listen, i8* nonnull %4, %struct.sys_sem_t* nonnull %9) #7, !dbg !1387
  %11 = icmp eq i8 %10, 0, !dbg !1389
  %12 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !1390
  %13 = load i8, i8* %12, align 8, !dbg !1390
  %14 = select i1 %11, i8 %13, i8 %10, !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1393
  ret i8 %14, !dbg !1393
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_listen(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_accept(%struct.netconn*, %struct.netconn**) local_unnamed_addr #0 !dbg !1394 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #6, !dbg !1407
  %5 = bitcast i8** %4 to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1408
  %6 = icmp eq %struct.netconn** %1, null, !dbg !1409
  br i1 %6, label %7, label %8, !dbg !1412

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1413
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1416
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1416
  unreachable, !dbg !1416

; <label>:8:                                      ; preds = %2
  store %struct.netconn* null, %struct.netconn** %1, align 8, !dbg !1420, !tbaa !1010
  %9 = icmp eq %struct.netconn* %0, null, !dbg !1421
  br i1 %9, label %10, label %11, !dbg !1424

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1425
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1428
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1428
  unreachable, !dbg !1428

; <label>:11:                                     ; preds = %8
  %12 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1439
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1442
  %14 = load i8, i8* %13, align 8, !dbg !1442, !tbaa !1443
  store i8 0, i8* %13, align 8, !dbg !1445, !tbaa !1443
  tail call void @ukplat_lcpu_restore_irqf(i64 %12) #7, !dbg !1446
  store i8 %14, i8* %3, align 1, !dbg !1447, !tbaa !929
  %15 = icmp eq i8 %14, 0, !dbg !1448
  br i1 %15, label %16, label %50, !dbg !1450

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 6, !dbg !1451
  %18 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %17) #7, !dbg !1451
  %19 = icmp eq i32 %18, 0, !dbg !1451
  br i1 %19, label %50, label %20, !dbg !1451

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1451
  %22 = load i8, i8* %21, align 4, !dbg !1451, !tbaa !1212
  %23 = zext i8 %22 to i32, !dbg !1451
  %24 = and i32 %23, 1, !dbg !1451
  %25 = icmp eq i32 %24, 0, !dbg !1451
  br i1 %25, label %26, label %50, !dbg !1453

; <label>:26:                                     ; preds = %20
  %27 = and i32 %23, 2, !dbg !1454
  %28 = icmp eq i32 %27, 0, !dbg !1454
  br i1 %28, label %32, label %29, !dbg !1457

; <label>:29:                                     ; preds = %26
  %30 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %17, i8** nonnull %4) #7, !dbg !1458
  %31 = icmp eq i32 %30, -1, !dbg !1461
  br i1 %31, label %50, label %34, !dbg !1462

; <label>:32:                                     ; preds = %26
  %33 = call i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* nonnull %17, i8** nonnull %4, i32 0) #7, !dbg !1463
  br label %34

; <label>:34:                                     ; preds = %29, %32
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1465
  %36 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %35, align 8, !dbg !1465, !tbaa !1467
  %37 = icmp eq void (%struct.netconn*, i32, i16)* %36, null, !dbg !1465
  br i1 %37, label %39, label %38, !dbg !1468

; <label>:38:                                     ; preds = %34
  call void %36(%struct.netconn* nonnull %0, i32 1, i16 zeroext 0) #7, !dbg !1469
  br label %39, !dbg !1469

; <label>:39:                                     ; preds = %34, %38
  %40 = load i8*, i8** %4, align 8, !dbg !1471, !tbaa !1010
  %41 = call i32 @lwip_netconn_is_err_msg(i8* %40, i8* nonnull %3) #7, !dbg !1473
  %42 = icmp eq i32 %41, 0, !dbg !1473
  br i1 %42, label %45, label %43, !dbg !1474

; <label>:43:                                     ; preds = %39
  %44 = load i8, i8* %3, align 1, !dbg !1475, !tbaa !929
  br label %50, !dbg !1477

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %4, align 8, !dbg !1478, !tbaa !1010
  %47 = icmp eq i8* %46, null, !dbg !1480
  br i1 %47, label %50, label %48, !dbg !1481

; <label>:48:                                     ; preds = %45
  %49 = bitcast %struct.netconn** %1 to i8**, !dbg !1483
  store i8* %46, i8** %49, align 8, !dbg !1483, !tbaa !1010
  br label %50, !dbg !1484

; <label>:50:                                     ; preds = %45, %29, %20, %16, %11, %48, %43
  %51 = phi i8 [ %44, %43 ], [ 0, %48 ], [ %14, %11 ], [ -15, %16 ], [ -15, %20 ], [ -7, %29 ], [ -15, %45 ], !dbg !1485
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1487
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #6, !dbg !1487
  ret i8 %51, !dbg !1487
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_err(%struct.netconn*) local_unnamed_addr #0 !dbg !1433 {
  %2 = icmp eq %struct.netconn* %0, null, !dbg !1489
  br i1 %2, label %7, label %3, !dbg !1491

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1492
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1494
  %6 = load i8, i8* %5, align 8, !dbg !1494, !tbaa !1443
  store i8 0, i8* %5, align 8, !dbg !1496, !tbaa !1443
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #7, !dbg !1497
  br label %7, !dbg !1498

; <label>:7:                                      ; preds = %1, %3
  %8 = phi i8 [ %6, %3 ], [ 0, %1 ], !dbg !1499
  ret i8 %8, !dbg !1500
}

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lwip_netconn_is_err_msg(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_tcp_recvd(%struct.netconn*, i64) local_unnamed_addr #0 !dbg !1501 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !1511
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1511
  %5 = icmp eq %struct.netconn* %0, null, !dbg !1512
  br i1 %5, label %11, label %6, !dbg !1512

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1512
  %8 = load i32, i32* %7, align 8, !dbg !1512, !tbaa !1515
  %9 = and i32 %8, 240, !dbg !1512
  %10 = icmp eq i32 %9, 16, !dbg !1512
  br i1 %10, label %12, label %11, !dbg !1516

; <label>:11:                                     ; preds = %2, %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1517
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1520
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1520
  unreachable, !dbg !1520

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !1535
  store %struct.netconn* %0, %struct.netconn** %13, align 8, !dbg !1536, !tbaa !934
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 2, !dbg !1537
  %15 = bitcast %union.anon.1* %14 to i64*, !dbg !1538
  store i64 %1, i64* %15, align 8, !dbg !1539, !tbaa !929
  %16 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1543
  %17 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_recv, i8* nonnull %4, %struct.sys_sem_t* nonnull %16) #7, !dbg !1544
  %18 = icmp eq i8 %17, 0, !dbg !1546
  %19 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !1547
  %20 = load i8, i8* %19, align 8, !dbg !1547
  %21 = select i1 %18, i8 %20, i8 %17, !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1550
  ret i8 %21, !dbg !1550
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_tcp_pbuf(%struct.netconn*, %struct.pbuf**) local_unnamed_addr #0 !dbg !1551 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1560
  br i1 %3, label %9, label %4, !dbg !1560

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1560
  %6 = load i32, i32* %5, align 8, !dbg !1560, !tbaa !1515
  %7 = and i32 %6, 240, !dbg !1560
  %8 = icmp eq i32 %7, 16, !dbg !1560
  br i1 %8, label %10, label %9, !dbg !1563

; <label>:9:                                      ; preds = %2, %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1564
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1567
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1567
  unreachable, !dbg !1567

; <label>:10:                                     ; preds = %4
  %11 = tail call fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn* nonnull %0, %struct.pbuf** %1, i8 zeroext 0) #8, !dbg !1571
  ret i8 %11, !dbg !1572
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn*, %struct.pbuf**, i8 zeroext) unnamed_addr #0 !dbg !1573 {
  %4 = alloca %struct.api_msg, align 8
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !1589
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1589
  %7 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1590
  %8 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %7) #7, !dbg !1590
  %9 = icmp eq i32 %8, 0, !dbg !1590
  br i1 %9, label %76, label %10, !dbg !1592

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1593
  %12 = load i8, i8* %11, align 4, !dbg !1593, !tbaa !1212
  %13 = icmp slt i8 %12, 0, !dbg !1593
  br i1 %13, label %14, label %16, !dbg !1595

; <label>:14:                                     ; preds = %10
  %15 = and i8 %12, 127, !dbg !1596
  store i8 %15, i8* %11, align 4, !dbg !1596, !tbaa !1212
  br label %52, !dbg !1599

; <label>:16:                                     ; preds = %10
  %17 = zext i8 %2 to i32, !dbg !1600
  %18 = bitcast %struct.pbuf** %1 to i8**, !dbg !1602
  %19 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %18, i8 zeroext %2) #8, !dbg !1603
  %20 = icmp eq i8 %19, 0, !dbg !1605
  br i1 %20, label %21, label %76, !dbg !1607

; <label>:21:                                     ; preds = %16
  %22 = and i32 %17, 8, !dbg !1608
  %23 = load %struct.pbuf*, %struct.pbuf** %1, align 8, !dbg !1609, !tbaa !1010
  %24 = icmp eq i32 %22, 0, !dbg !1611
  br i1 %24, label %25, label %44, !dbg !1612

; <label>:25:                                     ; preds = %21
  %26 = icmp eq %struct.pbuf* %23, null, !dbg !1613
  br i1 %26, label %31, label %27, !dbg !1613

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 2, !dbg !1614
  %29 = load i16, i16* %28, align 8, !dbg !1614, !tbaa !1615
  %30 = zext i16 %29 to i64, !dbg !1613
  br label %31, !dbg !1613

; <label>:31:                                     ; preds = %27, %25
  %32 = phi i64 [ %30, %27 ], [ 1, %25 ]
  %33 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1622
  %34 = load i32, i32* %33, align 8, !dbg !1622, !tbaa !1515
  %35 = and i32 %34, 240, !dbg !1622
  %36 = icmp eq i32 %35, 16, !dbg !1622
  br i1 %36, label %38, label %37, !dbg !1625

; <label>:37:                                     ; preds = %31
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1626
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1629
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1629
  unreachable, !dbg !1629

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !1633
  store %struct.netconn* %0, %struct.netconn** %39, align 8, !dbg !1634, !tbaa !934
  %40 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !1635
  %41 = bitcast %union.anon.1* %40 to i64*, !dbg !1636
  store i64 %32, i64* %41, align 8, !dbg !1637, !tbaa !929
  %42 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1641
  %43 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_recv, i8* nonnull %6, %struct.sys_sem_t* nonnull %42) #7, !dbg !1642
  br label %44, !dbg !1644

; <label>:44:                                     ; preds = %38, %21
  %45 = icmp eq %struct.pbuf* %23, null, !dbg !1645
  br i1 %45, label %46, label %76, !dbg !1647

; <label>:46:                                     ; preds = %44
  %47 = and i32 %17, 16, !dbg !1648
  %48 = icmp eq i32 %47, 0, !dbg !1648
  br i1 %48, label %52, label %49, !dbg !1651

; <label>:49:                                     ; preds = %46
  %50 = load i8, i8* %11, align 4, !dbg !1652, !tbaa !1212
  %51 = or i8 %50, -128, !dbg !1652
  store i8 %51, i8* %11, align 4, !dbg !1652, !tbaa !1212
  br label %76, !dbg !1655

; <label>:52:                                     ; preds = %46, %14
  %53 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1656
  %54 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %53, align 8, !dbg !1656, !tbaa !1467
  %55 = icmp eq void (%struct.netconn*, i32, i16)* %54, null, !dbg !1656
  br i1 %55, label %57, label %56, !dbg !1659

; <label>:56:                                     ; preds = %52
  call void %54(%struct.netconn* nonnull %0, i32 1, i16 zeroext 0) #7, !dbg !1660
  br label %57, !dbg !1660

; <label>:57:                                     ; preds = %52, %56
  %58 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, i32 0, !dbg !1662
  %59 = load %struct.ip_pcb*, %struct.ip_pcb** %58, align 8, !dbg !1662, !tbaa !929
  %60 = icmp eq %struct.ip_pcb* %59, null, !dbg !1664
  br i1 %60, label %61, label %67, !dbg !1665

; <label>:61:                                     ; preds = %57
  %62 = call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1669
  %63 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1671
  %64 = load i8, i8* %63, align 8, !dbg !1671, !tbaa !1443
  store i8 0, i8* %63, align 8, !dbg !1673, !tbaa !1443
  call void @ukplat_lcpu_restore_irqf(i64 %62) #7, !dbg !1674
  %65 = icmp eq i8 %64, 0, !dbg !1675
  %66 = select i1 %65, i8 -14, i8 %64, !dbg !1677
  br label %76, !dbg !1677

; <label>:67:                                     ; preds = %57
  %68 = bitcast %struct.api_msg* %4 to i8*, !dbg !1687
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %68) #6, !dbg !1687
  %69 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !1688
  store %struct.netconn* %0, %struct.netconn** %69, align 8, !dbg !1689, !tbaa !934
  %70 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !1690
  %71 = bitcast %union.anon.1* %70 to %struct.anon.7*, !dbg !1691
  %72 = bitcast %union.anon.1* %70 to i8*, !dbg !1692
  store i8 1, i8* %72, align 8, !dbg !1693, !tbaa !929
  %73 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %71, i64 0, i32 1, !dbg !1694
  store i8 41, i8* %73, align 1, !dbg !1695, !tbaa !929
  %74 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1699
  %75 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_close, i8* nonnull %68, %struct.sys_sem_t* nonnull %74) #7, !dbg !1700
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %68) #6, !dbg !1702
  br label %76, !dbg !1703

; <label>:76:                                     ; preds = %44, %61, %16, %3, %67, %49
  %77 = phi i8 [ -15, %67 ], [ -7, %49 ], [ -11, %3 ], [ %19, %16 ], [ %66, %61 ], [ 0, %44 ], !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1706
  ret i8 %77, !dbg !1706
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_tcp_pbuf_flags(%struct.netconn*, %struct.pbuf**, i8 zeroext) local_unnamed_addr #0 !dbg !1707 {
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1715
  br i1 %4, label %10, label %5, !dbg !1715

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1715
  %7 = load i32, i32* %6, align 8, !dbg !1715, !tbaa !1515
  %8 = and i32 %7, 240, !dbg !1715
  %9 = icmp eq i32 %8, 16, !dbg !1715
  br i1 %9, label %11, label %10, !dbg !1718

; <label>:10:                                     ; preds = %3, %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1719
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1722
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1722
  unreachable, !dbg !1722

; <label>:11:                                     ; preds = %5
  %12 = tail call fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn* nonnull %0, %struct.pbuf** %1, i8 zeroext %2) #8, !dbg !1726
  ret i8 %12, !dbg !1727
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_udp_raw_netbuf(%struct.netconn*, %struct.netbuf**) local_unnamed_addr #0 !dbg !1728 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1737
  br i1 %3, label %9, label %4, !dbg !1737

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1737
  %6 = load i32, i32* %5, align 8, !dbg !1737, !tbaa !1515
  %7 = and i32 %6, 240, !dbg !1737
  %8 = icmp eq i32 %7, 16, !dbg !1737
  br i1 %8, label %9, label %10, !dbg !1740

; <label>:9:                                      ; preds = %4, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1741
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1744
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1744
  unreachable, !dbg !1744

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.netbuf** %1 to i8**, !dbg !1748
  %12 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %11, i8 zeroext 0) #8, !dbg !1749
  ret i8 %12, !dbg !1750
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @netconn_recv_data(%struct.netconn*, i8**, i8 zeroext) unnamed_addr #0 !dbg !1751 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = bitcast i8** %4 to i8*, !dbg !1774
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !1774
  store i8* null, i8** %4, align 8, !dbg !1775, !tbaa !1010
  %7 = icmp eq i8** %1, null, !dbg !1776
  br i1 %7, label %8, label %9, !dbg !1779

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1780
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1783
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1783
  unreachable, !dbg !1783

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %1, align 8, !dbg !1787, !tbaa !1010
  %10 = icmp eq %struct.netconn* %0, null, !dbg !1788
  br i1 %10, label %11, label %12, !dbg !1791

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1792
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1795
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1795
  unreachable, !dbg !1795

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1799
  %14 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %13) #7, !dbg !1799
  %15 = icmp eq i32 %14, 0, !dbg !1799
  br i1 %15, label %16, label %22, !dbg !1800

; <label>:16:                                     ; preds = %12
  %17 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1803
  %18 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1805
  %19 = load i8, i8* %18, align 8, !dbg !1805, !tbaa !1443
  store i8 0, i8* %18, align 8, !dbg !1807, !tbaa !1443
  tail call void @ukplat_lcpu_restore_irqf(i64 %17) #7, !dbg !1808
  %20 = icmp eq i8 %19, 0, !dbg !1810
  %21 = select i1 %20, i8 -11, i8 %19, !dbg !1812
  br label %89

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1813
  %24 = load i8, i8* %23, align 4, !dbg !1813, !tbaa !1212
  %25 = and i8 %2, 4, !dbg !1814
  %26 = and i8 %24, 3, !dbg !1815
  %27 = or i8 %26, %25, !dbg !1815
  %28 = icmp eq i8 %27, 0, !dbg !1815
  br i1 %28, label %29, label %33, !dbg !1815

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1816
  %31 = load i8, i8* %30, align 8, !dbg !1816, !tbaa !1443
  %32 = icmp eq i8 %31, 0, !dbg !1817
  br i1 %32, label %46, label %33, !dbg !1818

; <label>:33:                                     ; preds = %29, %22
  %34 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %13, i8** nonnull %4) #7, !dbg !1819
  %35 = icmp eq i32 %34, -1, !dbg !1820
  br i1 %35, label %36, label %48, !dbg !1821

; <label>:36:                                     ; preds = %33
  %37 = call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1824
  %38 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1826
  %39 = load i8, i8* %38, align 8, !dbg !1826, !tbaa !1443
  store i8 0, i8* %38, align 8, !dbg !1828, !tbaa !1443
  call void @ukplat_lcpu_restore_irqf(i64 %37) #7, !dbg !1829
  %40 = icmp eq i8 %39, 0, !dbg !1831
  br i1 %40, label %41, label %89, !dbg !1833

; <label>:41:                                     ; preds = %36
  %42 = load i8, i8* %23, align 4, !dbg !1834, !tbaa !1212
  %43 = and i8 %42, 1, !dbg !1836
  %44 = icmp eq i8 %43, 0, !dbg !1836
  %45 = select i1 %44, i8 -7, i8 -11, !dbg !1837
  br label %89, !dbg !1837

; <label>:46:                                     ; preds = %29
  %47 = call i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* nonnull %13, i8** nonnull %4, i32 0) #7, !dbg !1838
  br label %48

; <label>:48:                                     ; preds = %33, %46
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1840
  %50 = load i32, i32* %49, align 8, !dbg !1840, !tbaa !1515
  %51 = and i32 %50, 240, !dbg !1840
  %52 = icmp eq i32 %51, 16, !dbg !1841
  br i1 %52, label %53, label %67, !dbg !1842

; <label>:53:                                     ; preds = %48
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #6, !dbg !1844
  %54 = load i8*, i8** %4, align 8, !dbg !1845, !tbaa !1010
  %55 = call i32 @lwip_netconn_is_err_msg(i8* %54, i8* nonnull %5) #7, !dbg !1847
  %56 = icmp eq i32 %55, 0, !dbg !1847
  br i1 %56, label %57, label %63, !dbg !1848

; <label>:57:                                     ; preds = %53
  %58 = bitcast i8** %4 to %struct.pbuf**, !dbg !1849
  %59 = load %struct.pbuf*, %struct.pbuf** %58, align 8, !dbg !1849, !tbaa !1010
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i64 0, i32 2, !dbg !1850
  %61 = load i16, i16* %60, align 8, !dbg !1850, !tbaa !1615
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #6, !dbg !1852
  %62 = ptrtoint %struct.pbuf* %59 to i64
  br label %77

; <label>:63:                                     ; preds = %53
  %64 = load i8, i8* %5, align 1, !dbg !1853, !tbaa !929
  %65 = icmp eq i8 %64, -15, !dbg !1856
  %66 = select i1 %65, i8 0, i8 %64, !dbg !1857
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #6, !dbg !1852
  br label %89

; <label>:67:                                     ; preds = %48
  %68 = load i8*, i8** %4, align 8, !dbg !1859, !tbaa !1010
  %69 = icmp eq i8* %68, null, !dbg !1859
  br i1 %69, label %70, label %71, !dbg !1863

; <label>:70:                                     ; preds = %67
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !1864
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1867
  call void @ukplat_terminate(i32 3) #9, !dbg !1867
  unreachable, !dbg !1867

; <label>:71:                                     ; preds = %67
  %72 = ptrtoint i8* %68 to i64, !dbg !1863
  %73 = bitcast i8* %68 to %struct.pbuf**, !dbg !1871
  %74 = load %struct.pbuf*, %struct.pbuf** %73, align 8, !dbg !1871, !tbaa !1872
  %75 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %74, i64 0, i32 2, !dbg !1871
  %76 = load i16, i16* %75, align 8, !dbg !1871, !tbaa !1615
  br label %77

; <label>:77:                                     ; preds = %57, %71
  %78 = phi i64 [ %72, %71 ], [ %62, %57 ]
  %79 = phi i16 [ %76, %71 ], [ %61, %57 ]
  %80 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1874
  %81 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %80, align 8, !dbg !1874, !tbaa !1467
  %82 = icmp eq void (%struct.netconn*, i32, i16)* %81, null, !dbg !1874
  br i1 %82, label %86, label %83, !dbg !1876

; <label>:83:                                     ; preds = %77
  call void %81(%struct.netconn* nonnull %0, i32 1, i16 zeroext %79) #7, !dbg !1877
  %84 = bitcast i8** %4 to i64*
  %85 = load i64, i64* %84, align 8, !dbg !1879, !tbaa !1010
  br label %86, !dbg !1877

; <label>:86:                                     ; preds = %77, %83
  %87 = phi i64 [ %85, %83 ], [ %78, %77 ], !dbg !1879
  %88 = bitcast i8** %1 to i64*, !dbg !1880
  store i64 %87, i64* %88, align 8, !dbg !1880, !tbaa !1010
  br label %89, !dbg !1881

; <label>:89:                                     ; preds = %63, %36, %41, %86, %16
  %90 = phi i8 [ 0, %86 ], [ %66, %63 ], [ %21, %16 ], [ %39, %36 ], [ %45, %41 ], !dbg !1882
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !1884
  ret i8 %90, !dbg !1884
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_udp_raw_netbuf_flags(%struct.netconn*, %struct.netbuf**, i8 zeroext) local_unnamed_addr #0 !dbg !1885 {
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1895
  br i1 %4, label %10, label %5, !dbg !1895

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1895
  %7 = load i32, i32* %6, align 8, !dbg !1895, !tbaa !1515
  %8 = and i32 %7, 240, !dbg !1895
  %9 = icmp eq i32 %8, 16, !dbg !1895
  br i1 %9, label %10, label %11, !dbg !1898

; <label>:10:                                     ; preds = %5, %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1899
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1902
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1902
  unreachable, !dbg !1902

; <label>:11:                                     ; preds = %5
  %12 = bitcast %struct.netbuf** %1 to i8**, !dbg !1906
  %13 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %12, i8 zeroext %2) #8, !dbg !1907
  ret i8 %13, !dbg !1908
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv(%struct.netconn*, %struct.netbuf**) local_unnamed_addr #0 !dbg !1909 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = icmp eq %struct.netbuf** %1, null, !dbg !1921
  br i1 %4, label %5, label %6, !dbg !1924

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1925
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1928
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1928
  unreachable, !dbg !1928

; <label>:6:                                      ; preds = %2
  store %struct.netbuf* null, %struct.netbuf** %1, align 8, !dbg !1932, !tbaa !1010
  %7 = icmp eq %struct.netconn* %0, null, !dbg !1933
  br i1 %7, label %8, label %9, !dbg !1936

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1937
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1940
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1940
  unreachable, !dbg !1940

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1944
  %11 = load i32, i32* %10, align 8, !dbg !1944, !tbaa !1515
  %12 = and i32 %11, 240, !dbg !1944
  %13 = icmp eq i32 %12, 16, !dbg !1945
  br i1 %13, label %14, label %41, !dbg !1946

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct.pbuf** %3 to i8*, !dbg !1947
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #6, !dbg !1947
  store %struct.pbuf* null, %struct.pbuf** %3, align 8, !dbg !1948, !tbaa !1010
  %16 = tail call i8* @memp_malloc(i32 6) #7, !dbg !1949
  %17 = icmp eq i8* %16, null, !dbg !1950
  br i1 %17, label %39, label %18, !dbg !1952

; <label>:18:                                     ; preds = %14
  %19 = call fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn* nonnull %0, %struct.pbuf** nonnull %3, i8 zeroext 0) #8, !dbg !1953
  %20 = icmp eq i8 %19, 0, !dbg !1955
  br i1 %20, label %22, label %21, !dbg !1957

; <label>:21:                                     ; preds = %18
  call void @memp_free(i32 6, i8* nonnull %16) #7, !dbg !1958
  br label %39, !dbg !1960

; <label>:22:                                     ; preds = %18
  %23 = load %struct.pbuf*, %struct.pbuf** %3, align 8, !dbg !1961, !tbaa !1010
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !1961
  br i1 %24, label %25, label %26, !dbg !1964

; <label>:25:                                     ; preds = %22
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1965
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1968
  call void @ukplat_terminate(i32 3) #9, !dbg !1968
  unreachable, !dbg !1968

; <label>:26:                                     ; preds = %22
  %27 = bitcast i8* %16 to %struct.pbuf**, !dbg !1972
  store %struct.pbuf* %23, %struct.pbuf** %27, align 8, !dbg !1973, !tbaa !1872
  %28 = bitcast %struct.pbuf** %3 to i64*, !dbg !1974
  %29 = load i64, i64* %28, align 8, !dbg !1974, !tbaa !1010
  %30 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !1975
  %31 = bitcast i8* %30 to i64*, !dbg !1976
  store i64 %29, i64* %31, align 8, !dbg !1976, !tbaa !1977
  %32 = getelementptr inbounds i8, i8* %16, i64 40, !dbg !1978
  %33 = bitcast i8* %32 to i16*, !dbg !1978
  store i16 0, i16* %33, align 8, !dbg !1979, !tbaa !1980
  %34 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !1981
  %35 = bitcast i8* %34 to <4 x i32>*, !dbg !1981
  store <4 x i32> zeroinitializer, <4 x i32>* %35, align 8, !dbg !1981, !tbaa !929
  %36 = getelementptr inbounds i8, i8* %16, i64 32, !dbg !1981
  store i8 0, i8* %36, align 8, !dbg !1981, !tbaa !929
  %37 = getelementptr inbounds i8, i8* %16, i64 36, !dbg !1984
  store i8 0, i8* %37, align 4, !dbg !1984, !tbaa !1989
  %38 = bitcast %struct.netbuf** %1 to i8**, !dbg !1990
  store i8* %16, i8** %38, align 8, !dbg !1990, !tbaa !1010
  br label %39, !dbg !1991

; <label>:39:                                     ; preds = %14, %26, %21
  %40 = phi i8 [ %19, %21 ], [ 0, %26 ], [ -1, %14 ], !dbg !1992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #6, !dbg !1993
  br label %44

; <label>:41:                                     ; preds = %9
  %42 = bitcast %struct.netbuf** %1 to i8**, !dbg !1994
  %43 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %42, i8 zeroext 0) #8, !dbg !1996
  br label %44, !dbg !1997

; <label>:44:                                     ; preds = %41, %39
  %45 = phi i8 [ %40, %39 ], [ %43, %41 ], !dbg !1998
  ret i8 %45, !dbg !1999
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_sendto(%struct.netconn*, %struct.netbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !2000 {
  %5 = alloca %struct.api_msg, align 8
  %6 = icmp eq %struct.netbuf* %1, null, !dbg !2012
  br i1 %6, label %54, label %7, !dbg !2014

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, !dbg !2015
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !2020
  %10 = load i8, i8* %9, align 4, !dbg !2020, !tbaa !1223
  %11 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 1, !dbg !2020
  store i8 %10, i8* %11, align 4, !dbg !2020, !tbaa !1989
  %12 = icmp eq %struct.ip_addr* %2, null, !dbg !2023
  br i1 %12, label %31, label %13, !dbg !2023

; <label>:13:                                     ; preds = %7
  %14 = load i8, i8* %9, align 4, !dbg !2023, !tbaa !1223
  %15 = icmp eq i8 %14, 6, !dbg !2023
  %16 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2025
  %17 = load i32, i32* %16, align 4, !dbg !2025, !tbaa !929
  br i1 %15, label %18, label %31, !dbg !2028

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2025
  store i32 %17, i32* %19, align 8, !dbg !2025, !tbaa !929
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2025
  %21 = load i32, i32* %20, align 4, !dbg !2025, !tbaa !929
  %22 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !2025
  store i32 %21, i32* %22, align 4, !dbg !2025, !tbaa !929
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2025
  %24 = load i32, i32* %23, align 4, !dbg !2025, !tbaa !929
  %25 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !2025
  store i32 %24, i32* %25, align 8, !dbg !2025, !tbaa !929
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2025
  %27 = load i32, i32* %26, align 4, !dbg !2025, !tbaa !929
  %28 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !2025
  store i32 %27, i32* %28, align 4, !dbg !2025, !tbaa !929
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 1, !dbg !2025
  %30 = load i8, i8* %29, align 4, !dbg !2025, !tbaa !929
  br label %37, !dbg !2029

; <label>:31:                                     ; preds = %13, %7
  %32 = phi i32 [ 0, %7 ], [ %17, %13 ], !dbg !2030
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2030
  store i32 %32, i32* %33, align 8, !dbg !2030, !tbaa !929
  %34 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !2032
  store i32 0, i32* %34, align 4, !dbg !2032, !tbaa !929
  %35 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !2032
  store i32 0, i32* %35, align 8, !dbg !2032, !tbaa !929
  %36 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !2032
  store i32 0, i32* %36, align 4, !dbg !2032, !tbaa !929
  br label %37

; <label>:37:                                     ; preds = %18, %31
  %38 = phi i8 [ %30, %18 ], [ 0, %31 ]
  %39 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !2025
  store i8 %38, i8* %39, align 8, !dbg !2025, !tbaa !929
  %40 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 3, !dbg !2034
  store i16 %3, i16* %40, align 8, !dbg !2035, !tbaa !1980
  %41 = bitcast %struct.api_msg* %5 to i8*, !dbg !2047
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %41) #6, !dbg !2047
  %42 = icmp eq %struct.netconn* %0, null, !dbg !2048
  br i1 %42, label %43, label %44, !dbg !2051

; <label>:43:                                     ; preds = %37
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !2052
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2055
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2055
  unreachable, !dbg !2055

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !2059
  store %struct.netconn* %0, %struct.netconn** %45, align 8, !dbg !2060, !tbaa !934
  %46 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !2061
  %47 = bitcast %union.anon.1* %46 to %struct.netbuf**, !dbg !2062
  store %struct.netbuf* %1, %struct.netbuf** %47, align 8, !dbg !2063, !tbaa !929
  %48 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2067
  %49 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_send, i8* nonnull %41, %struct.sys_sem_t* nonnull %48) #7, !dbg !2068
  %50 = icmp eq i8 %49, 0, !dbg !2070
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !2071
  %52 = load i8, i8* %51, align 8, !dbg !2071
  %53 = select i1 %50, i8 %52, i8 %49, !dbg !2072
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %41) #6, !dbg !2074
  br label %54, !dbg !2075

; <label>:54:                                     ; preds = %4, %44
  %55 = phi i8 [ %53, %44 ], [ -6, %4 ], !dbg !2076
  ret i8 %55, !dbg !2077
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_send(%struct.netconn*, %struct.netbuf*) local_unnamed_addr #0 !dbg !2037 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !2080
  %5 = icmp eq %struct.netconn* %0, null, !dbg !2081
  br i1 %5, label %6, label %7, !dbg !2082

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !2083
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2084
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2084
  unreachable, !dbg !2084

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !2085
  store %struct.netconn* %0, %struct.netconn** %8, align 8, !dbg !2086, !tbaa !934
  %9 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 2, !dbg !2087
  %10 = bitcast %union.anon.1* %9 to %struct.netbuf**, !dbg !2088
  store %struct.netbuf* %1, %struct.netbuf** %10, align 8, !dbg !2089, !tbaa !929
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2093
  %12 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_send, i8* nonnull %4, %struct.sys_sem_t* nonnull %11) #7, !dbg !2094
  %13 = icmp eq i8 %12, 0, !dbg !2096
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !2097
  %15 = load i8, i8* %14, align 8, !dbg !2097
  %16 = select i1 %13, i8 %15, i8 %12, !dbg !2098
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !2100
  ret i8 %16, !dbg !2100
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_send(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_write_partly(%struct.netconn*, i8*, i64, i8 zeroext, i64*) local_unnamed_addr #0 !dbg !2101 {
  %6 = alloca %struct.netvector, align 8
  %7 = bitcast %struct.netvector* %6 to i8*, !dbg !2117
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #6, !dbg !2117
  %8 = getelementptr inbounds %struct.netvector, %struct.netvector* %6, i64 0, i32 0, !dbg !2118
  store i8* %1, i8** %8, align 8, !dbg !2119, !tbaa !2120
  %9 = getelementptr inbounds %struct.netvector, %struct.netvector* %6, i64 0, i32 1, !dbg !2122
  store i64 %2, i64* %9, align 8, !dbg !2123, !tbaa !2124
  %10 = call signext i8 @netconn_write_vectors_partly(%struct.netconn* %0, %struct.netvector* nonnull %6, i16 zeroext 1, i8 zeroext %3, i64* %4) #8, !dbg !2126
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #6, !dbg !2127
  ret i8 %10, !dbg !2128
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_write_vectors_partly(%struct.netconn*, %struct.netvector*, i16 zeroext, i8 zeroext, i64*) local_unnamed_addr #0 !dbg !2129 {
  %6 = alloca %struct.api_msg, align 8
  %7 = bitcast %struct.api_msg* %6 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #6, !dbg !2155
  %8 = icmp eq %struct.netconn* %0, null, !dbg !2156
  br i1 %8, label %9, label %10, !dbg !2159

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !2160
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2163
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2163
  unreachable, !dbg !2163

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !2167
  %12 = load i32, i32* %11, align 8, !dbg !2167, !tbaa !1515
  %13 = and i32 %12, 240, !dbg !2167
  %14 = icmp eq i32 %13, 16, !dbg !2167
  br i1 %14, label %16, label %15, !dbg !2170

; <label>:15:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !2171
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2174
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2174
  unreachable, !dbg !2174

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !2178
  %18 = load i8, i8* %17, align 4, !dbg !2178, !tbaa !1212
  %19 = and i8 %18, 2, !dbg !2178
  %20 = and i8 %3, 4, !dbg !2179
  %21 = or i8 %19, %20, !dbg !2179
  %22 = icmp eq i8 %21, 0, !dbg !2179
  %23 = icmp ne i64* %4, null, !dbg !2180
  %24 = or i1 %23, %22, !dbg !2182
  br i1 %24, label %25, label %68, !dbg !2182

; <label>:25:                                     ; preds = %16
  %26 = icmp eq i16 %2, 0, !dbg !2185
  br i1 %26, label %68, label %27, !dbg !2188

; <label>:27:                                     ; preds = %25
  %28 = zext i16 %2 to i64, !dbg !2189
  br label %31, !dbg !2189

; <label>:29:                                     ; preds = %31
  %30 = icmp ult i64 %38, %28, !dbg !2185
  br i1 %30, label %31, label %39, !dbg !2188, !llvm.loop !2191

; <label>:31:                                     ; preds = %27, %29
  %32 = phi i64 [ 0, %27 ], [ %38, %29 ]
  %33 = phi i64 [ 0, %27 ], [ %36, %29 ]
  %34 = getelementptr inbounds %struct.netvector, %struct.netvector* %1, i64 %32, i32 1, !dbg !2193
  %35 = load i64, i64* %34, align 8, !dbg !2193, !tbaa !2124
  %36 = add i64 %35, %33, !dbg !2194
  %37 = icmp ult i64 %36, %35, !dbg !2195
  %38 = add nuw nsw i64 %32, 1, !dbg !2197
  br i1 %37, label %68, label %29, !dbg !2198

; <label>:39:                                     ; preds = %29
  %40 = icmp eq i64 %36, 0, !dbg !2199
  br i1 %40, label %68, label %41, !dbg !2200

; <label>:41:                                     ; preds = %39
  %42 = icmp sgt i64 %36, -1, !dbg !2201
  %43 = or i1 %42, %23, !dbg !2202
  %44 = select i1 %42, i64 %36, i64 9223372036854775807, !dbg !2202
  br i1 %43, label %45, label %68, !dbg !2202

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 0, !dbg !2203
  store %struct.netconn* %0, %struct.netconn** %46, align 8, !dbg !2204, !tbaa !934
  %47 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 0, !dbg !2205
  store %struct.netvector* %1, %struct.netvector** %47, align 8, !dbg !2206, !tbaa !929
  %48 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 1, !dbg !2207
  store i16 %2, i16* %48, align 8, !dbg !2208, !tbaa !929
  %49 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 2, !dbg !2209
  store i64 0, i64* %49, align 8, !dbg !2210, !tbaa !929
  %50 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 5, !dbg !2211
  store i8 %3, i8* %50, align 8, !dbg !2212, !tbaa !929
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 3, !dbg !2213
  store i64 %44, i64* %51, align 8, !dbg !2214, !tbaa !929
  %52 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 4, !dbg !2215
  store i64 0, i64* %52, align 8, !dbg !2216, !tbaa !929
  %53 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2220
  %54 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_write, i8* nonnull %7, %struct.sys_sem_t* nonnull %53) #7, !dbg !2221
  %55 = icmp eq i8 %54, 0, !dbg !2223
  br i1 %55, label %56, label %68, !dbg !2224

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 1, !dbg !2225
  %58 = load i8, i8* %57, align 8, !dbg !2225, !tbaa !957
  %59 = icmp eq i8 %58, 0, !dbg !2227
  br i1 %59, label %60, label %68, !dbg !2229

; <label>:60:                                     ; preds = %56
  %61 = load i64, i64* %52, align 8, !dbg !2230
  br i1 %23, label %62, label %63, !dbg !2236

; <label>:62:                                     ; preds = %60
  store i64 %61, i64* %4, align 8, !dbg !2237, !tbaa !2240
  br label %63, !dbg !2241

; <label>:63:                                     ; preds = %60, %62
  %64 = xor i1 %22, true, !dbg !2242
  %65 = icmp eq i64 %61, %44, !dbg !2243
  %66 = or i1 %65, %64, !dbg !2242
  br i1 %66, label %68, label %67, !dbg !2242

; <label>:67:                                     ; preds = %63
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2244
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2247
  call void @ukplat_terminate(i32 3) #9, !dbg !2247
  unreachable, !dbg !2247

; <label>:68:                                     ; preds = %31, %41, %25, %45, %56, %63, %39, %16
  %69 = phi i8 [ -6, %16 ], [ 0, %39 ], [ 0, %63 ], [ %58, %56 ], [ %54, %45 ], [ 0, %25 ], [ -6, %41 ], [ -6, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #6, !dbg !2251
  ret i8 %69, !dbg !2251
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_write(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_close(%struct.netconn*) local_unnamed_addr #0 !dbg !2252 {
  %2 = alloca %struct.api_msg, align 8
  %3 = bitcast %struct.api_msg* %2 to i8*, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6, !dbg !2259
  %4 = icmp eq %struct.netconn* %0, null, !dbg !2260
  br i1 %4, label %5, label %6, !dbg !2263

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2264
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2267
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2267
  unreachable, !dbg !2267

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !2271
  store %struct.netconn* %0, %struct.netconn** %7, align 8, !dbg !2272, !tbaa !934
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 2, !dbg !2273
  %9 = bitcast %union.anon.1* %8 to %struct.anon.7*, !dbg !2274
  %10 = bitcast %union.anon.1* %8 to i8*, !dbg !2275
  store i8 3, i8* %10, align 8, !dbg !2276, !tbaa !929
  %11 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %9, i64 0, i32 1, !dbg !2277
  store i8 41, i8* %11, align 1, !dbg !2278, !tbaa !929
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2282
  %13 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_close, i8* nonnull %3, %struct.sys_sem_t* nonnull %12) #7, !dbg !2283
  %14 = icmp eq i8 %13, 0, !dbg !2285
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !2286
  %16 = load i8, i8* %15, align 8, !dbg !2286
  %17 = select i1 %14, i8 %16, i8 %13, !dbg !2287
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6, !dbg !2289
  ret i8 %17, !dbg !2290
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_shutdown(%struct.netconn*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !2291 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !2303
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !2303
  %6 = icmp eq %struct.netconn* %0, null, !dbg !2304
  br i1 %6, label %7, label %8, !dbg !2305

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2306
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2307
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2307
  unreachable, !dbg !2307

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i8 %2, 0, !dbg !2308
  %10 = select i1 %9, i8 0, i8 2, !dbg !2308
  %11 = icmp ne i8 %1, 0, !dbg !2309
  %12 = zext i1 %11 to i8, !dbg !2309
  %13 = or i8 %10, %12, !dbg !2310
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !2312
  store %struct.netconn* %0, %struct.netconn** %14, align 8, !dbg !2313, !tbaa !934
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !2314
  %16 = bitcast %union.anon.1* %15 to %struct.anon.7*, !dbg !2315
  %17 = bitcast %union.anon.1* %15 to i8*, !dbg !2316
  store i8 %13, i8* %17, align 8, !dbg !2317, !tbaa !929
  %18 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %16, i64 0, i32 1, !dbg !2318
  store i8 41, i8* %18, align 1, !dbg !2319, !tbaa !929
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2323
  %20 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_close, i8* nonnull %5, %struct.sys_sem_t* nonnull %19) #7, !dbg !2324
  %21 = icmp eq i8 %20, 0, !dbg !2326
  %22 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !2327
  %23 = load i8, i8* %22, align 8, !dbg !2327
  %24 = select i1 %21, i8 %23, i8 %20, !dbg !2328
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !2330
  ret i8 %24, !dbg !2331
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_join_leave_group(%struct.netconn*, %struct.ip_addr*, %struct.ip_addr*, i32) local_unnamed_addr #0 !dbg !2332 {
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2346
  %7 = icmp eq %struct.netconn* %0, null, !dbg !2347
  br i1 %7, label %8, label %9, !dbg !2350

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2351
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2354
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2354
  unreachable, !dbg !2354

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip_addr* %1, null, !dbg !2358
  %11 = select i1 %10, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !2360
  %12 = icmp eq %struct.ip_addr* %2, null, !dbg !2361
  %13 = select i1 %12, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %2, !dbg !2363
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !2364
  store %struct.netconn* %0, %struct.netconn** %14, align 8, !dbg !2365, !tbaa !934
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !2366
  %16 = bitcast %union.anon.1* %15 to %struct.anon.8*, !dbg !2367
  %17 = bitcast %union.anon.1* %15 to %struct.ip_addr**, !dbg !2368
  store %struct.ip_addr* %11, %struct.ip_addr** %17, align 8, !dbg !2369, !tbaa !929
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 1, !dbg !2370
  %19 = bitcast i16* %18 to %struct.ip_addr**, !dbg !2370
  store %struct.ip_addr* %13, %struct.ip_addr** %19, align 8, !dbg !2371, !tbaa !929
  %20 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %16, i64 0, i32 3, !dbg !2372
  store i32 %3, i32* %20, align 4, !dbg !2373, !tbaa !929
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2377
  %22 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_join_leave_group, i8* nonnull %6, %struct.sys_sem_t* nonnull %21) #7, !dbg !2378
  %23 = icmp eq i8 %22, 0, !dbg !2380
  %24 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !2381
  %25 = load i8, i8* %24, align 8, !dbg !2381
  %26 = select i1 %23, i8 %25, i8 %22, !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2384
  ret i8 %26, !dbg !2384
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_join_leave_group(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_join_leave_group_netif(%struct.netconn*, %struct.ip_addr*, i8 zeroext, i32) local_unnamed_addr #0 !dbg !2385 {
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !2399
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2399
  %7 = icmp eq %struct.netconn* %0, null, !dbg !2400
  br i1 %7, label %8, label %9, !dbg !2403

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2404
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2407
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2407
  unreachable, !dbg !2407

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8 %2, 0, !dbg !2411
  br i1 %10, label %27, label %11, !dbg !2413

; <label>:11:                                     ; preds = %9
  %12 = icmp eq %struct.ip_addr* %1, null, !dbg !2414
  %13 = select i1 %12, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !2416
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !2417
  store %struct.netconn* %0, %struct.netconn** %14, align 8, !dbg !2418, !tbaa !934
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !2419
  %16 = bitcast %union.anon.1* %15 to %struct.anon.8*, !dbg !2420
  %17 = bitcast %union.anon.1* %15 to %struct.ip_addr**, !dbg !2421
  store %struct.ip_addr* %13, %struct.ip_addr** %17, align 8, !dbg !2422, !tbaa !929
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 2, !dbg !2423
  %19 = bitcast i64* %18 to i8*, !dbg !2423
  store i8 %2, i8* %19, align 8, !dbg !2424, !tbaa !929
  %20 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %16, i64 0, i32 3, !dbg !2425
  store i32 %3, i32* %20, align 4, !dbg !2426, !tbaa !929
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2430
  %22 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_join_leave_group_netif, i8* nonnull %6, %struct.sys_sem_t* nonnull %21) #7, !dbg !2431
  %23 = icmp eq i8 %22, 0, !dbg !2433
  br i1 %23, label %24, label %27, !dbg !2434

; <label>:24:                                     ; preds = %11
  %25 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !2435
  %26 = load i8, i8* %25, align 8, !dbg !2435, !tbaa !957
  br label %27, !dbg !2436

; <label>:27:                                     ; preds = %24, %11, %9
  %28 = phi i8 [ -12, %9 ], [ %26, %24 ], [ %22, %11 ], !dbg !2437
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2438
  ret i8 %28, !dbg !2438
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_join_leave_group_netif(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_gethostbyname_addrtype(i8*, %struct.ip_addr*, i8 zeroext) local_unnamed_addr #0 !dbg !2439 {
  %4 = alloca %struct.dns_api_msg, align 8
  %5 = alloca %struct.sys_sem_t, align 8
  %6 = alloca i8, align 1
  %7 = bitcast %struct.dns_api_msg* %4 to i8*, !dbg !2462
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6, !dbg !2462
  %8 = bitcast %struct.sys_sem_t* %5 to i8*, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #6, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #6, !dbg !2465
  %9 = icmp eq i8* %0, null, !dbg !2466
  br i1 %9, label %10, label %11, !dbg !2469

; <label>:10:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !2470
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2473
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2473
  unreachable, !dbg !2473

; <label>:11:                                     ; preds = %3
  %12 = icmp eq %struct.ip_addr* %1, null, !dbg !2477
  br i1 %12, label %13, label %14, !dbg !2480

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2481
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2484
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2484
  unreachable, !dbg !2484

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 4, !dbg !2488
  store i8* %6, i8** %15, align 8, !dbg !2489, !tbaa !2490
  %16 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 3, !dbg !2492
  store %struct.sys_sem_t* %5, %struct.sys_sem_t** %16, align 8, !dbg !2493, !tbaa !2494
  %17 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 1, !dbg !2495
  store %struct.ip_addr* %1, %struct.ip_addr** %17, align 8, !dbg !2496, !tbaa !2497
  %18 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 0, !dbg !2498
  store i8* %0, i8** %18, align 8, !dbg !2499, !tbaa !2500
  %19 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 2, !dbg !2501
  store i8 %2, i8* %19, align 8, !dbg !2502, !tbaa !2503
  %20 = call signext i8 @sys_sem_new(%struct.sys_sem_t* nonnull %5, i8 zeroext 0) #7, !dbg !2504
  store i8 %20, i8* %6, align 1, !dbg !2505, !tbaa !929
  %21 = icmp eq i8 %20, 0, !dbg !2506
  br i1 %21, label %22, label %28, !dbg !2508

; <label>:22:                                     ; preds = %14
  %23 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_gethostbyname, i8* nonnull %7, %struct.sys_sem_t* nonnull %5) #7, !dbg !2509
  %24 = load %struct.sys_sem_t*, %struct.sys_sem_t** %16, align 8, !dbg !2511, !tbaa !2494
  call void @sys_sem_free(%struct.sys_sem_t* %24) #7, !dbg !2512
  %25 = icmp eq i8 %23, 0, !dbg !2513
  %26 = load i8, i8* %6, align 1, !dbg !2515
  %27 = select i1 %25, i8 %26, i8 %23, !dbg !2516
  br label %28, !dbg !2516

; <label>:28:                                     ; preds = %22, %14
  %29 = phi i8 [ %20, %14 ], [ %27, %22 ], !dbg !2517
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #6, !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #6, !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6, !dbg !2518
  ret i8 %29, !dbg !2518
}

; Function Attrs: noredzone
declare dso_local signext i8 @sys_sem_new(%struct.sys_sem_t*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @tcpip_send_msg_wait_sem(void (i8*)*, i8*, %struct.sys_sem_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_gethostbyname(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_recv(i8*) #3

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_close(i8*) #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!902, !903, !904}
!llvm.ident = !{!905}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !696, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !889)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !120, globals: !883)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/api_lib.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !27, !34, !48, !54, !58, !65, !86, !93, !99}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_type", file: !13, line: 113, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/api.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "NETCONN_INVALID", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "NETCONN_TCP", value: 16, isUnsigned: true)
!18 = !DIEnumerator(name: "NETCONN_TCP_IPV6", value: 24, isUnsigned: true)
!19 = !DIEnumerator(name: "NETCONN_UDP", value: 32, isUnsigned: true)
!20 = !DIEnumerator(name: "NETCONN_UDPLITE", value: 33, isUnsigned: true)
!21 = !DIEnumerator(name: "NETCONN_UDPNOCHKSUM", value: 34, isUnsigned: true)
!22 = !DIEnumerator(name: "NETCONN_UDP_IPV6", value: 40, isUnsigned: true)
!23 = !DIEnumerator(name: "NETCONN_UDPLITE_IPV6", value: 41, isUnsigned: true)
!24 = !DIEnumerator(name: "NETCONN_UDPNOCHKSUM_IPV6", value: 42, isUnsigned: true)
!25 = !DIEnumerator(name: "NETCONN_RAW", value: 64, isUnsigned: true)
!26 = !DIEnumerator(name: "NETCONN_RAW_IPV6", value: 72, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_state", file: !13, line: 147, baseType: !14, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "NETCONN_NONE", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "NETCONN_WRITE", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "NETCONN_LISTEN", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "NETCONN_CONNECT", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "NETCONN_CLOSE", value: 4, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_state", file: !35, line: 56, baseType: !14, size: 32, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpbase.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!37 = !DIEnumerator(name: "CLOSED", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "LISTEN", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "SYN_SENT", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "SYN_RCVD", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "ESTABLISHED", value: 4, isUnsigned: true)
!42 = !DIEnumerator(name: "FIN_WAIT_1", value: 5, isUnsigned: true)
!43 = !DIEnumerator(name: "FIN_WAIT_2", value: 6, isUnsigned: true)
!44 = !DIEnumerator(name: "CLOSE_WAIT", value: 7, isUnsigned: true)
!45 = !DIEnumerator(name: "CLOSING", value: 8, isUnsigned: true)
!46 = !DIEnumerator(name: "LAST_ACK", value: 9, isUnsigned: true)
!47 = !DIEnumerator(name: "TIME_WAIT", value: 10, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !49, line: 92, baseType: !14, size: 32, elements: !50)
!49 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_igmp", file: !13, line: 191, baseType: !14, size: 32, elements: !55)
!55 = !{!56, !57}
!56 = !DIEnumerator(name: "NETCONN_JOIN", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "NETCONN_LEAVE", value: 1, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_evt", file: !13, line: 181, baseType: !14, size: 32, elements: !59)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "NETCONN_EVT_RCVPLUS", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "NETCONN_EVT_RCVMINUS", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "NETCONN_EVT_SENDPLUS", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "NETCONN_EVT_SENDMINUS", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "NETCONN_EVT_ERROR", value: 4, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 53, baseType: !67, size: 32, elements: !68)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!69 = !DIEnumerator(name: "ERR_OK", value: 0)
!70 = !DIEnumerator(name: "ERR_MEM", value: -1)
!71 = !DIEnumerator(name: "ERR_BUF", value: -2)
!72 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!73 = !DIEnumerator(name: "ERR_RTE", value: -4)
!74 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!75 = !DIEnumerator(name: "ERR_VAL", value: -6)
!76 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!77 = !DIEnumerator(name: "ERR_USE", value: -8)
!78 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!79 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!80 = !DIEnumerator(name: "ERR_CONN", value: -11)
!81 = !DIEnumerator(name: "ERR_IF", value: -12)
!82 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!83 = !DIEnumerator(name: "ERR_RST", value: -14)
!84 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!85 = !DIEnumerator(name: "ERR_ARG", value: -16)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !87, line: 68, baseType: !14, size: 32, elements: !88)
!87 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !94, line: 54, baseType: !14, size: 32, elements: !95)
!94 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!98 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 52, baseType: !14, size: 32, elements: !101)
!100 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!102 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!108 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!109 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!110 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!111 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!112 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!113 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!114 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!115 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!116 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!117 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!118 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!119 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!120 = !{!121, !122, !501, !816, !854, !158, !240}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netconn", file: !13, line: 218, size: 1024, elements: !124)
!124 = !{!125, !126, !127, !353, !354, !792, !802, !803, !804, !805, !878}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !13, line: 220, baseType: !12, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !123, file: !13, line: 222, baseType: !27, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pcb", scope: !123, file: !13, line: 229, baseType: !128, size: 64, offset: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !13, line: 224, size: 64, elements: !129)
!129 = !{!130, !174, !324, !350}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !128, file: !13, line: 225, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_pcb", file: !133, line: 91, size: 416, elements: !134)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !{!135, !169, !170, !171, !172, !173}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !132, file: !133, line: 93, baseType: !136, size: 192)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !94, line: 76, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !94, line: 69, size: 192, elements: !138)
!138 = !{!139, !168}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !137, file: !94, line: 73, baseType: !140, size: 160)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !94, line: 70, size: 160, elements: !141)
!141 = !{!142, !162}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !140, file: !94, line: 71, baseType: !143, size: 160)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !144, line: 67, baseType: !145)
!144 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !144, line: 59, size: 160, elements: !146)
!146 = !{!147, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !145, file: !144, line: 60, baseType: !148, size: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !155)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !150, line: 129, baseType: !151)
!150 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !152, line: 48, baseType: !153)
!152 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !154, line: 79, baseType: !14)
!154 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !145, file: !144, line: 62, baseType: !158, size: 8, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !150, line: 125, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !152, line: 24, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !154, line: 43, baseType: !161)
!161 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !140, file: !94, line: 72, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !164, line: 57, baseType: !165)
!164 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !164, line: 51, size: 32, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !165, file: !164, line: 52, baseType: !149, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !94, line: 75, baseType: !158, size: 8, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !132, file: !133, line: 93, baseType: !136, size: 192, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !132, file: !133, line: 93, baseType: !158, size: 8, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !132, file: !133, line: 93, baseType: !158, size: 8, offset: 392)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !132, file: !133, line: 93, baseType: !158, size: 8, offset: 400)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !132, file: !133, line: 93, baseType: !158, size: 8, offset: 408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !128, file: !13, line: 226, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !177, line: 242, size: 2240, elements: !178)
!177 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !194, !195, !197, !198, !199, !200, !201, !202, !204, !205, !206, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !267, !268, !269, !270, !295, !300, !305, !307, !312, !317, !318, !319, !320, !321, !322, !323}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !176, file: !177, line: 244, baseType: !136, size: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !176, file: !177, line: 244, baseType: !136, size: 192, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !176, file: !177, line: 244, baseType: !158, size: 8, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !176, file: !177, line: 244, baseType: !158, size: 8, offset: 392)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !176, file: !177, line: 244, baseType: !158, size: 8, offset: 400)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !176, file: !177, line: 244, baseType: !158, size: 8, offset: 408)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !177, line: 246, baseType: !175, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !176, file: !177, line: 246, baseType: !121, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !176, file: !177, line: 246, baseType: !34, size: 32, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !176, file: !177, line: 246, baseType: !158, size: 8, offset: 608)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !176, file: !177, line: 246, baseType: !190, size: 16, offset: 624)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !150, line: 127, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !152, line: 36, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !154, line: 57, baseType: !193)
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !176, file: !177, line: 249, baseType: !190, size: 16, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !177, line: 251, baseType: !196, size: 16, offset: 656)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !177, line: 206, baseType: !190)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !176, file: !177, line: 278, baseType: !158, size: 8, offset: 672)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !176, file: !177, line: 278, baseType: !158, size: 8, offset: 680)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !176, file: !177, line: 279, baseType: !158, size: 8, offset: 688)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !176, file: !177, line: 280, baseType: !149, size: 32, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !176, file: !177, line: 283, baseType: !149, size: 32, offset: 736)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !176, file: !177, line: 284, baseType: !203, size: 32, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !35, line: 51, baseType: !149)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !176, file: !177, line: 285, baseType: !203, size: 32, offset: 800)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !176, file: !177, line: 286, baseType: !149, size: 32, offset: 832)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !176, file: !177, line: 295, baseType: !207, size: 16, offset: 864)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !150, line: 128, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !152, line: 32, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !154, line: 55, baseType: !210)
!210 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !176, file: !177, line: 297, baseType: !190, size: 16, offset: 880)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !176, file: !177, line: 300, baseType: !149, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !176, file: !177, line: 301, baseType: !149, size: 32, offset: 928)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !176, file: !177, line: 302, baseType: !207, size: 16, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !176, file: !177, line: 302, baseType: !207, size: 16, offset: 976)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !176, file: !177, line: 304, baseType: !207, size: 16, offset: 992)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !176, file: !177, line: 305, baseType: !158, size: 8, offset: 1008)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !176, file: !177, line: 308, baseType: !158, size: 8, offset: 1016)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !176, file: !177, line: 309, baseType: !149, size: 32, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !176, file: !177, line: 312, baseType: !203, size: 32, offset: 1056)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !176, file: !177, line: 313, baseType: !203, size: 32, offset: 1088)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !176, file: !177, line: 316, baseType: !149, size: 32, offset: 1120)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !176, file: !177, line: 319, baseType: !149, size: 32, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !176, file: !177, line: 320, baseType: !149, size: 32, offset: 1184)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !176, file: !177, line: 320, baseType: !149, size: 32, offset: 1216)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !176, file: !177, line: 322, baseType: !149, size: 32, offset: 1248)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !176, file: !177, line: 323, baseType: !203, size: 32, offset: 1280)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !176, file: !177, line: 324, baseType: !203, size: 32, offset: 1312)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !176, file: !177, line: 326, baseType: !203, size: 32, offset: 1344)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !176, file: !177, line: 328, baseType: !190, size: 16, offset: 1376)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !176, file: !177, line: 332, baseType: !190, size: 16, offset: 1392)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !176, file: !177, line: 335, baseType: !203, size: 32, offset: 1408)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !176, file: !177, line: 338, baseType: !234, size: 64, offset: 1472)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !236, line: 253, size: 256, elements: !237)
!236 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!237 = !{!238, !239, !252, !253, !254}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !236, line: 254, baseType: !234, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !235, file: !236, line: 255, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !242, line: 186, size: 192, elements: !243)
!242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !242, line: 188, baseType: !240, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !241, file: !242, line: 191, baseType: !121, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !241, file: !242, line: 200, baseType: !190, size: 16, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !241, file: !242, line: 203, baseType: !190, size: 16, offset: 144)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !241, file: !242, line: 208, baseType: !158, size: 8, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !242, line: 211, baseType: !158, size: 8, offset: 168)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !241, file: !242, line: 218, baseType: !158, size: 8, offset: 176)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !241, file: !242, line: 221, baseType: !158, size: 8, offset: 184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !235, file: !236, line: 256, baseType: !190, size: 16, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !236, line: 266, baseType: !158, size: 8, offset: 144)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tcphdr", scope: !235, file: !236, line: 273, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_hdr", file: !257, line: 56, size: 160, elements: !258)
!257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !256, file: !257, line: 57, baseType: !190, size: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !256, file: !257, line: 58, baseType: !190, size: 16, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !256, file: !257, line: 59, baseType: !149, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ackno", scope: !256, file: !257, line: 60, baseType: !149, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_hdrlen_rsvd_flags", scope: !256, file: !257, line: 61, baseType: !190, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "wnd", scope: !256, file: !257, line: 62, baseType: !190, size: 16, offset: 112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !256, file: !257, line: 63, baseType: !190, size: 16, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !256, file: !257, line: 64, baseType: !190, size: 16, offset: 144)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !176, file: !177, line: 339, baseType: !234, size: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !176, file: !177, line: 341, baseType: !234, size: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !176, file: !177, line: 344, baseType: !240, size: 64, offset: 1664)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !176, file: !177, line: 347, baseType: !271, size: 64, offset: 1728)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !177, line: 223, size: 704, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !272, file: !177, line: 225, baseType: !136, size: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !272, file: !177, line: 225, baseType: !136, size: 192, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !272, file: !177, line: 225, baseType: !158, size: 8, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !272, file: !177, line: 225, baseType: !158, size: 8, offset: 392)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !272, file: !177, line: 225, baseType: !158, size: 8, offset: 400)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !272, file: !177, line: 225, baseType: !158, size: 8, offset: 408)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !177, line: 227, baseType: !271, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !272, file: !177, line: 227, baseType: !121, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !177, line: 227, baseType: !34, size: 32, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !272, file: !177, line: 227, baseType: !158, size: 8, offset: 608)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !272, file: !177, line: 227, baseType: !190, size: 16, offset: 624)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !272, file: !177, line: 231, baseType: !286, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !177, line: 70, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !121, !175, !290}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !66, line: 96, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !150, line: 126, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !152, line: 20, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !154, line: 41, baseType: !294)
!294 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !176, file: !177, line: 352, baseType: !296, size: 64, offset: 1792)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !177, line: 96, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!290, !121, !175, !190}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !176, file: !177, line: 354, baseType: !301, size: 64, offset: 1856)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !177, line: 82, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!290, !121, !175, !240, !290}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !176, file: !177, line: 356, baseType: !306, size: 64, offset: 1920)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !177, line: 134, baseType: !287)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !176, file: !177, line: 358, baseType: !308, size: 64, offset: 1984)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !177, line: 108, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!290, !121, !175}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !176, file: !177, line: 360, baseType: !313, size: 64, offset: 2048)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !177, line: 120, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !121, !290}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !176, file: !177, line: 369, baseType: !149, size: 32, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !176, file: !177, line: 376, baseType: !158, size: 8, offset: 2144)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !176, file: !177, line: 378, baseType: !158, size: 8, offset: 2152)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !176, file: !177, line: 380, baseType: !158, size: 8, offset: 2160)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !176, file: !177, line: 383, baseType: !158, size: 8, offset: 2168)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !176, file: !177, line: 386, baseType: !158, size: 8, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !176, file: !177, line: 387, baseType: !158, size: 8, offset: 2184)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !128, file: !13, line: 227, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_pcb", file: !327, line: 81, size: 768, elements: !328)
!327 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/udp.h", directory: "/root/.unikraft/apps/redis/build")
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !349}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !326, file: !327, line: 83, baseType: !136, size: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !326, file: !327, line: 83, baseType: !136, size: 192, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !326, file: !327, line: 83, baseType: !158, size: 8, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !326, file: !327, line: 83, baseType: !158, size: 8, offset: 392)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !326, file: !327, line: 83, baseType: !158, size: 8, offset: 400)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !326, file: !327, line: 83, baseType: !158, size: 8, offset: 408)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !327, line: 87, baseType: !325, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !327, line: 89, baseType: !158, size: 8, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !326, file: !327, line: 91, baseType: !190, size: 16, offset: 528)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !326, file: !327, line: 91, baseType: !190, size: 16, offset: 544)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ip4", scope: !326, file: !327, line: 96, baseType: !163, size: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifindex", scope: !326, file: !327, line: 99, baseType: !158, size: 8, offset: 608)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !326, file: !327, line: 101, baseType: !158, size: 8, offset: 616)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !326, file: !327, line: 110, baseType: !343, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "udp_recv_fn", file: !327, line: 77, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !121, !325, !240, !347, !190}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "recv_arg", scope: !326, file: !327, line: 112, baseType: !121, size: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !128, file: !13, line: 228, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "raw_pcb", file: !13, line: 210, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pending_err", scope: !123, file: !13, line: 231, baseType: !290, size: 8, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "op_completed", scope: !123, file: !13, line: 234, baseType: !355, size: 256, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sem_t", file: !356, line: 72, baseType: !357)
!356 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 69, size: 256, elements: !358)
!358 = !{!359, !791}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !357, file: !356, line: 70, baseType: !360, size: 192)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !361, line: 51, size: 192, elements: !362)
!361 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!362 = !{!363, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !360, file: !361, line: 52, baseType: !364, size: 64)
!364 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !360, file: !361, line: 53, baseType: !366, size: 128, offset: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !367, line: 42, size: 128, elements: !368)
!367 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!368 = !{!369, !789}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !366, file: !367, line: 42, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !367, line: 35, size: 192, elements: !372)
!372 = !{!373, !374, !785}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !371, file: !367, line: 36, baseType: !67, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !371, file: !367, line: 37, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !377, line: 59, size: 1024, elements: !378)
!377 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!378 = !{!379, !380, !381, !382, !383, !389, !390, !395, !397, !398, !544, !545, !546, !755}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !377, line: 60, baseType: !6, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !376, file: !377, line: 61, baseType: !121, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !376, file: !377, line: 62, baseType: !121, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !376, file: !377, line: 63, baseType: !121, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !376, file: !377, line: 64, baseType: !384, size: 128, offset: 256)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !377, line: 64, size: 128, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !384, file: !377, line: 64, baseType: !375, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !384, file: !377, line: 64, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !377, line: 65, baseType: !151, size: 32, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !376, file: !377, line: 66, baseType: !391, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !392, line: 49, baseType: !393)
!392 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !394, line: 128, baseType: !364)
!394 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !376, file: !377, line: 67, baseType: !396, size: 8, offset: 512)
!396 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !376, file: !377, line: 68, baseType: !366, size: 128, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !376, file: !377, line: 69, baseType: !399, size: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !401, line: 90, size: 2176, elements: !402)
!401 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!402 = !{!403, !408, !426, !431, !433, !435, !440, !448, !453, !459, !460, !461, !466, !541, !542, !543}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !400, file: !401, line: 91, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !401, line: 68, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !399}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !400, file: !401, line: 93, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !401, line: 71, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!67, !399, !375, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !416, line: 62, baseType: !417)
!416 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !416, line: 55, size: 128, elements: !418)
!418 = !{!419, !420, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !417, file: !416, line: 57, baseType: !396, size: 8)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !417, file: !416, line: 59, baseType: !421, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !416, line: 53, baseType: !67)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !417, file: !416, line: 61, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !392, line: 48, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !394, line: 129, baseType: !425)
!425 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !400, file: !401, line: 94, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !401, line: 74, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !399, !375}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !400, file: !401, line: 95, baseType: !432, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !401, line: 76, baseType: !428)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !400, file: !401, line: 96, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !401, line: 78, baseType: !428)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !400, file: !401, line: 98, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !401, line: 81, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!67, !399, !375, !421}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !400, file: !401, line: 99, baseType: !441, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !401, line: 83, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!67, !399, !445, !447}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !400, file: !401, line: 100, baseType: !449, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !401, line: 85, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!67, !399, !375, !67}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !400, file: !401, line: 101, baseType: !454, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !401, line: 87, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!67, !399, !445, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !400, file: !401, line: 104, baseType: !396, size: 8, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !400, file: !401, line: 105, baseType: !376, size: 1024, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !400, file: !401, line: 106, baseType: !462, size: 128, offset: 1664)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !377, line: 93, size: 128, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !462, file: !377, line: 93, baseType: !375, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !462, file: !377, line: 93, baseType: !388, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !400, file: !401, line: 107, baseType: !467, size: 192, offset: 1792)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !468, line: 59, size: 192, elements: !469)
!468 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!469 = !{!470, !532, !536}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !467, file: !468, line: 61, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !468, line: 51, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!121, !475, !425, !425}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !477, line: 77, size: 832, elements: !478)
!477 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!478 = !{!479, !486, !491, !496, !502, !504, !509, !510, !511, !516, !521, !526, !527, !528}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !476, file: !477, line: 79, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !477, line: 54, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!121, !475, !484}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !485, line: 58, baseType: !425)
!485 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !476, file: !477, line: 80, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !477, line: 56, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!121, !475, !484, !484}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !476, file: !477, line: 81, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !477, line: 62, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!121, !475, !121, !484}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !476, file: !477, line: 82, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !477, line: 58, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!67, !475, !501, !484, !484}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !476, file: !477, line: 83, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !477, line: 60, baseType: !488)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !476, file: !477, line: 84, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !477, line: 64, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !475, !121}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !476, file: !477, line: 87, baseType: !505, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !476, file: !477, line: 88, baseType: !480, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !476, file: !477, line: 92, baseType: !512, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !477, line: 66, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!121, !475, !425}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !476, file: !477, line: 93, baseType: !517, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !477, line: 68, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !475, !121, !425}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !476, file: !477, line: 99, baseType: !522, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !477, line: 70, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!67, !475, !121, !484}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !476, file: !477, line: 100, baseType: !484, size: 64, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !477, line: 103, baseType: !475, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !476, file: !477, line: 104, baseType: !529, offset: 832)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: -1)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !467, file: !468, line: 63, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !121}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !467, file: !468, line: 65, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !468, line: 56, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !121, !121}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !400, file: !401, line: 108, baseType: !475, size: 64, offset: 1984)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !401, line: 109, baseType: !399, size: 64, offset: 2048)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !400, file: !401, line: 110, baseType: !121, size: 64, offset: 2112)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !376, file: !377, line: 70, baseType: !121, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !376, file: !377, line: 72, baseType: !67, size: 32, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !376, file: !377, line: 82, baseType: !547, size: 64, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !549, line: 569, size: 14912, elements: !550)
!549 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!550 = !{!551, !552, !623, !624, !625, !626, !630, !631, !635, !636, !640, !652, !653, !654, !656, !657, !658, !719, !740, !741, !746, !753}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !548, file: !549, line: 571, baseType: !67, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !548, file: !549, line: 576, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !549, line: 287, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !549, line: 181, size: 1408, elements: !556)
!556 = !{!557, !559, !560, !561, !562, !563, !568, !569, !570, !577, !581, !586, !590, !591, !592, !593, !597, !601, !602, !603, !605, !606, !610, !622}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !555, file: !549, line: 182, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !555, file: !549, line: 183, baseType: !67, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !555, file: !549, line: 184, baseType: !67, size: 32, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !555, file: !549, line: 185, baseType: !210, size: 16, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !555, file: !549, line: 186, baseType: !210, size: 16, offset: 144)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !555, file: !549, line: 187, baseType: !564, size: 128, offset: 192)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !549, line: 117, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !564, file: !549, line: 118, baseType: !558, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !564, file: !549, line: 119, baseType: !67, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !555, file: !549, line: 188, baseType: !67, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !555, file: !549, line: 195, baseType: !121, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !555, file: !549, line: 197, baseType: !571, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !547, !121, !576, !67}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !575, line: 145, baseType: !364)
!575 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !555, file: !549, line: 199, baseType: !578, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!574, !547, !121, !6, !67}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !555, file: !549, line: 202, baseType: !582, size: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!585, !547, !121, !585, !67}
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !575, line: 114, baseType: !364)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !555, file: !549, line: 203, baseType: !587, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!67, !547, !121}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !555, file: !549, line: 206, baseType: !564, size: 128, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !555, file: !549, line: 207, baseType: !558, size: 64, offset: 832)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !555, file: !549, line: 208, baseType: !67, size: 32, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !555, file: !549, line: 211, baseType: !594, size: 24, offset: 928)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 3)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !555, file: !549, line: 212, baseType: !598, size: 8, offset: 952)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 8, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 1)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !555, file: !549, line: 215, baseType: !564, size: 128, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !555, file: !549, line: 218, baseType: !67, size: 32, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !555, file: !549, line: 219, baseType: !604, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !575, line: 44, baseType: !364)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !555, file: !549, line: 222, baseType: !547, size: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !555, file: !549, line: 226, baseType: !607, size: 32, offset: 1280)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !575, line: 175, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !609, line: 12, baseType: !67)
!609 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !555, file: !549, line: 228, baseType: !611, size: 64, offset: 1312)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !575, line: 171, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 163, size: 64, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !612, file: !575, line: 165, baseType: !67, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !612, file: !575, line: 170, baseType: !616, size: 32, offset: 32)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !575, line: 166, size: 32, elements: !617)
!617 = !{!618, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !616, file: !575, line: 168, baseType: !619, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !485, line: 124, baseType: !14)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !616, file: !575, line: 169, baseType: !621, size: 32)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 32, elements: !155)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !555, file: !549, line: 229, baseType: !67, size: 32, offset: 1376)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !548, file: !549, line: 576, baseType: !553, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !548, file: !549, line: 576, baseType: !553, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !548, file: !549, line: 578, baseType: !67, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !548, file: !549, line: 579, baseType: !627, size: 200, offset: 288)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 25)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !548, file: !549, line: 582, baseType: !67, size: 32, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !548, file: !549, line: 583, baseType: !632, size: 64, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !634, line: 9, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !548, file: !549, line: 585, baseType: !67, size: 32, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !548, file: !549, line: 587, baseType: !637, size: 64, offset: 704)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !547}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !548, file: !549, line: 590, baseType: !641, size: 64, offset: 768)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !549, line: 47, size: 256, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !642, file: !549, line: 49, baseType: !641, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !642, file: !549, line: 50, baseType: !67, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !642, file: !549, line: 50, baseType: !67, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !642, file: !549, line: 50, baseType: !67, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !642, file: !549, line: 50, baseType: !67, size: 32, offset: 160)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !642, file: !549, line: 51, baseType: !650, size: 32, offset: 192)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32, elements: !599)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !549, line: 25, baseType: !14)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !548, file: !549, line: 591, baseType: !67, size: 32, offset: 832)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !548, file: !549, line: 592, baseType: !641, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !548, file: !549, line: 593, baseType: !655, size: 64, offset: 960)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !548, file: !549, line: 596, baseType: !67, size: 32, offset: 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !548, file: !549, line: 597, baseType: !576, size: 64, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !548, file: !549, line: 632, baseType: !659, size: 2880, offset: 1152)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !549, line: 599, size: 2880, elements: !660)
!660 = !{!661, !710}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !659, file: !549, line: 622, baseType: !662, size: 1728)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !549, line: 601, size: 1728, elements: !663)
!663 = !{!664, !665, !666, !670, !682, !683, !685, !692, !693, !694, !695, !699, !703, !704, !705, !706, !707, !708, !709}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !662, file: !549, line: 603, baseType: !14, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !662, file: !549, line: 604, baseType: !576, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !662, file: !549, line: 605, baseType: !667, size: 208, offset: 128)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 26)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !662, file: !549, line: 606, baseType: !671, size: 288, offset: 352)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !549, line: 55, size: 288, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !671, file: !549, line: 57, baseType: !67, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !671, file: !549, line: 58, baseType: !67, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !671, file: !549, line: 59, baseType: !67, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !671, file: !549, line: 60, baseType: !67, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !671, file: !549, line: 61, baseType: !67, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !671, file: !549, line: 62, baseType: !67, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !671, file: !549, line: 63, baseType: !67, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !671, file: !549, line: 64, baseType: !67, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !671, file: !549, line: 65, baseType: !67, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !662, file: !549, line: 607, baseType: !67, size: 32, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !662, file: !549, line: 608, baseType: !684, size: 64, offset: 704)
!684 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !662, file: !549, line: 609, baseType: !686, size: 112, offset: 768)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !549, line: 319, size: 112, elements: !687)
!687 = !{!688, !690, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !686, file: !549, line: 320, baseType: !689, size: 48)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 48, elements: !595)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !686, file: !549, line: 321, baseType: !689, size: 48, offset: 48)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !686, file: !549, line: 322, baseType: !193, size: 16, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !662, file: !549, line: 610, baseType: !611, size: 64, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !662, file: !549, line: 611, baseType: !611, size: 64, offset: 960)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !662, file: !549, line: 612, baseType: !611, size: 64, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !662, file: !549, line: 613, baseType: !696, size: 64, offset: 1088)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !662, file: !549, line: 614, baseType: !700, size: 192, offset: 1152)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 24)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !662, file: !549, line: 615, baseType: !67, size: 32, offset: 1344)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !662, file: !549, line: 616, baseType: !611, size: 64, offset: 1376)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !662, file: !549, line: 617, baseType: !611, size: 64, offset: 1440)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !662, file: !549, line: 618, baseType: !611, size: 64, offset: 1504)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !662, file: !549, line: 619, baseType: !611, size: 64, offset: 1568)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !662, file: !549, line: 620, baseType: !611, size: 64, offset: 1632)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !662, file: !549, line: 621, baseType: !67, size: 32, offset: 1696)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !659, file: !549, line: 631, baseType: !711, size: 2880)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !549, line: 626, size: 2880, elements: !712)
!712 = !{!713, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !711, file: !549, line: 629, baseType: !714, size: 1920)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 1920, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 30)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !711, file: !549, line: 630, baseType: !718, size: 960, offset: 1920)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !715)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !548, file: !549, line: 636, baseType: !720, size: 64, offset: 4032)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !549, line: 93, size: 6336, elements: !722)
!722 = !{!723, !724, !725, !732}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !721, file: !549, line: 94, baseType: !720, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !721, file: !549, line: 95, baseType: !67, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !721, file: !549, line: 97, baseType: !726, size: 2048, offset: 128)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 2048, elements: !730)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{null}
!730 = !{!731}
!731 = !DISubrange(count: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !721, file: !549, line: 98, baseType: !733, size: 4160, offset: 2176)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !549, line: 74, size: 4160, elements: !734)
!734 = !{!735, !737, !738, !739}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !733, file: !549, line: 75, baseType: !736, size: 2048)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2048, elements: !730)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !733, file: !549, line: 76, baseType: !736, size: 2048, offset: 2048)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !733, file: !549, line: 78, baseType: !651, size: 32, offset: 4096)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !733, file: !549, line: 81, baseType: !651, size: 32, offset: 4128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !548, file: !549, line: 637, baseType: !721, size: 6336, offset: 4096)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !548, file: !549, line: 641, baseType: !742, size: 64, offset: 10432)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !67}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !548, file: !549, line: 646, baseType: !747, size: 192, offset: 10496)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !549, line: 291, size: 192, elements: !748)
!748 = !{!749, !751, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !747, file: !549, line: 293, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !747, file: !549, line: 294, baseType: !67, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !747, file: !549, line: 295, baseType: !553, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !548, file: !549, line: 648, baseType: !754, size: 4224, offset: 10688)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 4224, elements: !595)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !376, file: !377, line: 85, baseType: !756, size: 64, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !49, line: 114, size: 640, elements: !758)
!758 = !{!759, !763, !764, !771, !784}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !757, file: !49, line: 116, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !761, line: 64, baseType: !762)
!761 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !761, line: 63, baseType: !425)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !757, file: !49, line: 118, baseType: !760, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !757, file: !49, line: 120, baseType: !765, size: 128, offset: 128)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !766, line: 51, size: 128, elements: !767)
!766 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!767 = !{!768, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !766, line: 52, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !765, file: !766, line: 53, baseType: !769, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !757, file: !49, line: 122, baseType: !772, size: 256, offset: 256)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !49, line: 98, size: 256, elements: !773)
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !772, file: !49, line: 107, baseType: !48, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !772, file: !49, line: 109, baseType: !760, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !772, file: !49, line: 111, baseType: !777, size: 96, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !761, line: 72, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 68, size: 96, elements: !779)
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !778, file: !761, line: 69, baseType: !67, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !778, file: !761, line: 70, baseType: !67, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !778, file: !761, line: 71, baseType: !783, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !761, line: 61, baseType: !67)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !757, file: !49, line: 124, baseType: !765, size: 128, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !371, file: !367, line: 38, baseType: !786, size: 64, offset: 128)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !367, line: 38, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !786, file: !367, line: 38, baseType: !370, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !366, file: !367, line: 42, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !357, file: !356, line: 71, baseType: !67, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "recvmbox", scope: !123, file: !13, line: 238, baseType: !793, size: 192, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_mbox_t", file: !356, line: 78, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 74, size: 192, elements: !795)
!795 = !{!796, !797, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !794, file: !356, line: 75, baseType: !475, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !794, file: !356, line: 76, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mbox", file: !800, line: 48, flags: DIFlagFwdDecl)
!800 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukmpi/include/uk/mbox.h", directory: "/root/.unikraft/apps/redis/build")
!801 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !794, file: !356, line: 77, baseType: !67, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "acceptmbox", scope: !123, file: !13, line: 242, baseType: !793, size: 192, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !123, file: !13, line: 251, baseType: !67, size: 32, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !13, line: 277, baseType: !158, size: 8, offset: 864)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "current_msg", scope: !123, file: !13, line: 282, baseType: !806, size: 64, offset: 896)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "api_msg", file: !808, line: 79, size: 512, elements: !809)
!808 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/api_msg.h", directory: "/root/.unikraft/apps/redis/build")
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !807, file: !808, line: 82, baseType: !122, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !807, file: !808, line: 84, baseType: !290, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !807, file: !808, line: 151, baseType: !813, size: 384, offset: 128)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !808, line: 86, size: 384, elements: !814)
!814 = !{!815, !824, !828, !834, !842, !862, !866, !871}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !813, file: !808, line: 88, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netbuf", file: !818, line: 60, size: 384, elements: !819)
!818 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!819 = !{!820, !821, !822, !823}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !817, file: !818, line: 61, baseType: !240, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !817, file: !818, line: 61, baseType: !240, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !817, file: !818, line: 62, baseType: !136, size: 192, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !817, file: !818, line: 63, baseType: !190, size: 16, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !813, file: !808, line: 92, baseType: !825, size: 8)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 90, size: 8, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !825, file: !808, line: 91, baseType: !158, size: 8)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !813, file: !808, line: 98, baseType: !829, size: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 94, size: 128, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr", scope: !829, file: !808, line: 95, baseType: !347, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !829, file: !808, line: 96, baseType: !190, size: 16, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !829, file: !808, line: 97, baseType: !158, size: 8, offset: 80)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ad", scope: !813, file: !808, line: 104, baseType: !835, size: 192)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 100, size: 192, elements: !836)
!836 = !{!837, !839, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr", scope: !835, file: !808, line: 101, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !835, file: !808, line: 102, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !835, file: !808, line: 103, baseType: !158, size: 8, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !813, file: !808, line: 121, baseType: !843, size: 384)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 106, size: 384, elements: !844)
!844 = !{!845, !857, !858, !859, !860, !861}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !843, file: !808, line: 108, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netvector", file: !13, line: 293, size: 128, elements: !849)
!849 = !{!850, !853}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !848, file: !13, line: 295, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !848, file: !13, line: 297, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !855, line: 40, baseType: !856)
!855 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !575, line: 129, baseType: !425)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vector_cnt", scope: !843, file: !808, line: 110, baseType: !190, size: 16, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "vector_off", scope: !843, file: !808, line: 112, baseType: !854, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !843, file: !808, line: 114, baseType: !854, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !843, file: !808, line: 116, baseType: !854, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "apiflags", scope: !843, file: !808, line: 117, baseType: !158, size: 8, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !813, file: !808, line: 125, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 123, size: 64, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !863, file: !808, line: 124, baseType: !854, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !813, file: !808, line: 135, baseType: !867, size: 16)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 128, size: 16, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "shut", scope: !867, file: !808, line: 129, baseType: !158, size: 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "polls_left", scope: !867, file: !808, line: 133, baseType: !158, size: 8, offset: 8)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "jl", scope: !813, file: !808, line: 144, baseType: !872, size: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !808, line: 139, size: 192, elements: !873)
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "multiaddr", scope: !872, file: !808, line: 140, baseType: !347, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "netif_addr", scope: !872, file: !808, line: 141, baseType: !347, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !872, file: !808, line: 142, baseType: !158, size: 8, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "join_or_leave", scope: !872, file: !808, line: 143, baseType: !54, size: 32, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !123, file: !13, line: 285, baseType: !879, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "netconn_callback", file: !13, line: 215, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !122, !58, !190}
!883 = !{!0, !884}
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !886, isLocal: true, isDefinition: true)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 10)
!889 = !{!890, !891}
!890 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!891 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !893, line: 32, baseType: !894)
!893 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !895)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 192, elements: !599)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !897)
!897 = !{!898, !899, !900, !901}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !896, file: !10, line: 196, baseType: !14, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !896, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !896, file: !10, line: 196, baseType: !121, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !896, file: !10, line: 196, baseType: !121, size: 64, offset: 128)
!902 = !{i32 2, !"Dwarf Version", i32 4}
!903 = !{i32 2, !"Debug Info Version", i32 3}
!904 = !{i32 1, !"wchar_size", i32 4}
!905 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!906 = distinct !DISubprogram(name: "netconn_new_with_proto_and_callback", scope: !10, file: !10, line: 151, type: !907, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!122, !12, !158, !879}
!909 = !{!910, !911, !912, !913, !914, !915}
!910 = !DILocalVariable(name: "t", arg: 1, scope: !906, file: !10, line: 151, type: !12)
!911 = !DILocalVariable(name: "proto", arg: 2, scope: !906, file: !10, line: 151, type: !158)
!912 = !DILocalVariable(name: "callback", arg: 3, scope: !906, file: !10, line: 151, type: !879)
!913 = !DILocalVariable(name: "conn", scope: !906, file: !10, line: 153, type: !122)
!914 = !DILocalVariable(name: "msg", scope: !906, file: !10, line: 154, type: !807)
!915 = !DILocalVariable(name: "err", scope: !916, file: !10, line: 159, type: !290)
!916 = distinct !DILexicalBlock(scope: !917, file: !10, line: 158, column: 21)
!917 = distinct !DILexicalBlock(scope: !906, file: !10, line: 158, column: 7)
!918 = !DILocation(line: 151, column: 55, scope: !906)
!919 = !DILocation(line: 151, column: 63, scope: !906)
!920 = !DILocation(line: 151, column: 87, scope: !906)
!921 = !DILocation(line: 154, column: 3, scope: !906)
!922 = !DILocation(line: 157, column: 10, scope: !906)
!923 = !DILocation(line: 153, column: 19, scope: !906)
!924 = !DILocation(line: 158, column: 12, scope: !917)
!925 = !DILocation(line: 158, column: 7, scope: !906)
!926 = !DILocation(line: 161, column: 26, scope: !916)
!927 = !DILocation(line: 161, column: 32, scope: !916)
!928 = !DILocation(line: 161, column: 38, scope: !916)
!929 = !{!930, !930, i64 0}
!930 = !{!"omnipotent char", !931, i64 0}
!931 = !{!"Simple C/C++ TBAA"}
!932 = !DILocation(line: 162, column: 26, scope: !916)
!933 = !DILocation(line: 162, column: 31, scope: !916)
!934 = !{!935, !936, i64 0}
!935 = !{!"api_msg", !936, i64 0, !930, i64 8, !930, i64 16}
!936 = !{!"any pointer", !930, i64 0}
!937 = !DILocalVariable(name: "fn", arg: 1, scope: !938, file: !10, line: 120, type: !941)
!938 = distinct !DISubprogram(name: "netconn_apimsg", scope: !10, file: !10, line: 120, type: !939, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !943)
!939 = !DISubroutineType(types: !940)
!940 = !{!290, !941, !806}
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpip_callback_fn", file: !942, line: 72, baseType: !533)
!942 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpip.h", directory: "/root/.unikraft/apps/redis/build")
!943 = !{!937, !944, !945}
!944 = !DILocalVariable(name: "apimsg", arg: 2, scope: !938, file: !10, line: 120, type: !806)
!945 = !DILocalVariable(name: "err", scope: !938, file: !10, line: 122, type: !290)
!946 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !947)
!947 = distinct !DILocation(line: 163, column: 11, scope: !916)
!948 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !947)
!949 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !947)
!950 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !947)
!951 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !947)
!952 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !947)
!953 = distinct !DILexicalBlock(scope: !938, file: !10, line: 134, column: 7)
!954 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !947)
!955 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !947)
!956 = distinct !DILexicalBlock(scope: !953, file: !10, line: 134, column: 22)
!957 = !{!935, !930, i64 8}
!958 = !DILocation(line: 159, column: 11, scope: !916)
!959 = !DILocation(line: 164, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !916, file: !10, line: 164, column: 9)
!961 = !DILocation(line: 164, column: 9, scope: !916)
!962 = !DILocation(line: 165, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !10, line: 165, column: 7)
!964 = distinct !DILexicalBlock(scope: !965, file: !10, line: 165, column: 7)
!965 = distinct !DILexicalBlock(scope: !960, file: !10, line: 164, column: 24)
!966 = !DILocation(line: 165, column: 7, scope: !964)
!967 = !DILocation(line: 165, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !10, line: 165, column: 7)
!969 = distinct !DILexicalBlock(scope: !963, file: !10, line: 165, column: 7)
!970 = !DILocation(line: 165, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !10, line: 165, column: 7)
!972 = distinct !DILexicalBlock(scope: !973, file: !10, line: 165, column: 7)
!973 = distinct !DILexicalBlock(scope: !968, file: !10, line: 165, column: 7)
!974 = !DILocation(line: 166, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !10, line: 166, column: 7)
!976 = distinct !DILexicalBlock(scope: !965, file: !10, line: 166, column: 7)
!977 = !DILocation(line: 166, column: 7, scope: !976)
!978 = !DILocation(line: 166, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !10, line: 166, column: 7)
!980 = distinct !DILexicalBlock(scope: !975, file: !10, line: 166, column: 7)
!981 = !DILocation(line: 166, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !10, line: 166, column: 7)
!983 = distinct !DILexicalBlock(scope: !984, file: !10, line: 166, column: 7)
!984 = distinct !DILexicalBlock(scope: !979, file: !10, line: 166, column: 7)
!985 = !DILocation(line: 168, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !10, line: 168, column: 7)
!987 = distinct !DILexicalBlock(scope: !965, file: !10, line: 168, column: 7)
!988 = !DILocation(line: 168, column: 7, scope: !987)
!989 = !DILocation(line: 168, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !10, line: 168, column: 7)
!991 = distinct !DILexicalBlock(scope: !986, file: !10, line: 168, column: 7)
!992 = !DILocation(line: 168, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !10, line: 168, column: 7)
!994 = distinct !DILexicalBlock(scope: !995, file: !10, line: 168, column: 7)
!995 = distinct !DILexicalBlock(scope: !990, file: !10, line: 168, column: 7)
!996 = !DILocation(line: 171, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !10, line: 171, column: 7)
!998 = distinct !DILexicalBlock(scope: !965, file: !10, line: 171, column: 7)
!999 = !DILocation(line: 171, column: 7, scope: !998)
!1000 = !DILocation(line: 171, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !10, line: 171, column: 7)
!1002 = distinct !DILexicalBlock(scope: !997, file: !10, line: 171, column: 7)
!1003 = !DILocation(line: 171, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !10, line: 171, column: 7)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !10, line: 171, column: 7)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !10, line: 171, column: 7)
!1007 = !DILocation(line: 172, column: 7, scope: !965)
!1008 = !DILocation(line: 174, column: 7, scope: !965)
!1009 = !DILocation(line: 175, column: 15, scope: !965)
!1010 = !{!936, !936, i64 0}
!1011 = !DILocalVariable(name: "a", arg: 1, scope: !1012, file: !477, line: 237, type: !475)
!1012 = distinct !DISubprogram(name: "uk_free", scope: !477, file: !477, line: 237, type: !507, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1013)
!1013 = !{!1011, !1014}
!1014 = !DILocalVariable(name: "ptr", arg: 2, scope: !1012, file: !477, line: 237, type: !121)
!1015 = !DILocation(line: 237, column: 45, scope: !1012, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 175, column: 7, scope: !965)
!1017 = !DILocalVariable(name: "a", arg: 1, scope: !1018, file: !477, line: 231, type: !475)
!1018 = distinct !DISubprogram(name: "uk_do_free", scope: !477, file: !477, line: 231, type: !507, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1019)
!1019 = !{!1017, !1020}
!1020 = !DILocalVariable(name: "ptr", arg: 2, scope: !1018, file: !477, line: 231, type: !121)
!1021 = !DILocation(line: 231, column: 48, scope: !1018, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 239, column: 2, scope: !1012, inlinedAt: !1016)
!1023 = !DILocation(line: 233, column: 2, scope: !1024, inlinedAt: !1022)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !477, line: 233, column: 2)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !477, line: 233, column: 2)
!1026 = !DILocation(line: 233, column: 2, scope: !1025, inlinedAt: !1022)
!1027 = !{!"branch_weights", i32 1, i32 2000}
!1028 = !DILocation(line: 233, column: 2, scope: !1029, inlinedAt: !1022)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !477, line: 233, column: 2)
!1030 = !DILocation(line: 175, column: 36, scope: !965)
!1031 = !DILocation(line: 231, column: 57, scope: !1018, inlinedAt: !1022)
!1032 = !DILocation(line: 237, column: 54, scope: !1012, inlinedAt: !1016)
!1033 = !DILocation(line: 234, column: 5, scope: !1018, inlinedAt: !1022)
!1034 = !DILocation(line: 234, column: 2, scope: !1018, inlinedAt: !1022)
!1035 = !DILocation(line: 0, scope: !965)
!1036 = !DILocation(line: 182, column: 1, scope: !906)
!1037 = !DILocation(line: 194, column: 43, scope: !2)
!1038 = !DILocation(line: 196, column: 2, scope: !2)
!1039 = !DILocation(line: 196, column: 10, scope: !2)
!1040 = !DILocation(line: 197, column: 2, scope: !2)
!1041 = !DILocation(line: 198, column: 2, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 198, column: 2)
!1043 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!1044 = !DILocation(line: 199, column: 2, scope: !2)
!1045 = !DILocation(line: 200, column: 1, scope: !2)
!1046 = distinct !DISubprogram(name: "netconn_prepare_delete", scope: !10, file: !10, line: 194, type: !1047, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!290, !122}
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(name: "conn", arg: 1, scope: !1046, file: !10, line: 194, type: !122)
!1051 = !DILocalVariable(name: "err", scope: !1046, file: !10, line: 196, type: !290)
!1052 = !DILocalVariable(name: "msg", scope: !1046, file: !10, line: 197, type: !807)
!1053 = !DILocation(line: 194, column: 40, scope: !1046)
!1054 = !DILocation(line: 197, column: 3, scope: !1046)
!1055 = !DILocation(line: 200, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !10, line: 200, column: 7)
!1057 = !DILocation(line: 200, column: 7, scope: !1046)
!1058 = !DILocation(line: 205, column: 24, scope: !1046)
!1059 = !DILocation(line: 205, column: 29, scope: !1046)
!1060 = !DILocation(line: 212, column: 24, scope: !1046)
!1061 = !DILocation(line: 212, column: 28, scope: !1046)
!1062 = !DILocation(line: 212, column: 31, scope: !1046)
!1063 = !DILocation(line: 212, column: 42, scope: !1046)
!1064 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 216, column: 9, scope: !1046)
!1066 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1065)
!1067 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1065)
!1068 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1065)
!1069 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1065)
!1070 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1065)
!1071 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1065)
!1072 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1065)
!1073 = !DILocation(line: 196, column: 9, scope: !1046)
!1074 = !DILocation(line: 222, column: 3, scope: !1046)
!1075 = !DILocation(line: 0, scope: !1046)
!1076 = !DILocation(line: 223, column: 1, scope: !1046)
!1077 = distinct !DISubprogram(name: "netconn_delete", scope: !10, file: !10, line: 235, type: !1047, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1078)
!1078 = !{!1079, !1080}
!1079 = !DILocalVariable(name: "conn", arg: 1, scope: !1077, file: !10, line: 235, type: !122)
!1080 = !DILocalVariable(name: "err", scope: !1077, file: !10, line: 237, type: !290)
!1081 = !DILocation(line: 235, column: 32, scope: !1077)
!1082 = !DILocation(line: 240, column: 12, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 240, column: 7)
!1084 = !DILocation(line: 240, column: 7, scope: !1077)
!1085 = !DILocation(line: 194, column: 40, scope: !1046, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 251, column: 11, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 250, column: 3)
!1088 = !DILocation(line: 197, column: 3, scope: !1046, inlinedAt: !1086)
!1089 = !DILocation(line: 205, column: 24, scope: !1046, inlinedAt: !1086)
!1090 = !DILocation(line: 205, column: 29, scope: !1046, inlinedAt: !1086)
!1091 = !DILocation(line: 212, column: 24, scope: !1046, inlinedAt: !1086)
!1092 = !DILocation(line: 212, column: 28, scope: !1046, inlinedAt: !1086)
!1093 = !DILocation(line: 212, column: 31, scope: !1046, inlinedAt: !1086)
!1094 = !DILocation(line: 212, column: 42, scope: !1046, inlinedAt: !1086)
!1095 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 216, column: 9, scope: !1046, inlinedAt: !1086)
!1097 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1096)
!1098 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1096)
!1099 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1096)
!1100 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1096)
!1101 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1096)
!1102 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1096)
!1103 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1096)
!1104 = !DILocation(line: 196, column: 9, scope: !1046, inlinedAt: !1086)
!1105 = !DILocation(line: 223, column: 1, scope: !1046, inlinedAt: !1086)
!1106 = !DILocation(line: 237, column: 9, scope: !1077)
!1107 = !DILocation(line: 253, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 253, column: 7)
!1109 = !DILocation(line: 253, column: 7, scope: !1077)
!1110 = !DILocation(line: 254, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !10, line: 253, column: 22)
!1112 = !DILocation(line: 255, column: 3, scope: !1111)
!1113 = !DILocation(line: 0, scope: !1077)
!1114 = !DILocation(line: 257, column: 1, scope: !1077)
!1115 = distinct !DISubprogram(name: "netconn_getaddr", scope: !10, file: !10, line: 271, type: !1116, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!290, !122, !838, !840, !158}
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124}
!1119 = !DILocalVariable(name: "conn", arg: 1, scope: !1115, file: !10, line: 271, type: !122)
!1120 = !DILocalVariable(name: "addr", arg: 2, scope: !1115, file: !10, line: 271, type: !838)
!1121 = !DILocalVariable(name: "port", arg: 3, scope: !1115, file: !10, line: 271, type: !840)
!1122 = !DILocalVariable(name: "local", arg: 4, scope: !1115, file: !10, line: 271, type: !158)
!1123 = !DILocalVariable(name: "msg", scope: !1115, file: !10, line: 273, type: !807)
!1124 = !DILocalVariable(name: "err", scope: !1115, file: !10, line: 274, type: !290)
!1125 = !DILocation(line: 271, column: 33, scope: !1115)
!1126 = !DILocation(line: 271, column: 50, scope: !1115)
!1127 = !DILocation(line: 271, column: 63, scope: !1115)
!1128 = !DILocation(line: 271, column: 74, scope: !1115)
!1129 = !DILocation(line: 273, column: 3, scope: !1115)
!1130 = !DILocation(line: 276, column: 3, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !10, line: 276, column: 3)
!1132 = distinct !DILexicalBlock(scope: !1115, file: !10, line: 276, column: 3)
!1133 = !DILocation(line: 276, column: 3, scope: !1132)
!1134 = !DILocation(line: 276, column: 3, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !10, line: 276, column: 3)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !10, line: 276, column: 3)
!1137 = !DILocation(line: 276, column: 3, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !10, line: 276, column: 3)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !10, line: 276, column: 3)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !10, line: 276, column: 3)
!1141 = !DILocation(line: 277, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !10, line: 277, column: 3)
!1143 = distinct !DILexicalBlock(scope: !1115, file: !10, line: 277, column: 3)
!1144 = !DILocation(line: 277, column: 3, scope: !1143)
!1145 = !DILocation(line: 277, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !10, line: 277, column: 3)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !10, line: 277, column: 3)
!1148 = !DILocation(line: 277, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !10, line: 277, column: 3)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !10, line: 277, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !10, line: 277, column: 3)
!1152 = !DILocation(line: 278, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !10, line: 278, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1115, file: !10, line: 278, column: 3)
!1155 = !DILocation(line: 278, column: 3, scope: !1154)
!1156 = !DILocation(line: 278, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !10, line: 278, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !10, line: 278, column: 3)
!1159 = !DILocation(line: 278, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !10, line: 278, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !10, line: 278, column: 3)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !10, line: 278, column: 3)
!1163 = !DILocation(line: 281, column: 24, scope: !1115)
!1164 = !DILocation(line: 281, column: 29, scope: !1115)
!1165 = !DILocation(line: 282, column: 24, scope: !1115)
!1166 = !DILocation(line: 282, column: 31, scope: !1115)
!1167 = !DILocation(line: 282, column: 37, scope: !1115)
!1168 = !DILocation(line: 288, column: 14, scope: !1115)
!1169 = !DILocation(line: 288, column: 21, scope: !1115)
!1170 = !DILocation(line: 289, column: 14, scope: !1115)
!1171 = !DILocation(line: 289, column: 19, scope: !1115)
!1172 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 290, column: 9, scope: !1115)
!1174 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1173)
!1175 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1173)
!1176 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1173)
!1177 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1173)
!1178 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1173)
!1179 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1173)
!1180 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1173)
!1181 = !DILocation(line: 274, column: 9, scope: !1115)
!1182 = !DILocation(line: 295, column: 1, scope: !1115)
!1183 = distinct !DISubprogram(name: "netconn_bind", scope: !10, file: !10, line: 309, type: !1184, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!290, !122, !347, !190}
!1186 = !{!1187, !1188, !1189, !1190, !1191}
!1187 = !DILocalVariable(name: "conn", arg: 1, scope: !1183, file: !10, line: 309, type: !122)
!1188 = !DILocalVariable(name: "addr", arg: 2, scope: !1183, file: !10, line: 309, type: !347)
!1189 = !DILocalVariable(name: "port", arg: 3, scope: !1183, file: !10, line: 309, type: !190)
!1190 = !DILocalVariable(name: "msg", scope: !1183, file: !10, line: 311, type: !807)
!1191 = !DILocalVariable(name: "err", scope: !1183, file: !10, line: 312, type: !290)
!1192 = !DILocation(line: 309, column: 30, scope: !1183)
!1193 = !DILocation(line: 309, column: 53, scope: !1183)
!1194 = !DILocation(line: 309, column: 65, scope: !1183)
!1195 = !DILocation(line: 311, column: 3, scope: !1183)
!1196 = !DILocation(line: 314, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !10, line: 314, column: 3)
!1198 = distinct !DILexicalBlock(scope: !1183, file: !10, line: 314, column: 3)
!1199 = !DILocation(line: 314, column: 3, scope: !1198)
!1200 = !DILocation(line: 314, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !10, line: 314, column: 3)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !10, line: 314, column: 3)
!1203 = !DILocation(line: 314, column: 3, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !10, line: 314, column: 3)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !10, line: 314, column: 3)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !10, line: 314, column: 3)
!1207 = !DILocation(line: 318, column: 12, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1183, file: !10, line: 318, column: 7)
!1209 = !DILocation(line: 318, column: 7, scope: !1183)
!1210 = !DILocation(line: 327, column: 8, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1183, file: !10, line: 327, column: 7)
!1212 = !{!1213, !930, i64 108}
!1213 = !{!"netconn", !930, i64 0, !930, i64 4, !930, i64 8, !930, i64 16, !1214, i64 24, !1219, i64 56, !1219, i64 80, !1218, i64 104, !930, i64 108, !936, i64 112, !936, i64 120}
!1214 = !{!"", !1215, i64 0, !1218, i64 24}
!1215 = !{!"uk_semaphore", !1216, i64 0, !1217, i64 8}
!1216 = !{!"long", !930, i64 0}
!1217 = !{!"uk_waitq", !936, i64 0, !936, i64 8}
!1218 = !{!"int", !930, i64 0}
!1219 = !{!"", !936, i64 0, !936, i64 8, !1218, i64 16}
!1220 = !DILocation(line: 327, column: 35, scope: !1211)
!1221 = !DILocation(line: 327, column: 41, scope: !1211)
!1222 = !DILocation(line: 328, column: 7, scope: !1211)
!1223 = !{!1224, !930, i64 20}
!1224 = !{!"ip_addr", !930, i64 0, !930, i64 20}
!1225 = !DILocation(line: 327, column: 7, scope: !1183)
!1226 = !DILocation(line: 330, column: 3, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1211, file: !10, line: 328, column: 40)
!1228 = !DILocation(line: 0, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1208, file: !10, line: 318, column: 21)
!1230 = !DILocation(line: 334, column: 24, scope: !1183)
!1231 = !DILocation(line: 334, column: 29, scope: !1183)
!1232 = !DILocation(line: 335, column: 24, scope: !1183)
!1233 = !DILocation(line: 335, column: 31, scope: !1183)
!1234 = !DILocation(line: 335, column: 38, scope: !1183)
!1235 = !DILocation(line: 336, column: 31, scope: !1183)
!1236 = !DILocation(line: 336, column: 36, scope: !1183)
!1237 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 337, column: 9, scope: !1183)
!1239 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1238)
!1240 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1238)
!1241 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1238)
!1242 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1238)
!1243 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1238)
!1244 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1238)
!1245 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1238)
!1246 = !DILocation(line: 312, column: 9, scope: !1183)
!1247 = !DILocation(line: 341, column: 1, scope: !1183)
!1248 = distinct !DISubprogram(name: "netconn_bind_if", scope: !10, file: !10, line: 353, type: !1249, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!290, !122, !158}
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DILocalVariable(name: "conn", arg: 1, scope: !1248, file: !10, line: 353, type: !122)
!1253 = !DILocalVariable(name: "if_idx", arg: 2, scope: !1248, file: !10, line: 353, type: !158)
!1254 = !DILocalVariable(name: "msg", scope: !1248, file: !10, line: 355, type: !807)
!1255 = !DILocalVariable(name: "err", scope: !1248, file: !10, line: 356, type: !290)
!1256 = !DILocation(line: 353, column: 33, scope: !1248)
!1257 = !DILocation(line: 353, column: 44, scope: !1248)
!1258 = !DILocation(line: 355, column: 3, scope: !1248)
!1259 = !DILocation(line: 358, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !10, line: 358, column: 3)
!1261 = distinct !DILexicalBlock(scope: !1248, file: !10, line: 358, column: 3)
!1262 = !DILocation(line: 358, column: 3, scope: !1261)
!1263 = !DILocation(line: 358, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !10, line: 358, column: 3)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !10, line: 358, column: 3)
!1266 = !DILocation(line: 358, column: 3, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !10, line: 358, column: 3)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !10, line: 358, column: 3)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !10, line: 358, column: 3)
!1270 = !DILocation(line: 361, column: 24, scope: !1248)
!1271 = !DILocation(line: 361, column: 29, scope: !1248)
!1272 = !DILocation(line: 362, column: 24, scope: !1248)
!1273 = !DILocation(line: 362, column: 28, scope: !1248)
!1274 = !DILocation(line: 362, column: 31, scope: !1248)
!1275 = !DILocation(line: 362, column: 38, scope: !1248)
!1276 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 363, column: 9, scope: !1248)
!1278 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1277)
!1279 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1277)
!1280 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1277)
!1281 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1277)
!1282 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1277)
!1283 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1277)
!1284 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1277)
!1285 = !DILocation(line: 356, column: 9, scope: !1248)
!1286 = !DILocation(line: 367, column: 1, scope: !1248)
!1287 = distinct !DISubprogram(name: "netconn_connect", scope: !10, file: !10, line: 379, type: !1184, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293}
!1289 = !DILocalVariable(name: "conn", arg: 1, scope: !1287, file: !10, line: 379, type: !122)
!1290 = !DILocalVariable(name: "addr", arg: 2, scope: !1287, file: !10, line: 379, type: !347)
!1291 = !DILocalVariable(name: "port", arg: 3, scope: !1287, file: !10, line: 379, type: !190)
!1292 = !DILocalVariable(name: "msg", scope: !1287, file: !10, line: 381, type: !807)
!1293 = !DILocalVariable(name: "err", scope: !1287, file: !10, line: 382, type: !290)
!1294 = !DILocation(line: 379, column: 33, scope: !1287)
!1295 = !DILocation(line: 379, column: 56, scope: !1287)
!1296 = !DILocation(line: 379, column: 68, scope: !1287)
!1297 = !DILocation(line: 381, column: 3, scope: !1287)
!1298 = !DILocation(line: 384, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !10, line: 384, column: 3)
!1300 = distinct !DILexicalBlock(scope: !1287, file: !10, line: 384, column: 3)
!1301 = !DILocation(line: 384, column: 3, scope: !1300)
!1302 = !DILocation(line: 384, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !10, line: 384, column: 3)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !10, line: 384, column: 3)
!1305 = !DILocation(line: 384, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !10, line: 384, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !10, line: 384, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !10, line: 384, column: 3)
!1309 = !DILocation(line: 388, column: 12, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1287, file: !10, line: 388, column: 7)
!1311 = !DILocation(line: 388, column: 7, scope: !1287)
!1312 = !DILocation(line: 394, column: 24, scope: !1287)
!1313 = !DILocation(line: 394, column: 29, scope: !1287)
!1314 = !DILocation(line: 395, column: 24, scope: !1287)
!1315 = !DILocation(line: 395, column: 31, scope: !1287)
!1316 = !DILocation(line: 395, column: 38, scope: !1287)
!1317 = !DILocation(line: 396, column: 31, scope: !1287)
!1318 = !DILocation(line: 396, column: 36, scope: !1287)
!1319 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 397, column: 9, scope: !1287)
!1321 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1320)
!1322 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1320)
!1323 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1320)
!1324 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1320)
!1325 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1320)
!1326 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1320)
!1327 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1320)
!1328 = !DILocation(line: 382, column: 9, scope: !1287)
!1329 = !DILocation(line: 401, column: 1, scope: !1287)
!1330 = distinct !DISubprogram(name: "netconn_disconnect", scope: !10, file: !10, line: 411, type: !1047, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DILocalVariable(name: "conn", arg: 1, scope: !1330, file: !10, line: 411, type: !122)
!1333 = !DILocalVariable(name: "msg", scope: !1330, file: !10, line: 413, type: !807)
!1334 = !DILocalVariable(name: "err", scope: !1330, file: !10, line: 414, type: !290)
!1335 = !DILocation(line: 411, column: 36, scope: !1330)
!1336 = !DILocation(line: 413, column: 3, scope: !1330)
!1337 = !DILocation(line: 416, column: 3, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !10, line: 416, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !10, line: 416, column: 3)
!1340 = !DILocation(line: 416, column: 3, scope: !1339)
!1341 = !DILocation(line: 416, column: 3, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !10, line: 416, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !10, line: 416, column: 3)
!1344 = !DILocation(line: 416, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 416, column: 3)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !10, line: 416, column: 3)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !10, line: 416, column: 3)
!1348 = !DILocation(line: 419, column: 24, scope: !1330)
!1349 = !DILocation(line: 419, column: 29, scope: !1330)
!1350 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 420, column: 9, scope: !1330)
!1352 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1351)
!1353 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1351)
!1354 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1351)
!1355 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1351)
!1356 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1351)
!1357 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1351)
!1358 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1351)
!1359 = !DILocation(line: 414, column: 9, scope: !1330)
!1360 = !DILocation(line: 424, column: 1, scope: !1330)
!1361 = distinct !DISubprogram(name: "netconn_listen_with_backlog", scope: !10, file: !10, line: 436, type: !1249, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365, !1366}
!1363 = !DILocalVariable(name: "conn", arg: 1, scope: !1361, file: !10, line: 436, type: !122)
!1364 = !DILocalVariable(name: "backlog", arg: 2, scope: !1361, file: !10, line: 436, type: !158)
!1365 = !DILocalVariable(name: "msg", scope: !1361, file: !10, line: 439, type: !807)
!1366 = !DILocalVariable(name: "err", scope: !1361, file: !10, line: 440, type: !290)
!1367 = !DILocation(line: 436, column: 45, scope: !1361)
!1368 = !DILocation(line: 436, column: 56, scope: !1361)
!1369 = !DILocation(line: 439, column: 3, scope: !1361)
!1370 = !DILocation(line: 445, column: 3, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !10, line: 445, column: 3)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !10, line: 445, column: 3)
!1373 = !DILocation(line: 445, column: 3, scope: !1372)
!1374 = !DILocation(line: 445, column: 3, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !10, line: 445, column: 3)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !10, line: 445, column: 3)
!1377 = !DILocation(line: 445, column: 3, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !10, line: 445, column: 3)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !10, line: 445, column: 3)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !10, line: 445, column: 3)
!1381 = !DILocation(line: 448, column: 24, scope: !1361)
!1382 = !DILocation(line: 448, column: 29, scope: !1361)
!1383 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 452, column: 9, scope: !1361)
!1385 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1384)
!1386 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1384)
!1387 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1384)
!1388 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1384)
!1389 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1384)
!1390 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1384)
!1391 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1384)
!1392 = !DILocation(line: 440, column: 9, scope: !1361)
!1393 = !DILocation(line: 461, column: 1, scope: !1361)
!1394 = distinct !DISubprogram(name: "netconn_accept", scope: !10, file: !10, line: 473, type: !1395, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1398)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!290, !122, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1398 = !{!1399, !1400, !1401, !1402, !1403}
!1399 = !DILocalVariable(name: "conn", arg: 1, scope: !1394, file: !10, line: 473, type: !122)
!1400 = !DILocalVariable(name: "new_conn", arg: 2, scope: !1394, file: !10, line: 473, type: !1397)
!1401 = !DILocalVariable(name: "err", scope: !1394, file: !10, line: 476, type: !290)
!1402 = !DILocalVariable(name: "accept_ptr", scope: !1394, file: !10, line: 477, type: !121)
!1403 = !DILocalVariable(name: "newconn", scope: !1394, file: !10, line: 478, type: !122)
!1404 = !DILocation(line: 473, column: 32, scope: !1394)
!1405 = !DILocation(line: 473, column: 55, scope: !1394)
!1406 = !DILocation(line: 476, column: 9, scope: !1394)
!1407 = !DILocation(line: 476, column: 3, scope: !1394)
!1408 = !DILocation(line: 477, column: 3, scope: !1394)
!1409 = !DILocation(line: 483, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !10, line: 483, column: 3)
!1411 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 483, column: 3)
!1412 = !DILocation(line: 483, column: 3, scope: !1411)
!1413 = !DILocation(line: 483, column: 3, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !10, line: 483, column: 3)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !10, line: 483, column: 3)
!1416 = !DILocation(line: 483, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !10, line: 483, column: 3)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !10, line: 483, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !10, line: 483, column: 3)
!1420 = !DILocation(line: 484, column: 13, scope: !1394)
!1421 = !DILocation(line: 485, column: 3, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !10, line: 485, column: 3)
!1423 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 485, column: 3)
!1424 = !DILocation(line: 485, column: 3, scope: !1423)
!1425 = !DILocation(line: 485, column: 3, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !10, line: 485, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !10, line: 485, column: 3)
!1428 = !DILocation(line: 485, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !10, line: 485, column: 3)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 485, column: 3)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 485, column: 3)
!1432 = !DILocalVariable(name: "conn", arg: 1, scope: !1433, file: !10, line: 1141, type: !122)
!1433 = distinct !DISubprogram(name: "netconn_err", scope: !10, file: !10, line: 1141, type: !1047, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1434)
!1434 = !{!1432, !1435, !1436}
!1435 = !DILocalVariable(name: "err", scope: !1433, file: !10, line: 1143, type: !290)
!1436 = !DILocalVariable(name: "lev", scope: !1433, file: !10, line: 1144, type: !425)
!1437 = !DILocation(line: 1141, column: 29, scope: !1433, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 490, column: 9, scope: !1394)
!1439 = !DILocation(line: 1148, column: 3, scope: !1440, inlinedAt: !1438)
!1440 = distinct !DILexicalBlock(scope: !1433, file: !10, line: 1148, column: 3)
!1441 = !DILocation(line: 1144, column: 3, scope: !1433, inlinedAt: !1438)
!1442 = !DILocation(line: 1149, column: 15, scope: !1433, inlinedAt: !1438)
!1443 = !{!1213, !930, i64 16}
!1444 = !DILocation(line: 1143, column: 9, scope: !1433, inlinedAt: !1438)
!1445 = !DILocation(line: 1150, column: 21, scope: !1433, inlinedAt: !1438)
!1446 = !DILocation(line: 1151, column: 3, scope: !1433, inlinedAt: !1438)
!1447 = !DILocation(line: 490, column: 7, scope: !1394)
!1448 = !DILocation(line: 491, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 491, column: 7)
!1450 = !DILocation(line: 491, column: 7, scope: !1394)
!1451 = !DILocation(line: 495, column: 8, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 495, column: 7)
!1453 = !DILocation(line: 495, column: 7, scope: !1394)
!1454 = !DILocation(line: 504, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 504, column: 7)
!1456 = !DILocation(line: 477, column: 9, scope: !1394)
!1457 = !DILocation(line: 504, column: 7, scope: !1394)
!1458 = !DILocation(line: 505, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !10, line: 505, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !10, line: 504, column: 37)
!1461 = !DILocation(line: 505, column: 64, scope: !1459)
!1462 = !DILocation(line: 505, column: 9, scope: !1460)
!1463 = !DILocation(line: 518, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !10, line: 510, column: 10)
!1465 = !DILocation(line: 533, column: 3, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 533, column: 3)
!1467 = !{!1213, !936, i64 120}
!1468 = !DILocation(line: 533, column: 3, scope: !1394)
!1469 = !DILocation(line: 533, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !10, line: 533, column: 3)
!1471 = !DILocation(line: 535, column: 31, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 535, column: 7)
!1473 = !DILocation(line: 535, column: 7, scope: !1472)
!1474 = !DILocation(line: 535, column: 7, scope: !1394)
!1475 = !DILocation(line: 538, column: 12, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !10, line: 535, column: 50)
!1477 = !DILocation(line: 538, column: 5, scope: !1476)
!1478 = !DILocation(line: 540, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1394, file: !10, line: 540, column: 7)
!1480 = !DILocation(line: 540, column: 18, scope: !1479)
!1481 = !DILocation(line: 540, column: 7, scope: !1394)
!1482 = !DILocation(line: 478, column: 19, scope: !1394)
!1483 = !DILocation(line: 554, column: 13, scope: !1394)
!1484 = !DILocation(line: 556, column: 3, scope: !1394)
!1485 = !DILocation(line: 0, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1452, file: !10, line: 495, column: 43)
!1487 = !DILocation(line: 562, column: 1, scope: !1394)
!1488 = !DILocation(line: 1141, column: 29, scope: !1433)
!1489 = !DILocation(line: 1145, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1433, file: !10, line: 1145, column: 7)
!1491 = !DILocation(line: 1145, column: 7, scope: !1433)
!1492 = !DILocation(line: 1148, column: 3, scope: !1440)
!1493 = !DILocation(line: 1144, column: 3, scope: !1433)
!1494 = !DILocation(line: 1149, column: 15, scope: !1433)
!1495 = !DILocation(line: 1143, column: 9, scope: !1433)
!1496 = !DILocation(line: 1150, column: 21, scope: !1433)
!1497 = !DILocation(line: 1151, column: 3, scope: !1433)
!1498 = !DILocation(line: 1152, column: 3, scope: !1433)
!1499 = !DILocation(line: 0, scope: !1433)
!1500 = !DILocation(line: 1153, column: 1, scope: !1433)
!1501 = distinct !DISubprogram(name: "netconn_tcp_recvd", scope: !10, file: !10, line: 691, type: !1502, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!290, !122, !854}
!1504 = !{!1505, !1506, !1507, !1508}
!1505 = !DILocalVariable(name: "conn", arg: 1, scope: !1501, file: !10, line: 691, type: !122)
!1506 = !DILocalVariable(name: "len", arg: 2, scope: !1501, file: !10, line: 691, type: !854)
!1507 = !DILocalVariable(name: "err", scope: !1501, file: !10, line: 693, type: !290)
!1508 = !DILocalVariable(name: "msg", scope: !1501, file: !10, line: 694, type: !807)
!1509 = !DILocation(line: 691, column: 35, scope: !1501)
!1510 = !DILocation(line: 691, column: 48, scope: !1501)
!1511 = !DILocation(line: 694, column: 3, scope: !1501)
!1512 = !DILocation(line: 695, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !10, line: 695, column: 3)
!1514 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 695, column: 3)
!1515 = !{!1213, !930, i64 0}
!1516 = !DILocation(line: 695, column: 3, scope: !1514)
!1517 = !DILocation(line: 695, column: 3, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !10, line: 695, column: 3)
!1519 = distinct !DILexicalBlock(scope: !1513, file: !10, line: 695, column: 3)
!1520 = !DILocation(line: 695, column: 3, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !10, line: 695, column: 3)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 695, column: 3)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !10, line: 695, column: 3)
!1524 = !DILocalVariable(name: "conn", arg: 1, scope: !1525, file: !10, line: 679, type: !122)
!1525 = distinct !DISubprogram(name: "netconn_tcp_recvd_msg", scope: !10, file: !10, line: 679, type: !1526, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!290, !122, !854, !806}
!1528 = !{!1524, !1529, !1530}
!1529 = !DILocalVariable(name: "len", arg: 2, scope: !1525, file: !10, line: 679, type: !854)
!1530 = !DILocalVariable(name: "msg", arg: 3, scope: !1525, file: !10, line: 679, type: !806)
!1531 = !DILocation(line: 679, column: 39, scope: !1525, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 699, column: 9, scope: !1501)
!1533 = !DILocation(line: 679, column: 52, scope: !1525, inlinedAt: !1532)
!1534 = !DILocation(line: 679, column: 73, scope: !1525, inlinedAt: !1532)
!1535 = !DILocation(line: 684, column: 8, scope: !1525, inlinedAt: !1532)
!1536 = !DILocation(line: 684, column: 13, scope: !1525, inlinedAt: !1532)
!1537 = !DILocation(line: 685, column: 8, scope: !1525, inlinedAt: !1532)
!1538 = !DILocation(line: 685, column: 14, scope: !1525, inlinedAt: !1532)
!1539 = !DILocation(line: 685, column: 18, scope: !1525, inlinedAt: !1532)
!1540 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 687, column: 10, scope: !1525, inlinedAt: !1532)
!1542 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1541)
!1543 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1541)
!1544 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1541)
!1545 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1541)
!1546 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1541)
!1547 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !1541)
!1548 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1541)
!1549 = !DILocation(line: 693, column: 9, scope: !1501)
!1550 = !DILocation(line: 702, column: 1, scope: !1501)
!1551 = distinct !DISubprogram(name: "netconn_recv_tcp_pbuf", scope: !10, file: !10, line: 784, type: !1552, isLocal: false, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1555)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!290, !122, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!1555 = !{!1556, !1557}
!1556 = !DILocalVariable(name: "conn", arg: 1, scope: !1551, file: !10, line: 784, type: !122)
!1557 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1551, file: !10, line: 784, type: !1554)
!1558 = !DILocation(line: 784, column: 39, scope: !1551)
!1559 = !DILocation(line: 784, column: 59, scope: !1551)
!1560 = !DILocation(line: 786, column: 3, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !10, line: 786, column: 3)
!1562 = distinct !DILexicalBlock(scope: !1551, file: !10, line: 786, column: 3)
!1563 = !DILocation(line: 786, column: 3, scope: !1562)
!1564 = !DILocation(line: 786, column: 3, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !10, line: 786, column: 3)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !10, line: 786, column: 3)
!1567 = !DILocation(line: 786, column: 3, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !10, line: 786, column: 3)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !10, line: 786, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !10, line: 786, column: 3)
!1571 = !DILocation(line: 789, column: 10, scope: !1551)
!1572 = !DILocation(line: 790, column: 1, scope: !1551)
!1573 = distinct !DISubprogram(name: "netconn_recv_data_tcp", scope: !10, file: !10, line: 705, type: !1574, isLocal: true, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!290, !122, !1554, !158}
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1577 = !DILocalVariable(name: "conn", arg: 1, scope: !1573, file: !10, line: 705, type: !122)
!1578 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1573, file: !10, line: 705, type: !1554)
!1579 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1573, file: !10, line: 705, type: !158)
!1580 = !DILocalVariable(name: "err", scope: !1573, file: !10, line: 707, type: !290)
!1581 = !DILocalVariable(name: "buf", scope: !1573, file: !10, line: 708, type: !240)
!1582 = !DILocalVariable(name: "msg", scope: !1573, file: !10, line: 709, type: !807)
!1583 = !DILocalVariable(name: "len", scope: !1584, file: !10, line: 739, type: !190)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !10, line: 737, column: 41)
!1585 = distinct !DILexicalBlock(scope: !1573, file: !10, line: 737, column: 7)
!1586 = !DILocation(line: 705, column: 39, scope: !1573)
!1587 = !DILocation(line: 705, column: 59, scope: !1573)
!1588 = !DILocation(line: 705, column: 73, scope: !1573)
!1589 = !DILocation(line: 709, column: 3, scope: !1573)
!1590 = !DILocation(line: 714, column: 8, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1573, file: !10, line: 714, column: 7)
!1592 = !DILocation(line: 714, column: 7, scope: !1573)
!1593 = !DILocation(line: 718, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1573, file: !10, line: 718, column: 7)
!1595 = !DILocation(line: 718, column: 7, scope: !1573)
!1596 = !DILocation(line: 719, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !10, line: 719, column: 5)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !10, line: 718, column: 58)
!1599 = !DILocation(line: 720, column: 5, scope: !1598)
!1600 = !DILocation(line: 723, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1573, file: !10, line: 723, column: 7)
!1602 = !DILocation(line: 729, column: 33, scope: !1573)
!1603 = !DILocation(line: 729, column: 9, scope: !1573)
!1604 = !DILocation(line: 707, column: 9, scope: !1573)
!1605 = !DILocation(line: 730, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1573, file: !10, line: 730, column: 7)
!1607 = !DILocation(line: 730, column: 7, scope: !1573)
!1608 = !DILocation(line: 723, column: 18, scope: !1601)
!1609 = !DILocation(line: 736, column: 9, scope: !1573)
!1610 = !DILocation(line: 708, column: 16, scope: !1573)
!1611 = !DILocation(line: 737, column: 18, scope: !1585)
!1612 = !DILocation(line: 737, column: 7, scope: !1573)
!1613 = !DILocation(line: 739, column: 17, scope: !1584)
!1614 = !DILocation(line: 739, column: 28, scope: !1584)
!1615 = !{!1616, !1617, i64 16}
!1616 = !{!"pbuf", !936, i64 0, !936, i64 8, !1617, i64 16, !1617, i64 18, !930, i64 20, !930, i64 21, !930, i64 22, !930, i64 23}
!1617 = !{!"short", !930, i64 0}
!1618 = !DILocation(line: 679, column: 39, scope: !1525, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 742, column: 5, scope: !1584)
!1620 = !DILocation(line: 679, column: 52, scope: !1525, inlinedAt: !1619)
!1621 = !DILocation(line: 679, column: 73, scope: !1525, inlinedAt: !1619)
!1622 = !DILocation(line: 681, column: 3, scope: !1623, inlinedAt: !1619)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !10, line: 681, column: 3)
!1624 = distinct !DILexicalBlock(scope: !1525, file: !10, line: 681, column: 3)
!1625 = !DILocation(line: 681, column: 3, scope: !1624, inlinedAt: !1619)
!1626 = !DILocation(line: 681, column: 3, scope: !1627, inlinedAt: !1619)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !10, line: 681, column: 3)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !10, line: 681, column: 3)
!1629 = !DILocation(line: 681, column: 3, scope: !1630, inlinedAt: !1619)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !10, line: 681, column: 3)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !10, line: 681, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !10, line: 681, column: 3)
!1633 = !DILocation(line: 684, column: 8, scope: !1525, inlinedAt: !1619)
!1634 = !DILocation(line: 684, column: 13, scope: !1525, inlinedAt: !1619)
!1635 = !DILocation(line: 685, column: 8, scope: !1525, inlinedAt: !1619)
!1636 = !DILocation(line: 685, column: 14, scope: !1525, inlinedAt: !1619)
!1637 = !DILocation(line: 685, column: 18, scope: !1525, inlinedAt: !1619)
!1638 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 687, column: 10, scope: !1525, inlinedAt: !1619)
!1640 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1639)
!1641 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1639)
!1642 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1639)
!1643 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1639)
!1644 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1639)
!1645 = !DILocation(line: 747, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1573, file: !10, line: 747, column: 7)
!1647 = !DILocation(line: 747, column: 7, scope: !1573)
!1648 = !DILocation(line: 748, column: 18, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !10, line: 748, column: 9)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !10, line: 747, column: 20)
!1651 = !DILocation(line: 748, column: 9, scope: !1650)
!1652 = !DILocation(line: 751, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !10, line: 751, column: 7)
!1654 = distinct !DILexicalBlock(scope: !1649, file: !10, line: 748, column: 35)
!1655 = !DILocation(line: 752, column: 7, scope: !1654)
!1656 = !DILocation(line: 755, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !10, line: 755, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !10, line: 753, column: 12)
!1659 = !DILocation(line: 755, column: 7, scope: !1658)
!1660 = !DILocation(line: 755, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !10, line: 755, column: 7)
!1662 = !DILocation(line: 756, column: 21, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !10, line: 756, column: 11)
!1664 = !DILocation(line: 756, column: 24, scope: !1663)
!1665 = !DILocation(line: 756, column: 11, scope: !1658)
!1666 = !DILocation(line: 1141, column: 29, scope: !1433, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 758, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !10, line: 756, column: 33)
!1669 = !DILocation(line: 1148, column: 3, scope: !1440, inlinedAt: !1667)
!1670 = !DILocation(line: 1144, column: 3, scope: !1433, inlinedAt: !1667)
!1671 = !DILocation(line: 1149, column: 15, scope: !1433, inlinedAt: !1667)
!1672 = !DILocation(line: 1143, column: 9, scope: !1433, inlinedAt: !1667)
!1673 = !DILocation(line: 1150, column: 21, scope: !1433, inlinedAt: !1667)
!1674 = !DILocation(line: 1151, column: 3, scope: !1433, inlinedAt: !1667)
!1675 = !DILocation(line: 759, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1668, file: !10, line: 759, column: 13)
!1677 = !DILocation(line: 762, column: 9, scope: !1668)
!1678 = !DILocalVariable(name: "conn", arg: 1, scope: !1679, file: !10, line: 1091, type: !122)
!1679 = distinct !DISubprogram(name: "netconn_close_shutdown", scope: !10, file: !10, line: 1091, type: !1249, isLocal: true, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1680)
!1680 = !{!1678, !1681, !1682, !1683}
!1681 = !DILocalVariable(name: "how", arg: 2, scope: !1679, file: !10, line: 1091, type: !158)
!1682 = !DILocalVariable(name: "msg", scope: !1679, file: !10, line: 1093, type: !807)
!1683 = !DILocalVariable(name: "err", scope: !1679, file: !10, line: 1094, type: !290)
!1684 = !DILocation(line: 1091, column: 40, scope: !1679, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 765, column: 7, scope: !1658)
!1686 = !DILocation(line: 1091, column: 51, scope: !1679, inlinedAt: !1685)
!1687 = !DILocation(line: 1093, column: 3, scope: !1679, inlinedAt: !1685)
!1688 = !DILocation(line: 1100, column: 24, scope: !1679, inlinedAt: !1685)
!1689 = !DILocation(line: 1100, column: 29, scope: !1679, inlinedAt: !1685)
!1690 = !DILocation(line: 1103, column: 24, scope: !1679, inlinedAt: !1685)
!1691 = !DILocation(line: 1103, column: 28, scope: !1679, inlinedAt: !1685)
!1692 = !DILocation(line: 1103, column: 31, scope: !1679, inlinedAt: !1685)
!1693 = !DILocation(line: 1103, column: 36, scope: !1679, inlinedAt: !1685)
!1694 = !DILocation(line: 1109, column: 31, scope: !1679, inlinedAt: !1685)
!1695 = !DILocation(line: 1109, column: 42, scope: !1679, inlinedAt: !1685)
!1696 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 1113, column: 9, scope: !1679, inlinedAt: !1685)
!1698 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1697)
!1699 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1697)
!1700 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1697)
!1701 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1697)
!1702 = !DILocation(line: 1117, column: 1, scope: !1679, inlinedAt: !1685)
!1703 = !DILocation(line: 767, column: 7, scope: !1658)
!1704 = !DILocation(line: 0, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1591, file: !10, line: 714, column: 41)
!1706 = !DILocation(line: 771, column: 1, scope: !1573)
!1707 = distinct !DISubprogram(name: "netconn_recv_tcp_pbuf_flags", scope: !10, file: !10, line: 805, type: !1574, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1708)
!1708 = !{!1709, !1710, !1711}
!1709 = !DILocalVariable(name: "conn", arg: 1, scope: !1707, file: !10, line: 805, type: !122)
!1710 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1707, file: !10, line: 805, type: !1554)
!1711 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1707, file: !10, line: 805, type: !158)
!1712 = !DILocation(line: 805, column: 45, scope: !1707)
!1713 = !DILocation(line: 805, column: 65, scope: !1707)
!1714 = !DILocation(line: 805, column: 79, scope: !1707)
!1715 = !DILocation(line: 807, column: 3, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !10, line: 807, column: 3)
!1717 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 807, column: 3)
!1718 = !DILocation(line: 807, column: 3, scope: !1717)
!1719 = !DILocation(line: 807, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !10, line: 807, column: 3)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !10, line: 807, column: 3)
!1722 = !DILocation(line: 807, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !10, line: 807, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !10, line: 807, column: 3)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !10, line: 807, column: 3)
!1726 = !DILocation(line: 810, column: 10, scope: !1707)
!1727 = !DILocation(line: 811, column: 1, scope: !1707)
!1728 = distinct !DISubprogram(name: "netconn_recv_udp_raw_netbuf", scope: !10, file: !10, line: 824, type: !1729, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1732)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!290, !122, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!1732 = !{!1733, !1734}
!1733 = !DILocalVariable(name: "conn", arg: 1, scope: !1728, file: !10, line: 824, type: !122)
!1734 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1728, file: !10, line: 824, type: !1731)
!1735 = !DILocation(line: 824, column: 45, scope: !1728)
!1736 = !DILocation(line: 824, column: 67, scope: !1728)
!1737 = !DILocation(line: 826, column: 3, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !10, line: 826, column: 3)
!1739 = distinct !DILexicalBlock(scope: !1728, file: !10, line: 826, column: 3)
!1740 = !DILocation(line: 826, column: 3, scope: !1739)
!1741 = !DILocation(line: 826, column: 3, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !10, line: 826, column: 3)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !10, line: 826, column: 3)
!1744 = !DILocation(line: 826, column: 3, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !10, line: 826, column: 3)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !10, line: 826, column: 3)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !10, line: 826, column: 3)
!1748 = !DILocation(line: 829, column: 34, scope: !1728)
!1749 = !DILocation(line: 829, column: 10, scope: !1728)
!1750 = !DILocation(line: 830, column: 1, scope: !1728)
!1751 = distinct !DISubprogram(name: "netconn_recv_data", scope: !10, file: !10, line: 581, type: !1752, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!290, !122, !501, !158}
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1763, !1768}
!1755 = !DILocalVariable(name: "conn", arg: 1, scope: !1751, file: !10, line: 581, type: !122)
!1756 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1751, file: !10, line: 581, type: !501)
!1757 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1751, file: !10, line: 581, type: !158)
!1758 = !DILocalVariable(name: "buf", scope: !1751, file: !10, line: 583, type: !121)
!1759 = !DILocalVariable(name: "len", scope: !1751, file: !10, line: 584, type: !190)
!1760 = !DILocalVariable(name: "err", scope: !1761, file: !10, line: 591, type: !290)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !10, line: 590, column: 41)
!1762 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 590, column: 7)
!1763 = !DILocalVariable(name: "err", scope: !1764, file: !10, line: 603, type: !290)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !10, line: 602, column: 76)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !10, line: 602, column: 9)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !10, line: 601, column: 81)
!1767 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 600, column: 7)
!1768 = !DILocalVariable(name: "err", scope: !1769, file: !10, line: 641, type: !290)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !10, line: 640, column: 3)
!1770 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 638, column: 7)
!1771 = !DILocation(line: 581, column: 35, scope: !1751)
!1772 = !DILocation(line: 581, column: 48, scope: !1751)
!1773 = !DILocation(line: 581, column: 62, scope: !1751)
!1774 = !DILocation(line: 583, column: 3, scope: !1751)
!1775 = !DILocation(line: 583, column: 9, scope: !1751)
!1776 = !DILocation(line: 586, column: 3, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !10, line: 586, column: 3)
!1778 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 586, column: 3)
!1779 = !DILocation(line: 586, column: 3, scope: !1778)
!1780 = !DILocation(line: 586, column: 3, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !10, line: 586, column: 3)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !10, line: 586, column: 3)
!1783 = !DILocation(line: 586, column: 3, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !10, line: 586, column: 3)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !10, line: 586, column: 3)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !10, line: 586, column: 3)
!1787 = !DILocation(line: 587, column: 12, scope: !1751)
!1788 = !DILocation(line: 588, column: 3, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !10, line: 588, column: 3)
!1790 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 588, column: 3)
!1791 = !DILocation(line: 588, column: 3, scope: !1790)
!1792 = !DILocation(line: 588, column: 3, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !10, line: 588, column: 3)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !10, line: 588, column: 3)
!1795 = !DILocation(line: 588, column: 3, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !10, line: 588, column: 3)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !10, line: 588, column: 3)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !10, line: 588, column: 3)
!1799 = !DILocation(line: 590, column: 8, scope: !1762)
!1800 = !DILocation(line: 590, column: 7, scope: !1751)
!1801 = !DILocation(line: 1141, column: 29, scope: !1433, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 591, column: 17, scope: !1761)
!1803 = !DILocation(line: 1148, column: 3, scope: !1440, inlinedAt: !1802)
!1804 = !DILocation(line: 1144, column: 3, scope: !1433, inlinedAt: !1802)
!1805 = !DILocation(line: 1149, column: 15, scope: !1433, inlinedAt: !1802)
!1806 = !DILocation(line: 1143, column: 9, scope: !1433, inlinedAt: !1802)
!1807 = !DILocation(line: 1150, column: 21, scope: !1433, inlinedAt: !1802)
!1808 = !DILocation(line: 1151, column: 3, scope: !1433, inlinedAt: !1802)
!1809 = !DILocation(line: 591, column: 11, scope: !1761)
!1810 = !DILocation(line: 592, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1761, file: !10, line: 592, column: 9)
!1812 = !DILocation(line: 596, column: 5, scope: !1761)
!1813 = !DILocation(line: 600, column: 7, scope: !1767)
!1814 = !DILocation(line: 600, column: 49, scope: !1767)
!1815 = !DILocation(line: 600, column: 36, scope: !1767)
!1816 = !DILocation(line: 601, column: 57, scope: !1767)
!1817 = !DILocation(line: 601, column: 69, scope: !1767)
!1818 = !DILocation(line: 600, column: 7, scope: !1751)
!1819 = !DILocation(line: 602, column: 9, scope: !1765)
!1820 = !DILocation(line: 602, column: 55, scope: !1765)
!1821 = !DILocation(line: 602, column: 9, scope: !1766)
!1822 = !DILocation(line: 1141, column: 29, scope: !1433, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 605, column: 13, scope: !1764)
!1824 = !DILocation(line: 1148, column: 3, scope: !1440, inlinedAt: !1823)
!1825 = !DILocation(line: 1144, column: 3, scope: !1433, inlinedAt: !1823)
!1826 = !DILocation(line: 1149, column: 15, scope: !1433, inlinedAt: !1823)
!1827 = !DILocation(line: 1143, column: 9, scope: !1433, inlinedAt: !1823)
!1828 = !DILocation(line: 1150, column: 21, scope: !1433, inlinedAt: !1823)
!1829 = !DILocation(line: 1151, column: 3, scope: !1433, inlinedAt: !1823)
!1830 = !DILocation(line: 603, column: 13, scope: !1764)
!1831 = !DILocation(line: 606, column: 15, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1764, file: !10, line: 606, column: 11)
!1833 = !DILocation(line: 606, column: 11, scope: !1764)
!1834 = !DILocation(line: 610, column: 17, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1764, file: !10, line: 610, column: 11)
!1836 = !DILocation(line: 610, column: 23, scope: !1835)
!1837 = !DILocation(line: 613, column: 7, scope: !1764)
!1838 = !DILocation(line: 622, column: 5, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1767, file: !10, line: 615, column: 10)
!1840 = !DILocation(line: 638, column: 7, scope: !1770)
!1841 = !DILocation(line: 638, column: 37, scope: !1770)
!1842 = !DILocation(line: 638, column: 7, scope: !1751)
!1843 = !DILocation(line: 641, column: 11, scope: !1769)
!1844 = !DILocation(line: 641, column: 5, scope: !1769)
!1845 = !DILocation(line: 643, column: 33, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1769, file: !10, line: 643, column: 9)
!1847 = !DILocation(line: 643, column: 9, scope: !1846)
!1848 = !DILocation(line: 643, column: 9, scope: !1769)
!1849 = !DILocation(line: 651, column: 27, scope: !1769)
!1850 = !DILocation(line: 651, column: 33, scope: !1769)
!1851 = !DILocation(line: 584, column: 9, scope: !1751)
!1852 = !DILocation(line: 652, column: 3, scope: !1770)
!1853 = !DILocation(line: 645, column: 11, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !10, line: 645, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !10, line: 643, column: 45)
!1856 = !DILocation(line: 645, column: 15, scope: !1854)
!1857 = !DILocation(line: 647, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !10, line: 645, column: 28)
!1859 = !DILocation(line: 659, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !10, line: 659, column: 5)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !10, line: 659, column: 5)
!1862 = distinct !DILexicalBlock(scope: !1770, file: !10, line: 658, column: 3)
!1863 = !DILocation(line: 659, column: 5, scope: !1861)
!1864 = !DILocation(line: 659, column: 5, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !10, line: 659, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1860, file: !10, line: 659, column: 5)
!1867 = !DILocation(line: 659, column: 5, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !10, line: 659, column: 5)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !10, line: 659, column: 5)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !10, line: 659, column: 5)
!1871 = !DILocation(line: 660, column: 11, scope: !1862)
!1872 = !{!1873, !936, i64 0}
!1873 = !{!"netbuf", !936, i64 0, !936, i64 8, !1224, i64 16, !1617, i64 40}
!1874 = !DILocation(line: 668, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 668, column: 3)
!1876 = !DILocation(line: 668, column: 3, scope: !1751)
!1877 = !DILocation(line: 668, column: 3, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !10, line: 668, column: 3)
!1879 = !DILocation(line: 672, column: 14, scope: !1751)
!1880 = !DILocation(line: 672, column: 12, scope: !1751)
!1881 = !DILocation(line: 674, column: 3, scope: !1751)
!1882 = !DILocation(line: 0, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1811, file: !10, line: 592, column: 24)
!1884 = !DILocation(line: 675, column: 1, scope: !1751)
!1885 = distinct !DISubprogram(name: "netconn_recv_udp_raw_netbuf_flags", scope: !10, file: !10, line: 844, type: !1886, isLocal: false, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!290, !122, !1731, !158}
!1888 = !{!1889, !1890, !1891}
!1889 = !DILocalVariable(name: "conn", arg: 1, scope: !1885, file: !10, line: 844, type: !122)
!1890 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1885, file: !10, line: 844, type: !1731)
!1891 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1885, file: !10, line: 844, type: !158)
!1892 = !DILocation(line: 844, column: 51, scope: !1885)
!1893 = !DILocation(line: 844, column: 73, scope: !1885)
!1894 = !DILocation(line: 844, column: 87, scope: !1885)
!1895 = !DILocation(line: 846, column: 3, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !10, line: 846, column: 3)
!1897 = distinct !DILexicalBlock(scope: !1885, file: !10, line: 846, column: 3)
!1898 = !DILocation(line: 846, column: 3, scope: !1897)
!1899 = !DILocation(line: 846, column: 3, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !10, line: 846, column: 3)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !10, line: 846, column: 3)
!1902 = !DILocation(line: 846, column: 3, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !10, line: 846, column: 3)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !10, line: 846, column: 3)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !10, line: 846, column: 3)
!1906 = !DILocation(line: 849, column: 34, scope: !1885)
!1907 = !DILocation(line: 849, column: 10, scope: !1885)
!1908 = !DILocation(line: 850, column: 1, scope: !1885)
!1909 = distinct !DISubprogram(name: "netconn_recv", scope: !10, file: !10, line: 862, type: !1729, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915}
!1911 = !DILocalVariable(name: "conn", arg: 1, scope: !1909, file: !10, line: 862, type: !122)
!1912 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1909, file: !10, line: 862, type: !1731)
!1913 = !DILocalVariable(name: "buf", scope: !1909, file: !10, line: 865, type: !816)
!1914 = !DILocalVariable(name: "err", scope: !1909, file: !10, line: 866, type: !290)
!1915 = !DILocalVariable(name: "p", scope: !1916, file: !10, line: 878, type: !240)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !10, line: 877, column: 3)
!1917 = distinct !DILexicalBlock(scope: !1909, file: !10, line: 875, column: 7)
!1918 = !DILocation(line: 862, column: 30, scope: !1909)
!1919 = !DILocation(line: 862, column: 52, scope: !1909)
!1920 = !DILocation(line: 865, column: 18, scope: !1909)
!1921 = !DILocation(line: 869, column: 3, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !10, line: 869, column: 3)
!1923 = distinct !DILexicalBlock(scope: !1909, file: !10, line: 869, column: 3)
!1924 = !DILocation(line: 869, column: 3, scope: !1923)
!1925 = !DILocation(line: 869, column: 3, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !10, line: 869, column: 3)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !10, line: 869, column: 3)
!1928 = !DILocation(line: 869, column: 3, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !10, line: 869, column: 3)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !10, line: 869, column: 3)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !10, line: 869, column: 3)
!1932 = !DILocation(line: 870, column: 12, scope: !1909)
!1933 = !DILocation(line: 871, column: 3, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !10, line: 871, column: 3)
!1935 = distinct !DILexicalBlock(scope: !1909, file: !10, line: 871, column: 3)
!1936 = !DILocation(line: 871, column: 3, scope: !1935)
!1937 = !DILocation(line: 871, column: 3, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !10, line: 871, column: 3)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 871, column: 3)
!1940 = !DILocation(line: 871, column: 3, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !10, line: 871, column: 3)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !10, line: 871, column: 3)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !10, line: 871, column: 3)
!1944 = !DILocation(line: 875, column: 7, scope: !1917)
!1945 = !DILocation(line: 875, column: 37, scope: !1917)
!1946 = !DILocation(line: 875, column: 7, scope: !1909)
!1947 = !DILocation(line: 878, column: 5, scope: !1916)
!1948 = !DILocation(line: 878, column: 18, scope: !1916)
!1949 = !DILocation(line: 881, column: 28, scope: !1916)
!1950 = !DILocation(line: 882, column: 13, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1916, file: !10, line: 882, column: 9)
!1952 = !DILocation(line: 882, column: 9, scope: !1916)
!1953 = !DILocation(line: 886, column: 11, scope: !1916)
!1954 = !DILocation(line: 866, column: 9, scope: !1909)
!1955 = !DILocation(line: 887, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1916, file: !10, line: 887, column: 9)
!1957 = !DILocation(line: 887, column: 9, scope: !1916)
!1958 = !DILocation(line: 888, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !10, line: 887, column: 24)
!1960 = !DILocation(line: 889, column: 7, scope: !1959)
!1961 = !DILocation(line: 891, column: 5, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !10, line: 891, column: 5)
!1963 = distinct !DILexicalBlock(scope: !1916, file: !10, line: 891, column: 5)
!1964 = !DILocation(line: 891, column: 5, scope: !1963)
!1965 = !DILocation(line: 891, column: 5, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !10, line: 891, column: 5)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !10, line: 891, column: 5)
!1968 = !DILocation(line: 891, column: 5, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !10, line: 891, column: 5)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !10, line: 891, column: 5)
!1971 = distinct !DILexicalBlock(scope: !1966, file: !10, line: 891, column: 5)
!1972 = !DILocation(line: 893, column: 10, scope: !1916)
!1973 = !DILocation(line: 893, column: 12, scope: !1916)
!1974 = !DILocation(line: 894, column: 16, scope: !1916)
!1975 = !DILocation(line: 894, column: 10, scope: !1916)
!1976 = !DILocation(line: 894, column: 14, scope: !1916)
!1977 = !{!1873, !936, i64 8}
!1978 = !DILocation(line: 895, column: 10, scope: !1916)
!1979 = !DILocation(line: 895, column: 15, scope: !1916)
!1980 = !{!1873, !1617, i64 40}
!1981 = !DILocation(line: 896, column: 5, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !10, line: 896, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1916, file: !10, line: 896, column: 5)
!1984 = !DILocation(line: 896, column: 5, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !10, line: 896, column: 5)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !10, line: 896, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !10, line: 896, column: 5)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !10, line: 896, column: 5)
!1989 = !{!1873, !930, i64 36}
!1990 = !DILocation(line: 897, column: 14, scope: !1916)
!1991 = !DILocation(line: 899, column: 5, scope: !1916)
!1992 = !DILocation(line: 0, scope: !1916)
!1993 = !DILocation(line: 900, column: 3, scope: !1917)
!1994 = !DILocation(line: 907, column: 36, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1917, file: !10, line: 905, column: 3)
!1996 = !DILocation(line: 907, column: 12, scope: !1995)
!1997 = !DILocation(line: 907, column: 5, scope: !1995)
!1998 = !DILocation(line: 0, scope: !1995)
!1999 = !DILocation(line: 910, column: 1, scope: !1909)
!2000 = distinct !DISubprogram(name: "netconn_sendto", scope: !10, file: !10, line: 924, type: !2001, isLocal: false, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!290, !122, !816, !347, !190}
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "conn", arg: 1, scope: !2000, file: !10, line: 924, type: !122)
!2005 = !DILocalVariable(name: "buf", arg: 2, scope: !2000, file: !10, line: 924, type: !816)
!2006 = !DILocalVariable(name: "addr", arg: 3, scope: !2000, file: !10, line: 924, type: !347)
!2007 = !DILocalVariable(name: "port", arg: 4, scope: !2000, file: !10, line: 924, type: !190)
!2008 = !DILocation(line: 924, column: 32, scope: !2000)
!2009 = !DILocation(line: 924, column: 53, scope: !2000)
!2010 = !DILocation(line: 924, column: 75, scope: !2000)
!2011 = !DILocation(line: 924, column: 87, scope: !2000)
!2012 = !DILocation(line: 926, column: 11, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2000, file: !10, line: 926, column: 7)
!2014 = !DILocation(line: 926, column: 7, scope: !2000)
!2015 = !DILocation(line: 927, column: 5, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !10, line: 927, column: 5)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !10, line: 927, column: 5)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !10, line: 927, column: 5)
!2019 = distinct !DILexicalBlock(scope: !2013, file: !10, line: 926, column: 20)
!2020 = !DILocation(line: 927, column: 5, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !10, line: 927, column: 5)
!2022 = distinct !DILexicalBlock(scope: !2016, file: !10, line: 927, column: 5)
!2023 = !DILocation(line: 927, column: 5, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2018, file: !10, line: 927, column: 5)
!2025 = !DILocation(line: 927, column: 5, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !10, line: 927, column: 5)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !10, line: 927, column: 5)
!2028 = !DILocation(line: 927, column: 5, scope: !2018)
!2029 = !DILocation(line: 927, column: 5, scope: !2027)
!2030 = !DILocation(line: 927, column: 5, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !10, line: 927, column: 5)
!2032 = !DILocation(line: 927, column: 5, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2031, file: !10, line: 927, column: 5)
!2034 = !DILocation(line: 928, column: 10, scope: !2019)
!2035 = !DILocation(line: 928, column: 15, scope: !2019)
!2036 = !DILocalVariable(name: "conn", arg: 1, scope: !2037, file: !10, line: 943, type: !122)
!2037 = distinct !DISubprogram(name: "netconn_send", scope: !10, file: !10, line: 943, type: !2038, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!290, !122, !816}
!2040 = !{!2036, !2041, !2042, !2043}
!2041 = !DILocalVariable(name: "buf", arg: 2, scope: !2037, file: !10, line: 943, type: !816)
!2042 = !DILocalVariable(name: "msg", scope: !2037, file: !10, line: 945, type: !807)
!2043 = !DILocalVariable(name: "err", scope: !2037, file: !10, line: 946, type: !290)
!2044 = !DILocation(line: 943, column: 30, scope: !2037, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 929, column: 12, scope: !2019)
!2046 = !DILocation(line: 943, column: 51, scope: !2037, inlinedAt: !2045)
!2047 = !DILocation(line: 945, column: 3, scope: !2037, inlinedAt: !2045)
!2048 = !DILocation(line: 948, column: 3, scope: !2049, inlinedAt: !2045)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !10, line: 948, column: 3)
!2050 = distinct !DILexicalBlock(scope: !2037, file: !10, line: 948, column: 3)
!2051 = !DILocation(line: 948, column: 3, scope: !2050, inlinedAt: !2045)
!2052 = !DILocation(line: 948, column: 3, scope: !2053, inlinedAt: !2045)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !10, line: 948, column: 3)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !10, line: 948, column: 3)
!2055 = !DILocation(line: 948, column: 3, scope: !2056, inlinedAt: !2045)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !10, line: 948, column: 3)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !10, line: 948, column: 3)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !10, line: 948, column: 3)
!2059 = !DILocation(line: 953, column: 24, scope: !2037, inlinedAt: !2045)
!2060 = !DILocation(line: 953, column: 29, scope: !2037, inlinedAt: !2045)
!2061 = !DILocation(line: 954, column: 24, scope: !2037, inlinedAt: !2045)
!2062 = !DILocation(line: 954, column: 28, scope: !2037, inlinedAt: !2045)
!2063 = !DILocation(line: 954, column: 30, scope: !2037, inlinedAt: !2045)
!2064 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 955, column: 9, scope: !2037, inlinedAt: !2045)
!2066 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2065)
!2067 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2065)
!2068 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2065)
!2069 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2065)
!2070 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2065)
!2071 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2065)
!2072 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2065)
!2073 = !DILocation(line: 946, column: 9, scope: !2037, inlinedAt: !2045)
!2074 = !DILocation(line: 959, column: 1, scope: !2037, inlinedAt: !2045)
!2075 = !DILocation(line: 929, column: 5, scope: !2019)
!2076 = !DILocation(line: 0, scope: !2000)
!2077 = !DILocation(line: 932, column: 1, scope: !2000)
!2078 = !DILocation(line: 943, column: 30, scope: !2037)
!2079 = !DILocation(line: 943, column: 51, scope: !2037)
!2080 = !DILocation(line: 945, column: 3, scope: !2037)
!2081 = !DILocation(line: 948, column: 3, scope: !2049)
!2082 = !DILocation(line: 948, column: 3, scope: !2050)
!2083 = !DILocation(line: 948, column: 3, scope: !2053)
!2084 = !DILocation(line: 948, column: 3, scope: !2056)
!2085 = !DILocation(line: 953, column: 24, scope: !2037)
!2086 = !DILocation(line: 953, column: 29, scope: !2037)
!2087 = !DILocation(line: 954, column: 24, scope: !2037)
!2088 = !DILocation(line: 954, column: 28, scope: !2037)
!2089 = !DILocation(line: 954, column: 30, scope: !2037)
!2090 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 955, column: 9, scope: !2037)
!2092 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2091)
!2093 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2091)
!2094 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2091)
!2095 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2091)
!2096 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2091)
!2097 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2091)
!2098 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2091)
!2099 = !DILocation(line: 946, column: 9, scope: !2037)
!2100 = !DILocation(line: 959, column: 1, scope: !2037)
!2101 = distinct !DISubprogram(name: "netconn_write_partly", scope: !10, file: !10, line: 976, type: !2102, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2105)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!290, !122, !851, !854, !158, !2104}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111}
!2106 = !DILocalVariable(name: "conn", arg: 1, scope: !2101, file: !10, line: 976, type: !122)
!2107 = !DILocalVariable(name: "dataptr", arg: 2, scope: !2101, file: !10, line: 976, type: !851)
!2108 = !DILocalVariable(name: "size", arg: 3, scope: !2101, file: !10, line: 976, type: !854)
!2109 = !DILocalVariable(name: "apiflags", arg: 4, scope: !2101, file: !10, line: 977, type: !158)
!2110 = !DILocalVariable(name: "bytes_written", arg: 5, scope: !2101, file: !10, line: 977, type: !2104)
!2111 = !DILocalVariable(name: "vector", scope: !2101, file: !10, line: 979, type: !848)
!2112 = !DILocation(line: 976, column: 38, scope: !2101)
!2113 = !DILocation(line: 976, column: 56, scope: !2101)
!2114 = !DILocation(line: 976, column: 72, scope: !2101)
!2115 = !DILocation(line: 977, column: 27, scope: !2101)
!2116 = !DILocation(line: 977, column: 45, scope: !2101)
!2117 = !DILocation(line: 979, column: 3, scope: !2101)
!2118 = !DILocation(line: 980, column: 10, scope: !2101)
!2119 = !DILocation(line: 980, column: 14, scope: !2101)
!2120 = !{!2121, !936, i64 0}
!2121 = !{!"netvector", !936, i64 0, !1216, i64 8}
!2122 = !DILocation(line: 981, column: 10, scope: !2101)
!2123 = !DILocation(line: 981, column: 14, scope: !2101)
!2124 = !{!2121, !1216, i64 8}
!2125 = !DILocation(line: 979, column: 20, scope: !2101)
!2126 = !DILocation(line: 982, column: 10, scope: !2101)
!2127 = !DILocation(line: 983, column: 1, scope: !2101)
!2128 = !DILocation(line: 982, column: 3, scope: !2101)
!2129 = distinct !DISubprogram(name: "netconn_write_vectors_partly", scope: !10, file: !10, line: 999, type: !2130, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2133)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!290, !122, !2132, !190, !158, !2104}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!2134 = !DILocalVariable(name: "conn", arg: 1, scope: !2129, file: !10, line: 999, type: !122)
!2135 = !DILocalVariable(name: "vectors", arg: 2, scope: !2129, file: !10, line: 999, type: !2132)
!2136 = !DILocalVariable(name: "vectorcnt", arg: 3, scope: !2129, file: !10, line: 999, type: !190)
!2137 = !DILocalVariable(name: "apiflags", arg: 4, scope: !2129, file: !10, line: 1000, type: !158)
!2138 = !DILocalVariable(name: "bytes_written", arg: 5, scope: !2129, file: !10, line: 1000, type: !2104)
!2139 = !DILocalVariable(name: "msg", scope: !2129, file: !10, line: 1002, type: !807)
!2140 = !DILocalVariable(name: "err", scope: !2129, file: !10, line: 1003, type: !290)
!2141 = !DILocalVariable(name: "dontblock", scope: !2129, file: !10, line: 1004, type: !158)
!2142 = !DILocalVariable(name: "size", scope: !2129, file: !10, line: 1005, type: !854)
!2143 = !DILocalVariable(name: "i", scope: !2129, file: !10, line: 1006, type: !67)
!2144 = !DILocalVariable(name: "limited", scope: !2145, file: !10, line: 1034, type: !2148)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !10, line: 1033, column: 32)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !10, line: 1033, column: 14)
!2147 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1031, column: 7)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2149, line: 200, baseType: !574)
!2149 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!2150 = !DILocation(line: 999, column: 46, scope: !2129)
!2151 = !DILocation(line: 999, column: 70, scope: !2129)
!2152 = !DILocation(line: 999, column: 85, scope: !2129)
!2153 = !DILocation(line: 1000, column: 35, scope: !2129)
!2154 = !DILocation(line: 1000, column: 53, scope: !2129)
!2155 = !DILocation(line: 1002, column: 3, scope: !2129)
!2156 = !DILocation(line: 1008, column: 3, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !10, line: 1008, column: 3)
!2158 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1008, column: 3)
!2159 = !DILocation(line: 1008, column: 3, scope: !2158)
!2160 = !DILocation(line: 1008, column: 3, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !10, line: 1008, column: 3)
!2162 = distinct !DILexicalBlock(scope: !2157, file: !10, line: 1008, column: 3)
!2163 = !DILocation(line: 1008, column: 3, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !10, line: 1008, column: 3)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !10, line: 1008, column: 3)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !10, line: 1008, column: 3)
!2167 = !DILocation(line: 1009, column: 3, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !10, line: 1009, column: 3)
!2169 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1009, column: 3)
!2170 = !DILocation(line: 1009, column: 3, scope: !2169)
!2171 = !DILocation(line: 1009, column: 3, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !10, line: 1009, column: 3)
!2173 = distinct !DILexicalBlock(scope: !2168, file: !10, line: 1009, column: 3)
!2174 = !DILocation(line: 1009, column: 3, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !10, line: 1009, column: 3)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !10, line: 1009, column: 3)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !10, line: 1009, column: 3)
!2178 = !DILocation(line: 1010, column: 15, scope: !2129)
!2179 = !DILocation(line: 1010, column: 44, scope: !2129)
!2180 = !DILocation(line: 1016, column: 21, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1016, column: 7)
!2182 = !DILocation(line: 1016, column: 17, scope: !2181)
!2183 = !DILocation(line: 1006, column: 7, scope: !2129)
!2184 = !DILocation(line: 1005, column: 10, scope: !2129)
!2185 = !DILocation(line: 1024, column: 17, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !10, line: 1024, column: 3)
!2187 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1024, column: 3)
!2188 = !DILocation(line: 1024, column: 3, scope: !2187)
!2189 = !DILocation(line: 1025, column: 13, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !10, line: 1024, column: 35)
!2191 = distinct !{!2191, !2188, !2192}
!2192 = !DILocation(line: 1030, column: 3, scope: !2187)
!2193 = !DILocation(line: 1025, column: 24, scope: !2190)
!2194 = !DILocation(line: 1025, column: 10, scope: !2190)
!2195 = !DILocation(line: 1026, column: 14, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !10, line: 1026, column: 9)
!2197 = !DILocation(line: 1024, column: 31, scope: !2186)
!2198 = !DILocation(line: 1026, column: 9, scope: !2190)
!2199 = !DILocation(line: 1031, column: 12, scope: !2147)
!2200 = !DILocation(line: 1031, column: 7, scope: !2129)
!2201 = !DILocation(line: 1033, column: 19, scope: !2146)
!2202 = !DILocation(line: 1033, column: 14, scope: !2147)
!2203 = !DILocation(line: 1046, column: 24, scope: !2129)
!2204 = !DILocation(line: 1046, column: 29, scope: !2129)
!2205 = !DILocation(line: 1047, column: 30, scope: !2129)
!2206 = !DILocation(line: 1047, column: 37, scope: !2129)
!2207 = !DILocation(line: 1048, column: 30, scope: !2129)
!2208 = !DILocation(line: 1048, column: 41, scope: !2129)
!2209 = !DILocation(line: 1049, column: 30, scope: !2129)
!2210 = !DILocation(line: 1049, column: 41, scope: !2129)
!2211 = !DILocation(line: 1050, column: 30, scope: !2129)
!2212 = !DILocation(line: 1050, column: 39, scope: !2129)
!2213 = !DILocation(line: 1051, column: 30, scope: !2129)
!2214 = !DILocation(line: 1051, column: 34, scope: !2129)
!2215 = !DILocation(line: 1052, column: 30, scope: !2129)
!2216 = !DILocation(line: 1052, column: 37, scope: !2129)
!2217 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 1066, column: 9, scope: !2129)
!2219 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2218)
!2220 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2218)
!2221 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2218)
!2222 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2218)
!2223 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2218)
!2224 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2218)
!2225 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2218)
!2226 = !DILocation(line: 1003, column: 9, scope: !2129)
!2227 = !DILocation(line: 1067, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1067, column: 7)
!2229 = !DILocation(line: 1067, column: 7, scope: !2129)
!2230 = !DILocation(line: 0, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !10, line: 1074, column: 7)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !10, line: 1074, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !10, line: 1073, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !10, line: 1073, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2228, file: !10, line: 1067, column: 22)
!2236 = !DILocation(line: 1068, column: 9, scope: !2235)
!2237 = !DILocation(line: 1069, column: 22, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !10, line: 1068, column: 32)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !10, line: 1068, column: 9)
!2240 = !{!1216, !1216, i64 0}
!2241 = !DILocation(line: 1070, column: 5, scope: !2238)
!2242 = !DILocation(line: 1073, column: 9, scope: !2235)
!2243 = !DILocation(line: 1074, column: 7, scope: !2231)
!2244 = !DILocation(line: 1074, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !10, line: 1074, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2231, file: !10, line: 1074, column: 7)
!2247 = !DILocation(line: 1074, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !10, line: 1074, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !10, line: 1074, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !10, line: 1074, column: 7)
!2251 = !DILocation(line: 1080, column: 1, scope: !2129)
!2252 = distinct !DISubprogram(name: "netconn_close", scope: !10, file: !10, line: 1127, type: !1047, isLocal: false, isDefinition: true, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2253)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "conn", arg: 1, scope: !2252, file: !10, line: 1127, type: !122)
!2255 = !DILocation(line: 1127, column: 31, scope: !2252)
!2256 = !DILocation(line: 1091, column: 40, scope: !1679, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 1130, column: 10, scope: !2252)
!2258 = !DILocation(line: 1091, column: 51, scope: !1679, inlinedAt: !2257)
!2259 = !DILocation(line: 1093, column: 3, scope: !1679, inlinedAt: !2257)
!2260 = !DILocation(line: 1097, column: 3, scope: !2261, inlinedAt: !2257)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !10, line: 1097, column: 3)
!2262 = distinct !DILexicalBlock(scope: !1679, file: !10, line: 1097, column: 3)
!2263 = !DILocation(line: 1097, column: 3, scope: !2262, inlinedAt: !2257)
!2264 = !DILocation(line: 1097, column: 3, scope: !2265, inlinedAt: !2257)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !10, line: 1097, column: 3)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !10, line: 1097, column: 3)
!2267 = !DILocation(line: 1097, column: 3, scope: !2268, inlinedAt: !2257)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !10, line: 1097, column: 3)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !10, line: 1097, column: 3)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !10, line: 1097, column: 3)
!2271 = !DILocation(line: 1100, column: 24, scope: !1679, inlinedAt: !2257)
!2272 = !DILocation(line: 1100, column: 29, scope: !1679, inlinedAt: !2257)
!2273 = !DILocation(line: 1103, column: 24, scope: !1679, inlinedAt: !2257)
!2274 = !DILocation(line: 1103, column: 28, scope: !1679, inlinedAt: !2257)
!2275 = !DILocation(line: 1103, column: 31, scope: !1679, inlinedAt: !2257)
!2276 = !DILocation(line: 1103, column: 36, scope: !1679, inlinedAt: !2257)
!2277 = !DILocation(line: 1109, column: 31, scope: !1679, inlinedAt: !2257)
!2278 = !DILocation(line: 1109, column: 42, scope: !1679, inlinedAt: !2257)
!2279 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 1113, column: 9, scope: !1679, inlinedAt: !2257)
!2281 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2280)
!2282 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2280)
!2283 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2280)
!2284 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2280)
!2285 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2280)
!2286 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2280)
!2287 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2280)
!2288 = !DILocation(line: 1094, column: 9, scope: !1679, inlinedAt: !2257)
!2289 = !DILocation(line: 1117, column: 1, scope: !1679, inlinedAt: !2257)
!2290 = !DILocation(line: 1130, column: 3, scope: !2252)
!2291 = distinct !DISubprogram(name: "netconn_shutdown", scope: !10, file: !10, line: 1165, type: !2292, isLocal: false, isDefinition: true, scopeLine: 1166, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!290, !122, !158, !158}
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "conn", arg: 1, scope: !2291, file: !10, line: 1165, type: !122)
!2296 = !DILocalVariable(name: "shut_rx", arg: 2, scope: !2291, file: !10, line: 1165, type: !158)
!2297 = !DILocalVariable(name: "shut_tx", arg: 3, scope: !2291, file: !10, line: 1165, type: !158)
!2298 = !DILocation(line: 1165, column: 34, scope: !2291)
!2299 = !DILocation(line: 1165, column: 45, scope: !2291)
!2300 = !DILocation(line: 1165, column: 59, scope: !2291)
!2301 = !DILocation(line: 1091, column: 40, scope: !1679, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 1167, column: 10, scope: !2291)
!2303 = !DILocation(line: 1093, column: 3, scope: !1679, inlinedAt: !2302)
!2304 = !DILocation(line: 1097, column: 3, scope: !2261, inlinedAt: !2302)
!2305 = !DILocation(line: 1097, column: 3, scope: !2262, inlinedAt: !2302)
!2306 = !DILocation(line: 1097, column: 3, scope: !2265, inlinedAt: !2302)
!2307 = !DILocation(line: 1097, column: 3, scope: !2268, inlinedAt: !2302)
!2308 = !DILocation(line: 1167, column: 81, scope: !2291)
!2309 = !DILocation(line: 1167, column: 47, scope: !2291)
!2310 = !DILocation(line: 1167, column: 78, scope: !2291)
!2311 = !DILocation(line: 1091, column: 51, scope: !1679, inlinedAt: !2302)
!2312 = !DILocation(line: 1100, column: 24, scope: !1679, inlinedAt: !2302)
!2313 = !DILocation(line: 1100, column: 29, scope: !1679, inlinedAt: !2302)
!2314 = !DILocation(line: 1103, column: 24, scope: !1679, inlinedAt: !2302)
!2315 = !DILocation(line: 1103, column: 28, scope: !1679, inlinedAt: !2302)
!2316 = !DILocation(line: 1103, column: 31, scope: !1679, inlinedAt: !2302)
!2317 = !DILocation(line: 1103, column: 36, scope: !1679, inlinedAt: !2302)
!2318 = !DILocation(line: 1109, column: 31, scope: !1679, inlinedAt: !2302)
!2319 = !DILocation(line: 1109, column: 42, scope: !1679, inlinedAt: !2302)
!2320 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 1113, column: 9, scope: !1679, inlinedAt: !2302)
!2322 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2321)
!2323 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2321)
!2324 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2321)
!2325 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2321)
!2326 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2321)
!2327 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2321)
!2328 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2321)
!2329 = !DILocation(line: 1094, column: 9, scope: !1679, inlinedAt: !2302)
!2330 = !DILocation(line: 1117, column: 1, scope: !1679, inlinedAt: !2302)
!2331 = !DILocation(line: 1167, column: 3, scope: !2291)
!2332 = distinct !DISubprogram(name: "netconn_join_leave_group", scope: !10, file: !10, line: 1183, type: !2333, isLocal: false, isDefinition: true, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!290, !122, !347, !347, !54}
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341}
!2336 = !DILocalVariable(name: "conn", arg: 1, scope: !2332, file: !10, line: 1183, type: !122)
!2337 = !DILocalVariable(name: "multiaddr", arg: 2, scope: !2332, file: !10, line: 1184, type: !347)
!2338 = !DILocalVariable(name: "netif_addr", arg: 3, scope: !2332, file: !10, line: 1185, type: !347)
!2339 = !DILocalVariable(name: "join_or_leave", arg: 4, scope: !2332, file: !10, line: 1186, type: !54)
!2340 = !DILocalVariable(name: "msg", scope: !2332, file: !10, line: 1188, type: !807)
!2341 = !DILocalVariable(name: "err", scope: !2332, file: !10, line: 1189, type: !290)
!2342 = !DILocation(line: 1183, column: 42, scope: !2332)
!2343 = !DILocation(line: 1184, column: 43, scope: !2332)
!2344 = !DILocation(line: 1185, column: 43, scope: !2332)
!2345 = !DILocation(line: 1186, column: 44, scope: !2332)
!2346 = !DILocation(line: 1188, column: 3, scope: !2332)
!2347 = !DILocation(line: 1191, column: 3, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !10, line: 1191, column: 3)
!2349 = distinct !DILexicalBlock(scope: !2332, file: !10, line: 1191, column: 3)
!2350 = !DILocation(line: 1191, column: 3, scope: !2349)
!2351 = !DILocation(line: 1191, column: 3, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !10, line: 1191, column: 3)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !10, line: 1191, column: 3)
!2354 = !DILocation(line: 1191, column: 3, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !10, line: 1191, column: 3)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !10, line: 1191, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !10, line: 1191, column: 3)
!2358 = !DILocation(line: 1197, column: 17, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2332, file: !10, line: 1197, column: 7)
!2360 = !DILocation(line: 1197, column: 7, scope: !2332)
!2361 = !DILocation(line: 1200, column: 18, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2332, file: !10, line: 1200, column: 7)
!2363 = !DILocation(line: 1200, column: 7, scope: !2332)
!2364 = !DILocation(line: 1205, column: 24, scope: !2332)
!2365 = !DILocation(line: 1205, column: 29, scope: !2332)
!2366 = !DILocation(line: 1206, column: 24, scope: !2332)
!2367 = !DILocation(line: 1206, column: 28, scope: !2332)
!2368 = !DILocation(line: 1206, column: 31, scope: !2332)
!2369 = !DILocation(line: 1206, column: 41, scope: !2332)
!2370 = !DILocation(line: 1207, column: 31, scope: !2332)
!2371 = !DILocation(line: 1207, column: 42, scope: !2332)
!2372 = !DILocation(line: 1208, column: 31, scope: !2332)
!2373 = !DILocation(line: 1208, column: 45, scope: !2332)
!2374 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 1209, column: 9, scope: !2332)
!2376 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2375)
!2377 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2375)
!2378 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2375)
!2379 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2375)
!2380 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2375)
!2381 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2375)
!2382 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2375)
!2383 = !DILocation(line: 1189, column: 9, scope: !2332)
!2384 = !DILocation(line: 1213, column: 1, scope: !2332)
!2385 = distinct !DISubprogram(name: "netconn_join_leave_group_netif", scope: !10, file: !10, line: 1225, type: !2386, isLocal: false, isDefinition: true, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!290, !122, !347, !158, !54}
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394}
!2389 = !DILocalVariable(name: "conn", arg: 1, scope: !2385, file: !10, line: 1225, type: !122)
!2390 = !DILocalVariable(name: "multiaddr", arg: 2, scope: !2385, file: !10, line: 1226, type: !347)
!2391 = !DILocalVariable(name: "if_idx", arg: 3, scope: !2385, file: !10, line: 1227, type: !158)
!2392 = !DILocalVariable(name: "join_or_leave", arg: 4, scope: !2385, file: !10, line: 1228, type: !54)
!2393 = !DILocalVariable(name: "msg", scope: !2385, file: !10, line: 1230, type: !807)
!2394 = !DILocalVariable(name: "err", scope: !2385, file: !10, line: 1231, type: !290)
!2395 = !DILocation(line: 1225, column: 48, scope: !2385)
!2396 = !DILocation(line: 1226, column: 49, scope: !2385)
!2397 = !DILocation(line: 1227, column: 37, scope: !2385)
!2398 = !DILocation(line: 1228, column: 50, scope: !2385)
!2399 = !DILocation(line: 1230, column: 3, scope: !2385)
!2400 = !DILocation(line: 1233, column: 3, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !10, line: 1233, column: 3)
!2402 = distinct !DILexicalBlock(scope: !2385, file: !10, line: 1233, column: 3)
!2403 = !DILocation(line: 1233, column: 3, scope: !2402)
!2404 = !DILocation(line: 1233, column: 3, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !10, line: 1233, column: 3)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !10, line: 1233, column: 3)
!2407 = !DILocation(line: 1233, column: 3, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !10, line: 1233, column: 3)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !10, line: 1233, column: 3)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !10, line: 1233, column: 3)
!2411 = !DILocation(line: 1242, column: 14, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2385, file: !10, line: 1242, column: 7)
!2413 = !DILocation(line: 1242, column: 7, scope: !2385)
!2414 = !DILocation(line: 1239, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2385, file: !10, line: 1239, column: 7)
!2416 = !DILocation(line: 1239, column: 7, scope: !2385)
!2417 = !DILocation(line: 1247, column: 24, scope: !2385)
!2418 = !DILocation(line: 1247, column: 29, scope: !2385)
!2419 = !DILocation(line: 1248, column: 24, scope: !2385)
!2420 = !DILocation(line: 1248, column: 28, scope: !2385)
!2421 = !DILocation(line: 1248, column: 31, scope: !2385)
!2422 = !DILocation(line: 1248, column: 41, scope: !2385)
!2423 = !DILocation(line: 1249, column: 31, scope: !2385)
!2424 = !DILocation(line: 1249, column: 38, scope: !2385)
!2425 = !DILocation(line: 1250, column: 31, scope: !2385)
!2426 = !DILocation(line: 1250, column: 45, scope: !2385)
!2427 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 1251, column: 9, scope: !2385)
!2429 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2428)
!2430 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2428)
!2431 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2428)
!2432 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2428)
!2433 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2428)
!2434 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2428)
!2435 = !DILocation(line: 135, column: 20, scope: !956, inlinedAt: !2428)
!2436 = !DILocation(line: 135, column: 5, scope: !956, inlinedAt: !2428)
!2437 = !DILocation(line: 0, scope: !2385)
!2438 = !DILocation(line: 1255, column: 1, scope: !2385)
!2439 = distinct !DISubprogram(name: "netconn_gethostbyname_addrtype", scope: !10, file: !10, line: 1273, type: !2440, isLocal: false, isDefinition: true, scopeLine: 1278, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!290, !6, !838, !158}
!2442 = !{!2443, !2444, !2445, !2446, !2456, !2457, !2458}
!2443 = !DILocalVariable(name: "name", arg: 1, scope: !2439, file: !10, line: 1273, type: !6)
!2444 = !DILocalVariable(name: "addr", arg: 2, scope: !2439, file: !10, line: 1273, type: !838)
!2445 = !DILocalVariable(name: "dns_addrtype", arg: 3, scope: !2439, file: !10, line: 1273, type: !158)
!2446 = !DILocalVariable(name: "msg", scope: !2439, file: !10, line: 1279, type: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_api_msg", file: !808, line: 169, size: 320, elements: !2448)
!2448 = !{!2449, !2450, !2451, !2452, !2454}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2447, file: !808, line: 174, baseType: !6, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2447, file: !808, line: 177, baseType: !838, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dns_addrtype", scope: !2447, file: !808, line: 180, baseType: !158, size: 8, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2447, file: !808, line: 184, baseType: !2453, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2447, file: !808, line: 186, baseType: !2455, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2456 = !DILocalVariable(name: "sem", scope: !2439, file: !10, line: 1281, type: !355)
!2457 = !DILocalVariable(name: "err", scope: !2439, file: !10, line: 1283, type: !290)
!2458 = !DILocalVariable(name: "cberr", scope: !2439, file: !10, line: 1284, type: !290)
!2459 = !DILocation(line: 1273, column: 44, scope: !2439)
!2460 = !DILocation(line: 1273, column: 61, scope: !2439)
!2461 = !DILocation(line: 1273, column: 72, scope: !2439)
!2462 = !DILocation(line: 1279, column: 3, scope: !2439)
!2463 = !DILocation(line: 1281, column: 3, scope: !2439)
!2464 = !DILocation(line: 1283, column: 9, scope: !2439)
!2465 = !DILocation(line: 1283, column: 3, scope: !2439)
!2466 = !DILocation(line: 1286, column: 3, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !10, line: 1286, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2439, file: !10, line: 1286, column: 3)
!2469 = !DILocation(line: 1286, column: 3, scope: !2468)
!2470 = !DILocation(line: 1286, column: 3, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !10, line: 1286, column: 3)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !10, line: 1286, column: 3)
!2473 = !DILocation(line: 1286, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !10, line: 1286, column: 3)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !10, line: 1286, column: 3)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !10, line: 1286, column: 3)
!2477 = !DILocation(line: 1287, column: 3, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !10, line: 1287, column: 3)
!2479 = distinct !DILexicalBlock(scope: !2439, file: !10, line: 1287, column: 3)
!2480 = !DILocation(line: 1287, column: 3, scope: !2479)
!2481 = !DILocation(line: 1287, column: 3, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !10, line: 1287, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !10, line: 1287, column: 3)
!2484 = !DILocation(line: 1287, column: 3, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !10, line: 1287, column: 3)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !10, line: 1287, column: 3)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !10, line: 1287, column: 3)
!2488 = !DILocation(line: 1309, column: 7, scope: !2439)
!2489 = !DILocation(line: 1309, column: 11, scope: !2439)
!2490 = !{!2491, !936, i64 32}
!2491 = !{!"dns_api_msg", !936, i64 0, !936, i64 8, !930, i64 16, !936, i64 24, !936, i64 32}
!2492 = !DILocation(line: 1310, column: 7, scope: !2439)
!2493 = !DILocation(line: 1310, column: 11, scope: !2439)
!2494 = !{!2491, !936, i64 24}
!2495 = !DILocation(line: 1311, column: 20, scope: !2439)
!2496 = !DILocation(line: 1311, column: 25, scope: !2439)
!2497 = !{!2491, !936, i64 8}
!2498 = !DILocation(line: 1312, column: 20, scope: !2439)
!2499 = !DILocation(line: 1312, column: 25, scope: !2439)
!2500 = !{!2491, !936, i64 0}
!2501 = !DILocation(line: 1315, column: 20, scope: !2439)
!2502 = !DILocation(line: 1315, column: 33, scope: !2439)
!2503 = !{!2491, !930, i64 16}
!2504 = !DILocation(line: 1320, column: 9, scope: !2439)
!2505 = !DILocation(line: 1320, column: 7, scope: !2439)
!2506 = !DILocation(line: 1321, column: 11, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2439, file: !10, line: 1321, column: 7)
!2508 = !DILocation(line: 1321, column: 7, scope: !2439)
!2509 = !DILocation(line: 1327, column: 11, scope: !2439)
!2510 = !DILocation(line: 1284, column: 9, scope: !2439)
!2511 = !DILocation(line: 1329, column: 16, scope: !2439)
!2512 = !DILocation(line: 1329, column: 3, scope: !2439)
!2513 = !DILocation(line: 1331, column: 13, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2439, file: !10, line: 1331, column: 7)
!2515 = !DILocation(line: 1342, column: 10, scope: !2439)
!2516 = !DILocation(line: 1331, column: 7, scope: !2439)
!2517 = !DILocation(line: 0, scope: !2439)
!2518 = !DILocation(line: 1343, column: 1, scope: !2439)
