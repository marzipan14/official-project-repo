; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/api_msg.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/api_msg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.sys_mutex_t = type { %struct.uk_mutex, i32 }
%struct.uk_mutex = type { i32, %struct.uk_thread*, %struct.uk_waitq }
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
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.ip_addr = type { %union.anon.0, i8 }
%union.anon.0 = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.netconn = type { i32, i32, %union.anon, i8, %struct.sys_sem_t, %struct.sys_mbox_t, %struct.sys_mbox_t, i32, i8, %struct.api_msg*, void (%struct.netconn*, i32, i16)* }
%union.anon = type { %struct.ip_pcb* }
%struct.ip_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8 }
%struct.sys_sem_t = type { %struct.uk_semaphore, i32 }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.sys_mbox_t = type { %struct.uk_alloc*, %struct.uk_mbox*, i32 }
%struct.uk_mbox = type opaque
%struct.api_msg = type { %struct.netconn*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.netvector*, i16, i64, i64, i64, i8 }
%struct.netvector = type { i8*, i64 }
%struct.tcp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb*, i8*, i32, i8, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.tcp_seg*, %struct.tcp_seg*, %struct.tcp_seg*, %struct.pbuf*, %struct.tcp_pcb_listen*, i8 (i8*, %struct.tcp_pcb*, i16)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, i8)*, i8 (i8*, %struct.tcp_pcb*)*, void (i8*, i8)*, i32, i8, i8, i8, i8, i8, i8 }
%struct.tcp_seg = type opaque
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.tcp_pcb_listen = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb_listen*, i8*, i32, i8, i16, i8 (i8*, %struct.tcp_pcb*, i8)* }
%struct.udp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.udp_pcb*, i8, i16, i16, %struct.ip4_addr, i8, i8, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8* }
%struct.ip4_addr = type { i32 }
%struct.netbuf = type { %struct.pbuf*, %struct.pbuf*, %struct.ip_addr, i16 }
%struct.anon.7 = type { i8, i8 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }

@netconn_aborted = dso_local constant i8 0, align 1, !dbg !0
@netconn_reset = dso_local constant i8 0, align 1, !dbg !879
@netconn_closed = dso_local constant i8 0, align 1, !dbg !881
@.str = private unnamed_addr constant [12 x i8] c"err != NULL\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"netconn_alloc: undefined netconn_type\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"PCB must be deallocated outside this function\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"recvmbox must be deallocated before calling this function\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"acceptmbox must be deallocated before calling this function\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"netconn state error\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"already writing or closing\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"state!\00", align 1
@lock_tcpip_core = external dso_local global %struct.sys_mutex_t, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid netconn type\00", align 1
@ip6_addr_any = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"msg->msg.w.len != 0\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"invalid netconn_type\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"do_gethostbyname still in progress!!\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !883
@uk_pr_crit.__str.15 = internal global [10 x i8] c"api_msg.c\00", section ".data_shared", align 1, !dbg !902
@.str.17 = private unnamed_addr constant [34 x i8] c"recv_udp must have a pcb argument\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"recv_udp must have an argument\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"recv_udp: recv for wrong pcb!\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"invalid conn\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"this is for tcp netconns only\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"conn must be in state NETCONN_CLOSE\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"pcb already closed\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"conn->current_msg != NULL\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Closing a listen pcb may not fail!\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"conn != NULL\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"inavlid op_completed_sem\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"conn->current_msg == NULL\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"unhandled error\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"recv_tcp must have a pcb argument\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"recv_tcp must have an argument\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"err != ERR_OK unhandled\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"recv_tcp: recv for wrong pcb!\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"conn->state == NETCONN_CONNECT\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"(conn->current_msg != NULL) || conn->in_non_blocking_connect\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"blocking connect state error\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"expect newpcb == NULL or err == ERR_OK\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"conn->state == NETCONN_WRITE\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"conn->pcb.tcp != NULL\00", align 1
@.str.42 = private unnamed_addr constant [63 x i8] c"conn->current_msg->msg.w.offset < conn->current_msg->msg.w.len\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"conn->current_msg->msg.w.vector_cnt > 0\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"lwip_netconn_do_writemore: invalid length!\00", align 1
@__A_VARIABLE = internal global i32 0
@switch.table.err_tcp = private unnamed_addr constant [3 x i8*] [i8* @netconn_closed, i8* @netconn_reset, i8* @netconn_aborted]

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_netconn_is_err_msg(i8* readnone, i8*) local_unnamed_addr #0 !dbg !911 {
  %3 = icmp eq i8* %1, null, !dbg !919
  br i1 %3, label %4, label %5, !dbg !922

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #7, !dbg !923
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !926
  tail call void @ukplat_terminate(i32 3) #8, !dbg !926
  unreachable, !dbg !926

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %0, @netconn_aborted, !dbg !930
  br i1 %6, label %11, label %7, !dbg !932

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i8* %0, @netconn_reset, !dbg !933
  br i1 %8, label %11, label %9, !dbg !935

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %0, @netconn_closed, !dbg !936
  br i1 %10, label %11, label %13, !dbg !938

; <label>:11:                                     ; preds = %9, %7, %5
  %12 = phi i8 [ -13, %5 ], [ -14, %7 ], [ -15, %9 ]
  store i8 %12, i8* %1, align 1, !dbg !939, !tbaa !941
  br label %13, !dbg !944

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i32 [ 0, %9 ], [ 1, %11 ], !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  ret i32 %14, !dbg !944
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #2 !dbg !885 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !947
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !947
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !949
  call void @llvm.va_start(i8* nonnull %3), !dbg !949
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.15, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !950
  call void @llvm.va_end(i8* nonnull %3), !dbg !953
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  ret void, !dbg !954
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_newconn(i8* nocapture) local_unnamed_addr #0 !dbg !955 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !960
  store i8 0, i8* %2, align 8, !dbg !961, !tbaa !962
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !965
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !965, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !968
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !969
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !969, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !970
  br i1 %8, label %9, label %58, !dbg !971

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !983
  %11 = load i32, i32* %10, align 8, !dbg !983, !tbaa !985
  %12 = and i32 %11, 8, !dbg !983
  %13 = icmp eq i32 %12, 0, !dbg !983
  %14 = select i1 %13, i8 0, i8 46, !dbg !993
  %15 = trunc i32 %11 to i8, !dbg !994
  %16 = and i8 %15, -16, !dbg !994
  switch i8 %16, label %55 [
    i8 32, label %17
    i8 16, label %38
  ], !dbg !994

; <label>:17:                                     ; preds = %9
  %18 = tail call %struct.udp_pcb* @udp_new_ip_type(i8 zeroext %14) #9, !dbg !995
  %19 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !997, !tbaa !967
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %19, i64 0, i32 2, !dbg !998
  %21 = bitcast %union.anon* %20 to %struct.udp_pcb**, !dbg !999
  store %struct.udp_pcb* %18, %struct.udp_pcb** %21, align 8, !dbg !1000, !tbaa !941
  %22 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1001, !tbaa !967
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %22, i64 0, i32 2, !dbg !1003
  %24 = bitcast %union.anon* %23 to %struct.udp_pcb**, !dbg !1004
  %25 = load %struct.udp_pcb*, %struct.udp_pcb** %24, align 8, !dbg !1004, !tbaa !941
  %26 = icmp eq %struct.udp_pcb* %25, null, !dbg !1005
  br i1 %26, label %50, label %27, !dbg !1006

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.netconn, %struct.netconn* %22, i64 0, i32 0, !dbg !1007
  %29 = load i32, i32* %28, align 8, !dbg !1007, !tbaa !985
  %30 = and i32 %29, 243, !dbg !1007
  %31 = icmp eq i32 %30, 34, !dbg !1007
  br i1 %31, label %32, label %35, !dbg !1010

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %25, i64 0, i32 7, !dbg !1011
  store i8 1, i8* %33, align 8, !dbg !1011, !tbaa !1013
  %34 = load %struct.udp_pcb*, %struct.udp_pcb** %24, align 8, !dbg !1018, !tbaa !941
  br label %35, !dbg !1019

; <label>:35:                                     ; preds = %32, %27
  %36 = phi %struct.udp_pcb* [ %34, %32 ], [ %25, %27 ], !dbg !1018
  %37 = bitcast %struct.netconn* %22 to i8*, !dbg !1020
  tail call void @udp_recv(%struct.udp_pcb* %36, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* nonnull @recv_udp, i8* %37) #9, !dbg !1021
  br label %50, !dbg !1022

; <label>:38:                                     ; preds = %9
  %39 = tail call %struct.tcp_pcb* @tcp_new_ip_type(i8 zeroext %14) #9, !dbg !1023
  %40 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1024, !tbaa !967
  %41 = getelementptr inbounds %struct.netconn, %struct.netconn* %40, i64 0, i32 2, !dbg !1025
  %42 = bitcast %union.anon* %41 to %struct.tcp_pcb**, !dbg !1026
  store %struct.tcp_pcb* %39, %struct.tcp_pcb** %42, align 8, !dbg !1027, !tbaa !941
  %43 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1028, !tbaa !967
  %44 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 2, !dbg !1030
  %45 = bitcast %union.anon* %44 to %struct.tcp_pcb**, !dbg !1031
  %46 = load %struct.tcp_pcb*, %struct.tcp_pcb** %45, align 8, !dbg !1031, !tbaa !941
  %47 = icmp eq %struct.tcp_pcb* %46, null, !dbg !1032
  br i1 %47, label %50, label %48, !dbg !1033

; <label>:48:                                     ; preds = %38
  %49 = bitcast %struct.netconn* %43 to i8*, !dbg !1044
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %46, i8* %49) #9, !dbg !1045
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %46, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !1046
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %46, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1047
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %46, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !1048
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %46, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br label %50, !dbg !1051

; <label>:50:                                     ; preds = %48, %38, %35, %17
  %51 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1052, !tbaa !967
  %52 = getelementptr inbounds %struct.netconn, %struct.netconn* %51, i64 0, i32 2, i32 0, !dbg !1054
  %53 = load %struct.ip_pcb*, %struct.ip_pcb** %52, align 8, !dbg !1054, !tbaa !941
  %54 = icmp eq %struct.ip_pcb* %53, null, !dbg !1055
  br i1 %54, label %55, label %57, !dbg !1056

; <label>:55:                                     ; preds = %50, %9
  %56 = phi i8 [ -6, %9 ], [ -1, %50 ]
  store i8 %56, i8* %2, align 8, !dbg !1057, !tbaa !962
  br label %57, !dbg !1058

; <label>:57:                                     ; preds = %55, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br label %58, !dbg !1059

; <label>:58:                                     ; preds = %57, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  ret void, !dbg !1060
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local %struct.netconn* @netconn_alloc(i32, void (%struct.netconn*, i32, i16)*) local_unnamed_addr #0 !dbg !1061 {
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1073, !tbaa !1074
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !1084
  br i1 %4, label %5, label %7, !dbg !1086, !prof !1087

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno() #9, !dbg !1088
  store i32 12, i32* %6, align 4, !dbg !1090, !tbaa !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br label %51, !dbg !1094

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %3, i64 0, i32 1, !dbg !1104
  %9 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %8, align 8, !dbg !1104, !tbaa !1074
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i64 1, i64 128) #9, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  %11 = bitcast i8* %10 to %struct.netconn*, !dbg !1107
  %12 = icmp eq i8* %10, null, !dbg !1108
  br i1 %12, label %51, label %13, !dbg !1094

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !1110
  store i8 0, i8* %14, align 8, !dbg !1111, !tbaa !1112
  %15 = bitcast i8* %10 to i32*, !dbg !1113
  store i32 %0, i32* %15, align 8, !dbg !1114, !tbaa !985
  %16 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1115
  %17 = bitcast i8* %16 to %struct.tcp_pcb**, !dbg !1116
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %17, align 8, !dbg !1117, !tbaa !941
  %18 = trunc i32 %0 to i8, !dbg !1118
  %19 = and i8 %18, -16, !dbg !1118
  switch i8 %19, label %20 [
    i8 32, label %21
    i8 16, label %21
  ], !dbg !1118

; <label>:20:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1119
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1125
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1125
  unreachable, !dbg !1125

; <label>:21:                                     ; preds = %13, %13
  %22 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !1130
  %23 = bitcast i8* %22 to %struct.sys_mbox_t*, !dbg !1130
  %24 = tail call signext i8 @sys_mbox_new(%struct.sys_mbox_t* nonnull %23, i32 0) #9, !dbg !1132
  %25 = icmp eq i8 %24, 0, !dbg !1133
  br i1 %25, label %26, label %44, !dbg !1134

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !1135
  %28 = bitcast i8* %27 to %struct.sys_sem_t*, !dbg !1135
  %29 = tail call signext i8 @sys_sem_new(%struct.sys_sem_t* nonnull %28, i8 zeroext 0) #9, !dbg !1137
  %30 = icmp eq i8 %29, 0, !dbg !1138
  br i1 %30, label %32, label %31, !dbg !1139

; <label>:31:                                     ; preds = %26
  tail call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %23) #9, !dbg !1140
  br label %44, !dbg !1142

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds i8, i8* %10, i64 80, !dbg !1143
  %34 = bitcast i8* %33 to %struct.sys_mbox_t*, !dbg !1143
  tail call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %34) #9, !dbg !1144
  %35 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1145
  %36 = bitcast i8* %35 to i32*, !dbg !1145
  store i32 0, i32* %36, align 4, !dbg !1146, !tbaa !1147
  %37 = getelementptr inbounds i8, i8* %10, i64 104, !dbg !1148
  %38 = bitcast i8* %37 to i32*, !dbg !1148
  store i32 -1, i32* %38, align 8, !dbg !1149, !tbaa !1150
  %39 = getelementptr inbounds i8, i8* %10, i64 120, !dbg !1151
  %40 = bitcast i8* %39 to void (%struct.netconn*, i32, i16)**, !dbg !1151
  store void (%struct.netconn*, i32, i16)* %1, void (%struct.netconn*, i32, i16)** %40, align 8, !dbg !1152, !tbaa !1153
  %41 = getelementptr inbounds i8, i8* %10, i64 112, !dbg !1154
  %42 = bitcast i8* %41 to %struct.api_msg**, !dbg !1154
  store %struct.api_msg* null, %struct.api_msg** %42, align 8, !dbg !1155, !tbaa !1156
  %43 = getelementptr inbounds i8, i8* %10, i64 108, !dbg !1157
  store i8 0, i8* %43, align 4, !dbg !1158, !tbaa !1159
  br label %51, !dbg !1160

; <label>:44:                                     ; preds = %21, %31
  %45 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1161, !tbaa !1074
  %46 = icmp eq %struct.uk_alloc* %45, null, !dbg !1176
  br i1 %46, label %47, label %48, !dbg !1179, !prof !1087

; <label>:47:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1180
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1180
  unreachable, !dbg !1180

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %45, i64 0, i32 5, !dbg !1182
  %50 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %49, align 8, !dbg !1182, !tbaa !1074
  tail call void %50(%struct.uk_alloc* nonnull %45, i8* nonnull %10) #9, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br label %51, !dbg !1186

; <label>:51:                                     ; preds = %5, %7, %48, %32
  %52 = phi %struct.netconn* [ null, %48 ], [ %11, %32 ], [ null, %7 ], [ null, %5 ], !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  ret %struct.netconn* %52, !dbg !1188
}

; Function Attrs: noredzone
declare dso_local signext i8 @sys_mbox_new(%struct.sys_mbox_t*, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @sys_sem_new(%struct.sys_sem_t*, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_mbox_free(%struct.sys_mbox_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_mbox_set_invalid(%struct.sys_mbox_t*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netconn_free(%struct.netconn*) local_unnamed_addr #0 !dbg !1189 {
  %2 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, !dbg !1193
  %3 = bitcast %union.anon* %2 to %struct.tcp_pcb**, !dbg !1193
  %4 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8, !dbg !1193, !tbaa !941
  %5 = icmp eq %struct.tcp_pcb* %4, null, !dbg !1193
  br i1 %5, label %7, label %6, !dbg !1196

; <label>:6:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1197
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1200
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1200
  unreachable, !dbg !1200

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1204
  %9 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %8) #9, !dbg !1204
  %10 = icmp eq i32 %9, 0, !dbg !1204
  br i1 %10, label %12, label %11, !dbg !1207

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1208
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1211
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1211
  unreachable, !dbg !1211

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 6, !dbg !1215
  %14 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %13) #9, !dbg !1215
  %15 = icmp eq i32 %14, 0, !dbg !1215
  br i1 %15, label %17, label %16, !dbg !1218

; <label>:16:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1219
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1222
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1222
  unreachable, !dbg !1222

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1226
  tail call void @sys_sem_free(%struct.sys_sem_t* nonnull %18) #9, !dbg !1227
  tail call void @sys_sem_set_invalid(%struct.sys_sem_t* nonnull %18) #9, !dbg !1228
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1229, !tbaa !1074
  %20 = icmp eq %struct.uk_alloc* %19, null, !dbg !1234
  br i1 %20, label %21, label %22, !dbg !1235, !prof !1087

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1236
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1236
  unreachable, !dbg !1236

; <label>:22:                                     ; preds = %17
  %23 = bitcast %struct.netconn* %0 to i8*, !dbg !1237
  %24 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %19, i64 0, i32 5, !dbg !1240
  %25 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %24, align 8, !dbg !1240, !tbaa !1074
  tail call void %25(%struct.uk_alloc* nonnull %19, i8* %23) #9, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  ret void, !dbg !1244
}

; Function Attrs: noredzone
declare dso_local i32 @sys_mbox_valid(%struct.sys_mbox_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_sem_free(%struct.sys_sem_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_sem_set_invalid(%struct.sys_sem_t*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_delconn(i8*) local_unnamed_addr #0 !dbg !1245 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1252
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1252, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 1, !dbg !1253
  %5 = load i32, i32* %4, align 4, !dbg !1253, !tbaa !1147
  %6 = icmp eq i32 %5, 0, !dbg !1255
  br i1 %6, label %21, label %7, !dbg !1255

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1255
  %9 = load i32, i32* %8, align 8, !dbg !1255, !tbaa !985
  %10 = and i32 %9, 240, !dbg !1255
  %11 = icmp eq i32 %10, 16, !dbg !1255
  br i1 %11, label %13, label %12, !dbg !1258

; <label>:12:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1259
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1262
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1262
  unreachable, !dbg !1262

; <label>:13:                                     ; preds = %7
  switch i32 %5, label %19 [
    i32 3, label %14
    i32 2, label %21
  ], !dbg !1266

; <label>:14:                                     ; preds = %13
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 8, !dbg !1268
  %16 = load i8, i8* %15, align 4, !dbg !1268, !tbaa !1159
  %17 = and i8 %16, 4, !dbg !1268
  %18 = icmp eq i8 %17, 0, !dbg !1268
  br i1 %18, label %19, label %21, !dbg !1269

; <label>:19:                                     ; preds = %13, %14
  %20 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1270
  store i8 -5, i8* %20, align 8, !dbg !1272, !tbaa !962
  br label %82, !dbg !1273

; <label>:21:                                     ; preds = %13, %1, %14
  %22 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1274
  store i8 0, i8* %22, align 8, !dbg !1276, !tbaa !962
  tail call fastcc void @netconn_drain(%struct.netconn* %3) #7, !dbg !1277
  %23 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1278, !tbaa !967
  %24 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i64 0, i32 2, !dbg !1280
  %25 = bitcast %union.anon* %24 to %struct.tcp_pcb**, !dbg !1281
  %26 = load %struct.tcp_pcb*, %struct.tcp_pcb** %25, align 8, !dbg !1281, !tbaa !941
  %27 = icmp eq %struct.tcp_pcb* %26, null, !dbg !1282
  br i1 %27, label %70, label %28, !dbg !1283

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i64 0, i32 0, !dbg !1284
  %30 = load i32, i32* %29, align 8, !dbg !1284, !tbaa !985
  %31 = trunc i32 %30 to i8, !dbg !1286
  %32 = and i8 %31, -16, !dbg !1286
  switch i8 %32, label %67 [
    i8 32, label %33
    i8 16, label %41
  ], !dbg !1286

; <label>:33:                                     ; preds = %28
  %34 = bitcast %union.anon* %24 to %struct.udp_pcb**, !dbg !1287
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %26, i64 0, i32 16, !dbg !1289
  %36 = bitcast i32* %35 to i8**, !dbg !1289
  store i8* null, i8** %36, align 8, !dbg !1290, !tbaa !1291
  %37 = load %struct.udp_pcb*, %struct.udp_pcb** %34, align 8, !dbg !1292, !tbaa !941
  tail call void @udp_remove(%struct.udp_pcb* %37) #9, !dbg !1293
  %38 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1294, !tbaa !967
  %39 = getelementptr inbounds %struct.netconn, %struct.netconn* %38, i64 0, i32 2, !dbg !1295
  %40 = bitcast %union.anon* %39 to %struct.tcp_pcb**, !dbg !1296
  br label %67, !dbg !1297

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i64 0, i32 9, !dbg !1298
  %43 = load %struct.api_msg*, %struct.api_msg** %42, align 8, !dbg !1298, !tbaa !1156
  %44 = icmp eq %struct.api_msg* %43, null, !dbg !1298
  br i1 %44, label %46, label %45, !dbg !1301

; <label>:45:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1302
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1305
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1305
  unreachable, !dbg !1305

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i64 0, i32 1, !dbg !1309
  store i32 4, i32* %47, align 4, !dbg !1310, !tbaa !1147
  %48 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1311
  store i8 3, i8* %48, align 8, !dbg !1312, !tbaa !941
  %49 = bitcast %struct.api_msg** %42 to i8**, !dbg !1313
  store i8* %0, i8** %49, align 8, !dbg !1313, !tbaa !1156
  %50 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* nonnull %23, i8 zeroext 0) #7, !dbg !1314
  %51 = icmp eq i8 %50, 0, !dbg !1316
  br i1 %51, label %86, label %52, !dbg !1317

; <label>:52:                                     ; preds = %46
  %53 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1318, !tbaa !967
  %54 = getelementptr inbounds %struct.netconn, %struct.netconn* %53, i64 0, i32 1, !dbg !1318
  %55 = load i32, i32* %54, align 4, !dbg !1318, !tbaa !1147
  %56 = icmp eq i32 %55, 4, !dbg !1318
  br i1 %56, label %58, label %57, !dbg !1322

; <label>:57:                                     ; preds = %52
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1323
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1326
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1326
  unreachable, !dbg !1326

; <label>:58:                                     ; preds = %52
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1330
  %59 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1331, !tbaa !967
  %60 = getelementptr inbounds %struct.netconn, %struct.netconn* %59, i64 0, i32 4, !dbg !1331
  %61 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %60, i32 0) #9, !dbg !1332
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1333
  %62 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1334, !tbaa !967
  %63 = getelementptr inbounds %struct.netconn, %struct.netconn* %62, i64 0, i32 1, !dbg !1334
  %64 = load i32, i32* %63, align 4, !dbg !1334, !tbaa !1147
  %65 = icmp eq i32 %64, 0, !dbg !1334
  br i1 %65, label %86, label %66, !dbg !1337

; <label>:66:                                     ; preds = %58
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1338
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1341
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1341
  unreachable, !dbg !1341

; <label>:67:                                     ; preds = %28, %33
  %68 = phi %struct.tcp_pcb** [ %25, %28 ], [ %40, %33 ], !dbg !1296
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %68, align 8, !dbg !1345, !tbaa !941
  %69 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1346, !tbaa !967
  br label %70, !dbg !1348

; <label>:70:                                     ; preds = %21, %67
  %71 = phi %struct.netconn* [ %23, %21 ], [ %69, %67 ], !dbg !1346
  %72 = getelementptr inbounds %struct.netconn, %struct.netconn* %71, i64 0, i32 10, !dbg !1346
  %73 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %72, align 8, !dbg !1346, !tbaa !1153
  %74 = icmp eq void (%struct.netconn*, i32, i16)* %73, null, !dbg !1346
  br i1 %74, label %82, label %75, !dbg !1349

; <label>:75:                                     ; preds = %70
  tail call void %73(%struct.netconn* %71, i32 0, i16 zeroext 0) #9, !dbg !1350
  %76 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1352, !tbaa !967
  %77 = getelementptr inbounds %struct.netconn, %struct.netconn* %76, i64 0, i32 10
  %78 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %77, align 8, !dbg !1352, !tbaa !1153
  %79 = icmp eq void (%struct.netconn*, i32, i16)* %78, null, !dbg !1352
  br i1 %79, label %82, label %80, !dbg !1354

; <label>:80:                                     ; preds = %75
  tail call void %78(%struct.netconn* %76, i32 2, i16 zeroext 0) #9, !dbg !1355
  %81 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1357, !tbaa !967
  br label %82, !dbg !1355

; <label>:82:                                     ; preds = %70, %75, %80, %19
  %83 = phi %struct.netconn* [ %76, %75 ], [ %81, %80 ], [ %3, %19 ], [ %71, %70 ], !dbg !1357
  %84 = getelementptr inbounds %struct.netconn, %struct.netconn* %83, i64 0, i32 4, !dbg !1357
  %85 = tail call i32 @sys_sem_valid(%struct.sys_sem_t* nonnull %84) #9, !dbg !1359
  br label %86, !dbg !1360

; <label>:86:                                     ; preds = %58, %46, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  ret void, !dbg !1360
}

; Function Attrs: noredzone nounwind
define internal fastcc void @netconn_drain(%struct.netconn*) unnamed_addr #0 !dbg !1361 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !1381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !1381
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1382
  %5 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %4) #9, !dbg !1383
  %6 = icmp eq i32 %5, 0, !dbg !1383
  br i1 %6, label %33, label %7, !dbg !1384

; <label>:7:                                      ; preds = %1
  %8 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %4, i8** nonnull %2) #9, !dbg !1386
  %9 = icmp eq i32 %8, -1, !dbg !1387
  br i1 %9, label %32, label %10, !dbg !1388

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0
  %12 = bitcast i8** %2 to %struct.netbuf**
  br label %13, !dbg !1388

; <label>:13:                                     ; preds = %10, %29
  %14 = load i32, i32* %11, align 8, !dbg !1389, !tbaa !985
  %15 = and i32 %14, 240, !dbg !1389
  %16 = icmp eq i32 %15, 16, !dbg !1390
  br i1 %16, label %17, label %27, !dbg !1391

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %2, align 8, !dbg !1392, !tbaa !1074
  %19 = icmp eq i8* %18, @netconn_aborted, !dbg !1396
  %20 = icmp eq i8* %18, @netconn_reset, !dbg !1397
  %21 = or i1 %19, %20, !dbg !1398
  %22 = icmp eq i8* %18, @netconn_closed, !dbg !1399
  %23 = or i1 %22, %21, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %23, label %29, label %24, !dbg !1398

; <label>:24:                                     ; preds = %17
  %25 = bitcast i8* %18 to %struct.pbuf*, !dbg !1398
  %26 = call zeroext i8 @pbuf_free(%struct.pbuf* %25) #9, !dbg !1401
  br label %29, !dbg !1403

; <label>:27:                                     ; preds = %13
  %28 = load %struct.netbuf*, %struct.netbuf** %12, align 8, !dbg !1404, !tbaa !1074
  call void @netbuf_delete(%struct.netbuf* %28) #9, !dbg !1406
  br label %29

; <label>:29:                                     ; preds = %17, %24, %27
  %30 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %4, i8** nonnull %2) #9, !dbg !1386
  %31 = icmp eq i32 %30, -1, !dbg !1387
  br i1 %31, label %32, label %13, !dbg !1388, !llvm.loop !1407

; <label>:32:                                     ; preds = %29, %7
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %4) #9, !dbg !1409
  call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %4) #9, !dbg !1410
  br label %33, !dbg !1411

; <label>:33:                                     ; preds = %1, %32
  %34 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 6, !dbg !1412
  %35 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %34) #9, !dbg !1413
  %36 = icmp eq i32 %35, 0, !dbg !1413
  br i1 %36, label %59, label %37, !dbg !1414

; <label>:37:                                     ; preds = %33
  %38 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %34, i8** nonnull %2) #9, !dbg !1415
  %39 = icmp eq i32 %38, -1, !dbg !1416
  br i1 %39, label %58, label %40, !dbg !1417

; <label>:40:                                     ; preds = %37, %55
  %41 = load i8*, i8** %2, align 8, !dbg !1418, !tbaa !1074
  %42 = icmp eq i8* %41, @netconn_aborted, !dbg !1421
  %43 = icmp eq i8* %41, @netconn_reset, !dbg !1422
  %44 = or i1 %42, %43, !dbg !1423
  %45 = icmp eq i8* %41, @netconn_closed, !dbg !1424
  %46 = or i1 %45, %44, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  %47 = bitcast i8* %41 to %struct.netconn*, !dbg !1423
  br i1 %46, label %55, label %48, !dbg !1423

; <label>:48:                                     ; preds = %40
  call fastcc void @netconn_drain(%struct.netconn* %47) #7, !dbg !1427
  %49 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !1428
  %50 = bitcast i8* %49 to %struct.tcp_pcb**, !dbg !1430
  %51 = load %struct.tcp_pcb*, %struct.tcp_pcb** %50, align 8, !dbg !1430, !tbaa !941
  %52 = icmp eq %struct.tcp_pcb* %51, null, !dbg !1431
  br i1 %52, label %54, label %53, !dbg !1432

; <label>:53:                                     ; preds = %48
  call void @tcp_abort(%struct.tcp_pcb* nonnull %51) #9, !dbg !1433
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %50, align 8, !dbg !1435, !tbaa !941
  br label %54, !dbg !1436

; <label>:54:                                     ; preds = %48, %53
  call void @netconn_free(%struct.netconn* nonnull %47) #7, !dbg !1437
  br label %55, !dbg !1438

; <label>:55:                                     ; preds = %40, %54
  %56 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %34, i8** nonnull %2) #9, !dbg !1415
  %57 = icmp eq i32 %56, -1, !dbg !1416
  br i1 %57, label %58, label %40, !dbg !1417, !llvm.loop !1439

; <label>:58:                                     ; preds = %55, %37
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %34) #9, !dbg !1441
  call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %34) #9, !dbg !1442
  br label %59, !dbg !1443

; <label>:59:                                     ; preds = %33, %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  ret void, !dbg !1444
}

; Function Attrs: noredzone
declare dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn*, i8 zeroext) unnamed_addr #0 !dbg !1445 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1464
  br i1 %3, label %4, label %5, !dbg !1467

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1468
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1471
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1471
  unreachable, !dbg !1471

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1475
  %7 = load i32, i32* %6, align 8, !dbg !1475, !tbaa !985
  %8 = and i32 %7, 240, !dbg !1475
  %9 = icmp eq i32 %8, 16, !dbg !1475
  br i1 %9, label %11, label %10, !dbg !1478

; <label>:10:                                     ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1479
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1482
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1482
  unreachable, !dbg !1482

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 1, !dbg !1486
  %13 = load i32, i32* %12, align 4, !dbg !1486, !tbaa !1147
  %14 = icmp eq i32 %13, 4, !dbg !1486
  br i1 %14, label %16, label %15, !dbg !1489

; <label>:15:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1490
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1493
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1493
  unreachable, !dbg !1493

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, !dbg !1497
  %18 = bitcast %union.anon* %17 to %struct.tcp_pcb**, !dbg !1497
  %19 = load %struct.tcp_pcb*, %struct.tcp_pcb** %18, align 8, !dbg !1497, !tbaa !941
  %20 = icmp eq %struct.tcp_pcb* %19, null, !dbg !1497
  br i1 %20, label %21, label %22, !dbg !1500

; <label>:21:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !1501
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1504
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1504
  unreachable, !dbg !1504

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 9, !dbg !1508
  %24 = load %struct.api_msg*, %struct.api_msg** %23, align 8, !dbg !1508, !tbaa !1156
  %25 = icmp eq %struct.api_msg* %24, null, !dbg !1508
  br i1 %25, label %26, label %27, !dbg !1511

; <label>:26:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1512
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1515
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1515
  unreachable, !dbg !1515

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %24, i64 0, i32 2, !dbg !1520
  %29 = bitcast %union.anon.1* %28 to i8*, !dbg !1521
  %30 = load i8, i8* %29, align 8, !dbg !1521, !tbaa !941
  %31 = and i8 %30, 1, !dbg !1523
  %32 = and i8 %30, 2, !dbg !1525
  %33 = icmp eq i8 %30, 3, !dbg !1527
  br i1 %33, label %46, label %34, !dbg !1529

; <label>:34:                                     ; preds = %27
  %35 = icmp eq i8 %31, 0, !dbg !1530
  br i1 %35, label %39, label %36, !dbg !1532

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 8, !dbg !1533
  %38 = load i32, i32* %37, align 8, !dbg !1533, !tbaa !1534
  switch i32 %38, label %39 [
    i32 5, label %46
    i32 6, label %46
    i32 8, label %46
  ], !dbg !1536

; <label>:39:                                     ; preds = %36, %34
  %40 = icmp eq i8 %32, 0, !dbg !1537
  br i1 %40, label %47, label %41, !dbg !1539

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 12, !dbg !1540
  %43 = load i16, i16* %42, align 2, !dbg !1540, !tbaa !1541
  %44 = and i16 %43, 16, !dbg !1542
  %45 = icmp eq i16 %44, 0, !dbg !1543
  br i1 %45, label %47, label %46, !dbg !1544

; <label>:46:                                     ; preds = %27, %36, %36, %36, %41
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %19, i8* null) #9, !dbg !1545
  br label %47, !dbg !1548

; <label>:47:                                     ; preds = %41, %39, %46
  %48 = phi i1 [ true, %46 ], [ false, %39 ], [ false, %41 ]
  %49 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 8, !dbg !1549
  %50 = load i32, i32* %49, align 8, !dbg !1549, !tbaa !1534
  %51 = icmp eq i32 %50, 1, !dbg !1551
  br i1 %51, label %60, label %52, !dbg !1552

; <label>:52:                                     ; preds = %47
  %53 = icmp eq i8 %31, 0, !dbg !1553
  br i1 %53, label %55, label %54, !dbg !1556

; <label>:54:                                     ; preds = %52
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* null) #9, !dbg !1557
  tail call void @tcp_accept(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i8)* null) #9, !dbg !1559
  br label %55, !dbg !1560

; <label>:55:                                     ; preds = %52, %54
  %56 = icmp eq i8 %32, 0, !dbg !1561
  br i1 %56, label %58, label %57, !dbg !1563

; <label>:57:                                     ; preds = %55
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i16)* null) #9, !dbg !1564
  br label %58, !dbg !1566

; <label>:58:                                     ; preds = %55, %57
  br i1 %48, label %59, label %63, !dbg !1567

; <label>:59:                                     ; preds = %58
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*)* null, i8 zeroext 0) #9, !dbg !1568
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %19, void (i8*, i8)* null) #9, !dbg !1571
  br label %61, !dbg !1572

; <label>:60:                                     ; preds = %47
  tail call void @tcp_accept(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i8)* null) #9, !dbg !1573
  br i1 %48, label %61, label %63, !dbg !1572

; <label>:61:                                     ; preds = %59, %60
  %62 = tail call signext i8 @tcp_close(%struct.tcp_pcb* nonnull %19) #9, !dbg !1575
  br label %67, !dbg !1580

; <label>:63:                                     ; preds = %58, %60
  %64 = zext i8 %31 to i32, !dbg !1581
  %65 = zext i8 %32 to i32, !dbg !1583
  %66 = tail call signext i8 @tcp_shutdown(%struct.tcp_pcb* nonnull %19, i32 %64, i32 %65) #9, !dbg !1584
  br label %67

; <label>:67:                                     ; preds = %63, %61
  %68 = phi i1 [ true, %61 ], [ false, %63 ]
  %69 = phi i8 [ %62, %61 ], [ %66, %63 ], !dbg !1585
  %70 = icmp eq i8 %69, -1, !dbg !1586
  br i1 %70, label %71, label %82, !dbg !1586

; <label>:71:                                     ; preds = %67
  %72 = load %struct.api_msg*, %struct.api_msg** %23, align 8, !dbg !1587, !tbaa !1156
  %73 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %72, i64 0, i32 2, !dbg !1593
  %74 = bitcast %union.anon.1* %73 to %struct.anon.7*, !dbg !1594
  %75 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %74, i64 0, i32 1, !dbg !1595
  %76 = load i8, i8* %75, align 1, !dbg !1595, !tbaa !941
  %77 = icmp ne i8 %76, 0, !dbg !1596
  %78 = xor i1 %68, true, !dbg !1597
  %79 = or i1 %77, %78, !dbg !1597
  br i1 %79, label %81, label %80, !dbg !1597

; <label>:80:                                     ; preds = %71
  tail call void @tcp_abort(%struct.tcp_pcb* nonnull %19) #9, !dbg !1598
  br label %82, !dbg !1602

; <label>:81:                                     ; preds = %71
  br i1 %77, label %113, label %82, !dbg !1603

; <label>:82:                                     ; preds = %81, %67, %80
  %83 = phi i8 [ -1, %81 ], [ %69, %67 ], [ 0, %80 ]
  %84 = load %struct.api_msg*, %struct.api_msg** %23, align 8, !dbg !1604, !tbaa !1156
  %85 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %84, i64 0, i32 0, !dbg !1604
  %86 = load %struct.netconn*, %struct.netconn** %85, align 8, !dbg !1604, !tbaa !967
  %87 = getelementptr inbounds %struct.netconn, %struct.netconn* %86, i64 0, i32 4, !dbg !1604
  %88 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %84, i64 0, i32 1, !dbg !1606
  store i8 %83, i8* %88, align 8, !dbg !1607, !tbaa !962
  store %struct.api_msg* null, %struct.api_msg** %23, align 8, !dbg !1608, !tbaa !1156
  store i32 0, i32* %12, align 4, !dbg !1609, !tbaa !1147
  %89 = icmp eq i8 %83, 0, !dbg !1610
  br i1 %89, label %90, label %110, !dbg !1612

; <label>:90:                                     ; preds = %82
  br i1 %68, label %91, label %96, !dbg !1613

; <label>:91:                                     ; preds = %90
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %18, align 8, !dbg !1615, !tbaa !941
  %92 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1618
  %93 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %92, align 8, !dbg !1618, !tbaa !1153
  %94 = icmp eq void (%struct.netconn*, i32, i16)* %93, null, !dbg !1618
  br i1 %94, label %96, label %95, !dbg !1620

; <label>:95:                                     ; preds = %91
  tail call void %93(%struct.netconn* nonnull %0, i32 4, i16 zeroext 0) #9, !dbg !1621
  br label %96, !dbg !1621

; <label>:96:                                     ; preds = %91, %95, %90
  %97 = icmp eq i8 %31, 0, !dbg !1623
  br i1 %97, label %103, label %98, !dbg !1625

; <label>:98:                                     ; preds = %96
  %99 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1626
  %100 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %99, align 8, !dbg !1626, !tbaa !1153
  %101 = icmp eq void (%struct.netconn*, i32, i16)* %100, null, !dbg !1626
  br i1 %101, label %103, label %102, !dbg !1629

; <label>:102:                                    ; preds = %98
  tail call void %100(%struct.netconn* nonnull %0, i32 0, i16 zeroext 0) #9, !dbg !1630
  br label %103, !dbg !1630

; <label>:103:                                    ; preds = %98, %96, %102
  %104 = icmp eq i8 %32, 0, !dbg !1632
  br i1 %104, label %110, label %105, !dbg !1634

; <label>:105:                                    ; preds = %103
  %106 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1635
  %107 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %106, align 8, !dbg !1635, !tbaa !1153
  %108 = icmp eq void (%struct.netconn*, i32, i16)* %107, null, !dbg !1635
  br i1 %108, label %110, label %109, !dbg !1638

; <label>:109:                                    ; preds = %105
  tail call void %107(%struct.netconn* nonnull %0, i32 2, i16 zeroext 0) #9, !dbg !1639
  br label %110, !dbg !1639

; <label>:110:                                    ; preds = %105, %103, %109, %82
  %111 = icmp eq i8 %1, 0, !dbg !1641
  br i1 %111, label %122, label %112, !dbg !1643

; <label>:112:                                    ; preds = %110
  tail call void @sys_sem_signal(%struct.sys_sem_t* nonnull %87) #9, !dbg !1644
  br label %122, !dbg !1646

; <label>:113:                                    ; preds = %81
  %114 = load i32, i32* %49, align 8, !dbg !1647, !tbaa !1534
  %115 = icmp eq i32 %114, 1, !dbg !1647
  br i1 %115, label %116, label %117, !dbg !1652

; <label>:116:                                    ; preds = %113
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1653
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1656
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1656
  unreachable, !dbg !1656

; <label>:117:                                    ; preds = %113
  %118 = icmp eq i8 %32, 0, !dbg !1660
  br i1 %118, label %120, label %119, !dbg !1662

; <label>:119:                                    ; preds = %117
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1663
  br label %120, !dbg !1665

; <label>:120:                                    ; preds = %117, %119
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 1) #9, !dbg !1666
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %19, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1667
  %121 = bitcast %struct.netconn* %0 to i8*, !dbg !1668
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %19, i8* %121) #9, !dbg !1669
  br label %122

; <label>:122:                                    ; preds = %120, %112, %110
  %123 = phi i8 [ 0, %110 ], [ 0, %112 ], [ -1, %120 ], !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  ret i8 %123, !dbg !1671
}

; Function Attrs: noredzone
declare dso_local void @sys_mutex_unlock(%struct.sys_mutex_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_sem_wait(%struct.sys_sem_t*, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_mutex_lock(%struct.sys_mutex_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_sem_valid(%struct.sys_sem_t*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_bind(i8* nocapture) local_unnamed_addr #0 !dbg !1672 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1679
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1679, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !1681
  %5 = bitcast %union.anon* %4 to %struct.tcp_pcb**, !dbg !1682
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8, !dbg !1682, !tbaa !941
  %7 = icmp eq %struct.tcp_pcb* %6, null, !dbg !1683
  %8 = bitcast %struct.tcp_pcb* %6 to %struct.udp_pcb*, !dbg !1684
  br i1 %7, label %30, label %9, !dbg !1684

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1685
  %11 = load i32, i32* %10, align 8, !dbg !1685, !tbaa !985
  %12 = trunc i32 %11 to i8, !dbg !1687
  %13 = and i8 %12, -16, !dbg !1687
  switch i8 %13, label %30 [
    i8 32, label %14
    i8 16, label %22
  ], !dbg !1687

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1688
  %16 = bitcast i8* %15 to %struct.ip_addr**, !dbg !1688
  %17 = load %struct.ip_addr*, %struct.ip_addr** %16, align 8, !dbg !1688, !tbaa !941
  %18 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1690
  %19 = bitcast i8* %18 to i16*, !dbg !1690
  %20 = load i16, i16* %19, align 8, !dbg !1690, !tbaa !941
  %21 = tail call signext i8 @udp_bind(%struct.udp_pcb* %8, %struct.ip_addr* %17, i16 zeroext %20) #9, !dbg !1691
  br label %30, !dbg !1693

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1694
  %24 = bitcast i8* %23 to %struct.ip_addr**, !dbg !1694
  %25 = load %struct.ip_addr*, %struct.ip_addr** %24, align 8, !dbg !1694, !tbaa !941
  %26 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1695
  %27 = bitcast i8* %26 to i16*, !dbg !1695
  %28 = load i16, i16* %27, align 8, !dbg !1695, !tbaa !941
  %29 = tail call signext i8 @tcp_bind(%struct.tcp_pcb* nonnull %6, %struct.ip_addr* %25, i16 zeroext %28) #9, !dbg !1696
  br label %30, !dbg !1697

; <label>:30:                                     ; preds = %1, %9, %14, %22
  %31 = phi i8 [ %29, %22 ], [ %21, %14 ], [ -6, %9 ], [ -6, %1 ], !dbg !1698
  %32 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1700
  store i8 %31, i8* %32, align 8, !dbg !1701, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  ret void, !dbg !1702
}

; Function Attrs: noredzone
declare dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_bind(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_bind_if(i8* nocapture) local_unnamed_addr #0 !dbg !1703 {
  %2 = getelementptr inbounds i8, i8* %0, i64 26, !dbg !1778
  %3 = load i8, i8* %2, align 2, !dbg !1778, !tbaa !941
  %4 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %3) #9, !dbg !1779
  %5 = icmp eq %struct.netif* %4, null, !dbg !1781
  br i1 %5, label %21, label %6, !dbg !1783

; <label>:6:                                      ; preds = %1
  %7 = bitcast i8* %0 to %struct.netconn**, !dbg !1785
  %8 = load %struct.netconn*, %struct.netconn** %7, align 8, !dbg !1785, !tbaa !967
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %8, i64 0, i32 2, !dbg !1786
  %10 = bitcast %union.anon* %9 to %struct.tcp_pcb**, !dbg !1787
  %11 = load %struct.tcp_pcb*, %struct.tcp_pcb** %10, align 8, !dbg !1787, !tbaa !941
  %12 = icmp eq %struct.tcp_pcb* %11, null, !dbg !1788
  %13 = bitcast %struct.tcp_pcb* %11 to %struct.udp_pcb*, !dbg !1789
  br i1 %12, label %21, label %14, !dbg !1789

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %8, i64 0, i32 0, !dbg !1791
  %16 = load i32, i32* %15, align 8, !dbg !1791, !tbaa !985
  %17 = trunc i32 %16 to i8, !dbg !1793
  %18 = and i8 %17, -16, !dbg !1793
  switch i8 %18, label %21 [
    i8 32, label %19
    i8 16, label %20
  ], !dbg !1793

; <label>:19:                                     ; preds = %14
  tail call void @udp_bind_netif(%struct.udp_pcb* %13, %struct.netif* nonnull %4) #9, !dbg !1794
  br label %21, !dbg !1796

; <label>:20:                                     ; preds = %14
  tail call void @tcp_bind_netif(%struct.tcp_pcb* nonnull %11, %struct.netif* nonnull %4) #9, !dbg !1797
  br label %21, !dbg !1798

; <label>:21:                                     ; preds = %1, %6, %14, %19, %20
  %22 = phi i8 [ 0, %20 ], [ 0, %19 ], [ -6, %14 ], [ -6, %6 ], [ -6, %1 ], !dbg !1799
  %23 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1801
  store i8 %22, i8* %23, align 8, !dbg !1802, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  ret void, !dbg !1803
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_bind_netif(%struct.udp_pcb*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_bind_netif(%struct.tcp_pcb*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_connect(i8*) local_unnamed_addr #0 !dbg !1804 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1820
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1820, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !1821
  %5 = bitcast %union.anon* %4 to %struct.tcp_pcb**, !dbg !1822
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8, !dbg !1822, !tbaa !941
  %7 = icmp eq %struct.tcp_pcb* %6, null, !dbg !1823
  %8 = bitcast %struct.tcp_pcb* %6 to %struct.udp_pcb*, !dbg !1824
  br i1 %7, label %62, label %9, !dbg !1824

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1825
  %11 = load i32, i32* %10, align 8, !dbg !1825, !tbaa !985
  %12 = trunc i32 %11 to i8, !dbg !1826
  %13 = and i8 %12, -16, !dbg !1826
  switch i8 %13, label %61 [
    i8 32, label %14
    i8 16, label %22
  ], !dbg !1826

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1827
  %16 = bitcast i8* %15 to %struct.ip_addr**, !dbg !1827
  %17 = load %struct.ip_addr*, %struct.ip_addr** %16, align 8, !dbg !1827, !tbaa !941
  %18 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1828
  %19 = bitcast i8* %18 to i16*, !dbg !1828
  %20 = load i16, i16* %19, align 8, !dbg !1828, !tbaa !941
  %21 = tail call signext i8 @udp_connect(%struct.udp_pcb* %8, %struct.ip_addr* %17, i16 zeroext %20) #9, !dbg !1829
  br label %62, !dbg !1831

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 1, !dbg !1832
  %24 = load i32, i32* %23, align 4, !dbg !1832, !tbaa !1147
  switch i32 %24, label %25 [
    i32 3, label %62
    i32 0, label %26
  ], !dbg !1833

; <label>:25:                                     ; preds = %22
  br label %62, !dbg !1834

; <label>:26:                                     ; preds = %22
  %27 = bitcast %struct.netconn* %3 to i8*, !dbg !1839
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %6, i8* %27) #9, !dbg !1840
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %6, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !1841
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %6, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1842
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %6, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !1843
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %6, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  %28 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1846, !tbaa !967
  %29 = getelementptr inbounds %struct.netconn, %struct.netconn* %28, i64 0, i32 2, !dbg !1847
  %30 = bitcast %union.anon* %29 to %struct.tcp_pcb**, !dbg !1848
  %31 = load %struct.tcp_pcb*, %struct.tcp_pcb** %30, align 8, !dbg !1848, !tbaa !941
  %32 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1849
  %33 = bitcast i8* %32 to %struct.ip_addr**, !dbg !1849
  %34 = load %struct.ip_addr*, %struct.ip_addr** %33, align 8, !dbg !1849, !tbaa !941
  %35 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1850
  %36 = bitcast i8* %35 to i16*, !dbg !1850
  %37 = load i16, i16* %36, align 8, !dbg !1850, !tbaa !941
  %38 = tail call signext i8 @tcp_connect(%struct.tcp_pcb* %31, %struct.ip_addr* %34, i16 zeroext %37, i8 (i8*, %struct.tcp_pcb*, i8)* nonnull @lwip_netconn_do_connected) #9, !dbg !1851
  %39 = icmp eq i8 %38, 0, !dbg !1852
  br i1 %39, label %40, label %62, !dbg !1853

; <label>:40:                                     ; preds = %26
  %41 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1854, !tbaa !967
  %42 = getelementptr inbounds %struct.netconn, %struct.netconn* %41, i64 0, i32 8, !dbg !1854
  %43 = load i8, i8* %42, align 4, !dbg !1854, !tbaa !1159
  %44 = and i8 %43, 2, !dbg !1854
  %45 = getelementptr inbounds %struct.netconn, %struct.netconn* %41, i64 0, i32 1, !dbg !1856
  store i32 3, i32* %45, align 4, !dbg !1857, !tbaa !1147
  %46 = icmp ne i8 %44, 0, !dbg !1858
  %47 = and i8 %43, -5, !dbg !1861
  %48 = or i8 %43, 4, !dbg !1864
  %49 = select i1 %46, i8 %48, i8 %47, !dbg !1867
  store i8 %49, i8* %42, align 4, !dbg !1861, !tbaa !1159
  br i1 %46, label %62, label %50, !dbg !1868

; <label>:50:                                     ; preds = %40
  %51 = getelementptr inbounds %struct.netconn, %struct.netconn* %41, i64 0, i32 9, !dbg !1869
  %52 = bitcast %struct.api_msg** %51 to i8**, !dbg !1872
  store i8* %0, i8** %52, align 8, !dbg !1872, !tbaa !1156
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1873
  %53 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1874, !tbaa !967
  %54 = getelementptr inbounds %struct.netconn, %struct.netconn* %53, i64 0, i32 4, !dbg !1874
  %55 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %54, i32 0) #9, !dbg !1875
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1876
  %56 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1877, !tbaa !967
  %57 = getelementptr inbounds %struct.netconn, %struct.netconn* %56, i64 0, i32 1, !dbg !1877
  %58 = load i32, i32* %57, align 4, !dbg !1877, !tbaa !1147
  %59 = icmp eq i32 %58, 3, !dbg !1877
  br i1 %59, label %60, label %65, !dbg !1880

; <label>:60:                                     ; preds = %50
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1881
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1884
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1884
  unreachable, !dbg !1884

; <label>:61:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1888
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1893
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1893
  unreachable, !dbg !1893

; <label>:62:                                     ; preds = %40, %22, %1, %14, %25, %26
  %63 = phi i8 [ -10, %25 ], [ %38, %26 ], [ %21, %14 ], [ -15, %1 ], [ -9, %22 ], [ -5, %40 ], !dbg !1897
  %64 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1898
  store i8 %63, i8* %64, align 8, !dbg !1899, !tbaa !962
  br label %65, !dbg !1900

; <label>:65:                                     ; preds = %50, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  ret void, !dbg !1900
}

; Function Attrs: noredzone
declare dso_local signext i8 @udp_connect(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_connect(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @lwip_netconn_do_connected(i8*, %struct.tcp_pcb* nocapture readnone, i8 signext) #0 !dbg !1901 {
  %4 = bitcast i8* %0 to %struct.netconn*, !dbg !1913
  %5 = icmp eq i8* %0, null, !dbg !1915
  br i1 %5, label %61, label %6, !dbg !1917

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1918
  %8 = bitcast i8* %7 to i32*, !dbg !1918
  %9 = load i32, i32* %8, align 4, !dbg !1918, !tbaa !1147
  %10 = icmp eq i32 %9, 3, !dbg !1918
  br i1 %10, label %12, label %11, !dbg !1921

; <label>:11:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !1922
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1925
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1925
  unreachable, !dbg !1925

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !1929
  %14 = bitcast i8* %13 to %struct.api_msg**, !dbg !1929
  %15 = load %struct.api_msg*, %struct.api_msg** %14, align 8, !dbg !1929, !tbaa !1156
  %16 = icmp eq %struct.api_msg* %15, null, !dbg !1929
  br i1 %16, label %17, label %23, !dbg !1929

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !1929
  %19 = load i8, i8* %18, align 4, !dbg !1929, !tbaa !1159
  %20 = and i8 %19, 4, !dbg !1929
  %21 = icmp eq i8 %20, 0, !dbg !1929
  br i1 %21, label %22, label %28, !dbg !1932

; <label>:22:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !1933
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1936
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1936
  unreachable, !dbg !1936

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %15, i64 0, i32 1, !dbg !1940
  store i8 %2, i8* %24, align 8, !dbg !1943, !tbaa !962
  %25 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %15, i64 0, i32 0, !dbg !1944
  %26 = load %struct.netconn*, %struct.netconn** %25, align 8, !dbg !1944, !tbaa !967
  %27 = getelementptr inbounds %struct.netconn, %struct.netconn* %26, i64 0, i32 4, !dbg !1944
  br label %28, !dbg !1945

; <label>:28:                                     ; preds = %17, %23
  %29 = phi %struct.sys_sem_t* [ %27, %23 ], [ null, %17 ], !dbg !1946
  %30 = bitcast i8* %0 to i32*, !dbg !1947
  %31 = load i32, i32* %30, align 8, !dbg !1947, !tbaa !985
  %32 = and i32 %31, 240, !dbg !1947
  %33 = icmp eq i32 %32, 16, !dbg !1949
  %34 = icmp eq i8 %2, 0, !dbg !1950
  %35 = and i1 %34, %33, !dbg !1951
  br i1 %35, label %36, label %40, !dbg !1951

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1955
  %38 = bitcast i8* %37 to %struct.tcp_pcb**, !dbg !1956
  %39 = load %struct.tcp_pcb*, %struct.tcp_pcb** %38, align 8, !dbg !1956, !tbaa !941
  tail call void @tcp_arg(%struct.tcp_pcb* %39, i8* nonnull %0) #9, !dbg !1958
  tail call void @tcp_recv(%struct.tcp_pcb* %39, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !1959
  tail call void @tcp_sent(%struct.tcp_pcb* %39, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1960
  tail call void @tcp_poll(%struct.tcp_pcb* %39, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !1961
  tail call void @tcp_err(%struct.tcp_pcb* %39, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  br label %40, !dbg !1964

; <label>:40:                                     ; preds = %36, %28
  %41 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !1965
  %42 = load i8, i8* %41, align 4, !dbg !1965, !tbaa !1159
  %43 = and i8 %42, 4, !dbg !1965
  %44 = icmp eq i8 %43, 0, !dbg !1965
  %45 = and i8 %42, -5, !dbg !1966
  store i8 %45, i8* %41, align 4, !dbg !1966, !tbaa !1159
  %46 = icmp ne %struct.sys_sem_t* %29, null, !dbg !1971
  %47 = and i1 %46, %44, !dbg !1971
  br i1 %47, label %53, label %48, !dbg !1971

; <label>:48:                                     ; preds = %40
  %49 = icmp ne i8 %43, 0, !dbg !1971
  %50 = icmp eq %struct.sys_sem_t* %29, null, !dbg !1971
  %51 = and i1 %50, %49, !dbg !1971
  br i1 %51, label %53, label %52, !dbg !1971

; <label>:52:                                     ; preds = %48
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !1974
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1977
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1977
  unreachable, !dbg !1977

; <label>:53:                                     ; preds = %48, %40
  store %struct.api_msg* null, %struct.api_msg** %14, align 8, !dbg !1981, !tbaa !1156
  store i32 0, i32* %8, align 4, !dbg !1982, !tbaa !1147
  %54 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !1983
  %55 = bitcast i8* %54 to void (%struct.netconn*, i32, i16)**, !dbg !1983
  %56 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %55, align 8, !dbg !1983, !tbaa !1153
  %57 = icmp eq void (%struct.netconn*, i32, i16)* %56, null, !dbg !1983
  br i1 %57, label %59, label %58, !dbg !1985

; <label>:58:                                     ; preds = %53
  tail call void %56(%struct.netconn* nonnull %4, i32 2, i16 zeroext 0) #9, !dbg !1986
  br label %59, !dbg !1986

; <label>:59:                                     ; preds = %53, %58
  br i1 %44, label %60, label %61, !dbg !1988

; <label>:60:                                     ; preds = %59
  tail call void @sys_sem_signal(%struct.sys_sem_t* %29) #9, !dbg !1989
  br label %61, !dbg !1992

; <label>:61:                                     ; preds = %59, %60, %3
  %62 = phi i8 [ -6, %3 ], [ 0, %60 ], [ 0, %59 ], !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  ret i8 %62, !dbg !1993
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_disconnect(i8* nocapture) local_unnamed_addr #0 !dbg !1994 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1999
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1999, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1999
  %5 = load i32, i32* %4, align 8, !dbg !1999, !tbaa !985
  %6 = and i32 %5, 240, !dbg !1999
  %7 = icmp eq i32 %6, 32, !dbg !2001
  br i1 %7, label %8, label %12, !dbg !2002

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !2004
  %10 = bitcast %union.anon* %9 to %struct.udp_pcb**, !dbg !2006
  %11 = load %struct.udp_pcb*, %struct.udp_pcb** %10, align 8, !dbg !2006, !tbaa !941
  tail call void @udp_disconnect(%struct.udp_pcb* %11) #9, !dbg !2007
  br label %12, !dbg !2008

; <label>:12:                                     ; preds = %1, %8
  %13 = phi i8 [ 0, %8 ], [ -6, %1 ]
  %14 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2009
  store i8 %13, i8* %14, align 8, !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  ret void, !dbg !2012
}

; Function Attrs: noredzone
declare dso_local void @udp_disconnect(%struct.udp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_listen(i8* nocapture) local_unnamed_addr #0 !dbg !2013 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #6, !dbg !2031
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !2032
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2032, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !2033
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !2034
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2034, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !2035
  br i1 %8, label %115, label %9, !dbg !2036

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !2037
  %11 = load i32, i32* %10, align 8, !dbg !2037, !tbaa !985
  %12 = and i32 %11, 240, !dbg !2037
  %13 = icmp eq i32 %12, 16, !dbg !2038
  br i1 %13, label %14, label %114, !dbg !2039

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 1, !dbg !2040
  %16 = load i32, i32* %15, align 4, !dbg !2040, !tbaa !1147
  switch i32 %16, label %113 [
    i32 0, label %17
    i32 2, label %112
  ], !dbg !2041

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 8, !dbg !2042
  %19 = load i32, i32* %18, align 8, !dbg !2042, !tbaa !1534
  %20 = icmp eq i32 %19, 0, !dbg !2043
  br i1 %20, label %22, label %21, !dbg !2044

; <label>:21:                                     ; preds = %17
  store i8 -6, i8* %2, align 1, !dbg !2045, !tbaa !941
  br label %116, !dbg !2047

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 1, !dbg !2049
  %24 = load i8, i8* %23, align 4, !dbg !2049, !tbaa !2051
  %25 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 1), align 4, !dbg !2049, !tbaa !2053
  %26 = icmp eq i8 %24, %25, !dbg !2049
  br i1 %26, label %27, label %65, !dbg !2054

; <label>:27:                                     ; preds = %22
  %28 = icmp eq i8 %24, 6, !dbg !2049
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2049
  %30 = load i32, i32* %29, align 4, !dbg !2049, !tbaa !941
  %31 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !2049, !tbaa !941
  %32 = icmp eq i32 %30, %31, !dbg !2049
  br i1 %28, label %33, label %54, !dbg !2054

; <label>:33:                                     ; preds = %27
  br i1 %32, label %34, label %65, !dbg !2049

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2049
  %36 = load i32, i32* %35, align 4, !dbg !2049, !tbaa !941
  %37 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !2049, !tbaa !941
  %38 = icmp eq i32 %36, %37, !dbg !2049
  br i1 %38, label %39, label %65, !dbg !2049

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2049
  %41 = load i32, i32* %40, align 4, !dbg !2049, !tbaa !941
  %42 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !2049, !tbaa !941
  %43 = icmp eq i32 %41, %42, !dbg !2049
  br i1 %43, label %44, label %65, !dbg !2049

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2049
  %46 = load i32, i32* %45, align 4, !dbg !2049, !tbaa !941
  %47 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !2049, !tbaa !941
  %48 = icmp eq i32 %46, %47, !dbg !2049
  br i1 %48, label %49, label %65, !dbg !2049

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2049
  %51 = load i8, i8* %50, align 4, !dbg !2049, !tbaa !941
  %52 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !2049, !tbaa !941
  %53 = icmp eq i8 %51, %52, !dbg !2049
  br i1 %53, label %55, label %65, !dbg !2049

; <label>:54:                                     ; preds = %27
  br i1 %32, label %55, label %65, !dbg !2054

; <label>:55:                                     ; preds = %54, %49
  %56 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 8, !dbg !2055
  %57 = load i8, i8* %56, align 4, !dbg !2055, !tbaa !1159
  %58 = and i8 %57, 32, !dbg !2055
  %59 = icmp eq i8 %58, 0, !dbg !2056
  br i1 %59, label %60, label %65, !dbg !2057

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 1, !dbg !2058
  store i8 46, i8* %61, align 4, !dbg !2058, !tbaa !2061
  %62 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2062, !tbaa !941
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %62, i64 0, i32 1, i32 1, !dbg !2062
  store i8 46, i8* %63, align 4, !dbg !2062, !tbaa !2064
  %64 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2065, !tbaa !941
  br label %65, !dbg !2066

; <label>:65:                                     ; preds = %22, %60, %55, %54, %49, %44, %39, %34, %33
  %66 = phi %struct.tcp_pcb* [ %7, %22 ], [ %64, %60 ], [ %7, %55 ], [ %7, %54 ], [ %7, %49 ], [ %7, %44 ], [ %7, %39 ], [ %7, %34 ], [ %7, %33 ], !dbg !2065
  %67 = call %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb* %66, i8 zeroext -1, i8* nonnull %2) #9, !dbg !2067
  %68 = icmp eq %struct.tcp_pcb* %67, null, !dbg !2069
  br i1 %68, label %116, label %69, !dbg !2071

; <label>:69:                                     ; preds = %65
  %70 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2072, !tbaa !967
  %71 = getelementptr inbounds %struct.netconn, %struct.netconn* %70, i64 0, i32 5, !dbg !2075
  %72 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %71) #9, !dbg !2076
  %73 = icmp eq i32 %72, 0, !dbg !2076
  br i1 %73, label %79, label %74, !dbg !2077

; <label>:74:                                     ; preds = %69
  %75 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2078, !tbaa !967
  %76 = getelementptr inbounds %struct.netconn, %struct.netconn* %75, i64 0, i32 5, !dbg !2080
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %76) #9, !dbg !2081
  %77 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2082, !tbaa !967
  %78 = getelementptr inbounds %struct.netconn, %struct.netconn* %77, i64 0, i32 5, !dbg !2083
  call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %78) #9, !dbg !2084
  br label %79, !dbg !2085

; <label>:79:                                     ; preds = %69, %74
  store i8 0, i8* %2, align 1, !dbg !2086, !tbaa !941
  %80 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2087, !tbaa !967
  %81 = getelementptr inbounds %struct.netconn, %struct.netconn* %80, i64 0, i32 6, !dbg !2089
  %82 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %81) #9, !dbg !2090
  %83 = icmp eq i32 %82, 0, !dbg !2090
  br i1 %83, label %84, label %88, !dbg !2091

; <label>:84:                                     ; preds = %79
  %85 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2092, !tbaa !967
  %86 = getelementptr inbounds %struct.netconn, %struct.netconn* %85, i64 0, i32 6, !dbg !2094
  %87 = call signext i8 @sys_mbox_new(%struct.sys_mbox_t* nonnull %86, i32 0) #9, !dbg !2095
  store i8 %87, i8* %2, align 1, !dbg !2096, !tbaa !941
  br label %90, !dbg !2097

; <label>:88:                                     ; preds = %79
  %89 = load i8, i8* %2, align 1, !dbg !2098, !tbaa !941
  br label %90, !dbg !2098

; <label>:90:                                     ; preds = %88, %84
  %91 = phi i8 [ %89, %88 ], [ %87, %84 ], !dbg !2098
  %92 = icmp eq i8 %91, 0, !dbg !2100
  br i1 %92, label %93, label %107, !dbg !2101

; <label>:93:                                     ; preds = %90
  %94 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2102, !tbaa !967
  %95 = getelementptr inbounds %struct.netconn, %struct.netconn* %94, i64 0, i32 1, !dbg !2104
  store i32 2, i32* %95, align 4, !dbg !2105, !tbaa !1147
  %96 = getelementptr inbounds %struct.netconn, %struct.netconn* %94, i64 0, i32 2, !dbg !2106
  %97 = bitcast %union.anon* %96 to %struct.tcp_pcb**, !dbg !2107
  store %struct.tcp_pcb* %67, %struct.tcp_pcb** %97, align 8, !dbg !2108, !tbaa !941
  %98 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2109, !tbaa !967
  %99 = getelementptr inbounds %struct.netconn, %struct.netconn* %98, i64 0, i32 2, !dbg !2110
  %100 = bitcast %union.anon* %99 to %struct.tcp_pcb**, !dbg !2111
  %101 = load %struct.tcp_pcb*, %struct.tcp_pcb** %100, align 8, !dbg !2111, !tbaa !941
  %102 = bitcast %struct.netconn* %98 to i8*, !dbg !2112
  call void @tcp_arg(%struct.tcp_pcb* %101, i8* %102) #9, !dbg !2113
  %103 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2114, !tbaa !967
  %104 = getelementptr inbounds %struct.netconn, %struct.netconn* %103, i64 0, i32 2, !dbg !2115
  %105 = bitcast %union.anon* %104 to %struct.tcp_pcb**, !dbg !2116
  %106 = load %struct.tcp_pcb*, %struct.tcp_pcb** %105, align 8, !dbg !2116, !tbaa !941
  call void @tcp_accept(%struct.tcp_pcb* %106, i8 (i8*, %struct.tcp_pcb*, i8)* nonnull @accept_function) #9, !dbg !2117
  br label %116, !dbg !2118

; <label>:107:                                    ; preds = %90
  %108 = call signext i8 @tcp_close(%struct.tcp_pcb* nonnull %67) #9, !dbg !2119
  %109 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2121, !tbaa !967
  %110 = getelementptr inbounds %struct.netconn, %struct.netconn* %109, i64 0, i32 2, !dbg !2122
  %111 = bitcast %union.anon* %110 to %struct.tcp_pcb**, !dbg !2123
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %111, align 8, !dbg !2124, !tbaa !941
  br label %116

; <label>:112:                                    ; preds = %14
  store i8 0, i8* %2, align 1, !dbg !2125, !tbaa !941
  br label %116, !dbg !2128

; <label>:113:                                    ; preds = %14
  store i8 -11, i8* %2, align 1, !dbg !2129, !tbaa !941
  br label %116

; <label>:114:                                    ; preds = %9
  store i8 -16, i8* %2, align 1, !dbg !2131, !tbaa !941
  br label %116

; <label>:115:                                    ; preds = %1
  store i8 -11, i8* %2, align 1, !dbg !2133, !tbaa !941
  br label %116

; <label>:116:                                    ; preds = %21, %93, %107, %65, %114, %112, %113, %115
  %117 = load i8, i8* %2, align 1, !dbg !2135, !tbaa !941
  %118 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2136
  store i8 %117, i8* %118, align 8, !dbg !2137, !tbaa !962
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #6, !dbg !2138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  ret void, !dbg !2138
}

; Function Attrs: noredzone
declare dso_local %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb*, i8 zeroext, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_arg(%struct.tcp_pcb*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_accept(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @accept_function(i8*, %struct.tcp_pcb*, i8 signext) #0 !dbg !2139 {
  %4 = bitcast i8* %0 to %struct.netconn*, !dbg !2152
  %5 = icmp eq i8* %0, null, !dbg !2154
  br i1 %5, label %53, label %6, !dbg !2156

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !2157
  %8 = bitcast i8* %7 to %struct.sys_mbox_t*, !dbg !2157
  %9 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %8) #9, !dbg !2157
  %10 = icmp eq i32 %9, 0, !dbg !2157
  br i1 %10, label %53, label %11, !dbg !2159

; <label>:11:                                     ; preds = %6
  %12 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2160
  br i1 %12, label %13, label %22, !dbg !2162

; <label>:13:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  %14 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %8, i8* nonnull @netconn_aborted) #9, !dbg !2173
  %15 = icmp eq i8 %14, 0, !dbg !2174
  br i1 %15, label %16, label %53, !dbg !2175

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !2176
  %18 = bitcast i8* %17 to void (%struct.netconn*, i32, i16)**, !dbg !2176
  %19 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !2176, !tbaa !1153
  %20 = icmp eq void (%struct.netconn*, i32, i16)* %19, null, !dbg !2176
  br i1 %20, label %53, label %21, !dbg !2179

; <label>:21:                                     ; preds = %16
  tail call void %19(%struct.netconn* nonnull %4, i32 0, i16 zeroext 0) #9, !dbg !2180
  br label %53, !dbg !2180

; <label>:22:                                     ; preds = %11
  %23 = icmp eq i8 %2, 0, !dbg !2182
  br i1 %23, label %25, label %24, !dbg !2185

; <label>:24:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !2186
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2189
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2189
  unreachable, !dbg !2189

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8* %0 to i32*, !dbg !2193
  %27 = load i32, i32* %26, align 8, !dbg !2193, !tbaa !985
  %28 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !2194
  %29 = bitcast i8* %28 to void (%struct.netconn*, i32, i16)**, !dbg !2194
  %30 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %29, align 8, !dbg !2194, !tbaa !1153
  %31 = tail call %struct.netconn* @netconn_alloc(i32 %27, void (%struct.netconn*, i32, i16)* %30) #7, !dbg !2195
  %32 = icmp eq %struct.netconn* %31, null, !dbg !2197
  br i1 %32, label %33, label %40, !dbg !2199

; <label>:33:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  %34 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %8, i8* nonnull @netconn_aborted) #9, !dbg !2205
  %35 = icmp eq i8 %34, 0, !dbg !2206
  br i1 %35, label %36, label %53, !dbg !2207

; <label>:36:                                     ; preds = %33
  %37 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %29, align 8, !dbg !2208, !tbaa !1153
  %38 = icmp eq void (%struct.netconn*, i32, i16)* %37, null, !dbg !2208
  br i1 %38, label %53, label %39, !dbg !2211

; <label>:39:                                     ; preds = %36
  tail call void %37(%struct.netconn* nonnull %4, i32 0, i16 zeroext 0) #9, !dbg !2212
  br label %53, !dbg !2212

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i64 0, i32 2, !dbg !2214
  %42 = bitcast %union.anon* %41 to %struct.tcp_pcb**, !dbg !2215
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %42, align 8, !dbg !2216, !tbaa !941
  %43 = bitcast %struct.netconn* %31 to i8*, !dbg !2220
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %1, i8* %43) #9, !dbg !2221
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %1, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !2222
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %1, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !2223
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %1, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !2224
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %1, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2226
  %44 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %8, i8* %43) #9, !dbg !2227
  %45 = icmp eq i8 %44, 0, !dbg !2228
  br i1 %45, label %49, label %46, !dbg !2229

; <label>:46:                                     ; preds = %40
  %47 = load %struct.tcp_pcb*, %struct.tcp_pcb** %42, align 8, !dbg !2230, !tbaa !941
  tail call void @tcp_arg(%struct.tcp_pcb* %47, i8* null) #9, !dbg !2232
  tail call void @tcp_recv(%struct.tcp_pcb* %47, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* null) #9, !dbg !2233
  tail call void @tcp_sent(%struct.tcp_pcb* %47, i8 (i8*, %struct.tcp_pcb*, i16)* null) #9, !dbg !2234
  tail call void @tcp_poll(%struct.tcp_pcb* %47, i8 (i8*, %struct.tcp_pcb*)* null, i8 zeroext 0) #9, !dbg !2235
  tail call void @tcp_err(%struct.tcp_pcb* %47, void (i8*, i8)* null) #9, !dbg !2236
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %42, align 8, !dbg !2237, !tbaa !941
  %48 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i64 0, i32 5, !dbg !2238
  tail call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %48) #9, !dbg !2239
  tail call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %48) #9, !dbg !2240
  tail call void @netconn_free(%struct.netconn* nonnull %31) #7, !dbg !2241
  br label %53

; <label>:49:                                     ; preds = %40
  %50 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %29, align 8, !dbg !2242, !tbaa !1153
  %51 = icmp eq void (%struct.netconn*, i32, i16)* %50, null, !dbg !2242
  br i1 %51, label %53, label %52, !dbg !2245

; <label>:52:                                     ; preds = %49
  tail call void %50(%struct.netconn* nonnull %4, i32 0, i16 zeroext 0) #9, !dbg !2246
  br label %53, !dbg !2246

; <label>:53:                                     ; preds = %52, %49, %33, %39, %36, %13, %21, %16, %6, %3, %46
  %54 = phi i8 [ -1, %46 ], [ -6, %3 ], [ -6, %6 ], [ -6, %16 ], [ -6, %21 ], [ -6, %13 ], [ -1, %36 ], [ -1, %39 ], [ -1, %33 ], [ 0, %49 ], [ 0, %52 ], !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2250
  ret i8 %54, !dbg !2250
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_close(%struct.tcp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_send(i8* nocapture) local_unnamed_addr #0 !dbg !2251 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2258
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2258, !tbaa !967
  %4 = tail call signext i8 @netconn_err(%struct.netconn* %3) #9, !dbg !2259
  %5 = icmp eq i8 %4, 0, !dbg !2261
  br i1 %5, label %6, label %55, !dbg !2263

; <label>:6:                                      ; preds = %1
  %7 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2264, !tbaa !967
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 2, !dbg !2267
  %9 = bitcast %union.anon* %8 to %struct.tcp_pcb**, !dbg !2268
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** %9, align 8, !dbg !2268, !tbaa !941
  %11 = icmp eq %struct.tcp_pcb* %10, null, !dbg !2269
  %12 = bitcast %struct.tcp_pcb* %10 to %struct.udp_pcb*, !dbg !2270
  br i1 %11, label %55, label %13, !dbg !2270

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 0, !dbg !2271
  %15 = load i32, i32* %14, align 8, !dbg !2271, !tbaa !985
  %16 = and i32 %15, 240, !dbg !2271
  %17 = icmp eq i32 %16, 32, !dbg !2273
  br i1 %17, label %18, label %55, !dbg !2273

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2274
  %20 = bitcast i8* %19 to %struct.netbuf**, !dbg !2274
  %21 = load %struct.netbuf*, %struct.netbuf** %20, align 8, !dbg !2274, !tbaa !941
  %22 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 1, !dbg !2274
  %23 = load i8, i8* %22, align 4, !dbg !2274, !tbaa !2277
  %24 = icmp eq i8 %23, 6, !dbg !2274
  %25 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !2274
  %26 = load i32, i32* %25, align 8, !dbg !2274, !tbaa !941
  %27 = icmp eq i32 %26, 0, !dbg !2274
  br i1 %24, label %28, label %41, !dbg !2279

; <label>:28:                                     ; preds = %18
  br i1 %27, label %29, label %48, !dbg !2274

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !2274
  %31 = load i32, i32* %30, align 4, !dbg !2274, !tbaa !941
  %32 = icmp eq i32 %31, 0, !dbg !2274
  br i1 %32, label %33, label %48, !dbg !2274

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !2274
  %35 = load i32, i32* %34, align 8, !dbg !2274, !tbaa !941
  %36 = icmp eq i32 %35, 0, !dbg !2274
  br i1 %36, label %37, label %48, !dbg !2274

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !2274
  %39 = load i32, i32* %38, align 4, !dbg !2274, !tbaa !941
  %40 = icmp eq i32 %39, 0, !dbg !2274
  br i1 %40, label %44, label %48, !dbg !2274

; <label>:41:                                     ; preds = %18
  %42 = icmp eq i8 %23, 46, !dbg !2280
  %43 = or i1 %42, %27, !dbg !2279
  br i1 %43, label %44, label %48, !dbg !2279

; <label>:44:                                     ; preds = %41, %37
  %45 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 0, !dbg !2281
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !2281, !tbaa !2283
  %47 = tail call signext i8 @udp_send(%struct.udp_pcb* %12, %struct.pbuf* %46) #9, !dbg !2284
  br label %55, !dbg !2285

; <label>:48:                                     ; preds = %41, %28, %29, %33, %37
  %49 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, !dbg !2280
  %50 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 0, !dbg !2286
  %51 = load %struct.pbuf*, %struct.pbuf** %50, align 8, !dbg !2286, !tbaa !2283
  %52 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 3, !dbg !2288
  %53 = load i16, i16* %52, align 8, !dbg !2288, !tbaa !2289
  %54 = tail call signext i8 @udp_sendto(%struct.udp_pcb* %12, %struct.pbuf* %51, %struct.ip_addr* nonnull %49, i16 zeroext %53) #9, !dbg !2290
  br label %55

; <label>:55:                                     ; preds = %6, %13, %44, %48, %1
  %56 = phi i8 [ %47, %44 ], [ %54, %48 ], [ %4, %1 ], [ -11, %13 ], [ -11, %6 ], !dbg !2291
  %57 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2292
  store i8 %56, i8* %57, align 8, !dbg !2293, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2294
  ret void, !dbg !2294
}

; Function Attrs: noredzone
declare dso_local signext i8 @netconn_err(%struct.netconn*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @udp_send(%struct.udp_pcb*, %struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_recv(i8* nocapture) local_unnamed_addr #0 !dbg !2295 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2308
  store i8 0, i8* %2, align 8, !dbg !2309, !tbaa !962
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !2310
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2310, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !2311
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !2312
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2312, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !2313
  br i1 %8, label %34, label %9, !dbg !2314

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !2315
  %11 = load i32, i32* %10, align 8, !dbg !2315, !tbaa !985
  %12 = and i32 %11, 240, !dbg !2315
  %13 = icmp eq i32 %12, 16, !dbg !2316
  br i1 %13, label %14, label %34, !dbg !2317

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2318
  %16 = bitcast i8* %15 to i64*, !dbg !2319
  %17 = load i64, i64* %16, align 8, !dbg !2319, !tbaa !941
  %18 = icmp ult i64 %17, 65535, !dbg !2321
  %19 = select i1 %18, i64 %17, i64 65535, !dbg !2321
  %20 = trunc i64 %19 to i16, !dbg !2322
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %7, i16 zeroext %20) #9, !dbg !2324
  %21 = sub i64 %17, %19, !dbg !2325
  %22 = icmp eq i64 %21, 0, !dbg !2326
  br i1 %22, label %34, label %23, !dbg !2327, !llvm.loop !2328

; <label>:23:                                     ; preds = %14, %23
  %24 = phi i64 [ %32, %23 ], [ %21, %14 ]
  %25 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2331, !tbaa !967
  %26 = getelementptr inbounds %struct.netconn, %struct.netconn* %25, i64 0, i32 2
  %27 = bitcast %union.anon* %26 to %struct.tcp_pcb**
  %28 = load %struct.tcp_pcb*, %struct.tcp_pcb** %27, align 8, !dbg !2332, !tbaa !941
  %29 = icmp ult i64 %24, 65535, !dbg !2321
  %30 = select i1 %29, i64 %24, i64 65535, !dbg !2321
  %31 = trunc i64 %30 to i16, !dbg !2322
  tail call void @tcp_recved(%struct.tcp_pcb* %28, i16 zeroext %31) #9, !dbg !2324
  %32 = sub i64 %24, %30, !dbg !2325
  %33 = icmp eq i64 %32, 0, !dbg !2326
  br i1 %33, label %34, label %23, !dbg !2327, !llvm.loop !2328

; <label>:34:                                     ; preds = %23, %14, %1, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2333
  ret void, !dbg !2333
}

; Function Attrs: noredzone
declare dso_local void @tcp_recved(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_write(i8*) local_unnamed_addr #0 !dbg !2334 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2341
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2341, !tbaa !967
  %4 = tail call signext i8 @netconn_err(%struct.netconn* %3) #9, !dbg !2342
  %5 = icmp eq i8 %4, 0, !dbg !2344
  br i1 %5, label %6, label %51, !dbg !2346

; <label>:6:                                      ; preds = %1
  %7 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2347, !tbaa !967
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 0, !dbg !2347
  %9 = load i32, i32* %8, align 8, !dbg !2347, !tbaa !985
  %10 = and i32 %9, 240, !dbg !2347
  %11 = icmp eq i32 %10, 16, !dbg !2350
  br i1 %11, label %12, label %51, !dbg !2351

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 1, !dbg !2352
  %14 = load i32, i32* %13, align 4, !dbg !2352, !tbaa !1147
  %15 = icmp eq i32 %14, 0, !dbg !2355
  br i1 %15, label %16, label %51, !dbg !2356

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 2, !dbg !2357
  %18 = bitcast %union.anon* %17 to %struct.tcp_pcb**, !dbg !2359
  %19 = load %struct.tcp_pcb*, %struct.tcp_pcb** %18, align 8, !dbg !2359, !tbaa !941
  %20 = icmp eq %struct.tcp_pcb* %19, null, !dbg !2360
  br i1 %20, label %51, label %21, !dbg !2361

; <label>:21:                                     ; preds = %16
  store i32 1, i32* %13, align 4, !dbg !2362, !tbaa !1147
  %22 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 9, !dbg !2364
  %23 = load %struct.api_msg*, %struct.api_msg** %22, align 8, !dbg !2364, !tbaa !1156
  %24 = icmp eq %struct.api_msg* %23, null, !dbg !2364
  br i1 %24, label %26, label %25, !dbg !2367

; <label>:25:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2368
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2371
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2371
  unreachable, !dbg !2371

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !2375
  %28 = bitcast i8* %27 to i64*, !dbg !2375
  %29 = load i64, i64* %28, align 8, !dbg !2375, !tbaa !941
  %30 = icmp eq i64 %29, 0, !dbg !2375
  br i1 %30, label %31, label %32, !dbg !2378

; <label>:31:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !2379
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2382
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2382
  unreachable, !dbg !2382

; <label>:32:                                     ; preds = %26
  %33 = bitcast %struct.api_msg** %22 to i8**, !dbg !2386
  store i8* %0, i8** %33, align 8, !dbg !2386, !tbaa !1156
  %34 = tail call fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn* nonnull %7, i8 zeroext 0) #7, !dbg !2387
  %35 = icmp eq i8 %34, 0, !dbg !2389
  br i1 %35, label %54, label %36, !dbg !2390

; <label>:36:                                     ; preds = %32
  %37 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2391, !tbaa !967
  %38 = getelementptr inbounds %struct.netconn, %struct.netconn* %37, i64 0, i32 1, !dbg !2391
  %39 = load i32, i32* %38, align 4, !dbg !2391, !tbaa !1147
  %40 = icmp eq i32 %39, 1, !dbg !2391
  br i1 %40, label %42, label %41, !dbg !2395

; <label>:41:                                     ; preds = %36
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2396
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2399
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2399
  unreachable, !dbg !2399

; <label>:42:                                     ; preds = %36
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2403
  %43 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2404, !tbaa !967
  %44 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 4, !dbg !2404
  %45 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %44, i32 0) #9, !dbg !2405
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2406
  %46 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2407, !tbaa !967
  %47 = getelementptr inbounds %struct.netconn, %struct.netconn* %46, i64 0, i32 1, !dbg !2407
  %48 = load i32, i32* %47, align 4, !dbg !2407, !tbaa !1147
  %49 = icmp eq i32 %48, 1, !dbg !2407
  br i1 %49, label %50, label %54, !dbg !2410

; <label>:50:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2411
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2414
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2414
  unreachable, !dbg !2414

; <label>:51:                                     ; preds = %6, %16, %12, %1
  %52 = phi i8 [ %4, %1 ], [ -5, %12 ], [ -11, %16 ], [ -6, %6 ], !dbg !2418
  %53 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2419
  store i8 %52, i8* %53, align 8, !dbg !2420, !tbaa !962
  br label %54, !dbg !2421

; <label>:54:                                     ; preds = %32, %42, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  ret void, !dbg !2421
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn*, i8 zeroext) unnamed_addr #0 !dbg !2422 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !2448
  br i1 %3, label %4, label %5, !dbg !2451

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !2452
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2455
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2455
  unreachable, !dbg !2455

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 1, !dbg !2459
  %7 = load i32, i32* %6, align 4, !dbg !2459, !tbaa !1147
  %8 = icmp eq i32 %7, 1, !dbg !2459
  br i1 %8, label %10, label %9, !dbg !2462

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !2463
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2466
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2466
  unreachable, !dbg !2466

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 9, !dbg !2470
  %12 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2470, !tbaa !1156
  %13 = icmp eq %struct.api_msg* %12, null, !dbg !2470
  br i1 %13, label %14, label %15, !dbg !2473

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !2474
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2477
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2477
  unreachable, !dbg !2477

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, !dbg !2481
  %17 = bitcast %union.anon* %16 to %struct.tcp_pcb**, !dbg !2481
  %18 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2481, !tbaa !941
  %19 = icmp eq %struct.tcp_pcb* %18, null, !dbg !2481
  br i1 %19, label %20, label %21, !dbg !2484

; <label>:20:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !2485
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2488
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2488
  unreachable, !dbg !2488

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 4, !dbg !2492
  %23 = load i64, i64* %22, align 8, !dbg !2492, !tbaa !941
  %24 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 3, !dbg !2492
  %25 = load i64, i64* %24, align 8, !dbg !2492, !tbaa !941
  %26 = icmp ult i64 %23, %25, !dbg !2492
  br i1 %26, label %28, label %27, !dbg !2495

; <label>:27:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.42, i64 0, i64 0)) #7, !dbg !2496
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2499
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2499
  unreachable, !dbg !2499

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 1, !dbg !2503
  %30 = load i16, i16* %29, align 8, !dbg !2503, !tbaa !941
  %31 = icmp eq i16 %30, 0, !dbg !2503
  br i1 %31, label %32, label %33, !dbg !2506

; <label>:32:                                     ; preds = %28
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #7, !dbg !2507
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2510
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2510
  unreachable, !dbg !2510

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 5, !dbg !2514
  %35 = load i8, i8* %34, align 8, !dbg !2514, !tbaa !941
  %36 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !2516
  %37 = load i8, i8* %36, align 4, !dbg !2516, !tbaa !1159
  %38 = and i8 %37, 2, !dbg !2516
  %39 = and i8 %35, 4, !dbg !2517
  %40 = or i8 %38, %39, !dbg !2518
  %41 = icmp ne i8 %40, 0, !dbg !2518
  %42 = xor i1 %41, true
  br label %43, !dbg !2519

; <label>:43:                                     ; preds = %135, %33
  %44 = phi %struct.tcp_pcb* [ %18, %33 ], [ %137, %135 ], !dbg !2520
  %45 = phi %struct.api_msg* [ %12, %33 ], [ %136, %135 ], !dbg !2522
  %46 = phi i8 [ %35, %33 ], [ %99, %135 ], !dbg !2523
  %47 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %45, i64 0, i32 2, i32 0, i32 0, !dbg !2526
  %48 = load %struct.netvector*, %struct.netvector** %47, align 8, !dbg !2526, !tbaa !941
  %49 = getelementptr inbounds %struct.netvector, %struct.netvector* %48, i64 0, i32 0, !dbg !2527
  %50 = load i8*, i8** %49, align 8, !dbg !2527, !tbaa !2528
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %45, i64 0, i32 2, i32 0, i32 2, !dbg !2530
  %52 = load i64, i64* %51, align 8, !dbg !2530, !tbaa !941
  %53 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !2531
  %54 = getelementptr inbounds %struct.netvector, %struct.netvector* %48, i64 0, i32 1, !dbg !2533
  %55 = load i64, i64* %54, align 8, !dbg !2533, !tbaa !2534
  %56 = sub i64 %55, %52, !dbg !2535
  %57 = icmp ugt i64 %56, 65535, !dbg !2537
  %58 = or i8 %46, 2, !dbg !2540
  %59 = trunc i64 %56 to i16, !dbg !2542
  %60 = select i1 %57, i8 %58, i8 %46, !dbg !2544
  %61 = icmp ult i64 %56, 65535, !dbg !2544
  %62 = select i1 %61, i64 %56, i64 65535, !dbg !2544
  %63 = trunc i64 %62 to i16, !dbg !2544
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %44, i64 0, i32 40, !dbg !2520
  %65 = load i32, i32* %64, align 8, !dbg !2520, !tbaa !2545
  %66 = icmp ult i32 %65, 65535, !dbg !2520
  %67 = select i1 %66, i32 %65, i32 65535, !dbg !2520
  %68 = trunc i32 %67 to i16, !dbg !2520
  %69 = trunc i64 %62 to i32, !dbg !2547
  %70 = icmp uge i32 %67, %69, !dbg !2549
  %71 = or i1 %70, %42, !dbg !2550
  %72 = select i1 %70, i8 %60, i8 %58, !dbg !2550
  %73 = select i1 %70, i16 %63, i16 %68, !dbg !2550
  br i1 %71, label %81, label %74, !dbg !2550

; <label>:74:                                     ; preds = %43
  %75 = icmp eq i16 %68, 0, !dbg !2551
  br i1 %75, label %76, label %81, !dbg !2556

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %45, i64 0, i32 2, i32 0, i32 4, !dbg !2557
  %78 = load i64, i64* %77, align 8, !dbg !2557, !tbaa !941
  %79 = icmp eq i64 %78, 0, !dbg !2559
  %80 = select i1 %79, i8 -7, i8 0, !dbg !2560
  br label %144, !dbg !2562

; <label>:81:                                     ; preds = %43, %74
  %82 = phi i8 [ %60, %74 ], [ %72, %43 ], !dbg !2566
  %83 = phi i16 [ %68, %74 ], [ %73, %43 ], !dbg !2566
  %84 = zext i16 %83 to i64, !dbg !2567
  %85 = add i64 %52, %84, !dbg !2567
  %86 = icmp ugt i64 %85, %55, !dbg !2567
  br i1 %86, label %87, label %88, !dbg !2570

; <label>:87:                                     ; preds = %81
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !2571
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2574
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2574
  unreachable, !dbg !2574

; <label>:88:                                     ; preds = %81
  %89 = icmp eq i16 %83, -1, !dbg !2578
  %90 = and i1 %57, %89, !dbg !2579
  br i1 %90, label %97, label %91, !dbg !2579

; <label>:91:                                     ; preds = %88
  %92 = icmp eq i16 %83, %59, !dbg !2580
  br i1 %92, label %93, label %98, !dbg !2581

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %45, i64 0, i32 2, i32 0, i32 1, !dbg !2582
  %95 = load i16, i16* %94, align 8, !dbg !2582, !tbaa !941
  %96 = icmp ugt i16 %95, 1, !dbg !2583
  br i1 %96, label %97, label %98, !dbg !2584

; <label>:97:                                     ; preds = %88, %93
  br label %98, !dbg !2586

; <label>:98:                                     ; preds = %91, %93, %97
  %99 = phi i8 [ %58, %97 ], [ %82, %93 ], [ %82, %91 ], !dbg !2566
  %100 = phi i32 [ 1, %97 ], [ 0, %93 ], [ 0, %91 ]
  %101 = tail call signext i8 @tcp_write(%struct.tcp_pcb* %44, i8* %53, i16 zeroext %83, i8 zeroext %99) #9, !dbg !2587
  switch i8 %101, label %177 [
    i8 0, label %102
    i8 -1, label %138
  ], !dbg !2588

; <label>:102:                                    ; preds = %98
  %103 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2589, !tbaa !1156
  %104 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %103, i64 0, i32 2, i32 0, i32 4, !dbg !2592
  %105 = load i64, i64* %104, align 8, !dbg !2593, !tbaa !941
  %106 = add i64 %105, %84, !dbg !2593
  store i64 %106, i64* %104, align 8, !dbg !2593, !tbaa !941
  %107 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2594, !tbaa !1156
  %108 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %107, i64 0, i32 2, i32 0, i32 2, !dbg !2595
  %109 = load i64, i64* %108, align 8, !dbg !2596, !tbaa !941
  %110 = add i64 %109, %84, !dbg !2596
  store i64 %110, i64* %108, align 8, !dbg !2596, !tbaa !941
  %111 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2597, !tbaa !1156
  %112 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %111, i64 0, i32 2, i32 0, i32 2, !dbg !2599
  %113 = load i64, i64* %112, align 8, !dbg !2599, !tbaa !941
  %114 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %111, i64 0, i32 2, i32 0, i32 0, !dbg !2600
  %115 = load %struct.netvector*, %struct.netvector** %114, align 8, !dbg !2600, !tbaa !941
  %116 = getelementptr inbounds %struct.netvector, %struct.netvector* %115, i64 0, i32 1, !dbg !2601
  %117 = load i64, i64* %116, align 8, !dbg !2601, !tbaa !2534
  %118 = icmp eq i64 %113, %117, !dbg !2602
  br i1 %118, label %119, label %133, !dbg !2603

; <label>:119:                                    ; preds = %102
  %120 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %111, i64 0, i32 2, i32 0, i32 1, !dbg !2604
  %121 = load i16, i16* %120, align 8, !dbg !2606, !tbaa !941
  %122 = add i16 %121, -1, !dbg !2606
  store i16 %122, i16* %120, align 8, !dbg !2606, !tbaa !941
  %123 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2607, !tbaa !1156
  %124 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %123, i64 0, i32 2, i32 0, i32 1, !dbg !2609
  %125 = load i16, i16* %124, align 8, !dbg !2609, !tbaa !941
  %126 = icmp eq i16 %125, 0, !dbg !2610
  br i1 %126, label %133, label %127, !dbg !2611

; <label>:127:                                    ; preds = %119
  %128 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %123, i64 0, i32 2, i32 0, i32 0, !dbg !2612
  %129 = load %struct.netvector*, %struct.netvector** %128, align 8, !dbg !2614, !tbaa !941
  %130 = getelementptr inbounds %struct.netvector, %struct.netvector* %129, i64 1, !dbg !2614
  store %struct.netvector* %130, %struct.netvector** %128, align 8, !dbg !2614, !tbaa !941
  %131 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2615, !tbaa !1156
  %132 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %131, i64 0, i32 2, i32 0, i32 2, !dbg !2616
  store i64 0, i64* %132, align 8, !dbg !2617, !tbaa !941
  br label %133, !dbg !2618

; <label>:133:                                    ; preds = %119, %127, %102
  %134 = icmp eq i32 %100, 0, !dbg !2619
  br i1 %134, label %138, label %135, !dbg !2620, !llvm.loop !2621

; <label>:135:                                    ; preds = %133
  %136 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2522, !tbaa !1156
  %137 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2520, !tbaa !941
  br label %43, !dbg !2620

; <label>:138:                                    ; preds = %133, %98
  %139 = phi i8 [ %101, %98 ], [ 0, %133 ], !dbg !2623
  br i1 %41, label %140, label %159, !dbg !2562

; <label>:140:                                    ; preds = %138
  %141 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2624, !tbaa !1156
  %142 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %141, i64 0, i32 2, i32 0, i32 4
  %143 = load i64, i64* %142, align 8, !dbg !2625, !tbaa !941
  br label %144, !dbg !2562

; <label>:144:                                    ; preds = %140, %76
  %145 = phi i64 [ %78, %76 ], [ %143, %140 ], !dbg !2625
  %146 = phi %struct.api_msg* [ %45, %76 ], [ %141, %140 ], !dbg !2624
  %147 = phi i8 [ %80, %76 ], [ %139, %140 ]
  %148 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %146, i64 0, i32 2, i32 0, i32 3, !dbg !2626
  %149 = load i64, i64* %148, align 8, !dbg !2626, !tbaa !941
  %150 = icmp ult i64 %145, %149, !dbg !2627
  br i1 %150, label %151, label %159, !dbg !2628

; <label>:151:                                    ; preds = %144
  %152 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !2629
  %153 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %152, align 8, !dbg !2629, !tbaa !1153
  %154 = icmp eq void (%struct.netconn*, i32, i16)* %153, null, !dbg !2629
  br i1 %154, label %156, label %155, !dbg !2632

; <label>:155:                                    ; preds = %151
  tail call void %153(%struct.netconn* nonnull %0, i32 3, i16 zeroext 0) #9, !dbg !2633
  br label %156, !dbg !2633

; <label>:156:                                    ; preds = %151, %155
  %157 = load i8, i8* %36, align 4, !dbg !2635, !tbaa !1159
  %158 = or i8 %157, 16, !dbg !2635
  store i8 %158, i8* %36, align 4, !dbg !2635, !tbaa !1159
  br label %177, !dbg !2636

; <label>:159:                                    ; preds = %144, %138
  %160 = phi i8 [ %147, %144 ], [ %139, %138 ]
  %161 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2637, !tbaa !941
  %162 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %161, i64 0, i32 40, !dbg !2637
  %163 = load i32, i32* %162, align 8, !dbg !2637, !tbaa !2545
  %164 = icmp ult i32 %163, 65535, !dbg !2637
  %165 = and i32 %163, 65535, !dbg !2637
  %166 = icmp ult i32 %165, 5841, !dbg !2637
  %167 = and i1 %164, %166, !dbg !2637
  br i1 %167, label %172, label %168, !dbg !2639

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %161, i64 0, i32 41, !dbg !2640
  %170 = load i16, i16* %169, align 4, !dbg !2640, !tbaa !2641
  %171 = icmp ugt i16 %170, 717, !dbg !2642
  br i1 %171, label %172, label %177, !dbg !2643

; <label>:172:                                    ; preds = %168, %159
  %173 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !2644
  %174 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %173, align 8, !dbg !2644, !tbaa !1153
  %175 = icmp eq void (%struct.netconn*, i32, i16)* %174, null, !dbg !2644
  br i1 %175, label %177, label %176, !dbg !2647

; <label>:176:                                    ; preds = %172
  tail call void %174(%struct.netconn* nonnull %0, i32 3, i16 zeroext 0) #9, !dbg !2648
  br label %177, !dbg !2648

; <label>:177:                                    ; preds = %98, %172, %156, %176, %168
  %178 = phi i8 [ %147, %156 ], [ %160, %176 ], [ %160, %172 ], [ %160, %168 ], [ %101, %98 ], !dbg !2650
  switch i8 %178, label %205 [
    i8 0, label %179
    i8 -1, label %190
  ], !dbg !2651

; <label>:179:                                    ; preds = %177
  %180 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2652, !tbaa !1156
  %181 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %180, i64 0, i32 2, i32 0, i32 4, !dbg !2654
  %182 = load i64, i64* %181, align 8, !dbg !2654, !tbaa !941
  %183 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %180, i64 0, i32 2, i32 0, i32 3, !dbg !2655
  %184 = load i64, i64* %183, align 8, !dbg !2655, !tbaa !941
  %185 = icmp eq i64 %182, %184, !dbg !2656
  %186 = or i1 %41, %185, !dbg !2657
  %187 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2658, !tbaa !941
  %188 = tail call signext i8 @tcp_output(%struct.tcp_pcb* %187) #9, !dbg !2659
  %189 = icmp eq i8 %188, -4, !dbg !2661
  br i1 %189, label %205, label %202

; <label>:190:                                    ; preds = %177
  %191 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2663, !tbaa !941
  %192 = tail call signext i8 @tcp_output(%struct.tcp_pcb* %191) #9, !dbg !2664
  %193 = icmp eq i8 %192, -4, !dbg !2666
  %194 = or i1 %193, %42, !dbg !2668
  %195 = select i1 %193, i8 -4, i8 -1, !dbg !2668
  br i1 %194, label %202, label %196, !dbg !2668

; <label>:196:                                    ; preds = %190
  %197 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2669, !tbaa !1156
  %198 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %197, i64 0, i32 2, i32 0, i32 4, !dbg !2672
  %199 = load i64, i64* %198, align 8, !dbg !2672, !tbaa !941
  %200 = icmp eq i64 %199, 0, !dbg !2673
  %201 = select i1 %200, i8 -7, i8 0, !dbg !2674
  br label %205, !dbg !2675

; <label>:202:                                    ; preds = %179, %190
  %203 = phi i1 [ %186, %179 ], [ %193, %190 ]
  %204 = phi i8 [ 0, %179 ], [ %195, %190 ], !dbg !2676
  br i1 %203, label %205, label %214, !dbg !2677

; <label>:205:                                    ; preds = %202, %179, %177, %196
  %206 = phi i8 [ %204, %202 ], [ %178, %177 ], [ %201, %196 ], [ -4, %179 ]
  %207 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2678, !tbaa !1156
  %208 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %207, i64 0, i32 0, !dbg !2678
  %209 = load %struct.netconn*, %struct.netconn** %208, align 8, !dbg !2678, !tbaa !967
  %210 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %207, i64 0, i32 1, !dbg !2679
  store i8 %206, i8* %210, align 8, !dbg !2680, !tbaa !962
  store %struct.api_msg* null, %struct.api_msg** %11, align 8, !dbg !2681, !tbaa !1156
  store i32 0, i32* %6, align 4, !dbg !2682, !tbaa !1147
  %211 = icmp eq i8 %1, 0, !dbg !2683
  br i1 %211, label %214, label %212, !dbg !2685

; <label>:212:                                    ; preds = %205
  %213 = getelementptr inbounds %struct.netconn, %struct.netconn* %209, i64 0, i32 4, !dbg !2678
  tail call void @sys_sem_signal(%struct.sys_sem_t* nonnull %213) #9, !dbg !2687
  br label %214, !dbg !2689

; <label>:214:                                    ; preds = %202, %212, %205
  %215 = phi i8 [ 0, %205 ], [ 0, %212 ], [ -1, %202 ], !dbg !2690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2692
  ret i8 %215, !dbg !2692
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_getaddr(i8* nocapture) local_unnamed_addr #0 !dbg !2693 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2699
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2699, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, i32 0, !dbg !2701
  %5 = load %struct.ip_pcb*, %struct.ip_pcb** %4, align 8, !dbg !2701, !tbaa !941
  %6 = icmp eq %struct.ip_pcb* %5, null, !dbg !2702
  br i1 %6, label %169, label %7, !dbg !2703

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2704
  %9 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !2707
  %10 = load i8, i8* %9, align 8, !dbg !2707, !tbaa !941
  %11 = icmp eq i8 %10, 0, !dbg !2708
  br i1 %11, label %63, label %12, !dbg !2709

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %5, i64 0, i32 0, i32 1, !dbg !2710
  %14 = load i8, i8* %13, align 4, !dbg !2710, !tbaa !2051
  %15 = bitcast i8* %8 to %struct.ip_addr**, !dbg !2710
  %16 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2710, !tbaa !941
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 1, !dbg !2710
  store i8 %14, i8* %17, align 4, !dbg !2710, !tbaa !2053
  %18 = load %struct.ip_pcb*, %struct.ip_pcb** %4, align 8, !dbg !2714, !tbaa !941
  %19 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %18, i64 0, i32 0, i32 1, !dbg !2714
  %20 = load i8, i8* %19, align 4, !dbg !2714, !tbaa !2051
  %21 = icmp eq i8 %20, 6, !dbg !2714
  %22 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2716
  %23 = load i32, i32* %22, align 4, !dbg !2716, !tbaa !941
  br i1 %21, label %24, label %53, !dbg !2719

; <label>:24:                                     ; preds = %12
  %25 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2716, !tbaa !941
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %25, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2716
  store i32 %23, i32* %26, align 4, !dbg !2716, !tbaa !941
  %27 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2716, !tbaa !967
  %28 = getelementptr inbounds %struct.netconn, %struct.netconn* %27, i64 0, i32 2, i32 0, !dbg !2716
  %29 = load %struct.ip_pcb*, %struct.ip_pcb** %28, align 8, !dbg !2716, !tbaa !941
  %30 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2716
  %31 = load i32, i32* %30, align 4, !dbg !2716, !tbaa !941
  %32 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2716, !tbaa !941
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %32, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2716
  store i32 %31, i32* %33, align 4, !dbg !2716, !tbaa !941
  %34 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2716, !tbaa !967
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %34, i64 0, i32 2, i32 0, !dbg !2716
  %36 = load %struct.ip_pcb*, %struct.ip_pcb** %35, align 8, !dbg !2716, !tbaa !941
  %37 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %36, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2716
  %38 = load i32, i32* %37, align 4, !dbg !2716, !tbaa !941
  %39 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2716, !tbaa !941
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %39, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2716
  store i32 %38, i32* %40, align 4, !dbg !2716, !tbaa !941
  %41 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2716, !tbaa !967
  %42 = getelementptr inbounds %struct.netconn, %struct.netconn* %41, i64 0, i32 2, i32 0, !dbg !2716
  %43 = load %struct.ip_pcb*, %struct.ip_pcb** %42, align 8, !dbg !2716, !tbaa !941
  %44 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %43, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2716
  %45 = load i32, i32* %44, align 4, !dbg !2716, !tbaa !941
  %46 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2716, !tbaa !941
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %46, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2716
  store i32 %45, i32* %47, align 4, !dbg !2716, !tbaa !941
  %48 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2716, !tbaa !967
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %48, i64 0, i32 2, i32 0, !dbg !2716
  %50 = load %struct.ip_pcb*, %struct.ip_pcb** %49, align 8, !dbg !2716, !tbaa !941
  %51 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %50, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2716
  %52 = load i8, i8* %51, align 4, !dbg !2716, !tbaa !941
  br label %114, !dbg !2720

; <label>:53:                                     ; preds = %12
  %54 = bitcast i8* %8 to %struct.ip4_addr**, !dbg !2721
  %55 = load %struct.ip4_addr*, %struct.ip4_addr** %54, align 8, !dbg !2721, !tbaa !941
  %56 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %55, i64 0, i32 0, !dbg !2721
  store i32 %23, i32* %56, align 4, !dbg !2721, !tbaa !941
  %57 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2723, !tbaa !941
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %57, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2723
  store i32 0, i32* %58, align 4, !dbg !2723, !tbaa !941
  %59 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2723, !tbaa !941
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %59, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2723
  store i32 0, i32* %60, align 4, !dbg !2723, !tbaa !941
  %61 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2723, !tbaa !941
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2723
  store i32 0, i32* %62, align 4, !dbg !2723, !tbaa !941
  br label %114

; <label>:63:                                     ; preds = %7
  %64 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %5, i64 0, i32 1, i32 1, !dbg !2725
  %65 = load i8, i8* %64, align 4, !dbg !2725, !tbaa !2729
  %66 = bitcast i8* %8 to %struct.ip_addr**, !dbg !2725
  %67 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2725, !tbaa !941
  %68 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 1, !dbg !2725
  store i8 %65, i8* %68, align 4, !dbg !2725, !tbaa !2053
  %69 = load %struct.ip_pcb*, %struct.ip_pcb** %4, align 8, !dbg !2730, !tbaa !941
  %70 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %69, i64 0, i32 1, i32 1, !dbg !2730
  %71 = load i8, i8* %70, align 4, !dbg !2730, !tbaa !2729
  %72 = icmp eq i8 %71, 6, !dbg !2730
  %73 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %69, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2732
  %74 = load i32, i32* %73, align 4, !dbg !2732, !tbaa !941
  br i1 %72, label %75, label %104, !dbg !2735

; <label>:75:                                     ; preds = %63
  %76 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2732, !tbaa !941
  %77 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %76, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2732
  store i32 %74, i32* %77, align 4, !dbg !2732, !tbaa !941
  %78 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2732, !tbaa !967
  %79 = getelementptr inbounds %struct.netconn, %struct.netconn* %78, i64 0, i32 2, i32 0, !dbg !2732
  %80 = load %struct.ip_pcb*, %struct.ip_pcb** %79, align 8, !dbg !2732, !tbaa !941
  %81 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %80, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2732
  %82 = load i32, i32* %81, align 4, !dbg !2732, !tbaa !941
  %83 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2732, !tbaa !941
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2732
  store i32 %82, i32* %84, align 4, !dbg !2732, !tbaa !941
  %85 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2732, !tbaa !967
  %86 = getelementptr inbounds %struct.netconn, %struct.netconn* %85, i64 0, i32 2, i32 0, !dbg !2732
  %87 = load %struct.ip_pcb*, %struct.ip_pcb** %86, align 8, !dbg !2732, !tbaa !941
  %88 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %87, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2732
  %89 = load i32, i32* %88, align 4, !dbg !2732, !tbaa !941
  %90 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2732, !tbaa !941
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %90, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2732
  store i32 %89, i32* %91, align 4, !dbg !2732, !tbaa !941
  %92 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2732, !tbaa !967
  %93 = getelementptr inbounds %struct.netconn, %struct.netconn* %92, i64 0, i32 2, i32 0, !dbg !2732
  %94 = load %struct.ip_pcb*, %struct.ip_pcb** %93, align 8, !dbg !2732, !tbaa !941
  %95 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %94, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2732
  %96 = load i32, i32* %95, align 4, !dbg !2732, !tbaa !941
  %97 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2732, !tbaa !941
  %98 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %97, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2732
  store i32 %96, i32* %98, align 4, !dbg !2732, !tbaa !941
  %99 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2732, !tbaa !967
  %100 = getelementptr inbounds %struct.netconn, %struct.netconn* %99, i64 0, i32 2, i32 0, !dbg !2732
  %101 = load %struct.ip_pcb*, %struct.ip_pcb** %100, align 8, !dbg !2732, !tbaa !941
  %102 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %101, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2732
  %103 = load i8, i8* %102, align 4, !dbg !2732, !tbaa !941
  br label %114, !dbg !2736

; <label>:104:                                    ; preds = %63
  %105 = bitcast i8* %8 to %struct.ip4_addr**, !dbg !2737
  %106 = load %struct.ip4_addr*, %struct.ip4_addr** %105, align 8, !dbg !2737, !tbaa !941
  %107 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %106, i64 0, i32 0, !dbg !2737
  store i32 %74, i32* %107, align 4, !dbg !2737, !tbaa !941
  %108 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2739, !tbaa !941
  %109 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %108, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2739
  store i32 0, i32* %109, align 4, !dbg !2739, !tbaa !941
  %110 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2739, !tbaa !941
  %111 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %110, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2739
  store i32 0, i32* %111, align 4, !dbg !2739, !tbaa !941
  %112 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2739, !tbaa !941
  %113 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %112, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2739
  store i32 0, i32* %113, align 4, !dbg !2739, !tbaa !941
  br label %114

; <label>:114:                                    ; preds = %75, %104, %24, %53
  %115 = phi %struct.ip_addr** [ %66, %75 ], [ %66, %104 ], [ %15, %24 ], [ %15, %53 ]
  %116 = phi i8 [ %103, %75 ], [ 0, %104 ], [ %52, %24 ], [ 0, %53 ]
  %117 = load %struct.ip_addr*, %struct.ip_addr** %115, align 8, !dbg !2741, !tbaa !941
  %118 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %117, i64 0, i32 0, i32 0, i32 1, !dbg !2741
  store i8 %116, i8* %118, align 4, !dbg !2741, !tbaa !941
  %119 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2742
  store i8 0, i8* %119, align 8, !dbg !2743, !tbaa !962
  %120 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2744, !tbaa !967
  %121 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i64 0, i32 0, !dbg !2744
  %122 = load i32, i32* %121, align 8, !dbg !2744, !tbaa !985
  %123 = trunc i32 %122 to i8, !dbg !2745
  %124 = and i8 %123, -16, !dbg !2745
  switch i8 %124, label %168 [
    i8 32, label %125
    i8 16, label %149
  ], !dbg !2745

; <label>:125:                                    ; preds = %114
  %126 = load i8, i8* %9, align 8, !dbg !2746, !tbaa !941
  %127 = icmp eq i8 %126, 0, !dbg !2749
  %128 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i64 0, i32 2, !dbg !2750
  %129 = bitcast %union.anon* %128 to %struct.udp_pcb**, !dbg !2750
  %130 = load %struct.udp_pcb*, %struct.udp_pcb** %129, align 8, !dbg !2750, !tbaa !941
  br i1 %127, label %137, label %131, !dbg !2753

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %130, i64 0, i32 8, !dbg !2754
  %133 = load i16, i16* %132, align 2, !dbg !2754, !tbaa !2756
  %134 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2757
  %135 = bitcast i8* %134 to i16**, !dbg !2757
  %136 = load i16*, i16** %135, align 8, !dbg !2757, !tbaa !941
  store i16 %133, i16* %136, align 2, !dbg !2758, !tbaa !2759
  br label %171, !dbg !2760

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %130, i64 0, i32 7, !dbg !2761
  %139 = load i8, i8* %138, align 8, !dbg !2761, !tbaa !1013
  %140 = and i8 %139, 4, !dbg !2762
  %141 = icmp eq i8 %140, 0, !dbg !2763
  br i1 %141, label %142, label %143, !dbg !2764

; <label>:142:                                    ; preds = %137
  store i8 -11, i8* %119, align 8, !dbg !2765, !tbaa !962
  br label %171, !dbg !2767

; <label>:143:                                    ; preds = %137
  %144 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %130, i64 0, i32 9, !dbg !2768
  %145 = load i16, i16* %144, align 4, !dbg !2768, !tbaa !2770
  %146 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2771
  %147 = bitcast i8* %146 to i16**, !dbg !2771
  %148 = load i16*, i16** %147, align 8, !dbg !2771, !tbaa !941
  store i16 %145, i16* %148, align 2, !dbg !2772, !tbaa !2759
  br label %171

; <label>:149:                                    ; preds = %114
  %150 = load i8, i8* %9, align 8, !dbg !2773, !tbaa !941
  %151 = icmp eq i8 %150, 0, !dbg !2775
  %152 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i64 0, i32 2
  %153 = bitcast %union.anon* %152 to %struct.tcp_pcb**
  %154 = load %struct.tcp_pcb*, %struct.tcp_pcb** %153, align 8, !dbg !2776, !tbaa !941
  br i1 %151, label %155, label %160, !dbg !2778

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %154, i64 0, i32 8, !dbg !2779
  %157 = load i32, i32* %156, align 8, !dbg !2779, !tbaa !1534
  %158 = icmp ult i32 %157, 2, !dbg !2780
  br i1 %158, label %159, label %160, !dbg !2780

; <label>:159:                                    ; preds = %155
  store i8 -11, i8* %119, align 8, !dbg !2781, !tbaa !962
  br label %171, !dbg !2783

; <label>:160:                                    ; preds = %149, %155
  %161 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %154, i64 0, i32 10, !dbg !2784
  %162 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %154, i64 0, i32 11, !dbg !2785
  %163 = select i1 %151, i16* %162, i16* %161, !dbg !2786
  %164 = load i16, i16* %163, align 2, !dbg !2776, !tbaa !2759
  %165 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2787
  %166 = bitcast i8* %165 to i16**, !dbg !2787
  %167 = load i16*, i16** %166, align 8, !dbg !2787, !tbaa !941
  store i16 %164, i16* %167, align 2, !dbg !2788, !tbaa !2759
  br label %171

; <label>:168:                                    ; preds = %114
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2789
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2794
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2794
  unreachable, !dbg !2794

; <label>:169:                                    ; preds = %1
  %170 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2798
  store i8 -11, i8* %170, align 8, !dbg !2800, !tbaa !962
  br label %171

; <label>:171:                                    ; preds = %142, %143, %131, %160, %159, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2801
  ret void, !dbg !2801
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_close(i8*) local_unnamed_addr #0 !dbg !2802 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2809
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2809, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 1, !dbg !2810
  %5 = load i32, i32* %4, align 4, !dbg !2810, !tbaa !1147
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !2812
  %7 = bitcast %union.anon* %6 to %struct.tcp_pcb**, !dbg !2814
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8, !dbg !2814, !tbaa !941
  %9 = icmp eq %struct.tcp_pcb* %8, null, !dbg !2815
  br i1 %9, label %57, label %10, !dbg !2816

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !2817
  %12 = load i32, i32* %11, align 8, !dbg !2817, !tbaa !985
  %13 = and i32 %12, 240, !dbg !2817
  %14 = icmp eq i32 %13, 16, !dbg !2818
  br i1 %14, label %15, label %57, !dbg !2819

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2820
  %17 = load i8, i8* %16, align 8, !dbg !2821, !tbaa !941
  %18 = icmp eq i8 %17, 3, !dbg !2822
  %19 = icmp ne i32 %5, 2, !dbg !2823
  %20 = or i1 %19, %18, !dbg !2824
  br i1 %20, label %21, label %57, !dbg !2824

; <label>:21:                                     ; preds = %15
  switch i32 %5, label %26 [
    i32 3, label %22
    i32 1, label %24
  ], !dbg !2825

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2827
  store i8 -11, i8* %23, align 8, !dbg !2830, !tbaa !962
  br label %59, !dbg !2831

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2832
  store i8 -5, i8* %25, align 8, !dbg !2835, !tbaa !962
  br label %59

; <label>:26:                                     ; preds = %21
  %27 = and i8 %17, 1, !dbg !2836
  %28 = icmp eq i8 %27, 0, !dbg !2836
  br i1 %28, label %31, label %29, !dbg !2839

; <label>:29:                                     ; preds = %26
  tail call fastcc void @netconn_drain(%struct.netconn* nonnull %3) #7, !dbg !2840
  %30 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2842, !tbaa !967
  br label %31, !dbg !2845

; <label>:31:                                     ; preds = %26, %29
  %32 = phi %struct.netconn* [ %3, %26 ], [ %30, %29 ], !dbg !2842
  %33 = getelementptr inbounds %struct.netconn, %struct.netconn* %32, i64 0, i32 9, !dbg !2842
  %34 = load %struct.api_msg*, %struct.api_msg** %33, align 8, !dbg !2842, !tbaa !1156
  %35 = icmp eq %struct.api_msg* %34, null, !dbg !2842
  br i1 %35, label %37, label %36, !dbg !2846

; <label>:36:                                     ; preds = %31
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2847
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2850
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2850
  unreachable, !dbg !2850

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.netconn, %struct.netconn* %32, i64 0, i32 1, !dbg !2854
  store i32 4, i32* %38, align 4, !dbg !2855, !tbaa !1147
  %39 = bitcast %struct.api_msg** %33 to i8**, !dbg !2856
  store i8* %0, i8** %39, align 8, !dbg !2856, !tbaa !1156
  %40 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* %32, i8 zeroext 0) #7, !dbg !2857
  %41 = icmp eq i8 %40, 0, !dbg !2859
  br i1 %41, label %59, label %42, !dbg !2860

; <label>:42:                                     ; preds = %37
  %43 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2861, !tbaa !967
  %44 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 1, !dbg !2861
  %45 = load i32, i32* %44, align 4, !dbg !2861, !tbaa !1147
  %46 = icmp eq i32 %45, 4, !dbg !2861
  br i1 %46, label %48, label %47, !dbg !2865

; <label>:47:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2866
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2869
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2869
  unreachable, !dbg !2869

; <label>:48:                                     ; preds = %42
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2873
  %49 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2874, !tbaa !967
  %50 = getelementptr inbounds %struct.netconn, %struct.netconn* %49, i64 0, i32 4, !dbg !2874
  %51 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %50, i32 0) #9, !dbg !2875
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2876
  %52 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2877, !tbaa !967
  %53 = getelementptr inbounds %struct.netconn, %struct.netconn* %52, i64 0, i32 1, !dbg !2877
  %54 = load i32, i32* %53, align 4, !dbg !2877, !tbaa !1147
  %55 = icmp eq i32 %54, 0, !dbg !2877
  br i1 %55, label %59, label %56, !dbg !2880

; <label>:56:                                     ; preds = %48
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2881
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2884
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2884
  unreachable, !dbg !2884

; <label>:57:                                     ; preds = %1, %15, %10
  %58 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2888
  store i8 -11, i8* %58, align 8, !dbg !2890, !tbaa !962
  br label %59

; <label>:59:                                     ; preds = %57, %24, %22, %48, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2891
  ret void, !dbg !2891
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_join_leave_group(i8* nocapture) local_unnamed_addr #0 !dbg !2892 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2898
  store i8 -11, i8* %2, align 8, !dbg !2899, !tbaa !962
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !2900
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2900, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !2902
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !2903
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2903, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !2904
  br i1 %8, label %35, label %9, !dbg !2905

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !2906
  %11 = load i32, i32* %10, align 8, !dbg !2906, !tbaa !985
  %12 = and i32 %11, 240, !dbg !2906
  %13 = icmp eq i32 %12, 32, !dbg !2909
  br i1 %13, label %14, label %34, !dbg !2910

; <label>:14:                                     ; preds = %9
  %15 = and i32 %11, 8, !dbg !2911
  %16 = icmp eq i32 %15, 0, !dbg !2911
  br i1 %16, label %35, label %17, !dbg !2914

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2915
  %19 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !2918
  %20 = bitcast i8* %19 to i32*, !dbg !2918
  %21 = load i32, i32* %20, align 4, !dbg !2918, !tbaa !941
  %22 = icmp eq i32 %21, 0, !dbg !2919
  %23 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2920
  %24 = bitcast i8* %23 to %struct.ip_addr**, !dbg !2920
  %25 = load %struct.ip_addr*, %struct.ip_addr** %24, align 8, !dbg !2920, !tbaa !941
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %25, i64 0, i32 0, i32 0, !dbg !2920
  %27 = bitcast i8* %18 to %struct.ip_addr**, !dbg !2920
  %28 = load %struct.ip_addr*, %struct.ip_addr** %27, align 8, !dbg !2920, !tbaa !941
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, !dbg !2920
  br i1 %22, label %30, label %32, !dbg !2922

; <label>:30:                                     ; preds = %17
  %31 = tail call signext i8 @mld6_joingroup(%struct.ip6_addr* %26, %struct.ip6_addr* %29) #9, !dbg !2923
  store i8 %31, i8* %2, align 8, !dbg !2925, !tbaa !962
  br label %35, !dbg !2926

; <label>:32:                                     ; preds = %17
  %33 = tail call signext i8 @mld6_leavegroup(%struct.ip6_addr* %26, %struct.ip6_addr* %29) #9, !dbg !2927
  store i8 %33, i8* %2, align 8, !dbg !2928, !tbaa !962
  br label %35

; <label>:34:                                     ; preds = %9
  store i8 -6, i8* %2, align 8, !dbg !2929, !tbaa !962
  br label %35

; <label>:35:                                     ; preds = %14, %1, %34, %30, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2931
  ret void, !dbg !2931
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_join_leave_group_netif(i8* nocapture) local_unnamed_addr #0 !dbg !2932 {
  %2 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2938
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !2939
  %4 = load i8, i8* %3, align 8, !dbg !2939, !tbaa !941
  %5 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %4) #9, !dbg !2940
  %6 = icmp eq %struct.netif* %5, null, !dbg !2942
  %7 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2944
  br i1 %6, label %8, label %9, !dbg !2945

; <label>:8:                                      ; preds = %1
  store i8 -12, i8* %7, align 8, !dbg !2946, !tbaa !962
  br label %37, !dbg !2948

; <label>:9:                                      ; preds = %1
  store i8 -11, i8* %7, align 8, !dbg !2950, !tbaa !962
  %10 = bitcast i8* %0 to %struct.netconn**, !dbg !2951
  %11 = load %struct.netconn*, %struct.netconn** %10, align 8, !dbg !2951, !tbaa !967
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %11, i64 0, i32 2, !dbg !2953
  %13 = bitcast %union.anon* %12 to %struct.tcp_pcb**, !dbg !2954
  %14 = load %struct.tcp_pcb*, %struct.tcp_pcb** %13, align 8, !dbg !2954, !tbaa !941
  %15 = icmp eq %struct.tcp_pcb* %14, null, !dbg !2955
  br i1 %15, label %37, label %16, !dbg !2956

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %11, i64 0, i32 0, !dbg !2957
  %18 = load i32, i32* %17, align 8, !dbg !2957, !tbaa !985
  %19 = and i32 %18, 240, !dbg !2957
  %20 = icmp eq i32 %19, 32, !dbg !2960
  br i1 %20, label %21, label %36, !dbg !2961

; <label>:21:                                     ; preds = %16
  %22 = and i32 %18, 8, !dbg !2962
  %23 = icmp eq i32 %22, 0, !dbg !2962
  br i1 %23, label %37, label %24, !dbg !2965

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !2966
  %26 = bitcast i8* %25 to i32*, !dbg !2966
  %27 = load i32, i32* %26, align 4, !dbg !2966, !tbaa !941
  %28 = icmp eq i32 %27, 0, !dbg !2969
  %29 = bitcast i8* %2 to %struct.ip_addr**, !dbg !2970
  %30 = load %struct.ip_addr*, %struct.ip_addr** %29, align 8, !dbg !2970, !tbaa !941
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %30, i64 0, i32 0, i32 0, !dbg !2970
  br i1 %28, label %32, label %34, !dbg !2972

; <label>:32:                                     ; preds = %24
  %33 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %5, %struct.ip6_addr* %31) #9, !dbg !2973
  store i8 %33, i8* %7, align 8, !dbg !2975, !tbaa !962
  br label %37, !dbg !2976

; <label>:34:                                     ; preds = %24
  %35 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %5, %struct.ip6_addr* %31) #9, !dbg !2977
  store i8 %35, i8* %7, align 8, !dbg !2978, !tbaa !962
  br label %37

; <label>:36:                                     ; preds = %16
  store i8 -6, i8* %7, align 8, !dbg !2979, !tbaa !962
  br label %37

; <label>:37:                                     ; preds = %21, %9, %34, %32, %36, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  ret void, !dbg !2981
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_gethostbyname(i8*) local_unnamed_addr #0 !dbg !2982 {
  %2 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2988
  %3 = load i8, i8* %2, align 8, !dbg !2988, !tbaa !2989
  %4 = bitcast i8* %0 to i8**, !dbg !2992
  %5 = load i8*, i8** %4, align 8, !dbg !2992, !tbaa !2993
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2994
  %7 = bitcast i8* %6 to %struct.ip_addr**, !dbg !2994
  %8 = load %struct.ip_addr*, %struct.ip_addr** %7, align 8, !dbg !2994, !tbaa !2995
  %9 = tail call signext i8 @dns_gethostbyname_addrtype(i8* %5, %struct.ip_addr* %8, void (i8*, %struct.ip_addr*, i8*)* nonnull @lwip_netconn_do_dns_found, i8* %0, i8 zeroext %3) #9, !dbg !2996
  %10 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !2997
  %11 = bitcast i8* %10 to i8**, !dbg !2997
  %12 = load i8*, i8** %11, align 8, !dbg !2997, !tbaa !2998
  store i8 %9, i8* %12, align 1, !dbg !2999, !tbaa !941
  %13 = load i8*, i8** %11, align 8, !dbg !3000, !tbaa !2998
  %14 = load i8, i8* %13, align 1, !dbg !3000, !tbaa !941
  %15 = icmp eq i8 %14, -5, !dbg !3002
  br i1 %15, label %16, label %25, !dbg !3003

; <label>:16:                                     ; preds = %1
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !3005
  %17 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !3007
  %18 = bitcast i8* %17 to %struct.sys_sem_t**, !dbg !3007
  %19 = load %struct.sys_sem_t*, %struct.sys_sem_t** %18, align 8, !dbg !3007, !tbaa !3008
  %20 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* %19, i32 0) #9, !dbg !3007
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !3009
  %21 = load i8*, i8** %11, align 8, !dbg !3010, !tbaa !2998
  %22 = load i8, i8* %21, align 1, !dbg !3010, !tbaa !941
  %23 = icmp eq i8 %22, -5, !dbg !3010
  br i1 %23, label %24, label %25, !dbg !3013

; <label>:24:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !3014
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3017
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3017
  unreachable, !dbg !3017

; <label>:25:                                     ; preds = %16, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3021
  ret void, !dbg !3021
}

; Function Attrs: noredzone
declare dso_local signext i8 @dns_gethostbyname_addrtype(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @lwip_netconn_do_dns_found(i8* nocapture readnone, %struct.ip_addr* readonly, i8* nocapture readonly) #0 !dbg !3022 {
  %4 = icmp eq %struct.ip_addr* %1, null, !dbg !3034
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3036
  %6 = bitcast i8* %5 to i8**, !dbg !3036
  %7 = load i8*, i8** %6, align 8, !dbg !3036, !tbaa !2998
  br i1 %4, label %8, label %9, !dbg !3038

; <label>:8:                                      ; preds = %3
  store i8 -6, i8* %7, align 1, !dbg !3039, !tbaa !941
  br label %14, !dbg !3041

; <label>:9:                                      ; preds = %3
  store i8 0, i8* %7, align 1, !dbg !3042, !tbaa !941
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !3043
  %11 = bitcast i8* %10 to i8**, !dbg !3043
  %12 = load i8*, i8** %11, align 8, !dbg !3043, !tbaa !2995
  %13 = bitcast %struct.ip_addr* %1 to i8*, !dbg !3044
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 24, i1 false), !dbg !3044, !tbaa.struct !3045
  br label %14

; <label>:14:                                     ; preds = %9, %8
  %15 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !3046
  %16 = bitcast i8* %15 to %struct.sys_sem_t**, !dbg !3046
  %17 = load %struct.sys_sem_t*, %struct.sys_sem_t** %16, align 8, !dbg !3046, !tbaa !3008
  tail call void @sys_sem_signal(%struct.sys_sem_t* %17) #9, !dbg !3047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  ret void, !dbg !3048
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local %struct.udp_pcb* @udp_new_ip_type(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_recv(%struct.udp_pcb*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @recv_udp(i8*, %struct.udp_pcb* readnone, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) #0 !dbg !3049 {
  %6 = icmp eq %struct.udp_pcb* %1, null, !dbg !3064
  br i1 %6, label %7, label %8, !dbg !3067

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !3068
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3071
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3071
  unreachable, !dbg !3071

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8* %0, null, !dbg !3075
  br i1 %9, label %10, label %11, !dbg !3078

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3079
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3082
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3082
  unreachable, !dbg !3082

; <label>:11:                                     ; preds = %8
  %12 = bitcast i8* %0 to %struct.netconn*, !dbg !3086
  %13 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3088
  %14 = bitcast i8* %13 to %struct.udp_pcb**, !dbg !3088
  %15 = load %struct.udp_pcb*, %struct.udp_pcb** %14, align 8, !dbg !3088, !tbaa !941
  %16 = icmp eq %struct.udp_pcb* %15, %1, !dbg !3088
  br i1 %16, label %18, label %17, !dbg !3091

; <label>:17:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3092
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3095
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3095
  unreachable, !dbg !3095

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !3099
  %20 = bitcast i8* %19 to %struct.sys_mbox_t*, !dbg !3099
  %21 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %20) #9, !dbg !3099
  %22 = icmp eq i32 %21, 0, !dbg !3099
  br i1 %22, label %23, label %25, !dbg !3101

; <label>:23:                                     ; preds = %18
  %24 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !3102
  br label %86, !dbg !3104

; <label>:25:                                     ; preds = %18
  %26 = tail call i8* @memp_malloc(i32 6) #9, !dbg !3105
  %27 = bitcast i8* %26 to %struct.netbuf*, !dbg !3106
  %28 = icmp eq i8* %26, null, !dbg !3108
  br i1 %28, label %29, label %31, !dbg !3110

; <label>:29:                                     ; preds = %25
  %30 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !3111
  br label %86, !dbg !3113

; <label>:31:                                     ; preds = %25
  %32 = bitcast i8* %26 to %struct.pbuf**, !dbg !3114
  store %struct.pbuf* %2, %struct.pbuf** %32, align 8, !dbg !3116, !tbaa !2283
  %33 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !3117
  %34 = bitcast i8* %33 to %struct.pbuf**, !dbg !3117
  store %struct.pbuf* %2, %struct.pbuf** %34, align 8, !dbg !3118, !tbaa !3119
  %35 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !3120
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !3124
  %37 = load i8, i8* %36, align 4, !dbg !3124, !tbaa !2053
  %38 = getelementptr inbounds i8, i8* %26, i64 36, !dbg !3124
  store i8 %37, i8* %38, align 4, !dbg !3124, !tbaa !2277
  %39 = icmp eq %struct.ip_addr* %3, null, !dbg !3127
  br i1 %39, label %61, label %40, !dbg !3127

; <label>:40:                                     ; preds = %31
  %41 = load i8, i8* %36, align 4, !dbg !3127, !tbaa !2053
  %42 = icmp eq i8 %41, 6, !dbg !3127
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3129
  %44 = load i32, i32* %43, align 4, !dbg !3129, !tbaa !941
  br i1 %42, label %45, label %61, !dbg !3132

; <label>:45:                                     ; preds = %40
  %46 = bitcast i8* %35 to i32*, !dbg !3129
  store i32 %44, i32* %46, align 8, !dbg !3129, !tbaa !941
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3129
  %48 = load i32, i32* %47, align 4, !dbg !3129, !tbaa !941
  %49 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !3129
  %50 = bitcast i8* %49 to i32*, !dbg !3129
  store i32 %48, i32* %50, align 4, !dbg !3129, !tbaa !941
  %51 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3129
  %52 = load i32, i32* %51, align 4, !dbg !3129, !tbaa !941
  %53 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !3129
  %54 = bitcast i8* %53 to i32*, !dbg !3129
  store i32 %52, i32* %54, align 8, !dbg !3129, !tbaa !941
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3129
  %56 = load i32, i32* %55, align 4, !dbg !3129, !tbaa !941
  %57 = getelementptr inbounds i8, i8* %26, i64 28, !dbg !3129
  %58 = bitcast i8* %57 to i32*, !dbg !3129
  store i32 %56, i32* %58, align 4, !dbg !3129, !tbaa !941
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !3129
  %60 = load i8, i8* %59, align 4, !dbg !3129, !tbaa !941
  br label %70, !dbg !3133

; <label>:61:                                     ; preds = %40, %31
  %62 = phi i32 [ 0, %31 ], [ %44, %40 ], !dbg !3134
  %63 = bitcast i8* %35 to i32*, !dbg !3134
  store i32 %62, i32* %63, align 8, !dbg !3134, !tbaa !941
  %64 = getelementptr inbounds i8, i8* %26, i64 28, !dbg !3136
  %65 = bitcast i8* %64 to i32*, !dbg !3136
  store i32 0, i32* %65, align 4, !dbg !3136, !tbaa !941
  %66 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !3136
  %67 = bitcast i8* %66 to i32*, !dbg !3136
  store i32 0, i32* %67, align 8, !dbg !3136, !tbaa !941
  %68 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !3136
  %69 = bitcast i8* %68 to i32*, !dbg !3136
  store i32 0, i32* %69, align 4, !dbg !3136, !tbaa !941
  br label %70

; <label>:70:                                     ; preds = %61, %45
  %71 = phi i8 [ 0, %61 ], [ %60, %45 ]
  %72 = getelementptr inbounds i8, i8* %26, i64 32, !dbg !3136
  store i8 %71, i8* %72, align 8, !dbg !3136, !tbaa !941
  %73 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !3138
  %74 = bitcast i8* %73 to i16*, !dbg !3138
  store i16 %4, i16* %74, align 8, !dbg !3139, !tbaa !2289
  %75 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3140
  %76 = load i16, i16* %75, align 8, !dbg !3140, !tbaa !3141
  %77 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %20, i8* nonnull %26) #9, !dbg !3144
  %78 = icmp eq i8 %77, 0, !dbg !3146
  br i1 %78, label %80, label %79, !dbg !3147

; <label>:79:                                     ; preds = %70
  tail call void @netbuf_delete(%struct.netbuf* nonnull %27) #9, !dbg !3148
  br label %86, !dbg !3150

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3151
  %82 = bitcast i8* %81 to void (%struct.netconn*, i32, i16)**, !dbg !3151
  %83 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %82, align 8, !dbg !3151, !tbaa !1153
  %84 = icmp eq void (%struct.netconn*, i32, i16)* %83, null, !dbg !3151
  br i1 %84, label %86, label %85, !dbg !3154

; <label>:85:                                     ; preds = %80
  tail call void %83(%struct.netconn* nonnull %12, i32 0, i16 zeroext %76) #9, !dbg !3155
  br label %86, !dbg !3155

; <label>:86:                                     ; preds = %85, %80, %79, %29, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3157
  ret void, !dbg !3157
}

; Function Attrs: noredzone
declare dso_local %struct.tcp_pcb* @tcp_new_ip_type(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @sys_mbox_trypost(%struct.sys_mbox_t*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @netbuf_delete(%struct.netbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t*, i8**) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_abort(%struct.tcp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_recv(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_sent(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i16)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_poll(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*)*, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_err(%struct.tcp_pcb*, void (i8*, i8)*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_shutdown(%struct.tcp_pcb*, i32, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_sem_signal(%struct.sys_sem_t*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @sent_tcp(i8*, %struct.tcp_pcb* nocapture readnone, i16 zeroext) #0 !dbg !3158 {
  %4 = bitcast i8* %0 to %struct.netconn*, !dbg !3167
  %5 = icmp eq i8* %0, null, !dbg !3169
  br i1 %5, label %6, label %7, !dbg !3172

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3173
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3176
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3176
  unreachable, !dbg !3176

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3180
  %9 = bitcast i8* %8 to i32*, !dbg !3180
  %10 = load i32, i32* %9, align 4, !dbg !3180, !tbaa !1147
  switch i32 %10, label %15 [
    i32 1, label %11
    i32 4, label %13
  ], !dbg !3184

; <label>:11:                                     ; preds = %7
  %12 = tail call fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn* nonnull %4, i8 zeroext 1) #7, !dbg !3185
  br label %15, !dbg !3187

; <label>:13:                                     ; preds = %7
  %14 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* nonnull %4, i8 zeroext 1) #7, !dbg !3188
  br label %15, !dbg !3191

; <label>:15:                                     ; preds = %7, %13, %11
  %16 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3192
  %17 = bitcast i8* %16 to %struct.tcp_pcb**, !dbg !3194
  %18 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !3194, !tbaa !941
  %19 = icmp eq %struct.tcp_pcb* %18, null, !dbg !3195
  br i1 %19, label %40, label %20, !dbg !3196

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %18, i64 0, i32 40, !dbg !3197
  %22 = load i32, i32* %21, align 8, !dbg !3197, !tbaa !2545
  %23 = icmp ugt i32 %22, 65534, !dbg !3197
  %24 = and i32 %22, 65535, !dbg !3197
  %25 = icmp ugt i32 %24, 5840, !dbg !3197
  %26 = or i1 %23, %25, !dbg !3197
  br i1 %26, label %27, label %40, !dbg !3198

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %18, i64 0, i32 41, !dbg !3199
  %29 = load i16, i16* %28, align 4, !dbg !3199, !tbaa !2641
  %30 = icmp ult i16 %29, 718, !dbg !3200
  br i1 %30, label %31, label %40, !dbg !3201

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !3202
  %33 = load i8, i8* %32, align 4, !dbg !3202, !tbaa !1159
  %34 = and i8 %33, -17, !dbg !3202
  store i8 %34, i8* %32, align 4, !dbg !3202, !tbaa !1159
  %35 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3205
  %36 = bitcast i8* %35 to void (%struct.netconn*, i32, i16)**, !dbg !3205
  %37 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %36, align 8, !dbg !3205, !tbaa !1153
  %38 = icmp eq void (%struct.netconn*, i32, i16)* %37, null, !dbg !3205
  br i1 %38, label %40, label %39, !dbg !3207

; <label>:39:                                     ; preds = %31
  tail call void %37(%struct.netconn* nonnull %4, i32 2, i16 zeroext %2) #9, !dbg !3208
  br label %40, !dbg !3208

; <label>:40:                                     ; preds = %31, %15, %20, %27, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3210
  ret i8 0, !dbg !3210
}

; Function Attrs: noredzone nounwind
define internal signext i8 @poll_tcp(i8*, %struct.tcp_pcb* nocapture readnone) #0 !dbg !3211 {
  %3 = bitcast i8* %0 to %struct.netconn*, !dbg !3218
  %4 = icmp eq i8* %0, null, !dbg !3220
  br i1 %4, label %5, label %6, !dbg !3223

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3224
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3227
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3227
  unreachable, !dbg !3227

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3231
  %8 = bitcast i8* %7 to i32*, !dbg !3231
  %9 = load i32, i32* %8, align 4, !dbg !3231, !tbaa !1147
  switch i32 %9, label %27 [
    i32 1, label %10
    i32 4, label %12
  ], !dbg !3233

; <label>:10:                                     ; preds = %6
  %11 = tail call fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn* nonnull %3, i8 zeroext 1) #7, !dbg !3234
  br label %27, !dbg !3236

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !3237
  %14 = bitcast i8* %13 to %struct.api_msg**, !dbg !3237
  %15 = load %struct.api_msg*, %struct.api_msg** %14, align 8, !dbg !3237, !tbaa !1156
  %16 = icmp eq %struct.api_msg* %15, null, !dbg !3241
  br i1 %16, label %25, label %17, !dbg !3242

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %15, i64 0, i32 2, !dbg !3243
  %19 = bitcast %union.anon.1* %18 to %struct.anon.7*, !dbg !3244
  %20 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %19, i64 0, i32 1, !dbg !3245
  %21 = load i8, i8* %20, align 1, !dbg !3245, !tbaa !941
  %22 = icmp eq i8 %21, 0, !dbg !3246
  br i1 %22, label %25, label %23, !dbg !3247

; <label>:23:                                     ; preds = %17
  %24 = add i8 %21, -1, !dbg !3248
  store i8 %24, i8* %20, align 1, !dbg !3248, !tbaa !941
  br label %25, !dbg !3250

; <label>:25:                                     ; preds = %17, %12, %23
  %26 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* nonnull %3, i8 zeroext 1) #7, !dbg !3251
  br label %27, !dbg !3252

; <label>:27:                                     ; preds = %6, %25, %10
  %28 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !3253
  %29 = load i8, i8* %28, align 4, !dbg !3253, !tbaa !1159
  %30 = and i8 %29, 16, !dbg !3255
  %31 = icmp eq i8 %30, 0, !dbg !3255
  br i1 %31, label %55, label %32, !dbg !3256

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3257
  %34 = bitcast i8* %33 to %struct.tcp_pcb**, !dbg !3260
  %35 = load %struct.tcp_pcb*, %struct.tcp_pcb** %34, align 8, !dbg !3260, !tbaa !941
  %36 = icmp eq %struct.tcp_pcb* %35, null, !dbg !3261
  br i1 %36, label %55, label %37, !dbg !3262

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 40, !dbg !3263
  %39 = load i32, i32* %38, align 8, !dbg !3263, !tbaa !2545
  %40 = icmp ugt i32 %39, 65534, !dbg !3263
  %41 = and i32 %39, 65535, !dbg !3263
  %42 = icmp ugt i32 %41, 5840, !dbg !3263
  %43 = or i1 %40, %42, !dbg !3263
  br i1 %43, label %44, label %55, !dbg !3264

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 41, !dbg !3265
  %46 = load i16, i16* %45, align 4, !dbg !3265, !tbaa !2641
  %47 = icmp ult i16 %46, 718, !dbg !3266
  br i1 %47, label %48, label %55, !dbg !3267

; <label>:48:                                     ; preds = %44
  %49 = and i8 %29, -17, !dbg !3268
  store i8 %49, i8* %28, align 4, !dbg !3268, !tbaa !1159
  %50 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3271
  %51 = bitcast i8* %50 to void (%struct.netconn*, i32, i16)**, !dbg !3271
  %52 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %51, align 8, !dbg !3271, !tbaa !1153
  %53 = icmp eq void (%struct.netconn*, i32, i16)* %52, null, !dbg !3271
  br i1 %53, label %55, label %54, !dbg !3273

; <label>:54:                                     ; preds = %48
  tail call void %52(%struct.netconn* nonnull %3, i32 2, i16 zeroext 0) #9, !dbg !3274
  br label %55, !dbg !3274

; <label>:55:                                     ; preds = %48, %32, %27, %37, %44, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3276
  ret i8 0, !dbg !3276
}

; Function Attrs: noredzone nounwind
define internal void @err_tcp(i8*, i8 signext) #0 !dbg !3277 {
  %3 = bitcast i8* %0 to %struct.netconn*, !dbg !3293
  %4 = icmp eq i8* %0, null, !dbg !3295
  br i1 %4, label %5, label %6, !dbg !3298

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3299
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3302
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3302
  unreachable, !dbg !3302

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !3306
  %8 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3309
  %9 = bitcast i8* %8 to %struct.tcp_pcb**, !dbg !3310
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %9, align 8, !dbg !3311, !tbaa !941
  %10 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3312
  store i8 %1, i8* %10, align 8, !dbg !3313, !tbaa !1112
  %11 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !3314
  %12 = load i8, i8* %11, align 4, !dbg !3315, !tbaa !1159
  %13 = or i8 %12, 1, !dbg !3315
  store i8 %13, i8* %11, align 4, !dbg !3315, !tbaa !1159
  %14 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3316
  %15 = bitcast i8* %14 to i32*, !dbg !3316
  %16 = load i32, i32* %15, align 4, !dbg !3316, !tbaa !1147
  store i32 0, i32* %15, align 4, !dbg !3318, !tbaa !1147
  tail call void @ukplat_lcpu_restore_irqf(i64 %7) #9, !dbg !3319
  %17 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3320
  %18 = bitcast i8* %17 to void (%struct.netconn*, i32, i16)**, !dbg !3320
  %19 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !3320, !tbaa !1153
  %20 = icmp eq void (%struct.netconn*, i32, i16)* %19, null, !dbg !3320
  br i1 %20, label %28, label %21, !dbg !3322

; <label>:21:                                     ; preds = %6
  tail call void %19(%struct.netconn* nonnull %3, i32 4, i16 zeroext 0) #9, !dbg !3323
  %22 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !3325, !tbaa !1153
  %23 = icmp eq void (%struct.netconn*, i32, i16)* %22, null, !dbg !3325
  br i1 %23, label %28, label %24, !dbg !3327

; <label>:24:                                     ; preds = %21
  tail call void %22(%struct.netconn* nonnull %3, i32 0, i16 zeroext 0) #9, !dbg !3328
  %25 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !3330, !tbaa !1153
  %26 = icmp eq void (%struct.netconn*, i32, i16)* %25, null, !dbg !3330
  br i1 %26, label %28, label %27, !dbg !3332

; <label>:27:                                     ; preds = %24
  tail call void %25(%struct.netconn* nonnull %3, i32 2, i16 zeroext 0) #9, !dbg !3333
  br label %28, !dbg !3333

; <label>:28:                                     ; preds = %6, %21, %24, %27
  %29 = sext i8 %1 to i32, !dbg !3337
  %30 = add nsw i32 %29, 15, !dbg !3338
  %31 = icmp ult i32 %30, 3, !dbg !3338
  br i1 %31, label %35, label %32, !dbg !3338

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i8 %1, 0, !dbg !3339
  br i1 %33, label %39, label %34, !dbg !3343

; <label>:34:                                     ; preds = %32
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !3344
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3347
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3347
  unreachable, !dbg !3347

; <label>:35:                                     ; preds = %28
  %36 = sext i32 %30 to i64, !dbg !3338
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.err_tcp, i64 0, i64 %36, !dbg !3338
  %38 = load i8*, i8** %37, align 8, !dbg !3338
  br label %39, !dbg !3338

; <label>:39:                                     ; preds = %35, %32
  %40 = phi i8* [ null, %32 ], [ %38, %35 ], !dbg !3351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  %41 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !3354
  %42 = bitcast i8* %41 to %struct.sys_mbox_t*, !dbg !3354
  %43 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %42) #9, !dbg !3354
  %44 = icmp eq i32 %43, 0, !dbg !3354
  br i1 %44, label %47, label %45, !dbg !3356

; <label>:45:                                     ; preds = %39
  %46 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %42, i8* %40) #9, !dbg !3357
  br label %47, !dbg !3359

; <label>:47:                                     ; preds = %39, %45
  %48 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !3360
  %49 = bitcast i8* %48 to %struct.sys_mbox_t*, !dbg !3360
  %50 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %49) #9, !dbg !3360
  %51 = icmp eq i32 %50, 0, !dbg !3360
  br i1 %51, label %54, label %52, !dbg !3362

; <label>:52:                                     ; preds = %47
  %53 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %49, i8* %40) #9, !dbg !3363
  br label %54, !dbg !3365

; <label>:54:                                     ; preds = %47, %52
  %55 = icmp eq i32 %16, 4, !dbg !3366
  switch i32 %16, label %77 [
    i32 4, label %56
    i32 3, label %56
    i32 1, label %56
  ], !dbg !3367

; <label>:56:                                     ; preds = %54, %54, %54
  %57 = load i8, i8* %11, align 4, !dbg !3368, !tbaa !1159
  %58 = and i8 %57, 4, !dbg !3368
  %59 = icmp eq i8 %58, 0, !dbg !3368
  %60 = and i8 %57, -5, !dbg !3369
  store i8 %60, i8* %11, align 4, !dbg !3369, !tbaa !1159
  br i1 %59, label %61, label %83, !dbg !3374

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !3375
  %63 = bitcast i8* %62 to %struct.api_msg**, !dbg !3375
  %64 = load %struct.api_msg*, %struct.api_msg** %63, align 8, !dbg !3375, !tbaa !1156
  %65 = icmp eq %struct.api_msg* %64, null, !dbg !3375
  br i1 %65, label %66, label %67, !dbg !3378

; <label>:66:                                     ; preds = %61
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !3379
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3382
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3382
  unreachable, !dbg !3382

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %64, i64 0, i32 1, !dbg !3386
  %69 = select i1 %55, i8 0, i8 %1, !dbg !3389
  store i8 %69, i8* %68, align 8, !dbg !3391, !tbaa !962
  %70 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %64, i64 0, i32 0, !dbg !3392
  %71 = load %struct.netconn*, %struct.netconn** %70, align 8, !dbg !3392, !tbaa !967
  %72 = getelementptr inbounds %struct.netconn, %struct.netconn* %71, i64 0, i32 4, !dbg !3392
  %73 = tail call i32 @sys_sem_valid(%struct.sys_sem_t* nonnull %72) #9, !dbg !3394
  %74 = icmp eq i32 %73, 0, !dbg !3394
  br i1 %74, label %75, label %76, !dbg !3397

; <label>:75:                                     ; preds = %67
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !3398
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3401
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3401
  unreachable, !dbg !3401

; <label>:76:                                     ; preds = %67
  store %struct.api_msg* null, %struct.api_msg** %63, align 8, !dbg !3405, !tbaa !1156
  tail call void @sys_sem_signal(%struct.sys_sem_t* nonnull %72) #9, !dbg !3406
  br label %83, !dbg !3407

; <label>:77:                                     ; preds = %54
  %78 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !3408
  %79 = bitcast i8* %78 to %struct.api_msg**, !dbg !3408
  %80 = load %struct.api_msg*, %struct.api_msg** %79, align 8, !dbg !3408, !tbaa !1156
  %81 = icmp eq %struct.api_msg* %80, null, !dbg !3408
  br i1 %81, label %83, label %82, !dbg !3412

; <label>:82:                                     ; preds = %77
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !3413
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3416
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3416
  unreachable, !dbg !3416

; <label>:83:                                     ; preds = %76, %56, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3420
  ret void, !dbg !3420
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @recv_tcp(i8*, %struct.tcp_pcb*, %struct.pbuf*, i8 signext) #0 !dbg !3421 {
  %5 = icmp eq %struct.tcp_pcb* %1, null, !dbg !3434
  br i1 %5, label %6, label %7, !dbg !3437

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !3438
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3441
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3441
  unreachable, !dbg !3441

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i8* %0, null, !dbg !3445
  br i1 %8, label %9, label %10, !dbg !3448

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !3449
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3452
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3452
  unreachable, !dbg !3452

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 %3, 0, !dbg !3456
  br i1 %11, label %13, label %12, !dbg !3459

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !3460
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3463
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3463
  unreachable, !dbg !3463

; <label>:13:                                     ; preds = %10
  %14 = bitcast i8* %0 to %struct.netconn*, !dbg !3467
  %15 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3469
  %16 = bitcast i8* %15 to %struct.tcp_pcb**, !dbg !3469
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %16, align 8, !dbg !3469, !tbaa !941
  %18 = icmp eq %struct.tcp_pcb* %17, %1, !dbg !3469
  br i1 %18, label %20, label %19, !dbg !3472

; <label>:19:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !3473
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3476
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3476
  unreachable, !dbg !3476

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !3480
  %22 = bitcast i8* %21 to %struct.sys_mbox_t*, !dbg !3480
  %23 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %22) #9, !dbg !3480
  %24 = icmp eq i32 %23, 0, !dbg !3480
  %25 = icmp ne %struct.pbuf* %2, null, !dbg !3482
  br i1 %24, label %26, label %31, !dbg !3485

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %47, !dbg !3486

; <label>:27:                                     ; preds = %26
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3487
  %29 = load i16, i16* %28, align 8, !dbg !3487, !tbaa !3141
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %1, i16 zeroext %29) #9, !dbg !3489
  %30 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #9, !dbg !3490
  br label %47, !dbg !3491

; <label>:31:                                     ; preds = %20
  br i1 %25, label %32, label %36, !dbg !3492

; <label>:32:                                     ; preds = %31
  %33 = bitcast %struct.pbuf* %2 to i8*, !dbg !3493
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3497
  %35 = load i16, i16* %34, align 8, !dbg !3497, !tbaa !3141
  br label %36, !dbg !3499

; <label>:36:                                     ; preds = %31, %32
  %37 = phi i16 [ %35, %32 ], [ 0, %31 ], !dbg !3500
  %38 = phi i8* [ %33, %32 ], [ @netconn_closed, %31 ], !dbg !3500
  %39 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %22, i8* %38) #9, !dbg !3502
  %40 = icmp eq i8 %39, 0, !dbg !3504
  br i1 %40, label %41, label %47, !dbg !3505

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3506
  %43 = bitcast i8* %42 to void (%struct.netconn*, i32, i16)**, !dbg !3506
  %44 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %43, align 8, !dbg !3506, !tbaa !1153
  %45 = icmp eq void (%struct.netconn*, i32, i16)* %44, null, !dbg !3506
  br i1 %45, label %47, label %46, !dbg !3509

; <label>:46:                                     ; preds = %41
  tail call void %44(%struct.netconn* nonnull %14, i32 0, i16 zeroext %37) #9, !dbg !3510
  br label %47, !dbg !3510

; <label>:47:                                     ; preds = %46, %41, %36, %26, %27
  %48 = phi i8 [ 0, %27 ], [ 0, %26 ], [ -1, %36 ], [ 0, %41 ], [ 0, %46 ], !dbg !3512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3513
  ret i8 %48, !dbg !3513
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_write(%struct.tcp_pcb*, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!907, !908, !909}
!llvm.ident = !{!910}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "netconn_aborted", scope: !2, file: !3, line: 109, type: !877, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !118, globals: !878)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/api_msg.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !13, !34, !48, !55, !69, !75, !82, !86, !91, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 53, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!17 = !DIEnumerator(name: "ERR_OK", value: 0)
!18 = !DIEnumerator(name: "ERR_MEM", value: -1)
!19 = !DIEnumerator(name: "ERR_BUF", value: -2)
!20 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!21 = !DIEnumerator(name: "ERR_RTE", value: -4)
!22 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!23 = !DIEnumerator(name: "ERR_VAL", value: -6)
!24 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!25 = !DIEnumerator(name: "ERR_USE", value: -8)
!26 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!27 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!28 = !DIEnumerator(name: "ERR_CONN", value: -11)
!29 = !DIEnumerator(name: "ERR_IF", value: -12)
!30 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!31 = !DIEnumerator(name: "ERR_RST", value: -14)
!32 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!33 = !DIEnumerator(name: "ERR_ARG", value: -16)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_type", file: !35, line: 113, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/api.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!37 = !DIEnumerator(name: "NETCONN_INVALID", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "NETCONN_TCP", value: 16, isUnsigned: true)
!39 = !DIEnumerator(name: "NETCONN_TCP_IPV6", value: 24, isUnsigned: true)
!40 = !DIEnumerator(name: "NETCONN_UDP", value: 32, isUnsigned: true)
!41 = !DIEnumerator(name: "NETCONN_UDPLITE", value: 33, isUnsigned: true)
!42 = !DIEnumerator(name: "NETCONN_UDPNOCHKSUM", value: 34, isUnsigned: true)
!43 = !DIEnumerator(name: "NETCONN_UDP_IPV6", value: 40, isUnsigned: true)
!44 = !DIEnumerator(name: "NETCONN_UDPLITE_IPV6", value: 41, isUnsigned: true)
!45 = !DIEnumerator(name: "NETCONN_UDPNOCHKSUM_IPV6", value: 42, isUnsigned: true)
!46 = !DIEnumerator(name: "NETCONN_RAW", value: 64, isUnsigned: true)
!47 = !DIEnumerator(name: "NETCONN_RAW_IPV6", value: 72, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_state", file: !35, line: 147, baseType: !7, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "NETCONN_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "NETCONN_WRITE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "NETCONN_LISTEN", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "NETCONN_CONNECT", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "NETCONN_CLOSE", value: 4, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_state", file: !56, line: 56, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpbase.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!58 = !DIEnumerator(name: "CLOSED", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "LISTEN", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "SYN_SENT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "SYN_RCVD", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "ESTABLISHED", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "FIN_WAIT_1", value: 5, isUnsigned: true)
!64 = !DIEnumerator(name: "FIN_WAIT_2", value: 6, isUnsigned: true)
!65 = !DIEnumerator(name: "CLOSE_WAIT", value: 7, isUnsigned: true)
!66 = !DIEnumerator(name: "CLOSING", value: 8, isUnsigned: true)
!67 = !DIEnumerator(name: "LAST_ACK", value: 9, isUnsigned: true)
!68 = !DIEnumerator(name: "TIME_WAIT", value: 10, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !70, line: 92, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_evt", file: !35, line: 181, baseType: !7, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIEnumerator(name: "NETCONN_EVT_RCVPLUS", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "NETCONN_EVT_RCVMINUS", value: 1, isUnsigned: true)
!79 = !DIEnumerator(name: "NETCONN_EVT_SENDPLUS", value: 2, isUnsigned: true)
!80 = !DIEnumerator(name: "NETCONN_EVT_SENDMINUS", value: 3, isUnsigned: true)
!81 = !DIEnumerator(name: "NETCONN_EVT_ERROR", value: 4, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netconn_igmp", file: !35, line: 191, baseType: !7, size: 32, elements: !83)
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "NETCONN_JOIN", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "NETCONN_LEAVE", value: 1, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !87, line: 156, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !92, line: 54, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!96 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 52, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!100 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!104 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!105 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!106 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!107 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!108 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!109 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!110 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!111 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!112 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!113 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!114 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!115 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!116 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!117 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!118 = !{!119, !120, !125, !161, !152, !193, !865, !803, !242, !875, !876}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "api_msg", file: !122, line: 79, size: 512, elements: !123)
!122 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/api_msg.h", directory: "/root/.unikraft/apps/redis/build")
!123 = !{!124, !798, !799}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !121, file: !122, line: 82, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netconn", file: !35, line: 218, size: 1024, elements: !127)
!127 = !{!128, !129, !130, !337, !338, !779, !789, !790, !791, !792, !793}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !35, line: 220, baseType: !34, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !126, file: !35, line: 222, baseType: !48, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pcb", scope: !126, file: !35, line: 229, baseType: !131, size: 64, offset: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !35, line: 224, size: 64, elements: !132)
!132 = !{!133, !177, !308, !334}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !131, file: !35, line: 225, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_pcb", file: !136, line: 91, size: 416, elements: !137)
!136 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !{!138, !172, !173, !174, !175, !176}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !135, file: !136, line: 93, baseType: !139, size: 192)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !92, line: 76, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !92, line: 69, size: 192, elements: !141)
!141 = !{!142, !171}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !140, file: !92, line: 73, baseType: !143, size: 160)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !92, line: 70, size: 160, elements: !144)
!144 = !{!145, !165}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !143, file: !92, line: 71, baseType: !146, size: 160)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !147, line: 67, baseType: !148)
!147 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !147, line: 59, size: 160, elements: !149)
!149 = !{!150, !160}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !148, file: !147, line: 60, baseType: !151, size: 128)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !158)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !153, line: 129, baseType: !154)
!153 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !155, line: 48, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !157, line: 79, baseType: !7)
!157 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!158 = !{!159}
!159 = !DISubrange(count: 4)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !148, file: !147, line: 62, baseType: !161, size: 8, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !153, line: 125, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !155, line: 24, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !157, line: 43, baseType: !164)
!164 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !143, file: !92, line: 72, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !167, line: 57, baseType: !168)
!167 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !167, line: 51, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !168, file: !167, line: 52, baseType: !152, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !92, line: 75, baseType: !161, size: 8, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !135, file: !136, line: 93, baseType: !139, size: 192, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !135, file: !136, line: 93, baseType: !161, size: 8, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !135, file: !136, line: 93, baseType: !161, size: 8, offset: 392)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !135, file: !136, line: 93, baseType: !161, size: 8, offset: 400)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !135, file: !136, line: 93, baseType: !161, size: 8, offset: 408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !131, file: !35, line: 226, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !180, line: 242, size: 2240, elements: !181)
!180 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !197, !198, !200, !201, !202, !203, !204, !205, !207, !208, !209, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !239, !240, !241, !254, !279, !284, !289, !291, !296, !301, !302, !303, !304, !305, !306, !307}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !179, file: !180, line: 244, baseType: !139, size: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !179, file: !180, line: 244, baseType: !139, size: 192, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !179, file: !180, line: 244, baseType: !161, size: 8, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !179, file: !180, line: 244, baseType: !161, size: 8, offset: 392)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !179, file: !180, line: 244, baseType: !161, size: 8, offset: 400)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !179, file: !180, line: 244, baseType: !161, size: 8, offset: 408)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !180, line: 246, baseType: !178, size: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !179, file: !180, line: 246, baseType: !119, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !179, file: !180, line: 246, baseType: !55, size: 32, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !179, file: !180, line: 246, baseType: !161, size: 8, offset: 608)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !179, file: !180, line: 246, baseType: !193, size: 16, offset: 624)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !153, line: 127, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !155, line: 36, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !157, line: 57, baseType: !196)
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !179, file: !180, line: 249, baseType: !193, size: 16, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !180, line: 251, baseType: !199, size: 16, offset: 656)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !180, line: 206, baseType: !193)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !179, file: !180, line: 278, baseType: !161, size: 8, offset: 672)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !179, file: !180, line: 278, baseType: !161, size: 8, offset: 680)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !179, file: !180, line: 279, baseType: !161, size: 8, offset: 688)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !179, file: !180, line: 280, baseType: !152, size: 32, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !179, file: !180, line: 283, baseType: !152, size: 32, offset: 736)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !179, file: !180, line: 284, baseType: !206, size: 32, offset: 768)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !56, line: 51, baseType: !152)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !179, file: !180, line: 285, baseType: !206, size: 32, offset: 800)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !179, file: !180, line: 286, baseType: !152, size: 32, offset: 832)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !179, file: !180, line: 295, baseType: !210, size: 16, offset: 864)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !153, line: 128, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !155, line: 32, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !157, line: 55, baseType: !213)
!213 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !179, file: !180, line: 297, baseType: !193, size: 16, offset: 880)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !179, file: !180, line: 300, baseType: !152, size: 32, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !179, file: !180, line: 301, baseType: !152, size: 32, offset: 928)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !179, file: !180, line: 302, baseType: !210, size: 16, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !179, file: !180, line: 302, baseType: !210, size: 16, offset: 976)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !179, file: !180, line: 304, baseType: !210, size: 16, offset: 992)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !179, file: !180, line: 305, baseType: !161, size: 8, offset: 1008)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !179, file: !180, line: 308, baseType: !161, size: 8, offset: 1016)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !179, file: !180, line: 309, baseType: !152, size: 32, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !179, file: !180, line: 312, baseType: !206, size: 32, offset: 1056)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !179, file: !180, line: 313, baseType: !206, size: 32, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !179, file: !180, line: 316, baseType: !152, size: 32, offset: 1120)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !179, file: !180, line: 319, baseType: !152, size: 32, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !179, file: !180, line: 320, baseType: !152, size: 32, offset: 1184)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !179, file: !180, line: 320, baseType: !152, size: 32, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !179, file: !180, line: 322, baseType: !152, size: 32, offset: 1248)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !179, file: !180, line: 323, baseType: !206, size: 32, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !179, file: !180, line: 324, baseType: !206, size: 32, offset: 1312)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !179, file: !180, line: 326, baseType: !206, size: 32, offset: 1344)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !179, file: !180, line: 328, baseType: !193, size: 16, offset: 1376)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !179, file: !180, line: 332, baseType: !193, size: 16, offset: 1392)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !179, file: !180, line: 335, baseType: !206, size: 32, offset: 1408)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !179, file: !180, line: 338, baseType: !237, size: 64, offset: 1472)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !180, line: 338, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !179, file: !180, line: 339, baseType: !237, size: 64, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !179, file: !180, line: 341, baseType: !237, size: 64, offset: 1600)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !179, file: !180, line: 344, baseType: !242, size: 64, offset: 1664)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !244, line: 186, size: 192, elements: !245)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !244, line: 188, baseType: !242, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !243, file: !244, line: 191, baseType: !119, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !243, file: !244, line: 200, baseType: !193, size: 16, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !244, line: 203, baseType: !193, size: 16, offset: 144)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !243, file: !244, line: 208, baseType: !161, size: 8, offset: 160)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !244, line: 211, baseType: !161, size: 8, offset: 168)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !243, file: !244, line: 218, baseType: !161, size: 8, offset: 176)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !243, file: !244, line: 221, baseType: !161, size: 8, offset: 184)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !179, file: !180, line: 347, baseType: !255, size: 64, offset: 1728)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !180, line: 223, size: 704, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !256, file: !180, line: 225, baseType: !139, size: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !256, file: !180, line: 225, baseType: !139, size: 192, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !256, file: !180, line: 225, baseType: !161, size: 8, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !256, file: !180, line: 225, baseType: !161, size: 8, offset: 392)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !256, file: !180, line: 225, baseType: !161, size: 8, offset: 400)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !256, file: !180, line: 225, baseType: !161, size: 8, offset: 408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !180, line: 227, baseType: !255, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !256, file: !180, line: 227, baseType: !119, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !180, line: 227, baseType: !55, size: 32, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !256, file: !180, line: 227, baseType: !161, size: 8, offset: 608)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !256, file: !180, line: 227, baseType: !193, size: 16, offset: 624)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !256, file: !180, line: 231, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !180, line: 70, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !119, !178, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !14, line: 96, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !153, line: 126, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !155, line: 20, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !157, line: 41, baseType: !278)
!278 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !179, file: !180, line: 352, baseType: !280, size: 64, offset: 1792)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !180, line: 96, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!274, !119, !178, !193}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !179, file: !180, line: 354, baseType: !285, size: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !180, line: 82, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!274, !119, !178, !242, !274}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !179, file: !180, line: 356, baseType: !290, size: 64, offset: 1920)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !180, line: 134, baseType: !271)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !179, file: !180, line: 358, baseType: !292, size: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !180, line: 108, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!274, !119, !178}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !179, file: !180, line: 360, baseType: !297, size: 64, offset: 2048)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !180, line: 120, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !119, !274}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !179, file: !180, line: 369, baseType: !152, size: 32, offset: 2112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !179, file: !180, line: 376, baseType: !161, size: 8, offset: 2144)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !179, file: !180, line: 378, baseType: !161, size: 8, offset: 2152)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !179, file: !180, line: 380, baseType: !161, size: 8, offset: 2160)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !179, file: !180, line: 383, baseType: !161, size: 8, offset: 2168)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !179, file: !180, line: 386, baseType: !161, size: 8, offset: 2176)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !179, file: !180, line: 387, baseType: !161, size: 8, offset: 2184)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !131, file: !35, line: 227, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_pcb", file: !311, line: 81, size: 768, elements: !312)
!311 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/udp.h", directory: "/root/.unikraft/apps/redis/build")
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !333}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !310, file: !311, line: 83, baseType: !139, size: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !310, file: !311, line: 83, baseType: !139, size: 192, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !310, file: !311, line: 83, baseType: !161, size: 8, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !310, file: !311, line: 83, baseType: !161, size: 8, offset: 392)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !310, file: !311, line: 83, baseType: !161, size: 8, offset: 400)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !310, file: !311, line: 83, baseType: !161, size: 8, offset: 408)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !311, line: 87, baseType: !309, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !311, line: 89, baseType: !161, size: 8, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !310, file: !311, line: 91, baseType: !193, size: 16, offset: 528)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !310, file: !311, line: 91, baseType: !193, size: 16, offset: 544)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ip4", scope: !310, file: !311, line: 96, baseType: !166, size: 32, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifindex", scope: !310, file: !311, line: 99, baseType: !161, size: 8, offset: 608)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !310, file: !311, line: 101, baseType: !161, size: 8, offset: 616)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !310, file: !311, line: 110, baseType: !327, size: 64, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "udp_recv_fn", file: !311, line: 77, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !119, !309, !242, !331, !193}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "recv_arg", scope: !310, file: !311, line: 112, baseType: !119, size: 64, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !131, file: !35, line: 228, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "raw_pcb", file: !35, line: 210, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pending_err", scope: !126, file: !35, line: 231, baseType: !274, size: 8, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "op_completed", scope: !126, file: !35, line: 234, baseType: !339, size: 256, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sem_t", file: !340, line: 72, baseType: !341)
!340 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 69, size: 256, elements: !342)
!342 = !{!343, !778}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !341, file: !340, line: 70, baseType: !344, size: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_semaphore", file: !345, line: 51, size: 192, elements: !346)
!345 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uklock/include/uk/semaphore.h", directory: "/root/.unikraft/apps/redis/build")
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !344, file: !345, line: 52, baseType: !348, size: 64)
!348 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !344, file: !345, line: 53, baseType: !350, size: 128, offset: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !351, line: 42, size: 128, elements: !352)
!351 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!352 = !{!353, !776}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !350, file: !351, line: 42, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !351, line: 35, size: 192, elements: !356)
!356 = !{!357, !358, !772}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !355, file: !351, line: 36, baseType: !15, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !355, file: !351, line: 37, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !361, line: 59, size: 1024, elements: !362)
!361 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!362 = !{!363, !367, !368, !369, !370, !376, !377, !382, !384, !385, !531, !532, !533, !742}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !361, line: 60, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !360, file: !361, line: 61, baseType: !119, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !360, file: !361, line: 62, baseType: !119, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !360, file: !361, line: 63, baseType: !119, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !360, file: !361, line: 64, baseType: !371, size: 128, offset: 256)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !361, line: 64, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !371, file: !361, line: 64, baseType: !359, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !371, file: !361, line: 64, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !361, line: 65, baseType: !154, size: 32, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !360, file: !361, line: 66, baseType: !378, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !379, line: 49, baseType: !380)
!379 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !381, line: 128, baseType: !348)
!381 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!382 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !360, file: !361, line: 67, baseType: !383, size: 8, offset: 512)
!383 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !360, file: !361, line: 68, baseType: !350, size: 128, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !360, file: !361, line: 69, baseType: !386, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !388, line: 90, size: 2176, elements: !389)
!388 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!389 = !{!390, !395, !413, !418, !420, !422, !427, !435, !440, !446, !447, !448, !453, !528, !529, !530}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !387, file: !388, line: 91, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !388, line: 68, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !386}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !387, file: !388, line: 93, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !388, line: 71, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!15, !386, !359, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !403, line: 62, baseType: !404)
!403 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !403, line: 55, size: 128, elements: !405)
!405 = !{!406, !407, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !404, file: !403, line: 57, baseType: !383, size: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !404, file: !403, line: 59, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !403, line: 53, baseType: !15)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !404, file: !403, line: 61, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !379, line: 48, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !381, line: 129, baseType: !412)
!412 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !387, file: !388, line: 94, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !388, line: 74, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !386, !359}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !387, file: !388, line: 95, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !388, line: 76, baseType: !415)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !387, file: !388, line: 96, baseType: !421, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !388, line: 78, baseType: !415)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !387, file: !388, line: 98, baseType: !423, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !388, line: 81, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!15, !386, !359, !408}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !387, file: !388, line: 99, baseType: !428, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !388, line: 83, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!15, !386, !432, !434}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !387, file: !388, line: 100, baseType: !436, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !388, line: 85, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!15, !386, !359, !15}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !387, file: !388, line: 101, baseType: !441, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !388, line: 87, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!15, !386, !432, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !387, file: !388, line: 104, baseType: !383, size: 8, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !387, file: !388, line: 105, baseType: !360, size: 1024, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !387, file: !388, line: 106, baseType: !449, size: 128, offset: 1664)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !361, line: 93, size: 128, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !449, file: !361, line: 93, baseType: !359, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !449, file: !361, line: 93, baseType: !375, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !387, file: !388, line: 107, baseType: !454, size: 192, offset: 1792)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !455, line: 59, size: 192, elements: !456)
!455 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!456 = !{!457, !519, !523}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !454, file: !455, line: 61, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !455, line: 51, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!119, !462, !412, !412}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !464, line: 77, size: 832, elements: !465)
!464 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !{!466, !473, !478, !483, !489, !491, !496, !497, !498, !503, !508, !513, !514, !515}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !463, file: !464, line: 79, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !464, line: 54, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!119, !462, !471}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !472, line: 58, baseType: !412)
!472 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !463, file: !464, line: 80, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !464, line: 56, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!119, !462, !471, !471}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !463, file: !464, line: 81, baseType: !479, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !464, line: 62, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!119, !462, !119, !471}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !463, file: !464, line: 82, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !464, line: 58, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!15, !462, !488, !471, !471}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !463, file: !464, line: 83, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !464, line: 60, baseType: !475)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !463, file: !464, line: 84, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !464, line: 64, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !462, !119}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !463, file: !464, line: 87, baseType: !492, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !463, file: !464, line: 88, baseType: !467, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !463, file: !464, line: 92, baseType: !499, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !464, line: 66, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!119, !462, !412}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !463, file: !464, line: 93, baseType: !504, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !464, line: 68, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !462, !119, !412}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !463, file: !464, line: 99, baseType: !509, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !464, line: 70, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!15, !462, !119, !471}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !463, file: !464, line: 100, baseType: !471, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !464, line: 103, baseType: !462, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !463, file: !464, line: 104, baseType: !516, offset: 832)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: -1)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !454, file: !455, line: 63, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !119}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !454, file: !455, line: 65, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !455, line: 56, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !119, !119}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !387, file: !388, line: 108, baseType: !462, size: 64, offset: 1984)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !388, line: 109, baseType: !386, size: 64, offset: 2048)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !387, file: !388, line: 110, baseType: !119, size: 64, offset: 2112)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !360, file: !361, line: 70, baseType: !119, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !360, file: !361, line: 72, baseType: !15, size: 32, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !360, file: !361, line: 82, baseType: !534, size: 64, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !536, line: 569, size: 14912, elements: !537)
!536 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!537 = !{!538, !539, !610, !611, !612, !613, !617, !618, !622, !623, !627, !639, !640, !641, !643, !644, !645, !706, !727, !728, !733, !740}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !535, file: !536, line: 571, baseType: !15, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !535, file: !536, line: 576, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !536, line: 287, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !536, line: 181, size: 1408, elements: !543)
!543 = !{!544, !546, !547, !548, !549, !550, !555, !556, !557, !564, !568, !573, !577, !578, !579, !580, !584, !588, !589, !590, !592, !593, !597, !609}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !542, file: !536, line: 182, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !542, file: !536, line: 183, baseType: !15, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !542, file: !536, line: 184, baseType: !15, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !542, file: !536, line: 185, baseType: !213, size: 16, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !542, file: !536, line: 186, baseType: !213, size: 16, offset: 144)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !542, file: !536, line: 187, baseType: !551, size: 128, offset: 192)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !536, line: 117, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !551, file: !536, line: 118, baseType: !545, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !551, file: !536, line: 119, baseType: !15, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !542, file: !536, line: 188, baseType: !15, size: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !542, file: !536, line: 195, baseType: !119, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !542, file: !536, line: 197, baseType: !558, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !534, !119, !563, !15}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !562, line: 145, baseType: !348)
!562 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !542, file: !536, line: 199, baseType: !565, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!561, !534, !119, !364, !15}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !542, file: !536, line: 202, baseType: !569, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!572, !534, !119, !572, !15}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !562, line: 114, baseType: !348)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !542, file: !536, line: 203, baseType: !574, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!15, !534, !119}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !542, file: !536, line: 206, baseType: !551, size: 128, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !542, file: !536, line: 207, baseType: !545, size: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !542, file: !536, line: 208, baseType: !15, size: 32, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !542, file: !536, line: 211, baseType: !581, size: 24, offset: 928)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 24, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 3)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !542, file: !536, line: 212, baseType: !585, size: 8, offset: 952)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 8, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 1)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !542, file: !536, line: 215, baseType: !551, size: 128, offset: 960)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !542, file: !536, line: 218, baseType: !15, size: 32, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !542, file: !536, line: 219, baseType: !591, size: 64, offset: 1152)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !562, line: 44, baseType: !348)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !542, file: !536, line: 222, baseType: !534, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !542, file: !536, line: 226, baseType: !594, size: 32, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !562, line: 175, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !596, line: 12, baseType: !15)
!596 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !542, file: !536, line: 228, baseType: !598, size: 64, offset: 1312)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !562, line: 171, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 163, size: 64, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !599, file: !562, line: 165, baseType: !15, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !599, file: !562, line: 170, baseType: !603, size: 32, offset: 32)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !562, line: 166, size: 32, elements: !604)
!604 = !{!605, !607}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !603, file: !562, line: 168, baseType: !606, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !472, line: 124, baseType: !7)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !603, file: !562, line: 169, baseType: !608, size: 32)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32, elements: !158)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !542, file: !536, line: 229, baseType: !15, size: 32, offset: 1376)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !535, file: !536, line: 576, baseType: !540, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !535, file: !536, line: 576, baseType: !540, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !535, file: !536, line: 578, baseType: !15, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !535, file: !536, line: 579, baseType: !614, size: 200, offset: 288)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 200, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 25)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !535, file: !536, line: 582, baseType: !15, size: 32, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !535, file: !536, line: 583, baseType: !619, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !621, line: 9, flags: DIFlagFwdDecl)
!621 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !535, file: !536, line: 585, baseType: !15, size: 32, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !535, file: !536, line: 587, baseType: !624, size: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !534}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !535, file: !536, line: 590, baseType: !628, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !536, line: 47, size: 256, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !629, file: !536, line: 49, baseType: !628, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !629, file: !536, line: 50, baseType: !15, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !629, file: !536, line: 50, baseType: !15, size: 32, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !629, file: !536, line: 50, baseType: !15, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !629, file: !536, line: 50, baseType: !15, size: 32, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !629, file: !536, line: 51, baseType: !637, size: 32, offset: 192)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 32, elements: !586)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !536, line: 25, baseType: !7)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !535, file: !536, line: 591, baseType: !15, size: 32, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !535, file: !536, line: 592, baseType: !628, size: 64, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !535, file: !536, line: 593, baseType: !642, size: 64, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !535, file: !536, line: 596, baseType: !15, size: 32, offset: 1024)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !535, file: !536, line: 597, baseType: !563, size: 64, offset: 1088)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !535, file: !536, line: 632, baseType: !646, size: 2880, offset: 1152)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !536, line: 599, size: 2880, elements: !647)
!647 = !{!648, !697}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !646, file: !536, line: 622, baseType: !649, size: 1728)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !536, line: 601, size: 1728, elements: !650)
!650 = !{!651, !652, !653, !657, !669, !670, !672, !679, !680, !681, !682, !686, !690, !691, !692, !693, !694, !695, !696}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !649, file: !536, line: 603, baseType: !7, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !649, file: !536, line: 604, baseType: !563, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !649, file: !536, line: 605, baseType: !654, size: 208, offset: 128)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 208, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 26)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !649, file: !536, line: 606, baseType: !658, size: 288, offset: 352)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !536, line: 55, size: 288, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !658, file: !536, line: 57, baseType: !15, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !658, file: !536, line: 58, baseType: !15, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !658, file: !536, line: 59, baseType: !15, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !658, file: !536, line: 60, baseType: !15, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !658, file: !536, line: 61, baseType: !15, size: 32, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !658, file: !536, line: 62, baseType: !15, size: 32, offset: 160)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !658, file: !536, line: 63, baseType: !15, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !658, file: !536, line: 64, baseType: !15, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !658, file: !536, line: 65, baseType: !15, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !649, file: !536, line: 607, baseType: !15, size: 32, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !649, file: !536, line: 608, baseType: !671, size: 64, offset: 704)
!671 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !649, file: !536, line: 609, baseType: !673, size: 112, offset: 768)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !536, line: 319, size: 112, elements: !674)
!674 = !{!675, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !673, file: !536, line: 320, baseType: !676, size: 48)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 48, elements: !582)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !673, file: !536, line: 321, baseType: !676, size: 48, offset: 48)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !673, file: !536, line: 322, baseType: !196, size: 16, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !649, file: !536, line: 610, baseType: !598, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !649, file: !536, line: 611, baseType: !598, size: 64, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !649, file: !536, line: 612, baseType: !598, size: 64, offset: 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !649, file: !536, line: 613, baseType: !683, size: 64, offset: 1088)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 8)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !649, file: !536, line: 614, baseType: !687, size: 192, offset: 1152)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 192, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 24)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !649, file: !536, line: 615, baseType: !15, size: 32, offset: 1344)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !649, file: !536, line: 616, baseType: !598, size: 64, offset: 1376)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !649, file: !536, line: 617, baseType: !598, size: 64, offset: 1440)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !649, file: !536, line: 618, baseType: !598, size: 64, offset: 1504)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !649, file: !536, line: 619, baseType: !598, size: 64, offset: 1568)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !649, file: !536, line: 620, baseType: !598, size: 64, offset: 1632)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !649, file: !536, line: 621, baseType: !15, size: 32, offset: 1696)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !646, file: !536, line: 631, baseType: !698, size: 2880)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !536, line: 626, size: 2880, elements: !699)
!699 = !{!700, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !698, file: !536, line: 629, baseType: !701, size: 1920)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 1920, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 30)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !698, file: !536, line: 630, baseType: !705, size: 960, offset: 1920)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !702)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !535, file: !536, line: 636, baseType: !707, size: 64, offset: 4032)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !536, line: 93, size: 6336, elements: !709)
!709 = !{!710, !711, !712, !719}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !708, file: !536, line: 94, baseType: !707, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !708, file: !536, line: 95, baseType: !15, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !708, file: !536, line: 97, baseType: !713, size: 2048, offset: 128)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 2048, elements: !717)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null}
!717 = !{!718}
!718 = !DISubrange(count: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !708, file: !536, line: 98, baseType: !720, size: 4160, offset: 2176)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !536, line: 74, size: 4160, elements: !721)
!721 = !{!722, !724, !725, !726}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !720, file: !536, line: 75, baseType: !723, size: 2048)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 2048, elements: !717)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !720, file: !536, line: 76, baseType: !723, size: 2048, offset: 2048)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !720, file: !536, line: 78, baseType: !638, size: 32, offset: 4096)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !720, file: !536, line: 81, baseType: !638, size: 32, offset: 4128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !535, file: !536, line: 637, baseType: !708, size: 6336, offset: 4096)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !535, file: !536, line: 641, baseType: !729, size: 64, offset: 10432)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !15}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !535, file: !536, line: 646, baseType: !734, size: 192, offset: 10496)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !536, line: 291, size: 192, elements: !735)
!735 = !{!736, !738, !739}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !734, file: !536, line: 293, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !734, file: !536, line: 294, baseType: !15, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !734, file: !536, line: 295, baseType: !540, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !535, file: !536, line: 648, baseType: !741, size: 4224, offset: 10688)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 4224, elements: !582)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !360, file: !361, line: 85, baseType: !743, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !70, line: 114, size: 640, elements: !745)
!745 = !{!746, !750, !751, !758, !771}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !744, file: !70, line: 116, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !748, line: 64, baseType: !749)
!748 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !748, line: 63, baseType: !412)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !744, file: !70, line: 118, baseType: !747, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !744, file: !70, line: 120, baseType: !752, size: 128, offset: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !753, line: 51, size: 128, elements: !754)
!753 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!754 = !{!755, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !753, line: 52, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !752, file: !753, line: 53, baseType: !756, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !744, file: !70, line: 122, baseType: !759, size: 256, offset: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !70, line: 98, size: 256, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !759, file: !70, line: 107, baseType: !69, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !759, file: !70, line: 109, baseType: !747, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !759, file: !70, line: 111, baseType: !764, size: 96, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !748, line: 72, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 68, size: 96, elements: !766)
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !765, file: !748, line: 69, baseType: !15, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !765, file: !748, line: 70, baseType: !15, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !765, file: !748, line: 71, baseType: !770, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !748, line: 61, baseType: !15)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !744, file: !70, line: 124, baseType: !752, size: 128, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !355, file: !351, line: 38, baseType: !773, size: 64, offset: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !351, line: 38, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !773, file: !351, line: 38, baseType: !354, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !350, file: !351, line: 42, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !341, file: !340, line: 71, baseType: !15, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "recvmbox", scope: !126, file: !35, line: 238, baseType: !780, size: 192, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_mbox_t", file: !340, line: 78, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 74, size: 192, elements: !782)
!782 = !{!783, !784, !788}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !781, file: !340, line: 75, baseType: !462, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !781, file: !340, line: 76, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mbox", file: !787, line: 48, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukmpi/include/uk/mbox.h", directory: "/root/.unikraft/apps/redis/build")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !781, file: !340, line: 77, baseType: !15, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "acceptmbox", scope: !126, file: !35, line: 242, baseType: !780, size: 192, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !126, file: !35, line: 251, baseType: !15, size: 32, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !35, line: 277, baseType: !161, size: 8, offset: 864)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "current_msg", scope: !126, file: !35, line: 282, baseType: !120, size: 64, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !126, file: !35, line: 285, baseType: !794, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "netconn_callback", file: !35, line: 215, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !125, !75, !193}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !121, file: !122, line: 84, baseType: !274, size: 8, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !121, file: !122, line: 151, baseType: !800, size: 384, offset: 128)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !122, line: 86, size: 384, elements: !801)
!801 = !{!802, !811, !815, !821, !829, !849, !853, !858}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !800, file: !122, line: 88, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netbuf", file: !805, line: 60, size: 384, elements: !806)
!805 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!806 = !{!807, !808, !809, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !804, file: !805, line: 61, baseType: !242, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !804, file: !805, line: 61, baseType: !242, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !804, file: !805, line: 62, baseType: !139, size: 192, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !804, file: !805, line: 63, baseType: !193, size: 16, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !800, file: !122, line: 92, baseType: !812, size: 8)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 90, size: 8, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !812, file: !122, line: 91, baseType: !161, size: 8)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !800, file: !122, line: 98, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 94, size: 128, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr", scope: !816, file: !122, line: 95, baseType: !331, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !816, file: !122, line: 96, baseType: !193, size: 16, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !816, file: !122, line: 97, baseType: !161, size: 8, offset: 80)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ad", scope: !800, file: !122, line: 104, baseType: !822, size: 192)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 100, size: 192, elements: !823)
!823 = !{!824, !826, !828}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr", scope: !822, file: !122, line: 101, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !822, file: !122, line: 102, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !822, file: !122, line: 103, baseType: !161, size: 8, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !800, file: !122, line: 121, baseType: !830, size: 384)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 106, size: 384, elements: !831)
!831 = !{!832, !844, !845, !846, !847, !848}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !830, file: !122, line: 108, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netvector", file: !35, line: 293, size: 128, elements: !836)
!836 = !{!837, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !835, file: !35, line: 295, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !835, file: !35, line: 297, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !842, line: 40, baseType: !843)
!842 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !562, line: 129, baseType: !412)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "vector_cnt", scope: !830, file: !122, line: 110, baseType: !193, size: 16, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "vector_off", scope: !830, file: !122, line: 112, baseType: !841, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !830, file: !122, line: 114, baseType: !841, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !830, file: !122, line: 116, baseType: !841, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "apiflags", scope: !830, file: !122, line: 117, baseType: !161, size: 8, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !800, file: !122, line: 125, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 123, size: 64, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !850, file: !122, line: 124, baseType: !841, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !800, file: !122, line: 135, baseType: !854, size: 16)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 128, size: 16, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "shut", scope: !854, file: !122, line: 129, baseType: !161, size: 8)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "polls_left", scope: !854, file: !122, line: 133, baseType: !161, size: 8, offset: 8)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "jl", scope: !800, file: !122, line: 144, baseType: !859, size: 192)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !122, line: 139, size: 192, elements: !860)
!860 = !{!861, !862, !863, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "multiaddr", scope: !859, file: !122, line: 140, baseType: !331, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "netif_addr", scope: !859, file: !122, line: 141, baseType: !331, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !859, file: !122, line: 142, baseType: !161, size: 8, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "join_or_leave", scope: !859, file: !122, line: 143, baseType: !82, size: 32, offset: 160)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_api_msg", file: !122, line: 169, size: 320, elements: !867)
!867 = !{!868, !869, !870, !871, !873}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !122, line: 174, baseType: !364, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !866, file: !122, line: 177, baseType: !825, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dns_addrtype", scope: !866, file: !122, line: 180, baseType: !161, size: 8, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !866, file: !122, line: 184, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !866, file: !122, line: 186, baseType: !874, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !472, line: 49, baseType: !348)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!878 = !{!0, !879, !881, !883, !902}
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(name: "netconn_reset", scope: !2, file: !3, line: 110, type: !877, isLocal: false, isDefinition: true)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(name: "netconn_closed", scope: !2, file: !3, line: 111, type: !877, isLocal: false, isDefinition: true)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "__str", scope: !885, file: !886, line: 198, type: !683, isLocal: true, isDefinition: true)
!885 = distinct !DISubprogram(name: "uk_pr_crit", scope: !886, file: !886, line: 194, type: !887, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !889)
!886 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!887 = !DISubroutineType(types: !888)
!888 = !{null, !364, null}
!889 = !{!890, !891}
!890 = !DILocalVariable(name: "fmt", arg: 1, scope: !885, file: !886, line: 194, type: !364)
!891 = !DILocalVariable(name: "argp", scope: !885, file: !886, line: 196, type: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !893, line: 32, baseType: !894)
!893 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !895)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 192, elements: !586)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !897)
!897 = !{!898, !899, !900, !901}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !896, file: !3, line: 196, baseType: !7, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !896, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !896, file: !3, line: 196, baseType: !119, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !896, file: !3, line: 196, baseType: !119, size: 64, offset: 128)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "__str", scope: !885, file: !886, line: 198, type: !904, isLocal: true, isDefinition: true)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 80, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 10)
!907 = !{i32 2, !"Dwarf Version", i32 4}
!908 = !{i32 2, !"Debug Info Version", i32 3}
!909 = !{i32 1, !"wchar_size", i32 4}
!910 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!911 = distinct !DISubprogram(name: "lwip_netconn_is_err_msg", scope: !3, file: !3, line: 131, type: !912, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!15, !119, !874}
!914 = !{!915, !916}
!915 = !DILocalVariable(name: "msg", arg: 1, scope: !911, file: !3, line: 131, type: !119)
!916 = !DILocalVariable(name: "err", arg: 2, scope: !911, file: !3, line: 131, type: !874)
!917 = !DILocation(line: 131, column: 31, scope: !911)
!918 = !DILocation(line: 131, column: 43, scope: !911)
!919 = !DILocation(line: 133, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 133, column: 3)
!921 = distinct !DILexicalBlock(scope: !911, file: !3, line: 133, column: 3)
!922 = !DILocation(line: 133, column: 3, scope: !921)
!923 = !DILocation(line: 133, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 133, column: 3)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 133, column: 3)
!926 = !DILocation(line: 133, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 133, column: 3)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 133, column: 3)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 133, column: 3)
!930 = !DILocation(line: 135, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !911, file: !3, line: 135, column: 7)
!932 = !DILocation(line: 135, column: 7, scope: !911)
!933 = !DILocation(line: 138, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 138, column: 14)
!935 = !DILocation(line: 138, column: 14, scope: !931)
!936 = !DILocation(line: 141, column: 18, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 141, column: 14)
!938 = !DILocation(line: 141, column: 14, scope: !934)
!939 = !DILocation(line: 0, scope: !940)
!940 = distinct !DILexicalBlock(scope: !931, file: !3, line: 135, column: 32)
!941 = !{!942, !942, i64 0}
!942 = !{!"omnipotent char", !943, i64 0}
!943 = !{!"Simple C/C++ TBAA"}
!944 = !DILocation(line: 146, column: 1, scope: !911)
!945 = !DILocation(line: 0, scope: !911)
!946 = !DILocation(line: 194, column: 43, scope: !885)
!947 = !DILocation(line: 196, column: 2, scope: !885)
!948 = !DILocation(line: 196, column: 10, scope: !885)
!949 = !DILocation(line: 197, column: 2, scope: !885)
!950 = !DILocation(line: 198, column: 2, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !886, line: 198, column: 2)
!952 = distinct !DILexicalBlock(scope: !885, file: !886, line: 198, column: 2)
!953 = !DILocation(line: 199, column: 2, scope: !885)
!954 = !DILocation(line: 200, column: 1, scope: !885)
!955 = distinct !DISubprogram(name: "lwip_netconn_do_newconn", scope: !3, file: !3, line: 680, type: !521, isLocal: false, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !956)
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "m", arg: 1, scope: !955, file: !3, line: 680, type: !119)
!958 = !DILocalVariable(name: "msg", scope: !955, file: !3, line: 682, type: !120)
!959 = !DILocation(line: 680, column: 31, scope: !955)
!960 = !DILocation(line: 684, column: 8, scope: !955)
!961 = !DILocation(line: 684, column: 12, scope: !955)
!962 = !{!963, !942, i64 8}
!963 = !{!"api_msg", !964, i64 0, !942, i64 8, !942, i64 16}
!964 = !{!"any pointer", !942, i64 0}
!965 = !DILocation(line: 685, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !955, file: !3, line: 685, column: 7)
!967 = !{!963, !964, i64 0}
!968 = !DILocation(line: 685, column: 18, scope: !966)
!969 = !DILocation(line: 685, column: 22, scope: !966)
!970 = !DILocation(line: 685, column: 26, scope: !966)
!971 = !DILocation(line: 685, column: 7, scope: !955)
!972 = !DILocation(line: 682, column: 19, scope: !955)
!973 = !DILocalVariable(name: "msg", arg: 1, scope: !974, file: !3, line: 609, type: !120)
!974 = distinct !DISubprogram(name: "pcb_new", scope: !3, file: !3, line: 609, type: !975, isLocal: true, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !120}
!977 = !{!973, !978}
!978 = !DILocalVariable(name: "iptype", scope: !974, file: !3, line: 611, type: !91)
!979 = !DILocation(line: 609, column: 25, scope: !974, inlinedAt: !980)
!980 = distinct !DILocation(line: 686, column: 5, scope: !981)
!981 = distinct !DILexicalBlock(scope: !966, file: !3, line: 685, column: 35)
!982 = !DILocation(line: 611, column: 26, scope: !974, inlinedAt: !980)
!983 = !DILocation(line: 617, column: 7, scope: !984, inlinedAt: !980)
!984 = distinct !DILexicalBlock(scope: !974, file: !3, line: 617, column: 7)
!985 = !{!986, !942, i64 0}
!986 = !{!"netconn", !942, i64 0, !942, i64 4, !942, i64 8, !942, i64 16, !987, i64 24, !992, i64 56, !992, i64 80, !991, i64 104, !942, i64 108, !964, i64 112, !964, i64 120}
!987 = !{!"", !988, i64 0, !991, i64 24}
!988 = !{!"uk_semaphore", !989, i64 0, !990, i64 8}
!989 = !{!"long", !942, i64 0}
!990 = !{!"uk_waitq", !964, i64 0, !964, i64 8}
!991 = !{!"int", !942, i64 0}
!992 = !{!"", !964, i64 0, !964, i64 8, !991, i64 16}
!993 = !DILocation(line: 617, column: 7, scope: !974, inlinedAt: !980)
!994 = !DILocation(line: 623, column: 3, scope: !974, inlinedAt: !980)
!995 = !DILocation(line: 641, column: 28, scope: !996, inlinedAt: !980)
!996 = distinct !DILexicalBlock(scope: !974, file: !3, line: 623, column: 47)
!997 = !DILocation(line: 641, column: 12, scope: !996, inlinedAt: !980)
!998 = !DILocation(line: 641, column: 18, scope: !996, inlinedAt: !980)
!999 = !DILocation(line: 641, column: 22, scope: !996, inlinedAt: !980)
!1000 = !DILocation(line: 641, column: 26, scope: !996, inlinedAt: !980)
!1001 = !DILocation(line: 642, column: 16, scope: !1002, inlinedAt: !980)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 642, column: 11)
!1003 = !DILocation(line: 642, column: 22, scope: !1002, inlinedAt: !980)
!1004 = !DILocation(line: 642, column: 26, scope: !1002, inlinedAt: !980)
!1005 = !DILocation(line: 642, column: 30, scope: !1002, inlinedAt: !980)
!1006 = !DILocation(line: 642, column: 11, scope: !996, inlinedAt: !980)
!1007 = !DILocation(line: 648, column: 13, scope: !1008, inlinedAt: !980)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 648, column: 13)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 642, column: 39)
!1010 = !DILocation(line: 648, column: 13, scope: !1009, inlinedAt: !980)
!1011 = !DILocation(line: 649, column: 11, scope: !1012, inlinedAt: !980)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 648, column: 57)
!1013 = !{!1014, !942, i64 64}
!1014 = !{!"udp_pcb", !1015, i64 0, !1015, i64 24, !942, i64 48, !942, i64 49, !942, i64 50, !942, i64 51, !964, i64 56, !942, i64 64, !1016, i64 66, !1016, i64 68, !1017, i64 72, !942, i64 76, !942, i64 77, !964, i64 80, !964, i64 88}
!1015 = !{!"ip_addr", !942, i64 0, !942, i64 20}
!1016 = !{!"short", !942, i64 0}
!1017 = !{!"ip4_addr", !991, i64 0}
!1018 = !DILocation(line: 651, column: 33, scope: !1009, inlinedAt: !980)
!1019 = !DILocation(line: 650, column: 9, scope: !1012, inlinedAt: !980)
!1020 = !DILocation(line: 651, column: 48, scope: !1009, inlinedAt: !980)
!1021 = !DILocation(line: 651, column: 9, scope: !1009, inlinedAt: !980)
!1022 = !DILocation(line: 652, column: 7, scope: !1009, inlinedAt: !980)
!1023 = !DILocation(line: 657, column: 28, scope: !996, inlinedAt: !980)
!1024 = !DILocation(line: 657, column: 12, scope: !996, inlinedAt: !980)
!1025 = !DILocation(line: 657, column: 18, scope: !996, inlinedAt: !980)
!1026 = !DILocation(line: 657, column: 22, scope: !996, inlinedAt: !980)
!1027 = !DILocation(line: 657, column: 26, scope: !996, inlinedAt: !980)
!1028 = !DILocation(line: 658, column: 16, scope: !1029, inlinedAt: !980)
!1029 = distinct !DILexicalBlock(scope: !996, file: !3, line: 658, column: 11)
!1030 = !DILocation(line: 658, column: 22, scope: !1029, inlinedAt: !980)
!1031 = !DILocation(line: 658, column: 26, scope: !1029, inlinedAt: !980)
!1032 = !DILocation(line: 658, column: 30, scope: !1029, inlinedAt: !980)
!1033 = !DILocation(line: 658, column: 11, scope: !996, inlinedAt: !980)
!1034 = !DILocalVariable(name: "conn", arg: 1, scope: !1035, file: !3, line: 514, type: !125)
!1035 = distinct !DISubprogram(name: "setup_tcp", scope: !3, file: !3, line: 514, type: !1036, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !125}
!1038 = !{!1034, !1039}
!1039 = !DILocalVariable(name: "pcb", scope: !1035, file: !3, line: 516, type: !178)
!1040 = !DILocation(line: 514, column: 27, scope: !1035, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 659, column: 9, scope: !1042, inlinedAt: !980)
!1042 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 658, column: 39)
!1043 = !DILocation(line: 516, column: 19, scope: !1035, inlinedAt: !1041)
!1044 = !DILocation(line: 519, column: 16, scope: !1035, inlinedAt: !1041)
!1045 = !DILocation(line: 519, column: 3, scope: !1035, inlinedAt: !1041)
!1046 = !DILocation(line: 520, column: 3, scope: !1035, inlinedAt: !1041)
!1047 = !DILocation(line: 521, column: 3, scope: !1035, inlinedAt: !1041)
!1048 = !DILocation(line: 522, column: 3, scope: !1035, inlinedAt: !1041)
!1049 = !DILocation(line: 523, column: 3, scope: !1035, inlinedAt: !1041)
!1050 = !DILocation(line: 524, column: 1, scope: !1035, inlinedAt: !1041)
!1051 = !DILocation(line: 660, column: 7, scope: !1042, inlinedAt: !980)
!1052 = !DILocation(line: 668, column: 12, scope: !1053, inlinedAt: !980)
!1053 = distinct !DILexicalBlock(scope: !974, file: !3, line: 668, column: 7)
!1054 = !DILocation(line: 668, column: 22, scope: !1053, inlinedAt: !980)
!1055 = !DILocation(line: 668, column: 25, scope: !1053, inlinedAt: !980)
!1056 = !DILocation(line: 668, column: 7, scope: !974, inlinedAt: !980)
!1057 = !DILocation(line: 0, scope: !981)
!1058 = !DILocation(line: 671, column: 1, scope: !974, inlinedAt: !980)
!1059 = !DILocation(line: 687, column: 3, scope: !981)
!1060 = !DILocation(line: 693, column: 1, scope: !955)
!1061 = distinct !DISubprogram(name: "netconn_alloc", scope: !3, file: !3, line: 707, type: !1062, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!125, !34, !794}
!1064 = !{!1065, !1066, !1067, !1068, !1069}
!1065 = !DILocalVariable(name: "t", arg: 1, scope: !1061, file: !3, line: 707, type: !34)
!1066 = !DILocalVariable(name: "callback", arg: 2, scope: !1061, file: !3, line: 707, type: !794)
!1067 = !DILocalVariable(name: "conn", scope: !1061, file: !3, line: 709, type: !125)
!1068 = !DILocalVariable(name: "size", scope: !1061, file: !3, line: 710, type: !15)
!1069 = !DILocalVariable(name: "init_flags", scope: !1061, file: !3, line: 711, type: !161)
!1070 = !DILocation(line: 707, column: 33, scope: !1061)
!1071 = !DILocation(line: 707, column: 53, scope: !1061)
!1072 = !DILocation(line: 711, column: 8, scope: !1061)
!1073 = !DILocation(line: 714, column: 39, scope: !1061)
!1074 = !{!964, !964, i64 0}
!1075 = !DILocalVariable(name: "a", arg: 1, scope: !1076, file: !464, line: 173, type: !462)
!1076 = distinct !DISubprogram(name: "uk_calloc", scope: !464, file: !464, line: 173, type: !476, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1077)
!1077 = !{!1075, !1078, !1079}
!1078 = !DILocalVariable(name: "nmemb", arg: 2, scope: !1076, file: !464, line: 174, type: !471)
!1079 = !DILocalVariable(name: "size", arg: 3, scope: !1076, file: !464, line: 174, type: !471)
!1080 = !DILocation(line: 173, column: 48, scope: !1076, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 714, column: 29, scope: !1061)
!1082 = !DILocation(line: 174, column: 17, scope: !1076, inlinedAt: !1081)
!1083 = !DILocation(line: 174, column: 31, scope: !1076, inlinedAt: !1081)
!1084 = !DILocation(line: 176, column: 6, scope: !1085, inlinedAt: !1081)
!1085 = distinct !DILexicalBlock(scope: !1076, file: !464, line: 176, column: 6)
!1086 = !DILocation(line: 176, column: 6, scope: !1076, inlinedAt: !1081)
!1087 = !{!"branch_weights", i32 1, i32 2000}
!1088 = !DILocation(line: 177, column: 3, scope: !1089, inlinedAt: !1081)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !464, line: 176, column: 20)
!1090 = !DILocation(line: 177, column: 9, scope: !1089, inlinedAt: !1081)
!1091 = !{!991, !991, i64 0}
!1092 = !DILocation(line: 181, column: 1, scope: !1076, inlinedAt: !1081)
!1093 = !DILocation(line: 709, column: 19, scope: !1061)
!1094 = !DILocation(line: 716, column: 7, scope: !1061)
!1095 = !DILocalVariable(name: "a", arg: 1, scope: !1096, file: !464, line: 166, type: !462)
!1096 = distinct !DISubprogram(name: "uk_do_calloc", scope: !464, file: !464, line: 166, type: !476, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1097)
!1097 = !{!1095, !1098, !1099}
!1098 = !DILocalVariable(name: "nmemb", arg: 2, scope: !1096, file: !464, line: 167, type: !471)
!1099 = !DILocalVariable(name: "size", arg: 3, scope: !1096, file: !464, line: 167, type: !471)
!1100 = !DILocation(line: 166, column: 51, scope: !1096, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 180, column: 9, scope: !1076, inlinedAt: !1081)
!1102 = !DILocation(line: 167, column: 13, scope: !1096, inlinedAt: !1101)
!1103 = !DILocation(line: 167, column: 27, scope: !1096, inlinedAt: !1101)
!1104 = !DILocation(line: 170, column: 12, scope: !1096, inlinedAt: !1101)
!1105 = !DILocation(line: 170, column: 9, scope: !1096, inlinedAt: !1101)
!1106 = !DILocation(line: 170, column: 2, scope: !1096, inlinedAt: !1101)
!1107 = !DILocation(line: 714, column: 10, scope: !1061)
!1108 = !DILocation(line: 716, column: 12, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 716, column: 7)
!1110 = !DILocation(line: 720, column: 9, scope: !1061)
!1111 = !DILocation(line: 720, column: 21, scope: !1061)
!1112 = !{!986, !942, i64 16}
!1113 = !DILocation(line: 721, column: 9, scope: !1061)
!1114 = !DILocation(line: 721, column: 14, scope: !1061)
!1115 = !DILocation(line: 722, column: 9, scope: !1061)
!1116 = !DILocation(line: 722, column: 13, scope: !1061)
!1117 = !DILocation(line: 722, column: 17, scope: !1061)
!1118 = !DILocation(line: 725, column: 3, scope: !1061)
!1119 = !DILocation(line: 745, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 745, column: 7)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 745, column: 7)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 745, column: 7)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 745, column: 7)
!1124 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 725, column: 33)
!1125 = !DILocation(line: 745, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 745, column: 7)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 745, column: 7)
!1128 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 745, column: 7)
!1129 = !DILocation(line: 710, column: 7, scope: !1061)
!1130 = !DILocation(line: 749, column: 27, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 749, column: 7)
!1132 = !DILocation(line: 749, column: 7, scope: !1131)
!1133 = !DILocation(line: 749, column: 43, scope: !1131)
!1134 = !DILocation(line: 749, column: 7, scope: !1061)
!1135 = !DILocation(line: 753, column: 26, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 753, column: 7)
!1137 = !DILocation(line: 753, column: 7, scope: !1136)
!1138 = !DILocation(line: 753, column: 43, scope: !1136)
!1139 = !DILocation(line: 753, column: 7, scope: !1061)
!1140 = !DILocation(line: 754, column: 5, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 753, column: 54)
!1142 = !DILocation(line: 755, column: 5, scope: !1141)
!1143 = !DILocation(line: 760, column: 31, scope: !1061)
!1144 = !DILocation(line: 760, column: 3, scope: !1061)
!1145 = !DILocation(line: 762, column: 9, scope: !1061)
!1146 = !DILocation(line: 762, column: 22, scope: !1061)
!1147 = !{!986, !942, i64 4}
!1148 = !DILocation(line: 765, column: 9, scope: !1061)
!1149 = !DILocation(line: 765, column: 22, scope: !1061)
!1150 = !{!986, !991, i64 104}
!1151 = !DILocation(line: 767, column: 9, scope: !1061)
!1152 = !DILocation(line: 767, column: 22, scope: !1061)
!1153 = !{!986, !964, i64 120}
!1154 = !DILocation(line: 769, column: 9, scope: !1061)
!1155 = !DILocation(line: 769, column: 22, scope: !1061)
!1156 = !{!986, !964, i64 112}
!1157 = !DILocation(line: 784, column: 9, scope: !1061)
!1158 = !DILocation(line: 784, column: 15, scope: !1061)
!1159 = !{!986, !942, i64 108}
!1160 = !DILocation(line: 785, column: 3, scope: !1061)
!1161 = !DILocation(line: 787, column: 11, scope: !1061)
!1162 = !DILocalVariable(name: "a", arg: 1, scope: !1163, file: !464, line: 237, type: !462)
!1163 = distinct !DISubprogram(name: "uk_free", scope: !464, file: !464, line: 237, type: !494, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1164)
!1164 = !{!1162, !1165}
!1165 = !DILocalVariable(name: "ptr", arg: 2, scope: !1163, file: !464, line: 237, type: !119)
!1166 = !DILocation(line: 237, column: 45, scope: !1163, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 787, column: 3, scope: !1061)
!1168 = !DILocation(line: 237, column: 54, scope: !1163, inlinedAt: !1167)
!1169 = !DILocalVariable(name: "a", arg: 1, scope: !1170, file: !464, line: 231, type: !462)
!1170 = distinct !DISubprogram(name: "uk_do_free", scope: !464, file: !464, line: 231, type: !494, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1171)
!1171 = !{!1169, !1172}
!1172 = !DILocalVariable(name: "ptr", arg: 2, scope: !1170, file: !464, line: 231, type: !119)
!1173 = !DILocation(line: 231, column: 48, scope: !1170, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 239, column: 2, scope: !1163, inlinedAt: !1167)
!1175 = !DILocation(line: 231, column: 57, scope: !1170, inlinedAt: !1174)
!1176 = !DILocation(line: 233, column: 2, scope: !1177, inlinedAt: !1174)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !464, line: 233, column: 2)
!1178 = distinct !DILexicalBlock(scope: !1170, file: !464, line: 233, column: 2)
!1179 = !DILocation(line: 233, column: 2, scope: !1178, inlinedAt: !1174)
!1180 = !DILocation(line: 233, column: 2, scope: !1181, inlinedAt: !1174)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !464, line: 233, column: 2)
!1182 = !DILocation(line: 234, column: 5, scope: !1170, inlinedAt: !1174)
!1183 = !DILocation(line: 234, column: 2, scope: !1170, inlinedAt: !1174)
!1184 = !DILocation(line: 235, column: 1, scope: !1170, inlinedAt: !1174)
!1185 = !DILocation(line: 240, column: 1, scope: !1163, inlinedAt: !1167)
!1186 = !DILocation(line: 788, column: 3, scope: !1061)
!1187 = !DILocation(line: 0, scope: !1061)
!1188 = !DILocation(line: 789, column: 1, scope: !1061)
!1189 = distinct !DISubprogram(name: "netconn_free", scope: !3, file: !3, line: 798, type: !1036, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1190)
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "conn", arg: 1, scope: !1189, file: !3, line: 798, type: !125)
!1192 = !DILocation(line: 798, column: 30, scope: !1189)
!1193 = !DILocation(line: 800, column: 3, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 800, column: 3)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 800, column: 3)
!1196 = !DILocation(line: 800, column: 3, scope: !1195)
!1197 = !DILocation(line: 800, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 800, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 800, column: 3)
!1200 = !DILocation(line: 800, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 800, column: 3)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 800, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 800, column: 3)
!1204 = !DILocation(line: 807, column: 3, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 807, column: 3)
!1206 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 807, column: 3)
!1207 = !DILocation(line: 807, column: 3, scope: !1206)
!1208 = !DILocation(line: 807, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 807, column: 3)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 807, column: 3)
!1211 = !DILocation(line: 807, column: 3, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 807, column: 3)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 807, column: 3)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 807, column: 3)
!1215 = !DILocation(line: 810, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 810, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 810, column: 3)
!1218 = !DILocation(line: 810, column: 3, scope: !1217)
!1219 = !DILocation(line: 810, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 810, column: 3)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 810, column: 3)
!1222 = !DILocation(line: 810, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 810, column: 3)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 810, column: 3)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 810, column: 3)
!1226 = !DILocation(line: 815, column: 23, scope: !1189)
!1227 = !DILocation(line: 815, column: 3, scope: !1189)
!1228 = !DILocation(line: 816, column: 3, scope: !1189)
!1229 = !DILocation(line: 819, column: 11, scope: !1189)
!1230 = !DILocation(line: 237, column: 45, scope: !1163, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 819, column: 3, scope: !1189)
!1232 = !DILocation(line: 231, column: 48, scope: !1170, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 239, column: 2, scope: !1163, inlinedAt: !1231)
!1234 = !DILocation(line: 233, column: 2, scope: !1177, inlinedAt: !1233)
!1235 = !DILocation(line: 233, column: 2, scope: !1178, inlinedAt: !1233)
!1236 = !DILocation(line: 233, column: 2, scope: !1181, inlinedAt: !1233)
!1237 = !DILocation(line: 819, column: 32, scope: !1189)
!1238 = !DILocation(line: 231, column: 57, scope: !1170, inlinedAt: !1233)
!1239 = !DILocation(line: 237, column: 54, scope: !1163, inlinedAt: !1231)
!1240 = !DILocation(line: 234, column: 5, scope: !1170, inlinedAt: !1233)
!1241 = !DILocation(line: 234, column: 2, scope: !1170, inlinedAt: !1233)
!1242 = !DILocation(line: 235, column: 1, scope: !1170, inlinedAt: !1233)
!1243 = !DILocation(line: 240, column: 1, scope: !1163, inlinedAt: !1231)
!1244 = !DILocation(line: 820, column: 1, scope: !1189)
!1245 = distinct !DISubprogram(name: "lwip_netconn_do_delconn", scope: !3, file: !3, line: 1117, type: !521, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DILocalVariable(name: "m", arg: 1, scope: !1245, file: !3, line: 1117, type: !119)
!1248 = !DILocalVariable(name: "msg", scope: !1245, file: !3, line: 1119, type: !120)
!1249 = !DILocalVariable(name: "state", scope: !1245, file: !3, line: 1121, type: !48)
!1250 = !DILocation(line: 1117, column: 31, scope: !1245)
!1251 = !DILocation(line: 1119, column: 19, scope: !1245)
!1252 = !DILocation(line: 1121, column: 35, scope: !1245)
!1253 = !DILocation(line: 1121, column: 41, scope: !1245)
!1254 = !DILocation(line: 1121, column: 22, scope: !1245)
!1255 = !DILocation(line: 1122, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 1122, column: 3)
!1257 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1122, column: 3)
!1258 = !DILocation(line: 1122, column: 3, scope: !1257)
!1259 = !DILocation(line: 1122, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1122, column: 3)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1122, column: 3)
!1262 = !DILocation(line: 1122, column: 3, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 1122, column: 3)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1122, column: 3)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 1122, column: 3)
!1266 = !DILocation(line: 1140, column: 32, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1140, column: 7)
!1268 = !DILocation(line: 1143, column: 39, scope: !1267)
!1269 = !DILocation(line: 1140, column: 7, scope: !1245)
!1270 = !DILocation(line: 1146, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1143, column: 75)
!1272 = !DILocation(line: 1146, column: 14, scope: !1271)
!1273 = !DILocation(line: 1147, column: 3, scope: !1271)
!1274 = !DILocation(line: 1152, column: 10, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1149, column: 3)
!1276 = !DILocation(line: 1152, column: 14, scope: !1275)
!1277 = !DILocation(line: 1157, column: 5, scope: !1275)
!1278 = !DILocation(line: 1160, column: 14, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1160, column: 9)
!1280 = !DILocation(line: 1160, column: 20, scope: !1279)
!1281 = !DILocation(line: 1160, column: 24, scope: !1279)
!1282 = !DILocation(line: 1160, column: 28, scope: !1279)
!1283 = !DILocation(line: 1160, column: 9, scope: !1275)
!1284 = !DILocation(line: 1162, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1160, column: 37)
!1286 = !DILocation(line: 1162, column: 7, scope: !1285)
!1287 = !DILocation(line: 1170, column: 26, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1162, column: 51)
!1289 = !DILocation(line: 1170, column: 31, scope: !1288)
!1290 = !DILocation(line: 1170, column: 40, scope: !1288)
!1291 = !{!1014, !964, i64 88}
!1292 = !DILocation(line: 1171, column: 37, scope: !1288)
!1293 = !DILocation(line: 1171, column: 11, scope: !1288)
!1294 = !DILocation(line: 1198, column: 12, scope: !1285)
!1295 = !DILocation(line: 1198, column: 18, scope: !1285)
!1296 = !DILocation(line: 1198, column: 22, scope: !1285)
!1297 = !DILocation(line: 1172, column: 11, scope: !1288)
!1298 = !DILocation(line: 1176, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 1176, column: 11)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1176, column: 11)
!1301 = !DILocation(line: 1176, column: 11, scope: !1300)
!1302 = !DILocation(line: 1176, column: 11, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1176, column: 11)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 1176, column: 11)
!1305 = !DILocation(line: 1176, column: 11, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1176, column: 11)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1176, column: 11)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1176, column: 11)
!1309 = !DILocation(line: 1177, column: 22, scope: !1288)
!1310 = !DILocation(line: 1177, column: 28, scope: !1288)
!1311 = !DILocation(line: 1178, column: 16, scope: !1288)
!1312 = !DILocation(line: 1178, column: 28, scope: !1288)
!1313 = !DILocation(line: 1179, column: 34, scope: !1288)
!1314 = !DILocation(line: 1181, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1181, column: 15)
!1316 = !DILocation(line: 1181, column: 60, scope: !1315)
!1317 = !DILocation(line: 1181, column: 15, scope: !1288)
!1318 = !DILocation(line: 1182, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 1182, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 1182, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1181, column: 71)
!1322 = !DILocation(line: 1182, column: 13, scope: !1320)
!1323 = !DILocation(line: 1182, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1182, column: 13)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1182, column: 13)
!1326 = !DILocation(line: 1182, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1182, column: 13)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 1182, column: 13)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1182, column: 13)
!1330 = !DILocation(line: 1183, column: 13, scope: !1321)
!1331 = !DILocation(line: 1184, column: 31, scope: !1321)
!1332 = !DILocation(line: 1184, column: 13, scope: !1321)
!1333 = !DILocation(line: 1185, column: 13, scope: !1321)
!1334 = !DILocation(line: 1186, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1186, column: 13)
!1336 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 1186, column: 13)
!1337 = !DILocation(line: 1186, column: 13, scope: !1336)
!1338 = !DILocation(line: 1186, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1186, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1186, column: 13)
!1341 = !DILocation(line: 1186, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1186, column: 13)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1186, column: 13)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1186, column: 13)
!1345 = !DILocation(line: 1198, column: 26, scope: !1285)
!1346 = !DILocation(line: 1204, column: 5, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1204, column: 5)
!1348 = !DILocation(line: 1199, column: 5, scope: !1285)
!1349 = !DILocation(line: 1204, column: 5, scope: !1275)
!1350 = !DILocation(line: 1204, column: 5, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 1204, column: 5)
!1352 = !DILocation(line: 1205, column: 5, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1205, column: 5)
!1354 = !DILocation(line: 1205, column: 5, scope: !1275)
!1355 = !DILocation(line: 1205, column: 5, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1205, column: 5)
!1357 = !DILocation(line: 1207, column: 21, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1207, column: 7)
!1359 = !DILocation(line: 1207, column: 7, scope: !1358)
!1360 = !DILocation(line: 1210, column: 1, scope: !1245)
!1361 = distinct !DISubprogram(name: "netconn_drain", scope: !3, file: !3, line: 831, type: !1036, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365, !1372, !1377}
!1363 = !DILocalVariable(name: "conn", arg: 1, scope: !1361, file: !3, line: 831, type: !125)
!1364 = !DILocalVariable(name: "mem", scope: !1361, file: !3, line: 833, type: !119)
!1365 = !DILocalVariable(name: "err", scope: !1366, file: !3, line: 850, type: !274)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 849, column: 59)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 849, column: 13)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 847, column: 7)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 843, column: 72)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 842, column: 40)
!1371 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 842, column: 7)
!1372 = !DILocalVariable(name: "err", scope: !1373, file: !3, line: 873, type: !274)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 872, column: 7)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 868, column: 74)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 867, column: 42)
!1376 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 867, column: 7)
!1377 = !DILocalVariable(name: "newconn", scope: !1378, file: !3, line: 875, type: !125)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 874, column: 50)
!1379 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 874, column: 13)
!1380 = !DILocation(line: 831, column: 31, scope: !1361)
!1381 = !DILocation(line: 833, column: 3, scope: !1361)
!1382 = !DILocation(line: 842, column: 29, scope: !1371)
!1383 = !DILocation(line: 842, column: 7, scope: !1371)
!1384 = !DILocation(line: 842, column: 7, scope: !1361)
!1385 = !DILocation(line: 833, column: 9, scope: !1361)
!1386 = !DILocation(line: 843, column: 12, scope: !1370)
!1387 = !DILocation(line: 843, column: 53, scope: !1370)
!1388 = !DILocation(line: 843, column: 5, scope: !1370)
!1389 = !DILocation(line: 849, column: 13, scope: !1367)
!1390 = !DILocation(line: 849, column: 43, scope: !1367)
!1391 = !DILocation(line: 849, column: 13, scope: !1368)
!1392 = !DILocation(line: 851, column: 40, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 851, column: 15)
!1394 = !DILocation(line: 131, column: 31, scope: !911, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 851, column: 16, scope: !1393)
!1396 = !DILocation(line: 135, column: 11, scope: !931, inlinedAt: !1395)
!1397 = !DILocation(line: 138, column: 18, scope: !934, inlinedAt: !1395)
!1398 = !DILocation(line: 135, column: 7, scope: !911, inlinedAt: !1395)
!1399 = !DILocation(line: 141, column: 18, scope: !937, inlinedAt: !1395)
!1400 = !DILocation(line: 146, column: 1, scope: !911, inlinedAt: !1395)
!1401 = !DILocation(line: 852, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 851, column: 52)
!1403 = !DILocation(line: 853, column: 11, scope: !1402)
!1404 = !DILocation(line: 857, column: 42, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 856, column: 9)
!1406 = !DILocation(line: 857, column: 11, scope: !1405)
!1407 = distinct !{!1407, !1388, !1408}
!1408 = !DILocation(line: 860, column: 5, scope: !1370)
!1409 = !DILocation(line: 861, column: 5, scope: !1370)
!1410 = !DILocation(line: 862, column: 5, scope: !1370)
!1411 = !DILocation(line: 863, column: 3, scope: !1370)
!1412 = !DILocation(line: 867, column: 29, scope: !1376)
!1413 = !DILocation(line: 867, column: 7, scope: !1376)
!1414 = !DILocation(line: 867, column: 7, scope: !1361)
!1415 = !DILocation(line: 868, column: 12, scope: !1375)
!1416 = !DILocation(line: 868, column: 55, scope: !1375)
!1417 = !DILocation(line: 868, column: 5, scope: !1375)
!1418 = !DILocation(line: 874, column: 38, scope: !1379)
!1419 = !DILocation(line: 131, column: 31, scope: !911, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 874, column: 14, scope: !1379)
!1421 = !DILocation(line: 135, column: 11, scope: !931, inlinedAt: !1420)
!1422 = !DILocation(line: 138, column: 18, scope: !934, inlinedAt: !1420)
!1423 = !DILocation(line: 135, column: 7, scope: !911, inlinedAt: !1420)
!1424 = !DILocation(line: 141, column: 18, scope: !937, inlinedAt: !1420)
!1425 = !DILocation(line: 146, column: 1, scope: !911, inlinedAt: !1420)
!1426 = !DILocation(line: 875, column: 27, scope: !1378)
!1427 = !DILocation(line: 879, column: 11, scope: !1378)
!1428 = !DILocation(line: 880, column: 24, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 880, column: 15)
!1430 = !DILocation(line: 880, column: 28, scope: !1429)
!1431 = !DILocation(line: 880, column: 32, scope: !1429)
!1432 = !DILocation(line: 880, column: 15, scope: !1378)
!1433 = !DILocation(line: 881, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 880, column: 41)
!1435 = !DILocation(line: 882, column: 30, scope: !1434)
!1436 = !DILocation(line: 883, column: 11, scope: !1434)
!1437 = !DILocation(line: 884, column: 11, scope: !1378)
!1438 = !DILocation(line: 885, column: 9, scope: !1378)
!1439 = distinct !{!1439, !1417, !1440}
!1440 = !DILocation(line: 887, column: 5, scope: !1375)
!1441 = !DILocation(line: 888, column: 5, scope: !1375)
!1442 = !DILocation(line: 889, column: 5, scope: !1375)
!1443 = !DILocation(line: 890, column: 3, scope: !1375)
!1444 = !DILocation(line: 892, column: 1, scope: !1361)
!1445 = distinct !DISubprogram(name: "lwip_netconn_do_close_internal", scope: !3, file: !3, line: 924, type: !1446, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!274, !125, !161}
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1449 = !DILocalVariable(name: "conn", arg: 1, scope: !1445, file: !3, line: 924, type: !125)
!1450 = !DILocalVariable(name: "delayed", arg: 2, scope: !1445, file: !3, line: 924, type: !161)
!1451 = !DILocalVariable(name: "err", scope: !1445, file: !3, line: 926, type: !274)
!1452 = !DILocalVariable(name: "shut", scope: !1445, file: !3, line: 927, type: !161)
!1453 = !DILocalVariable(name: "shut_rx", scope: !1445, file: !3, line: 927, type: !161)
!1454 = !DILocalVariable(name: "shut_tx", scope: !1445, file: !3, line: 927, type: !161)
!1455 = !DILocalVariable(name: "shut_close", scope: !1445, file: !3, line: 927, type: !161)
!1456 = !DILocalVariable(name: "close_finished", scope: !1445, file: !3, line: 928, type: !161)
!1457 = !DILocalVariable(name: "tpcb", scope: !1445, file: !3, line: 929, type: !178)
!1458 = !DILocalVariable(name: "op_completed_sem", scope: !1459, file: !3, line: 1062, type: !872)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1060, column: 23)
!1460 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1060, column: 7)
!1461 = !DILocation(line: 924, column: 48, scope: !1445)
!1462 = !DILocation(line: 924, column: 54, scope: !1445)
!1463 = !DILocation(line: 928, column: 8, scope: !1445)
!1464 = !DILocation(line: 934, column: 3, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 934, column: 3)
!1466 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 934, column: 3)
!1467 = !DILocation(line: 934, column: 3, scope: !1466)
!1468 = !DILocation(line: 934, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 934, column: 3)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 934, column: 3)
!1471 = !DILocation(line: 934, column: 3, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 934, column: 3)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 934, column: 3)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 934, column: 3)
!1475 = !DILocation(line: 935, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 935, column: 3)
!1477 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 935, column: 3)
!1478 = !DILocation(line: 935, column: 3, scope: !1477)
!1479 = !DILocation(line: 935, column: 3, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 935, column: 3)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 935, column: 3)
!1482 = !DILocation(line: 935, column: 3, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 935, column: 3)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 935, column: 3)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 935, column: 3)
!1486 = !DILocation(line: 936, column: 3, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 936, column: 3)
!1488 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 936, column: 3)
!1489 = !DILocation(line: 936, column: 3, scope: !1488)
!1490 = !DILocation(line: 936, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 936, column: 3)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 936, column: 3)
!1493 = !DILocation(line: 936, column: 3, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 936, column: 3)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 936, column: 3)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 936, column: 3)
!1497 = !DILocation(line: 937, column: 3, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 937, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 937, column: 3)
!1500 = !DILocation(line: 937, column: 3, scope: !1499)
!1501 = !DILocation(line: 937, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 937, column: 3)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 937, column: 3)
!1504 = !DILocation(line: 937, column: 3, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 937, column: 3)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 937, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 937, column: 3)
!1508 = !DILocation(line: 938, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 938, column: 3)
!1510 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 938, column: 3)
!1511 = !DILocation(line: 938, column: 3, scope: !1510)
!1512 = !DILocation(line: 938, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 938, column: 3)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 938, column: 3)
!1515 = !DILocation(line: 938, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 938, column: 3)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 938, column: 3)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 938, column: 3)
!1519 = !DILocation(line: 929, column: 19, scope: !1445)
!1520 = !DILocation(line: 941, column: 29, scope: !1445)
!1521 = !DILocation(line: 941, column: 36, scope: !1445)
!1522 = !DILocation(line: 927, column: 8, scope: !1445)
!1523 = !DILocation(line: 942, column: 18, scope: !1445)
!1524 = !DILocation(line: 927, column: 14, scope: !1445)
!1525 = !DILocation(line: 943, column: 18, scope: !1445)
!1526 = !DILocation(line: 927, column: 23, scope: !1445)
!1527 = !DILocation(line: 946, column: 12, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 946, column: 7)
!1529 = !DILocation(line: 946, column: 7, scope: !1445)
!1530 = !DILocation(line: 948, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 948, column: 14)
!1532 = !DILocation(line: 948, column: 22, scope: !1531)
!1533 = !DILocation(line: 949, column: 22, scope: !1531)
!1534 = !{!1535, !942, i64 72}
!1535 = !{!"tcp_pcb", !1015, i64 0, !1015, i64 24, !942, i64 48, !942, i64 49, !942, i64 50, !942, i64 51, !964, i64 56, !964, i64 64, !942, i64 72, !942, i64 76, !1016, i64 78, !1016, i64 80, !1016, i64 82, !942, i64 84, !942, i64 85, !942, i64 86, !991, i64 88, !991, i64 92, !991, i64 96, !991, i64 100, !991, i64 104, !1016, i64 108, !1016, i64 110, !991, i64 112, !991, i64 116, !1016, i64 120, !1016, i64 122, !1016, i64 124, !942, i64 126, !942, i64 127, !991, i64 128, !991, i64 132, !991, i64 136, !991, i64 140, !991, i64 144, !991, i64 148, !991, i64 152, !991, i64 156, !991, i64 160, !991, i64 164, !991, i64 168, !1016, i64 172, !1016, i64 174, !991, i64 176, !964, i64 184, !964, i64 192, !964, i64 200, !964, i64 208, !964, i64 216, !964, i64 224, !964, i64 232, !964, i64 240, !964, i64 248, !964, i64 256, !991, i64 264, !942, i64 268, !942, i64 269, !942, i64 270, !942, i64 271, !942, i64 272, !942, i64 273}
!1536 = !DILocation(line: 949, column: 43, scope: !1531)
!1537 = !DILocation(line: 953, column: 14, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 953, column: 14)
!1539 = !DILocation(line: 953, column: 22, scope: !1538)
!1540 = !DILocation(line: 953, column: 33, scope: !1538)
!1541 = !{!1535, !1016, i64 82}
!1542 = !DILocation(line: 953, column: 39, scope: !1538)
!1543 = !DILocation(line: 953, column: 54, scope: !1538)
!1544 = !DILocation(line: 953, column: 14, scope: !1531)
!1545 = !DILocation(line: 961, column: 5, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 960, column: 19)
!1547 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 960, column: 7)
!1548 = !DILocation(line: 962, column: 3, scope: !1546)
!1549 = !DILocation(line: 963, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 963, column: 7)
!1551 = !DILocation(line: 963, column: 19, scope: !1550)
!1552 = !DILocation(line: 963, column: 7, scope: !1445)
!1553 = !DILocation(line: 967, column: 9, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 967, column: 9)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 965, column: 10)
!1556 = !DILocation(line: 967, column: 9, scope: !1555)
!1557 = !DILocation(line: 968, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 967, column: 18)
!1559 = !DILocation(line: 969, column: 7, scope: !1558)
!1560 = !DILocation(line: 970, column: 5, scope: !1558)
!1561 = !DILocation(line: 971, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 971, column: 9)
!1563 = !DILocation(line: 971, column: 9, scope: !1555)
!1564 = !DILocation(line: 972, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 971, column: 18)
!1566 = !DILocation(line: 973, column: 5, scope: !1565)
!1567 = !DILocation(line: 974, column: 9, scope: !1555)
!1568 = !DILocation(line: 975, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 974, column: 21)
!1570 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 974, column: 9)
!1571 = !DILocation(line: 976, column: 7, scope: !1569)
!1572 = !DILocation(line: 980, column: 7, scope: !1445)
!1573 = !DILocation(line: 964, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 963, column: 30)
!1575 = !DILocation(line: 1010, column: 13, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1009, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 980, column: 19)
!1578 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 980, column: 7)
!1579 = !DILocation(line: 926, column: 9, scope: !1445)
!1580 = !DILocation(line: 1012, column: 3, scope: !1577)
!1581 = !DILocation(line: 1013, column: 30, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1012, column: 10)
!1583 = !DILocation(line: 1013, column: 39, scope: !1582)
!1584 = !DILocation(line: 1013, column: 11, scope: !1582)
!1585 = !DILocation(line: 0, scope: !1582)
!1586 = !DILocation(line: 1015, column: 7, scope: !1445)
!1587 = !DILocation(line: 1046, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1046, column: 11)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1025, column: 25)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 1025, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1024, column: 10)
!1592 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1015, column: 7)
!1593 = !DILocation(line: 1046, column: 30, scope: !1588)
!1594 = !DILocation(line: 1046, column: 34, scope: !1588)
!1595 = !DILocation(line: 1046, column: 37, scope: !1588)
!1596 = !DILocation(line: 1046, column: 48, scope: !1588)
!1597 = !DILocation(line: 1046, column: 11, scope: !1589)
!1598 = !DILocation(line: 1051, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1049, column: 25)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1049, column: 13)
!1601 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1046, column: 54)
!1602 = !DILocation(line: 1053, column: 9, scope: !1599)
!1603 = !DILocation(line: 1060, column: 7, scope: !1445)
!1604 = !DILocation(line: 1062, column: 35, scope: !1459)
!1605 = !DILocation(line: 1062, column: 16, scope: !1459)
!1606 = !DILocation(line: 1063, column: 24, scope: !1459)
!1607 = !DILocation(line: 1063, column: 28, scope: !1459)
!1608 = !DILocation(line: 1064, column: 23, scope: !1459)
!1609 = !DILocation(line: 1065, column: 17, scope: !1459)
!1610 = !DILocation(line: 1066, column: 13, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 1066, column: 9)
!1612 = !DILocation(line: 1066, column: 9, scope: !1459)
!1613 = !DILocation(line: 1067, column: 11, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1066, column: 24)
!1615 = !DILocation(line: 1069, column: 23, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1067, column: 23)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1067, column: 11)
!1618 = !DILocation(line: 1072, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1072, column: 9)
!1620 = !DILocation(line: 1072, column: 9, scope: !1616)
!1621 = !DILocation(line: 1072, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1072, column: 9)
!1623 = !DILocation(line: 1074, column: 11, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1074, column: 11)
!1625 = !DILocation(line: 1074, column: 11, scope: !1614)
!1626 = !DILocation(line: 1075, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 1075, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 1074, column: 20)
!1629 = !DILocation(line: 1075, column: 9, scope: !1628)
!1630 = !DILocation(line: 1075, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 1075, column: 9)
!1632 = !DILocation(line: 1077, column: 11, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1077, column: 11)
!1634 = !DILocation(line: 1077, column: 11, scope: !1614)
!1635 = !DILocation(line: 1078, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1078, column: 9)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1077, column: 20)
!1638 = !DILocation(line: 1078, column: 9, scope: !1637)
!1639 = !DILocation(line: 1078, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 1078, column: 9)
!1641 = !DILocation(line: 1082, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 1082, column: 9)
!1643 = !DILocation(line: 1082, column: 9, scope: !1459)
!1644 = !DILocation(line: 1086, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 1084, column: 5)
!1646 = !DILocation(line: 1087, column: 5, scope: !1645)
!1647 = !DILocation(line: 1093, column: 5, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1093, column: 5)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1093, column: 5)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 1090, column: 24)
!1651 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1090, column: 7)
!1652 = !DILocation(line: 1093, column: 5, scope: !1649)
!1653 = !DILocation(line: 1093, column: 5, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 1093, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1093, column: 5)
!1656 = !DILocation(line: 1093, column: 5, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1093, column: 5)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 1093, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 1093, column: 5)
!1660 = !DILocation(line: 1094, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1094, column: 9)
!1662 = !DILocation(line: 1094, column: 9, scope: !1650)
!1663 = !DILocation(line: 1095, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1094, column: 18)
!1665 = !DILocation(line: 1096, column: 5, scope: !1664)
!1666 = !DILocation(line: 1098, column: 5, scope: !1650)
!1667 = !DILocation(line: 1099, column: 5, scope: !1650)
!1668 = !DILocation(line: 1100, column: 19, scope: !1650)
!1669 = !DILocation(line: 1100, column: 5, scope: !1650)
!1670 = !DILocation(line: 0, scope: !1445)
!1671 = !DILocation(line: 1107, column: 1, scope: !1445)
!1672 = distinct !DISubprogram(name: "lwip_netconn_do_bind", scope: !3, file: !3, line: 1220, type: !521, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "m", arg: 1, scope: !1672, file: !3, line: 1220, type: !119)
!1675 = !DILocalVariable(name: "msg", scope: !1672, file: !3, line: 1222, type: !120)
!1676 = !DILocalVariable(name: "err", scope: !1672, file: !3, line: 1223, type: !274)
!1677 = !DILocation(line: 1220, column: 28, scope: !1672)
!1678 = !DILocation(line: 1222, column: 19, scope: !1672)
!1679 = !DILocation(line: 1225, column: 12, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1225, column: 7)
!1681 = !DILocation(line: 1225, column: 18, scope: !1680)
!1682 = !DILocation(line: 1225, column: 22, scope: !1680)
!1683 = !DILocation(line: 1225, column: 26, scope: !1680)
!1684 = !DILocation(line: 1225, column: 7, scope: !1672)
!1685 = !DILocation(line: 1226, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1225, column: 35)
!1687 = !DILocation(line: 1226, column: 5, scope: !1686)
!1688 = !DILocation(line: 1234, column: 44, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 1226, column: 49)
!1690 = !DILocation(line: 1234, column: 90, scope: !1689)
!1691 = !DILocation(line: 1234, column: 15, scope: !1689)
!1692 = !DILocation(line: 1223, column: 9, scope: !1672)
!1693 = !DILocation(line: 1235, column: 9, scope: !1689)
!1694 = !DILocation(line: 1239, column: 44, scope: !1689)
!1695 = !DILocation(line: 1239, column: 90, scope: !1689)
!1696 = !DILocation(line: 1239, column: 15, scope: !1689)
!1697 = !DILocation(line: 1240, column: 9, scope: !1689)
!1698 = !DILocation(line: 0, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1246, column: 10)
!1700 = !DILocation(line: 1249, column: 8, scope: !1672)
!1701 = !DILocation(line: 1249, column: 12, scope: !1672)
!1702 = !DILocation(line: 1251, column: 1, scope: !1672)
!1703 = distinct !DISubprogram(name: "lwip_netconn_do_bind_if", scope: !3, file: !3, line: 1260, type: !521, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1704)
!1704 = !{!1705, !1706, !1775, !1776}
!1705 = !DILocalVariable(name: "m", arg: 1, scope: !1703, file: !3, line: 1260, type: !119)
!1706 = !DILocalVariable(name: "netif", scope: !1703, file: !3, line: 1262, type: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !87, line: 260, size: 2240, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1716, !1718, !1720, !1721, !1726, !1733, !1738, !1745, !1750, !1751, !1752, !1754, !1755, !1756, !1757, !1761, !1762, !1763, !1767, !1768, !1769, !1770}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1708, file: !87, line: 263, baseType: !1707, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1708, file: !87, line: 268, baseType: !139, size: 192, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1708, file: !87, line: 269, baseType: !139, size: 192, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1708, file: !87, line: 270, baseType: !139, size: 192, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1708, file: !87, line: 274, baseType: !1715, size: 576, offset: 640)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 576, elements: !582)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1708, file: !87, line: 277, baseType: !1717, size: 24, offset: 1216)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !582)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1708, file: !87, line: 282, baseType: !1719, size: 96, offset: 1248)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 96, elements: !582)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1708, file: !87, line: 283, baseType: !1719, size: 96, offset: 1344)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1708, file: !87, line: 288, baseType: !1722, size: 64, offset: 1472)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !87, line: 178, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!274, !242, !1707}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1708, file: !87, line: 294, baseType: !1727, size: 64, offset: 1536)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !87, line: 189, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!274, !1707, !242, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1708, file: !87, line: 299, baseType: !1734, size: 64, offset: 1600)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !87, line: 212, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!274, !1707, !242}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1708, file: !87, line: 305, baseType: !1739, size: 64, offset: 1664)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !87, line: 202, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!274, !1707, !242, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1708, file: !87, line: 310, baseType: !1746, size: 64, offset: 1728)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !87, line: 214, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1707}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1708, file: !87, line: 319, baseType: !1746, size: 64, offset: 1792)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1708, file: !87, line: 323, baseType: !119, size: 64, offset: 1856)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1708, file: !87, line: 325, baseType: !1753, size: 64, offset: 1920)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !586)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1708, file: !87, line: 332, baseType: !193, size: 16, offset: 1984)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1708, file: !87, line: 335, baseType: !193, size: 16, offset: 2000)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1708, file: !87, line: 338, baseType: !193, size: 16, offset: 2016)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1708, file: !87, line: 341, baseType: !1758, size: 48, offset: 2032)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 48, elements: !1759)
!1759 = !{!1760}
!1760 = !DISubrange(count: 6)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1708, file: !87, line: 343, baseType: !161, size: 8, offset: 2080)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !87, line: 345, baseType: !161, size: 8, offset: 2088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1708, file: !87, line: 347, baseType: !1764, size: 16, offset: 2096)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 16, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 2)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1708, file: !87, line: 350, baseType: !161, size: 8, offset: 2112)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1708, file: !87, line: 353, baseType: !161, size: 8, offset: 2120)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1708, file: !87, line: 357, baseType: !161, size: 8, offset: 2128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1708, file: !87, line: 377, baseType: !1771, size: 64, offset: 2176)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !87, line: 222, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!274, !1707, !1743, !86}
!1775 = !DILocalVariable(name: "msg", scope: !1703, file: !3, line: 1263, type: !120)
!1776 = !DILocalVariable(name: "err", scope: !1703, file: !3, line: 1264, type: !274)
!1777 = !DILocation(line: 1260, column: 31, scope: !1703)
!1778 = !DILocation(line: 1266, column: 42, scope: !1703)
!1779 = !DILocation(line: 1266, column: 11, scope: !1703)
!1780 = !DILocation(line: 1262, column: 17, scope: !1703)
!1781 = !DILocation(line: 1268, column: 14, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1268, column: 7)
!1783 = !DILocation(line: 1268, column: 23, scope: !1782)
!1784 = !DILocation(line: 1263, column: 19, scope: !1703)
!1785 = !DILocation(line: 1268, column: 32, scope: !1782)
!1786 = !DILocation(line: 1268, column: 38, scope: !1782)
!1787 = !DILocation(line: 1268, column: 42, scope: !1782)
!1788 = !DILocation(line: 1268, column: 46, scope: !1782)
!1789 = !DILocation(line: 1268, column: 7, scope: !1703)
!1790 = !DILocation(line: 1264, column: 9, scope: !1703)
!1791 = !DILocation(line: 1270, column: 13, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1268, column: 56)
!1793 = !DILocation(line: 1270, column: 5, scope: !1792)
!1794 = !DILocation(line: 1278, column: 9, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 1270, column: 49)
!1796 = !DILocation(line: 1279, column: 9, scope: !1795)
!1797 = !DILocation(line: 1283, column: 9, scope: !1795)
!1798 = !DILocation(line: 1284, column: 9, scope: !1795)
!1799 = !DILocation(line: 0, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1290, column: 10)
!1801 = !DILocation(line: 1293, column: 8, scope: !1703)
!1802 = !DILocation(line: 1293, column: 12, scope: !1703)
!1803 = !DILocation(line: 1295, column: 1, scope: !1703)
!1804 = distinct !DISubprogram(name: "lwip_netconn_do_connect", scope: !3, file: !3, line: 1354, type: !521, isLocal: false, isDefinition: true, scopeLine: 1355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1805)
!1805 = !{!1806, !1807, !1808, !1809}
!1806 = !DILocalVariable(name: "m", arg: 1, scope: !1804, file: !3, line: 1354, type: !119)
!1807 = !DILocalVariable(name: "msg", scope: !1804, file: !3, line: 1356, type: !120)
!1808 = !DILocalVariable(name: "err", scope: !1804, file: !3, line: 1357, type: !274)
!1809 = !DILocalVariable(name: "non_blocking", scope: !1810, file: !3, line: 1386, type: !161)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 1385, column: 30)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 1385, column: 15)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1381, column: 16)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1379, column: 20)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 1377, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1363, column: 49)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1362, column: 10)
!1817 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1359, column: 7)
!1818 = !DILocation(line: 1354, column: 31, scope: !1804)
!1819 = !DILocation(line: 1356, column: 19, scope: !1804)
!1820 = !DILocation(line: 1359, column: 12, scope: !1817)
!1821 = !DILocation(line: 1359, column: 18, scope: !1817)
!1822 = !DILocation(line: 1359, column: 22, scope: !1817)
!1823 = !DILocation(line: 1359, column: 26, scope: !1817)
!1824 = !DILocation(line: 1359, column: 7, scope: !1804)
!1825 = !DILocation(line: 1363, column: 13, scope: !1816)
!1826 = !DILocation(line: 1363, column: 5, scope: !1816)
!1827 = !DILocation(line: 1371, column: 47, scope: !1815)
!1828 = !DILocation(line: 1371, column: 93, scope: !1815)
!1829 = !DILocation(line: 1371, column: 15, scope: !1815)
!1830 = !DILocation(line: 1357, column: 9, scope: !1804)
!1831 = !DILocation(line: 1372, column: 9, scope: !1815)
!1832 = !DILocation(line: 1377, column: 24, scope: !1814)
!1833 = !DILocation(line: 1377, column: 13, scope: !1815)
!1834 = !DILocation(line: 1381, column: 9, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1379, column: 54)
!1836 = !DILocation(line: 514, column: 27, scope: !1035, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 1382, column: 11, scope: !1812)
!1838 = !DILocation(line: 516, column: 19, scope: !1035, inlinedAt: !1837)
!1839 = !DILocation(line: 519, column: 16, scope: !1035, inlinedAt: !1837)
!1840 = !DILocation(line: 519, column: 3, scope: !1035, inlinedAt: !1837)
!1841 = !DILocation(line: 520, column: 3, scope: !1035, inlinedAt: !1837)
!1842 = !DILocation(line: 521, column: 3, scope: !1035, inlinedAt: !1837)
!1843 = !DILocation(line: 522, column: 3, scope: !1035, inlinedAt: !1837)
!1844 = !DILocation(line: 523, column: 3, scope: !1035, inlinedAt: !1837)
!1845 = !DILocation(line: 524, column: 1, scope: !1035, inlinedAt: !1837)
!1846 = !DILocation(line: 1383, column: 34, scope: !1812)
!1847 = !DILocation(line: 1383, column: 40, scope: !1812)
!1848 = !DILocation(line: 1383, column: 44, scope: !1812)
!1849 = !DILocation(line: 1383, column: 49, scope: !1812)
!1850 = !DILocation(line: 1384, column: 41, scope: !1812)
!1851 = !DILocation(line: 1383, column: 17, scope: !1812)
!1852 = !DILocation(line: 1385, column: 19, scope: !1811)
!1853 = !DILocation(line: 1385, column: 15, scope: !1812)
!1854 = !DILocation(line: 1386, column: 33, scope: !1810)
!1855 = !DILocation(line: 1386, column: 18, scope: !1810)
!1856 = !DILocation(line: 1387, column: 24, scope: !1810)
!1857 = !DILocation(line: 1387, column: 30, scope: !1810)
!1858 = !DILocation(line: 1388, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1388, column: 13)
!1860 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1388, column: 13)
!1861 = !DILocation(line: 1388, column: 13, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 1388, column: 13)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1388, column: 13)
!1864 = !DILocation(line: 1388, column: 13, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1388, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1388, column: 13)
!1867 = !DILocation(line: 1388, column: 13, scope: !1860)
!1868 = !DILocation(line: 1389, column: 17, scope: !1810)
!1869 = !DILocation(line: 1392, column: 26, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1391, column: 20)
!1871 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1389, column: 17)
!1872 = !DILocation(line: 1392, column: 38, scope: !1870)
!1873 = !DILocation(line: 1397, column: 15, scope: !1870)
!1874 = !DILocation(line: 1398, column: 33, scope: !1870)
!1875 = !DILocation(line: 1398, column: 15, scope: !1870)
!1876 = !DILocation(line: 1399, column: 15, scope: !1870)
!1877 = !DILocation(line: 1400, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1400, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 1400, column: 15)
!1880 = !DILocation(line: 1400, column: 15, scope: !1879)
!1881 = !DILocation(line: 1400, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1400, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 1400, column: 15)
!1884 = !DILocation(line: 1400, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 1400, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 1400, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 1400, column: 15)
!1888 = !DILocation(line: 1409, column: 9, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 1409, column: 9)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1409, column: 9)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1409, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 1409, column: 9)
!1893 = !DILocation(line: 1409, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 1409, column: 9)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 1409, column: 9)
!1896 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1409, column: 9)
!1897 = !DILocation(line: 0, scope: !1815)
!1898 = !DILocation(line: 1415, column: 8, scope: !1804)
!1899 = !DILocation(line: 1415, column: 12, scope: !1804)
!1900 = !DILocation(line: 1419, column: 1, scope: !1804)
!1901 = distinct !DISubprogram(name: "lwip_netconn_do_connected", scope: !3, file: !3, line: 1305, type: !272, isLocal: true, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908}
!1903 = !DILocalVariable(name: "arg", arg: 1, scope: !1901, file: !3, line: 1305, type: !119)
!1904 = !DILocalVariable(name: "pcb", arg: 2, scope: !1901, file: !3, line: 1305, type: !178)
!1905 = !DILocalVariable(name: "err", arg: 3, scope: !1901, file: !3, line: 1305, type: !274)
!1906 = !DILocalVariable(name: "conn", scope: !1901, file: !3, line: 1307, type: !125)
!1907 = !DILocalVariable(name: "was_blocking", scope: !1901, file: !3, line: 1308, type: !15)
!1908 = !DILocalVariable(name: "op_completed_sem", scope: !1901, file: !3, line: 1309, type: !872)
!1909 = !DILocation(line: 1305, column: 33, scope: !1901)
!1910 = !DILocation(line: 1305, column: 54, scope: !1901)
!1911 = !DILocation(line: 1305, column: 65, scope: !1901)
!1912 = !DILocation(line: 1309, column: 14, scope: !1901)
!1913 = !DILocation(line: 1313, column: 10, scope: !1901)
!1914 = !DILocation(line: 1307, column: 19, scope: !1901)
!1915 = !DILocation(line: 1315, column: 12, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1315, column: 7)
!1917 = !DILocation(line: 1315, column: 7, scope: !1901)
!1918 = !DILocation(line: 1319, column: 3, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1319, column: 3)
!1920 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1319, column: 3)
!1921 = !DILocation(line: 1319, column: 3, scope: !1920)
!1922 = !DILocation(line: 1319, column: 3, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 1319, column: 3)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 1319, column: 3)
!1925 = !DILocation(line: 1319, column: 3, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 1319, column: 3)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 1319, column: 3)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1319, column: 3)
!1929 = !DILocation(line: 1320, column: 3, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 1320, column: 3)
!1931 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1320, column: 3)
!1932 = !DILocation(line: 1320, column: 3, scope: !1931)
!1933 = !DILocation(line: 1320, column: 3, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1320, column: 3)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 1320, column: 3)
!1936 = !DILocation(line: 1320, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1320, column: 3)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 1320, column: 3)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1320, column: 3)
!1940 = !DILocation(line: 1324, column: 24, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 1323, column: 34)
!1942 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1323, column: 7)
!1943 = !DILocation(line: 1324, column: 28, scope: !1941)
!1944 = !DILocation(line: 1325, column: 24, scope: !1941)
!1945 = !DILocation(line: 1326, column: 3, scope: !1941)
!1946 = !DILocation(line: 0, scope: !1901)
!1947 = !DILocation(line: 1327, column: 8, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1327, column: 7)
!1949 = !DILocation(line: 1327, column: 38, scope: !1948)
!1950 = !DILocation(line: 1327, column: 62, scope: !1948)
!1951 = !DILocation(line: 1327, column: 54, scope: !1948)
!1952 = !DILocation(line: 514, column: 27, scope: !1035, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 1328, column: 5, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 1327, column: 74)
!1955 = !DILocation(line: 518, column: 15, scope: !1035, inlinedAt: !1953)
!1956 = !DILocation(line: 518, column: 19, scope: !1035, inlinedAt: !1953)
!1957 = !DILocation(line: 516, column: 19, scope: !1035, inlinedAt: !1953)
!1958 = !DILocation(line: 519, column: 3, scope: !1035, inlinedAt: !1953)
!1959 = !DILocation(line: 520, column: 3, scope: !1035, inlinedAt: !1953)
!1960 = !DILocation(line: 521, column: 3, scope: !1035, inlinedAt: !1953)
!1961 = !DILocation(line: 522, column: 3, scope: !1035, inlinedAt: !1953)
!1962 = !DILocation(line: 523, column: 3, scope: !1035, inlinedAt: !1953)
!1963 = !DILocation(line: 524, column: 1, scope: !1035, inlinedAt: !1953)
!1964 = !DILocation(line: 1329, column: 3, scope: !1954)
!1965 = !DILocation(line: 1330, column: 19, scope: !1901)
!1966 = !DILocation(line: 1331, column: 3, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1331, column: 3)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 1331, column: 3)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1331, column: 3)
!1970 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1331, column: 3)
!1971 = !DILocation(line: 1332, column: 3, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 1332, column: 3)
!1973 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1332, column: 3)
!1974 = !DILocation(line: 1332, column: 3, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1332, column: 3)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 1332, column: 3)
!1977 = !DILocation(line: 1332, column: 3, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 1332, column: 3)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 1332, column: 3)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 1332, column: 3)
!1981 = !DILocation(line: 1335, column: 21, scope: !1901)
!1982 = !DILocation(line: 1336, column: 15, scope: !1901)
!1983 = !DILocation(line: 1337, column: 3, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1337, column: 3)
!1985 = !DILocation(line: 1337, column: 3, scope: !1901)
!1986 = !DILocation(line: 1337, column: 3, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1337, column: 3)
!1988 = !DILocation(line: 1339, column: 7, scope: !1901)
!1989 = !DILocation(line: 1340, column: 5, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1339, column: 21)
!1991 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1339, column: 7)
!1992 = !DILocation(line: 1341, column: 3, scope: !1990)
!1993 = !DILocation(line: 1343, column: 1, scope: !1901)
!1994 = distinct !DISubprogram(name: "lwip_netconn_do_disconnect", scope: !3, file: !3, line: 1429, type: !521, isLocal: false, isDefinition: true, scopeLine: 1430, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1995)
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "m", arg: 1, scope: !1994, file: !3, line: 1429, type: !119)
!1997 = !DILocalVariable(name: "msg", scope: !1994, file: !3, line: 1431, type: !120)
!1998 = !DILocation(line: 1429, column: 34, scope: !1994)
!1999 = !DILocation(line: 1434, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1434, column: 7)
!2001 = !DILocation(line: 1434, column: 42, scope: !2000)
!2002 = !DILocation(line: 1434, column: 7, scope: !1994)
!2003 = !DILocation(line: 1431, column: 19, scope: !1994)
!2004 = !DILocation(line: 1435, column: 31, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 1434, column: 58)
!2006 = !DILocation(line: 1435, column: 35, scope: !2005)
!2007 = !DILocation(line: 1435, column: 5, scope: !2005)
!2008 = !DILocation(line: 1437, column: 3, scope: !2005)
!2009 = !DILocation(line: 1440, column: 10, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 1439, column: 3)
!2011 = !DILocation(line: 1440, column: 14, scope: !2010)
!2012 = !DILocation(line: 1443, column: 1, scope: !1994)
!2013 = distinct !DISubprogram(name: "lwip_netconn_do_listen", scope: !3, file: !3, line: 1453, type: !521, isLocal: false, isDefinition: true, scopeLine: 1454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2025}
!2015 = !DILocalVariable(name: "m", arg: 1, scope: !2013, file: !3, line: 1453, type: !119)
!2016 = !DILocalVariable(name: "msg", scope: !2013, file: !3, line: 1455, type: !120)
!2017 = !DILocalVariable(name: "err", scope: !2013, file: !3, line: 1456, type: !274)
!2018 = !DILocalVariable(name: "lpcb", scope: !2019, file: !3, line: 1461, type: !178)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1460, column: 45)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 1460, column: 11)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1459, column: 60)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1459, column: 9)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1458, column: 35)
!2024 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1458, column: 7)
!2025 = !DILocalVariable(name: "backlog", scope: !2026, file: !3, line: 1466, type: !161)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 1465, column: 16)
!2027 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 1462, column: 13)
!2028 = !DILocation(line: 1453, column: 30, scope: !2013)
!2029 = !DILocation(line: 1455, column: 19, scope: !2013)
!2030 = !DILocation(line: 1456, column: 9, scope: !2013)
!2031 = !DILocation(line: 1456, column: 3, scope: !2013)
!2032 = !DILocation(line: 1458, column: 12, scope: !2024)
!2033 = !DILocation(line: 1458, column: 18, scope: !2024)
!2034 = !DILocation(line: 1458, column: 22, scope: !2024)
!2035 = !DILocation(line: 1458, column: 26, scope: !2024)
!2036 = !DILocation(line: 1458, column: 7, scope: !2013)
!2037 = !DILocation(line: 1459, column: 9, scope: !2022)
!2038 = !DILocation(line: 1459, column: 44, scope: !2022)
!2039 = !DILocation(line: 1459, column: 9, scope: !2023)
!2040 = !DILocation(line: 1460, column: 22, scope: !2020)
!2041 = !DILocation(line: 1460, column: 11, scope: !2021)
!2042 = !DILocation(line: 1462, column: 33, scope: !2027)
!2043 = !DILocation(line: 1462, column: 39, scope: !2027)
!2044 = !DILocation(line: 1462, column: 13, scope: !2019)
!2045 = !DILocation(line: 1464, column: 15, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 1462, column: 50)
!2047 = !DILocation(line: 1465, column: 9, scope: !2046)
!2048 = !DILocation(line: 1466, column: 16, scope: !2026)
!2049 = !DILocation(line: 1476, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1476, column: 15)
!2051 = !{!2052, !942, i64 20}
!2052 = !{!"ip_pcb", !1015, i64 0, !1015, i64 24, !942, i64 48, !942, i64 49, !942, i64 50, !942, i64 51}
!2053 = !{!1015, !942, i64 20}
!2054 = !DILocation(line: 1476, column: 71, scope: !2050)
!2055 = !DILocation(line: 1477, column: 16, scope: !2050)
!2056 = !DILocation(line: 1477, column: 48, scope: !2050)
!2057 = !DILocation(line: 1476, column: 15, scope: !2026)
!2058 = !DILocation(line: 1479, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 1479, column: 13)
!2060 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 1477, column: 55)
!2061 = !{!1535, !942, i64 20}
!2062 = !DILocation(line: 1480, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 1480, column: 13)
!2064 = !{!1535, !942, i64 44}
!2065 = !DILocation(line: 1484, column: 65, scope: !2026)
!2066 = !DILocation(line: 1481, column: 11, scope: !2060)
!2067 = !DILocation(line: 1484, column: 18, scope: !2026)
!2068 = !DILocation(line: 1461, column: 25, scope: !2019)
!2069 = !DILocation(line: 1486, column: 20, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1486, column: 15)
!2071 = !DILocation(line: 1486, column: 15, scope: !2026)
!2072 = !DILocation(line: 1490, column: 38, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 1490, column: 17)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1488, column: 18)
!2075 = !DILocation(line: 1490, column: 44, scope: !2073)
!2076 = !DILocation(line: 1490, column: 17, scope: !2073)
!2077 = !DILocation(line: 1490, column: 17, scope: !2074)
!2078 = !DILocation(line: 1492, column: 35, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 1490, column: 55)
!2080 = !DILocation(line: 1492, column: 41, scope: !2079)
!2081 = !DILocation(line: 1492, column: 15, scope: !2079)
!2082 = !DILocation(line: 1493, column: 42, scope: !2079)
!2083 = !DILocation(line: 1493, column: 48, scope: !2079)
!2084 = !DILocation(line: 1493, column: 15, scope: !2079)
!2085 = !DILocation(line: 1494, column: 13, scope: !2079)
!2086 = !DILocation(line: 1495, column: 17, scope: !2074)
!2087 = !DILocation(line: 1496, column: 39, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 1496, column: 17)
!2089 = !DILocation(line: 1496, column: 45, scope: !2088)
!2090 = !DILocation(line: 1496, column: 18, scope: !2088)
!2091 = !DILocation(line: 1496, column: 17, scope: !2074)
!2092 = !DILocation(line: 1497, column: 40, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1496, column: 58)
!2094 = !DILocation(line: 1497, column: 46, scope: !2093)
!2095 = !DILocation(line: 1497, column: 21, scope: !2093)
!2096 = !DILocation(line: 1497, column: 19, scope: !2093)
!2097 = !DILocation(line: 1498, column: 13, scope: !2093)
!2098 = !DILocation(line: 1499, column: 17, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 1499, column: 17)
!2100 = !DILocation(line: 1499, column: 21, scope: !2099)
!2101 = !DILocation(line: 1499, column: 17, scope: !2074)
!2102 = !DILocation(line: 1500, column: 20, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1499, column: 32)
!2104 = !DILocation(line: 1500, column: 26, scope: !2103)
!2105 = !DILocation(line: 1500, column: 32, scope: !2103)
!2106 = !DILocation(line: 1501, column: 26, scope: !2103)
!2107 = !DILocation(line: 1501, column: 30, scope: !2103)
!2108 = !DILocation(line: 1501, column: 34, scope: !2103)
!2109 = !DILocation(line: 1502, column: 28, scope: !2103)
!2110 = !DILocation(line: 1502, column: 34, scope: !2103)
!2111 = !DILocation(line: 1502, column: 38, scope: !2103)
!2112 = !DILocation(line: 1502, column: 43, scope: !2103)
!2113 = !DILocation(line: 1502, column: 15, scope: !2103)
!2114 = !DILocation(line: 1503, column: 31, scope: !2103)
!2115 = !DILocation(line: 1503, column: 37, scope: !2103)
!2116 = !DILocation(line: 1503, column: 41, scope: !2103)
!2117 = !DILocation(line: 1503, column: 15, scope: !2103)
!2118 = !DILocation(line: 1504, column: 13, scope: !2103)
!2119 = !DILocation(line: 1506, column: 15, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1504, column: 20)
!2121 = !DILocation(line: 1507, column: 20, scope: !2120)
!2122 = !DILocation(line: 1507, column: 26, scope: !2120)
!2123 = !DILocation(line: 1507, column: 30, scope: !2120)
!2124 = !DILocation(line: 1507, column: 34, scope: !2120)
!2125 = !DILocation(line: 1513, column: 13, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1511, column: 54)
!2127 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1511, column: 18)
!2128 = !DILocation(line: 1515, column: 7, scope: !2126)
!2129 = !DILocation(line: 1516, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1515, column: 14)
!2131 = !DILocation(line: 1519, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1518, column: 12)
!2133 = !DILocation(line: 1522, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1521, column: 10)
!2135 = !DILocation(line: 1524, column: 14, scope: !2013)
!2136 = !DILocation(line: 1524, column: 8, scope: !2013)
!2137 = !DILocation(line: 1524, column: 12, scope: !2013)
!2138 = !DILocation(line: 1526, column: 1, scope: !2013)
!2139 = distinct !DISubprogram(name: "accept_function", scope: !3, file: !3, line: 533, type: !272, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146}
!2141 = !DILocalVariable(name: "arg", arg: 1, scope: !2139, file: !3, line: 533, type: !119)
!2142 = !DILocalVariable(name: "newpcb", arg: 2, scope: !2139, file: !3, line: 533, type: !178)
!2143 = !DILocalVariable(name: "err", arg: 3, scope: !2139, file: !3, line: 533, type: !274)
!2144 = !DILocalVariable(name: "newconn", scope: !2139, file: !3, line: 535, type: !125)
!2145 = !DILocalVariable(name: "conn", scope: !2139, file: !3, line: 536, type: !125)
!2146 = !DILocalVariable(name: "pcb", scope: !2147, file: !3, line: 580, type: !178)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 576, column: 63)
!2148 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 576, column: 7)
!2149 = !DILocation(line: 533, column: 23, scope: !2139)
!2150 = !DILocation(line: 533, column: 44, scope: !2139)
!2151 = !DILocation(line: 533, column: 58, scope: !2139)
!2152 = !DILocation(line: 536, column: 26, scope: !2139)
!2153 = !DILocation(line: 536, column: 19, scope: !2139)
!2154 = !DILocation(line: 538, column: 12, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 538, column: 7)
!2156 = !DILocation(line: 538, column: 7, scope: !2139)
!2157 = !DILocation(line: 541, column: 8, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 541, column: 7)
!2159 = !DILocation(line: 541, column: 7, scope: !2139)
!2160 = !DILocation(line: 546, column: 14, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 546, column: 7)
!2162 = !DILocation(line: 546, column: 7, scope: !2139)
!2163 = !DILocalVariable(name: "err", arg: 1, scope: !2164, file: !3, line: 115, type: !274)
!2164 = distinct !DISubprogram(name: "lwip_netconn_err_to_msg", scope: !3, file: !3, line: 115, type: !2165, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!119, !274}
!2167 = !{!2163}
!2168 = !DILocation(line: 115, column: 31, scope: !2164, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 548, column: 45, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 548, column: 9)
!2171 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 546, column: 23)
!2172 = !DILocation(line: 128, column: 1, scope: !2164, inlinedAt: !2169)
!2173 = !DILocation(line: 548, column: 9, scope: !2170)
!2174 = !DILocation(line: 548, column: 80, scope: !2170)
!2175 = !DILocation(line: 548, column: 9, scope: !2171)
!2176 = !DILocation(line: 550, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 550, column: 7)
!2178 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 548, column: 91)
!2179 = !DILocation(line: 550, column: 7, scope: !2178)
!2180 = !DILocation(line: 550, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 550, column: 7)
!2182 = !DILocation(line: 554, column: 3, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 554, column: 3)
!2184 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 554, column: 3)
!2185 = !DILocation(line: 554, column: 3, scope: !2184)
!2186 = !DILocation(line: 554, column: 3, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 554, column: 3)
!2188 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 554, column: 3)
!2189 = !DILocation(line: 554, column: 3, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 554, column: 3)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 554, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 554, column: 3)
!2193 = !DILocation(line: 561, column: 33, scope: !2139)
!2194 = !DILocation(line: 561, column: 45, scope: !2139)
!2195 = !DILocation(line: 561, column: 13, scope: !2139)
!2196 = !DILocation(line: 535, column: 19, scope: !2139)
!2197 = !DILocation(line: 562, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 562, column: 7)
!2199 = !DILocation(line: 562, column: 7, scope: !2139)
!2200 = !DILocation(line: 115, column: 31, scope: !2164, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 564, column: 45, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 564, column: 9)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 562, column: 24)
!2204 = !DILocation(line: 128, column: 1, scope: !2164, inlinedAt: !2201)
!2205 = !DILocation(line: 564, column: 9, scope: !2202)
!2206 = !DILocation(line: 564, column: 80, scope: !2202)
!2207 = !DILocation(line: 564, column: 9, scope: !2203)
!2208 = !DILocation(line: 566, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 566, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 564, column: 91)
!2211 = !DILocation(line: 566, column: 7, scope: !2210)
!2212 = !DILocation(line: 566, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 566, column: 7)
!2214 = !DILocation(line: 570, column: 12, scope: !2139)
!2215 = !DILocation(line: 570, column: 16, scope: !2139)
!2216 = !DILocation(line: 570, column: 20, scope: !2139)
!2217 = !DILocation(line: 514, column: 27, scope: !1035, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 571, column: 3, scope: !2139)
!2219 = !DILocation(line: 516, column: 19, scope: !1035, inlinedAt: !2218)
!2220 = !DILocation(line: 519, column: 16, scope: !1035, inlinedAt: !2218)
!2221 = !DILocation(line: 519, column: 3, scope: !1035, inlinedAt: !2218)
!2222 = !DILocation(line: 520, column: 3, scope: !1035, inlinedAt: !2218)
!2223 = !DILocation(line: 521, column: 3, scope: !1035, inlinedAt: !2218)
!2224 = !DILocation(line: 522, column: 3, scope: !1035, inlinedAt: !2218)
!2225 = !DILocation(line: 523, column: 3, scope: !1035, inlinedAt: !2218)
!2226 = !DILocation(line: 524, column: 1, scope: !1035, inlinedAt: !2218)
!2227 = !DILocation(line: 576, column: 7, scope: !2148)
!2228 = !DILocation(line: 576, column: 52, scope: !2148)
!2229 = !DILocation(line: 576, column: 7, scope: !2139)
!2230 = !DILocation(line: 580, column: 40, scope: !2147)
!2231 = !DILocation(line: 580, column: 21, scope: !2147)
!2232 = !DILocation(line: 581, column: 5, scope: !2147)
!2233 = !DILocation(line: 582, column: 5, scope: !2147)
!2234 = !DILocation(line: 583, column: 5, scope: !2147)
!2235 = !DILocation(line: 584, column: 5, scope: !2147)
!2236 = !DILocation(line: 585, column: 5, scope: !2147)
!2237 = !DILocation(line: 587, column: 22, scope: !2147)
!2238 = !DILocation(line: 589, column: 29, scope: !2147)
!2239 = !DILocation(line: 589, column: 5, scope: !2147)
!2240 = !DILocation(line: 590, column: 5, scope: !2147)
!2241 = !DILocation(line: 591, column: 5, scope: !2147)
!2242 = !DILocation(line: 595, column: 5, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 595, column: 5)
!2244 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 593, column: 10)
!2245 = !DILocation(line: 595, column: 5, scope: !2244)
!2246 = !DILocation(line: 595, column: 5, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 595, column: 5)
!2248 = !DILocation(line: 0, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 541, column: 53)
!2250 = !DILocation(line: 599, column: 1, scope: !2139)
!2251 = distinct !DISubprogram(name: "lwip_netconn_do_send", scope: !3, file: !3, line: 1536, type: !521, isLocal: false, isDefinition: true, scopeLine: 1537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "m", arg: 1, scope: !2251, file: !3, line: 1536, type: !119)
!2254 = !DILocalVariable(name: "msg", scope: !2251, file: !3, line: 1538, type: !120)
!2255 = !DILocalVariable(name: "err", scope: !2251, file: !3, line: 1540, type: !274)
!2256 = !DILocation(line: 1536, column: 28, scope: !2251)
!2257 = !DILocation(line: 1538, column: 19, scope: !2251)
!2258 = !DILocation(line: 1540, column: 32, scope: !2251)
!2259 = !DILocation(line: 1540, column: 15, scope: !2251)
!2260 = !DILocation(line: 1540, column: 9, scope: !2251)
!2261 = !DILocation(line: 1541, column: 11, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1541, column: 7)
!2263 = !DILocation(line: 1541, column: 7, scope: !2251)
!2264 = !DILocation(line: 1542, column: 14, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 1542, column: 9)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1541, column: 22)
!2267 = !DILocation(line: 1542, column: 20, scope: !2265)
!2268 = !DILocation(line: 1542, column: 24, scope: !2265)
!2269 = !DILocation(line: 1542, column: 28, scope: !2265)
!2270 = !DILocation(line: 1542, column: 9, scope: !2266)
!2271 = !DILocation(line: 1543, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 1542, column: 37)
!2273 = !DILocation(line: 1543, column: 7, scope: !2272)
!2274 = !DILocation(line: 1565, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 1565, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1543, column: 51)
!2277 = !{!2278, !942, i64 36}
!2278 = !{!"netbuf", !964, i64 0, !964, i64 8, !1015, i64 16, !1016, i64 40}
!2279 = !DILocation(line: 1565, column: 51, scope: !2275)
!2280 = !DILocation(line: 1565, column: 54, scope: !2275)
!2281 = !DILocation(line: 1566, column: 60, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 1565, column: 92)
!2283 = !{!2278, !964, i64 0}
!2284 = !DILocation(line: 1566, column: 19, scope: !2282)
!2285 = !DILocation(line: 1567, column: 11, scope: !2282)
!2286 = !DILocation(line: 1568, column: 62, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 1567, column: 18)
!2288 = !DILocation(line: 1568, column: 96, scope: !2287)
!2289 = !{!2278, !1016, i64 40}
!2290 = !DILocation(line: 1568, column: 19, scope: !2287)
!2291 = !DILocation(line: 0, scope: !2251)
!2292 = !DILocation(line: 1581, column: 8, scope: !2251)
!2293 = !DILocation(line: 1581, column: 12, scope: !2251)
!2294 = !DILocation(line: 1583, column: 1, scope: !2251)
!2295 = distinct !DISubprogram(name: "lwip_netconn_do_recv", scope: !3, file: !3, line: 1593, type: !521, isLocal: false, isDefinition: true, scopeLine: 1594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2296)
!2296 = !{!2297, !2298, !2299, !2304}
!2297 = !DILocalVariable(name: "m", arg: 1, scope: !2295, file: !3, line: 1593, type: !119)
!2298 = !DILocalVariable(name: "msg", scope: !2295, file: !3, line: 1595, type: !120)
!2299 = !DILocalVariable(name: "remaining", scope: !2300, file: !3, line: 1600, type: !841)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1599, column: 60)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1599, column: 9)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1598, column: 35)
!2303 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1598, column: 7)
!2304 = !DILocalVariable(name: "recved", scope: !2305, file: !3, line: 1602, type: !193)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1601, column: 10)
!2306 = !DILocation(line: 1593, column: 28, scope: !2295)
!2307 = !DILocation(line: 1595, column: 19, scope: !2295)
!2308 = !DILocation(line: 1597, column: 8, scope: !2295)
!2309 = !DILocation(line: 1597, column: 12, scope: !2295)
!2310 = !DILocation(line: 1598, column: 12, scope: !2303)
!2311 = !DILocation(line: 1598, column: 18, scope: !2303)
!2312 = !DILocation(line: 1598, column: 22, scope: !2303)
!2313 = !DILocation(line: 1598, column: 26, scope: !2303)
!2314 = !DILocation(line: 1598, column: 7, scope: !2295)
!2315 = !DILocation(line: 1599, column: 9, scope: !2301)
!2316 = !DILocation(line: 1599, column: 44, scope: !2301)
!2317 = !DILocation(line: 1599, column: 9, scope: !2302)
!2318 = !DILocation(line: 1600, column: 31, scope: !2300)
!2319 = !DILocation(line: 1600, column: 37, scope: !2300)
!2320 = !DILocation(line: 1600, column: 14, scope: !2300)
!2321 = !DILocation(line: 1602, column: 32, scope: !2305)
!2322 = !DILocation(line: 1602, column: 24, scope: !2305)
!2323 = !DILocation(line: 1602, column: 15, scope: !2305)
!2324 = !DILocation(line: 1603, column: 9, scope: !2305)
!2325 = !DILocation(line: 1604, column: 19, scope: !2305)
!2326 = !DILocation(line: 1605, column: 26, scope: !2300)
!2327 = !DILocation(line: 1605, column: 7, scope: !2305)
!2328 = distinct !{!2328, !2329, !2330}
!2329 = !DILocation(line: 1601, column: 7, scope: !2300)
!2330 = !DILocation(line: 1605, column: 30, scope: !2300)
!2331 = !DILocation(line: 1603, column: 25, scope: !2305)
!2332 = !DILocation(line: 1603, column: 35, scope: !2305)
!2333 = !DILocation(line: 1609, column: 1, scope: !2295)
!2334 = distinct !DISubprogram(name: "lwip_netconn_do_write", scope: !3, file: !3, line: 1817, type: !521, isLocal: false, isDefinition: true, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2335)
!2335 = !{!2336, !2337, !2338}
!2336 = !DILocalVariable(name: "m", arg: 1, scope: !2334, file: !3, line: 1817, type: !119)
!2337 = !DILocalVariable(name: "msg", scope: !2334, file: !3, line: 1819, type: !120)
!2338 = !DILocalVariable(name: "err", scope: !2334, file: !3, line: 1821, type: !274)
!2339 = !DILocation(line: 1817, column: 29, scope: !2334)
!2340 = !DILocation(line: 1819, column: 19, scope: !2334)
!2341 = !DILocation(line: 1821, column: 32, scope: !2334)
!2342 = !DILocation(line: 1821, column: 15, scope: !2334)
!2343 = !DILocation(line: 1821, column: 9, scope: !2334)
!2344 = !DILocation(line: 1822, column: 11, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1822, column: 7)
!2346 = !DILocation(line: 1822, column: 7, scope: !2334)
!2347 = !DILocation(line: 1823, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1823, column: 9)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1822, column: 22)
!2350 = !DILocation(line: 1823, column: 44, scope: !2348)
!2351 = !DILocation(line: 1823, column: 9, scope: !2349)
!2352 = !DILocation(line: 1825, column: 22, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1825, column: 11)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 1823, column: 60)
!2355 = !DILocation(line: 1825, column: 28, scope: !2353)
!2356 = !DILocation(line: 1825, column: 11, scope: !2354)
!2357 = !DILocation(line: 1828, column: 29, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1828, column: 18)
!2359 = !DILocation(line: 1828, column: 33, scope: !2358)
!2360 = !DILocation(line: 1828, column: 37, scope: !2358)
!2361 = !DILocation(line: 1828, column: 18, scope: !2353)
!2362 = !DILocation(line: 1829, column: 26, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 1828, column: 46)
!2364 = !DILocation(line: 1831, column: 9, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 1831, column: 9)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1831, column: 9)
!2367 = !DILocation(line: 1831, column: 9, scope: !2366)
!2368 = !DILocation(line: 1831, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 1831, column: 9)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 1831, column: 9)
!2371 = !DILocation(line: 1831, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1831, column: 9)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1831, column: 9)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 1831, column: 9)
!2375 = !DILocation(line: 1832, column: 9, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1832, column: 9)
!2377 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1832, column: 9)
!2378 = !DILocation(line: 1832, column: 9, scope: !2377)
!2379 = !DILocation(line: 1832, column: 9, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1832, column: 9)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1832, column: 9)
!2382 = !DILocation(line: 1832, column: 9, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1832, column: 9)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1832, column: 9)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1832, column: 9)
!2386 = !DILocation(line: 1833, column: 32, scope: !2363)
!2387 = !DILocation(line: 1835, column: 13, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1835, column: 13)
!2389 = !DILocation(line: 1835, column: 53, scope: !2388)
!2390 = !DILocation(line: 1835, column: 13, scope: !2363)
!2391 = !DILocation(line: 1836, column: 11, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1836, column: 11)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1836, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1835, column: 64)
!2395 = !DILocation(line: 1836, column: 11, scope: !2393)
!2396 = !DILocation(line: 1836, column: 11, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1836, column: 11)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1836, column: 11)
!2399 = !DILocation(line: 1836, column: 11, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 1836, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 1836, column: 11)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 1836, column: 11)
!2403 = !DILocation(line: 1837, column: 11, scope: !2394)
!2404 = !DILocation(line: 1838, column: 29, scope: !2394)
!2405 = !DILocation(line: 1838, column: 11, scope: !2394)
!2406 = !DILocation(line: 1839, column: 11, scope: !2394)
!2407 = !DILocation(line: 1840, column: 11, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1840, column: 11)
!2409 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1840, column: 11)
!2410 = !DILocation(line: 1840, column: 11, scope: !2409)
!2411 = !DILocation(line: 1840, column: 11, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1840, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1840, column: 11)
!2414 = !DILocation(line: 1840, column: 11, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 1840, column: 11)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1840, column: 11)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1840, column: 11)
!2418 = !DILocation(line: 0, scope: !2334)
!2419 = !DILocation(line: 1860, column: 8, scope: !2334)
!2420 = !DILocation(line: 1860, column: 12, scope: !2334)
!2421 = !DILocation(line: 1862, column: 1, scope: !2334)
!2422 = distinct !DISubprogram(name: "lwip_netconn_do_writemore", scope: !3, file: !3, line: 1644, type: !1446, isLocal: true, isDefinition: true, scopeLine: 1645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2423)
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2439, !2442}
!2424 = !DILocalVariable(name: "conn", arg: 1, scope: !2422, file: !3, line: 1644, type: !125)
!2425 = !DILocalVariable(name: "delayed", arg: 2, scope: !2422, file: !3, line: 1644, type: !161)
!2426 = !DILocalVariable(name: "err", scope: !2422, file: !3, line: 1646, type: !274)
!2427 = !DILocalVariable(name: "dataptr", scope: !2422, file: !3, line: 1647, type: !838)
!2428 = !DILocalVariable(name: "len", scope: !2422, file: !3, line: 1648, type: !193)
!2429 = !DILocalVariable(name: "available", scope: !2422, file: !3, line: 1648, type: !193)
!2430 = !DILocalVariable(name: "write_finished", scope: !2422, file: !3, line: 1649, type: !161)
!2431 = !DILocalVariable(name: "diff", scope: !2422, file: !3, line: 1650, type: !841)
!2432 = !DILocalVariable(name: "dontblock", scope: !2422, file: !3, line: 1651, type: !161)
!2433 = !DILocalVariable(name: "apiflags", scope: !2422, file: !3, line: 1652, type: !161)
!2434 = !DILocalVariable(name: "write_more", scope: !2422, file: !3, line: 1653, type: !161)
!2435 = !DILocalVariable(name: "out_err", scope: !2436, file: !3, line: 1748, type: !274)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1747, column: 24)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1747, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1679, column: 3)
!2439 = !DILocalVariable(name: "out_err", scope: !2440, file: !3, line: 1768, type: !274)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1761, column: 32)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1761, column: 16)
!2442 = !DILocalVariable(name: "op_completed_sem", scope: !2443, file: !3, line: 1790, type: !872)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1787, column: 23)
!2444 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1787, column: 7)
!2445 = !DILocation(line: 1644, column: 43, scope: !2422)
!2446 = !DILocation(line: 1644, column: 49, scope: !2422)
!2447 = !DILocation(line: 1649, column: 8, scope: !2422)
!2448 = !DILocation(line: 1655, column: 3, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1655, column: 3)
!2450 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1655, column: 3)
!2451 = !DILocation(line: 1655, column: 3, scope: !2450)
!2452 = !DILocation(line: 1655, column: 3, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 1655, column: 3)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1655, column: 3)
!2455 = !DILocation(line: 1655, column: 3, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1655, column: 3)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1655, column: 3)
!2458 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1655, column: 3)
!2459 = !DILocation(line: 1656, column: 3, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1656, column: 3)
!2461 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1656, column: 3)
!2462 = !DILocation(line: 1656, column: 3, scope: !2461)
!2463 = !DILocation(line: 1656, column: 3, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1656, column: 3)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1656, column: 3)
!2466 = !DILocation(line: 1656, column: 3, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1656, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1656, column: 3)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1656, column: 3)
!2470 = !DILocation(line: 1657, column: 3, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1657, column: 3)
!2472 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1657, column: 3)
!2473 = !DILocation(line: 1657, column: 3, scope: !2472)
!2474 = !DILocation(line: 1657, column: 3, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1657, column: 3)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1657, column: 3)
!2477 = !DILocation(line: 1657, column: 3, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1657, column: 3)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1657, column: 3)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1657, column: 3)
!2481 = !DILocation(line: 1658, column: 3, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1658, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1658, column: 3)
!2484 = !DILocation(line: 1658, column: 3, scope: !2483)
!2485 = !DILocation(line: 1658, column: 3, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1658, column: 3)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1658, column: 3)
!2488 = !DILocation(line: 1658, column: 3, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1658, column: 3)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1658, column: 3)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1658, column: 3)
!2492 = !DILocation(line: 1659, column: 3, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1659, column: 3)
!2494 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1659, column: 3)
!2495 = !DILocation(line: 1659, column: 3, scope: !2494)
!2496 = !DILocation(line: 1659, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1659, column: 3)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1659, column: 3)
!2499 = !DILocation(line: 1659, column: 3, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1659, column: 3)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1659, column: 3)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 1659, column: 3)
!2503 = !DILocation(line: 1661, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1661, column: 3)
!2505 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1661, column: 3)
!2506 = !DILocation(line: 1661, column: 3, scope: !2505)
!2507 = !DILocation(line: 1661, column: 3, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1661, column: 3)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1661, column: 3)
!2510 = !DILocation(line: 1661, column: 3, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1661, column: 3)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1661, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1661, column: 3)
!2514 = !DILocation(line: 1663, column: 39, scope: !2422)
!2515 = !DILocation(line: 1652, column: 8, scope: !2422)
!2516 = !DILocation(line: 1664, column: 15, scope: !2422)
!2517 = !DILocation(line: 1664, column: 57, scope: !2422)
!2518 = !DILocation(line: 1664, column: 44, scope: !2422)
!2519 = !DILocation(line: 1680, column: 5, scope: !2438)
!2520 = !DILocation(line: 1689, column: 19, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1680, column: 8)
!2522 = !DILocation(line: 1681, column: 37, scope: !2521)
!2523 = !DILocation(line: 0, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1710, column: 76)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1709, column: 11)
!2526 = !DILocation(line: 1681, column: 56, scope: !2521)
!2527 = !DILocation(line: 1681, column: 64, scope: !2521)
!2528 = !{!2529, !964, i64 0}
!2529 = !{!"netvector", !964, i64 0, !989, i64 8}
!2530 = !DILocation(line: 1681, column: 95, scope: !2521)
!2531 = !DILocation(line: 1681, column: 68, scope: !2521)
!2532 = !DILocation(line: 1647, column: 15, scope: !2422)
!2533 = !DILocation(line: 1682, column: 47, scope: !2521)
!2534 = !{!2529, !989, i64 8}
!2535 = !DILocation(line: 1682, column: 51, scope: !2521)
!2536 = !DILocation(line: 1650, column: 10, scope: !2422)
!2537 = !DILocation(line: 1683, column: 16, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1683, column: 11)
!2539 = !DILocation(line: 1648, column: 9, scope: !2422)
!2540 = !DILocation(line: 1685, column: 18, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 1683, column: 28)
!2542 = !DILocation(line: 1687, column: 15, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 1686, column: 14)
!2544 = !DILocation(line: 1683, column: 11, scope: !2521)
!2545 = !{!1535, !991, i64 168}
!2546 = !DILocation(line: 1648, column: 14, scope: !2422)
!2547 = !DILocation(line: 1690, column: 23, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1690, column: 11)
!2549 = !DILocation(line: 1690, column: 21, scope: !2548)
!2550 = !DILocation(line: 1690, column: 11, scope: !2521)
!2551 = !DILocation(line: 1694, column: 16, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1694, column: 15)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1693, column: 24)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 1693, column: 13)
!2555 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1690, column: 28)
!2556 = !DILocation(line: 1694, column: 15, scope: !2553)
!2557 = !DILocation(line: 1696, column: 45, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1694, column: 21)
!2559 = !DILocation(line: 1696, column: 52, scope: !2558)
!2560 = !DILocation(line: 1696, column: 19, scope: !2558)
!2561 = !DILocation(line: 1646, column: 9, scope: !2422)
!2562 = !DILocation(line: 1734, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1734, column: 11)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1732, column: 46)
!2565 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1732, column: 9)
!2566 = !DILocation(line: 0, scope: !2541)
!2567 = !DILocation(line: 1703, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1703, column: 7)
!2569 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1703, column: 7)
!2570 = !DILocation(line: 1703, column: 7, scope: !2569)
!2571 = !DILocation(line: 1703, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 1703, column: 7)
!2573 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1703, column: 7)
!2574 = !DILocation(line: 1703, column: 7, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1703, column: 7)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1703, column: 7)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1703, column: 7)
!2578 = !DILocation(line: 1709, column: 16, scope: !2525)
!2579 = !DILocation(line: 1709, column: 26, scope: !2525)
!2580 = !DILocation(line: 1710, column: 16, scope: !2525)
!2581 = !DILocation(line: 1710, column: 31, scope: !2525)
!2582 = !DILocation(line: 1710, column: 59, scope: !2525)
!2583 = !DILocation(line: 1710, column: 70, scope: !2525)
!2584 = !DILocation(line: 1709, column: 11, scope: !2521)
!2585 = !DILocation(line: 1653, column: 8, scope: !2422)
!2586 = !DILocation(line: 1713, column: 7, scope: !2524)
!2587 = !DILocation(line: 1716, column: 13, scope: !2521)
!2588 = !DILocation(line: 1717, column: 11, scope: !2521)
!2589 = !DILocation(line: 1718, column: 15, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1717, column: 26)
!2591 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1717, column: 11)
!2592 = !DILocation(line: 1718, column: 34, scope: !2590)
!2593 = !DILocation(line: 1718, column: 41, scope: !2590)
!2594 = !DILocation(line: 1719, column: 15, scope: !2590)
!2595 = !DILocation(line: 1719, column: 34, scope: !2590)
!2596 = !DILocation(line: 1719, column: 45, scope: !2590)
!2597 = !DILocation(line: 1721, column: 19, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1721, column: 13)
!2599 = !DILocation(line: 1721, column: 38, scope: !2598)
!2600 = !DILocation(line: 1721, column: 77, scope: !2598)
!2601 = !DILocation(line: 1721, column: 85, scope: !2598)
!2602 = !DILocation(line: 1721, column: 49, scope: !2598)
!2603 = !DILocation(line: 1721, column: 13, scope: !2590)
!2604 = !DILocation(line: 1722, column: 36, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 1721, column: 90)
!2606 = !DILocation(line: 1722, column: 46, scope: !2605)
!2607 = !DILocation(line: 1724, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 1724, column: 15)
!2609 = !DILocation(line: 1724, column: 40, scope: !2608)
!2610 = !DILocation(line: 1724, column: 51, scope: !2608)
!2611 = !DILocation(line: 1724, column: 15, scope: !2605)
!2612 = !DILocation(line: 1725, column: 38, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1724, column: 56)
!2614 = !DILocation(line: 1725, column: 44, scope: !2613)
!2615 = !DILocation(line: 1726, column: 19, scope: !2613)
!2616 = !DILocation(line: 1726, column: 38, scope: !2613)
!2617 = !DILocation(line: 1726, column: 49, scope: !2613)
!2618 = !DILocation(line: 1727, column: 11, scope: !2613)
!2619 = !DILocation(line: 1730, column: 14, scope: !2438)
!2620 = !DILocation(line: 1730, column: 5, scope: !2521)
!2621 = distinct !{!2621, !2519, !2622}
!2622 = !DILocation(line: 1730, column: 41, scope: !2438)
!2623 = !DILocation(line: 0, scope: !2558)
!2624 = !DILocation(line: 1734, column: 31, scope: !2563)
!2625 = !DILocation(line: 1734, column: 50, scope: !2563)
!2626 = !DILocation(line: 1734, column: 84, scope: !2563)
!2627 = !DILocation(line: 1734, column: 57, scope: !2563)
!2628 = !DILocation(line: 1734, column: 11, scope: !2564)
!2629 = !DILocation(line: 1737, column: 9, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1737, column: 9)
!2631 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1734, column: 90)
!2632 = !DILocation(line: 1737, column: 9, scope: !2631)
!2633 = !DILocation(line: 1737, column: 9, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 1737, column: 9)
!2635 = !DILocation(line: 1738, column: 21, scope: !2631)
!2636 = !DILocation(line: 1739, column: 7, scope: !2631)
!2637 = !DILocation(line: 1739, column: 19, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1739, column: 18)
!2639 = !DILocation(line: 1739, column: 62, scope: !2638)
!2640 = !DILocation(line: 1740, column: 19, scope: !2638)
!2641 = !{!1535, !1016, i64 172}
!2642 = !DILocation(line: 1740, column: 50, scope: !2638)
!2643 = !DILocation(line: 1739, column: 18, scope: !2563)
!2644 = !DILocation(line: 1743, column: 9, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1743, column: 9)
!2646 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1740, column: 73)
!2647 = !DILocation(line: 1743, column: 9, scope: !2646)
!2648 = !DILocation(line: 1743, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1743, column: 9)
!2650 = !DILocation(line: 1716, column: 11, scope: !2521)
!2651 = !DILocation(line: 1747, column: 9, scope: !2438)
!2652 = !DILocation(line: 1749, column: 18, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1749, column: 11)
!2654 = !DILocation(line: 1749, column: 37, scope: !2653)
!2655 = !DILocation(line: 1749, column: 72, scope: !2653)
!2656 = !DILocation(line: 1749, column: 44, scope: !2653)
!2657 = !DILocation(line: 1749, column: 77, scope: !2653)
!2658 = !DILocation(line: 1753, column: 38, scope: !2436)
!2659 = !DILocation(line: 1753, column: 17, scope: !2436)
!2660 = !DILocation(line: 1748, column: 13, scope: !2436)
!2661 = !DILocation(line: 1754, column: 19, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1754, column: 11)
!2663 = !DILocation(line: 1768, column: 44, scope: !2440)
!2664 = !DILocation(line: 1768, column: 23, scope: !2440)
!2665 = !DILocation(line: 1768, column: 13, scope: !2440)
!2666 = !DILocation(line: 1769, column: 19, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1769, column: 11)
!2668 = !DILocation(line: 1769, column: 11, scope: !2440)
!2669 = !DILocation(line: 1778, column: 22, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1775, column: 29)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1775, column: 18)
!2672 = !DILocation(line: 1778, column: 41, scope: !2670)
!2673 = !DILocation(line: 1778, column: 48, scope: !2670)
!2674 = !DILocation(line: 1778, column: 15, scope: !2670)
!2675 = !DILocation(line: 1780, column: 7, scope: !2670)
!2676 = !DILocation(line: 0, scope: !2521)
!2677 = !DILocation(line: 1787, column: 7, scope: !2422)
!2678 = !DILocation(line: 1790, column: 35, scope: !2443)
!2679 = !DILocation(line: 1791, column: 24, scope: !2443)
!2680 = !DILocation(line: 1791, column: 28, scope: !2443)
!2681 = !DILocation(line: 1792, column: 23, scope: !2443)
!2682 = !DILocation(line: 1793, column: 17, scope: !2443)
!2683 = !DILocation(line: 1795, column: 9, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1795, column: 9)
!2685 = !DILocation(line: 1795, column: 9, scope: !2443)
!2686 = !DILocation(line: 1790, column: 16, scope: !2443)
!2687 = !DILocation(line: 1798, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 1797, column: 5)
!2689 = !DILocation(line: 1799, column: 5, scope: !2688)
!2690 = !DILocation(line: 0, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1802, column: 8)
!2692 = !DILocation(line: 1807, column: 1, scope: !2422)
!2693 = distinct !DISubprogram(name: "lwip_netconn_do_getaddr", scope: !3, file: !3, line: 1871, type: !521, isLocal: false, isDefinition: true, scopeLine: 1872, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2694)
!2694 = !{!2695, !2696}
!2695 = !DILocalVariable(name: "m", arg: 1, scope: !2693, file: !3, line: 1871, type: !119)
!2696 = !DILocalVariable(name: "msg", scope: !2693, file: !3, line: 1873, type: !120)
!2697 = !DILocation(line: 1871, column: 31, scope: !2693)
!2698 = !DILocation(line: 1873, column: 19, scope: !2693)
!2699 = !DILocation(line: 1875, column: 12, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1875, column: 7)
!2701 = !DILocation(line: 1875, column: 22, scope: !2700)
!2702 = !DILocation(line: 1875, column: 25, scope: !2700)
!2703 = !DILocation(line: 1875, column: 7, scope: !2693)
!2704 = !DILocation(line: 1876, column: 14, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1876, column: 9)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1875, column: 34)
!2707 = !DILocation(line: 1876, column: 21, scope: !2705)
!2708 = !DILocation(line: 1876, column: 9, scope: !2705)
!2709 = !DILocation(line: 1876, column: 9, scope: !2706)
!2710 = !DILocation(line: 1877, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1877, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1877, column: 7)
!2713 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 1876, column: 28)
!2714 = !DILocation(line: 1877, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1877, column: 7)
!2716 = !DILocation(line: 1877, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 1877, column: 7)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 1877, column: 7)
!2719 = !DILocation(line: 1877, column: 7, scope: !2712)
!2720 = !DILocation(line: 1877, column: 7, scope: !2718)
!2721 = !DILocation(line: 1877, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 1877, column: 7)
!2723 = !DILocation(line: 1877, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1877, column: 7)
!2725 = !DILocation(line: 1880, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 1880, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1880, column: 7)
!2728 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 1879, column: 12)
!2729 = !{!2052, !942, i64 44}
!2730 = !DILocation(line: 1880, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 1880, column: 7)
!2732 = !DILocation(line: 1880, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1880, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1880, column: 7)
!2735 = !DILocation(line: 1880, column: 7, scope: !2727)
!2736 = !DILocation(line: 1880, column: 7, scope: !2734)
!2737 = !DILocation(line: 1880, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1880, column: 7)
!2739 = !DILocation(line: 1880, column: 7, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1880, column: 7)
!2741 = !DILocation(line: 0, scope: !2724)
!2742 = !DILocation(line: 1884, column: 10, scope: !2706)
!2743 = !DILocation(line: 1884, column: 14, scope: !2706)
!2744 = !DILocation(line: 1885, column: 13, scope: !2706)
!2745 = !DILocation(line: 1885, column: 5, scope: !2706)
!2746 = !DILocation(line: 1898, column: 25, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 1898, column: 13)
!2748 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1885, column: 49)
!2749 = !DILocation(line: 1898, column: 13, scope: !2747)
!2750 = !DILocation(line: 0, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 1901, column: 15)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1900, column: 16)
!2753 = !DILocation(line: 1898, column: 13, scope: !2748)
!2754 = !DILocation(line: 1899, column: 66, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1898, column: 32)
!2756 = !{!1014, !1016, i64 66}
!2757 = !DILocation(line: 1899, column: 11, scope: !2755)
!2758 = !DILocation(line: 1899, column: 44, scope: !2755)
!2759 = !{!1016, !1016, i64 0}
!2760 = !DILocation(line: 1900, column: 9, scope: !2755)
!2761 = !DILocation(line: 1901, column: 36, scope: !2751)
!2762 = !DILocation(line: 1901, column: 42, scope: !2751)
!2763 = !DILocation(line: 1901, column: 65, scope: !2751)
!2764 = !DILocation(line: 1901, column: 15, scope: !2752)
!2765 = !DILocation(line: 1902, column: 22, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1901, column: 71)
!2767 = !DILocation(line: 1903, column: 11, scope: !2766)
!2768 = !DILocation(line: 1904, column: 68, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1903, column: 18)
!2770 = !{!1014, !1016, i64 68}
!2771 = !DILocation(line: 1904, column: 13, scope: !2769)
!2772 = !DILocation(line: 1904, column: 46, scope: !2769)
!2773 = !DILocation(line: 1911, column: 26, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 1911, column: 13)
!2775 = !DILocation(line: 1911, column: 32, scope: !2774)
!2776 = !DILocation(line: 0, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1915, column: 16)
!2778 = !DILocation(line: 1911, column: 38, scope: !2774)
!2779 = !DILocation(line: 1912, column: 35, scope: !2774)
!2780 = !DILocation(line: 1912, column: 52, scope: !2774)
!2781 = !DILocation(line: 1914, column: 20, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1912, column: 95)
!2783 = !DILocation(line: 1915, column: 9, scope: !2782)
!2784 = !DILocation(line: 1916, column: 87, scope: !2777)
!2785 = !DILocation(line: 1916, column: 120, scope: !2777)
!2786 = !DILocation(line: 1916, column: 47, scope: !2777)
!2787 = !DILocation(line: 1916, column: 11, scope: !2777)
!2788 = !DILocation(line: 1916, column: 44, scope: !2777)
!2789 = !DILocation(line: 1921, column: 9, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1921, column: 9)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1921, column: 9)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1921, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 1921, column: 9)
!2794 = !DILocation(line: 1921, column: 9, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1921, column: 9)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1921, column: 9)
!2797 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1921, column: 9)
!2798 = !DILocation(line: 1925, column: 10, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1924, column: 10)
!2800 = !DILocation(line: 1925, column: 14, scope: !2799)
!2801 = !DILocation(line: 1928, column: 1, scope: !2693)
!2802 = distinct !DISubprogram(name: "lwip_netconn_do_close", scope: !3, file: !3, line: 1938, type: !521, isLocal: false, isDefinition: true, scopeLine: 1939, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2803)
!2803 = !{!2804, !2805, !2806}
!2804 = !DILocalVariable(name: "m", arg: 1, scope: !2802, file: !3, line: 1938, type: !119)
!2805 = !DILocalVariable(name: "msg", scope: !2802, file: !3, line: 1940, type: !120)
!2806 = !DILocalVariable(name: "state", scope: !2802, file: !3, line: 1943, type: !48)
!2807 = !DILocation(line: 1938, column: 29, scope: !2802)
!2808 = !DILocation(line: 1940, column: 19, scope: !2802)
!2809 = !DILocation(line: 1943, column: 35, scope: !2802)
!2810 = !DILocation(line: 1943, column: 41, scope: !2802)
!2811 = !DILocation(line: 1943, column: 22, scope: !2802)
!2812 = !DILocation(line: 1946, column: 19, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1946, column: 7)
!2814 = !DILocation(line: 1946, column: 23, scope: !2813)
!2815 = !DILocation(line: 1946, column: 27, scope: !2813)
!2816 = !DILocation(line: 1946, column: 36, scope: !2813)
!2817 = !DILocation(line: 1947, column: 8, scope: !2813)
!2818 = !DILocation(line: 1947, column: 43, scope: !2813)
!2819 = !DILocation(line: 1947, column: 59, scope: !2813)
!2820 = !DILocation(line: 1948, column: 14, scope: !2813)
!2821 = !DILocation(line: 1948, column: 21, scope: !2813)
!2822 = !DILocation(line: 1948, column: 26, scope: !2813)
!2823 = !DILocation(line: 1948, column: 58, scope: !2813)
!2824 = !DILocation(line: 1948, column: 48, scope: !2813)
!2825 = !DILocation(line: 1950, column: 9, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1948, column: 79)
!2827 = !DILocation(line: 1952, column: 12, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 1950, column: 35)
!2829 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1950, column: 9)
!2830 = !DILocation(line: 1952, column: 16, scope: !2828)
!2831 = !DILocation(line: 1953, column: 5, scope: !2828)
!2832 = !DILocation(line: 1974, column: 12, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 1953, column: 40)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 1953, column: 16)
!2835 = !DILocation(line: 1974, column: 16, scope: !2833)
!2836 = !DILocation(line: 1977, column: 28, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1977, column: 11)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 1975, column: 12)
!2839 = !DILocation(line: 1977, column: 11, scope: !2838)
!2840 = !DILocation(line: 1982, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1977, column: 47)
!2842 = !DILocation(line: 1985, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 1985, column: 7)
!2844 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1985, column: 7)
!2845 = !DILocation(line: 1984, column: 7, scope: !2841)
!2846 = !DILocation(line: 1985, column: 7, scope: !2844)
!2847 = !DILocation(line: 1985, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1985, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 1985, column: 7)
!2850 = !DILocation(line: 1985, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1985, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 1985, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1985, column: 7)
!2854 = !DILocation(line: 1986, column: 18, scope: !2838)
!2855 = !DILocation(line: 1986, column: 24, scope: !2838)
!2856 = !DILocation(line: 1987, column: 30, scope: !2838)
!2857 = !DILocation(line: 1989, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1989, column: 11)
!2859 = !DILocation(line: 1989, column: 56, scope: !2858)
!2860 = !DILocation(line: 1989, column: 11, scope: !2838)
!2861 = !DILocation(line: 1990, column: 9, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 1990, column: 9)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1990, column: 9)
!2864 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1989, column: 67)
!2865 = !DILocation(line: 1990, column: 9, scope: !2863)
!2866 = !DILocation(line: 1990, column: 9, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 1990, column: 9)
!2868 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1990, column: 9)
!2869 = !DILocation(line: 1990, column: 9, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 1990, column: 9)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 1990, column: 9)
!2872 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1990, column: 9)
!2873 = !DILocation(line: 1991, column: 9, scope: !2864)
!2874 = !DILocation(line: 1992, column: 27, scope: !2864)
!2875 = !DILocation(line: 1992, column: 9, scope: !2864)
!2876 = !DILocation(line: 1993, column: 9, scope: !2864)
!2877 = !DILocation(line: 1994, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 1994, column: 9)
!2879 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1994, column: 9)
!2880 = !DILocation(line: 1994, column: 9, scope: !2879)
!2881 = !DILocation(line: 1994, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1994, column: 9)
!2883 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1994, column: 9)
!2884 = !DILocation(line: 1994, column: 9, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1994, column: 9)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1994, column: 9)
!2887 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1994, column: 9)
!2888 = !DILocation(line: 2005, column: 10, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 2004, column: 3)
!2890 = !DILocation(line: 2005, column: 14, scope: !2889)
!2891 = !DILocation(line: 2008, column: 1, scope: !2802)
!2892 = distinct !DISubprogram(name: "lwip_netconn_do_join_leave_group", scope: !3, file: !3, line: 2018, type: !521, isLocal: false, isDefinition: true, scopeLine: 2019, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2893)
!2893 = !{!2894, !2895}
!2894 = !DILocalVariable(name: "m", arg: 1, scope: !2892, file: !3, line: 2018, type: !119)
!2895 = !DILocalVariable(name: "msg", scope: !2892, file: !3, line: 2020, type: !120)
!2896 = !DILocation(line: 2018, column: 40, scope: !2892)
!2897 = !DILocation(line: 2020, column: 19, scope: !2892)
!2898 = !DILocation(line: 2022, column: 8, scope: !2892)
!2899 = !DILocation(line: 2022, column: 12, scope: !2892)
!2900 = !DILocation(line: 2023, column: 12, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 2023, column: 7)
!2902 = !DILocation(line: 2023, column: 18, scope: !2901)
!2903 = !DILocation(line: 2023, column: 22, scope: !2901)
!2904 = !DILocation(line: 2023, column: 26, scope: !2901)
!2905 = !DILocation(line: 2023, column: 7, scope: !2892)
!2906 = !DILocation(line: 2024, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 2024, column: 9)
!2908 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 2023, column: 35)
!2909 = !DILocation(line: 2024, column: 44, scope: !2907)
!2910 = !DILocation(line: 2024, column: 9, scope: !2908)
!2911 = !DILocation(line: 2027, column: 11, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 2027, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 2024, column: 60)
!2914 = !DILocation(line: 2027, column: 11, scope: !2913)
!2915 = !DILocation(line: 2028, column: 18, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 2028, column: 13)
!2917 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 2027, column: 48)
!2918 = !DILocation(line: 2028, column: 25, scope: !2916)
!2919 = !DILocation(line: 2028, column: 39, scope: !2916)
!2920 = !DILocation(line: 0, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 2031, column: 16)
!2922 = !DILocation(line: 2028, column: 13, scope: !2917)
!2923 = !DILocation(line: 2029, column: 22, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 2028, column: 56)
!2925 = !DILocation(line: 2029, column: 20, scope: !2924)
!2926 = !DILocation(line: 2031, column: 9, scope: !2924)
!2927 = !DILocation(line: 2032, column: 22, scope: !2921)
!2928 = !DILocation(line: 2032, column: 20, scope: !2921)
!2929 = !DILocation(line: 2051, column: 16, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 2050, column: 12)
!2931 = !DILocation(line: 2056, column: 1, scope: !2892)
!2932 = distinct !DISubprogram(name: "lwip_netconn_do_join_leave_group_netif", scope: !3, file: !3, line: 2064, type: !521, isLocal: false, isDefinition: true, scopeLine: 2065, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DILocalVariable(name: "m", arg: 1, scope: !2932, file: !3, line: 2064, type: !119)
!2935 = !DILocalVariable(name: "msg", scope: !2932, file: !3, line: 2066, type: !120)
!2936 = !DILocalVariable(name: "netif", scope: !2932, file: !3, line: 2067, type: !1707)
!2937 = !DILocation(line: 2064, column: 46, scope: !2932)
!2938 = !DILocation(line: 2069, column: 35, scope: !2932)
!2939 = !DILocation(line: 2069, column: 42, scope: !2932)
!2940 = !DILocation(line: 2069, column: 11, scope: !2932)
!2941 = !DILocation(line: 2067, column: 17, scope: !2932)
!2942 = !DILocation(line: 2070, column: 13, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 2070, column: 7)
!2944 = !DILocation(line: 0, scope: !2932)
!2945 = !DILocation(line: 2070, column: 7, scope: !2932)
!2946 = !DILocation(line: 2071, column: 14, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 2070, column: 22)
!2948 = !DILocation(line: 2072, column: 5, scope: !2947)
!2949 = !DILocation(line: 2066, column: 19, scope: !2932)
!2950 = !DILocation(line: 2075, column: 12, scope: !2932)
!2951 = !DILocation(line: 2076, column: 12, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 2076, column: 7)
!2953 = !DILocation(line: 2076, column: 18, scope: !2952)
!2954 = !DILocation(line: 2076, column: 22, scope: !2952)
!2955 = !DILocation(line: 2076, column: 26, scope: !2952)
!2956 = !DILocation(line: 2076, column: 7, scope: !2932)
!2957 = !DILocation(line: 2077, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 2077, column: 9)
!2959 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 2076, column: 35)
!2960 = !DILocation(line: 2077, column: 44, scope: !2958)
!2961 = !DILocation(line: 2077, column: 9, scope: !2959)
!2962 = !DILocation(line: 2080, column: 11, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 2080, column: 11)
!2964 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 2077, column: 60)
!2965 = !DILocation(line: 2080, column: 11, scope: !2964)
!2966 = !DILocation(line: 2081, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 2081, column: 13)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 2080, column: 48)
!2969 = !DILocation(line: 2081, column: 39, scope: !2967)
!2970 = !DILocation(line: 0, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 2084, column: 16)
!2972 = !DILocation(line: 2081, column: 13, scope: !2968)
!2973 = !DILocation(line: 2082, column: 22, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 2081, column: 56)
!2975 = !DILocation(line: 2082, column: 20, scope: !2974)
!2976 = !DILocation(line: 2084, column: 9, scope: !2974)
!2977 = !DILocation(line: 2085, column: 22, scope: !2971)
!2978 = !DILocation(line: 2085, column: 20, scope: !2971)
!2979 = !DILocation(line: 2104, column: 16, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 2103, column: 12)
!2981 = !DILocation(line: 2111, column: 1, scope: !2932)
!2982 = distinct !DISubprogram(name: "lwip_netconn_do_gethostbyname", scope: !3, file: !3, line: 2147, type: !521, isLocal: false, isDefinition: true, scopeLine: 2148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2983)
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "arg", arg: 1, scope: !2982, file: !3, line: 2147, type: !119)
!2985 = !DILocalVariable(name: "msg", scope: !2982, file: !3, line: 2149, type: !865)
!2986 = !DILocalVariable(name: "addrtype", scope: !2982, file: !3, line: 2150, type: !161)
!2987 = !DILocation(line: 2147, column: 37, scope: !2982)
!2988 = !DILocation(line: 2152, column: 10, scope: !2982)
!2989 = !{!2990, !942, i64 16}
!2990 = !{!"dns_api_msg", !964, i64 0, !964, i64 8, !942, i64 16, !964, i64 24, !964, i64 32}
!2991 = !DILocation(line: 2150, column: 8, scope: !2982)
!2992 = !DILocation(line: 2157, column: 62, scope: !2982)
!2993 = !{!2990, !964, i64 0}
!2994 = !DILocation(line: 2158, column: 30, scope: !2982)
!2995 = !{!2990, !964, i64 8}
!2996 = !DILocation(line: 2157, column: 30, scope: !2982)
!2997 = !DILocation(line: 2157, column: 3, scope: !2982)
!2998 = !{!2990, !964, i64 32}
!2999 = !DILocation(line: 2157, column: 28, scope: !2982)
!3000 = !DILocation(line: 2161, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 2161, column: 7)
!3002 = !DILocation(line: 2161, column: 32, scope: !3001)
!3003 = !DILocation(line: 2161, column: 7, scope: !2982)
!3004 = !DILocation(line: 2149, column: 23, scope: !2982)
!3005 = !DILocation(line: 2162, column: 5, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 2161, column: 51)
!3007 = !DILocation(line: 2163, column: 5, scope: !3006)
!3008 = !{!2990, !964, i64 24}
!3009 = !DILocation(line: 2164, column: 5, scope: !3006)
!3010 = !DILocation(line: 2165, column: 5, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 2165, column: 5)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 2165, column: 5)
!3013 = !DILocation(line: 2165, column: 5, scope: !3012)
!3014 = !DILocation(line: 2165, column: 5, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 2165, column: 5)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 2165, column: 5)
!3017 = !DILocation(line: 2165, column: 5, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 2165, column: 5)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 2165, column: 5)
!3020 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 2165, column: 5)
!3021 = !DILocation(line: 2174, column: 1, scope: !2982)
!3022 = distinct !DISubprogram(name: "lwip_netconn_do_dns_found", scope: !3, file: !3, line: 2121, type: !3023, isLocal: true, isDefinition: true, scopeLine: 2122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !364, !331, !119}
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DILocalVariable(name: "name", arg: 1, scope: !3022, file: !3, line: 2121, type: !364)
!3027 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !3022, file: !3, line: 2121, type: !331)
!3028 = !DILocalVariable(name: "arg", arg: 3, scope: !3022, file: !3, line: 2121, type: !119)
!3029 = !DILocalVariable(name: "msg", scope: !3022, file: !3, line: 2123, type: !865)
!3030 = !DILocation(line: 2121, column: 39, scope: !3022)
!3031 = !DILocation(line: 2121, column: 62, scope: !3022)
!3032 = !DILocation(line: 2121, column: 76, scope: !3022)
!3033 = !DILocation(line: 2123, column: 23, scope: !3022)
!3034 = !DILocation(line: 2128, column: 14, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 2128, column: 7)
!3036 = !DILocation(line: 0, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 2131, column: 10)
!3038 = !DILocation(line: 2128, column: 7, scope: !3022)
!3039 = !DILocation(line: 2130, column: 30, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 2128, column: 23)
!3041 = !DILocation(line: 2131, column: 3, scope: !3040)
!3042 = !DILocation(line: 2133, column: 30, scope: !3037)
!3043 = !DILocation(line: 2134, column: 5, scope: !3037)
!3044 = !DILocation(line: 2134, column: 33, scope: !3037)
!3045 = !{i64 0, i64 16, !941, i64 16, i64 1, !941, i64 0, i64 4, !1091, i64 20, i64 1, !941}
!3046 = !DILocation(line: 2137, column: 18, scope: !3022)
!3047 = !DILocation(line: 2137, column: 3, scope: !3022)
!3048 = !DILocation(line: 2138, column: 1, scope: !3022)
!3049 = distinct !DISubprogram(name: "recv_udp", scope: !3, file: !3, line: 218, type: !329, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058}
!3051 = !DILocalVariable(name: "arg", arg: 1, scope: !3049, file: !3, line: 218, type: !119)
!3052 = !DILocalVariable(name: "pcb", arg: 2, scope: !3049, file: !3, line: 218, type: !309)
!3053 = !DILocalVariable(name: "p", arg: 3, scope: !3049, file: !3, line: 218, type: !242)
!3054 = !DILocalVariable(name: "addr", arg: 4, scope: !3049, file: !3, line: 219, type: !331)
!3055 = !DILocalVariable(name: "port", arg: 5, scope: !3049, file: !3, line: 219, type: !193)
!3056 = !DILocalVariable(name: "buf", scope: !3049, file: !3, line: 221, type: !803)
!3057 = !DILocalVariable(name: "conn", scope: !3049, file: !3, line: 222, type: !125)
!3058 = !DILocalVariable(name: "len", scope: !3049, file: !3, line: 223, type: !193)
!3059 = !DILocation(line: 218, column: 16, scope: !3049)
!3060 = !DILocation(line: 218, column: 37, scope: !3049)
!3061 = !DILocation(line: 218, column: 55, scope: !3049)
!3062 = !DILocation(line: 219, column: 27, scope: !3049)
!3063 = !DILocation(line: 219, column: 39, scope: !3049)
!3064 = !DILocation(line: 229, column: 3, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 229, column: 3)
!3066 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 229, column: 3)
!3067 = !DILocation(line: 229, column: 3, scope: !3066)
!3068 = !DILocation(line: 229, column: 3, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 229, column: 3)
!3070 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 229, column: 3)
!3071 = !DILocation(line: 229, column: 3, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 229, column: 3)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 229, column: 3)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 229, column: 3)
!3075 = !DILocation(line: 230, column: 3, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 230, column: 3)
!3077 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 230, column: 3)
!3078 = !DILocation(line: 230, column: 3, scope: !3077)
!3079 = !DILocation(line: 230, column: 3, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 230, column: 3)
!3081 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 230, column: 3)
!3082 = !DILocation(line: 230, column: 3, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 230, column: 3)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 230, column: 3)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 230, column: 3)
!3086 = !DILocation(line: 231, column: 10, scope: !3049)
!3087 = !DILocation(line: 222, column: 19, scope: !3049)
!3088 = !DILocation(line: 238, column: 3, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 238, column: 3)
!3090 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 238, column: 3)
!3091 = !DILocation(line: 238, column: 3, scope: !3090)
!3092 = !DILocation(line: 238, column: 3, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 238, column: 3)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 238, column: 3)
!3095 = !DILocation(line: 238, column: 3, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 238, column: 3)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 238, column: 3)
!3098 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 238, column: 3)
!3099 = !DILocation(line: 245, column: 8, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 245, column: 7)
!3101 = !DILocation(line: 245, column: 7, scope: !3049)
!3102 = !DILocation(line: 247, column: 5, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 245, column: 51)
!3104 = !DILocation(line: 248, column: 5, scope: !3103)
!3105 = !DILocation(line: 251, column: 26, scope: !3049)
!3106 = !DILocation(line: 251, column: 9, scope: !3049)
!3107 = !DILocation(line: 221, column: 18, scope: !3049)
!3108 = !DILocation(line: 252, column: 11, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 252, column: 7)
!3110 = !DILocation(line: 252, column: 7, scope: !3049)
!3111 = !DILocation(line: 253, column: 5, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 252, column: 20)
!3113 = !DILocation(line: 254, column: 5, scope: !3112)
!3114 = !DILocation(line: 256, column: 10, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 255, column: 10)
!3116 = !DILocation(line: 256, column: 12, scope: !3115)
!3117 = !DILocation(line: 257, column: 10, scope: !3115)
!3118 = !DILocation(line: 257, column: 14, scope: !3115)
!3119 = !{!2278, !964, i64 8}
!3120 = !DILocation(line: 258, column: 5, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 258, column: 5)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 258, column: 5)
!3123 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 258, column: 5)
!3124 = !DILocation(line: 258, column: 5, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 258, column: 5)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 258, column: 5)
!3127 = !DILocation(line: 258, column: 5, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 258, column: 5)
!3129 = !DILocation(line: 258, column: 5, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 258, column: 5)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 258, column: 5)
!3132 = !DILocation(line: 258, column: 5, scope: !3123)
!3133 = !DILocation(line: 258, column: 5, scope: !3131)
!3134 = !DILocation(line: 258, column: 5, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 258, column: 5)
!3136 = !DILocation(line: 258, column: 5, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 258, column: 5)
!3138 = !DILocation(line: 259, column: 10, scope: !3115)
!3139 = !DILocation(line: 259, column: 15, scope: !3115)
!3140 = !DILocation(line: 271, column: 12, scope: !3049)
!3141 = !{!3142, !1016, i64 16}
!3142 = !{!"pbuf", !964, i64 0, !964, i64 8, !1016, i64 16, !1016, i64 18, !942, i64 20, !942, i64 21, !942, i64 22, !942, i64 23}
!3143 = !DILocation(line: 223, column: 9, scope: !3049)
!3144 = !DILocation(line: 272, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 272, column: 7)
!3146 = !DILocation(line: 272, column: 46, scope: !3145)
!3147 = !DILocation(line: 272, column: 7, scope: !3049)
!3148 = !DILocation(line: 273, column: 5, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 272, column: 57)
!3150 = !DILocation(line: 274, column: 5, scope: !3149)
!3151 = !DILocation(line: 280, column: 5, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 280, column: 5)
!3153 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 275, column: 10)
!3154 = !DILocation(line: 280, column: 5, scope: !3153)
!3155 = !DILocation(line: 280, column: 5, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 280, column: 5)
!3157 = !DILocation(line: 282, column: 1, scope: !3049)
!3158 = distinct !DISubprogram(name: "sent_tcp", scope: !3, file: !3, line: 398, type: !282, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3159)
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DILocalVariable(name: "arg", arg: 1, scope: !3158, file: !3, line: 398, type: !119)
!3161 = !DILocalVariable(name: "pcb", arg: 2, scope: !3158, file: !3, line: 398, type: !178)
!3162 = !DILocalVariable(name: "len", arg: 3, scope: !3158, file: !3, line: 398, type: !193)
!3163 = !DILocalVariable(name: "conn", scope: !3158, file: !3, line: 400, type: !125)
!3164 = !DILocation(line: 398, column: 16, scope: !3158)
!3165 = !DILocation(line: 398, column: 37, scope: !3158)
!3166 = !DILocation(line: 398, column: 48, scope: !3158)
!3167 = !DILocation(line: 400, column: 26, scope: !3158)
!3168 = !DILocation(line: 400, column: 19, scope: !3158)
!3169 = !DILocation(line: 403, column: 3, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 403, column: 3)
!3171 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 403, column: 3)
!3172 = !DILocation(line: 403, column: 3, scope: !3171)
!3173 = !DILocation(line: 403, column: 3, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 403, column: 3)
!3175 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 403, column: 3)
!3176 = !DILocation(line: 403, column: 3, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 403, column: 3)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 403, column: 3)
!3179 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 403, column: 3)
!3180 = !DILocation(line: 406, column: 15, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 406, column: 9)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 405, column: 13)
!3183 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 405, column: 7)
!3184 = !DILocation(line: 406, column: 9, scope: !3182)
!3185 = !DILocation(line: 407, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 406, column: 39)
!3187 = !DILocation(line: 408, column: 5, scope: !3186)
!3188 = !DILocation(line: 409, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 408, column: 46)
!3190 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 408, column: 16)
!3191 = !DILocation(line: 410, column: 5, scope: !3189)
!3192 = !DILocation(line: 414, column: 16, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 414, column: 9)
!3194 = !DILocation(line: 414, column: 20, scope: !3193)
!3195 = !DILocation(line: 414, column: 24, scope: !3193)
!3196 = !DILocation(line: 414, column: 33, scope: !3193)
!3197 = !DILocation(line: 414, column: 37, scope: !3193)
!3198 = !DILocation(line: 414, column: 79, scope: !3193)
!3199 = !DILocation(line: 415, column: 10, scope: !3193)
!3200 = !DILocation(line: 415, column: 41, scope: !3193)
!3201 = !DILocation(line: 414, column: 9, scope: !3182)
!3202 = !DILocation(line: 416, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 416, column: 7)
!3204 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 415, column: 63)
!3205 = !DILocation(line: 417, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 417, column: 7)
!3207 = !DILocation(line: 417, column: 7, scope: !3204)
!3208 = !DILocation(line: 417, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 417, column: 7)
!3210 = !DILocation(line: 421, column: 3, scope: !3158)
!3211 = distinct !DISubprogram(name: "poll_tcp", scope: !3, file: !3, line: 357, type: !294, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3212)
!3212 = !{!3213, !3214, !3215}
!3213 = !DILocalVariable(name: "arg", arg: 1, scope: !3211, file: !3, line: 357, type: !119)
!3214 = !DILocalVariable(name: "pcb", arg: 2, scope: !3211, file: !3, line: 357, type: !178)
!3215 = !DILocalVariable(name: "conn", scope: !3211, file: !3, line: 359, type: !125)
!3216 = !DILocation(line: 357, column: 16, scope: !3211)
!3217 = !DILocation(line: 357, column: 37, scope: !3211)
!3218 = !DILocation(line: 359, column: 26, scope: !3211)
!3219 = !DILocation(line: 359, column: 19, scope: !3211)
!3220 = !DILocation(line: 362, column: 3, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 362, column: 3)
!3222 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 362, column: 3)
!3223 = !DILocation(line: 362, column: 3, scope: !3222)
!3224 = !DILocation(line: 362, column: 3, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 362, column: 3)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 362, column: 3)
!3227 = !DILocation(line: 362, column: 3, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 362, column: 3)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 362, column: 3)
!3230 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 362, column: 3)
!3231 = !DILocation(line: 364, column: 13, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 364, column: 7)
!3233 = !DILocation(line: 364, column: 7, scope: !3211)
!3234 = !DILocation(line: 365, column: 5, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 364, column: 37)
!3236 = !DILocation(line: 366, column: 3, scope: !3235)
!3237 = !DILocation(line: 368, column: 15, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 368, column: 9)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 366, column: 44)
!3240 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 366, column: 14)
!3241 = !DILocation(line: 368, column: 9, scope: !3238)
!3242 = !DILocation(line: 368, column: 27, scope: !3238)
!3243 = !DILocation(line: 368, column: 49, scope: !3238)
!3244 = !DILocation(line: 368, column: 53, scope: !3238)
!3245 = !DILocation(line: 368, column: 56, scope: !3238)
!3246 = !DILocation(line: 368, column: 30, scope: !3238)
!3247 = !DILocation(line: 368, column: 9, scope: !3239)
!3248 = !DILocation(line: 369, column: 43, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 368, column: 68)
!3250 = !DILocation(line: 370, column: 5, scope: !3249)
!3251 = !DILocation(line: 372, column: 5, scope: !3239)
!3252 = !DILocation(line: 373, column: 3, scope: !3239)
!3253 = !DILocation(line: 377, column: 13, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 377, column: 7)
!3255 = !DILocation(line: 377, column: 19, scope: !3254)
!3256 = !DILocation(line: 377, column: 7, scope: !3211)
!3257 = !DILocation(line: 380, column: 16, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 380, column: 9)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 377, column: 52)
!3260 = !DILocation(line: 380, column: 20, scope: !3258)
!3261 = !DILocation(line: 380, column: 24, scope: !3258)
!3262 = !DILocation(line: 380, column: 33, scope: !3258)
!3263 = !DILocation(line: 380, column: 37, scope: !3258)
!3264 = !DILocation(line: 380, column: 79, scope: !3258)
!3265 = !DILocation(line: 381, column: 10, scope: !3258)
!3266 = !DILocation(line: 381, column: 41, scope: !3258)
!3267 = !DILocation(line: 380, column: 9, scope: !3259)
!3268 = !DILocation(line: 382, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 382, column: 7)
!3270 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 381, column: 63)
!3271 = !DILocation(line: 383, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 383, column: 7)
!3273 = !DILocation(line: 383, column: 7, scope: !3270)
!3274 = !DILocation(line: 383, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 383, column: 7)
!3276 = !DILocation(line: 387, column: 3, scope: !3211)
!3277 = distinct !DISubprogram(name: "err_tcp", scope: !3, file: !3, line: 432, type: !299, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3288}
!3279 = !DILocalVariable(name: "arg", arg: 1, scope: !3277, file: !3, line: 432, type: !119)
!3280 = !DILocalVariable(name: "err", arg: 2, scope: !3277, file: !3, line: 432, type: !274)
!3281 = !DILocalVariable(name: "conn", scope: !3277, file: !3, line: 434, type: !125)
!3282 = !DILocalVariable(name: "old_state", scope: !3277, file: !3, line: 435, type: !48)
!3283 = !DILocalVariable(name: "mbox_msg", scope: !3277, file: !3, line: 436, type: !119)
!3284 = !DILocalVariable(name: "lev", scope: !3277, file: !3, line: 437, type: !412)
!3285 = !DILocalVariable(name: "was_nonblocking_connect", scope: !3286, file: !3, line: 480, type: !15)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 477, column: 39)
!3287 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 476, column: 7)
!3288 = !DILocalVariable(name: "op_completed_sem", scope: !3289, file: !3, line: 484, type: !872)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 483, column: 35)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 483, column: 9)
!3291 = !DILocation(line: 432, column: 15, scope: !3277)
!3292 = !DILocation(line: 432, column: 26, scope: !3277)
!3293 = !DILocation(line: 439, column: 10, scope: !3277)
!3294 = !DILocation(line: 434, column: 19, scope: !3277)
!3295 = !DILocation(line: 440, column: 3, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 440, column: 3)
!3297 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 440, column: 3)
!3298 = !DILocation(line: 440, column: 3, scope: !3297)
!3299 = !DILocation(line: 440, column: 3, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 440, column: 3)
!3301 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 440, column: 3)
!3302 = !DILocation(line: 440, column: 3, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 440, column: 3)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 440, column: 3)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 440, column: 3)
!3306 = !DILocation(line: 442, column: 3, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 442, column: 3)
!3308 = !DILocation(line: 437, column: 3, scope: !3277)
!3309 = !DILocation(line: 445, column: 9, scope: !3277)
!3310 = !DILocation(line: 445, column: 13, scope: !3277)
!3311 = !DILocation(line: 445, column: 17, scope: !3277)
!3312 = !DILocation(line: 447, column: 9, scope: !3277)
!3313 = !DILocation(line: 447, column: 21, scope: !3277)
!3314 = !DILocation(line: 449, column: 9, scope: !3277)
!3315 = !DILocation(line: 449, column: 15, scope: !3277)
!3316 = !DILocation(line: 452, column: 21, scope: !3277)
!3317 = !DILocation(line: 435, column: 22, scope: !3277)
!3318 = !DILocation(line: 453, column: 15, scope: !3277)
!3319 = !DILocation(line: 455, column: 3, scope: !3277)
!3320 = !DILocation(line: 458, column: 3, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 458, column: 3)
!3322 = !DILocation(line: 458, column: 3, scope: !3277)
!3323 = !DILocation(line: 458, column: 3, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 458, column: 3)
!3325 = !DILocation(line: 461, column: 3, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 461, column: 3)
!3327 = !DILocation(line: 461, column: 3, scope: !3277)
!3328 = !DILocation(line: 461, column: 3, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 461, column: 3)
!3330 = !DILocation(line: 462, column: 3, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 462, column: 3)
!3332 = !DILocation(line: 462, column: 3, scope: !3277)
!3333 = !DILocation(line: 462, column: 3, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 462, column: 3)
!3335 = !DILocation(line: 115, column: 31, scope: !2164, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 464, column: 14, scope: !3277)
!3337 = !DILocation(line: 117, column: 11, scope: !2164, inlinedAt: !3336)
!3338 = !DILocation(line: 117, column: 3, scope: !2164, inlinedAt: !3336)
!3339 = !DILocation(line: 125, column: 7, scope: !3340, inlinedAt: !3336)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 125, column: 7)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 125, column: 7)
!3342 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 117, column: 16)
!3343 = !DILocation(line: 125, column: 7, scope: !3341, inlinedAt: !3336)
!3344 = !DILocation(line: 125, column: 7, scope: !3345, inlinedAt: !3336)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 125, column: 7)
!3346 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 125, column: 7)
!3347 = !DILocation(line: 125, column: 7, scope: !3348, inlinedAt: !3336)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 125, column: 7)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 125, column: 7)
!3350 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 125, column: 7)
!3351 = !DILocation(line: 0, scope: !3342, inlinedAt: !3336)
!3352 = !DILocation(line: 128, column: 1, scope: !2164, inlinedAt: !3336)
!3353 = !DILocation(line: 436, column: 9, scope: !3277)
!3354 = !DILocation(line: 466, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 466, column: 7)
!3356 = !DILocation(line: 466, column: 7, scope: !3277)
!3357 = !DILocation(line: 468, column: 5, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 466, column: 50)
!3359 = !DILocation(line: 469, column: 3, scope: !3358)
!3360 = !DILocation(line: 471, column: 7, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 471, column: 7)
!3362 = !DILocation(line: 471, column: 7, scope: !3277)
!3363 = !DILocation(line: 473, column: 5, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 471, column: 52)
!3365 = !DILocation(line: 474, column: 3, scope: !3364)
!3366 = !DILocation(line: 476, column: 50, scope: !3287)
!3367 = !DILocation(line: 476, column: 36, scope: !3287)
!3368 = !DILocation(line: 480, column: 35, scope: !3286)
!3369 = !DILocation(line: 481, column: 5, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 481, column: 5)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 481, column: 5)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 481, column: 5)
!3373 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 481, column: 5)
!3374 = !DILocation(line: 483, column: 9, scope: !3286)
!3375 = !DILocation(line: 486, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 486, column: 7)
!3377 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 486, column: 7)
!3378 = !DILocation(line: 486, column: 7, scope: !3377)
!3379 = !DILocation(line: 486, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 486, column: 7)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 486, column: 7)
!3382 = !DILocation(line: 486, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 486, column: 7)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 486, column: 7)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 486, column: 7)
!3386 = !DILocation(line: 0, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 490, column: 14)
!3388 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 487, column: 11)
!3389 = !DILocation(line: 490, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 487, column: 39)
!3391 = !DILocation(line: 0, scope: !3390)
!3392 = !DILocation(line: 494, column: 26, scope: !3289)
!3393 = !DILocation(line: 484, column: 18, scope: !3289)
!3394 = !DILocation(line: 495, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 495, column: 7)
!3396 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 495, column: 7)
!3397 = !DILocation(line: 495, column: 7, scope: !3396)
!3398 = !DILocation(line: 495, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 495, column: 7)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 495, column: 7)
!3401 = !DILocation(line: 495, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 495, column: 7)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 495, column: 7)
!3404 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 495, column: 7)
!3405 = !DILocation(line: 496, column: 25, scope: !3289)
!3406 = !DILocation(line: 498, column: 7, scope: !3289)
!3407 = !DILocation(line: 499, column: 5, scope: !3289)
!3408 = !DILocation(line: 503, column: 5, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 503, column: 5)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 503, column: 5)
!3411 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 502, column: 10)
!3412 = !DILocation(line: 503, column: 5, scope: !3410)
!3413 = !DILocation(line: 503, column: 5, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 503, column: 5)
!3415 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 503, column: 5)
!3416 = !DILocation(line: 503, column: 5, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 503, column: 5)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 503, column: 5)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 503, column: 5)
!3420 = !DILocation(line: 505, column: 1, scope: !3277)
!3421 = distinct !DISubprogram(name: "recv_tcp", scope: !3, file: !3, line: 293, type: !287, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3423 = !DILocalVariable(name: "arg", arg: 1, scope: !3421, file: !3, line: 293, type: !119)
!3424 = !DILocalVariable(name: "pcb", arg: 2, scope: !3421, file: !3, line: 293, type: !178)
!3425 = !DILocalVariable(name: "p", arg: 3, scope: !3421, file: !3, line: 293, type: !242)
!3426 = !DILocalVariable(name: "err", arg: 4, scope: !3421, file: !3, line: 293, type: !274)
!3427 = !DILocalVariable(name: "conn", scope: !3421, file: !3, line: 295, type: !125)
!3428 = !DILocalVariable(name: "len", scope: !3421, file: !3, line: 296, type: !193)
!3429 = !DILocalVariable(name: "msg", scope: !3421, file: !3, line: 297, type: !119)
!3430 = !DILocation(line: 293, column: 16, scope: !3421)
!3431 = !DILocation(line: 293, column: 37, scope: !3421)
!3432 = !DILocation(line: 293, column: 55, scope: !3421)
!3433 = !DILocation(line: 293, column: 64, scope: !3421)
!3434 = !DILocation(line: 300, column: 3, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 300, column: 3)
!3436 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 300, column: 3)
!3437 = !DILocation(line: 300, column: 3, scope: !3436)
!3438 = !DILocation(line: 300, column: 3, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 300, column: 3)
!3440 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 300, column: 3)
!3441 = !DILocation(line: 300, column: 3, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 300, column: 3)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 300, column: 3)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 300, column: 3)
!3445 = !DILocation(line: 301, column: 3, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 301, column: 3)
!3447 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 301, column: 3)
!3448 = !DILocation(line: 301, column: 3, scope: !3447)
!3449 = !DILocation(line: 301, column: 3, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 301, column: 3)
!3451 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 301, column: 3)
!3452 = !DILocation(line: 301, column: 3, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 301, column: 3)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 301, column: 3)
!3455 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 301, column: 3)
!3456 = !DILocation(line: 302, column: 3, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 302, column: 3)
!3458 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 302, column: 3)
!3459 = !DILocation(line: 302, column: 3, scope: !3458)
!3460 = !DILocation(line: 302, column: 3, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 302, column: 3)
!3462 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 302, column: 3)
!3463 = !DILocation(line: 302, column: 3, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 302, column: 3)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 302, column: 3)
!3466 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 302, column: 3)
!3467 = !DILocation(line: 304, column: 10, scope: !3421)
!3468 = !DILocation(line: 295, column: 19, scope: !3421)
!3469 = !DILocation(line: 309, column: 3, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 309, column: 3)
!3471 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 309, column: 3)
!3472 = !DILocation(line: 309, column: 3, scope: !3471)
!3473 = !DILocation(line: 309, column: 3, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 309, column: 3)
!3475 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 309, column: 3)
!3476 = !DILocation(line: 309, column: 3, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 309, column: 3)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 309, column: 3)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 309, column: 3)
!3480 = !DILocation(line: 311, column: 8, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 311, column: 7)
!3482 = !DILocation(line: 0, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 313, column: 9)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 311, column: 51)
!3485 = !DILocation(line: 311, column: 7, scope: !3421)
!3486 = !DILocation(line: 313, column: 9, scope: !3484)
!3487 = !DILocation(line: 314, column: 26, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 313, column: 20)
!3489 = !DILocation(line: 314, column: 7, scope: !3488)
!3490 = !DILocation(line: 315, column: 7, scope: !3488)
!3491 = !DILocation(line: 316, column: 5, scope: !3488)
!3492 = !DILocation(line: 323, column: 7, scope: !3421)
!3493 = !DILocation(line: 324, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 323, column: 18)
!3495 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 323, column: 7)
!3496 = !DILocation(line: 297, column: 9, scope: !3421)
!3497 = !DILocation(line: 325, column: 14, scope: !3494)
!3498 = !DILocation(line: 296, column: 9, scope: !3421)
!3499 = !DILocation(line: 326, column: 3, scope: !3494)
!3500 = !DILocation(line: 0, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 326, column: 10)
!3502 = !DILocation(line: 331, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 331, column: 7)
!3504 = !DILocation(line: 331, column: 46, scope: !3503)
!3505 = !DILocation(line: 331, column: 7, scope: !3421)
!3506 = !DILocation(line: 339, column: 5, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 339, column: 5)
!3508 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 334, column: 10)
!3509 = !DILocation(line: 339, column: 5, scope: !3508)
!3510 = !DILocation(line: 339, column: 5, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 339, column: 5)
!3512 = !DILocation(line: 0, scope: !3484)
!3513 = !DILocation(line: 343, column: 1, scope: !3421)
