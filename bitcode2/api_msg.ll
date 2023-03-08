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
@.str.8 = private unnamed_addr constant [29 x i8] c"blocking connect in progress\00", align 1
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  br i1 %3, label %4, label %5, !dbg !922

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #7, !dbg !923
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !926
  tail call void @ukplat_terminate(i32 3) #8, !dbg !926
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %0, @netconn_aborted, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %6, label %11, label %7, !dbg !932

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i8* %0, @netconn_reset, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %8, label %11, label %9, !dbg !935

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %0, @netconn_closed, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %10, label %11, label %13, !dbg !938

; <label>:11:                                     ; preds = %9, %7, %5
  %12 = phi i8 [ -13, %5 ], [ -14, %7 ], [ -15, %9 ]
  store i8 %12, i8* %1, align 1, !dbg !939, !tbaa !941
  br label %13, !dbg !939

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i32 [ 0, %9 ], [ 1, %11 ], !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  ret i32 %14, !dbg !945
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %8, label %9, label %60, !dbg !971

; <label>:9:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !985
  %11 = load i32, i32* %10, align 8, !dbg !985, !tbaa !987
  %12 = and i32 %11, 8, !dbg !985
  %13 = icmp eq i32 %12, 0, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br i1 %13, label %15, label %14, !dbg !995

; <label>:14:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br label %15, !dbg !996

; <label>:15:                                     ; preds = %14, %9
  %16 = phi i8 [ 46, %14 ], [ 0, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  %17 = trunc i32 %11 to i8, !dbg !998
  %18 = and i8 %17, -16, !dbg !998
  switch i8 %18, label %52 [
    i8 32, label %19
    i8 16, label %40
  ], !dbg !998

; <label>:19:                                     ; preds = %15
  %20 = tail call %struct.udp_pcb* @udp_new_ip_type(i8 zeroext %16) #9, !dbg !999
  %21 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1001, !tbaa !967
  %22 = getelementptr inbounds %struct.netconn, %struct.netconn* %21, i64 0, i32 2, !dbg !1002
  %23 = bitcast %union.anon* %22 to %struct.udp_pcb**, !dbg !1003
  store %struct.udp_pcb* %20, %struct.udp_pcb** %23, align 8, !dbg !1004, !tbaa !941
  %24 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1005, !tbaa !967
  %25 = getelementptr inbounds %struct.netconn, %struct.netconn* %24, i64 0, i32 2, !dbg !1007
  %26 = bitcast %union.anon* %25 to %struct.udp_pcb**, !dbg !1008
  %27 = load %struct.udp_pcb*, %struct.udp_pcb** %26, align 8, !dbg !1008, !tbaa !941
  %28 = icmp eq %struct.udp_pcb* %27, null, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %28, label %53, label %29, !dbg !1010

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.netconn, %struct.netconn* %24, i64 0, i32 0, !dbg !1011
  %31 = load i32, i32* %30, align 8, !dbg !1011, !tbaa !987
  %32 = and i32 %31, 243, !dbg !1011
  %33 = icmp eq i32 %32, 34, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %33, label %34, label %37, !dbg !1014

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %27, i64 0, i32 7, !dbg !1015
  store i8 1, i8* %35, align 8, !dbg !1015, !tbaa !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %36 = load %struct.udp_pcb*, %struct.udp_pcb** %26, align 8, !dbg !1023, !tbaa !941
  br label %37, !dbg !1022

; <label>:37:                                     ; preds = %34, %29
  %38 = phi %struct.udp_pcb* [ %36, %34 ], [ %27, %29 ], !dbg !1023
  %39 = bitcast %struct.netconn* %24 to i8*, !dbg !1024
  tail call void @udp_recv(%struct.udp_pcb* %38, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* nonnull @recv_udp, i8* %39) #9, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  br label %53, !dbg !1026

; <label>:40:                                     ; preds = %15
  %41 = tail call %struct.tcp_pcb* @tcp_new_ip_type(i8 zeroext %16) #9, !dbg !1027
  %42 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1028, !tbaa !967
  %43 = getelementptr inbounds %struct.netconn, %struct.netconn* %42, i64 0, i32 2, !dbg !1029
  %44 = bitcast %union.anon* %43 to %struct.tcp_pcb**, !dbg !1030
  store %struct.tcp_pcb* %41, %struct.tcp_pcb** %44, align 8, !dbg !1031, !tbaa !941
  %45 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1032, !tbaa !967
  %46 = getelementptr inbounds %struct.netconn, %struct.netconn* %45, i64 0, i32 2, !dbg !1034
  %47 = bitcast %union.anon* %46 to %struct.tcp_pcb**, !dbg !1035
  %48 = load %struct.tcp_pcb*, %struct.tcp_pcb** %47, align 8, !dbg !1035, !tbaa !941
  %49 = icmp eq %struct.tcp_pcb* %48, null, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %49, label %53, label %50, !dbg !1037

; <label>:50:                                     ; preds = %40
  %51 = bitcast %struct.netconn* %45 to i8*, !dbg !1048
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %48, i8* %51) #9, !dbg !1049
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %48, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !1050
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %48, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1051
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %48, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !1052
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %48, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br label %53, !dbg !1055

; <label>:52:                                     ; preds = %15
  store i8 -6, i8* %2, align 8, !dbg !1056, !tbaa !962
  br label %59, !dbg !1057

; <label>:53:                                     ; preds = %50, %40, %37, %19
  %54 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !1058, !tbaa !967
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %54, i64 0, i32 2, i32 0, !dbg !1060
  %56 = load %struct.ip_pcb*, %struct.ip_pcb** %55, align 8, !dbg !1060, !tbaa !941
  %57 = icmp eq %struct.ip_pcb* %56, null, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %57, label %58, label %59, !dbg !1062

; <label>:58:                                     ; preds = %53
  store i8 -1, i8* %2, align 8, !dbg !1063, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br label %59, !dbg !1065

; <label>:59:                                     ; preds = %53, %58, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br label %60, !dbg !1068

; <label>:60:                                     ; preds = %59, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  ret void, !dbg !1069
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local %struct.netconn* @netconn_alloc(i32, void (%struct.netconn*, i32, i16)*) local_unnamed_addr #0 !dbg !1070 {
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1082, !tbaa !1083
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %4, label %5, label %7, !dbg !1095, !prof !1096

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno() #9, !dbg !1097
  store i32 12, i32* %6, align 4, !dbg !1099, !tbaa !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br label %51, !dbg !1104

; <label>:7:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  %8 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %3, i64 0, i32 1, !dbg !1116
  %9 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %8, align 8, !dbg !1116, !tbaa !1083
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i64 1, i64 128) #9, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  %11 = bitcast i8* %10 to %struct.netconn*, !dbg !1120
  %12 = icmp eq i8* %10, null, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %12, label %51, label %13, !dbg !1104

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !1123
  store i8 0, i8* %14, align 8, !dbg !1124, !tbaa !1125
  %15 = bitcast i8* %10 to i32*, !dbg !1126
  store i32 %0, i32* %15, align 8, !dbg !1127, !tbaa !987
  %16 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1128
  %17 = bitcast i8* %16 to %struct.tcp_pcb**, !dbg !1129
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %17, align 8, !dbg !1130, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %18 = trunc i32 %0 to i8, !dbg !1131
  %19 = and i8 %18, -16, !dbg !1131
  switch i8 %19, label %20 [
    i8 32, label %21
    i8 16, label %21
  ], !dbg !1131

; <label>:20:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1132
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1138
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1138
  unreachable

; <label>:21:                                     ; preds = %13, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  %22 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !1144
  %23 = bitcast i8* %22 to %struct.sys_mbox_t*, !dbg !1144
  %24 = tail call signext i8 @sys_mbox_new(%struct.sys_mbox_t* nonnull %23, i32 0) #9, !dbg !1146
  %25 = icmp eq i8 %24, 0, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br i1 %25, label %26, label %44, !dbg !1148

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !1149
  %28 = bitcast i8* %27 to %struct.sys_sem_t*, !dbg !1149
  %29 = tail call signext i8 @sys_sem_new(%struct.sys_sem_t* nonnull %28, i8 zeroext 0) #9, !dbg !1151
  %30 = icmp eq i8 %29, 0, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %30, label %32, label %31, !dbg !1153

; <label>:31:                                     ; preds = %26
  tail call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %23) #9, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  br label %44, !dbg !1156

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds i8, i8* %10, i64 80, !dbg !1157
  %34 = bitcast i8* %33 to %struct.sys_mbox_t*, !dbg !1157
  tail call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %34) #9, !dbg !1158
  %35 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1159
  %36 = bitcast i8* %35 to i32*, !dbg !1159
  store i32 0, i32* %36, align 4, !dbg !1160, !tbaa !1161
  %37 = getelementptr inbounds i8, i8* %10, i64 104, !dbg !1162
  %38 = bitcast i8* %37 to i32*, !dbg !1162
  store i32 -1, i32* %38, align 8, !dbg !1163, !tbaa !1164
  %39 = getelementptr inbounds i8, i8* %10, i64 120, !dbg !1165
  %40 = bitcast i8* %39 to void (%struct.netconn*, i32, i16)**, !dbg !1165
  store void (%struct.netconn*, i32, i16)* %1, void (%struct.netconn*, i32, i16)** %40, align 8, !dbg !1166, !tbaa !1167
  %41 = getelementptr inbounds i8, i8* %10, i64 112, !dbg !1168
  %42 = bitcast i8* %41 to %struct.api_msg**, !dbg !1168
  store %struct.api_msg* null, %struct.api_msg** %42, align 8, !dbg !1169, !tbaa !1170
  %43 = getelementptr inbounds i8, i8* %10, i64 108, !dbg !1171
  store i8 0, i8* %43, align 4, !dbg !1172, !tbaa !1173
  br label %51, !dbg !1174

; <label>:44:                                     ; preds = %21, %31
  %45 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1175, !tbaa !1083
  %46 = icmp eq %struct.uk_alloc* %45, null, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %46, label %47, label %48, !dbg !1193, !prof !1096

; <label>:47:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1194
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1194
  unreachable

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %45, i64 0, i32 5, !dbg !1196
  %50 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %49, align 8, !dbg !1196, !tbaa !1083
  tail call void %50(%struct.uk_alloc* nonnull %45, i8* nonnull %10) #9, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br label %51, !dbg !1200

; <label>:51:                                     ; preds = %7, %5, %48, %32
  %52 = phi %struct.netconn* [ null, %48 ], [ %11, %32 ], [ null, %5 ], [ null, %7 ], !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  ret %struct.netconn* %52, !dbg !1204
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
define dso_local void @netconn_free(%struct.netconn*) local_unnamed_addr #0 !dbg !1205 {
  %2 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, !dbg !1209
  %3 = bitcast %union.anon* %2 to %struct.tcp_pcb**, !dbg !1209
  %4 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8, !dbg !1209, !tbaa !941
  %5 = icmp eq %struct.tcp_pcb* %4, null, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br i1 %5, label %7, label %6, !dbg !1212

; <label>:6:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1213
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1216
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1216
  unreachable

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1220
  %9 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %8) #9, !dbg !1220
  %10 = icmp eq i32 %9, 0, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br i1 %10, label %12, label %11, !dbg !1223

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1224
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1227
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1227
  unreachable

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 6, !dbg !1231
  %14 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %13) #9, !dbg !1231
  %15 = icmp eq i32 %14, 0, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %15, label %17, label %16, !dbg !1234

; <label>:16:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1235
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1238
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1238
  unreachable

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1242
  tail call void @sys_sem_free(%struct.sys_sem_t* nonnull %18) #9, !dbg !1243
  tail call void @sys_sem_set_invalid(%struct.sys_sem_t* nonnull %18) #9, !dbg !1244
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1245, !tbaa !1083
  %20 = icmp eq %struct.uk_alloc* %19, null, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %20, label %21, label %22, !dbg !1251, !prof !1096

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1252
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1252
  unreachable

; <label>:22:                                     ; preds = %17
  %23 = bitcast %struct.netconn* %0 to i8*, !dbg !1253
  %24 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %19, i64 0, i32 5, !dbg !1256
  %25 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %24, align 8, !dbg !1256, !tbaa !1083
  tail call void %25(%struct.uk_alloc* nonnull %19, i8* %23) #9, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  ret void, !dbg !1260
}

; Function Attrs: noredzone
declare dso_local i32 @sys_mbox_valid(%struct.sys_mbox_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_sem_free(%struct.sys_sem_t*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @sys_sem_set_invalid(%struct.sys_sem_t*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_delconn(i8*) local_unnamed_addr #0 !dbg !1261 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1268
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1268, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 1, !dbg !1269
  %5 = load i32, i32* %4, align 4, !dbg !1269, !tbaa !1161
  %6 = icmp eq i32 %5, 0, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  br i1 %6, label %7, label %8, !dbg !1271

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br label %32

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1271
  %10 = load i32, i32* %9, align 8, !dbg !1271, !tbaa !987
  %11 = and i32 %10, 240, !dbg !1271
  %12 = icmp eq i32 %11, 16, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  br i1 %12, label %14, label %13, !dbg !1277

; <label>:13:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1278
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1281
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1281
  unreachable

; <label>:14:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  %15 = and i32 %5, -2, !dbg !1274
  %16 = icmp eq i32 %15, 2, !dbg !1274
  br i1 %16, label %17, label %24, !dbg !1274

; <label>:17:                                     ; preds = %14
  %18 = icmp eq i32 %5, 3, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br i1 %18, label %19, label %32, !dbg !1276

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 8, !dbg !1286
  %21 = load i8, i8* %20, align 4, !dbg !1286, !tbaa !1173
  %22 = and i8 %21, 4, !dbg !1286
  %23 = icmp eq i8 %22, 0, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %23, label %24, label %26, !dbg !1287

; <label>:24:                                     ; preds = %14, %19
  %25 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1288
  store i8 -5, i8* %25, align 8, !dbg !1290, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br label %95, !dbg !1291

; <label>:26:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  %27 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 8, !dbg !1292
  %28 = load i8, i8* %27, align 4, !dbg !1292, !tbaa !1173
  %29 = and i8 %28, 4, !dbg !1292
  %30 = icmp eq i8 %29, 0, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %30, label %31, label %33, !dbg !1296

; <label>:31:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1297
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1300
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1300
  unreachable

; <label>:32:                                     ; preds = %17, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  br label %33, !dbg !1304

; <label>:33:                                     ; preds = %32, %26
  %34 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1304
  store i8 0, i8* %34, align 8, !dbg !1305, !tbaa !962
  tail call fastcc void @netconn_drain(%struct.netconn* %3) #7, !dbg !1306
  %35 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1307, !tbaa !967
  %36 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i64 0, i32 2, !dbg !1309
  %37 = bitcast %union.anon* %36 to %struct.tcp_pcb**, !dbg !1310
  %38 = load %struct.tcp_pcb*, %struct.tcp_pcb** %37, align 8, !dbg !1310, !tbaa !941
  %39 = icmp eq %struct.tcp_pcb* %38, null, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br i1 %39, label %82, label %40, !dbg !1312

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i64 0, i32 0, !dbg !1313
  %42 = load i32, i32* %41, align 8, !dbg !1313, !tbaa !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  %43 = trunc i32 %42 to i8, !dbg !1315
  %44 = and i8 %43, -16, !dbg !1315
  switch i8 %44, label %79 [
    i8 32, label %45
    i8 16, label %53
  ], !dbg !1315

; <label>:45:                                     ; preds = %40
  %46 = bitcast %union.anon* %36 to %struct.udp_pcb**, !dbg !1316
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %38, i64 0, i32 16, !dbg !1318
  %48 = bitcast i32* %47 to i8**, !dbg !1318
  store i8* null, i8** %48, align 8, !dbg !1319, !tbaa !1320
  %49 = load %struct.udp_pcb*, %struct.udp_pcb** %46, align 8, !dbg !1321, !tbaa !941
  tail call void @udp_remove(%struct.udp_pcb* %49) #9, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %50 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1324, !tbaa !967
  %51 = getelementptr inbounds %struct.netconn, %struct.netconn* %50, i64 0, i32 2, !dbg !1325
  %52 = bitcast %union.anon* %51 to %struct.tcp_pcb**, !dbg !1326
  br label %79, !dbg !1323

; <label>:53:                                     ; preds = %40
  %54 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i64 0, i32 9, !dbg !1327
  %55 = load %struct.api_msg*, %struct.api_msg** %54, align 8, !dbg !1327, !tbaa !1170
  %56 = icmp eq %struct.api_msg* %55, null, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  br i1 %56, label %58, label %57, !dbg !1330

; <label>:57:                                     ; preds = %53
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1331
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1334
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1334
  unreachable

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i64 0, i32 1, !dbg !1338
  store i32 4, i32* %59, align 4, !dbg !1339, !tbaa !1161
  %60 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1340
  store i8 3, i8* %60, align 8, !dbg !1341, !tbaa !941
  %61 = bitcast %struct.api_msg** %54 to i8**, !dbg !1342
  store i8* %0, i8** %61, align 8, !dbg !1342, !tbaa !1170
  %62 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* nonnull %35, i8 zeroext 0) #7, !dbg !1343
  %63 = icmp eq i8 %62, 0, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  br i1 %63, label %99, label %64, !dbg !1346

; <label>:64:                                     ; preds = %58
  %65 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1347, !tbaa !967
  %66 = getelementptr inbounds %struct.netconn, %struct.netconn* %65, i64 0, i32 1, !dbg !1347
  %67 = load i32, i32* %66, align 4, !dbg !1347, !tbaa !1161
  %68 = icmp eq i32 %67, 4, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %68, label %70, label %69, !dbg !1351

; <label>:69:                                     ; preds = %64
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1352
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1355
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1355
  unreachable

; <label>:70:                                     ; preds = %64
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1359
  %71 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1360, !tbaa !967
  %72 = getelementptr inbounds %struct.netconn, %struct.netconn* %71, i64 0, i32 4, !dbg !1360
  %73 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %72, i32 0) #9, !dbg !1361
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1362
  %74 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1363, !tbaa !967
  %75 = getelementptr inbounds %struct.netconn, %struct.netconn* %74, i64 0, i32 1, !dbg !1363
  %76 = load i32, i32* %75, align 4, !dbg !1363, !tbaa !1161
  %77 = icmp eq i32 %76, 0, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br i1 %77, label %99, label %78, !dbg !1366

; <label>:78:                                     ; preds = %70
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1367
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1370
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1370
  unreachable

; <label>:79:                                     ; preds = %40, %45
  %80 = phi %struct.tcp_pcb** [ %37, %40 ], [ %52, %45 ], !dbg !1326
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %80, align 8, !dbg !1374, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  %81 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1376, !tbaa !967
  br label %82, !dbg !1375

; <label>:82:                                     ; preds = %33, %79
  %83 = phi %struct.netconn* [ %35, %33 ], [ %81, %79 ], !dbg !1376
  %84 = getelementptr inbounds %struct.netconn, %struct.netconn* %83, i64 0, i32 10, !dbg !1376
  %85 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %84, align 8, !dbg !1376, !tbaa !1167
  %86 = icmp eq void (%struct.netconn*, i32, i16)* %85, null, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br i1 %86, label %87, label %88, !dbg !1378

; <label>:87:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  br label %95, !dbg !1379

; <label>:88:                                     ; preds = %82
  tail call void %85(%struct.netconn* %83, i32 0, i16 zeroext 0) #9, !dbg !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %89 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1382, !tbaa !967
  %90 = getelementptr inbounds %struct.netconn, %struct.netconn* %89, i64 0, i32 10
  %91 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %90, align 8, !dbg !1382, !tbaa !1167
  %92 = icmp eq void (%struct.netconn*, i32, i16)* %91, null, !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  br i1 %92, label %95, label %93, !dbg !1379

; <label>:93:                                     ; preds = %88
  tail call void %91(%struct.netconn* %89, i32 2, i16 zeroext 0) #9, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  %94 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1386, !tbaa !967
  br label %95, !dbg !1384

; <label>:95:                                     ; preds = %87, %88, %93, %24
  %96 = phi %struct.netconn* [ %89, %88 ], [ %94, %93 ], [ %3, %24 ], [ %83, %87 ], !dbg !1386
  %97 = getelementptr inbounds %struct.netconn, %struct.netconn* %96, i64 0, i32 4, !dbg !1386
  %98 = tail call i32 @sys_sem_valid(%struct.sys_sem_t* nonnull %97) #9, !dbg !1388
  br label %99, !dbg !1389

; <label>:99:                                     ; preds = %70, %58, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  ret void, !dbg !1389
}

; Function Attrs: noredzone nounwind
define internal fastcc void @netconn_drain(%struct.netconn*) unnamed_addr #0 !dbg !1391 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !1411
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !1411
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1412
  %5 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %4) #9, !dbg !1413
  %6 = icmp eq i32 %5, 0, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  br i1 %6, label %36, label %7, !dbg !1414

; <label>:7:                                      ; preds = %1
  %8 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %4, i8** nonnull %2) #9, !dbg !1416
  %9 = icmp eq i32 %8, -1, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %9, label %35, label %10, !dbg !1418

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0
  %12 = bitcast i8** %2 to %struct.netbuf**
  br label %13, !dbg !1418

; <label>:13:                                     ; preds = %10, %32
  %14 = load i32, i32* %11, align 8, !dbg !1419, !tbaa !987
  %15 = and i32 %14, 240, !dbg !1419
  %16 = icmp eq i32 %15, 16, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br i1 %16, label %17, label %30, !dbg !1421

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %2, align 8, !dbg !1422, !tbaa !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %19 = icmp eq i8* %18, @netconn_aborted, !dbg !1427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  %20 = bitcast i8* %18 to %struct.pbuf*, !dbg !1428
  br i1 %19, label %25, label %21, !dbg !1428

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8* %18, @netconn_reset, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br i1 %22, label %25, label %23, !dbg !1430

; <label>:23:                                     ; preds = %21
  %24 = icmp eq i8* %18, @netconn_closed, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br i1 %24, label %26, label %27, !dbg !1432

; <label>:25:                                     ; preds = %21, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br label %26, !dbg !1434

; <label>:26:                                     ; preds = %25, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br label %29, !dbg !1435

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  %28 = call zeroext i8 @pbuf_free(%struct.pbuf* %20) #9, !dbg !1436
  br label %29, !dbg !1438

; <label>:29:                                     ; preds = %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br label %32, !dbg !1440

; <label>:30:                                     ; preds = %13
  %31 = load %struct.netbuf*, %struct.netbuf** %12, align 8, !dbg !1441, !tbaa !1083
  call void @netbuf_delete(%struct.netbuf* %31) #9, !dbg !1443
  br label %32

; <label>:32:                                     ; preds = %30, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  %33 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %4, i8** nonnull %2) #9, !dbg !1416
  %34 = icmp eq i32 %33, -1, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %34, label %35, label %13, !dbg !1418, !llvm.loop !1444

; <label>:35:                                     ; preds = %32, %7
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %4) #9, !dbg !1446
  call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %4) #9, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br label %36, !dbg !1448

; <label>:36:                                     ; preds = %1, %35
  %37 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 6, !dbg !1449
  %38 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %37) #9, !dbg !1450
  %39 = icmp eq i32 %38, 0, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %39, label %64, label %40, !dbg !1451

; <label>:40:                                     ; preds = %36
  %41 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %37, i8** nonnull %2) #9, !dbg !1452
  %42 = icmp eq i32 %41, -1, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %42, label %63, label %43, !dbg !1454

; <label>:43:                                     ; preds = %40, %60
  %44 = load i8*, i8** %2, align 8, !dbg !1455, !tbaa !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %45 = icmp eq i8* %44, @netconn_aborted, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  %46 = bitcast i8* %44 to %struct.netconn*, !dbg !1460
  br i1 %45, label %51, label %47, !dbg !1460

; <label>:47:                                     ; preds = %43
  %48 = icmp eq i8* %44, @netconn_reset, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %48, label %51, label %49, !dbg !1462

; <label>:49:                                     ; preds = %47
  %50 = icmp eq i8* %44, @netconn_closed, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %50, label %52, label %53, !dbg !1464

; <label>:51:                                     ; preds = %47, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br label %52, !dbg !1466

; <label>:52:                                     ; preds = %51, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br label %60, !dbg !1467

; <label>:53:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  call fastcc void @netconn_drain(%struct.netconn* %46) #7, !dbg !1469
  %54 = getelementptr inbounds i8, i8* %44, i64 8, !dbg !1470
  %55 = bitcast i8* %54 to %struct.tcp_pcb**, !dbg !1472
  %56 = load %struct.tcp_pcb*, %struct.tcp_pcb** %55, align 8, !dbg !1472, !tbaa !941
  %57 = icmp eq %struct.tcp_pcb* %56, null, !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %57, label %59, label %58, !dbg !1474

; <label>:58:                                     ; preds = %53
  call void @tcp_abort(%struct.tcp_pcb* nonnull %56) #9, !dbg !1475
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %55, align 8, !dbg !1477, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br label %59, !dbg !1478

; <label>:59:                                     ; preds = %53, %58
  call void @netconn_free(%struct.netconn* nonnull %46) #7, !dbg !1479
  br label %60, !dbg !1480

; <label>:60:                                     ; preds = %52, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  %61 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %37, i8** nonnull %2) #9, !dbg !1452
  %62 = icmp eq i32 %61, -1, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %62, label %63, label %43, !dbg !1454, !llvm.loop !1482

; <label>:63:                                     ; preds = %60, %40
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %37) #9, !dbg !1484
  call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %37) #9, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  br label %64, !dbg !1486

; <label>:64:                                     ; preds = %36, %63
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  ret void, !dbg !1487
}

; Function Attrs: noredzone
declare dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn*, i8 zeroext) unnamed_addr #0 !dbg !1488 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br i1 %3, label %4, label %5, !dbg !1510

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1511
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1514
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1514
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1518
  %7 = load i32, i32* %6, align 8, !dbg !1518, !tbaa !987
  %8 = and i32 %7, 240, !dbg !1518
  %9 = icmp eq i32 %8, 16, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br i1 %9, label %11, label %10, !dbg !1521

; <label>:10:                                     ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1522
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1525
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1525
  unreachable

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 1, !dbg !1529
  %13 = load i32, i32* %12, align 4, !dbg !1529, !tbaa !1161
  %14 = icmp eq i32 %13, 4, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  br i1 %14, label %16, label %15, !dbg !1532

; <label>:15:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1533
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1536
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1536
  unreachable

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, !dbg !1540
  %18 = bitcast %union.anon* %17 to %struct.tcp_pcb**, !dbg !1540
  %19 = load %struct.tcp_pcb*, %struct.tcp_pcb** %18, align 8, !dbg !1540, !tbaa !941
  %20 = icmp eq %struct.tcp_pcb* %19, null, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br i1 %20, label %21, label %22, !dbg !1543

; <label>:21:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !1544
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1547
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1547
  unreachable

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 9, !dbg !1551
  %24 = load %struct.api_msg*, %struct.api_msg** %23, align 8, !dbg !1551, !tbaa !1170
  %25 = icmp eq %struct.api_msg* %24, null, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  br i1 %25, label %26, label %27, !dbg !1554

; <label>:26:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1555
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1558
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1558
  unreachable

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %24, i64 0, i32 2, !dbg !1563
  %29 = bitcast %union.anon.1* %28 to i8*, !dbg !1564
  %30 = load i8, i8* %29, align 8, !dbg !1564, !tbaa !941
  %31 = and i8 %30, 1, !dbg !1566
  %32 = and i8 %30, 2, !dbg !1568
  %33 = icmp eq i8 %30, 3, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  br i1 %33, label %52, label %34, !dbg !1572

; <label>:34:                                     ; preds = %27
  %35 = icmp eq i8 %31, 0, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %35, label %44, label %36, !dbg !1575

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 8, !dbg !1576
  %38 = load i32, i32* %37, align 8, !dbg !1576, !tbaa !1577
  %39 = icmp eq i32 %38, 5, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br i1 %39, label %52, label %40, !dbg !1580

; <label>:40:                                     ; preds = %36
  %41 = icmp eq i32 %38, 6, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %41, label %52, label %42, !dbg !1582

; <label>:42:                                     ; preds = %40
  %43 = icmp eq i32 %38, 8, !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  br i1 %43, label %52, label %44, !dbg !1584

; <label>:44:                                     ; preds = %34, %42
  %45 = icmp eq i8 %32, 0, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  br i1 %45, label %51, label %46, !dbg !1587

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 12, !dbg !1588
  %48 = load i16, i16* %47, align 2, !dbg !1588, !tbaa !1589
  %49 = and i16 %48, 16, !dbg !1590
  %50 = icmp eq i16 %49, 0, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %50, label %51, label %52, !dbg !1592

; <label>:51:                                     ; preds = %44, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %53, !dbg !1594

; <label>:52:                                     ; preds = %46, %36, %40, %42, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %19, i8* null) #9, !dbg !1597
  br label %53, !dbg !1600

; <label>:53:                                     ; preds = %51, %52
  %54 = phi i1 [ true, %52 ], [ false, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i64 0, i32 8, !dbg !1602
  %56 = load i32, i32* %55, align 8, !dbg !1602, !tbaa !1577
  %57 = icmp eq i32 %56, 1, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  br i1 %57, label %66, label %58, !dbg !1605

; <label>:58:                                     ; preds = %53
  %59 = icmp eq i8 %31, 0, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  br i1 %59, label %61, label %60, !dbg !1609

; <label>:60:                                     ; preds = %58
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* null) #9, !dbg !1610
  tail call void @tcp_accept(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i8)* null) #9, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br label %61, !dbg !1613

; <label>:61:                                     ; preds = %58, %60
  %62 = icmp eq i8 %32, 0, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br i1 %62, label %64, label %63, !dbg !1616

; <label>:63:                                     ; preds = %61
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i16)* null) #9, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br label %64, !dbg !1619

; <label>:64:                                     ; preds = %61, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %54, label %65, label %69, !dbg !1620

; <label>:65:                                     ; preds = %64
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*)* null, i8 zeroext 0) #9, !dbg !1621
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %19, void (i8*, i8)* null) #9, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  br label %67, !dbg !1626

; <label>:66:                                     ; preds = %53
  tail call void @tcp_accept(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i8)* null) #9, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  br i1 %54, label %67, label %70, !dbg !1626

; <label>:67:                                     ; preds = %65, %66
  %68 = tail call signext i8 @tcp_close(%struct.tcp_pcb* nonnull %19) #9, !dbg !1630
  br label %74, !dbg !1635

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  br label %70

; <label>:70:                                     ; preds = %69, %66
  %71 = zext i8 %31 to i32, !dbg !1636
  %72 = zext i8 %32 to i32, !dbg !1638
  %73 = tail call signext i8 @tcp_shutdown(%struct.tcp_pcb* nonnull %19, i32 %71, i32 %72) #9, !dbg !1639
  br label %74

; <label>:74:                                     ; preds = %70, %67
  %75 = phi i1 [ true, %67 ], [ false, %70 ]
  %76 = phi i8 [ %68, %67 ], [ %73, %70 ], !dbg !1640
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = icmp eq i8 %76, 0, !dbg !1641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  br i1 %77, label %89, label %78, !dbg !1643

; <label>:78:                                     ; preds = %74
  %79 = icmp eq i8 %76, -1, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br i1 %79, label %80, label %89, !dbg !1647

; <label>:80:                                     ; preds = %78
  %81 = load %struct.api_msg*, %struct.api_msg** %23, align 8, !dbg !1648, !tbaa !1170
  %82 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %81, i64 0, i32 2, !dbg !1651
  %83 = bitcast %union.anon.1* %82 to %struct.anon.7*, !dbg !1652
  %84 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %83, i64 0, i32 1, !dbg !1653
  %85 = load i8, i8* %84, align 1, !dbg !1653, !tbaa !941
  %86 = icmp eq i8 %85, 0, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br i1 %86, label %87, label %122, !dbg !1655

; <label>:87:                                     ; preds = %80
  br i1 %75, label %88, label %91, !dbg !1657

; <label>:88:                                     ; preds = %87
  tail call void @tcp_abort(%struct.tcp_pcb* nonnull %19) #9, !dbg !1659
  br label %89, !dbg !1662

; <label>:89:                                     ; preds = %78, %74, %88
  %90 = phi i8 [ 0, %88 ], [ 0, %74 ], [ %76, %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %91, !dbg !1663

; <label>:91:                                     ; preds = %89, %87
  %92 = phi i8 [ -1, %87 ], [ %90, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  %93 = load %struct.api_msg*, %struct.api_msg** %23, align 8, !dbg !1664, !tbaa !1170
  %94 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %93, i64 0, i32 0, !dbg !1664
  %95 = load %struct.netconn*, %struct.netconn** %94, align 8, !dbg !1664, !tbaa !967
  %96 = getelementptr inbounds %struct.netconn, %struct.netconn* %95, i64 0, i32 4, !dbg !1664
  %97 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %93, i64 0, i32 1, !dbg !1666
  store i8 %92, i8* %97, align 8, !dbg !1667, !tbaa !962
  store %struct.api_msg* null, %struct.api_msg** %23, align 8, !dbg !1668, !tbaa !1170
  store i32 0, i32* %12, align 4, !dbg !1669, !tbaa !1161
  %98 = icmp eq i8 %92, 0, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  br i1 %98, label %99, label %119, !dbg !1672

; <label>:99:                                     ; preds = %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  br i1 %75, label %100, label %105, !dbg !1673

; <label>:100:                                    ; preds = %99
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %18, align 8, !dbg !1675, !tbaa !941
  %101 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1678
  %102 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %101, align 8, !dbg !1678, !tbaa !1167
  %103 = icmp eq void (%struct.netconn*, i32, i16)* %102, null, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br i1 %103, label %105, label %104, !dbg !1680

; <label>:104:                                    ; preds = %100
  tail call void %102(%struct.netconn* nonnull %0, i32 4, i16 zeroext 0) #9, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  br label %105, !dbg !1681

; <label>:105:                                    ; preds = %100, %104, %99
  %106 = icmp eq i8 %31, 0, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1685
  br i1 %106, label %112, label %107, !dbg !1685

; <label>:107:                                    ; preds = %105
  %108 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1686
  %109 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %108, align 8, !dbg !1686, !tbaa !1167
  %110 = icmp eq void (%struct.netconn*, i32, i16)* %109, null, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  br i1 %110, label %112, label %111, !dbg !1689

; <label>:111:                                    ; preds = %107
  tail call void %109(%struct.netconn* nonnull %0, i32 0, i16 zeroext 0) #9, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  br label %112, !dbg !1690

; <label>:112:                                    ; preds = %107, %105, %111
  %113 = icmp eq i8 %32, 0, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %113, label %119, label %114, !dbg !1694

; <label>:114:                                    ; preds = %112
  %115 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1695
  %116 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %115, align 8, !dbg !1695, !tbaa !1167
  %117 = icmp eq void (%struct.netconn*, i32, i16)* %116, null, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  br i1 %117, label %119, label %118, !dbg !1698

; <label>:118:                                    ; preds = %114
  tail call void %116(%struct.netconn* nonnull %0, i32 2, i16 zeroext 0) #9, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br label %119, !dbg !1699

; <label>:119:                                    ; preds = %114, %112, %118, %91
  %120 = icmp eq i8 %1, 0, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  br i1 %120, label %133, label %121, !dbg !1703

; <label>:121:                                    ; preds = %119
  tail call void @sys_sem_signal(%struct.sys_sem_t* nonnull %96) #9, !dbg !1704
  br label %131, !dbg !1706

; <label>:122:                                    ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  %123 = load i32, i32* %55, align 8, !dbg !1708, !tbaa !1577
  %124 = icmp eq i32 %123, 1, !dbg !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br i1 %124, label %125, label %126, !dbg !1713

; <label>:125:                                    ; preds = %122
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1714
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1717
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1717
  unreachable

; <label>:126:                                    ; preds = %122
  %127 = icmp eq i8 %32, 0, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br i1 %127, label %129, label %128, !dbg !1723

; <label>:128:                                    ; preds = %126
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  br label %129, !dbg !1726

; <label>:129:                                    ; preds = %128, %126
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %19, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 1) #9, !dbg !1727
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %19, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1728
  %130 = bitcast %struct.netconn* %0 to i8*, !dbg !1729
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %19, i8* %130) #9, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br label %131, !dbg !1732

; <label>:131:                                    ; preds = %129, %121
  %132 = phi i8 [ 0, %121 ], [ -1, %129 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br label %133

; <label>:133:                                    ; preds = %131, %119
  %134 = phi i8 [ 0, %119 ], [ %132, %131 ], !dbg !1656
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  ret i8 %134, !dbg !1735
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
define dso_local void @lwip_netconn_do_bind(i8* nocapture) local_unnamed_addr #0 !dbg !1736 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1743
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1743, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !1745
  %5 = bitcast %union.anon* %4 to %struct.tcp_pcb**, !dbg !1746
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8, !dbg !1746, !tbaa !941
  %7 = icmp eq %struct.tcp_pcb* %6, null, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  %8 = bitcast %struct.tcp_pcb* %6 to %struct.udp_pcb*, !dbg !1748
  br i1 %7, label %30, label %9, !dbg !1748

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1749
  %11 = load i32, i32* %10, align 8, !dbg !1749, !tbaa !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  %12 = trunc i32 %11 to i8, !dbg !1751
  %13 = and i8 %12, -16, !dbg !1751
  switch i8 %13, label %30 [
    i8 32, label %14
    i8 16, label %22
  ], !dbg !1751

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1752
  %16 = bitcast i8* %15 to %struct.ip_addr**, !dbg !1752
  %17 = load %struct.ip_addr*, %struct.ip_addr** %16, align 8, !dbg !1752, !tbaa !941
  %18 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1754
  %19 = bitcast i8* %18 to i16*, !dbg !1754
  %20 = load i16, i16* %19, align 8, !dbg !1754, !tbaa !941
  %21 = tail call signext i8 @udp_bind(%struct.udp_pcb* %8, %struct.ip_addr* %17, i16 zeroext %20) #9, !dbg !1755
  br label %30, !dbg !1757

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1758
  %24 = bitcast i8* %23 to %struct.ip_addr**, !dbg !1758
  %25 = load %struct.ip_addr*, %struct.ip_addr** %24, align 8, !dbg !1758, !tbaa !941
  %26 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1759
  %27 = bitcast i8* %26 to i16*, !dbg !1759
  %28 = load i16, i16* %27, align 8, !dbg !1759, !tbaa !941
  %29 = tail call signext i8 @tcp_bind(%struct.tcp_pcb* nonnull %6, %struct.ip_addr* %25, i16 zeroext %28) #9, !dbg !1760
  br label %30, !dbg !1761

; <label>:30:                                     ; preds = %1, %9, %14, %22
  %31 = phi i8 [ %29, %22 ], [ %21, %14 ], [ -6, %9 ], [ -6, %1 ], !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1764
  store i8 %31, i8* %32, align 8, !dbg !1765, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  ret void, !dbg !1766
}

; Function Attrs: noredzone
declare dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_bind(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_bind_if(i8* nocapture) local_unnamed_addr #0 !dbg !1767 {
  %2 = getelementptr inbounds i8, i8* %0, i64 26, !dbg !1842
  %3 = load i8, i8* %2, align 2, !dbg !1842, !tbaa !941
  %4 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %3) #9, !dbg !1843
  %5 = icmp eq %struct.netif* %4, null, !dbg !1845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br i1 %5, label %21, label %6, !dbg !1847

; <label>:6:                                      ; preds = %1
  %7 = bitcast i8* %0 to %struct.netconn**, !dbg !1849
  %8 = load %struct.netconn*, %struct.netconn** %7, align 8, !dbg !1849, !tbaa !967
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %8, i64 0, i32 2, !dbg !1850
  %10 = bitcast %union.anon* %9 to %struct.tcp_pcb**, !dbg !1851
  %11 = load %struct.tcp_pcb*, %struct.tcp_pcb** %10, align 8, !dbg !1851, !tbaa !941
  %12 = icmp eq %struct.tcp_pcb* %11, null, !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1853
  %13 = bitcast %struct.tcp_pcb* %11 to %struct.udp_pcb*, !dbg !1853
  br i1 %12, label %21, label %14, !dbg !1853

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %8, i64 0, i32 0, !dbg !1855
  %16 = load i32, i32* %15, align 8, !dbg !1855, !tbaa !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  %17 = trunc i32 %16 to i8, !dbg !1857
  %18 = and i8 %17, -16, !dbg !1857
  switch i8 %18, label %21 [
    i8 32, label %19
    i8 16, label %20
  ], !dbg !1857

; <label>:19:                                     ; preds = %14
  tail call void @udp_bind_netif(%struct.udp_pcb* %13, %struct.netif* nonnull %4) #9, !dbg !1858
  br label %21, !dbg !1860

; <label>:20:                                     ; preds = %14
  tail call void @tcp_bind_netif(%struct.tcp_pcb* nonnull %11, %struct.netif* nonnull %4) #9, !dbg !1861
  br label %21, !dbg !1862

; <label>:21:                                     ; preds = %1, %6, %14, %19, %20
  %22 = phi i8 [ 0, %20 ], [ 0, %19 ], [ -6, %14 ], [ -6, %6 ], [ -6, %1 ], !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1865
  store i8 %22, i8* %23, align 8, !dbg !1866, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  ret void, !dbg !1867
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_bind_netif(%struct.udp_pcb*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_bind_netif(%struct.tcp_pcb*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_connect(i8*) local_unnamed_addr #0 !dbg !1868 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !1884
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1884, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !1885
  %5 = bitcast %union.anon* %4 to %struct.tcp_pcb**, !dbg !1886
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8, !dbg !1886, !tbaa !941
  %7 = icmp eq %struct.tcp_pcb* %6, null, !dbg !1887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1888
  %8 = bitcast %struct.tcp_pcb* %6 to %struct.udp_pcb*, !dbg !1888
  br i1 %7, label %65, label %9, !dbg !1888

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !1889
  %11 = load i32, i32* %10, align 8, !dbg !1889, !tbaa !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  %12 = trunc i32 %11 to i8, !dbg !1890
  %13 = and i8 %12, -16, !dbg !1890
  switch i8 %13, label %64 [
    i8 32, label %14
    i8 16, label %22
  ], !dbg !1890

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1891
  %16 = bitcast i8* %15 to %struct.ip_addr**, !dbg !1891
  %17 = load %struct.ip_addr*, %struct.ip_addr** %16, align 8, !dbg !1891, !tbaa !941
  %18 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1892
  %19 = bitcast i8* %18 to i16*, !dbg !1892
  %20 = load i16, i16* %19, align 8, !dbg !1892, !tbaa !941
  %21 = tail call signext i8 @udp_connect(%struct.udp_pcb* %8, %struct.ip_addr* %17, i16 zeroext %20) #9, !dbg !1893
  br label %65, !dbg !1895

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 1, !dbg !1896
  %24 = load i32, i32* %23, align 4, !dbg !1896, !tbaa !1161
  %25 = icmp eq i32 %24, 3, !dbg !1897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1898
  br i1 %25, label %65, label %26, !dbg !1898

; <label>:26:                                     ; preds = %22
  %27 = icmp eq i32 %24, 0, !dbg !1899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  br i1 %27, label %28, label %65, !dbg !1900

; <label>:28:                                     ; preds = %26
  %29 = bitcast %struct.netconn* %3 to i8*, !dbg !1904
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %6, i8* %29) #9, !dbg !1905
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %6, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !1906
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %6, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !1907
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %6, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !1908
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %6, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  %30 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1911, !tbaa !967
  %31 = getelementptr inbounds %struct.netconn, %struct.netconn* %30, i64 0, i32 2, !dbg !1912
  %32 = bitcast %union.anon* %31 to %struct.tcp_pcb**, !dbg !1913
  %33 = load %struct.tcp_pcb*, %struct.tcp_pcb** %32, align 8, !dbg !1913, !tbaa !941
  %34 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1914
  %35 = bitcast i8* %34 to %struct.ip_addr**, !dbg !1914
  %36 = load %struct.ip_addr*, %struct.ip_addr** %35, align 8, !dbg !1914, !tbaa !941
  %37 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1915
  %38 = bitcast i8* %37 to i16*, !dbg !1915
  %39 = load i16, i16* %38, align 8, !dbg !1915, !tbaa !941
  %40 = tail call signext i8 @tcp_connect(%struct.tcp_pcb* %33, %struct.ip_addr* %36, i16 zeroext %39, i8 (i8*, %struct.tcp_pcb*, i8)* nonnull @lwip_netconn_do_connected) #9, !dbg !1916
  %41 = icmp eq i8 %40, 0, !dbg !1917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  br i1 %41, label %42, label %67, !dbg !1918

; <label>:42:                                     ; preds = %28
  %43 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1919, !tbaa !967
  %44 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 8, !dbg !1919
  %45 = load i8, i8* %44, align 4, !dbg !1919, !tbaa !1173
  %46 = and i8 %45, 2, !dbg !1919
  %47 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 1, !dbg !1921
  store i32 3, i32* %47, align 4, !dbg !1922, !tbaa !1161
  %48 = icmp eq i8 %46, 0, !dbg !1923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  br i1 %48, label %51, label %49, !dbg !1926

; <label>:49:                                     ; preds = %42
  %50 = or i8 %45, 4, !dbg !1927
  store i8 %50, i8* %44, align 4, !dbg !1927, !tbaa !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  br label %65

; <label>:51:                                     ; preds = %42
  %52 = and i8 %45, -5, !dbg !1933
  store i8 %52, i8* %44, align 4, !dbg !1933, !tbaa !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  %53 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 9, !dbg !1936
  %54 = bitcast %struct.api_msg** %53 to i8**, !dbg !1939
  store i8* %0, i8** %54, align 8, !dbg !1939, !tbaa !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1942
  %55 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1943, !tbaa !967
  %56 = getelementptr inbounds %struct.netconn, %struct.netconn* %55, i64 0, i32 4, !dbg !1943
  %57 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %56, i32 0) #9, !dbg !1944
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !1945
  %58 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !1946, !tbaa !967
  %59 = getelementptr inbounds %struct.netconn, %struct.netconn* %58, i64 0, i32 1, !dbg !1946
  %60 = load i32, i32* %59, align 4, !dbg !1946, !tbaa !1161
  %61 = icmp eq i32 %60, 3, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  br i1 %61, label %62, label %63, !dbg !1949

; <label>:62:                                     ; preds = %51
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1950
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1953
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1953
  unreachable

; <label>:63:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  br label %70

; <label>:64:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1958
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1963
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1963
  unreachable

; <label>:65:                                     ; preds = %26, %22, %1, %14, %49
  %66 = phi i8 [ -5, %49 ], [ %21, %14 ], [ -15, %1 ], [ -9, %22 ], [ -10, %26 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %67, !dbg !1967

; <label>:67:                                     ; preds = %65, %28
  %68 = phi i8 [ %40, %28 ], [ %66, %65 ], !dbg !1968
  %69 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1967
  store i8 %68, i8* %69, align 8, !dbg !1969, !tbaa !962
  br label %70, !dbg !1970

; <label>:70:                                     ; preds = %63, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  ret void, !dbg !1970
}

; Function Attrs: noredzone
declare dso_local signext i8 @udp_connect(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_connect(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @lwip_netconn_do_connected(i8*, %struct.tcp_pcb* nocapture readnone, i8 signext) #0 !dbg !1971 {
  %4 = bitcast i8* %0 to %struct.netconn*, !dbg !1983
  %5 = icmp eq i8* %0, null, !dbg !1985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  br i1 %5, label %61, label %6, !dbg !1987

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1988
  %8 = bitcast i8* %7 to i32*, !dbg !1988
  %9 = load i32, i32* %8, align 4, !dbg !1988, !tbaa !1161
  %10 = icmp eq i32 %9, 3, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  br i1 %10, label %12, label %11, !dbg !1991

; <label>:11:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !1992
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1995
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1995
  unreachable

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !1999
  %14 = bitcast i8* %13 to %struct.api_msg**, !dbg !1999
  %15 = load %struct.api_msg*, %struct.api_msg** %14, align 8, !dbg !1999, !tbaa !1170
  %16 = icmp eq %struct.api_msg* %15, null, !dbg !1999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br i1 %16, label %17, label %23, !dbg !1999

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !1999
  %19 = load i8, i8* %18, align 4, !dbg !1999, !tbaa !1173
  %20 = and i8 %19, 4, !dbg !1999
  %21 = icmp eq i8 %20, 0, !dbg !1999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  br i1 %21, label %22, label %28, !dbg !2002

; <label>:22:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !2003
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2006
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2006
  unreachable

; <label>:23:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  %24 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %15, i64 0, i32 1, !dbg !2011
  store i8 %2, i8* %24, align 8, !dbg !2014, !tbaa !962
  %25 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %15, i64 0, i32 0, !dbg !2015
  %26 = load %struct.netconn*, %struct.netconn** %25, align 8, !dbg !2015, !tbaa !967
  %27 = getelementptr inbounds %struct.netconn, %struct.netconn* %26, i64 0, i32 4, !dbg !2015
  br label %28, !dbg !2016

; <label>:28:                                     ; preds = %17, %23
  %29 = phi %struct.sys_sem_t* [ %27, %23 ], [ null, %17 ], !dbg !2017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  %30 = bitcast i8* %0 to i32*, !dbg !2019
  %31 = load i32, i32* %30, align 8, !dbg !2019, !tbaa !987
  %32 = and i32 %31, 240, !dbg !2019
  %33 = icmp eq i32 %32, 16, !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  br i1 %33, label %34, label %40, !dbg !2022

; <label>:34:                                     ; preds = %28
  %35 = icmp eq i8 %2, 0, !dbg !2023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2024
  br i1 %35, label %36, label %40, !dbg !2024

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2028
  %38 = bitcast i8* %37 to %struct.tcp_pcb**, !dbg !2029
  %39 = load %struct.tcp_pcb*, %struct.tcp_pcb** %38, align 8, !dbg !2029, !tbaa !941
  tail call void @tcp_arg(%struct.tcp_pcb* %39, i8* nonnull %0) #9, !dbg !2031
  tail call void @tcp_recv(%struct.tcp_pcb* %39, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !2032
  tail call void @tcp_sent(%struct.tcp_pcb* %39, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !2033
  tail call void @tcp_poll(%struct.tcp_pcb* %39, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !2034
  tail call void @tcp_err(%struct.tcp_pcb* %39, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  br label %40, !dbg !2037

; <label>:40:                                     ; preds = %36, %34, %28
  %41 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !2038
  %42 = load i8, i8* %41, align 4, !dbg !2038, !tbaa !1173
  %43 = and i8 %42, 4, !dbg !2038
  %44 = icmp eq i8 %43, 0, !dbg !2038
  %45 = and i8 %42, -5, !dbg !2039
  store i8 %45, i8* %41, align 4, !dbg !2039, !tbaa !1173
  %46 = icmp ne %struct.sys_sem_t* %29, null, !dbg !2044
  %47 = and i1 %46, %44, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2044
  br i1 %47, label %53, label %48, !dbg !2044

; <label>:48:                                     ; preds = %40
  %49 = icmp ne i8 %43, 0, !dbg !2044
  %50 = icmp eq %struct.sys_sem_t* %29, null, !dbg !2044
  %51 = and i1 %50, %49, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2044
  br i1 %51, label %53, label %52, !dbg !2044

; <label>:52:                                     ; preds = %48
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2047
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2050
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2050
  unreachable

; <label>:53:                                     ; preds = %48, %40
  store %struct.api_msg* null, %struct.api_msg** %14, align 8, !dbg !2054, !tbaa !1170
  store i32 0, i32* %8, align 4, !dbg !2055, !tbaa !1161
  %54 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !2056
  %55 = bitcast i8* %54 to void (%struct.netconn*, i32, i16)**, !dbg !2056
  %56 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %55, align 8, !dbg !2056, !tbaa !1167
  %57 = icmp eq void (%struct.netconn*, i32, i16)* %56, null, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  br i1 %57, label %59, label %58, !dbg !2058

; <label>:58:                                     ; preds = %53
  tail call void %56(%struct.netconn* nonnull %4, i32 2, i16 zeroext 0) #9, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2059
  br label %59, !dbg !2059

; <label>:59:                                     ; preds = %53, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %44, label %60, label %61, !dbg !2061

; <label>:60:                                     ; preds = %59
  tail call void @sys_sem_signal(%struct.sys_sem_t* %29) #9, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br label %61, !dbg !2065

; <label>:61:                                     ; preds = %59, %60, %3
  %62 = phi i8 [ -6, %3 ], [ 0, %60 ], [ 0, %59 ], !dbg !2017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  ret i8 %62, !dbg !2068
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_disconnect(i8* nocapture) local_unnamed_addr #0 !dbg !2069 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2074
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2074, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !2074
  %5 = load i32, i32* %4, align 8, !dbg !2074, !tbaa !987
  %6 = and i32 %5, 240, !dbg !2074
  %7 = icmp eq i32 %6, 32, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2077
  br i1 %7, label %8, label %12, !dbg !2077

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !2079
  %10 = bitcast %union.anon* %9 to %struct.udp_pcb**, !dbg !2081
  %11 = load %struct.udp_pcb*, %struct.udp_pcb** %10, align 8, !dbg !2081, !tbaa !941
  tail call void @udp_disconnect(%struct.udp_pcb* %11) #9, !dbg !2082
  br label %12, !dbg !2083

; <label>:12:                                     ; preds = %1, %8
  %13 = phi i8 [ 0, %8 ], [ -6, %1 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %14 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2084
  store i8 %13, i8* %14, align 8, !dbg !2086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2087
  ret void, !dbg !2087
}

; Function Attrs: noredzone
declare dso_local void @udp_disconnect(%struct.udp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_listen(i8* nocapture) local_unnamed_addr #0 !dbg !2088 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #6, !dbg !2106
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !2107
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2107, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !2108
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !2109
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2109, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !2110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br i1 %8, label %121, label %9, !dbg !2111

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !2112
  %11 = load i32, i32* %10, align 8, !dbg !2112, !tbaa !987
  %12 = and i32 %11, 240, !dbg !2112
  %13 = icmp eq i32 %12, 16, !dbg !2113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  br i1 %13, label %14, label %120, !dbg !2114

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 1, !dbg !2115
  %16 = load i32, i32* %15, align 4, !dbg !2115, !tbaa !1161
  %17 = icmp eq i32 %16, 0, !dbg !2116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2117
  br i1 %17, label %18, label %116, !dbg !2117

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 8, !dbg !2118
  %20 = load i32, i32* %19, align 8, !dbg !2118, !tbaa !1577
  %21 = icmp eq i32 %20, 0, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2120
  br i1 %21, label %23, label %22, !dbg !2120

; <label>:22:                                     ; preds = %18
  store i8 -6, i8* %2, align 1, !dbg !2121, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  br label %122, !dbg !2123

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 1, !dbg !2125
  %25 = load i8, i8* %24, align 4, !dbg !2125, !tbaa !2127
  %26 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 1), align 4, !dbg !2125, !tbaa !2129
  %27 = icmp eq i8 %25, %26, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  br i1 %27, label %28, label %66, !dbg !2130

; <label>:28:                                     ; preds = %23
  %29 = icmp eq i8 %25, 6, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2125
  %31 = load i32, i32* %30, align 4, !dbg !2125, !tbaa !941
  %32 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !2125, !tbaa !941
  %33 = icmp eq i32 %31, %32, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br i1 %29, label %34, label %55, !dbg !2130

; <label>:34:                                     ; preds = %28
  br i1 %33, label %35, label %66, !dbg !2125

; <label>:35:                                     ; preds = %34
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2125
  %37 = load i32, i32* %36, align 4, !dbg !2125, !tbaa !941
  %38 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !2125, !tbaa !941
  %39 = icmp eq i32 %37, %38, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %39, label %40, label %66, !dbg !2125

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2125
  %42 = load i32, i32* %41, align 4, !dbg !2125, !tbaa !941
  %43 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !2125, !tbaa !941
  %44 = icmp eq i32 %42, %43, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %44, label %45, label %66, !dbg !2125

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2125
  %47 = load i32, i32* %46, align 4, !dbg !2125, !tbaa !941
  %48 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !2125, !tbaa !941
  %49 = icmp eq i32 %47, %48, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %49, label %50, label %66, !dbg !2125

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2125
  %52 = load i8, i8* %51, align 4, !dbg !2125, !tbaa !941
  %53 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !2125, !tbaa !941
  %54 = icmp eq i8 %52, %53, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %54, label %56, label %66, !dbg !2125

; <label>:55:                                     ; preds = %28
  br i1 %33, label %56, label %66, !dbg !2130

; <label>:56:                                     ; preds = %55, %50
  %57 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 8, !dbg !2132
  %58 = load i8, i8* %57, align 4, !dbg !2132, !tbaa !1173
  %59 = and i8 %58, 32, !dbg !2132
  %60 = icmp eq i8 %59, 0, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br i1 %60, label %61, label %66, !dbg !2134

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %7, i64 0, i32 0, i32 1, !dbg !2135
  store i8 46, i8* %62, align 4, !dbg !2135, !tbaa !2138
  %63 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2139, !tbaa !941
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %63, i64 0, i32 1, i32 1, !dbg !2139
  store i8 46, i8* %64, align 4, !dbg !2139, !tbaa !2141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  %65 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2143, !tbaa !941
  br label %66, !dbg !2142

; <label>:66:                                     ; preds = %23, %61, %56, %55, %50, %45, %40, %35, %34
  %67 = phi %struct.tcp_pcb* [ %7, %23 ], [ %65, %61 ], [ %7, %56 ], [ %7, %55 ], [ %7, %50 ], [ %7, %45 ], [ %7, %40 ], [ %7, %35 ], [ %7, %34 ], !dbg !2143
  %68 = call %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb* %67, i8 zeroext -1, i8* nonnull %2) #9, !dbg !2144
  %69 = icmp eq %struct.tcp_pcb* %68, null, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2148
  br i1 %69, label %114, label %70, !dbg !2148

; <label>:70:                                     ; preds = %66
  %71 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2149, !tbaa !967
  %72 = getelementptr inbounds %struct.netconn, %struct.netconn* %71, i64 0, i32 5, !dbg !2152
  %73 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %72) #9, !dbg !2153
  %74 = icmp eq i32 %73, 0, !dbg !2153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  br i1 %74, label %80, label %75, !dbg !2154

; <label>:75:                                     ; preds = %70
  %76 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2155, !tbaa !967
  %77 = getelementptr inbounds %struct.netconn, %struct.netconn* %76, i64 0, i32 5, !dbg !2157
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %77) #9, !dbg !2158
  %78 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2159, !tbaa !967
  %79 = getelementptr inbounds %struct.netconn, %struct.netconn* %78, i64 0, i32 5, !dbg !2160
  call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %79) #9, !dbg !2161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  br label %80, !dbg !2162

; <label>:80:                                     ; preds = %70, %75
  store i8 0, i8* %2, align 1, !dbg !2163, !tbaa !941
  %81 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2164, !tbaa !967
  %82 = getelementptr inbounds %struct.netconn, %struct.netconn* %81, i64 0, i32 6, !dbg !2166
  %83 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %82) #9, !dbg !2167
  %84 = icmp eq i32 %83, 0, !dbg !2167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %84, label %85, label %89, !dbg !2168

; <label>:85:                                     ; preds = %80
  %86 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2169, !tbaa !967
  %87 = getelementptr inbounds %struct.netconn, %struct.netconn* %86, i64 0, i32 6, !dbg !2171
  %88 = call signext i8 @sys_mbox_new(%struct.sys_mbox_t* nonnull %87, i32 0) #9, !dbg !2172
  store i8 %88, i8* %2, align 1, !dbg !2173, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  br label %91, !dbg !2174

; <label>:89:                                     ; preds = %80
  %90 = load i8, i8* %2, align 1, !dbg !2175, !tbaa !941
  br label %91, !dbg !2175

; <label>:91:                                     ; preds = %89, %85
  %92 = phi i8 [ %90, %89 ], [ %88, %85 ], !dbg !2175
  %93 = icmp eq i8 %92, 0, !dbg !2177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  br i1 %93, label %94, label %108, !dbg !2178

; <label>:94:                                     ; preds = %91
  %95 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2179, !tbaa !967
  %96 = getelementptr inbounds %struct.netconn, %struct.netconn* %95, i64 0, i32 1, !dbg !2181
  store i32 2, i32* %96, align 4, !dbg !2182, !tbaa !1161
  %97 = getelementptr inbounds %struct.netconn, %struct.netconn* %95, i64 0, i32 2, !dbg !2183
  %98 = bitcast %union.anon* %97 to %struct.tcp_pcb**, !dbg !2184
  store %struct.tcp_pcb* %68, %struct.tcp_pcb** %98, align 8, !dbg !2185, !tbaa !941
  %99 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2186, !tbaa !967
  %100 = getelementptr inbounds %struct.netconn, %struct.netconn* %99, i64 0, i32 2, !dbg !2187
  %101 = bitcast %union.anon* %100 to %struct.tcp_pcb**, !dbg !2188
  %102 = load %struct.tcp_pcb*, %struct.tcp_pcb** %101, align 8, !dbg !2188, !tbaa !941
  %103 = bitcast %struct.netconn* %99 to i8*, !dbg !2189
  call void @tcp_arg(%struct.tcp_pcb* %102, i8* %103) #9, !dbg !2190
  %104 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2191, !tbaa !967
  %105 = getelementptr inbounds %struct.netconn, %struct.netconn* %104, i64 0, i32 2, !dbg !2192
  %106 = bitcast %union.anon* %105 to %struct.tcp_pcb**, !dbg !2193
  %107 = load %struct.tcp_pcb*, %struct.tcp_pcb** %106, align 8, !dbg !2193, !tbaa !941
  call void @tcp_accept(%struct.tcp_pcb* %107, i8 (i8*, %struct.tcp_pcb*, i8)* nonnull @accept_function) #9, !dbg !2194
  br label %113, !dbg !2195

; <label>:108:                                    ; preds = %91
  %109 = call signext i8 @tcp_close(%struct.tcp_pcb* nonnull %68) #9, !dbg !2196
  %110 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2198, !tbaa !967
  %111 = getelementptr inbounds %struct.netconn, %struct.netconn* %110, i64 0, i32 2, !dbg !2199
  %112 = bitcast %union.anon* %111 to %struct.tcp_pcb**, !dbg !2200
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %112, align 8, !dbg !2201, !tbaa !941
  br label %113

; <label>:113:                                    ; preds = %108, %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %114

; <label>:114:                                    ; preds = %113, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %115 = load i8, i8* %2, align 1, !dbg !2202, !tbaa !941
  br label %122

; <label>:116:                                    ; preds = %14
  %117 = icmp eq i32 %16, 2, !dbg !2203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2205
  br i1 %117, label %118, label %119, !dbg !2205

; <label>:118:                                    ; preds = %116
  store i8 0, i8* %2, align 1, !dbg !2206, !tbaa !941
  br label %122, !dbg !2208

; <label>:119:                                    ; preds = %116
  store i8 -11, i8* %2, align 1, !dbg !2209, !tbaa !941
  br label %122

; <label>:120:                                    ; preds = %9
  store i8 -16, i8* %2, align 1, !dbg !2211, !tbaa !941
  br label %122

; <label>:121:                                    ; preds = %1
  store i8 -11, i8* %2, align 1, !dbg !2213, !tbaa !941
  br label %122

; <label>:122:                                    ; preds = %22, %114, %120, %118, %119, %121
  %123 = phi i8 [ -16, %120 ], [ 0, %118 ], [ -11, %119 ], [ -11, %121 ], [ %115, %114 ], [ -6, %22 ], !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %124 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2215
  store i8 %123, i8* %124, align 8, !dbg !2216, !tbaa !962
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #6, !dbg !2217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  ret void, !dbg !2217
}

; Function Attrs: noredzone
declare dso_local %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb*, i8 zeroext, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_arg(%struct.tcp_pcb*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_accept(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @accept_function(i8*, %struct.tcp_pcb*, i8 signext) #0 !dbg !2218 {
  %4 = bitcast i8* %0 to %struct.netconn*, !dbg !2231
  %5 = icmp eq i8* %0, null, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br i1 %5, label %53, label %6, !dbg !2235

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !2236
  %8 = bitcast i8* %7 to %struct.sys_mbox_t*, !dbg !2236
  %9 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %8) #9, !dbg !2236
  %10 = icmp eq i32 %9, 0, !dbg !2236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br i1 %10, label %53, label %11, !dbg !2238

; <label>:11:                                     ; preds = %6
  %12 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  br i1 %12, label %13, label %22, !dbg !2241

; <label>:13:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  %14 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %8, i8* nonnull @netconn_aborted) #9, !dbg !2255
  %15 = icmp eq i8 %14, 0, !dbg !2256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2257
  br i1 %15, label %16, label %53, !dbg !2257

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !2258
  %18 = bitcast i8* %17 to void (%struct.netconn*, i32, i16)**, !dbg !2258
  %19 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !2258, !tbaa !1167
  %20 = icmp eq void (%struct.netconn*, i32, i16)* %19, null, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2261
  br i1 %20, label %53, label %21, !dbg !2261

; <label>:21:                                     ; preds = %16
  tail call void %19(%struct.netconn* nonnull %4, i32 0, i16 zeroext 0) #9, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  br label %53, !dbg !2262

; <label>:22:                                     ; preds = %11
  %23 = icmp eq i8 %2, 0, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2267
  br i1 %23, label %25, label %24, !dbg !2267

; <label>:24:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !2268
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2271
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2271
  unreachable

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8* %0 to i32*, !dbg !2275
  %27 = load i32, i32* %26, align 8, !dbg !2275, !tbaa !987
  %28 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !2276
  %29 = bitcast i8* %28 to void (%struct.netconn*, i32, i16)**, !dbg !2276
  %30 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %29, align 8, !dbg !2276, !tbaa !1167
  %31 = tail call %struct.netconn* @netconn_alloc(i32 %27, void (%struct.netconn*, i32, i16)* %30) #7, !dbg !2277
  %32 = icmp eq %struct.netconn* %31, null, !dbg !2279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  br i1 %32, label %33, label %40, !dbg !2281

; <label>:33:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  %34 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %8, i8* nonnull @netconn_aborted) #9, !dbg !2289
  %35 = icmp eq i8 %34, 0, !dbg !2290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2291
  br i1 %35, label %36, label %53, !dbg !2291

; <label>:36:                                     ; preds = %33
  %37 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %29, align 8, !dbg !2292, !tbaa !1167
  %38 = icmp eq void (%struct.netconn*, i32, i16)* %37, null, !dbg !2292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2295
  br i1 %38, label %53, label %39, !dbg !2295

; <label>:39:                                     ; preds = %36
  tail call void %37(%struct.netconn* nonnull %4, i32 0, i16 zeroext 0) #9, !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br label %53, !dbg !2296

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i64 0, i32 2, !dbg !2298
  %42 = bitcast %union.anon* %41 to %struct.tcp_pcb**, !dbg !2299
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %42, align 8, !dbg !2300, !tbaa !941
  %43 = bitcast %struct.netconn* %31 to i8*, !dbg !2304
  tail call void @tcp_arg(%struct.tcp_pcb* nonnull %1, i8* %43) #9, !dbg !2305
  tail call void @tcp_recv(%struct.tcp_pcb* nonnull %1, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* nonnull @recv_tcp) #9, !dbg !2306
  tail call void @tcp_sent(%struct.tcp_pcb* nonnull %1, i8 (i8*, %struct.tcp_pcb*, i16)* nonnull @sent_tcp) #9, !dbg !2307
  tail call void @tcp_poll(%struct.tcp_pcb* nonnull %1, i8 (i8*, %struct.tcp_pcb*)* nonnull @poll_tcp, i8 zeroext 2) #9, !dbg !2308
  tail call void @tcp_err(%struct.tcp_pcb* nonnull %1, void (i8*, i8)* nonnull @err_tcp) #9, !dbg !2309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  %44 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %8, i8* %43) #9, !dbg !2311
  %45 = icmp eq i8 %44, 0, !dbg !2312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  br i1 %45, label %49, label %46, !dbg !2313

; <label>:46:                                     ; preds = %40
  %47 = load %struct.tcp_pcb*, %struct.tcp_pcb** %42, align 8, !dbg !2314, !tbaa !941
  tail call void @tcp_arg(%struct.tcp_pcb* %47, i8* null) #9, !dbg !2316
  tail call void @tcp_recv(%struct.tcp_pcb* %47, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* null) #9, !dbg !2317
  tail call void @tcp_sent(%struct.tcp_pcb* %47, i8 (i8*, %struct.tcp_pcb*, i16)* null) #9, !dbg !2318
  tail call void @tcp_poll(%struct.tcp_pcb* %47, i8 (i8*, %struct.tcp_pcb*)* null, i8 zeroext 0) #9, !dbg !2319
  tail call void @tcp_err(%struct.tcp_pcb* %47, void (i8*, i8)* null) #9, !dbg !2320
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %42, align 8, !dbg !2321, !tbaa !941
  %48 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i64 0, i32 5, !dbg !2322
  tail call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %48) #9, !dbg !2323
  tail call void @sys_mbox_set_invalid(%struct.sys_mbox_t* nonnull %48) #9, !dbg !2324
  tail call void @netconn_free(%struct.netconn* nonnull %31) #7, !dbg !2325
  br label %53

; <label>:49:                                     ; preds = %40
  %50 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %29, align 8, !dbg !2326, !tbaa !1167
  %51 = icmp eq void (%struct.netconn*, i32, i16)* %50, null, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  br i1 %51, label %53, label %52, !dbg !2329

; <label>:52:                                     ; preds = %49
  tail call void %50(%struct.netconn* nonnull %4, i32 0, i16 zeroext 0) #9, !dbg !2330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  br label %53, !dbg !2330

; <label>:53:                                     ; preds = %52, %49, %33, %39, %36, %13, %21, %16, %6, %3, %46
  %54 = phi i8 [ -1, %46 ], [ -6, %3 ], [ -6, %6 ], [ -6, %16 ], [ -6, %21 ], [ -6, %13 ], [ -1, %36 ], [ -1, %39 ], [ -1, %33 ], [ 0, %49 ], [ 0, %52 ], !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  ret i8 %54, !dbg !2334
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_close(%struct.tcp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_send(i8* nocapture) local_unnamed_addr #0 !dbg !2335 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2342
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2342, !tbaa !967
  %4 = tail call signext i8 @netconn_err(%struct.netconn* %3) #9, !dbg !2343
  %5 = icmp eq i8 %4, 0, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %5, label %6, label %58, !dbg !2347

; <label>:6:                                      ; preds = %1
  %7 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2348, !tbaa !967
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 2, !dbg !2351
  %9 = bitcast %union.anon* %8 to %struct.tcp_pcb**, !dbg !2352
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** %9, align 8, !dbg !2352, !tbaa !941
  %11 = icmp eq %struct.tcp_pcb* %10, null, !dbg !2353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2354
  %12 = bitcast %struct.tcp_pcb* %10 to %struct.udp_pcb*, !dbg !2354
  br i1 %11, label %56, label %13, !dbg !2354

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 0, !dbg !2355
  %15 = load i32, i32* %14, align 8, !dbg !2355, !tbaa !987
  %16 = and i32 %15, 240, !dbg !2355
  %17 = icmp eq i32 %16, 32, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2357
  br i1 %17, label %18, label %56, !dbg !2357

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2358
  %20 = bitcast i8* %19 to %struct.netbuf**, !dbg !2358
  %21 = load %struct.netbuf*, %struct.netbuf** %20, align 8, !dbg !2358, !tbaa !941
  %22 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 1, !dbg !2358
  %23 = load i8, i8* %22, align 4, !dbg !2358, !tbaa !2361
  %24 = icmp eq i8 %23, 6, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  %25 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !2358
  %26 = load i32, i32* %25, align 8, !dbg !2358, !tbaa !941
  %27 = icmp eq i32 %26, 0, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2364
  br i1 %24, label %28, label %41, !dbg !2363

; <label>:28:                                     ; preds = %18
  br i1 %27, label %29, label %42, !dbg !2358

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !2358
  %31 = load i32, i32* %30, align 4, !dbg !2358, !tbaa !941
  %32 = icmp eq i32 %31, 0, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br i1 %32, label %33, label %42, !dbg !2358

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !2358
  %35 = load i32, i32* %34, align 8, !dbg !2358, !tbaa !941
  %36 = icmp eq i32 %35, 0, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br i1 %36, label %37, label %42, !dbg !2358

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !2358
  %39 = load i32, i32* %38, align 4, !dbg !2358, !tbaa !941
  %40 = icmp eq i32 %39, 0, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br i1 %40, label %45, label %42, !dbg !2358

; <label>:41:                                     ; preds = %18
  br i1 %27, label %45, label %43, !dbg !2363

; <label>:42:                                     ; preds = %37, %33, %29, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  br label %49, !dbg !2365

; <label>:43:                                     ; preds = %41
  %44 = icmp eq i8 %23, 46, !dbg !2366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  br i1 %44, label %45, label %49, !dbg !2365

; <label>:45:                                     ; preds = %43, %41, %37
  %46 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 0, !dbg !2367
  %47 = load %struct.pbuf*, %struct.pbuf** %46, align 8, !dbg !2367, !tbaa !2369
  %48 = tail call signext i8 @udp_send(%struct.udp_pcb* %12, %struct.pbuf* %47) #9, !dbg !2370
  br label %56, !dbg !2371

; <label>:49:                                     ; preds = %42, %43
  %50 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 2, !dbg !2366
  %51 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 0, !dbg !2372
  %52 = load %struct.pbuf*, %struct.pbuf** %51, align 8, !dbg !2372, !tbaa !2369
  %53 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %21, i64 0, i32 3, !dbg !2374
  %54 = load i16, i16* %53, align 8, !dbg !2374, !tbaa !2375
  %55 = tail call signext i8 @udp_sendto(%struct.udp_pcb* %12, %struct.pbuf* %52, %struct.ip_addr* nonnull %50, i16 zeroext %54) #9, !dbg !2376
  br label %56

; <label>:56:                                     ; preds = %6, %13, %49, %45
  %57 = phi i8 [ %55, %49 ], [ %48, %45 ], [ -11, %13 ], [ -11, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %58, !dbg !2377

; <label>:58:                                     ; preds = %56, %1
  %59 = phi i8 [ %4, %1 ], [ %57, %56 ], !dbg !2378
  %60 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2377
  store i8 %59, i8* %60, align 8, !dbg !2379, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  ret void, !dbg !2380
}

; Function Attrs: noredzone
declare dso_local signext i8 @netconn_err(%struct.netconn*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @udp_send(%struct.udp_pcb*, %struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_recv(i8* nocapture) local_unnamed_addr #0 !dbg !2381 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2394
  store i8 0, i8* %2, align 8, !dbg !2395, !tbaa !962
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !2396
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2396, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !2397
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !2398
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !2398, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !2399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  br i1 %8, label %35, label %9, !dbg !2400

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !2401
  %11 = load i32, i32* %10, align 8, !dbg !2401, !tbaa !987
  %12 = and i32 %11, 240, !dbg !2401
  %13 = icmp eq i32 %12, 16, !dbg !2402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  br i1 %13, label %14, label %35, !dbg !2403

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2404
  %16 = bitcast i8* %15 to i64*, !dbg !2405
  %17 = load i64, i64* %16, align 8, !dbg !2405, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2407
  %18 = icmp ult i64 %17, 65535, !dbg !2408
  %19 = select i1 %18, i64 %17, i64 65535, !dbg !2408
  %20 = trunc i64 %19 to i16, !dbg !2409
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %7, i16 zeroext %20) #9, !dbg !2411
  %21 = sub i64 %17, %19, !dbg !2412
  %22 = icmp eq i64 %21, 0, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  br i1 %22, label %34, label %23, !dbg !2414, !llvm.loop !2415

; <label>:23:                                     ; preds = %14, %23
  %24 = phi i64 [ %32, %23 ], [ %21, %14 ]
  %25 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !2417, !tbaa !967
  %26 = getelementptr inbounds %struct.netconn, %struct.netconn* %25, i64 0, i32 2
  %27 = bitcast %union.anon* %26 to %struct.tcp_pcb**
  %28 = load %struct.tcp_pcb*, %struct.tcp_pcb** %27, align 8, !dbg !2418, !tbaa !941
  %29 = icmp ult i64 %24, 65535, !dbg !2408
  %30 = select i1 %29, i64 %24, i64 65535, !dbg !2408
  %31 = trunc i64 %30 to i16, !dbg !2409
  tail call void @tcp_recved(%struct.tcp_pcb* %28, i16 zeroext %31) #9, !dbg !2411
  %32 = sub i64 %24, %30, !dbg !2412
  %33 = icmp eq i64 %32, 0, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  br i1 %33, label %34, label %23, !dbg !2414, !llvm.loop !2415

; <label>:34:                                     ; preds = %23, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2419
  br label %35, !dbg !2419

; <label>:35:                                     ; preds = %1, %9, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2420
  ret void, !dbg !2420
}

; Function Attrs: noredzone
declare dso_local void @tcp_recved(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_write(i8*) local_unnamed_addr #0 !dbg !2421 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2428
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2428, !tbaa !967
  %4 = tail call signext i8 @netconn_err(%struct.netconn* %3) #9, !dbg !2429
  %5 = icmp eq i8 %4, 0, !dbg !2431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2433
  br i1 %5, label %6, label %53, !dbg !2433

; <label>:6:                                      ; preds = %1
  %7 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2434, !tbaa !967
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 0, !dbg !2434
  %9 = load i32, i32* %8, align 8, !dbg !2434, !tbaa !987
  %10 = and i32 %9, 240, !dbg !2434
  %11 = icmp eq i32 %10, 16, !dbg !2437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  br i1 %11, label %12, label %51, !dbg !2438

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 1, !dbg !2439
  %14 = load i32, i32* %13, align 4, !dbg !2439, !tbaa !1161
  %15 = icmp eq i32 %14, 0, !dbg !2442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  br i1 %15, label %16, label %51, !dbg !2443

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 2, !dbg !2444
  %18 = bitcast %union.anon* %17 to %struct.tcp_pcb**, !dbg !2446
  %19 = load %struct.tcp_pcb*, %struct.tcp_pcb** %18, align 8, !dbg !2446, !tbaa !941
  %20 = icmp eq %struct.tcp_pcb* %19, null, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  br i1 %20, label %51, label %21, !dbg !2448

; <label>:21:                                     ; preds = %16
  store i32 1, i32* %13, align 4, !dbg !2449, !tbaa !1161
  %22 = getelementptr inbounds %struct.netconn, %struct.netconn* %7, i64 0, i32 9, !dbg !2451
  %23 = load %struct.api_msg*, %struct.api_msg** %22, align 8, !dbg !2451, !tbaa !1170
  %24 = icmp eq %struct.api_msg* %23, null, !dbg !2451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2454
  br i1 %24, label %26, label %25, !dbg !2454

; <label>:25:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2455
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2458
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2458
  unreachable

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !2462
  %28 = bitcast i8* %27 to i64*, !dbg !2462
  %29 = load i64, i64* %28, align 8, !dbg !2462, !tbaa !941
  %30 = icmp eq i64 %29, 0, !dbg !2462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2465
  br i1 %30, label %31, label %32, !dbg !2465

; <label>:31:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !2466
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2469
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2469
  unreachable

; <label>:32:                                     ; preds = %26
  %33 = bitcast %struct.api_msg** %22 to i8**, !dbg !2473
  store i8* %0, i8** %33, align 8, !dbg !2473, !tbaa !1170
  %34 = tail call fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn* nonnull %7, i8 zeroext 0) #7, !dbg !2474
  %35 = icmp eq i8 %34, 0, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  br i1 %35, label %56, label %36, !dbg !2477

; <label>:36:                                     ; preds = %32
  %37 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2478, !tbaa !967
  %38 = getelementptr inbounds %struct.netconn, %struct.netconn* %37, i64 0, i32 1, !dbg !2478
  %39 = load i32, i32* %38, align 4, !dbg !2478, !tbaa !1161
  %40 = icmp eq i32 %39, 1, !dbg !2478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  br i1 %40, label %42, label %41, !dbg !2482

; <label>:41:                                     ; preds = %36
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2483
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2486
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2486
  unreachable

; <label>:42:                                     ; preds = %36
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2490
  %43 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2491, !tbaa !967
  %44 = getelementptr inbounds %struct.netconn, %struct.netconn* %43, i64 0, i32 4, !dbg !2491
  %45 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %44, i32 0) #9, !dbg !2492
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2493
  %46 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2494, !tbaa !967
  %47 = getelementptr inbounds %struct.netconn, %struct.netconn* %46, i64 0, i32 1, !dbg !2494
  %48 = load i32, i32* %47, align 4, !dbg !2494, !tbaa !1161
  %49 = icmp eq i32 %48, 1, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2497
  br i1 %49, label %50, label %56, !dbg !2497

; <label>:50:                                     ; preds = %42
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2498
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2501
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2501
  unreachable

; <label>:51:                                     ; preds = %6, %16, %12
  %52 = phi i8 [ -5, %12 ], [ -11, %16 ], [ -6, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %53, !dbg !2505

; <label>:53:                                     ; preds = %51, %1
  %54 = phi i8 [ %4, %1 ], [ %52, %51 ], !dbg !2506
  %55 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2505
  store i8 %54, i8* %55, align 8, !dbg !2507, !tbaa !962
  br label %56, !dbg !2508

; <label>:56:                                     ; preds = %32, %42, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2508
  ret void, !dbg !2508
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn*, i8 zeroext) unnamed_addr #0 !dbg !2510 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  br i1 %3, label %4, label %5, !dbg !2539

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !2540
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2543
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2543
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 1, !dbg !2547
  %7 = load i32, i32* %6, align 4, !dbg !2547, !tbaa !1161
  %8 = icmp eq i32 %7, 1, !dbg !2547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2550
  br i1 %8, label %10, label %9, !dbg !2550

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !2551
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2554
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2554
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 9, !dbg !2558
  %12 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2558, !tbaa !1170
  %13 = icmp eq %struct.api_msg* %12, null, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  br i1 %13, label %14, label %15, !dbg !2561

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !2562
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2565
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2565
  unreachable

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, !dbg !2569
  %17 = bitcast %union.anon* %16 to %struct.tcp_pcb**, !dbg !2569
  %18 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2569, !tbaa !941
  %19 = icmp eq %struct.tcp_pcb* %18, null, !dbg !2569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2572
  br i1 %19, label %20, label %21, !dbg !2572

; <label>:20:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !2573
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2576
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2576
  unreachable

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 4, !dbg !2580
  %23 = load i64, i64* %22, align 8, !dbg !2580, !tbaa !941
  %24 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 3, !dbg !2580
  %25 = load i64, i64* %24, align 8, !dbg !2580, !tbaa !941
  %26 = icmp ult i64 %23, %25, !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  br i1 %26, label %28, label %27, !dbg !2583

; <label>:27:                                     ; preds = %21
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.42, i64 0, i64 0)) #7, !dbg !2584
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2587
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2587
  unreachable

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 1, !dbg !2591
  %30 = load i16, i16* %29, align 8, !dbg !2591, !tbaa !941
  %31 = icmp eq i16 %30, 0, !dbg !2591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2594
  br i1 %31, label %32, label %33, !dbg !2594

; <label>:32:                                     ; preds = %28
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #7, !dbg !2595
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2598
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2598
  unreachable

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %12, i64 0, i32 2, i32 0, i32 5, !dbg !2602
  %35 = load i8, i8* %34, align 8, !dbg !2602, !tbaa !941
  %36 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !2604
  %37 = load i8, i8* %36, align 4, !dbg !2604, !tbaa !1173
  %38 = and i8 %37, 2, !dbg !2604
  %39 = icmp eq i8 %38, 0, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2605
  br i1 %39, label %40, label %43, !dbg !2605

; <label>:40:                                     ; preds = %33
  %41 = and i8 %35, 4, !dbg !2606
  %42 = icmp ne i8 %41, 0, !dbg !2605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2605
  br label %43, !dbg !2605

; <label>:43:                                     ; preds = %33, %40
  %44 = phi i1 [ true, %33 ], [ %42, %40 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2607
  br label %45, !dbg !2607

; <label>:45:                                     ; preds = %140, %43
  %46 = phi %struct.api_msg* [ %12, %43 ], [ %141, %140 ], !dbg !2608
  %47 = phi i8 [ %35, %43 ], [ %103, %140 ], !dbg !2610
  %48 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %46, i64 0, i32 2, i32 0, i32 0, !dbg !2613
  %49 = load %struct.netvector*, %struct.netvector** %48, align 8, !dbg !2613, !tbaa !941
  %50 = getelementptr inbounds %struct.netvector, %struct.netvector* %49, i64 0, i32 0, !dbg !2614
  %51 = load i8*, i8** %50, align 8, !dbg !2614, !tbaa !2615
  %52 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %46, i64 0, i32 2, i32 0, i32 2, !dbg !2617
  %53 = load i64, i64* %52, align 8, !dbg !2617, !tbaa !941
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !2618
  %55 = getelementptr inbounds %struct.netvector, %struct.netvector* %49, i64 0, i32 1, !dbg !2620
  %56 = load i64, i64* %55, align 8, !dbg !2620, !tbaa !2621
  %57 = sub i64 %56, %53, !dbg !2622
  %58 = icmp ugt i64 %57, 65535, !dbg !2624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2626
  %59 = or i8 %47, 2, !dbg !2628
  %60 = select i1 %58, i8 %59, i8 %47, !dbg !2626
  %61 = icmp ult i64 %57, 65535, !dbg !2626
  %62 = select i1 %61, i64 %57, i64 65535, !dbg !2626
  %63 = trunc i64 %62 to i16, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2630, !tbaa !941
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %64, i64 0, i32 40, !dbg !2630
  %66 = load i32, i32* %65, align 8, !dbg !2630, !tbaa !2631
  %67 = icmp ult i32 %66, 65535, !dbg !2630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  br i1 %67, label %68, label %69, !dbg !2630

; <label>:68:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  br label %69, !dbg !2630

; <label>:69:                                     ; preds = %45, %68
  %70 = phi i32 [ %66, %68 ], [ 65535, %45 ], !dbg !2630
  %71 = trunc i32 %70 to i16, !dbg !2630
  %72 = and i32 %70, 65535, !dbg !2633
  %73 = trunc i64 %62 to i32, !dbg !2635
  %74 = icmp ult i32 %72, %73, !dbg !2636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  br i1 %74, label %75, label %84, !dbg !2637

; <label>:75:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2638
  br i1 %44, label %76, label %83, !dbg !2638

; <label>:76:                                     ; preds = %75
  %77 = icmp eq i16 %71, 0, !dbg !2640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  br i1 %77, label %78, label %84, !dbg !2644

; <label>:78:                                     ; preds = %76
  %79 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %46, i64 0, i32 2, i32 0, i32 4, !dbg !2645
  %80 = load i64, i64* %79, align 8, !dbg !2645, !tbaa !941
  %81 = icmp eq i64 %80, 0, !dbg !2647
  %82 = select i1 %81, i8 -7, i8 0, !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  br label %152, !dbg !2651

; <label>:83:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %84

; <label>:84:                                     ; preds = %76, %69, %83
  %85 = phi i8 [ %60, %76 ], [ %59, %83 ], [ %60, %69 ], !dbg !2655
  %86 = phi i16 [ %71, %76 ], [ %71, %83 ], [ %63, %69 ], !dbg !2655
  %87 = zext i16 %86 to i64, !dbg !2656
  %88 = add i64 %53, %87, !dbg !2656
  %89 = icmp ugt i64 %88, %56, !dbg !2656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2659
  br i1 %89, label %90, label %91, !dbg !2659

; <label>:90:                                     ; preds = %84
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !2660
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2663
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2663
  unreachable

; <label>:91:                                     ; preds = %84
  %92 = icmp eq i16 %86, -1, !dbg !2667
  %93 = and i1 %58, %92, !dbg !2668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2668
  br i1 %93, label %101, label %94, !dbg !2668

; <label>:94:                                     ; preds = %91
  %95 = trunc i64 %57 to i16, !dbg !2669
  %96 = icmp eq i16 %86, %95, !dbg !2669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2670
  br i1 %96, label %97, label %102, !dbg !2670

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %46, i64 0, i32 2, i32 0, i32 1, !dbg !2671
  %99 = load i16, i16* %98, align 8, !dbg !2671, !tbaa !941
  %100 = icmp ugt i16 %99, 1, !dbg !2672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2673
  br i1 %100, label %101, label %102, !dbg !2673

; <label>:101:                                    ; preds = %91, %97
  br label %102, !dbg !2675

; <label>:102:                                    ; preds = %94, %97, %101
  %103 = phi i8 [ %59, %101 ], [ %85, %97 ], [ %85, %94 ], !dbg !2655
  %104 = phi i32 [ 1, %101 ], [ 0, %97 ], [ 0, %94 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %105 = tail call signext i8 @tcp_write(%struct.tcp_pcb* %64, i8* %54, i16 zeroext %86, i8 zeroext %103) #9, !dbg !2676
  %106 = icmp eq i8 %105, 0, !dbg !2677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2679
  br i1 %106, label %107, label %143, !dbg !2679

; <label>:107:                                    ; preds = %102
  %108 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2680, !tbaa !1170
  %109 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %108, i64 0, i32 2, i32 0, i32 4, !dbg !2682
  %110 = load i64, i64* %109, align 8, !dbg !2683, !tbaa !941
  %111 = add i64 %110, %87, !dbg !2683
  store i64 %111, i64* %109, align 8, !dbg !2683, !tbaa !941
  %112 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2684, !tbaa !1170
  %113 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %112, i64 0, i32 2, i32 0, i32 2, !dbg !2685
  %114 = load i64, i64* %113, align 8, !dbg !2686, !tbaa !941
  %115 = add i64 %114, %87, !dbg !2686
  store i64 %115, i64* %113, align 8, !dbg !2686, !tbaa !941
  %116 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2687, !tbaa !1170
  %117 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %116, i64 0, i32 2, i32 0, i32 2, !dbg !2689
  %118 = load i64, i64* %117, align 8, !dbg !2689, !tbaa !941
  %119 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %116, i64 0, i32 2, i32 0, i32 0, !dbg !2690
  %120 = load %struct.netvector*, %struct.netvector** %119, align 8, !dbg !2690, !tbaa !941
  %121 = getelementptr inbounds %struct.netvector, %struct.netvector* %120, i64 0, i32 1, !dbg !2691
  %122 = load i64, i64* %121, align 8, !dbg !2691, !tbaa !2621
  %123 = icmp eq i64 %118, %122, !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  br i1 %123, label %124, label %138, !dbg !2693

; <label>:124:                                    ; preds = %107
  %125 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %116, i64 0, i32 2, i32 0, i32 1, !dbg !2694
  %126 = load i16, i16* %125, align 8, !dbg !2696, !tbaa !941
  %127 = add i16 %126, -1, !dbg !2696
  store i16 %127, i16* %125, align 8, !dbg !2696, !tbaa !941
  %128 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2697, !tbaa !1170
  %129 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %128, i64 0, i32 2, i32 0, i32 1, !dbg !2699
  %130 = load i16, i16* %129, align 8, !dbg !2699, !tbaa !941
  %131 = icmp eq i16 %130, 0, !dbg !2700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2701
  br i1 %131, label %138, label %132, !dbg !2701

; <label>:132:                                    ; preds = %124
  %133 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %128, i64 0, i32 2, i32 0, i32 0, !dbg !2702
  %134 = load %struct.netvector*, %struct.netvector** %133, align 8, !dbg !2704, !tbaa !941
  %135 = getelementptr inbounds %struct.netvector, %struct.netvector* %134, i64 1, !dbg !2704
  store %struct.netvector* %135, %struct.netvector** %133, align 8, !dbg !2704, !tbaa !941
  %136 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2705, !tbaa !1170
  %137 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %136, i64 0, i32 2, i32 0, i32 2, !dbg !2706
  store i64 0, i64* %137, align 8, !dbg !2707, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  br label %138, !dbg !2708

; <label>:138:                                    ; preds = %124, %132, %107
  %139 = icmp eq i32 %104, 0, !dbg !2709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  br i1 %139, label %142, label %140, !dbg !2710, !llvm.loop !2711

; <label>:140:                                    ; preds = %138
  %141 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2608, !tbaa !1170
  br label %45, !dbg !2710

; <label>:142:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  br label %146, !dbg !2713

; <label>:143:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  %144 = icmp eq i8 %105, -1, !dbg !2714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  br i1 %144, label %146, label %145, !dbg !2715

; <label>:145:                                    ; preds = %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  br label %219, !dbg !2717

; <label>:146:                                    ; preds = %142, %143
  %147 = phi i8 [ -1, %143 ], [ 0, %142 ], !dbg !2718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  br i1 %44, label %148, label %167, !dbg !2651

; <label>:148:                                    ; preds = %146
  %149 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2719, !tbaa !1170
  %150 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %149, i64 0, i32 2, i32 0, i32 4
  %151 = load i64, i64* %150, align 8, !dbg !2720, !tbaa !941
  br label %152, !dbg !2651

; <label>:152:                                    ; preds = %148, %78
  %153 = phi i64 [ %80, %78 ], [ %151, %148 ], !dbg !2720
  %154 = phi %struct.api_msg* [ %46, %78 ], [ %149, %148 ], !dbg !2719
  %155 = phi i8 [ %82, %78 ], [ %147, %148 ]
  %156 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %154, i64 0, i32 2, i32 0, i32 3, !dbg !2721
  %157 = load i64, i64* %156, align 8, !dbg !2721, !tbaa !941
  %158 = icmp ult i64 %153, %157, !dbg !2722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2723
  br i1 %158, label %159, label %167, !dbg !2723

; <label>:159:                                    ; preds = %152
  %160 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !2724
  %161 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %160, align 8, !dbg !2724, !tbaa !1167
  %162 = icmp eq void (%struct.netconn*, i32, i16)* %161, null, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  br i1 %162, label %164, label %163, !dbg !2727

; <label>:163:                                    ; preds = %159
  tail call void %161(%struct.netconn* nonnull %0, i32 3, i16 zeroext 0) #9, !dbg !2728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  br label %164, !dbg !2728

; <label>:164:                                    ; preds = %159, %163
  %165 = load i8, i8* %36, align 4, !dbg !2730, !tbaa !1173
  %166 = or i8 %165, 16, !dbg !2730
  store i8 %166, i8* %36, align 4, !dbg !2730, !tbaa !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  br label %185, !dbg !2731

; <label>:167:                                    ; preds = %152, %146
  %168 = phi i8 [ %155, %152 ], [ %147, %146 ]
  %169 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2732, !tbaa !941
  %170 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 40, !dbg !2732
  %171 = load i32, i32* %170, align 8, !dbg !2732, !tbaa !2631
  %172 = icmp ult i32 %171, 65535, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  br i1 %172, label %173, label %176, !dbg !2732

; <label>:173:                                    ; preds = %167
  %174 = and i32 %171, 65535, !dbg !2732
  %175 = icmp ult i32 %174, 5841, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  br i1 %175, label %180, label %176, !dbg !2735

; <label>:176:                                    ; preds = %167, %173
  %177 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 41, !dbg !2736
  %178 = load i16, i16* %177, align 4, !dbg !2736, !tbaa !2737
  %179 = icmp ugt i16 %178, 717, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2739
  br i1 %179, label %180, label %185, !dbg !2739

; <label>:180:                                    ; preds = %176, %173
  %181 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !2740
  %182 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %181, align 8, !dbg !2740, !tbaa !1167
  %183 = icmp eq void (%struct.netconn*, i32, i16)* %182, null, !dbg !2740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br i1 %183, label %185, label %184, !dbg !2743

; <label>:184:                                    ; preds = %180
  tail call void %182(%struct.netconn* nonnull %0, i32 3, i16 zeroext 0) #9, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  br label %185, !dbg !2744

; <label>:185:                                    ; preds = %180, %164, %184, %176
  %186 = phi i8 [ %155, %164 ], [ %168, %184 ], [ %168, %180 ], [ %168, %176 ], !dbg !2746
  %187 = icmp eq i8 %186, 0, !dbg !2747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2716
  br i1 %187, label %188, label %203, !dbg !2716

; <label>:188:                                    ; preds = %185
  %189 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2748, !tbaa !1170
  %190 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %189, i64 0, i32 2, i32 0, i32 4, !dbg !2750
  %191 = load i64, i64* %190, align 8, !dbg !2750, !tbaa !941
  %192 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %189, i64 0, i32 2, i32 0, i32 3, !dbg !2751
  %193 = load i64, i64* %192, align 8, !dbg !2751, !tbaa !941
  %194 = icmp eq i64 %191, %193, !dbg !2752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  br i1 %194, label %196, label %195, !dbg !2753

; <label>:195:                                    ; preds = %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %44, label %196, label %197, !dbg !2754

; <label>:196:                                    ; preds = %195, %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2755
  br label %197, !dbg !2755

; <label>:197:                                    ; preds = %196, %195
  %198 = phi i8 [ 1, %196 ], [ 0, %195 ], !dbg !2757
  %199 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2758, !tbaa !941
  %200 = tail call signext i8 @tcp_output(%struct.tcp_pcb* %199) #9, !dbg !2759
  %201 = icmp eq i8 %200, -4, !dbg !2761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  br i1 %201, label %202, label %221, !dbg !2763

; <label>:202:                                    ; preds = %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  br label %221, !dbg !2764

; <label>:203:                                    ; preds = %185
  %204 = icmp eq i8 %186, -1, !dbg !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  br i1 %204, label %205, label %219, !dbg !2717

; <label>:205:                                    ; preds = %203
  %206 = load %struct.tcp_pcb*, %struct.tcp_pcb** %17, align 8, !dbg !2767, !tbaa !941
  %207 = tail call signext i8 @tcp_output(%struct.tcp_pcb* %206) #9, !dbg !2768
  %208 = icmp eq i8 %207, -4, !dbg !2770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2773
  %209 = xor i1 %44, true, !dbg !2772
  %210 = or i1 %208, %209, !dbg !2772
  %211 = zext i1 %208 to i8, !dbg !2772
  %212 = select i1 %208, i8 -4, i8 -1, !dbg !2772
  br i1 %210, label %221, label %213, !dbg !2772

; <label>:213:                                    ; preds = %205
  %214 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2774, !tbaa !1170
  %215 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %214, i64 0, i32 2, i32 0, i32 4, !dbg !2777
  %216 = load i64, i64* %215, align 8, !dbg !2777, !tbaa !941
  %217 = icmp eq i64 %216, 0, !dbg !2778
  %218 = select i1 %217, i8 -7, i8 0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br label %221, !dbg !2780

; <label>:219:                                    ; preds = %203, %145
  %220 = phi i8 [ %105, %145 ], [ %186, %203 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2781
  br label %225, !dbg !2781

; <label>:221:                                    ; preds = %213, %205, %197, %202
  %222 = phi i8 [ 1, %202 ], [ %198, %197 ], [ 1, %213 ], [ %211, %205 ], !dbg !2782
  %223 = phi i8 [ -4, %202 ], [ 0, %197 ], [ %218, %213 ], [ %212, %205 ], !dbg !2784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2785
  %224 = icmp eq i8 %222, 0, !dbg !2786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2781
  br i1 %224, label %234, label %225, !dbg !2781

; <label>:225:                                    ; preds = %219, %221
  %226 = phi i8 [ %220, %219 ], [ %223, %221 ]
  %227 = load %struct.api_msg*, %struct.api_msg** %11, align 8, !dbg !2787, !tbaa !1170
  %228 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %227, i64 0, i32 0, !dbg !2787
  %229 = load %struct.netconn*, %struct.netconn** %228, align 8, !dbg !2787, !tbaa !967
  %230 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %227, i64 0, i32 1, !dbg !2788
  store i8 %226, i8* %230, align 8, !dbg !2789, !tbaa !962
  store %struct.api_msg* null, %struct.api_msg** %11, align 8, !dbg !2790, !tbaa !1170
  store i32 0, i32* %6, align 4, !dbg !2791, !tbaa !1161
  %231 = icmp eq i8 %1, 0, !dbg !2792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  br i1 %231, label %234, label %232, !dbg !2794

; <label>:232:                                    ; preds = %225
  %233 = getelementptr inbounds %struct.netconn, %struct.netconn* %229, i64 0, i32 4, !dbg !2787
  tail call void @sys_sem_signal(%struct.sys_sem_t* nonnull %233) #9, !dbg !2796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2798
  br label %234, !dbg !2798

; <label>:234:                                    ; preds = %221, %232, %225
  %235 = phi i8 [ 0, %225 ], [ 0, %232 ], [ -1, %221 ], !dbg !2799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2801
  ret i8 %235, !dbg !2801
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_getaddr(i8* nocapture) local_unnamed_addr #0 !dbg !2802 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2808
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2808, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, i32 0, !dbg !2810
  %5 = load %struct.ip_pcb*, %struct.ip_pcb** %4, align 8, !dbg !2810, !tbaa !941
  %6 = icmp eq %struct.ip_pcb* %5, null, !dbg !2811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2812
  br i1 %6, label %173, label %7, !dbg !2812

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2813
  %9 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !2816
  %10 = load i8, i8* %9, align 8, !dbg !2816, !tbaa !941
  %11 = icmp eq i8 %10, 0, !dbg !2817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  br i1 %11, label %63, label %12, !dbg !2818

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %5, i64 0, i32 0, i32 1, !dbg !2819
  %14 = load i8, i8* %13, align 4, !dbg !2819, !tbaa !2127
  %15 = bitcast i8* %8 to %struct.ip_addr**, !dbg !2819
  %16 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2819, !tbaa !941
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 1, !dbg !2819
  store i8 %14, i8* %17, align 4, !dbg !2819, !tbaa !2129
  %18 = load %struct.ip_pcb*, %struct.ip_pcb** %4, align 8, !dbg !2823, !tbaa !941
  %19 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %18, i64 0, i32 0, i32 1, !dbg !2823
  %20 = load i8, i8* %19, align 4, !dbg !2823, !tbaa !2127
  %21 = icmp eq i8 %20, 6, !dbg !2823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  %22 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2826
  %23 = load i32, i32* %22, align 4, !dbg !2826, !tbaa !941
  br i1 %21, label %24, label %53, !dbg !2825

; <label>:24:                                     ; preds = %12
  %25 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2826, !tbaa !941
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %25, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2826
  store i32 %23, i32* %26, align 4, !dbg !2826, !tbaa !941
  %27 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2826, !tbaa !967
  %28 = getelementptr inbounds %struct.netconn, %struct.netconn* %27, i64 0, i32 2, i32 0, !dbg !2826
  %29 = load %struct.ip_pcb*, %struct.ip_pcb** %28, align 8, !dbg !2826, !tbaa !941
  %30 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2826
  %31 = load i32, i32* %30, align 4, !dbg !2826, !tbaa !941
  %32 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2826, !tbaa !941
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %32, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2826
  store i32 %31, i32* %33, align 4, !dbg !2826, !tbaa !941
  %34 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2826, !tbaa !967
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %34, i64 0, i32 2, i32 0, !dbg !2826
  %36 = load %struct.ip_pcb*, %struct.ip_pcb** %35, align 8, !dbg !2826, !tbaa !941
  %37 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %36, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2826
  %38 = load i32, i32* %37, align 4, !dbg !2826, !tbaa !941
  %39 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2826, !tbaa !941
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %39, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2826
  store i32 %38, i32* %40, align 4, !dbg !2826, !tbaa !941
  %41 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2826, !tbaa !967
  %42 = getelementptr inbounds %struct.netconn, %struct.netconn* %41, i64 0, i32 2, i32 0, !dbg !2826
  %43 = load %struct.ip_pcb*, %struct.ip_pcb** %42, align 8, !dbg !2826, !tbaa !941
  %44 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %43, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2826
  %45 = load i32, i32* %44, align 4, !dbg !2826, !tbaa !941
  %46 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2826, !tbaa !941
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %46, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2826
  store i32 %45, i32* %47, align 4, !dbg !2826, !tbaa !941
  %48 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2826, !tbaa !967
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %48, i64 0, i32 2, i32 0, !dbg !2826
  %50 = load %struct.ip_pcb*, %struct.ip_pcb** %49, align 8, !dbg !2826, !tbaa !941
  %51 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %50, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2826
  %52 = load i8, i8* %51, align 4, !dbg !2826, !tbaa !941
  br label %114, !dbg !2829

; <label>:53:                                     ; preds = %12
  %54 = bitcast i8* %8 to %struct.ip4_addr**, !dbg !2830
  %55 = load %struct.ip4_addr*, %struct.ip4_addr** %54, align 8, !dbg !2830, !tbaa !941
  %56 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %55, i64 0, i32 0, !dbg !2830
  store i32 %23, i32* %56, align 4, !dbg !2830, !tbaa !941
  %57 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2832, !tbaa !941
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %57, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2832
  store i32 0, i32* %58, align 4, !dbg !2832, !tbaa !941
  %59 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2832, !tbaa !941
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %59, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2832
  store i32 0, i32* %60, align 4, !dbg !2832, !tbaa !941
  %61 = load %struct.ip_addr*, %struct.ip_addr** %15, align 8, !dbg !2832, !tbaa !941
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2832
  store i32 0, i32* %62, align 4, !dbg !2832, !tbaa !941
  br label %114

; <label>:63:                                     ; preds = %7
  %64 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %5, i64 0, i32 1, i32 1, !dbg !2834
  %65 = load i8, i8* %64, align 4, !dbg !2834, !tbaa !2838
  %66 = bitcast i8* %8 to %struct.ip_addr**, !dbg !2834
  %67 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2834, !tbaa !941
  %68 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 1, !dbg !2834
  store i8 %65, i8* %68, align 4, !dbg !2834, !tbaa !2129
  %69 = load %struct.ip_pcb*, %struct.ip_pcb** %4, align 8, !dbg !2839, !tbaa !941
  %70 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %69, i64 0, i32 1, i32 1, !dbg !2839
  %71 = load i8, i8* %70, align 4, !dbg !2839, !tbaa !2838
  %72 = icmp eq i8 %71, 6, !dbg !2839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2841
  %73 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %69, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2842
  %74 = load i32, i32* %73, align 4, !dbg !2842, !tbaa !941
  br i1 %72, label %75, label %104, !dbg !2841

; <label>:75:                                     ; preds = %63
  %76 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2842, !tbaa !941
  %77 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %76, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2842
  store i32 %74, i32* %77, align 4, !dbg !2842, !tbaa !941
  %78 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2842, !tbaa !967
  %79 = getelementptr inbounds %struct.netconn, %struct.netconn* %78, i64 0, i32 2, i32 0, !dbg !2842
  %80 = load %struct.ip_pcb*, %struct.ip_pcb** %79, align 8, !dbg !2842, !tbaa !941
  %81 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %80, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2842
  %82 = load i32, i32* %81, align 4, !dbg !2842, !tbaa !941
  %83 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2842, !tbaa !941
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2842
  store i32 %82, i32* %84, align 4, !dbg !2842, !tbaa !941
  %85 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2842, !tbaa !967
  %86 = getelementptr inbounds %struct.netconn, %struct.netconn* %85, i64 0, i32 2, i32 0, !dbg !2842
  %87 = load %struct.ip_pcb*, %struct.ip_pcb** %86, align 8, !dbg !2842, !tbaa !941
  %88 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %87, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2842
  %89 = load i32, i32* %88, align 4, !dbg !2842, !tbaa !941
  %90 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2842, !tbaa !941
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %90, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2842
  store i32 %89, i32* %91, align 4, !dbg !2842, !tbaa !941
  %92 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2842, !tbaa !967
  %93 = getelementptr inbounds %struct.netconn, %struct.netconn* %92, i64 0, i32 2, i32 0, !dbg !2842
  %94 = load %struct.ip_pcb*, %struct.ip_pcb** %93, align 8, !dbg !2842, !tbaa !941
  %95 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %94, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2842
  %96 = load i32, i32* %95, align 4, !dbg !2842, !tbaa !941
  %97 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2842, !tbaa !941
  %98 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %97, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2842
  store i32 %96, i32* %98, align 4, !dbg !2842, !tbaa !941
  %99 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2842, !tbaa !967
  %100 = getelementptr inbounds %struct.netconn, %struct.netconn* %99, i64 0, i32 2, i32 0, !dbg !2842
  %101 = load %struct.ip_pcb*, %struct.ip_pcb** %100, align 8, !dbg !2842, !tbaa !941
  %102 = getelementptr inbounds %struct.ip_pcb, %struct.ip_pcb* %101, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2842
  %103 = load i8, i8* %102, align 4, !dbg !2842, !tbaa !941
  br label %114, !dbg !2845

; <label>:104:                                    ; preds = %63
  %105 = bitcast i8* %8 to %struct.ip4_addr**, !dbg !2846
  %106 = load %struct.ip4_addr*, %struct.ip4_addr** %105, align 8, !dbg !2846, !tbaa !941
  %107 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %106, i64 0, i32 0, !dbg !2846
  store i32 %74, i32* %107, align 4, !dbg !2846, !tbaa !941
  %108 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2848, !tbaa !941
  %109 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %108, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2848
  store i32 0, i32* %109, align 4, !dbg !2848, !tbaa !941
  %110 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2848, !tbaa !941
  %111 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %110, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2848
  store i32 0, i32* %111, align 4, !dbg !2848, !tbaa !941
  %112 = load %struct.ip_addr*, %struct.ip_addr** %66, align 8, !dbg !2848, !tbaa !941
  %113 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %112, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2848
  store i32 0, i32* %113, align 4, !dbg !2848, !tbaa !941
  br label %114

; <label>:114:                                    ; preds = %75, %104, %24, %53
  %115 = phi %struct.ip_addr** [ %66, %75 ], [ %66, %104 ], [ %15, %24 ], [ %15, %53 ]
  %116 = phi i8 [ %103, %75 ], [ 0, %104 ], [ %52, %24 ], [ 0, %53 ]
  %117 = load %struct.ip_addr*, %struct.ip_addr** %115, align 8, !dbg !2850, !tbaa !941
  %118 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %117, i64 0, i32 0, i32 0, i32 1, !dbg !2850
  store i8 %116, i8* %118, align 4, !dbg !2850, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %119 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2851
  store i8 0, i8* %119, align 8, !dbg !2852, !tbaa !962
  %120 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2853, !tbaa !967
  %121 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i64 0, i32 0, !dbg !2853
  %122 = load i32, i32* %121, align 8, !dbg !2853, !tbaa !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2854
  %123 = trunc i32 %122 to i8, !dbg !2854
  %124 = and i8 %123, -16, !dbg !2854
  switch i8 %124, label %172 [
    i8 32, label %125
    i8 16, label %149
  ], !dbg !2854

; <label>:125:                                    ; preds = %114
  %126 = load i8, i8* %9, align 8, !dbg !2855, !tbaa !941
  %127 = icmp eq i8 %126, 0, !dbg !2858
  %128 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i64 0, i32 2, !dbg !2859
  %129 = bitcast %union.anon* %128 to %struct.udp_pcb**, !dbg !2859
  %130 = load %struct.udp_pcb*, %struct.udp_pcb** %129, align 8, !dbg !2859, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  br i1 %127, label %137, label %131, !dbg !2862

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %130, i64 0, i32 8, !dbg !2863
  %133 = load i16, i16* %132, align 2, !dbg !2863, !tbaa !2865
  %134 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2866
  %135 = bitcast i8* %134 to i16**, !dbg !2866
  %136 = load i16*, i16** %135, align 8, !dbg !2866, !tbaa !941
  store i16 %133, i16* %136, align 2, !dbg !2867, !tbaa !2868
  br label %175, !dbg !2869

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %130, i64 0, i32 7, !dbg !2870
  %139 = load i8, i8* %138, align 8, !dbg !2870, !tbaa !1017
  %140 = and i8 %139, 4, !dbg !2871
  %141 = icmp eq i8 %140, 0, !dbg !2872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2873
  br i1 %141, label %142, label %143, !dbg !2873

; <label>:142:                                    ; preds = %137
  store i8 -11, i8* %119, align 8, !dbg !2874, !tbaa !962
  br label %175, !dbg !2876

; <label>:143:                                    ; preds = %137
  %144 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %130, i64 0, i32 9, !dbg !2877
  %145 = load i16, i16* %144, align 4, !dbg !2877, !tbaa !2879
  %146 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2880
  %147 = bitcast i8* %146 to i16**, !dbg !2880
  %148 = load i16*, i16** %147, align 8, !dbg !2880, !tbaa !941
  store i16 %145, i16* %148, align 2, !dbg !2881, !tbaa !2868
  br label %175

; <label>:149:                                    ; preds = %114
  %150 = load i8, i8* %9, align 8, !dbg !2882, !tbaa !941
  %151 = icmp eq i8 %150, 0, !dbg !2884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2885
  %152 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i64 0, i32 2, !dbg !2886
  %153 = bitcast %union.anon* %152 to %struct.tcp_pcb**, !dbg !2886
  %154 = load %struct.tcp_pcb*, %struct.tcp_pcb** %153, align 8, !dbg !2886, !tbaa !941
  br i1 %151, label %155, label %162, !dbg !2885

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %154, i64 0, i32 8, !dbg !2888
  %157 = load i32, i32* %156, align 8, !dbg !2888, !tbaa !1577
  %158 = icmp eq i32 %157, 0, !dbg !2889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  br i1 %158, label %161, label %159, !dbg !2890

; <label>:159:                                    ; preds = %155
  %160 = icmp eq i32 %157, 1, !dbg !2891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2892
  br i1 %160, label %161, label %164, !dbg !2892

; <label>:161:                                    ; preds = %159, %155
  store i8 -11, i8* %119, align 8, !dbg !2893, !tbaa !962
  br label %175, !dbg !2895

; <label>:162:                                    ; preds = %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2896
  %163 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %154, i64 0, i32 10, !dbg !2897
  br label %166, !dbg !2896

; <label>:164:                                    ; preds = %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2896
  %165 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %154, i64 0, i32 11, !dbg !2898
  br label %166, !dbg !2896

; <label>:166:                                    ; preds = %164, %162
  %167 = phi i16* [ %163, %162 ], [ %165, %164 ]
  %168 = load i16, i16* %167, align 2, !dbg !2886, !tbaa !2868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2896
  %169 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2899
  %170 = bitcast i8* %169 to i16**, !dbg !2899
  %171 = load i16*, i16** %170, align 8, !dbg !2899, !tbaa !941
  store i16 %168, i16* %171, align 2, !dbg !2900, !tbaa !2868
  br label %175

; <label>:172:                                    ; preds = %114
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2901
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2906
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2906
  unreachable

; <label>:173:                                    ; preds = %1
  %174 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2910
  store i8 -11, i8* %174, align 8, !dbg !2912, !tbaa !962
  br label %175

; <label>:175:                                    ; preds = %142, %143, %131, %166, %161, %173
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2913
  ret void, !dbg !2913
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_close(i8*) local_unnamed_addr #0 !dbg !2914 {
  %2 = bitcast i8* %0 to %struct.netconn**, !dbg !2921
  %3 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2921, !tbaa !967
  %4 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 1, !dbg !2922
  %5 = load i32, i32* %4, align 4, !dbg !2922, !tbaa !1161
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 2, !dbg !2924
  %7 = bitcast %union.anon* %6 to %struct.tcp_pcb**, !dbg !2926
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8, !dbg !2926, !tbaa !941
  %9 = icmp eq %struct.tcp_pcb* %8, null, !dbg !2927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  br i1 %9, label %56, label %10, !dbg !2928

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %3, i64 0, i32 0, !dbg !2929
  %12 = load i32, i32* %11, align 8, !dbg !2929, !tbaa !987
  %13 = and i32 %12, 240, !dbg !2929
  %14 = icmp eq i32 %13, 16, !dbg !2930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2931
  br i1 %14, label %15, label %56, !dbg !2931

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2932
  %17 = load i8, i8* %16, align 8, !dbg !2933, !tbaa !941
  %18 = icmp eq i8 %17, 3, !dbg !2934
  %19 = icmp ne i32 %5, 2, !dbg !2935
  %20 = or i1 %19, %18, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  br i1 %20, label %21, label %56, !dbg !2936

; <label>:21:                                     ; preds = %15
  %22 = icmp eq i32 %5, 3, !dbg !2937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br i1 %22, label %56, label %23, !dbg !2940

; <label>:23:                                     ; preds = %21
  %24 = icmp eq i32 %5, 1, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2943
  br i1 %24, label %56, label %25, !dbg !2943

; <label>:25:                                     ; preds = %23
  %26 = and i8 %17, 1, !dbg !2944
  %27 = icmp eq i8 %26, 0, !dbg !2944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %27, label %30, label %28, !dbg !2947

; <label>:28:                                     ; preds = %25
  tail call fastcc void @netconn_drain(%struct.netconn* nonnull %3) #7, !dbg !2948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  %29 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2951, !tbaa !967
  br label %30, !dbg !2950

; <label>:30:                                     ; preds = %25, %28
  %31 = phi %struct.netconn* [ %3, %25 ], [ %29, %28 ], !dbg !2951
  %32 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i64 0, i32 9, !dbg !2951
  %33 = load %struct.api_msg*, %struct.api_msg** %32, align 8, !dbg !2951, !tbaa !1170
  %34 = icmp eq %struct.api_msg* %33, null, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2954
  br i1 %34, label %36, label %35, !dbg !2954

; <label>:35:                                     ; preds = %30
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2955
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2958
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2958
  unreachable

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i64 0, i32 1, !dbg !2962
  store i32 4, i32* %37, align 4, !dbg !2963, !tbaa !1161
  %38 = bitcast %struct.api_msg** %32 to i8**, !dbg !2964
  store i8* %0, i8** %38, align 8, !dbg !2964, !tbaa !1170
  %39 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* %31, i8 zeroext 0) #7, !dbg !2965
  %40 = icmp eq i8 %39, 0, !dbg !2967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  br i1 %40, label %59, label %41, !dbg !2968

; <label>:41:                                     ; preds = %36
  %42 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2969, !tbaa !967
  %43 = getelementptr inbounds %struct.netconn, %struct.netconn* %42, i64 0, i32 1, !dbg !2969
  %44 = load i32, i32* %43, align 4, !dbg !2969, !tbaa !1161
  %45 = icmp eq i32 %44, 4, !dbg !2969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  br i1 %45, label %47, label %46, !dbg !2973

; <label>:46:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2974
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2977
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2977
  unreachable

; <label>:47:                                     ; preds = %41
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2981
  %48 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2982, !tbaa !967
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %48, i64 0, i32 4, !dbg !2982
  %50 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* nonnull %49, i32 0) #9, !dbg !2983
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !2984
  %51 = load %struct.netconn*, %struct.netconn** %2, align 8, !dbg !2985, !tbaa !967
  %52 = getelementptr inbounds %struct.netconn, %struct.netconn* %51, i64 0, i32 1, !dbg !2985
  %53 = load i32, i32* %52, align 4, !dbg !2985, !tbaa !1161
  %54 = icmp eq i32 %53, 0, !dbg !2985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2988
  br i1 %54, label %59, label %55, !dbg !2988

; <label>:55:                                     ; preds = %47
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !2989
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2992
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2992
  unreachable

; <label>:56:                                     ; preds = %10, %15, %1, %23, %21
  %57 = phi i8 [ -11, %21 ], [ -5, %23 ], [ -11, %1 ], [ -11, %15 ], [ -11, %10 ]
  %58 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2996
  store i8 %57, i8* %58, align 8, !dbg !2996, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %59, !dbg !2998

; <label>:59:                                     ; preds = %47, %36, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  ret void, !dbg !2998
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_join_leave_group(i8* nocapture) local_unnamed_addr #0 !dbg !3000 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3006
  store i8 -11, i8* %2, align 8, !dbg !3007, !tbaa !962
  %3 = bitcast i8* %0 to %struct.netconn**, !dbg !3008
  %4 = load %struct.netconn*, %struct.netconn** %3, align 8, !dbg !3008, !tbaa !967
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 2, !dbg !3010
  %6 = bitcast %union.anon* %5 to %struct.tcp_pcb**, !dbg !3011
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8, !dbg !3011, !tbaa !941
  %8 = icmp eq %struct.tcp_pcb* %7, null, !dbg !3012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  br i1 %8, label %35, label %9, !dbg !3013

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i64 0, i32 0, !dbg !3014
  %11 = load i32, i32* %10, align 8, !dbg !3014, !tbaa !987
  %12 = and i32 %11, 240, !dbg !3014
  %13 = icmp eq i32 %12, 32, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  br i1 %13, label %14, label %34, !dbg !3018

; <label>:14:                                     ; preds = %9
  %15 = and i32 %11, 8, !dbg !3019
  %16 = icmp eq i32 %15, 0, !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3022
  br i1 %16, label %35, label %17, !dbg !3022

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3023
  %19 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !3026
  %20 = bitcast i8* %19 to i32*, !dbg !3026
  %21 = load i32, i32* %20, align 4, !dbg !3026, !tbaa !941
  %22 = icmp eq i32 %21, 0, !dbg !3027
  %23 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !3028
  %24 = bitcast i8* %23 to %struct.ip_addr**, !dbg !3028
  %25 = load %struct.ip_addr*, %struct.ip_addr** %24, align 8, !dbg !3028, !tbaa !941
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %25, i64 0, i32 0, i32 0, !dbg !3028
  %27 = bitcast i8* %18 to %struct.ip_addr**, !dbg !3028
  %28 = load %struct.ip_addr*, %struct.ip_addr** %27, align 8, !dbg !3028, !tbaa !941
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, !dbg !3028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3030
  br i1 %22, label %30, label %32, !dbg !3030

; <label>:30:                                     ; preds = %17
  %31 = tail call signext i8 @mld6_joingroup(%struct.ip6_addr* %26, %struct.ip6_addr* %29) #9, !dbg !3031
  store i8 %31, i8* %2, align 8, !dbg !3033, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3034
  br label %35, !dbg !3034

; <label>:32:                                     ; preds = %17
  %33 = tail call signext i8 @mld6_leavegroup(%struct.ip6_addr* %26, %struct.ip6_addr* %29) #9, !dbg !3035
  store i8 %33, i8* %2, align 8, !dbg !3036, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %35

; <label>:34:                                     ; preds = %9
  store i8 -6, i8* %2, align 8, !dbg !3037, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %35

; <label>:35:                                     ; preds = %14, %1, %34, %30, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3039
  ret void, !dbg !3039
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_join_leave_group_netif(i8* nocapture) local_unnamed_addr #0 !dbg !3040 {
  %2 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3046
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !3047
  %4 = load i8, i8* %3, align 8, !dbg !3047, !tbaa !941
  %5 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %4) #9, !dbg !3048
  %6 = icmp eq %struct.netif* %5, null, !dbg !3050
  %7 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3053
  br i1 %6, label %8, label %9, !dbg !3053

; <label>:8:                                      ; preds = %1
  store i8 -12, i8* %7, align 8, !dbg !3054, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  br label %37, !dbg !3056

; <label>:9:                                      ; preds = %1
  store i8 -11, i8* %7, align 8, !dbg !3058, !tbaa !962
  %10 = bitcast i8* %0 to %struct.netconn**, !dbg !3059
  %11 = load %struct.netconn*, %struct.netconn** %10, align 8, !dbg !3059, !tbaa !967
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %11, i64 0, i32 2, !dbg !3061
  %13 = bitcast %union.anon* %12 to %struct.tcp_pcb**, !dbg !3062
  %14 = load %struct.tcp_pcb*, %struct.tcp_pcb** %13, align 8, !dbg !3062, !tbaa !941
  %15 = icmp eq %struct.tcp_pcb* %14, null, !dbg !3063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  br i1 %15, label %37, label %16, !dbg !3064

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %11, i64 0, i32 0, !dbg !3065
  %18 = load i32, i32* %17, align 8, !dbg !3065, !tbaa !987
  %19 = and i32 %18, 240, !dbg !3065
  %20 = icmp eq i32 %19, 32, !dbg !3068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br i1 %20, label %21, label %36, !dbg !3069

; <label>:21:                                     ; preds = %16
  %22 = and i32 %18, 8, !dbg !3070
  %23 = icmp eq i32 %22, 0, !dbg !3070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3073
  br i1 %23, label %37, label %24, !dbg !3073

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !3074
  %26 = bitcast i8* %25 to i32*, !dbg !3074
  %27 = load i32, i32* %26, align 4, !dbg !3074, !tbaa !941
  %28 = icmp eq i32 %27, 0, !dbg !3077
  %29 = bitcast i8* %2 to %struct.ip_addr**, !dbg !3078
  %30 = load %struct.ip_addr*, %struct.ip_addr** %29, align 8, !dbg !3078, !tbaa !941
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %30, i64 0, i32 0, i32 0, !dbg !3078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3080
  br i1 %28, label %32, label %34, !dbg !3080

; <label>:32:                                     ; preds = %24
  %33 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %5, %struct.ip6_addr* %31) #9, !dbg !3081
  store i8 %33, i8* %7, align 8, !dbg !3083, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3084
  br label %37, !dbg !3084

; <label>:34:                                     ; preds = %24
  %35 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %5, %struct.ip6_addr* %31) #9, !dbg !3085
  store i8 %35, i8* %7, align 8, !dbg !3086, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %37

; <label>:36:                                     ; preds = %16
  store i8 -6, i8* %7, align 8, !dbg !3087, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %37

; <label>:37:                                     ; preds = %21, %9, %34, %32, %36, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3089
  ret void, !dbg !3089
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @lwip_netconn_do_gethostbyname(i8*) local_unnamed_addr #0 !dbg !3090 {
  %2 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3096
  %3 = load i8, i8* %2, align 8, !dbg !3096, !tbaa !3097
  %4 = bitcast i8* %0 to i8**, !dbg !3100
  %5 = load i8*, i8** %4, align 8, !dbg !3100, !tbaa !3101
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3102
  %7 = bitcast i8* %6 to %struct.ip_addr**, !dbg !3102
  %8 = load %struct.ip_addr*, %struct.ip_addr** %7, align 8, !dbg !3102, !tbaa !3103
  %9 = tail call signext i8 @dns_gethostbyname_addrtype(i8* %5, %struct.ip_addr* %8, void (i8*, %struct.ip_addr*, i8*)* nonnull @lwip_netconn_do_dns_found, i8* %0, i8 zeroext %3) #9, !dbg !3104
  %10 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !3105
  %11 = bitcast i8* %10 to i8**, !dbg !3105
  %12 = load i8*, i8** %11, align 8, !dbg !3105, !tbaa !3106
  store i8 %9, i8* %12, align 1, !dbg !3107, !tbaa !941
  %13 = load i8*, i8** %11, align 8, !dbg !3108, !tbaa !3106
  %14 = load i8, i8* %13, align 1, !dbg !3108, !tbaa !941
  %15 = icmp eq i8 %14, -5, !dbg !3110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3111
  br i1 %15, label %16, label %25, !dbg !3111

; <label>:16:                                     ; preds = %1
  tail call void @sys_mutex_unlock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !3113
  %17 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !3115
  %18 = bitcast i8* %17 to %struct.sys_sem_t**, !dbg !3115
  %19 = load %struct.sys_sem_t*, %struct.sys_sem_t** %18, align 8, !dbg !3115, !tbaa !3116
  %20 = tail call i32 @sys_arch_sem_wait(%struct.sys_sem_t* %19, i32 0) #9, !dbg !3115
  tail call void @sys_mutex_lock(%struct.sys_mutex_t* nonnull @lock_tcpip_core) #9, !dbg !3117
  %21 = load i8*, i8** %11, align 8, !dbg !3118, !tbaa !3106
  %22 = load i8, i8* %21, align 1, !dbg !3118, !tbaa !941
  %23 = icmp eq i8 %22, -5, !dbg !3118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  br i1 %23, label %24, label %25, !dbg !3121

; <label>:24:                                     ; preds = %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !3122
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3125
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3125
  unreachable

; <label>:25:                                     ; preds = %16, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3129
  ret void, !dbg !3129
}

; Function Attrs: noredzone
declare dso_local signext i8 @dns_gethostbyname_addrtype(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @lwip_netconn_do_dns_found(i8* nocapture readnone, %struct.ip_addr* readonly, i8* nocapture readonly) #0 !dbg !3130 {
  %4 = icmp eq %struct.ip_addr* %1, null, !dbg !3142
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3144
  %6 = bitcast i8* %5 to i8**, !dbg !3144
  %7 = load i8*, i8** %6, align 8, !dbg !3144, !tbaa !3106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3146
  br i1 %4, label %8, label %9, !dbg !3146

; <label>:8:                                      ; preds = %3
  store i8 -6, i8* %7, align 1, !dbg !3147, !tbaa !941
  br label %14, !dbg !3149

; <label>:9:                                      ; preds = %3
  store i8 0, i8* %7, align 1, !dbg !3150, !tbaa !941
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !3151
  %11 = bitcast i8* %10 to i8**, !dbg !3151
  %12 = load i8*, i8** %11, align 8, !dbg !3151, !tbaa !3103
  %13 = bitcast %struct.ip_addr* %1 to i8*, !dbg !3152
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 24, i1 false), !dbg !3152, !tbaa.struct !3153
  br label %14

; <label>:14:                                     ; preds = %9, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %15 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !3154
  %16 = bitcast i8* %15 to %struct.sys_sem_t**, !dbg !3154
  %17 = load %struct.sys_sem_t*, %struct.sys_sem_t** %16, align 8, !dbg !3154, !tbaa !3116
  tail call void @sys_sem_signal(%struct.sys_sem_t* %17) #9, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3156
  ret void, !dbg !3156
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
define internal void @recv_udp(i8*, %struct.udp_pcb* readnone, %struct.pbuf*, %struct.ip_addr* readonly, i16 zeroext) #0 !dbg !3157 {
  %6 = icmp eq %struct.udp_pcb* %1, null, !dbg !3172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3175
  br i1 %6, label %7, label %8, !dbg !3175

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !3176
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3179
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3179
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8* %0, null, !dbg !3183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  br i1 %9, label %10, label %11, !dbg !3186

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !3187
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3190
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3190
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = bitcast i8* %0 to %struct.netconn*, !dbg !3194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  %13 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3197
  %14 = bitcast i8* %13 to %struct.udp_pcb**, !dbg !3197
  %15 = load %struct.udp_pcb*, %struct.udp_pcb** %14, align 8, !dbg !3197, !tbaa !941
  %16 = icmp eq %struct.udp_pcb* %15, %1, !dbg !3197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3200
  br i1 %16, label %18, label %17, !dbg !3200

; <label>:17:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3201
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3204
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3204
  unreachable

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !3208
  %20 = bitcast i8* %19 to %struct.sys_mbox_t*, !dbg !3208
  %21 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %20) #9, !dbg !3208
  %22 = icmp eq i32 %21, 0, !dbg !3208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3210
  br i1 %22, label %23, label %25, !dbg !3210

; <label>:23:                                     ; preds = %18
  %24 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !3211
  br label %87, !dbg !3213

; <label>:25:                                     ; preds = %18
  %26 = tail call i8* @memp_malloc(i32 6) #9, !dbg !3214
  %27 = bitcast i8* %26 to %struct.netbuf*, !dbg !3215
  %28 = icmp eq i8* %26, null, !dbg !3217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3219
  br i1 %28, label %29, label %31, !dbg !3219

; <label>:29:                                     ; preds = %25
  %30 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !3220
  br label %87, !dbg !3222

; <label>:31:                                     ; preds = %25
  %32 = bitcast i8* %26 to %struct.pbuf**, !dbg !3223
  store %struct.pbuf* %2, %struct.pbuf** %32, align 8, !dbg !3225, !tbaa !2369
  %33 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !3226
  %34 = bitcast i8* %33 to %struct.pbuf**, !dbg !3226
  store %struct.pbuf* %2, %struct.pbuf** %34, align 8, !dbg !3227, !tbaa !3228
  %35 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !3229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !3234
  %37 = load i8, i8* %36, align 4, !dbg !3234, !tbaa !2129
  %38 = getelementptr inbounds i8, i8* %26, i64 36, !dbg !3234
  store i8 %37, i8* %38, align 4, !dbg !3234, !tbaa !2361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  %39 = icmp eq %struct.ip_addr* %3, null, !dbg !3238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3238
  br i1 %39, label %40, label %41, !dbg !3238

; <label>:40:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  br label %62, !dbg !3240

; <label>:41:                                     ; preds = %31
  %42 = load i8, i8* %36, align 4, !dbg !3238, !tbaa !2129
  %43 = icmp eq i8 %42, 6, !dbg !3238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3243
  %45 = load i32, i32* %44, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  br i1 %43, label %46, label %62, !dbg !3242

; <label>:46:                                     ; preds = %41
  %47 = bitcast i8* %35 to i32*, !dbg !3243
  store i32 %45, i32* %47, align 8, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3243
  %49 = load i32, i32* %48, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %50 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !3243
  %51 = bitcast i8* %50 to i32*, !dbg !3243
  store i32 %49, i32* %51, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %52 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3243
  %53 = load i32, i32* %52, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %54 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !3243
  %55 = bitcast i8* %54 to i32*, !dbg !3243
  store i32 %53, i32* %55, align 8, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3243
  %57 = load i32, i32* %56, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %58 = getelementptr inbounds i8, i8* %26, i64 28, !dbg !3243
  %59 = bitcast i8* %58 to i32*, !dbg !3243
  store i32 %57, i32* %59, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !3243
  %61 = load i8, i8* %60, align 4, !dbg !3243, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  br label %71, !dbg !3246

; <label>:62:                                     ; preds = %41, %40
  %63 = phi i32 [ 0, %40 ], [ %45, %41 ], !dbg !3240
  %64 = bitcast i8* %35 to i32*, !dbg !3240
  store i32 %63, i32* %64, align 8, !dbg !3240, !tbaa !941
  %65 = getelementptr inbounds i8, i8* %26, i64 28, !dbg !3247
  %66 = bitcast i8* %65 to i32*, !dbg !3247
  store i32 0, i32* %66, align 4, !dbg !3247, !tbaa !941
  %67 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !3247
  %68 = bitcast i8* %67 to i32*, !dbg !3247
  store i32 0, i32* %68, align 8, !dbg !3247, !tbaa !941
  %69 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !3247
  %70 = bitcast i8* %69 to i32*, !dbg !3247
  store i32 0, i32* %70, align 4, !dbg !3247, !tbaa !941
  br label %71

; <label>:71:                                     ; preds = %62, %46
  %72 = phi i8 [ 0, %62 ], [ %61, %46 ]
  %73 = getelementptr inbounds i8, i8* %26, i64 32, !dbg !3247
  store i8 %72, i8* %73, align 8, !dbg !3247, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %74 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !3249
  %75 = bitcast i8* %74 to i16*, !dbg !3249
  store i16 %4, i16* %75, align 8, !dbg !3250, !tbaa !2375
  %76 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3251
  %77 = load i16, i16* %76, align 8, !dbg !3251, !tbaa !3252
  %78 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %20, i8* nonnull %26) #9, !dbg !3255
  %79 = icmp eq i8 %78, 0, !dbg !3257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3258
  br i1 %79, label %81, label %80, !dbg !3258

; <label>:80:                                     ; preds = %71
  tail call void @netbuf_delete(%struct.netbuf* nonnull %27) #9, !dbg !3259
  br label %87, !dbg !3261

; <label>:81:                                     ; preds = %71
  %82 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3262
  %83 = bitcast i8* %82 to void (%struct.netconn*, i32, i16)**, !dbg !3262
  %84 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %83, align 8, !dbg !3262, !tbaa !1167
  %85 = icmp eq void (%struct.netconn*, i32, i16)* %84, null, !dbg !3262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3265
  br i1 %85, label %87, label %86, !dbg !3265

; <label>:86:                                     ; preds = %81
  tail call void %84(%struct.netconn* nonnull %12, i32 0, i16 zeroext %77) #9, !dbg !3266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  br label %87, !dbg !3266

; <label>:87:                                     ; preds = %86, %81, %80, %29, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3269
  ret void, !dbg !3269
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
define internal signext i8 @sent_tcp(i8*, %struct.tcp_pcb* nocapture readnone, i16 zeroext) #0 !dbg !3270 {
  %4 = bitcast i8* %0 to %struct.netconn*, !dbg !3279
  %5 = icmp eq i8* %0, null, !dbg !3281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3284
  br i1 %5, label %6, label %7, !dbg !3284

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3285
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3288
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3288
  unreachable

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3292
  %8 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3293
  %9 = bitcast i8* %8 to i32*, !dbg !3293
  %10 = load i32, i32* %9, align 4, !dbg !3293, !tbaa !1161
  %11 = icmp eq i32 %10, 1, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3298
  br i1 %11, label %12, label %14, !dbg !3298

; <label>:12:                                     ; preds = %7
  %13 = tail call fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn* nonnull %4, i8 zeroext 1) #7, !dbg !3299
  br label %18, !dbg !3301

; <label>:14:                                     ; preds = %7
  %15 = icmp eq i32 %10, 4, !dbg !3302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3304
  br i1 %15, label %16, label %19, !dbg !3304

; <label>:16:                                     ; preds = %14
  %17 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* nonnull %4, i8 zeroext 1) #7, !dbg !3305
  br label %18, !dbg !3307

; <label>:18:                                     ; preds = %12, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3308
  br label %19, !dbg !3309

; <label>:19:                                     ; preds = %18, %14
  %20 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3309
  %21 = bitcast i8* %20 to %struct.tcp_pcb**, !dbg !3311
  %22 = load %struct.tcp_pcb*, %struct.tcp_pcb** %21, align 8, !dbg !3311, !tbaa !941
  %23 = icmp eq %struct.tcp_pcb* %22, null, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  br i1 %23, label %44, label %24, !dbg !3313

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %22, i64 0, i32 40, !dbg !3314
  %26 = load i32, i32* %25, align 8, !dbg !3314, !tbaa !2631
  %27 = icmp ult i32 %26, 65535, !dbg !3314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3315
  br i1 %27, label %28, label %31, !dbg !3314

; <label>:28:                                     ; preds = %24
  %29 = and i32 %26, 65535, !dbg !3314
  %30 = icmp ugt i32 %29, 5840, !dbg !3314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  br i1 %30, label %31, label %44, !dbg !3316

; <label>:31:                                     ; preds = %24, %28
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %22, i64 0, i32 41, !dbg !3317
  %33 = load i16, i16* %32, align 4, !dbg !3317, !tbaa !2737
  %34 = icmp ult i16 %33, 718, !dbg !3318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3319
  br i1 %34, label %35, label %44, !dbg !3319

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !3320
  %37 = load i8, i8* %36, align 4, !dbg !3320, !tbaa !1173
  %38 = and i8 %37, -17, !dbg !3320
  store i8 %38, i8* %36, align 4, !dbg !3320, !tbaa !1173
  %39 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3323
  %40 = bitcast i8* %39 to void (%struct.netconn*, i32, i16)**, !dbg !3323
  %41 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %40, align 8, !dbg !3323, !tbaa !1167
  %42 = icmp eq void (%struct.netconn*, i32, i16)* %41, null, !dbg !3323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3325
  br i1 %42, label %44, label %43, !dbg !3325

; <label>:43:                                     ; preds = %35
  tail call void %41(%struct.netconn* nonnull %4, i32 2, i16 zeroext %2) #9, !dbg !3326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3326
  br label %44, !dbg !3326

; <label>:44:                                     ; preds = %35, %19, %28, %31, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3328
  ret i8 0, !dbg !3328
}

; Function Attrs: noredzone nounwind
define internal signext i8 @poll_tcp(i8*, %struct.tcp_pcb* nocapture readnone) #0 !dbg !3329 {
  %3 = bitcast i8* %0 to %struct.netconn*, !dbg !3336
  %4 = icmp eq i8* %0, null, !dbg !3338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3341
  br i1 %4, label %5, label %6, !dbg !3341

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3342
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3345
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3345
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3349
  %8 = bitcast i8* %7 to i32*, !dbg !3349
  %9 = load i32, i32* %8, align 4, !dbg !3349, !tbaa !1161
  %10 = icmp eq i32 %9, 1, !dbg !3351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  br i1 %10, label %11, label %13, !dbg !3352

; <label>:11:                                     ; preds = %6
  %12 = tail call fastcc signext i8 @lwip_netconn_do_writemore(%struct.netconn* nonnull %3, i8 zeroext 1) #7, !dbg !3353
  br label %30, !dbg !3355

; <label>:13:                                     ; preds = %6
  %14 = icmp eq i32 %9, 4, !dbg !3356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  br i1 %14, label %15, label %31, !dbg !3358

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !3359
  %17 = bitcast i8* %16 to %struct.api_msg**, !dbg !3359
  %18 = load %struct.api_msg*, %struct.api_msg** %17, align 8, !dbg !3359, !tbaa !1170
  %19 = icmp eq %struct.api_msg* %18, null, !dbg !3362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3363
  br i1 %19, label %28, label %20, !dbg !3363

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %18, i64 0, i32 2, !dbg !3364
  %22 = bitcast %union.anon.1* %21 to %struct.anon.7*, !dbg !3365
  %23 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %22, i64 0, i32 1, !dbg !3366
  %24 = load i8, i8* %23, align 1, !dbg !3366, !tbaa !941
  %25 = icmp eq i8 %24, 0, !dbg !3367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3368
  br i1 %25, label %28, label %26, !dbg !3368

; <label>:26:                                     ; preds = %20
  %27 = add i8 %24, -1, !dbg !3369
  store i8 %27, i8* %23, align 1, !dbg !3369, !tbaa !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3371
  br label %28, !dbg !3371

; <label>:28:                                     ; preds = %20, %15, %26
  %29 = tail call fastcc signext i8 @lwip_netconn_do_close_internal(%struct.netconn* nonnull %3, i8 zeroext 1) #7, !dbg !3372
  br label %30, !dbg !3373

; <label>:30:                                     ; preds = %11, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3374
  br label %31, !dbg !3375

; <label>:31:                                     ; preds = %30, %13
  %32 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !3375
  %33 = load i8, i8* %32, align 4, !dbg !3375, !tbaa !1173
  %34 = and i8 %33, 16, !dbg !3377
  %35 = icmp eq i8 %34, 0, !dbg !3377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  br i1 %35, label %59, label %36, !dbg !3378

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3379
  %38 = bitcast i8* %37 to %struct.tcp_pcb**, !dbg !3382
  %39 = load %struct.tcp_pcb*, %struct.tcp_pcb** %38, align 8, !dbg !3382, !tbaa !941
  %40 = icmp eq %struct.tcp_pcb* %39, null, !dbg !3383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3384
  br i1 %40, label %59, label %41, !dbg !3384

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %39, i64 0, i32 40, !dbg !3385
  %43 = load i32, i32* %42, align 8, !dbg !3385, !tbaa !2631
  %44 = icmp ult i32 %43, 65535, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  br i1 %44, label %45, label %48, !dbg !3385

; <label>:45:                                     ; preds = %41
  %46 = and i32 %43, 65535, !dbg !3385
  %47 = icmp ugt i32 %46, 5840, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3387
  br i1 %47, label %48, label %59, !dbg !3387

; <label>:48:                                     ; preds = %41, %45
  %49 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %39, i64 0, i32 41, !dbg !3388
  %50 = load i16, i16* %49, align 4, !dbg !3388, !tbaa !2737
  %51 = icmp ult i16 %50, 718, !dbg !3389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3390
  br i1 %51, label %52, label %59, !dbg !3390

; <label>:52:                                     ; preds = %48
  %53 = and i8 %33, -17, !dbg !3391
  store i8 %53, i8* %32, align 4, !dbg !3391, !tbaa !1173
  %54 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3394
  %55 = bitcast i8* %54 to void (%struct.netconn*, i32, i16)**, !dbg !3394
  %56 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %55, align 8, !dbg !3394, !tbaa !1167
  %57 = icmp eq void (%struct.netconn*, i32, i16)* %56, null, !dbg !3394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3396
  br i1 %57, label %59, label %58, !dbg !3396

; <label>:58:                                     ; preds = %52
  tail call void %56(%struct.netconn* nonnull %3, i32 2, i16 zeroext 0) #9, !dbg !3397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3397
  br label %59, !dbg !3397

; <label>:59:                                     ; preds = %52, %36, %31, %45, %48, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3399
  ret i8 0, !dbg !3399
}

; Function Attrs: noredzone nounwind
define internal void @err_tcp(i8*, i8 signext) #0 !dbg !3400 {
  %3 = bitcast i8* %0 to %struct.netconn*, !dbg !3416
  %4 = icmp eq i8* %0, null, !dbg !3418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3421
  br i1 %4, label %5, label %6, !dbg !3421

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !3422
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3425
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3425
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !3429
  %8 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3432
  %9 = bitcast i8* %8 to %struct.tcp_pcb**, !dbg !3433
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %9, align 8, !dbg !3434, !tbaa !941
  %10 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3435
  store i8 %1, i8* %10, align 8, !dbg !3436, !tbaa !1125
  %11 = getelementptr inbounds i8, i8* %0, i64 108, !dbg !3437
  %12 = load i8, i8* %11, align 4, !dbg !3438, !tbaa !1173
  %13 = or i8 %12, 1, !dbg !3438
  store i8 %13, i8* %11, align 4, !dbg !3438, !tbaa !1173
  %14 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3439
  %15 = bitcast i8* %14 to i32*, !dbg !3439
  %16 = load i32, i32* %15, align 4, !dbg !3439, !tbaa !1161
  store i32 0, i32* %15, align 4, !dbg !3441, !tbaa !1161
  tail call void @ukplat_lcpu_restore_irqf(i64 %7) #9, !dbg !3442
  %17 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3443
  %18 = bitcast i8* %17 to void (%struct.netconn*, i32, i16)**, !dbg !3443
  %19 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !3443, !tbaa !1167
  %20 = icmp eq void (%struct.netconn*, i32, i16)* %19, null, !dbg !3443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3445
  br i1 %20, label %21, label %22, !dbg !3445

; <label>:21:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3446
  br label %29, !dbg !3446

; <label>:22:                                     ; preds = %6
  tail call void %19(%struct.netconn* nonnull %3, i32 4, i16 zeroext 0) #9, !dbg !3447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3447
  %23 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !3449, !tbaa !1167
  %24 = icmp eq void (%struct.netconn*, i32, i16)* %23, null, !dbg !3449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3446
  br i1 %24, label %29, label %25, !dbg !3446

; <label>:25:                                     ; preds = %22
  tail call void %23(%struct.netconn* nonnull %3, i32 0, i16 zeroext 0) #9, !dbg !3451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3451
  %26 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %18, align 8, !dbg !3453, !tbaa !1167
  %27 = icmp eq void (%struct.netconn*, i32, i16)* %26, null, !dbg !3453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  br i1 %27, label %30, label %28, !dbg !3455

; <label>:28:                                     ; preds = %25
  tail call void %26(%struct.netconn* nonnull %3, i32 2, i16 zeroext 0) #9, !dbg !3456
  br label %29, !dbg !3456

; <label>:29:                                     ; preds = %22, %21, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  br label %30, !dbg !3458

; <label>:30:                                     ; preds = %29, %25
  %31 = sext i8 %1 to i32, !dbg !3458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3461
  %32 = add nsw i32 %31, 15, !dbg !3461
  %33 = icmp ult i32 %32, 3, !dbg !3461
  br i1 %33, label %37, label %34, !dbg !3461

; <label>:34:                                     ; preds = %30
  %35 = icmp eq i8 %1, 0, !dbg !3462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3465
  br i1 %35, label %41, label %36, !dbg !3465

; <label>:36:                                     ; preds = %34
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !3466
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3469
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3469
  unreachable

; <label>:37:                                     ; preds = %30
  %38 = sext i32 %32 to i64, !dbg !3461
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.err_tcp, i64 0, i64 %38, !dbg !3461
  %40 = load i8*, i8** %39, align 8, !dbg !3461
  br label %41, !dbg !3461

; <label>:41:                                     ; preds = %34, %37
  %42 = phi i8* [ %40, %37 ], [ null, %34 ], !dbg !3473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3475
  %43 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !3477
  %44 = bitcast i8* %43 to %struct.sys_mbox_t*, !dbg !3477
  %45 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %44) #9, !dbg !3477
  %46 = icmp eq i32 %45, 0, !dbg !3477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3479
  br i1 %46, label %49, label %47, !dbg !3479

; <label>:47:                                     ; preds = %41
  %48 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %44, i8* %42) #9, !dbg !3480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3482
  br label %49, !dbg !3482

; <label>:49:                                     ; preds = %41, %47
  %50 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !3483
  %51 = bitcast i8* %50 to %struct.sys_mbox_t*, !dbg !3483
  %52 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %51) #9, !dbg !3483
  %53 = icmp eq i32 %52, 0, !dbg !3483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3485
  br i1 %53, label %56, label %54, !dbg !3485

; <label>:54:                                     ; preds = %49
  %55 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %51, i8* %42) #9, !dbg !3486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3488
  br label %56, !dbg !3488

; <label>:56:                                     ; preds = %49, %54
  %57 = icmp eq i32 %16, 4, !dbg !3489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3490
  switch i32 %16, label %80 [
    i32 4, label %58
    i32 3, label %58
    i32 1, label %58
  ], !dbg !3490

; <label>:58:                                     ; preds = %56, %56, %56
  %59 = load i8, i8* %11, align 4, !dbg !3491, !tbaa !1173
  %60 = and i8 %59, 4, !dbg !3491
  %61 = icmp eq i8 %60, 0, !dbg !3491
  %62 = and i8 %59, -5, !dbg !3492
  store i8 %62, i8* %11, align 4, !dbg !3492, !tbaa !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3497
  br i1 %61, label %63, label %79, !dbg !3497

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !3498
  %65 = bitcast i8* %64 to %struct.api_msg**, !dbg !3498
  %66 = load %struct.api_msg*, %struct.api_msg** %65, align 8, !dbg !3498, !tbaa !1170
  %67 = icmp eq %struct.api_msg* %66, null, !dbg !3498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3501
  br i1 %67, label %68, label %69, !dbg !3501

; <label>:68:                                     ; preds = %63
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !3502
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3505
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3505
  unreachable

; <label>:69:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3509
  %70 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %66, i64 0, i32 1, !dbg !3510
  %71 = select i1 %57, i8 0, i8 %1, !dbg !3509
  store i8 %71, i8* %70, align 8, !dbg !3513, !tbaa !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %66, i64 0, i32 0, !dbg !3515
  %73 = load %struct.netconn*, %struct.netconn** %72, align 8, !dbg !3515, !tbaa !967
  %74 = getelementptr inbounds %struct.netconn, %struct.netconn* %73, i64 0, i32 4, !dbg !3515
  %75 = tail call i32 @sys_sem_valid(%struct.sys_sem_t* nonnull %74) #9, !dbg !3517
  %76 = icmp eq i32 %75, 0, !dbg !3517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3520
  br i1 %76, label %77, label %78, !dbg !3520

; <label>:77:                                     ; preds = %69
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !3521
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3524
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3524
  unreachable

; <label>:78:                                     ; preds = %69
  store %struct.api_msg* null, %struct.api_msg** %65, align 8, !dbg !3528, !tbaa !1170
  tail call void @sys_sem_signal(%struct.sys_sem_t* nonnull %74) #9, !dbg !3529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3530
  br label %79, !dbg !3530

; <label>:79:                                     ; preds = %58, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3531
  br label %86, !dbg !3531

; <label>:80:                                     ; preds = %56
  %81 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !3532
  %82 = bitcast i8* %81 to %struct.api_msg**, !dbg !3532
  %83 = load %struct.api_msg*, %struct.api_msg** %82, align 8, !dbg !3532, !tbaa !1170
  %84 = icmp eq %struct.api_msg* %83, null, !dbg !3532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3536
  br i1 %84, label %86, label %85, !dbg !3536

; <label>:85:                                     ; preds = %80
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !3537
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3540
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3540
  unreachable

; <label>:86:                                     ; preds = %80, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  ret void, !dbg !3544
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal signext i8 @recv_tcp(i8*, %struct.tcp_pcb*, %struct.pbuf*, i8 signext) #0 !dbg !3545 {
  %5 = icmp eq %struct.tcp_pcb* %1, null, !dbg !3558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3561
  br i1 %5, label %6, label %7, !dbg !3561

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !3562
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3565
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3565
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i8* %0, null, !dbg !3569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  br i1 %8, label %9, label %10, !dbg !3572

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !3573
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3576
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3576
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 %3, 0, !dbg !3580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3583
  br i1 %11, label %13, label %12, !dbg !3583

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !3584
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3587
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3587
  unreachable

; <label>:13:                                     ; preds = %10
  %14 = bitcast i8* %0 to %struct.netconn*, !dbg !3591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3593
  %15 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3594
  %16 = bitcast i8* %15 to %struct.tcp_pcb**, !dbg !3594
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %16, align 8, !dbg !3594, !tbaa !941
  %18 = icmp eq %struct.tcp_pcb* %17, %1, !dbg !3594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3597
  br i1 %18, label %20, label %19, !dbg !3597

; <label>:19:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !3598
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !3601
  tail call void @ukplat_terminate(i32 3) #8, !dbg !3601
  unreachable

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !3605
  %22 = bitcast i8* %21 to %struct.sys_mbox_t*, !dbg !3605
  %23 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %22) #9, !dbg !3605
  %24 = icmp eq i32 %23, 0, !dbg !3605
  %25 = icmp ne %struct.pbuf* %2, null, !dbg !3607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3611
  br i1 %24, label %26, label %31, !dbg !3610

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %47, !dbg !3612

; <label>:27:                                     ; preds = %26
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3613
  %29 = load i16, i16* %28, align 8, !dbg !3613, !tbaa !3252
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %1, i16 zeroext %29) #9, !dbg !3615
  %30 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #9, !dbg !3616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3617
  br label %47, !dbg !3617

; <label>:31:                                     ; preds = %20
  br i1 %25, label %32, label %36, !dbg !3618

; <label>:32:                                     ; preds = %31
  %33 = bitcast %struct.pbuf* %2 to i8*, !dbg !3619
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !3623
  %35 = load i16, i16* %34, align 8, !dbg !3623, !tbaa !3252
  br label %36, !dbg !3625

; <label>:36:                                     ; preds = %31, %32
  %37 = phi i16 [ %35, %32 ], [ 0, %31 ], !dbg !3626
  %38 = phi i8* [ %33, %32 ], [ @netconn_closed, %31 ], !dbg !3626
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = tail call signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* nonnull %22, i8* %38) #9, !dbg !3628
  %40 = icmp eq i8 %39, 0, !dbg !3630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3631
  br i1 %40, label %41, label %47, !dbg !3631

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds i8, i8* %0, i64 120, !dbg !3632
  %43 = bitcast i8* %42 to void (%struct.netconn*, i32, i16)**, !dbg !3632
  %44 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %43, align 8, !dbg !3632, !tbaa !1167
  %45 = icmp eq void (%struct.netconn*, i32, i16)* %44, null, !dbg !3632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3635
  br i1 %45, label %47, label %46, !dbg !3635

; <label>:46:                                     ; preds = %41
  tail call void %44(%struct.netconn* nonnull %14, i32 0, i16 zeroext %37) #9, !dbg !3636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3636
  br label %47, !dbg !3636

; <label>:47:                                     ; preds = %46, %41, %36, %26, %27
  %48 = phi i8 [ 0, %27 ], [ 0, %26 ], [ -1, %36 ], [ 0, %41 ], [ 0, %46 ], !dbg !3638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3639
  ret i8 %48, !dbg !3639
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
!944 = !DILocation(line: 0, scope: !911)
!945 = !DILocation(line: 146, column: 1, scope: !911)
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
!983 = !DILocation(line: 613, column: 3, scope: !984, inlinedAt: !980)
!984 = distinct !DILexicalBlock(scope: !974, file: !3, line: 613, column: 3)
!985 = !DILocation(line: 617, column: 7, scope: !986, inlinedAt: !980)
!986 = distinct !DILexicalBlock(scope: !974, file: !3, line: 617, column: 7)
!987 = !{!988, !942, i64 0}
!988 = !{!"netconn", !942, i64 0, !942, i64 4, !942, i64 8, !942, i64 16, !989, i64 24, !994, i64 56, !994, i64 80, !993, i64 104, !942, i64 108, !964, i64 112, !964, i64 120}
!989 = !{!"", !990, i64 0, !993, i64 24}
!990 = !{!"uk_semaphore", !991, i64 0, !992, i64 8}
!991 = !{!"long", !942, i64 0}
!992 = !{!"uk_waitq", !964, i64 0, !964, i64 8}
!993 = !{!"int", !942, i64 0}
!994 = !{!"", !964, i64 0, !964, i64 8, !993, i64 16}
!995 = !DILocation(line: 617, column: 7, scope: !974, inlinedAt: !980)
!996 = !DILocation(line: 619, column: 3, scope: !997, inlinedAt: !980)
!997 = distinct !DILexicalBlock(scope: !986, file: !3, line: 617, column: 52)
!998 = !DILocation(line: 623, column: 3, scope: !974, inlinedAt: !980)
!999 = !DILocation(line: 641, column: 28, scope: !1000, inlinedAt: !980)
!1000 = distinct !DILexicalBlock(scope: !974, file: !3, line: 623, column: 47)
!1001 = !DILocation(line: 641, column: 12, scope: !1000, inlinedAt: !980)
!1002 = !DILocation(line: 641, column: 18, scope: !1000, inlinedAt: !980)
!1003 = !DILocation(line: 641, column: 22, scope: !1000, inlinedAt: !980)
!1004 = !DILocation(line: 641, column: 26, scope: !1000, inlinedAt: !980)
!1005 = !DILocation(line: 642, column: 16, scope: !1006, inlinedAt: !980)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 642, column: 11)
!1007 = !DILocation(line: 642, column: 22, scope: !1006, inlinedAt: !980)
!1008 = !DILocation(line: 642, column: 26, scope: !1006, inlinedAt: !980)
!1009 = !DILocation(line: 642, column: 30, scope: !1006, inlinedAt: !980)
!1010 = !DILocation(line: 642, column: 11, scope: !1000, inlinedAt: !980)
!1011 = !DILocation(line: 648, column: 13, scope: !1012, inlinedAt: !980)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 648, column: 13)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 642, column: 39)
!1014 = !DILocation(line: 648, column: 13, scope: !1013, inlinedAt: !980)
!1015 = !DILocation(line: 649, column: 11, scope: !1016, inlinedAt: !980)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 648, column: 57)
!1017 = !{!1018, !942, i64 64}
!1018 = !{!"udp_pcb", !1019, i64 0, !1019, i64 24, !942, i64 48, !942, i64 49, !942, i64 50, !942, i64 51, !964, i64 56, !942, i64 64, !1020, i64 66, !1020, i64 68, !1021, i64 72, !942, i64 76, !942, i64 77, !964, i64 80, !964, i64 88}
!1019 = !{!"ip_addr", !942, i64 0, !942, i64 20}
!1020 = !{!"short", !942, i64 0}
!1021 = !{!"ip4_addr", !993, i64 0}
!1022 = !DILocation(line: 650, column: 9, scope: !1016, inlinedAt: !980)
!1023 = !DILocation(line: 651, column: 33, scope: !1013, inlinedAt: !980)
!1024 = !DILocation(line: 651, column: 48, scope: !1013, inlinedAt: !980)
!1025 = !DILocation(line: 651, column: 9, scope: !1013, inlinedAt: !980)
!1026 = !DILocation(line: 652, column: 7, scope: !1013, inlinedAt: !980)
!1027 = !DILocation(line: 657, column: 28, scope: !1000, inlinedAt: !980)
!1028 = !DILocation(line: 657, column: 12, scope: !1000, inlinedAt: !980)
!1029 = !DILocation(line: 657, column: 18, scope: !1000, inlinedAt: !980)
!1030 = !DILocation(line: 657, column: 22, scope: !1000, inlinedAt: !980)
!1031 = !DILocation(line: 657, column: 26, scope: !1000, inlinedAt: !980)
!1032 = !DILocation(line: 658, column: 16, scope: !1033, inlinedAt: !980)
!1033 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 658, column: 11)
!1034 = !DILocation(line: 658, column: 22, scope: !1033, inlinedAt: !980)
!1035 = !DILocation(line: 658, column: 26, scope: !1033, inlinedAt: !980)
!1036 = !DILocation(line: 658, column: 30, scope: !1033, inlinedAt: !980)
!1037 = !DILocation(line: 658, column: 11, scope: !1000, inlinedAt: !980)
!1038 = !DILocalVariable(name: "conn", arg: 1, scope: !1039, file: !3, line: 514, type: !125)
!1039 = distinct !DISubprogram(name: "setup_tcp", scope: !3, file: !3, line: 514, type: !1040, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !125}
!1042 = !{!1038, !1043}
!1043 = !DILocalVariable(name: "pcb", scope: !1039, file: !3, line: 516, type: !178)
!1044 = !DILocation(line: 514, column: 27, scope: !1039, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 659, column: 9, scope: !1046, inlinedAt: !980)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 658, column: 39)
!1047 = !DILocation(line: 516, column: 19, scope: !1039, inlinedAt: !1045)
!1048 = !DILocation(line: 519, column: 16, scope: !1039, inlinedAt: !1045)
!1049 = !DILocation(line: 519, column: 3, scope: !1039, inlinedAt: !1045)
!1050 = !DILocation(line: 520, column: 3, scope: !1039, inlinedAt: !1045)
!1051 = !DILocation(line: 521, column: 3, scope: !1039, inlinedAt: !1045)
!1052 = !DILocation(line: 522, column: 3, scope: !1039, inlinedAt: !1045)
!1053 = !DILocation(line: 523, column: 3, scope: !1039, inlinedAt: !1045)
!1054 = !DILocation(line: 524, column: 1, scope: !1039, inlinedAt: !1045)
!1055 = !DILocation(line: 660, column: 7, scope: !1046, inlinedAt: !980)
!1056 = !DILocation(line: 665, column: 16, scope: !1000, inlinedAt: !980)
!1057 = !DILocation(line: 666, column: 7, scope: !1000, inlinedAt: !980)
!1058 = !DILocation(line: 668, column: 12, scope: !1059, inlinedAt: !980)
!1059 = distinct !DILexicalBlock(scope: !974, file: !3, line: 668, column: 7)
!1060 = !DILocation(line: 668, column: 22, scope: !1059, inlinedAt: !980)
!1061 = !DILocation(line: 668, column: 25, scope: !1059, inlinedAt: !980)
!1062 = !DILocation(line: 668, column: 7, scope: !974, inlinedAt: !980)
!1063 = !DILocation(line: 669, column: 14, scope: !1064, inlinedAt: !980)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 668, column: 34)
!1065 = !DILocation(line: 670, column: 3, scope: !1064, inlinedAt: !980)
!1066 = !DILocation(line: 0, scope: !981)
!1067 = !DILocation(line: 671, column: 1, scope: !974, inlinedAt: !980)
!1068 = !DILocation(line: 687, column: 3, scope: !981)
!1069 = !DILocation(line: 693, column: 1, scope: !955)
!1070 = distinct !DISubprogram(name: "netconn_alloc", scope: !3, file: !3, line: 707, type: !1071, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!125, !34, !794}
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DILocalVariable(name: "t", arg: 1, scope: !1070, file: !3, line: 707, type: !34)
!1075 = !DILocalVariable(name: "callback", arg: 2, scope: !1070, file: !3, line: 707, type: !794)
!1076 = !DILocalVariable(name: "conn", scope: !1070, file: !3, line: 709, type: !125)
!1077 = !DILocalVariable(name: "size", scope: !1070, file: !3, line: 710, type: !15)
!1078 = !DILocalVariable(name: "init_flags", scope: !1070, file: !3, line: 711, type: !161)
!1079 = !DILocation(line: 707, column: 33, scope: !1070)
!1080 = !DILocation(line: 707, column: 53, scope: !1070)
!1081 = !DILocation(line: 711, column: 8, scope: !1070)
!1082 = !DILocation(line: 714, column: 39, scope: !1070)
!1083 = !{!964, !964, i64 0}
!1084 = !DILocalVariable(name: "a", arg: 1, scope: !1085, file: !464, line: 173, type: !462)
!1085 = distinct !DISubprogram(name: "uk_calloc", scope: !464, file: !464, line: 173, type: !476, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1086)
!1086 = !{!1084, !1087, !1088}
!1087 = !DILocalVariable(name: "nmemb", arg: 2, scope: !1085, file: !464, line: 174, type: !471)
!1088 = !DILocalVariable(name: "size", arg: 3, scope: !1085, file: !464, line: 174, type: !471)
!1089 = !DILocation(line: 173, column: 48, scope: !1085, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 714, column: 29, scope: !1070)
!1091 = !DILocation(line: 174, column: 17, scope: !1085, inlinedAt: !1090)
!1092 = !DILocation(line: 174, column: 31, scope: !1085, inlinedAt: !1090)
!1093 = !DILocation(line: 176, column: 6, scope: !1094, inlinedAt: !1090)
!1094 = distinct !DILexicalBlock(scope: !1085, file: !464, line: 176, column: 6)
!1095 = !DILocation(line: 176, column: 6, scope: !1085, inlinedAt: !1090)
!1096 = !{!"branch_weights", i32 1, i32 2000}
!1097 = !DILocation(line: 177, column: 3, scope: !1098, inlinedAt: !1090)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !464, line: 176, column: 20)
!1099 = !DILocation(line: 177, column: 9, scope: !1098, inlinedAt: !1090)
!1100 = !{!993, !993, i64 0}
!1101 = !DILocation(line: 178, column: 3, scope: !1098, inlinedAt: !1090)
!1102 = !DILocation(line: 181, column: 1, scope: !1085, inlinedAt: !1090)
!1103 = !DILocation(line: 709, column: 19, scope: !1070)
!1104 = !DILocation(line: 716, column: 7, scope: !1070)
!1105 = !DILocalVariable(name: "a", arg: 1, scope: !1106, file: !464, line: 166, type: !462)
!1106 = distinct !DISubprogram(name: "uk_do_calloc", scope: !464, file: !464, line: 166, type: !476, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1107)
!1107 = !{!1105, !1108, !1109}
!1108 = !DILocalVariable(name: "nmemb", arg: 2, scope: !1106, file: !464, line: 167, type: !471)
!1109 = !DILocalVariable(name: "size", arg: 3, scope: !1106, file: !464, line: 167, type: !471)
!1110 = !DILocation(line: 166, column: 51, scope: !1106, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 180, column: 9, scope: !1085, inlinedAt: !1090)
!1112 = !DILocation(line: 167, column: 13, scope: !1106, inlinedAt: !1111)
!1113 = !DILocation(line: 167, column: 27, scope: !1106, inlinedAt: !1111)
!1114 = !DILocation(line: 169, column: 2, scope: !1115, inlinedAt: !1111)
!1115 = distinct !DILexicalBlock(scope: !1106, file: !464, line: 169, column: 2)
!1116 = !DILocation(line: 170, column: 12, scope: !1106, inlinedAt: !1111)
!1117 = !DILocation(line: 170, column: 9, scope: !1106, inlinedAt: !1111)
!1118 = !DILocation(line: 170, column: 2, scope: !1106, inlinedAt: !1111)
!1119 = !DILocation(line: 180, column: 2, scope: !1085, inlinedAt: !1090)
!1120 = !DILocation(line: 714, column: 10, scope: !1070)
!1121 = !DILocation(line: 716, column: 12, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 716, column: 7)
!1123 = !DILocation(line: 720, column: 9, scope: !1070)
!1124 = !DILocation(line: 720, column: 21, scope: !1070)
!1125 = !{!988, !942, i64 16}
!1126 = !DILocation(line: 721, column: 9, scope: !1070)
!1127 = !DILocation(line: 721, column: 14, scope: !1070)
!1128 = !DILocation(line: 722, column: 9, scope: !1070)
!1129 = !DILocation(line: 722, column: 13, scope: !1070)
!1130 = !DILocation(line: 722, column: 17, scope: !1070)
!1131 = !DILocation(line: 725, column: 3, scope: !1070)
!1132 = !DILocation(line: 745, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 745, column: 7)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 745, column: 7)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 745, column: 7)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 745, column: 7)
!1137 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 725, column: 33)
!1138 = !DILocation(line: 745, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 745, column: 7)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 745, column: 7)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 745, column: 7)
!1142 = !DILocation(line: 0, scope: !1137)
!1143 = !DILocation(line: 710, column: 7, scope: !1070)
!1144 = !DILocation(line: 749, column: 27, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 749, column: 7)
!1146 = !DILocation(line: 749, column: 7, scope: !1145)
!1147 = !DILocation(line: 749, column: 43, scope: !1145)
!1148 = !DILocation(line: 749, column: 7, scope: !1070)
!1149 = !DILocation(line: 753, column: 26, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 753, column: 7)
!1151 = !DILocation(line: 753, column: 7, scope: !1150)
!1152 = !DILocation(line: 753, column: 43, scope: !1150)
!1153 = !DILocation(line: 753, column: 7, scope: !1070)
!1154 = !DILocation(line: 754, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 753, column: 54)
!1156 = !DILocation(line: 755, column: 5, scope: !1155)
!1157 = !DILocation(line: 760, column: 31, scope: !1070)
!1158 = !DILocation(line: 760, column: 3, scope: !1070)
!1159 = !DILocation(line: 762, column: 9, scope: !1070)
!1160 = !DILocation(line: 762, column: 22, scope: !1070)
!1161 = !{!988, !942, i64 4}
!1162 = !DILocation(line: 765, column: 9, scope: !1070)
!1163 = !DILocation(line: 765, column: 22, scope: !1070)
!1164 = !{!988, !993, i64 104}
!1165 = !DILocation(line: 767, column: 9, scope: !1070)
!1166 = !DILocation(line: 767, column: 22, scope: !1070)
!1167 = !{!988, !964, i64 120}
!1168 = !DILocation(line: 769, column: 9, scope: !1070)
!1169 = !DILocation(line: 769, column: 22, scope: !1070)
!1170 = !{!988, !964, i64 112}
!1171 = !DILocation(line: 784, column: 9, scope: !1070)
!1172 = !DILocation(line: 784, column: 15, scope: !1070)
!1173 = !{!988, !942, i64 108}
!1174 = !DILocation(line: 785, column: 3, scope: !1070)
!1175 = !DILocation(line: 787, column: 11, scope: !1070)
!1176 = !DILocalVariable(name: "a", arg: 1, scope: !1177, file: !464, line: 237, type: !462)
!1177 = distinct !DISubprogram(name: "uk_free", scope: !464, file: !464, line: 237, type: !494, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1178)
!1178 = !{!1176, !1179}
!1179 = !DILocalVariable(name: "ptr", arg: 2, scope: !1177, file: !464, line: 237, type: !119)
!1180 = !DILocation(line: 237, column: 45, scope: !1177, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 787, column: 3, scope: !1070)
!1182 = !DILocation(line: 237, column: 54, scope: !1177, inlinedAt: !1181)
!1183 = !DILocalVariable(name: "a", arg: 1, scope: !1184, file: !464, line: 231, type: !462)
!1184 = distinct !DISubprogram(name: "uk_do_free", scope: !464, file: !464, line: 231, type: !494, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1185)
!1185 = !{!1183, !1186}
!1186 = !DILocalVariable(name: "ptr", arg: 2, scope: !1184, file: !464, line: 231, type: !119)
!1187 = !DILocation(line: 231, column: 48, scope: !1184, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 239, column: 2, scope: !1177, inlinedAt: !1181)
!1189 = !DILocation(line: 231, column: 57, scope: !1184, inlinedAt: !1188)
!1190 = !DILocation(line: 233, column: 2, scope: !1191, inlinedAt: !1188)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !464, line: 233, column: 2)
!1192 = distinct !DILexicalBlock(scope: !1184, file: !464, line: 233, column: 2)
!1193 = !DILocation(line: 233, column: 2, scope: !1192, inlinedAt: !1188)
!1194 = !DILocation(line: 233, column: 2, scope: !1195, inlinedAt: !1188)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !464, line: 233, column: 2)
!1196 = !DILocation(line: 234, column: 5, scope: !1184, inlinedAt: !1188)
!1197 = !DILocation(line: 234, column: 2, scope: !1184, inlinedAt: !1188)
!1198 = !DILocation(line: 235, column: 1, scope: !1184, inlinedAt: !1188)
!1199 = !DILocation(line: 240, column: 1, scope: !1177, inlinedAt: !1181)
!1200 = !DILocation(line: 788, column: 3, scope: !1070)
!1201 = !DILocation(line: 0, scope: !1070)
!1202 = !DILocation(line: 0, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 716, column: 21)
!1204 = !DILocation(line: 789, column: 1, scope: !1070)
!1205 = distinct !DISubprogram(name: "netconn_free", scope: !3, file: !3, line: 798, type: !1040, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1206)
!1206 = !{!1207}
!1207 = !DILocalVariable(name: "conn", arg: 1, scope: !1205, file: !3, line: 798, type: !125)
!1208 = !DILocation(line: 798, column: 30, scope: !1205)
!1209 = !DILocation(line: 800, column: 3, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 800, column: 3)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 800, column: 3)
!1212 = !DILocation(line: 800, column: 3, scope: !1211)
!1213 = !DILocation(line: 800, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 800, column: 3)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 800, column: 3)
!1216 = !DILocation(line: 800, column: 3, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 800, column: 3)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 800, column: 3)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 800, column: 3)
!1220 = !DILocation(line: 807, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 807, column: 3)
!1222 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 807, column: 3)
!1223 = !DILocation(line: 807, column: 3, scope: !1222)
!1224 = !DILocation(line: 807, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 807, column: 3)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 807, column: 3)
!1227 = !DILocation(line: 807, column: 3, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 807, column: 3)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 807, column: 3)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 807, column: 3)
!1231 = !DILocation(line: 810, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 810, column: 3)
!1233 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 810, column: 3)
!1234 = !DILocation(line: 810, column: 3, scope: !1233)
!1235 = !DILocation(line: 810, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 810, column: 3)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 810, column: 3)
!1238 = !DILocation(line: 810, column: 3, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 810, column: 3)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 810, column: 3)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 810, column: 3)
!1242 = !DILocation(line: 815, column: 23, scope: !1205)
!1243 = !DILocation(line: 815, column: 3, scope: !1205)
!1244 = !DILocation(line: 816, column: 3, scope: !1205)
!1245 = !DILocation(line: 819, column: 11, scope: !1205)
!1246 = !DILocation(line: 237, column: 45, scope: !1177, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 819, column: 3, scope: !1205)
!1248 = !DILocation(line: 231, column: 48, scope: !1184, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 239, column: 2, scope: !1177, inlinedAt: !1247)
!1250 = !DILocation(line: 233, column: 2, scope: !1191, inlinedAt: !1249)
!1251 = !DILocation(line: 233, column: 2, scope: !1192, inlinedAt: !1249)
!1252 = !DILocation(line: 233, column: 2, scope: !1195, inlinedAt: !1249)
!1253 = !DILocation(line: 819, column: 32, scope: !1205)
!1254 = !DILocation(line: 231, column: 57, scope: !1184, inlinedAt: !1249)
!1255 = !DILocation(line: 237, column: 54, scope: !1177, inlinedAt: !1247)
!1256 = !DILocation(line: 234, column: 5, scope: !1184, inlinedAt: !1249)
!1257 = !DILocation(line: 234, column: 2, scope: !1184, inlinedAt: !1249)
!1258 = !DILocation(line: 235, column: 1, scope: !1184, inlinedAt: !1249)
!1259 = !DILocation(line: 240, column: 1, scope: !1177, inlinedAt: !1247)
!1260 = !DILocation(line: 820, column: 1, scope: !1205)
!1261 = distinct !DISubprogram(name: "lwip_netconn_do_delconn", scope: !3, file: !3, line: 1117, type: !521, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "m", arg: 1, scope: !1261, file: !3, line: 1117, type: !119)
!1264 = !DILocalVariable(name: "msg", scope: !1261, file: !3, line: 1119, type: !120)
!1265 = !DILocalVariable(name: "state", scope: !1261, file: !3, line: 1121, type: !48)
!1266 = !DILocation(line: 1117, column: 31, scope: !1261)
!1267 = !DILocation(line: 1119, column: 19, scope: !1261)
!1268 = !DILocation(line: 1121, column: 35, scope: !1261)
!1269 = !DILocation(line: 1121, column: 41, scope: !1261)
!1270 = !DILocation(line: 1121, column: 22, scope: !1261)
!1271 = !DILocation(line: 1122, column: 3, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1122, column: 3)
!1273 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1122, column: 3)
!1274 = !DILocation(line: 1140, column: 32, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1140, column: 7)
!1276 = !DILocation(line: 1143, column: 35, scope: !1275)
!1277 = !DILocation(line: 1122, column: 3, scope: !1273)
!1278 = !DILocation(line: 1122, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 1122, column: 3)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 1122, column: 3)
!1281 = !DILocation(line: 1122, column: 3, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 1122, column: 3)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1122, column: 3)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1122, column: 3)
!1285 = !DILocation(line: 1142, column: 15, scope: !1275)
!1286 = !DILocation(line: 1143, column: 39, scope: !1275)
!1287 = !DILocation(line: 1140, column: 7, scope: !1261)
!1288 = !DILocation(line: 1146, column: 10, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1143, column: 75)
!1290 = !DILocation(line: 1146, column: 14, scope: !1289)
!1291 = !DILocation(line: 1147, column: 3, scope: !1289)
!1292 = !DILocation(line: 1150, column: 5, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1150, column: 5)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1150, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1149, column: 3)
!1296 = !DILocation(line: 1150, column: 5, scope: !1294)
!1297 = !DILocation(line: 1150, column: 5, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 1150, column: 5)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1150, column: 5)
!1300 = !DILocation(line: 1150, column: 5, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1150, column: 5)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1150, column: 5)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1150, column: 5)
!1304 = !DILocation(line: 1152, column: 10, scope: !1295)
!1305 = !DILocation(line: 1152, column: 14, scope: !1295)
!1306 = !DILocation(line: 1157, column: 5, scope: !1295)
!1307 = !DILocation(line: 1160, column: 14, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1160, column: 9)
!1309 = !DILocation(line: 1160, column: 20, scope: !1308)
!1310 = !DILocation(line: 1160, column: 24, scope: !1308)
!1311 = !DILocation(line: 1160, column: 28, scope: !1308)
!1312 = !DILocation(line: 1160, column: 9, scope: !1295)
!1313 = !DILocation(line: 1162, column: 15, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1160, column: 37)
!1315 = !DILocation(line: 1162, column: 7, scope: !1314)
!1316 = !DILocation(line: 1170, column: 26, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1162, column: 51)
!1318 = !DILocation(line: 1170, column: 31, scope: !1317)
!1319 = !DILocation(line: 1170, column: 40, scope: !1317)
!1320 = !{!1018, !964, i64 88}
!1321 = !DILocation(line: 1171, column: 37, scope: !1317)
!1322 = !DILocation(line: 1171, column: 11, scope: !1317)
!1323 = !DILocation(line: 1172, column: 11, scope: !1317)
!1324 = !DILocation(line: 1198, column: 12, scope: !1314)
!1325 = !DILocation(line: 1198, column: 18, scope: !1314)
!1326 = !DILocation(line: 1198, column: 22, scope: !1314)
!1327 = !DILocation(line: 1176, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 1176, column: 11)
!1329 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1176, column: 11)
!1330 = !DILocation(line: 1176, column: 11, scope: !1329)
!1331 = !DILocation(line: 1176, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 1176, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1176, column: 11)
!1334 = !DILocation(line: 1176, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1176, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1176, column: 11)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1176, column: 11)
!1338 = !DILocation(line: 1177, column: 22, scope: !1317)
!1339 = !DILocation(line: 1177, column: 28, scope: !1317)
!1340 = !DILocation(line: 1178, column: 16, scope: !1317)
!1341 = !DILocation(line: 1178, column: 28, scope: !1317)
!1342 = !DILocation(line: 1179, column: 34, scope: !1317)
!1343 = !DILocation(line: 1181, column: 15, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1181, column: 15)
!1345 = !DILocation(line: 1181, column: 60, scope: !1344)
!1346 = !DILocation(line: 1181, column: 15, scope: !1317)
!1347 = !DILocation(line: 1182, column: 13, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1182, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 1182, column: 13)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1181, column: 71)
!1351 = !DILocation(line: 1182, column: 13, scope: !1349)
!1352 = !DILocation(line: 1182, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1182, column: 13)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1182, column: 13)
!1355 = !DILocation(line: 1182, column: 13, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1182, column: 13)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1182, column: 13)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1182, column: 13)
!1359 = !DILocation(line: 1183, column: 13, scope: !1350)
!1360 = !DILocation(line: 1184, column: 31, scope: !1350)
!1361 = !DILocation(line: 1184, column: 13, scope: !1350)
!1362 = !DILocation(line: 1185, column: 13, scope: !1350)
!1363 = !DILocation(line: 1186, column: 13, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1186, column: 13)
!1365 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 1186, column: 13)
!1366 = !DILocation(line: 1186, column: 13, scope: !1365)
!1367 = !DILocation(line: 1186, column: 13, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 1186, column: 13)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1186, column: 13)
!1370 = !DILocation(line: 1186, column: 13, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 1186, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1186, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 1186, column: 13)
!1374 = !DILocation(line: 1198, column: 26, scope: !1314)
!1375 = !DILocation(line: 1199, column: 5, scope: !1314)
!1376 = !DILocation(line: 1204, column: 5, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1204, column: 5)
!1378 = !DILocation(line: 1204, column: 5, scope: !1295)
!1379 = !DILocation(line: 1205, column: 5, scope: !1295)
!1380 = !DILocation(line: 1204, column: 5, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1204, column: 5)
!1382 = !DILocation(line: 1205, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1205, column: 5)
!1384 = !DILocation(line: 1205, column: 5, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 1205, column: 5)
!1386 = !DILocation(line: 1207, column: 21, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1207, column: 7)
!1388 = !DILocation(line: 1207, column: 7, scope: !1387)
!1389 = !DILocation(line: 1210, column: 1, scope: !1261)
!1390 = !DILocation(line: 0, scope: !1317)
!1391 = distinct !DISubprogram(name: "netconn_drain", scope: !3, file: !3, line: 831, type: !1040, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1392)
!1392 = !{!1393, !1394, !1395, !1402, !1407}
!1393 = !DILocalVariable(name: "conn", arg: 1, scope: !1391, file: !3, line: 831, type: !125)
!1394 = !DILocalVariable(name: "mem", scope: !1391, file: !3, line: 833, type: !119)
!1395 = !DILocalVariable(name: "err", scope: !1396, file: !3, line: 850, type: !274)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 849, column: 59)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 849, column: 13)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 847, column: 7)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 843, column: 72)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 842, column: 40)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 842, column: 7)
!1402 = !DILocalVariable(name: "err", scope: !1403, file: !3, line: 873, type: !274)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 872, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 868, column: 74)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 867, column: 42)
!1406 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 867, column: 7)
!1407 = !DILocalVariable(name: "newconn", scope: !1408, file: !3, line: 875, type: !125)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 874, column: 50)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 874, column: 13)
!1410 = !DILocation(line: 831, column: 31, scope: !1391)
!1411 = !DILocation(line: 833, column: 3, scope: !1391)
!1412 = !DILocation(line: 842, column: 29, scope: !1401)
!1413 = !DILocation(line: 842, column: 7, scope: !1401)
!1414 = !DILocation(line: 842, column: 7, scope: !1391)
!1415 = !DILocation(line: 833, column: 9, scope: !1391)
!1416 = !DILocation(line: 843, column: 12, scope: !1400)
!1417 = !DILocation(line: 843, column: 53, scope: !1400)
!1418 = !DILocation(line: 843, column: 5, scope: !1400)
!1419 = !DILocation(line: 849, column: 13, scope: !1397)
!1420 = !DILocation(line: 849, column: 43, scope: !1397)
!1421 = !DILocation(line: 849, column: 13, scope: !1398)
!1422 = !DILocation(line: 851, column: 40, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 851, column: 15)
!1424 = !DILocation(line: 131, column: 31, scope: !911, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 851, column: 16, scope: !1423)
!1426 = !DILocation(line: 133, column: 3, scope: !921, inlinedAt: !1425)
!1427 = !DILocation(line: 135, column: 11, scope: !931, inlinedAt: !1425)
!1428 = !DILocation(line: 135, column: 7, scope: !911, inlinedAt: !1425)
!1429 = !DILocation(line: 138, column: 18, scope: !934, inlinedAt: !1425)
!1430 = !DILocation(line: 138, column: 14, scope: !931, inlinedAt: !1425)
!1431 = !DILocation(line: 141, column: 18, scope: !937, inlinedAt: !1425)
!1432 = !DILocation(line: 141, column: 14, scope: !934, inlinedAt: !1425)
!1433 = !DILocation(line: 0, scope: !1423)
!1434 = !DILocation(line: 146, column: 1, scope: !911, inlinedAt: !1425)
!1435 = !DILocation(line: 851, column: 15, scope: !1396)
!1436 = !DILocation(line: 852, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 851, column: 52)
!1438 = !DILocation(line: 853, column: 11, scope: !1437)
!1439 = !DILocation(line: 0, scope: !1437)
!1440 = !DILocation(line: 854, column: 9, scope: !1396)
!1441 = !DILocation(line: 857, column: 42, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 856, column: 9)
!1443 = !DILocation(line: 857, column: 11, scope: !1442)
!1444 = distinct !{!1444, !1418, !1445}
!1445 = !DILocation(line: 860, column: 5, scope: !1400)
!1446 = !DILocation(line: 861, column: 5, scope: !1400)
!1447 = !DILocation(line: 862, column: 5, scope: !1400)
!1448 = !DILocation(line: 863, column: 3, scope: !1400)
!1449 = !DILocation(line: 867, column: 29, scope: !1406)
!1450 = !DILocation(line: 867, column: 7, scope: !1406)
!1451 = !DILocation(line: 867, column: 7, scope: !1391)
!1452 = !DILocation(line: 868, column: 12, scope: !1405)
!1453 = !DILocation(line: 868, column: 55, scope: !1405)
!1454 = !DILocation(line: 868, column: 5, scope: !1405)
!1455 = !DILocation(line: 874, column: 38, scope: !1409)
!1456 = !DILocation(line: 131, column: 31, scope: !911, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 874, column: 14, scope: !1409)
!1458 = !DILocation(line: 133, column: 3, scope: !921, inlinedAt: !1457)
!1459 = !DILocation(line: 135, column: 11, scope: !931, inlinedAt: !1457)
!1460 = !DILocation(line: 135, column: 7, scope: !911, inlinedAt: !1457)
!1461 = !DILocation(line: 138, column: 18, scope: !934, inlinedAt: !1457)
!1462 = !DILocation(line: 138, column: 14, scope: !931, inlinedAt: !1457)
!1463 = !DILocation(line: 141, column: 18, scope: !937, inlinedAt: !1457)
!1464 = !DILocation(line: 141, column: 14, scope: !934, inlinedAt: !1457)
!1465 = !DILocation(line: 0, scope: !1409)
!1466 = !DILocation(line: 146, column: 1, scope: !911, inlinedAt: !1457)
!1467 = !DILocation(line: 874, column: 13, scope: !1403)
!1468 = !DILocation(line: 875, column: 27, scope: !1408)
!1469 = !DILocation(line: 879, column: 11, scope: !1408)
!1470 = !DILocation(line: 880, column: 24, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 880, column: 15)
!1472 = !DILocation(line: 880, column: 28, scope: !1471)
!1473 = !DILocation(line: 880, column: 32, scope: !1471)
!1474 = !DILocation(line: 880, column: 15, scope: !1408)
!1475 = !DILocation(line: 881, column: 13, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 880, column: 41)
!1477 = !DILocation(line: 882, column: 30, scope: !1476)
!1478 = !DILocation(line: 883, column: 11, scope: !1476)
!1479 = !DILocation(line: 884, column: 11, scope: !1408)
!1480 = !DILocation(line: 885, column: 9, scope: !1408)
!1481 = !DILocation(line: 0, scope: !1408)
!1482 = distinct !{!1482, !1454, !1483}
!1483 = !DILocation(line: 887, column: 5, scope: !1405)
!1484 = !DILocation(line: 888, column: 5, scope: !1405)
!1485 = !DILocation(line: 889, column: 5, scope: !1405)
!1486 = !DILocation(line: 890, column: 3, scope: !1405)
!1487 = !DILocation(line: 892, column: 1, scope: !1391)
!1488 = distinct !DISubprogram(name: "lwip_netconn_do_close_internal", scope: !3, file: !3, line: 924, type: !1489, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!274, !125, !161}
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1492 = !DILocalVariable(name: "conn", arg: 1, scope: !1488, file: !3, line: 924, type: !125)
!1493 = !DILocalVariable(name: "delayed", arg: 2, scope: !1488, file: !3, line: 924, type: !161)
!1494 = !DILocalVariable(name: "err", scope: !1488, file: !3, line: 926, type: !274)
!1495 = !DILocalVariable(name: "shut", scope: !1488, file: !3, line: 927, type: !161)
!1496 = !DILocalVariable(name: "shut_rx", scope: !1488, file: !3, line: 927, type: !161)
!1497 = !DILocalVariable(name: "shut_tx", scope: !1488, file: !3, line: 927, type: !161)
!1498 = !DILocalVariable(name: "shut_close", scope: !1488, file: !3, line: 927, type: !161)
!1499 = !DILocalVariable(name: "close_finished", scope: !1488, file: !3, line: 928, type: !161)
!1500 = !DILocalVariable(name: "tpcb", scope: !1488, file: !3, line: 929, type: !178)
!1501 = !DILocalVariable(name: "op_completed_sem", scope: !1502, file: !3, line: 1062, type: !872)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 1060, column: 23)
!1503 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1060, column: 7)
!1504 = !DILocation(line: 924, column: 48, scope: !1488)
!1505 = !DILocation(line: 924, column: 54, scope: !1488)
!1506 = !DILocation(line: 928, column: 8, scope: !1488)
!1507 = !DILocation(line: 934, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 934, column: 3)
!1509 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 934, column: 3)
!1510 = !DILocation(line: 934, column: 3, scope: !1509)
!1511 = !DILocation(line: 934, column: 3, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 934, column: 3)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 934, column: 3)
!1514 = !DILocation(line: 934, column: 3, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 934, column: 3)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 934, column: 3)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 934, column: 3)
!1518 = !DILocation(line: 935, column: 3, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 935, column: 3)
!1520 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 935, column: 3)
!1521 = !DILocation(line: 935, column: 3, scope: !1520)
!1522 = !DILocation(line: 935, column: 3, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 935, column: 3)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 935, column: 3)
!1525 = !DILocation(line: 935, column: 3, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 935, column: 3)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 935, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 935, column: 3)
!1529 = !DILocation(line: 936, column: 3, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 936, column: 3)
!1531 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 936, column: 3)
!1532 = !DILocation(line: 936, column: 3, scope: !1531)
!1533 = !DILocation(line: 936, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 936, column: 3)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 936, column: 3)
!1536 = !DILocation(line: 936, column: 3, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 936, column: 3)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 936, column: 3)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 936, column: 3)
!1540 = !DILocation(line: 937, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 937, column: 3)
!1542 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 937, column: 3)
!1543 = !DILocation(line: 937, column: 3, scope: !1542)
!1544 = !DILocation(line: 937, column: 3, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 937, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 937, column: 3)
!1547 = !DILocation(line: 937, column: 3, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 937, column: 3)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 937, column: 3)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 937, column: 3)
!1551 = !DILocation(line: 938, column: 3, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 938, column: 3)
!1553 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 938, column: 3)
!1554 = !DILocation(line: 938, column: 3, scope: !1553)
!1555 = !DILocation(line: 938, column: 3, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 938, column: 3)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 938, column: 3)
!1558 = !DILocation(line: 938, column: 3, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 938, column: 3)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 938, column: 3)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 938, column: 3)
!1562 = !DILocation(line: 929, column: 19, scope: !1488)
!1563 = !DILocation(line: 941, column: 29, scope: !1488)
!1564 = !DILocation(line: 941, column: 36, scope: !1488)
!1565 = !DILocation(line: 927, column: 8, scope: !1488)
!1566 = !DILocation(line: 942, column: 18, scope: !1488)
!1567 = !DILocation(line: 927, column: 14, scope: !1488)
!1568 = !DILocation(line: 943, column: 18, scope: !1488)
!1569 = !DILocation(line: 927, column: 23, scope: !1488)
!1570 = !DILocation(line: 946, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 946, column: 7)
!1572 = !DILocation(line: 946, column: 7, scope: !1488)
!1573 = !DILocation(line: 948, column: 14, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 948, column: 14)
!1575 = !DILocation(line: 948, column: 22, scope: !1574)
!1576 = !DILocation(line: 949, column: 22, scope: !1574)
!1577 = !{!1578, !942, i64 72}
!1578 = !{!"tcp_pcb", !1019, i64 0, !1019, i64 24, !942, i64 48, !942, i64 49, !942, i64 50, !942, i64 51, !964, i64 56, !964, i64 64, !942, i64 72, !942, i64 76, !1020, i64 78, !1020, i64 80, !1020, i64 82, !942, i64 84, !942, i64 85, !942, i64 86, !993, i64 88, !993, i64 92, !993, i64 96, !993, i64 100, !993, i64 104, !1020, i64 108, !1020, i64 110, !993, i64 112, !993, i64 116, !1020, i64 120, !1020, i64 122, !1020, i64 124, !942, i64 126, !942, i64 127, !993, i64 128, !993, i64 132, !993, i64 136, !993, i64 140, !993, i64 144, !993, i64 148, !993, i64 152, !993, i64 156, !993, i64 160, !993, i64 164, !993, i64 168, !1020, i64 172, !1020, i64 174, !993, i64 176, !964, i64 184, !964, i64 192, !964, i64 200, !964, i64 208, !964, i64 216, !964, i64 224, !964, i64 232, !964, i64 240, !964, i64 248, !964, i64 256, !993, i64 264, !942, i64 268, !942, i64 269, !942, i64 270, !942, i64 271, !942, i64 272, !942, i64 273}
!1579 = !DILocation(line: 949, column: 28, scope: !1574)
!1580 = !DILocation(line: 949, column: 43, scope: !1574)
!1581 = !DILocation(line: 950, column: 28, scope: !1574)
!1582 = !DILocation(line: 950, column: 43, scope: !1574)
!1583 = !DILocation(line: 951, column: 28, scope: !1574)
!1584 = !DILocation(line: 948, column: 14, scope: !1571)
!1585 = !DILocation(line: 953, column: 14, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 953, column: 14)
!1587 = !DILocation(line: 953, column: 22, scope: !1586)
!1588 = !DILocation(line: 953, column: 33, scope: !1586)
!1589 = !{!1578, !1020, i64 82}
!1590 = !DILocation(line: 953, column: 39, scope: !1586)
!1591 = !DILocation(line: 953, column: 54, scope: !1586)
!1592 = !DILocation(line: 953, column: 14, scope: !1574)
!1593 = !DILocation(line: 927, column: 32, scope: !1488)
!1594 = !DILocation(line: 960, column: 7, scope: !1488)
!1595 = !DILocation(line: 0, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 953, column: 61)
!1597 = !DILocation(line: 961, column: 5, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 960, column: 19)
!1599 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 960, column: 7)
!1600 = !DILocation(line: 962, column: 3, scope: !1598)
!1601 = !DILocation(line: 0, scope: !1598)
!1602 = !DILocation(line: 963, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 963, column: 7)
!1604 = !DILocation(line: 963, column: 19, scope: !1603)
!1605 = !DILocation(line: 963, column: 7, scope: !1488)
!1606 = !DILocation(line: 967, column: 9, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 967, column: 9)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 965, column: 10)
!1609 = !DILocation(line: 967, column: 9, scope: !1608)
!1610 = !DILocation(line: 968, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 967, column: 18)
!1612 = !DILocation(line: 969, column: 7, scope: !1611)
!1613 = !DILocation(line: 970, column: 5, scope: !1611)
!1614 = !DILocation(line: 971, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 971, column: 9)
!1616 = !DILocation(line: 971, column: 9, scope: !1608)
!1617 = !DILocation(line: 972, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 971, column: 18)
!1619 = !DILocation(line: 973, column: 5, scope: !1618)
!1620 = !DILocation(line: 974, column: 9, scope: !1608)
!1621 = !DILocation(line: 975, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 974, column: 21)
!1623 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 974, column: 9)
!1624 = !DILocation(line: 976, column: 7, scope: !1622)
!1625 = !DILocation(line: 977, column: 5, scope: !1622)
!1626 = !DILocation(line: 980, column: 7, scope: !1488)
!1627 = !DILocation(line: 964, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 963, column: 30)
!1629 = !DILocation(line: 965, column: 3, scope: !1628)
!1630 = !DILocation(line: 1010, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 1009, column: 5)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 980, column: 19)
!1633 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 980, column: 7)
!1634 = !DILocation(line: 926, column: 9, scope: !1488)
!1635 = !DILocation(line: 1012, column: 3, scope: !1632)
!1636 = !DILocation(line: 1013, column: 30, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1012, column: 10)
!1638 = !DILocation(line: 1013, column: 39, scope: !1637)
!1639 = !DILocation(line: 1013, column: 11, scope: !1637)
!1640 = !DILocation(line: 0, scope: !1637)
!1641 = !DILocation(line: 1015, column: 11, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1015, column: 7)
!1643 = !DILocation(line: 1015, column: 7, scope: !1488)
!1644 = !DILocation(line: 1025, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1025, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 1024, column: 10)
!1647 = !DILocation(line: 1025, column: 9, scope: !1646)
!1648 = !DILocation(line: 1046, column: 17, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1046, column: 11)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 1025, column: 25)
!1651 = !DILocation(line: 1046, column: 30, scope: !1649)
!1652 = !DILocation(line: 1046, column: 34, scope: !1649)
!1653 = !DILocation(line: 1046, column: 37, scope: !1649)
!1654 = !DILocation(line: 1046, column: 48, scope: !1649)
!1655 = !DILocation(line: 1046, column: 11, scope: !1650)
!1656 = !DILocation(line: 0, scope: !1488)
!1657 = !DILocation(line: 1049, column: 13, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1046, column: 54)
!1659 = !DILocation(line: 1051, column: 11, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1049, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1049, column: 13)
!1662 = !DILocation(line: 1053, column: 9, scope: !1660)
!1663 = !DILocation(line: 1060, column: 7, scope: !1488)
!1664 = !DILocation(line: 1062, column: 35, scope: !1502)
!1665 = !DILocation(line: 1062, column: 16, scope: !1502)
!1666 = !DILocation(line: 1063, column: 24, scope: !1502)
!1667 = !DILocation(line: 1063, column: 28, scope: !1502)
!1668 = !DILocation(line: 1064, column: 23, scope: !1502)
!1669 = !DILocation(line: 1065, column: 17, scope: !1502)
!1670 = !DILocation(line: 1066, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1066, column: 9)
!1672 = !DILocation(line: 1066, column: 9, scope: !1502)
!1673 = !DILocation(line: 1067, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 1066, column: 24)
!1675 = !DILocation(line: 1069, column: 23, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1067, column: 23)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 1067, column: 11)
!1678 = !DILocation(line: 1072, column: 9, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1072, column: 9)
!1680 = !DILocation(line: 1072, column: 9, scope: !1676)
!1681 = !DILocation(line: 1072, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 1072, column: 9)
!1683 = !DILocation(line: 1074, column: 11, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 1074, column: 11)
!1685 = !DILocation(line: 1074, column: 11, scope: !1674)
!1686 = !DILocation(line: 1075, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1075, column: 9)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1074, column: 20)
!1689 = !DILocation(line: 1075, column: 9, scope: !1688)
!1690 = !DILocation(line: 1075, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1075, column: 9)
!1692 = !DILocation(line: 1077, column: 11, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 1077, column: 11)
!1694 = !DILocation(line: 1077, column: 11, scope: !1674)
!1695 = !DILocation(line: 1078, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1078, column: 9)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1077, column: 20)
!1698 = !DILocation(line: 1078, column: 9, scope: !1697)
!1699 = !DILocation(line: 1078, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 1078, column: 9)
!1701 = !DILocation(line: 1082, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1082, column: 9)
!1703 = !DILocation(line: 1082, column: 9, scope: !1502)
!1704 = !DILocation(line: 1086, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1084, column: 5)
!1706 = !DILocation(line: 1087, column: 5, scope: !1705)
!1707 = !DILocation(line: 1090, column: 7, scope: !1488)
!1708 = !DILocation(line: 1093, column: 5, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1093, column: 5)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1093, column: 5)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 1090, column: 24)
!1712 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1090, column: 7)
!1713 = !DILocation(line: 1093, column: 5, scope: !1710)
!1714 = !DILocation(line: 1093, column: 5, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 1093, column: 5)
!1716 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 1093, column: 5)
!1717 = !DILocation(line: 1093, column: 5, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 1093, column: 5)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1093, column: 5)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1093, column: 5)
!1721 = !DILocation(line: 1094, column: 9, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1094, column: 9)
!1723 = !DILocation(line: 1094, column: 9, scope: !1711)
!1724 = !DILocation(line: 1095, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 1094, column: 18)
!1726 = !DILocation(line: 1096, column: 5, scope: !1725)
!1727 = !DILocation(line: 1098, column: 5, scope: !1711)
!1728 = !DILocation(line: 1099, column: 5, scope: !1711)
!1729 = !DILocation(line: 1100, column: 19, scope: !1711)
!1730 = !DILocation(line: 1100, column: 5, scope: !1711)
!1731 = !DILocation(line: 1102, column: 3, scope: !1711)
!1732 = !DILocation(line: 1106, column: 3, scope: !1488)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1105, column: 3)
!1735 = !DILocation(line: 1107, column: 1, scope: !1488)
!1736 = distinct !DISubprogram(name: "lwip_netconn_do_bind", scope: !3, file: !3, line: 1220, type: !521, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1737)
!1737 = !{!1738, !1739, !1740}
!1738 = !DILocalVariable(name: "m", arg: 1, scope: !1736, file: !3, line: 1220, type: !119)
!1739 = !DILocalVariable(name: "msg", scope: !1736, file: !3, line: 1222, type: !120)
!1740 = !DILocalVariable(name: "err", scope: !1736, file: !3, line: 1223, type: !274)
!1741 = !DILocation(line: 1220, column: 28, scope: !1736)
!1742 = !DILocation(line: 1222, column: 19, scope: !1736)
!1743 = !DILocation(line: 1225, column: 12, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 1225, column: 7)
!1745 = !DILocation(line: 1225, column: 18, scope: !1744)
!1746 = !DILocation(line: 1225, column: 22, scope: !1744)
!1747 = !DILocation(line: 1225, column: 26, scope: !1744)
!1748 = !DILocation(line: 1225, column: 7, scope: !1736)
!1749 = !DILocation(line: 1226, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 1225, column: 35)
!1751 = !DILocation(line: 1226, column: 5, scope: !1750)
!1752 = !DILocation(line: 1234, column: 44, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 1226, column: 49)
!1754 = !DILocation(line: 1234, column: 90, scope: !1753)
!1755 = !DILocation(line: 1234, column: 15, scope: !1753)
!1756 = !DILocation(line: 1223, column: 9, scope: !1736)
!1757 = !DILocation(line: 1235, column: 9, scope: !1753)
!1758 = !DILocation(line: 1239, column: 44, scope: !1753)
!1759 = !DILocation(line: 1239, column: 90, scope: !1753)
!1760 = !DILocation(line: 1239, column: 15, scope: !1753)
!1761 = !DILocation(line: 1240, column: 9, scope: !1753)
!1762 = !DILocation(line: 0, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 1246, column: 10)
!1764 = !DILocation(line: 1249, column: 8, scope: !1736)
!1765 = !DILocation(line: 1249, column: 12, scope: !1736)
!1766 = !DILocation(line: 1251, column: 1, scope: !1736)
!1767 = distinct !DISubprogram(name: "lwip_netconn_do_bind_if", scope: !3, file: !3, line: 1260, type: !521, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1768)
!1768 = !{!1769, !1770, !1839, !1840}
!1769 = !DILocalVariable(name: "m", arg: 1, scope: !1767, file: !3, line: 1260, type: !119)
!1770 = !DILocalVariable(name: "netif", scope: !1767, file: !3, line: 1262, type: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !87, line: 260, size: 2240, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1780, !1782, !1784, !1785, !1790, !1797, !1802, !1809, !1814, !1815, !1816, !1818, !1819, !1820, !1821, !1825, !1826, !1827, !1831, !1832, !1833, !1834}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1772, file: !87, line: 263, baseType: !1771, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1772, file: !87, line: 268, baseType: !139, size: 192, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1772, file: !87, line: 269, baseType: !139, size: 192, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1772, file: !87, line: 270, baseType: !139, size: 192, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1772, file: !87, line: 274, baseType: !1779, size: 576, offset: 640)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 576, elements: !582)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1772, file: !87, line: 277, baseType: !1781, size: 24, offset: 1216)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !582)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1772, file: !87, line: 282, baseType: !1783, size: 96, offset: 1248)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 96, elements: !582)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1772, file: !87, line: 283, baseType: !1783, size: 96, offset: 1344)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1772, file: !87, line: 288, baseType: !1786, size: 64, offset: 1472)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !87, line: 178, baseType: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!274, !242, !1771}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1772, file: !87, line: 294, baseType: !1791, size: 64, offset: 1536)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !87, line: 189, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!274, !1771, !242, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1772, file: !87, line: 299, baseType: !1798, size: 64, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !87, line: 212, baseType: !1799)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!274, !1771, !242}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1772, file: !87, line: 305, baseType: !1803, size: 64, offset: 1664)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !87, line: 202, baseType: !1804)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!274, !1771, !242, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1772, file: !87, line: 310, baseType: !1810, size: 64, offset: 1728)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !87, line: 214, baseType: !1811)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1771}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1772, file: !87, line: 319, baseType: !1810, size: 64, offset: 1792)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1772, file: !87, line: 323, baseType: !119, size: 64, offset: 1856)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1772, file: !87, line: 325, baseType: !1817, size: 64, offset: 1920)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !586)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1772, file: !87, line: 332, baseType: !193, size: 16, offset: 1984)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1772, file: !87, line: 335, baseType: !193, size: 16, offset: 2000)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1772, file: !87, line: 338, baseType: !193, size: 16, offset: 2016)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1772, file: !87, line: 341, baseType: !1822, size: 48, offset: 2032)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 48, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 6)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1772, file: !87, line: 343, baseType: !161, size: 8, offset: 2080)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !87, line: 345, baseType: !161, size: 8, offset: 2088)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1772, file: !87, line: 347, baseType: !1828, size: 16, offset: 2096)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 16, elements: !1829)
!1829 = !{!1830}
!1830 = !DISubrange(count: 2)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1772, file: !87, line: 350, baseType: !161, size: 8, offset: 2112)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1772, file: !87, line: 353, baseType: !161, size: 8, offset: 2120)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1772, file: !87, line: 357, baseType: !161, size: 8, offset: 2128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1772, file: !87, line: 377, baseType: !1835, size: 64, offset: 2176)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !87, line: 222, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!274, !1771, !1807, !86}
!1839 = !DILocalVariable(name: "msg", scope: !1767, file: !3, line: 1263, type: !120)
!1840 = !DILocalVariable(name: "err", scope: !1767, file: !3, line: 1264, type: !274)
!1841 = !DILocation(line: 1260, column: 31, scope: !1767)
!1842 = !DILocation(line: 1266, column: 42, scope: !1767)
!1843 = !DILocation(line: 1266, column: 11, scope: !1767)
!1844 = !DILocation(line: 1262, column: 17, scope: !1767)
!1845 = !DILocation(line: 1268, column: 14, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1268, column: 7)
!1847 = !DILocation(line: 1268, column: 23, scope: !1846)
!1848 = !DILocation(line: 1263, column: 19, scope: !1767)
!1849 = !DILocation(line: 1268, column: 32, scope: !1846)
!1850 = !DILocation(line: 1268, column: 38, scope: !1846)
!1851 = !DILocation(line: 1268, column: 42, scope: !1846)
!1852 = !DILocation(line: 1268, column: 46, scope: !1846)
!1853 = !DILocation(line: 1268, column: 7, scope: !1767)
!1854 = !DILocation(line: 1264, column: 9, scope: !1767)
!1855 = !DILocation(line: 1270, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1268, column: 56)
!1857 = !DILocation(line: 1270, column: 5, scope: !1856)
!1858 = !DILocation(line: 1278, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 1270, column: 49)
!1860 = !DILocation(line: 1279, column: 9, scope: !1859)
!1861 = !DILocation(line: 1283, column: 9, scope: !1859)
!1862 = !DILocation(line: 1284, column: 9, scope: !1859)
!1863 = !DILocation(line: 0, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1290, column: 10)
!1865 = !DILocation(line: 1293, column: 8, scope: !1767)
!1866 = !DILocation(line: 1293, column: 12, scope: !1767)
!1867 = !DILocation(line: 1295, column: 1, scope: !1767)
!1868 = distinct !DISubprogram(name: "lwip_netconn_do_connect", scope: !3, file: !3, line: 1354, type: !521, isLocal: false, isDefinition: true, scopeLine: 1355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1869)
!1869 = !{!1870, !1871, !1872, !1873}
!1870 = !DILocalVariable(name: "m", arg: 1, scope: !1868, file: !3, line: 1354, type: !119)
!1871 = !DILocalVariable(name: "msg", scope: !1868, file: !3, line: 1356, type: !120)
!1872 = !DILocalVariable(name: "err", scope: !1868, file: !3, line: 1357, type: !274)
!1873 = !DILocalVariable(name: "non_blocking", scope: !1874, file: !3, line: 1386, type: !161)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 1385, column: 30)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1385, column: 15)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1381, column: 16)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 1379, column: 20)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1377, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1363, column: 49)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1362, column: 10)
!1881 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1359, column: 7)
!1882 = !DILocation(line: 1354, column: 31, scope: !1868)
!1883 = !DILocation(line: 1356, column: 19, scope: !1868)
!1884 = !DILocation(line: 1359, column: 12, scope: !1881)
!1885 = !DILocation(line: 1359, column: 18, scope: !1881)
!1886 = !DILocation(line: 1359, column: 22, scope: !1881)
!1887 = !DILocation(line: 1359, column: 26, scope: !1881)
!1888 = !DILocation(line: 1359, column: 7, scope: !1868)
!1889 = !DILocation(line: 1363, column: 13, scope: !1880)
!1890 = !DILocation(line: 1363, column: 5, scope: !1880)
!1891 = !DILocation(line: 1371, column: 47, scope: !1879)
!1892 = !DILocation(line: 1371, column: 93, scope: !1879)
!1893 = !DILocation(line: 1371, column: 15, scope: !1879)
!1894 = !DILocation(line: 1357, column: 9, scope: !1868)
!1895 = !DILocation(line: 1372, column: 9, scope: !1879)
!1896 = !DILocation(line: 1377, column: 24, scope: !1878)
!1897 = !DILocation(line: 1377, column: 30, scope: !1878)
!1898 = !DILocation(line: 1377, column: 13, scope: !1879)
!1899 = !DILocation(line: 1379, column: 37, scope: !1877)
!1900 = !DILocation(line: 1379, column: 20, scope: !1878)
!1901 = !DILocation(line: 514, column: 27, scope: !1039, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 1382, column: 11, scope: !1876)
!1903 = !DILocation(line: 516, column: 19, scope: !1039, inlinedAt: !1902)
!1904 = !DILocation(line: 519, column: 16, scope: !1039, inlinedAt: !1902)
!1905 = !DILocation(line: 519, column: 3, scope: !1039, inlinedAt: !1902)
!1906 = !DILocation(line: 520, column: 3, scope: !1039, inlinedAt: !1902)
!1907 = !DILocation(line: 521, column: 3, scope: !1039, inlinedAt: !1902)
!1908 = !DILocation(line: 522, column: 3, scope: !1039, inlinedAt: !1902)
!1909 = !DILocation(line: 523, column: 3, scope: !1039, inlinedAt: !1902)
!1910 = !DILocation(line: 524, column: 1, scope: !1039, inlinedAt: !1902)
!1911 = !DILocation(line: 1383, column: 34, scope: !1876)
!1912 = !DILocation(line: 1383, column: 40, scope: !1876)
!1913 = !DILocation(line: 1383, column: 44, scope: !1876)
!1914 = !DILocation(line: 1383, column: 49, scope: !1876)
!1915 = !DILocation(line: 1384, column: 41, scope: !1876)
!1916 = !DILocation(line: 1383, column: 17, scope: !1876)
!1917 = !DILocation(line: 1385, column: 19, scope: !1875)
!1918 = !DILocation(line: 1385, column: 15, scope: !1876)
!1919 = !DILocation(line: 1386, column: 33, scope: !1874)
!1920 = !DILocation(line: 1386, column: 18, scope: !1874)
!1921 = !DILocation(line: 1387, column: 24, scope: !1874)
!1922 = !DILocation(line: 1387, column: 30, scope: !1874)
!1923 = !DILocation(line: 1388, column: 13, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1388, column: 13)
!1925 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1388, column: 13)
!1926 = !DILocation(line: 1388, column: 13, scope: !1925)
!1927 = !DILocation(line: 1388, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1388, column: 13)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 1388, column: 13)
!1930 = !DILocation(line: 1388, column: 13, scope: !1929)
!1931 = !DILocation(line: 1389, column: 17, scope: !1874)
!1932 = !DILocation(line: 1404, column: 11, scope: !1875)
!1933 = !DILocation(line: 1388, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1388, column: 13)
!1935 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 1388, column: 13)
!1936 = !DILocation(line: 1392, column: 26, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1391, column: 20)
!1938 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1389, column: 17)
!1939 = !DILocation(line: 1392, column: 38, scope: !1937)
!1940 = !DILocation(line: 1396, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 1396, column: 15)
!1942 = !DILocation(line: 1397, column: 15, scope: !1937)
!1943 = !DILocation(line: 1398, column: 33, scope: !1937)
!1944 = !DILocation(line: 1398, column: 15, scope: !1937)
!1945 = !DILocation(line: 1399, column: 15, scope: !1937)
!1946 = !DILocation(line: 1400, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 1400, column: 15)
!1948 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 1400, column: 15)
!1949 = !DILocation(line: 1400, column: 15, scope: !1948)
!1950 = !DILocation(line: 1400, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 1400, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 1400, column: 15)
!1953 = !DILocation(line: 1400, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 1400, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1400, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 1400, column: 15)
!1957 = !DILocation(line: 1402, column: 15, scope: !1937)
!1958 = !DILocation(line: 1409, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 1409, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1409, column: 9)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 1409, column: 9)
!1962 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1409, column: 9)
!1963 = !DILocation(line: 1409, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 1409, column: 9)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1409, column: 9)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 1409, column: 9)
!1967 = !DILocation(line: 1415, column: 8, scope: !1868)
!1968 = !DILocation(line: 0, scope: !1879)
!1969 = !DILocation(line: 1415, column: 12, scope: !1868)
!1970 = !DILocation(line: 1419, column: 1, scope: !1868)
!1971 = distinct !DISubprogram(name: "lwip_netconn_do_connected", scope: !3, file: !3, line: 1305, type: !272, isLocal: true, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1972)
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1978}
!1973 = !DILocalVariable(name: "arg", arg: 1, scope: !1971, file: !3, line: 1305, type: !119)
!1974 = !DILocalVariable(name: "pcb", arg: 2, scope: !1971, file: !3, line: 1305, type: !178)
!1975 = !DILocalVariable(name: "err", arg: 3, scope: !1971, file: !3, line: 1305, type: !274)
!1976 = !DILocalVariable(name: "conn", scope: !1971, file: !3, line: 1307, type: !125)
!1977 = !DILocalVariable(name: "was_blocking", scope: !1971, file: !3, line: 1308, type: !15)
!1978 = !DILocalVariable(name: "op_completed_sem", scope: !1971, file: !3, line: 1309, type: !872)
!1979 = !DILocation(line: 1305, column: 33, scope: !1971)
!1980 = !DILocation(line: 1305, column: 54, scope: !1971)
!1981 = !DILocation(line: 1305, column: 65, scope: !1971)
!1982 = !DILocation(line: 1309, column: 14, scope: !1971)
!1983 = !DILocation(line: 1313, column: 10, scope: !1971)
!1984 = !DILocation(line: 1307, column: 19, scope: !1971)
!1985 = !DILocation(line: 1315, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1315, column: 7)
!1987 = !DILocation(line: 1315, column: 7, scope: !1971)
!1988 = !DILocation(line: 1319, column: 3, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 1319, column: 3)
!1990 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1319, column: 3)
!1991 = !DILocation(line: 1319, column: 3, scope: !1990)
!1992 = !DILocation(line: 1319, column: 3, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1319, column: 3)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 1319, column: 3)
!1995 = !DILocation(line: 1319, column: 3, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 1319, column: 3)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1319, column: 3)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 1319, column: 3)
!1999 = !DILocation(line: 1320, column: 3, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 1320, column: 3)
!2001 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1320, column: 3)
!2002 = !DILocation(line: 1320, column: 3, scope: !2001)
!2003 = !DILocation(line: 1320, column: 3, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 1320, column: 3)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 1320, column: 3)
!2006 = !DILocation(line: 1320, column: 3, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1320, column: 3)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1320, column: 3)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 1320, column: 3)
!2010 = !DILocation(line: 1323, column: 7, scope: !1971)
!2011 = !DILocation(line: 1324, column: 24, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1323, column: 34)
!2013 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1323, column: 7)
!2014 = !DILocation(line: 1324, column: 28, scope: !2012)
!2015 = !DILocation(line: 1325, column: 24, scope: !2012)
!2016 = !DILocation(line: 1326, column: 3, scope: !2012)
!2017 = !DILocation(line: 0, scope: !1971)
!2018 = !DILocation(line: 0, scope: !2012)
!2019 = !DILocation(line: 1327, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1327, column: 7)
!2021 = !DILocation(line: 1327, column: 38, scope: !2020)
!2022 = !DILocation(line: 1327, column: 54, scope: !2020)
!2023 = !DILocation(line: 1327, column: 62, scope: !2020)
!2024 = !DILocation(line: 1327, column: 7, scope: !1971)
!2025 = !DILocation(line: 514, column: 27, scope: !1039, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 1328, column: 5, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1327, column: 74)
!2028 = !DILocation(line: 518, column: 15, scope: !1039, inlinedAt: !2026)
!2029 = !DILocation(line: 518, column: 19, scope: !1039, inlinedAt: !2026)
!2030 = !DILocation(line: 516, column: 19, scope: !1039, inlinedAt: !2026)
!2031 = !DILocation(line: 519, column: 3, scope: !1039, inlinedAt: !2026)
!2032 = !DILocation(line: 520, column: 3, scope: !1039, inlinedAt: !2026)
!2033 = !DILocation(line: 521, column: 3, scope: !1039, inlinedAt: !2026)
!2034 = !DILocation(line: 522, column: 3, scope: !1039, inlinedAt: !2026)
!2035 = !DILocation(line: 523, column: 3, scope: !1039, inlinedAt: !2026)
!2036 = !DILocation(line: 524, column: 1, scope: !1039, inlinedAt: !2026)
!2037 = !DILocation(line: 1329, column: 3, scope: !2027)
!2038 = !DILocation(line: 1330, column: 19, scope: !1971)
!2039 = !DILocation(line: 1331, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1331, column: 3)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1331, column: 3)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 1331, column: 3)
!2043 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1331, column: 3)
!2044 = !DILocation(line: 1332, column: 3, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1332, column: 3)
!2046 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1332, column: 3)
!2047 = !DILocation(line: 1332, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 1332, column: 3)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1332, column: 3)
!2050 = !DILocation(line: 1332, column: 3, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1332, column: 3)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1332, column: 3)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1332, column: 3)
!2054 = !DILocation(line: 1335, column: 21, scope: !1971)
!2055 = !DILocation(line: 1336, column: 15, scope: !1971)
!2056 = !DILocation(line: 1337, column: 3, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1337, column: 3)
!2058 = !DILocation(line: 1337, column: 3, scope: !1971)
!2059 = !DILocation(line: 1337, column: 3, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 1337, column: 3)
!2061 = !DILocation(line: 1339, column: 7, scope: !1971)
!2062 = !DILocation(line: 1340, column: 5, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 1339, column: 21)
!2064 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1339, column: 7)
!2065 = !DILocation(line: 1341, column: 3, scope: !2063)
!2066 = !DILocation(line: 0, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1315, column: 21)
!2068 = !DILocation(line: 1343, column: 1, scope: !1971)
!2069 = distinct !DISubprogram(name: "lwip_netconn_do_disconnect", scope: !3, file: !3, line: 1429, type: !521, isLocal: false, isDefinition: true, scopeLine: 1430, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2070)
!2070 = !{!2071, !2072}
!2071 = !DILocalVariable(name: "m", arg: 1, scope: !2069, file: !3, line: 1429, type: !119)
!2072 = !DILocalVariable(name: "msg", scope: !2069, file: !3, line: 1431, type: !120)
!2073 = !DILocation(line: 1429, column: 34, scope: !2069)
!2074 = !DILocation(line: 1434, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 1434, column: 7)
!2076 = !DILocation(line: 1434, column: 42, scope: !2075)
!2077 = !DILocation(line: 1434, column: 7, scope: !2069)
!2078 = !DILocation(line: 1431, column: 19, scope: !2069)
!2079 = !DILocation(line: 1435, column: 31, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1434, column: 58)
!2081 = !DILocation(line: 1435, column: 35, scope: !2080)
!2082 = !DILocation(line: 1435, column: 5, scope: !2080)
!2083 = !DILocation(line: 1437, column: 3, scope: !2080)
!2084 = !DILocation(line: 1440, column: 10, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1439, column: 3)
!2086 = !DILocation(line: 1440, column: 14, scope: !2085)
!2087 = !DILocation(line: 1443, column: 1, scope: !2069)
!2088 = distinct !DISubprogram(name: "lwip_netconn_do_listen", scope: !3, file: !3, line: 1453, type: !521, isLocal: false, isDefinition: true, scopeLine: 1454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2100}
!2090 = !DILocalVariable(name: "m", arg: 1, scope: !2088, file: !3, line: 1453, type: !119)
!2091 = !DILocalVariable(name: "msg", scope: !2088, file: !3, line: 1455, type: !120)
!2092 = !DILocalVariable(name: "err", scope: !2088, file: !3, line: 1456, type: !274)
!2093 = !DILocalVariable(name: "lpcb", scope: !2094, file: !3, line: 1461, type: !178)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 1460, column: 45)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1460, column: 11)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1459, column: 60)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1459, column: 9)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1458, column: 35)
!2099 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1458, column: 7)
!2100 = !DILocalVariable(name: "backlog", scope: !2101, file: !3, line: 1466, type: !161)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1465, column: 16)
!2102 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 1462, column: 13)
!2103 = !DILocation(line: 1453, column: 30, scope: !2088)
!2104 = !DILocation(line: 1455, column: 19, scope: !2088)
!2105 = !DILocation(line: 1456, column: 9, scope: !2088)
!2106 = !DILocation(line: 1456, column: 3, scope: !2088)
!2107 = !DILocation(line: 1458, column: 12, scope: !2099)
!2108 = !DILocation(line: 1458, column: 18, scope: !2099)
!2109 = !DILocation(line: 1458, column: 22, scope: !2099)
!2110 = !DILocation(line: 1458, column: 26, scope: !2099)
!2111 = !DILocation(line: 1458, column: 7, scope: !2088)
!2112 = !DILocation(line: 1459, column: 9, scope: !2097)
!2113 = !DILocation(line: 1459, column: 44, scope: !2097)
!2114 = !DILocation(line: 1459, column: 9, scope: !2098)
!2115 = !DILocation(line: 1460, column: 22, scope: !2095)
!2116 = !DILocation(line: 1460, column: 28, scope: !2095)
!2117 = !DILocation(line: 1460, column: 11, scope: !2096)
!2118 = !DILocation(line: 1462, column: 33, scope: !2102)
!2119 = !DILocation(line: 1462, column: 39, scope: !2102)
!2120 = !DILocation(line: 1462, column: 13, scope: !2094)
!2121 = !DILocation(line: 1464, column: 15, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1462, column: 50)
!2123 = !DILocation(line: 1465, column: 9, scope: !2122)
!2124 = !DILocation(line: 1466, column: 16, scope: !2101)
!2125 = !DILocation(line: 1476, column: 15, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 1476, column: 15)
!2127 = !{!2128, !942, i64 20}
!2128 = !{!"ip_pcb", !1019, i64 0, !1019, i64 24, !942, i64 48, !942, i64 49, !942, i64 50, !942, i64 51}
!2129 = !{!1019, !942, i64 20}
!2130 = !DILocation(line: 1476, column: 71, scope: !2126)
!2131 = !DILocation(line: 0, scope: !2126)
!2132 = !DILocation(line: 1477, column: 16, scope: !2126)
!2133 = !DILocation(line: 1477, column: 48, scope: !2126)
!2134 = !DILocation(line: 1476, column: 15, scope: !2101)
!2135 = !DILocation(line: 1479, column: 13, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1479, column: 13)
!2137 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1477, column: 55)
!2138 = !{!1578, !942, i64 20}
!2139 = !DILocation(line: 1480, column: 13, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1480, column: 13)
!2141 = !{!1578, !942, i64 44}
!2142 = !DILocation(line: 1481, column: 11, scope: !2137)
!2143 = !DILocation(line: 1484, column: 65, scope: !2101)
!2144 = !DILocation(line: 1484, column: 18, scope: !2101)
!2145 = !DILocation(line: 1461, column: 25, scope: !2094)
!2146 = !DILocation(line: 1486, column: 20, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 1486, column: 15)
!2148 = !DILocation(line: 1486, column: 15, scope: !2101)
!2149 = !DILocation(line: 1490, column: 38, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1490, column: 17)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 1488, column: 18)
!2152 = !DILocation(line: 1490, column: 44, scope: !2150)
!2153 = !DILocation(line: 1490, column: 17, scope: !2150)
!2154 = !DILocation(line: 1490, column: 17, scope: !2151)
!2155 = !DILocation(line: 1492, column: 35, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1490, column: 55)
!2157 = !DILocation(line: 1492, column: 41, scope: !2156)
!2158 = !DILocation(line: 1492, column: 15, scope: !2156)
!2159 = !DILocation(line: 1493, column: 42, scope: !2156)
!2160 = !DILocation(line: 1493, column: 48, scope: !2156)
!2161 = !DILocation(line: 1493, column: 15, scope: !2156)
!2162 = !DILocation(line: 1494, column: 13, scope: !2156)
!2163 = !DILocation(line: 1495, column: 17, scope: !2151)
!2164 = !DILocation(line: 1496, column: 39, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1496, column: 17)
!2166 = !DILocation(line: 1496, column: 45, scope: !2165)
!2167 = !DILocation(line: 1496, column: 18, scope: !2165)
!2168 = !DILocation(line: 1496, column: 17, scope: !2151)
!2169 = !DILocation(line: 1497, column: 40, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 1496, column: 58)
!2171 = !DILocation(line: 1497, column: 46, scope: !2170)
!2172 = !DILocation(line: 1497, column: 21, scope: !2170)
!2173 = !DILocation(line: 1497, column: 19, scope: !2170)
!2174 = !DILocation(line: 1498, column: 13, scope: !2170)
!2175 = !DILocation(line: 1499, column: 17, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1499, column: 17)
!2177 = !DILocation(line: 1499, column: 21, scope: !2176)
!2178 = !DILocation(line: 1499, column: 17, scope: !2151)
!2179 = !DILocation(line: 1500, column: 20, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 1499, column: 32)
!2181 = !DILocation(line: 1500, column: 26, scope: !2180)
!2182 = !DILocation(line: 1500, column: 32, scope: !2180)
!2183 = !DILocation(line: 1501, column: 26, scope: !2180)
!2184 = !DILocation(line: 1501, column: 30, scope: !2180)
!2185 = !DILocation(line: 1501, column: 34, scope: !2180)
!2186 = !DILocation(line: 1502, column: 28, scope: !2180)
!2187 = !DILocation(line: 1502, column: 34, scope: !2180)
!2188 = !DILocation(line: 1502, column: 38, scope: !2180)
!2189 = !DILocation(line: 1502, column: 43, scope: !2180)
!2190 = !DILocation(line: 1502, column: 15, scope: !2180)
!2191 = !DILocation(line: 1503, column: 31, scope: !2180)
!2192 = !DILocation(line: 1503, column: 37, scope: !2180)
!2193 = !DILocation(line: 1503, column: 41, scope: !2180)
!2194 = !DILocation(line: 1503, column: 15, scope: !2180)
!2195 = !DILocation(line: 1504, column: 13, scope: !2180)
!2196 = !DILocation(line: 1506, column: 15, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 1504, column: 20)
!2198 = !DILocation(line: 1507, column: 20, scope: !2197)
!2199 = !DILocation(line: 1507, column: 26, scope: !2197)
!2200 = !DILocation(line: 1507, column: 30, scope: !2197)
!2201 = !DILocation(line: 1507, column: 34, scope: !2197)
!2202 = !DILocation(line: 1524, column: 14, scope: !2088)
!2203 = !DILocation(line: 1511, column: 35, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 1511, column: 18)
!2205 = !DILocation(line: 1511, column: 18, scope: !2095)
!2206 = !DILocation(line: 1513, column: 13, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1511, column: 54)
!2208 = !DILocation(line: 1515, column: 7, scope: !2207)
!2209 = !DILocation(line: 1516, column: 13, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1515, column: 14)
!2211 = !DILocation(line: 1519, column: 11, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1518, column: 12)
!2213 = !DILocation(line: 1522, column: 9, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1521, column: 10)
!2215 = !DILocation(line: 1524, column: 8, scope: !2088)
!2216 = !DILocation(line: 1524, column: 12, scope: !2088)
!2217 = !DILocation(line: 1526, column: 1, scope: !2088)
!2218 = distinct !DISubprogram(name: "accept_function", scope: !3, file: !3, line: 533, type: !272, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2224, !2225}
!2220 = !DILocalVariable(name: "arg", arg: 1, scope: !2218, file: !3, line: 533, type: !119)
!2221 = !DILocalVariable(name: "newpcb", arg: 2, scope: !2218, file: !3, line: 533, type: !178)
!2222 = !DILocalVariable(name: "err", arg: 3, scope: !2218, file: !3, line: 533, type: !274)
!2223 = !DILocalVariable(name: "newconn", scope: !2218, file: !3, line: 535, type: !125)
!2224 = !DILocalVariable(name: "conn", scope: !2218, file: !3, line: 536, type: !125)
!2225 = !DILocalVariable(name: "pcb", scope: !2226, file: !3, line: 580, type: !178)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 576, column: 63)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 576, column: 7)
!2228 = !DILocation(line: 533, column: 23, scope: !2218)
!2229 = !DILocation(line: 533, column: 44, scope: !2218)
!2230 = !DILocation(line: 533, column: 58, scope: !2218)
!2231 = !DILocation(line: 536, column: 26, scope: !2218)
!2232 = !DILocation(line: 536, column: 19, scope: !2218)
!2233 = !DILocation(line: 538, column: 12, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 538, column: 7)
!2235 = !DILocation(line: 538, column: 7, scope: !2218)
!2236 = !DILocation(line: 541, column: 8, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 541, column: 7)
!2238 = !DILocation(line: 541, column: 7, scope: !2218)
!2239 = !DILocation(line: 546, column: 14, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 546, column: 7)
!2241 = !DILocation(line: 546, column: 7, scope: !2218)
!2242 = !DILocalVariable(name: "err", arg: 1, scope: !2243, file: !3, line: 115, type: !274)
!2243 = distinct !DISubprogram(name: "lwip_netconn_err_to_msg", scope: !3, file: !3, line: 115, type: !2244, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!119, !274}
!2246 = !{!2242}
!2247 = !DILocation(line: 115, column: 31, scope: !2243, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 548, column: 45, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 548, column: 9)
!2250 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 546, column: 23)
!2251 = !DILocation(line: 117, column: 3, scope: !2243, inlinedAt: !2248)
!2252 = !DILocation(line: 119, column: 7, scope: !2253, inlinedAt: !2248)
!2253 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 117, column: 16)
!2254 = !DILocation(line: 128, column: 1, scope: !2243, inlinedAt: !2248)
!2255 = !DILocation(line: 548, column: 9, scope: !2249)
!2256 = !DILocation(line: 548, column: 80, scope: !2249)
!2257 = !DILocation(line: 548, column: 9, scope: !2250)
!2258 = !DILocation(line: 550, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 550, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 548, column: 91)
!2261 = !DILocation(line: 550, column: 7, scope: !2260)
!2262 = !DILocation(line: 550, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 550, column: 7)
!2264 = !DILocation(line: 554, column: 3, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 554, column: 3)
!2266 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 554, column: 3)
!2267 = !DILocation(line: 554, column: 3, scope: !2266)
!2268 = !DILocation(line: 554, column: 3, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 554, column: 3)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 554, column: 3)
!2271 = !DILocation(line: 554, column: 3, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 554, column: 3)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 554, column: 3)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 554, column: 3)
!2275 = !DILocation(line: 561, column: 33, scope: !2218)
!2276 = !DILocation(line: 561, column: 45, scope: !2218)
!2277 = !DILocation(line: 561, column: 13, scope: !2218)
!2278 = !DILocation(line: 535, column: 19, scope: !2218)
!2279 = !DILocation(line: 562, column: 15, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 562, column: 7)
!2281 = !DILocation(line: 562, column: 7, scope: !2218)
!2282 = !DILocation(line: 115, column: 31, scope: !2243, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 564, column: 45, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 564, column: 9)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 562, column: 24)
!2286 = !DILocation(line: 117, column: 3, scope: !2243, inlinedAt: !2283)
!2287 = !DILocation(line: 119, column: 7, scope: !2253, inlinedAt: !2283)
!2288 = !DILocation(line: 128, column: 1, scope: !2243, inlinedAt: !2283)
!2289 = !DILocation(line: 564, column: 9, scope: !2284)
!2290 = !DILocation(line: 564, column: 80, scope: !2284)
!2291 = !DILocation(line: 564, column: 9, scope: !2285)
!2292 = !DILocation(line: 566, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 566, column: 7)
!2294 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 564, column: 91)
!2295 = !DILocation(line: 566, column: 7, scope: !2294)
!2296 = !DILocation(line: 566, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 566, column: 7)
!2298 = !DILocation(line: 570, column: 12, scope: !2218)
!2299 = !DILocation(line: 570, column: 16, scope: !2218)
!2300 = !DILocation(line: 570, column: 20, scope: !2218)
!2301 = !DILocation(line: 514, column: 27, scope: !1039, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 571, column: 3, scope: !2218)
!2303 = !DILocation(line: 516, column: 19, scope: !1039, inlinedAt: !2302)
!2304 = !DILocation(line: 519, column: 16, scope: !1039, inlinedAt: !2302)
!2305 = !DILocation(line: 519, column: 3, scope: !1039, inlinedAt: !2302)
!2306 = !DILocation(line: 520, column: 3, scope: !1039, inlinedAt: !2302)
!2307 = !DILocation(line: 521, column: 3, scope: !1039, inlinedAt: !2302)
!2308 = !DILocation(line: 522, column: 3, scope: !1039, inlinedAt: !2302)
!2309 = !DILocation(line: 523, column: 3, scope: !1039, inlinedAt: !2302)
!2310 = !DILocation(line: 524, column: 1, scope: !1039, inlinedAt: !2302)
!2311 = !DILocation(line: 576, column: 7, scope: !2227)
!2312 = !DILocation(line: 576, column: 52, scope: !2227)
!2313 = !DILocation(line: 576, column: 7, scope: !2218)
!2314 = !DILocation(line: 580, column: 40, scope: !2226)
!2315 = !DILocation(line: 580, column: 21, scope: !2226)
!2316 = !DILocation(line: 581, column: 5, scope: !2226)
!2317 = !DILocation(line: 582, column: 5, scope: !2226)
!2318 = !DILocation(line: 583, column: 5, scope: !2226)
!2319 = !DILocation(line: 584, column: 5, scope: !2226)
!2320 = !DILocation(line: 585, column: 5, scope: !2226)
!2321 = !DILocation(line: 587, column: 22, scope: !2226)
!2322 = !DILocation(line: 589, column: 29, scope: !2226)
!2323 = !DILocation(line: 589, column: 5, scope: !2226)
!2324 = !DILocation(line: 590, column: 5, scope: !2226)
!2325 = !DILocation(line: 591, column: 5, scope: !2226)
!2326 = !DILocation(line: 595, column: 5, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 595, column: 5)
!2328 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 593, column: 10)
!2329 = !DILocation(line: 595, column: 5, scope: !2328)
!2330 = !DILocation(line: 595, column: 5, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 595, column: 5)
!2332 = !DILocation(line: 0, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 541, column: 53)
!2334 = !DILocation(line: 599, column: 1, scope: !2218)
!2335 = distinct !DISubprogram(name: "lwip_netconn_do_send", scope: !3, file: !3, line: 1536, type: !521, isLocal: false, isDefinition: true, scopeLine: 1537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2336)
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "m", arg: 1, scope: !2335, file: !3, line: 1536, type: !119)
!2338 = !DILocalVariable(name: "msg", scope: !2335, file: !3, line: 1538, type: !120)
!2339 = !DILocalVariable(name: "err", scope: !2335, file: !3, line: 1540, type: !274)
!2340 = !DILocation(line: 1536, column: 28, scope: !2335)
!2341 = !DILocation(line: 1538, column: 19, scope: !2335)
!2342 = !DILocation(line: 1540, column: 32, scope: !2335)
!2343 = !DILocation(line: 1540, column: 15, scope: !2335)
!2344 = !DILocation(line: 1540, column: 9, scope: !2335)
!2345 = !DILocation(line: 1541, column: 11, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1541, column: 7)
!2347 = !DILocation(line: 1541, column: 7, scope: !2335)
!2348 = !DILocation(line: 1542, column: 14, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1542, column: 9)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1541, column: 22)
!2351 = !DILocation(line: 1542, column: 20, scope: !2349)
!2352 = !DILocation(line: 1542, column: 24, scope: !2349)
!2353 = !DILocation(line: 1542, column: 28, scope: !2349)
!2354 = !DILocation(line: 1542, column: 9, scope: !2350)
!2355 = !DILocation(line: 1543, column: 15, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1542, column: 37)
!2357 = !DILocation(line: 1543, column: 7, scope: !2356)
!2358 = !DILocation(line: 1565, column: 15, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1565, column: 15)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 1543, column: 51)
!2361 = !{!2362, !942, i64 36}
!2362 = !{!"netbuf", !964, i64 0, !964, i64 8, !1019, i64 16, !1020, i64 40}
!2363 = !DILocation(line: 1565, column: 51, scope: !2359)
!2364 = !DILocation(line: 0, scope: !2359)
!2365 = !DILocation(line: 1565, column: 15, scope: !2360)
!2366 = !DILocation(line: 1565, column: 54, scope: !2359)
!2367 = !DILocation(line: 1566, column: 60, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1565, column: 92)
!2369 = !{!2362, !964, i64 0}
!2370 = !DILocation(line: 1566, column: 19, scope: !2368)
!2371 = !DILocation(line: 1567, column: 11, scope: !2368)
!2372 = !DILocation(line: 1568, column: 62, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1567, column: 18)
!2374 = !DILocation(line: 1568, column: 96, scope: !2373)
!2375 = !{!2362, !1020, i64 40}
!2376 = !DILocation(line: 1568, column: 19, scope: !2373)
!2377 = !DILocation(line: 1581, column: 8, scope: !2335)
!2378 = !DILocation(line: 0, scope: !2335)
!2379 = !DILocation(line: 1581, column: 12, scope: !2335)
!2380 = !DILocation(line: 1583, column: 1, scope: !2335)
!2381 = distinct !DISubprogram(name: "lwip_netconn_do_recv", scope: !3, file: !3, line: 1593, type: !521, isLocal: false, isDefinition: true, scopeLine: 1594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2382)
!2382 = !{!2383, !2384, !2385, !2390}
!2383 = !DILocalVariable(name: "m", arg: 1, scope: !2381, file: !3, line: 1593, type: !119)
!2384 = !DILocalVariable(name: "msg", scope: !2381, file: !3, line: 1595, type: !120)
!2385 = !DILocalVariable(name: "remaining", scope: !2386, file: !3, line: 1600, type: !841)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1599, column: 60)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1599, column: 9)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 1598, column: 35)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1598, column: 7)
!2390 = !DILocalVariable(name: "recved", scope: !2391, file: !3, line: 1602, type: !193)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1601, column: 10)
!2392 = !DILocation(line: 1593, column: 28, scope: !2381)
!2393 = !DILocation(line: 1595, column: 19, scope: !2381)
!2394 = !DILocation(line: 1597, column: 8, scope: !2381)
!2395 = !DILocation(line: 1597, column: 12, scope: !2381)
!2396 = !DILocation(line: 1598, column: 12, scope: !2389)
!2397 = !DILocation(line: 1598, column: 18, scope: !2389)
!2398 = !DILocation(line: 1598, column: 22, scope: !2389)
!2399 = !DILocation(line: 1598, column: 26, scope: !2389)
!2400 = !DILocation(line: 1598, column: 7, scope: !2381)
!2401 = !DILocation(line: 1599, column: 9, scope: !2387)
!2402 = !DILocation(line: 1599, column: 44, scope: !2387)
!2403 = !DILocation(line: 1599, column: 9, scope: !2388)
!2404 = !DILocation(line: 1600, column: 31, scope: !2386)
!2405 = !DILocation(line: 1600, column: 37, scope: !2386)
!2406 = !DILocation(line: 1600, column: 14, scope: !2386)
!2407 = !DILocation(line: 1601, column: 7, scope: !2386)
!2408 = !DILocation(line: 1602, column: 32, scope: !2391)
!2409 = !DILocation(line: 1602, column: 24, scope: !2391)
!2410 = !DILocation(line: 1602, column: 15, scope: !2391)
!2411 = !DILocation(line: 1603, column: 9, scope: !2391)
!2412 = !DILocation(line: 1604, column: 19, scope: !2391)
!2413 = !DILocation(line: 1605, column: 26, scope: !2386)
!2414 = !DILocation(line: 1605, column: 7, scope: !2391)
!2415 = distinct !{!2415, !2407, !2416}
!2416 = !DILocation(line: 1605, column: 30, scope: !2386)
!2417 = !DILocation(line: 1603, column: 25, scope: !2391)
!2418 = !DILocation(line: 1603, column: 35, scope: !2391)
!2419 = !DILocation(line: 1606, column: 5, scope: !2386)
!2420 = !DILocation(line: 1609, column: 1, scope: !2381)
!2421 = distinct !DISubprogram(name: "lwip_netconn_do_write", scope: !3, file: !3, line: 1817, type: !521, isLocal: false, isDefinition: true, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2422)
!2422 = !{!2423, !2424, !2425}
!2423 = !DILocalVariable(name: "m", arg: 1, scope: !2421, file: !3, line: 1817, type: !119)
!2424 = !DILocalVariable(name: "msg", scope: !2421, file: !3, line: 1819, type: !120)
!2425 = !DILocalVariable(name: "err", scope: !2421, file: !3, line: 1821, type: !274)
!2426 = !DILocation(line: 1817, column: 29, scope: !2421)
!2427 = !DILocation(line: 1819, column: 19, scope: !2421)
!2428 = !DILocation(line: 1821, column: 32, scope: !2421)
!2429 = !DILocation(line: 1821, column: 15, scope: !2421)
!2430 = !DILocation(line: 1821, column: 9, scope: !2421)
!2431 = !DILocation(line: 1822, column: 11, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1822, column: 7)
!2433 = !DILocation(line: 1822, column: 7, scope: !2421)
!2434 = !DILocation(line: 1823, column: 9, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1823, column: 9)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1822, column: 22)
!2437 = !DILocation(line: 1823, column: 44, scope: !2435)
!2438 = !DILocation(line: 1823, column: 9, scope: !2436)
!2439 = !DILocation(line: 1825, column: 22, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1825, column: 11)
!2441 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1823, column: 60)
!2442 = !DILocation(line: 1825, column: 28, scope: !2440)
!2443 = !DILocation(line: 1825, column: 11, scope: !2441)
!2444 = !DILocation(line: 1828, column: 29, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1828, column: 18)
!2446 = !DILocation(line: 1828, column: 33, scope: !2445)
!2447 = !DILocation(line: 1828, column: 37, scope: !2445)
!2448 = !DILocation(line: 1828, column: 18, scope: !2440)
!2449 = !DILocation(line: 1829, column: 26, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1828, column: 46)
!2451 = !DILocation(line: 1831, column: 9, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1831, column: 9)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1831, column: 9)
!2454 = !DILocation(line: 1831, column: 9, scope: !2453)
!2455 = !DILocation(line: 1831, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1831, column: 9)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1831, column: 9)
!2458 = !DILocation(line: 1831, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1831, column: 9)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1831, column: 9)
!2461 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1831, column: 9)
!2462 = !DILocation(line: 1832, column: 9, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1832, column: 9)
!2464 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1832, column: 9)
!2465 = !DILocation(line: 1832, column: 9, scope: !2464)
!2466 = !DILocation(line: 1832, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1832, column: 9)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1832, column: 9)
!2469 = !DILocation(line: 1832, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1832, column: 9)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1832, column: 9)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1832, column: 9)
!2473 = !DILocation(line: 1833, column: 32, scope: !2450)
!2474 = !DILocation(line: 1835, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1835, column: 13)
!2476 = !DILocation(line: 1835, column: 53, scope: !2475)
!2477 = !DILocation(line: 1835, column: 13, scope: !2450)
!2478 = !DILocation(line: 1836, column: 11, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1836, column: 11)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1836, column: 11)
!2481 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1835, column: 64)
!2482 = !DILocation(line: 1836, column: 11, scope: !2480)
!2483 = !DILocation(line: 1836, column: 11, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1836, column: 11)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1836, column: 11)
!2486 = !DILocation(line: 1836, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1836, column: 11)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1836, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1836, column: 11)
!2490 = !DILocation(line: 1837, column: 11, scope: !2481)
!2491 = !DILocation(line: 1838, column: 29, scope: !2481)
!2492 = !DILocation(line: 1838, column: 11, scope: !2481)
!2493 = !DILocation(line: 1839, column: 11, scope: !2481)
!2494 = !DILocation(line: 1840, column: 11, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1840, column: 11)
!2496 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1840, column: 11)
!2497 = !DILocation(line: 1840, column: 11, scope: !2496)
!2498 = !DILocation(line: 1840, column: 11, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1840, column: 11)
!2500 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1840, column: 11)
!2501 = !DILocation(line: 1840, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1840, column: 11)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1840, column: 11)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1840, column: 11)
!2505 = !DILocation(line: 1860, column: 8, scope: !2421)
!2506 = !DILocation(line: 0, scope: !2421)
!2507 = !DILocation(line: 1860, column: 12, scope: !2421)
!2508 = !DILocation(line: 1862, column: 1, scope: !2421)
!2509 = !DILocation(line: 0, scope: !2450)
!2510 = distinct !DISubprogram(name: "lwip_netconn_do_writemore", scope: !3, file: !3, line: 1644, type: !1489, isLocal: true, isDefinition: true, scopeLine: 1645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2527, !2530}
!2512 = !DILocalVariable(name: "conn", arg: 1, scope: !2510, file: !3, line: 1644, type: !125)
!2513 = !DILocalVariable(name: "delayed", arg: 2, scope: !2510, file: !3, line: 1644, type: !161)
!2514 = !DILocalVariable(name: "err", scope: !2510, file: !3, line: 1646, type: !274)
!2515 = !DILocalVariable(name: "dataptr", scope: !2510, file: !3, line: 1647, type: !838)
!2516 = !DILocalVariable(name: "len", scope: !2510, file: !3, line: 1648, type: !193)
!2517 = !DILocalVariable(name: "available", scope: !2510, file: !3, line: 1648, type: !193)
!2518 = !DILocalVariable(name: "write_finished", scope: !2510, file: !3, line: 1649, type: !161)
!2519 = !DILocalVariable(name: "diff", scope: !2510, file: !3, line: 1650, type: !841)
!2520 = !DILocalVariable(name: "dontblock", scope: !2510, file: !3, line: 1651, type: !161)
!2521 = !DILocalVariable(name: "apiflags", scope: !2510, file: !3, line: 1652, type: !161)
!2522 = !DILocalVariable(name: "write_more", scope: !2510, file: !3, line: 1653, type: !161)
!2523 = !DILocalVariable(name: "out_err", scope: !2524, file: !3, line: 1748, type: !274)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1747, column: 24)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1747, column: 9)
!2526 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1679, column: 3)
!2527 = !DILocalVariable(name: "out_err", scope: !2528, file: !3, line: 1768, type: !274)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1761, column: 32)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1761, column: 16)
!2530 = !DILocalVariable(name: "op_completed_sem", scope: !2531, file: !3, line: 1790, type: !872)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 1787, column: 23)
!2532 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1787, column: 7)
!2533 = !DILocation(line: 1644, column: 43, scope: !2510)
!2534 = !DILocation(line: 1644, column: 49, scope: !2510)
!2535 = !DILocation(line: 1649, column: 8, scope: !2510)
!2536 = !DILocation(line: 1655, column: 3, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 1655, column: 3)
!2538 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1655, column: 3)
!2539 = !DILocation(line: 1655, column: 3, scope: !2538)
!2540 = !DILocation(line: 1655, column: 3, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1655, column: 3)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 1655, column: 3)
!2543 = !DILocation(line: 1655, column: 3, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1655, column: 3)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1655, column: 3)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1655, column: 3)
!2547 = !DILocation(line: 1656, column: 3, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1656, column: 3)
!2549 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1656, column: 3)
!2550 = !DILocation(line: 1656, column: 3, scope: !2549)
!2551 = !DILocation(line: 1656, column: 3, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1656, column: 3)
!2553 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1656, column: 3)
!2554 = !DILocation(line: 1656, column: 3, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 1656, column: 3)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1656, column: 3)
!2557 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1656, column: 3)
!2558 = !DILocation(line: 1657, column: 3, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 1657, column: 3)
!2560 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1657, column: 3)
!2561 = !DILocation(line: 1657, column: 3, scope: !2560)
!2562 = !DILocation(line: 1657, column: 3, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1657, column: 3)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1657, column: 3)
!2565 = !DILocation(line: 1657, column: 3, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1657, column: 3)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1657, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1657, column: 3)
!2569 = !DILocation(line: 1658, column: 3, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1658, column: 3)
!2571 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1658, column: 3)
!2572 = !DILocation(line: 1658, column: 3, scope: !2571)
!2573 = !DILocation(line: 1658, column: 3, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1658, column: 3)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1658, column: 3)
!2576 = !DILocation(line: 1658, column: 3, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 1658, column: 3)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1658, column: 3)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 1658, column: 3)
!2580 = !DILocation(line: 1659, column: 3, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 1659, column: 3)
!2582 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1659, column: 3)
!2583 = !DILocation(line: 1659, column: 3, scope: !2582)
!2584 = !DILocation(line: 1659, column: 3, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1659, column: 3)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1659, column: 3)
!2587 = !DILocation(line: 1659, column: 3, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1659, column: 3)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1659, column: 3)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1659, column: 3)
!2591 = !DILocation(line: 1661, column: 3, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1661, column: 3)
!2593 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1661, column: 3)
!2594 = !DILocation(line: 1661, column: 3, scope: !2593)
!2595 = !DILocation(line: 1661, column: 3, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1661, column: 3)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1661, column: 3)
!2598 = !DILocation(line: 1661, column: 3, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 1661, column: 3)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 1661, column: 3)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1661, column: 3)
!2602 = !DILocation(line: 1663, column: 39, scope: !2510)
!2603 = !DILocation(line: 1652, column: 8, scope: !2510)
!2604 = !DILocation(line: 1664, column: 15, scope: !2510)
!2605 = !DILocation(line: 1664, column: 44, scope: !2510)
!2606 = !DILocation(line: 1664, column: 57, scope: !2510)
!2607 = !DILocation(line: 1680, column: 5, scope: !2526)
!2608 = !DILocation(line: 1681, column: 37, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1680, column: 8)
!2610 = !DILocation(line: 0, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 1710, column: 76)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1709, column: 11)
!2613 = !DILocation(line: 1681, column: 56, scope: !2609)
!2614 = !DILocation(line: 1681, column: 64, scope: !2609)
!2615 = !{!2616, !964, i64 0}
!2616 = !{!"netvector", !964, i64 0, !991, i64 8}
!2617 = !DILocation(line: 1681, column: 95, scope: !2609)
!2618 = !DILocation(line: 1681, column: 68, scope: !2609)
!2619 = !DILocation(line: 1647, column: 15, scope: !2510)
!2620 = !DILocation(line: 1682, column: 47, scope: !2609)
!2621 = !{!2616, !991, i64 8}
!2622 = !DILocation(line: 1682, column: 51, scope: !2609)
!2623 = !DILocation(line: 1650, column: 10, scope: !2510)
!2624 = !DILocation(line: 1683, column: 16, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1683, column: 11)
!2626 = !DILocation(line: 1683, column: 11, scope: !2609)
!2627 = !DILocation(line: 1648, column: 9, scope: !2510)
!2628 = !DILocation(line: 1685, column: 18, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1683, column: 28)
!2630 = !DILocation(line: 1689, column: 19, scope: !2609)
!2631 = !{!1578, !993, i64 168}
!2632 = !DILocation(line: 1648, column: 14, scope: !2510)
!2633 = !DILocation(line: 1690, column: 11, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1690, column: 11)
!2635 = !DILocation(line: 1690, column: 23, scope: !2634)
!2636 = !DILocation(line: 1690, column: 21, scope: !2634)
!2637 = !DILocation(line: 1690, column: 11, scope: !2609)
!2638 = !DILocation(line: 1693, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1690, column: 28)
!2640 = !DILocation(line: 1694, column: 16, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 1694, column: 15)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 1693, column: 24)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1693, column: 13)
!2644 = !DILocation(line: 1694, column: 15, scope: !2642)
!2645 = !DILocation(line: 1696, column: 45, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1694, column: 21)
!2647 = !DILocation(line: 1696, column: 52, scope: !2646)
!2648 = !DILocation(line: 1696, column: 19, scope: !2646)
!2649 = !DILocation(line: 1646, column: 9, scope: !2510)
!2650 = !DILocation(line: 1697, column: 13, scope: !2646)
!2651 = !DILocation(line: 1734, column: 21, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1734, column: 11)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1732, column: 46)
!2654 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1732, column: 9)
!2655 = !DILocation(line: 0, scope: !2629)
!2656 = !DILocation(line: 1703, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 1703, column: 7)
!2658 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1703, column: 7)
!2659 = !DILocation(line: 1703, column: 7, scope: !2658)
!2660 = !DILocation(line: 1703, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1703, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 1703, column: 7)
!2663 = !DILocation(line: 1703, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1703, column: 7)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 1703, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1703, column: 7)
!2667 = !DILocation(line: 1709, column: 16, scope: !2612)
!2668 = !DILocation(line: 1709, column: 26, scope: !2612)
!2669 = !DILocation(line: 1710, column: 16, scope: !2612)
!2670 = !DILocation(line: 1710, column: 31, scope: !2612)
!2671 = !DILocation(line: 1710, column: 59, scope: !2612)
!2672 = !DILocation(line: 1710, column: 70, scope: !2612)
!2673 = !DILocation(line: 1709, column: 11, scope: !2609)
!2674 = !DILocation(line: 1653, column: 8, scope: !2510)
!2675 = !DILocation(line: 1713, column: 7, scope: !2611)
!2676 = !DILocation(line: 1716, column: 13, scope: !2609)
!2677 = !DILocation(line: 1717, column: 15, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1717, column: 11)
!2679 = !DILocation(line: 1717, column: 11, scope: !2609)
!2680 = !DILocation(line: 1718, column: 15, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1717, column: 26)
!2682 = !DILocation(line: 1718, column: 34, scope: !2681)
!2683 = !DILocation(line: 1718, column: 41, scope: !2681)
!2684 = !DILocation(line: 1719, column: 15, scope: !2681)
!2685 = !DILocation(line: 1719, column: 34, scope: !2681)
!2686 = !DILocation(line: 1719, column: 45, scope: !2681)
!2687 = !DILocation(line: 1721, column: 19, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 1721, column: 13)
!2689 = !DILocation(line: 1721, column: 38, scope: !2688)
!2690 = !DILocation(line: 1721, column: 77, scope: !2688)
!2691 = !DILocation(line: 1721, column: 85, scope: !2688)
!2692 = !DILocation(line: 1721, column: 49, scope: !2688)
!2693 = !DILocation(line: 1721, column: 13, scope: !2681)
!2694 = !DILocation(line: 1722, column: 36, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1721, column: 90)
!2696 = !DILocation(line: 1722, column: 46, scope: !2695)
!2697 = !DILocation(line: 1724, column: 21, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1724, column: 15)
!2699 = !DILocation(line: 1724, column: 40, scope: !2698)
!2700 = !DILocation(line: 1724, column: 51, scope: !2698)
!2701 = !DILocation(line: 1724, column: 15, scope: !2695)
!2702 = !DILocation(line: 1725, column: 38, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1724, column: 56)
!2704 = !DILocation(line: 1725, column: 44, scope: !2703)
!2705 = !DILocation(line: 1726, column: 19, scope: !2703)
!2706 = !DILocation(line: 1726, column: 38, scope: !2703)
!2707 = !DILocation(line: 1726, column: 49, scope: !2703)
!2708 = !DILocation(line: 1727, column: 11, scope: !2703)
!2709 = !DILocation(line: 1730, column: 14, scope: !2526)
!2710 = !DILocation(line: 1730, column: 5, scope: !2609)
!2711 = distinct !{!2711, !2607, !2712}
!2712 = !DILocation(line: 1730, column: 41, scope: !2526)
!2713 = !DILocation(line: 1732, column: 25, scope: !2654)
!2714 = !DILocation(line: 1732, column: 33, scope: !2654)
!2715 = !DILocation(line: 1732, column: 9, scope: !2526)
!2716 = !DILocation(line: 1747, column: 9, scope: !2526)
!2717 = !DILocation(line: 1761, column: 16, scope: !2525)
!2718 = !DILocation(line: 0, scope: !2646)
!2719 = !DILocation(line: 1734, column: 31, scope: !2652)
!2720 = !DILocation(line: 1734, column: 50, scope: !2652)
!2721 = !DILocation(line: 1734, column: 84, scope: !2652)
!2722 = !DILocation(line: 1734, column: 57, scope: !2652)
!2723 = !DILocation(line: 1734, column: 11, scope: !2653)
!2724 = !DILocation(line: 1737, column: 9, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1737, column: 9)
!2726 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1734, column: 90)
!2727 = !DILocation(line: 1737, column: 9, scope: !2726)
!2728 = !DILocation(line: 1737, column: 9, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 1737, column: 9)
!2730 = !DILocation(line: 1738, column: 21, scope: !2726)
!2731 = !DILocation(line: 1739, column: 7, scope: !2726)
!2732 = !DILocation(line: 1739, column: 19, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1739, column: 18)
!2734 = !DILocation(line: 0, scope: !2733)
!2735 = !DILocation(line: 1739, column: 62, scope: !2733)
!2736 = !DILocation(line: 1740, column: 19, scope: !2733)
!2737 = !{!1578, !1020, i64 172}
!2738 = !DILocation(line: 1740, column: 50, scope: !2733)
!2739 = !DILocation(line: 1739, column: 18, scope: !2652)
!2740 = !DILocation(line: 1743, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1743, column: 9)
!2742 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 1740, column: 73)
!2743 = !DILocation(line: 1743, column: 9, scope: !2742)
!2744 = !DILocation(line: 1743, column: 9, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1743, column: 9)
!2746 = !DILocation(line: 1716, column: 11, scope: !2609)
!2747 = !DILocation(line: 1747, column: 13, scope: !2525)
!2748 = !DILocation(line: 1749, column: 18, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 1749, column: 11)
!2750 = !DILocation(line: 1749, column: 37, scope: !2749)
!2751 = !DILocation(line: 1749, column: 72, scope: !2749)
!2752 = !DILocation(line: 1749, column: 44, scope: !2749)
!2753 = !DILocation(line: 1749, column: 77, scope: !2749)
!2754 = !DILocation(line: 1749, column: 11, scope: !2524)
!2755 = !DILocation(line: 1752, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1749, column: 91)
!2757 = !DILocation(line: 0, scope: !2510)
!2758 = !DILocation(line: 1753, column: 38, scope: !2524)
!2759 = !DILocation(line: 1753, column: 17, scope: !2524)
!2760 = !DILocation(line: 1748, column: 13, scope: !2524)
!2761 = !DILocation(line: 1754, column: 19, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 1754, column: 11)
!2763 = !DILocation(line: 1754, column: 11, scope: !2524)
!2764 = !DILocation(line: 1760, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1754, column: 31)
!2766 = !DILocation(line: 1761, column: 20, scope: !2529)
!2767 = !DILocation(line: 1768, column: 44, scope: !2528)
!2768 = !DILocation(line: 1768, column: 23, scope: !2528)
!2769 = !DILocation(line: 1768, column: 13, scope: !2528)
!2770 = !DILocation(line: 1769, column: 19, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 1769, column: 11)
!2772 = !DILocation(line: 1769, column: 11, scope: !2528)
!2773 = !DILocation(line: 0, scope: !2771)
!2774 = !DILocation(line: 1778, column: 22, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1775, column: 29)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1775, column: 18)
!2777 = !DILocation(line: 1778, column: 41, scope: !2775)
!2778 = !DILocation(line: 1778, column: 48, scope: !2775)
!2779 = !DILocation(line: 1778, column: 15, scope: !2775)
!2780 = !DILocation(line: 1780, column: 7, scope: !2775)
!2781 = !DILocation(line: 1787, column: 7, scope: !2510)
!2782 = !DILocation(line: 0, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1781, column: 12)
!2784 = !DILocation(line: 0, scope: !2609)
!2785 = !DILocation(line: 0, scope: !2524)
!2786 = !DILocation(line: 1787, column: 7, scope: !2532)
!2787 = !DILocation(line: 1790, column: 35, scope: !2531)
!2788 = !DILocation(line: 1791, column: 24, scope: !2531)
!2789 = !DILocation(line: 1791, column: 28, scope: !2531)
!2790 = !DILocation(line: 1792, column: 23, scope: !2531)
!2791 = !DILocation(line: 1793, column: 17, scope: !2531)
!2792 = !DILocation(line: 1795, column: 9, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 1795, column: 9)
!2794 = !DILocation(line: 1795, column: 9, scope: !2531)
!2795 = !DILocation(line: 1790, column: 16, scope: !2531)
!2796 = !DILocation(line: 1798, column: 7, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1797, column: 5)
!2798 = !DILocation(line: 1799, column: 5, scope: !2797)
!2799 = !DILocation(line: 0, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 1802, column: 8)
!2801 = !DILocation(line: 1807, column: 1, scope: !2510)
!2802 = distinct !DISubprogram(name: "lwip_netconn_do_getaddr", scope: !3, file: !3, line: 1871, type: !521, isLocal: false, isDefinition: true, scopeLine: 1872, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2803)
!2803 = !{!2804, !2805}
!2804 = !DILocalVariable(name: "m", arg: 1, scope: !2802, file: !3, line: 1871, type: !119)
!2805 = !DILocalVariable(name: "msg", scope: !2802, file: !3, line: 1873, type: !120)
!2806 = !DILocation(line: 1871, column: 31, scope: !2802)
!2807 = !DILocation(line: 1873, column: 19, scope: !2802)
!2808 = !DILocation(line: 1875, column: 12, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1875, column: 7)
!2810 = !DILocation(line: 1875, column: 22, scope: !2809)
!2811 = !DILocation(line: 1875, column: 25, scope: !2809)
!2812 = !DILocation(line: 1875, column: 7, scope: !2802)
!2813 = !DILocation(line: 1876, column: 14, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 1876, column: 9)
!2815 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1875, column: 34)
!2816 = !DILocation(line: 1876, column: 21, scope: !2814)
!2817 = !DILocation(line: 1876, column: 9, scope: !2814)
!2818 = !DILocation(line: 1876, column: 9, scope: !2815)
!2819 = !DILocation(line: 1877, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1877, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1877, column: 7)
!2822 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1876, column: 28)
!2823 = !DILocation(line: 1877, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1877, column: 7)
!2825 = !DILocation(line: 1877, column: 7, scope: !2821)
!2826 = !DILocation(line: 1877, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 1877, column: 7)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1877, column: 7)
!2829 = !DILocation(line: 1877, column: 7, scope: !2828)
!2830 = !DILocation(line: 1877, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1877, column: 7)
!2832 = !DILocation(line: 1877, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1877, column: 7)
!2834 = !DILocation(line: 1880, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 1880, column: 7)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1880, column: 7)
!2837 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1879, column: 12)
!2838 = !{!2128, !942, i64 44}
!2839 = !DILocation(line: 1880, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 1880, column: 7)
!2841 = !DILocation(line: 1880, column: 7, scope: !2836)
!2842 = !DILocation(line: 1880, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 1880, column: 7)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1880, column: 7)
!2845 = !DILocation(line: 1880, column: 7, scope: !2844)
!2846 = !DILocation(line: 1880, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1880, column: 7)
!2848 = !DILocation(line: 1880, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1880, column: 7)
!2850 = !DILocation(line: 0, scope: !2833)
!2851 = !DILocation(line: 1884, column: 10, scope: !2815)
!2852 = !DILocation(line: 1884, column: 14, scope: !2815)
!2853 = !DILocation(line: 1885, column: 13, scope: !2815)
!2854 = !DILocation(line: 1885, column: 5, scope: !2815)
!2855 = !DILocation(line: 1898, column: 25, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1898, column: 13)
!2857 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 1885, column: 49)
!2858 = !DILocation(line: 1898, column: 13, scope: !2856)
!2859 = !DILocation(line: 0, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1901, column: 15)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1900, column: 16)
!2862 = !DILocation(line: 1898, column: 13, scope: !2857)
!2863 = !DILocation(line: 1899, column: 66, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1898, column: 32)
!2865 = !{!1018, !1020, i64 66}
!2866 = !DILocation(line: 1899, column: 11, scope: !2864)
!2867 = !DILocation(line: 1899, column: 44, scope: !2864)
!2868 = !{!1020, !1020, i64 0}
!2869 = !DILocation(line: 1900, column: 9, scope: !2864)
!2870 = !DILocation(line: 1901, column: 36, scope: !2860)
!2871 = !DILocation(line: 1901, column: 42, scope: !2860)
!2872 = !DILocation(line: 1901, column: 65, scope: !2860)
!2873 = !DILocation(line: 1901, column: 15, scope: !2861)
!2874 = !DILocation(line: 1902, column: 22, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1901, column: 71)
!2876 = !DILocation(line: 1903, column: 11, scope: !2875)
!2877 = !DILocation(line: 1904, column: 68, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1903, column: 18)
!2879 = !{!1018, !1020, i64 68}
!2880 = !DILocation(line: 1904, column: 13, scope: !2878)
!2881 = !DILocation(line: 1904, column: 46, scope: !2878)
!2882 = !DILocation(line: 1911, column: 26, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1911, column: 13)
!2884 = !DILocation(line: 1911, column: 32, scope: !2883)
!2885 = !DILocation(line: 1911, column: 38, scope: !2883)
!2886 = !DILocation(line: 0, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1915, column: 16)
!2888 = !DILocation(line: 1912, column: 35, scope: !2883)
!2889 = !DILocation(line: 1912, column: 41, scope: !2883)
!2890 = !DILocation(line: 1912, column: 52, scope: !2883)
!2891 = !DILocation(line: 1912, column: 82, scope: !2883)
!2892 = !DILocation(line: 1911, column: 13, scope: !2857)
!2893 = !DILocation(line: 1914, column: 20, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1912, column: 95)
!2895 = !DILocation(line: 1915, column: 9, scope: !2894)
!2896 = !DILocation(line: 1916, column: 47, scope: !2887)
!2897 = !DILocation(line: 1916, column: 87, scope: !2887)
!2898 = !DILocation(line: 1916, column: 120, scope: !2887)
!2899 = !DILocation(line: 1916, column: 11, scope: !2887)
!2900 = !DILocation(line: 1916, column: 44, scope: !2887)
!2901 = !DILocation(line: 1921, column: 9, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 1921, column: 9)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 1921, column: 9)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 1921, column: 9)
!2905 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1921, column: 9)
!2906 = !DILocation(line: 1921, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1921, column: 9)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1921, column: 9)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1921, column: 9)
!2910 = !DILocation(line: 1925, column: 10, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1924, column: 10)
!2912 = !DILocation(line: 1925, column: 14, scope: !2911)
!2913 = !DILocation(line: 1928, column: 1, scope: !2802)
!2914 = distinct !DISubprogram(name: "lwip_netconn_do_close", scope: !3, file: !3, line: 1938, type: !521, isLocal: false, isDefinition: true, scopeLine: 1939, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2915)
!2915 = !{!2916, !2917, !2918}
!2916 = !DILocalVariable(name: "m", arg: 1, scope: !2914, file: !3, line: 1938, type: !119)
!2917 = !DILocalVariable(name: "msg", scope: !2914, file: !3, line: 1940, type: !120)
!2918 = !DILocalVariable(name: "state", scope: !2914, file: !3, line: 1943, type: !48)
!2919 = !DILocation(line: 1938, column: 29, scope: !2914)
!2920 = !DILocation(line: 1940, column: 19, scope: !2914)
!2921 = !DILocation(line: 1943, column: 35, scope: !2914)
!2922 = !DILocation(line: 1943, column: 41, scope: !2914)
!2923 = !DILocation(line: 1943, column: 22, scope: !2914)
!2924 = !DILocation(line: 1946, column: 19, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1946, column: 7)
!2926 = !DILocation(line: 1946, column: 23, scope: !2925)
!2927 = !DILocation(line: 1946, column: 27, scope: !2925)
!2928 = !DILocation(line: 1946, column: 36, scope: !2925)
!2929 = !DILocation(line: 1947, column: 8, scope: !2925)
!2930 = !DILocation(line: 1947, column: 43, scope: !2925)
!2931 = !DILocation(line: 1947, column: 59, scope: !2925)
!2932 = !DILocation(line: 1948, column: 14, scope: !2925)
!2933 = !DILocation(line: 1948, column: 21, scope: !2925)
!2934 = !DILocation(line: 1948, column: 26, scope: !2925)
!2935 = !DILocation(line: 1948, column: 58, scope: !2925)
!2936 = !DILocation(line: 1948, column: 48, scope: !2925)
!2937 = !DILocation(line: 1950, column: 15, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1950, column: 9)
!2939 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1948, column: 79)
!2940 = !DILocation(line: 1950, column: 9, scope: !2939)
!2941 = !DILocation(line: 1953, column: 22, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1953, column: 16)
!2943 = !DILocation(line: 1953, column: 16, scope: !2938)
!2944 = !DILocation(line: 1977, column: 28, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1977, column: 11)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1975, column: 12)
!2947 = !DILocation(line: 1977, column: 11, scope: !2946)
!2948 = !DILocation(line: 1982, column: 9, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 1977, column: 47)
!2950 = !DILocation(line: 1984, column: 7, scope: !2949)
!2951 = !DILocation(line: 1985, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1985, column: 7)
!2953 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1985, column: 7)
!2954 = !DILocation(line: 1985, column: 7, scope: !2953)
!2955 = !DILocation(line: 1985, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1985, column: 7)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1985, column: 7)
!2958 = !DILocation(line: 1985, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1985, column: 7)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 1985, column: 7)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1985, column: 7)
!2962 = !DILocation(line: 1986, column: 18, scope: !2946)
!2963 = !DILocation(line: 1986, column: 24, scope: !2946)
!2964 = !DILocation(line: 1987, column: 30, scope: !2946)
!2965 = !DILocation(line: 1989, column: 11, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1989, column: 11)
!2967 = !DILocation(line: 1989, column: 56, scope: !2966)
!2968 = !DILocation(line: 1989, column: 11, scope: !2946)
!2969 = !DILocation(line: 1990, column: 9, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1990, column: 9)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1990, column: 9)
!2972 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1989, column: 67)
!2973 = !DILocation(line: 1990, column: 9, scope: !2971)
!2974 = !DILocation(line: 1990, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1990, column: 9)
!2976 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 1990, column: 9)
!2977 = !DILocation(line: 1990, column: 9, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1990, column: 9)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1990, column: 9)
!2980 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 1990, column: 9)
!2981 = !DILocation(line: 1991, column: 9, scope: !2972)
!2982 = !DILocation(line: 1992, column: 27, scope: !2972)
!2983 = !DILocation(line: 1992, column: 9, scope: !2972)
!2984 = !DILocation(line: 1993, column: 9, scope: !2972)
!2985 = !DILocation(line: 1994, column: 9, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1994, column: 9)
!2987 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1994, column: 9)
!2988 = !DILocation(line: 1994, column: 9, scope: !2987)
!2989 = !DILocation(line: 1994, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1994, column: 9)
!2991 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1994, column: 9)
!2992 = !DILocation(line: 1994, column: 9, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1994, column: 9)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1994, column: 9)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1994, column: 9)
!2996 = !DILocation(line: 0, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 2004, column: 3)
!2998 = !DILocation(line: 2008, column: 1, scope: !2914)
!2999 = !DILocation(line: 0, scope: !2946)
!3000 = distinct !DISubprogram(name: "lwip_netconn_do_join_leave_group", scope: !3, file: !3, line: 2018, type: !521, isLocal: false, isDefinition: true, scopeLine: 2019, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3001)
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "m", arg: 1, scope: !3000, file: !3, line: 2018, type: !119)
!3003 = !DILocalVariable(name: "msg", scope: !3000, file: !3, line: 2020, type: !120)
!3004 = !DILocation(line: 2018, column: 40, scope: !3000)
!3005 = !DILocation(line: 2020, column: 19, scope: !3000)
!3006 = !DILocation(line: 2022, column: 8, scope: !3000)
!3007 = !DILocation(line: 2022, column: 12, scope: !3000)
!3008 = !DILocation(line: 2023, column: 12, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 2023, column: 7)
!3010 = !DILocation(line: 2023, column: 18, scope: !3009)
!3011 = !DILocation(line: 2023, column: 22, scope: !3009)
!3012 = !DILocation(line: 2023, column: 26, scope: !3009)
!3013 = !DILocation(line: 2023, column: 7, scope: !3000)
!3014 = !DILocation(line: 2024, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 2024, column: 9)
!3016 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 2023, column: 35)
!3017 = !DILocation(line: 2024, column: 44, scope: !3015)
!3018 = !DILocation(line: 2024, column: 9, scope: !3016)
!3019 = !DILocation(line: 2027, column: 11, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 2027, column: 11)
!3021 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 2024, column: 60)
!3022 = !DILocation(line: 2027, column: 11, scope: !3021)
!3023 = !DILocation(line: 2028, column: 18, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 2028, column: 13)
!3025 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 2027, column: 48)
!3026 = !DILocation(line: 2028, column: 25, scope: !3024)
!3027 = !DILocation(line: 2028, column: 39, scope: !3024)
!3028 = !DILocation(line: 0, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 2031, column: 16)
!3030 = !DILocation(line: 2028, column: 13, scope: !3025)
!3031 = !DILocation(line: 2029, column: 22, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 2028, column: 56)
!3033 = !DILocation(line: 2029, column: 20, scope: !3032)
!3034 = !DILocation(line: 2031, column: 9, scope: !3032)
!3035 = !DILocation(line: 2032, column: 22, scope: !3029)
!3036 = !DILocation(line: 2032, column: 20, scope: !3029)
!3037 = !DILocation(line: 2051, column: 16, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 2050, column: 12)
!3039 = !DILocation(line: 2056, column: 1, scope: !3000)
!3040 = distinct !DISubprogram(name: "lwip_netconn_do_join_leave_group_netif", scope: !3, file: !3, line: 2064, type: !521, isLocal: false, isDefinition: true, scopeLine: 2065, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "m", arg: 1, scope: !3040, file: !3, line: 2064, type: !119)
!3043 = !DILocalVariable(name: "msg", scope: !3040, file: !3, line: 2066, type: !120)
!3044 = !DILocalVariable(name: "netif", scope: !3040, file: !3, line: 2067, type: !1771)
!3045 = !DILocation(line: 2064, column: 46, scope: !3040)
!3046 = !DILocation(line: 2069, column: 35, scope: !3040)
!3047 = !DILocation(line: 2069, column: 42, scope: !3040)
!3048 = !DILocation(line: 2069, column: 11, scope: !3040)
!3049 = !DILocation(line: 2067, column: 17, scope: !3040)
!3050 = !DILocation(line: 2070, column: 13, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 2070, column: 7)
!3052 = !DILocation(line: 0, scope: !3040)
!3053 = !DILocation(line: 2070, column: 7, scope: !3040)
!3054 = !DILocation(line: 2071, column: 14, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 2070, column: 22)
!3056 = !DILocation(line: 2072, column: 5, scope: !3055)
!3057 = !DILocation(line: 2066, column: 19, scope: !3040)
!3058 = !DILocation(line: 2075, column: 12, scope: !3040)
!3059 = !DILocation(line: 2076, column: 12, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 2076, column: 7)
!3061 = !DILocation(line: 2076, column: 18, scope: !3060)
!3062 = !DILocation(line: 2076, column: 22, scope: !3060)
!3063 = !DILocation(line: 2076, column: 26, scope: !3060)
!3064 = !DILocation(line: 2076, column: 7, scope: !3040)
!3065 = !DILocation(line: 2077, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 2077, column: 9)
!3067 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 2076, column: 35)
!3068 = !DILocation(line: 2077, column: 44, scope: !3066)
!3069 = !DILocation(line: 2077, column: 9, scope: !3067)
!3070 = !DILocation(line: 2080, column: 11, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 2080, column: 11)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 2077, column: 60)
!3073 = !DILocation(line: 2080, column: 11, scope: !3072)
!3074 = !DILocation(line: 2081, column: 25, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2081, column: 13)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 2080, column: 48)
!3077 = !DILocation(line: 2081, column: 39, scope: !3075)
!3078 = !DILocation(line: 0, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 2084, column: 16)
!3080 = !DILocation(line: 2081, column: 13, scope: !3076)
!3081 = !DILocation(line: 2082, column: 22, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 2081, column: 56)
!3083 = !DILocation(line: 2082, column: 20, scope: !3082)
!3084 = !DILocation(line: 2084, column: 9, scope: !3082)
!3085 = !DILocation(line: 2085, column: 22, scope: !3079)
!3086 = !DILocation(line: 2085, column: 20, scope: !3079)
!3087 = !DILocation(line: 2104, column: 16, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 2103, column: 12)
!3089 = !DILocation(line: 2111, column: 1, scope: !3040)
!3090 = distinct !DISubprogram(name: "lwip_netconn_do_gethostbyname", scope: !3, file: !3, line: 2147, type: !521, isLocal: false, isDefinition: true, scopeLine: 2148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "arg", arg: 1, scope: !3090, file: !3, line: 2147, type: !119)
!3093 = !DILocalVariable(name: "msg", scope: !3090, file: !3, line: 2149, type: !865)
!3094 = !DILocalVariable(name: "addrtype", scope: !3090, file: !3, line: 2150, type: !161)
!3095 = !DILocation(line: 2147, column: 37, scope: !3090)
!3096 = !DILocation(line: 2152, column: 10, scope: !3090)
!3097 = !{!3098, !942, i64 16}
!3098 = !{!"dns_api_msg", !964, i64 0, !964, i64 8, !942, i64 16, !964, i64 24, !964, i64 32}
!3099 = !DILocation(line: 2150, column: 8, scope: !3090)
!3100 = !DILocation(line: 2157, column: 62, scope: !3090)
!3101 = !{!3098, !964, i64 0}
!3102 = !DILocation(line: 2158, column: 30, scope: !3090)
!3103 = !{!3098, !964, i64 8}
!3104 = !DILocation(line: 2157, column: 30, scope: !3090)
!3105 = !DILocation(line: 2157, column: 3, scope: !3090)
!3106 = !{!3098, !964, i64 32}
!3107 = !DILocation(line: 2157, column: 28, scope: !3090)
!3108 = !DILocation(line: 2161, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 2161, column: 7)
!3110 = !DILocation(line: 2161, column: 32, scope: !3109)
!3111 = !DILocation(line: 2161, column: 7, scope: !3090)
!3112 = !DILocation(line: 2149, column: 23, scope: !3090)
!3113 = !DILocation(line: 2162, column: 5, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 2161, column: 51)
!3115 = !DILocation(line: 2163, column: 5, scope: !3114)
!3116 = !{!3098, !964, i64 24}
!3117 = !DILocation(line: 2164, column: 5, scope: !3114)
!3118 = !DILocation(line: 2165, column: 5, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 2165, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 2165, column: 5)
!3121 = !DILocation(line: 2165, column: 5, scope: !3120)
!3122 = !DILocation(line: 2165, column: 5, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 2165, column: 5)
!3124 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 2165, column: 5)
!3125 = !DILocation(line: 2165, column: 5, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 2165, column: 5)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 2165, column: 5)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 2165, column: 5)
!3129 = !DILocation(line: 2174, column: 1, scope: !3090)
!3130 = distinct !DISubprogram(name: "lwip_netconn_do_dns_found", scope: !3, file: !3, line: 2121, type: !3131, isLocal: true, isDefinition: true, scopeLine: 2122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !364, !331, !119}
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DILocalVariable(name: "name", arg: 1, scope: !3130, file: !3, line: 2121, type: !364)
!3135 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !3130, file: !3, line: 2121, type: !331)
!3136 = !DILocalVariable(name: "arg", arg: 3, scope: !3130, file: !3, line: 2121, type: !119)
!3137 = !DILocalVariable(name: "msg", scope: !3130, file: !3, line: 2123, type: !865)
!3138 = !DILocation(line: 2121, column: 39, scope: !3130)
!3139 = !DILocation(line: 2121, column: 62, scope: !3130)
!3140 = !DILocation(line: 2121, column: 76, scope: !3130)
!3141 = !DILocation(line: 2123, column: 23, scope: !3130)
!3142 = !DILocation(line: 2128, column: 14, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 2128, column: 7)
!3144 = !DILocation(line: 0, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 2131, column: 10)
!3146 = !DILocation(line: 2128, column: 7, scope: !3130)
!3147 = !DILocation(line: 2130, column: 30, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 2128, column: 23)
!3149 = !DILocation(line: 2131, column: 3, scope: !3148)
!3150 = !DILocation(line: 2133, column: 30, scope: !3145)
!3151 = !DILocation(line: 2134, column: 5, scope: !3145)
!3152 = !DILocation(line: 2134, column: 33, scope: !3145)
!3153 = !{i64 0, i64 16, !941, i64 16, i64 1, !941, i64 0, i64 4, !1100, i64 20, i64 1, !941}
!3154 = !DILocation(line: 2137, column: 18, scope: !3130)
!3155 = !DILocation(line: 2137, column: 3, scope: !3130)
!3156 = !DILocation(line: 2138, column: 1, scope: !3130)
!3157 = distinct !DISubprogram(name: "recv_udp", scope: !3, file: !3, line: 218, type: !329, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3159 = !DILocalVariable(name: "arg", arg: 1, scope: !3157, file: !3, line: 218, type: !119)
!3160 = !DILocalVariable(name: "pcb", arg: 2, scope: !3157, file: !3, line: 218, type: !309)
!3161 = !DILocalVariable(name: "p", arg: 3, scope: !3157, file: !3, line: 218, type: !242)
!3162 = !DILocalVariable(name: "addr", arg: 4, scope: !3157, file: !3, line: 219, type: !331)
!3163 = !DILocalVariable(name: "port", arg: 5, scope: !3157, file: !3, line: 219, type: !193)
!3164 = !DILocalVariable(name: "buf", scope: !3157, file: !3, line: 221, type: !803)
!3165 = !DILocalVariable(name: "conn", scope: !3157, file: !3, line: 222, type: !125)
!3166 = !DILocalVariable(name: "len", scope: !3157, file: !3, line: 223, type: !193)
!3167 = !DILocation(line: 218, column: 16, scope: !3157)
!3168 = !DILocation(line: 218, column: 37, scope: !3157)
!3169 = !DILocation(line: 218, column: 55, scope: !3157)
!3170 = !DILocation(line: 219, column: 27, scope: !3157)
!3171 = !DILocation(line: 219, column: 39, scope: !3157)
!3172 = !DILocation(line: 229, column: 3, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 229, column: 3)
!3174 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 229, column: 3)
!3175 = !DILocation(line: 229, column: 3, scope: !3174)
!3176 = !DILocation(line: 229, column: 3, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 229, column: 3)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 229, column: 3)
!3179 = !DILocation(line: 229, column: 3, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 229, column: 3)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 229, column: 3)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 229, column: 3)
!3183 = !DILocation(line: 230, column: 3, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 230, column: 3)
!3185 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 230, column: 3)
!3186 = !DILocation(line: 230, column: 3, scope: !3185)
!3187 = !DILocation(line: 230, column: 3, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 230, column: 3)
!3189 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 230, column: 3)
!3190 = !DILocation(line: 230, column: 3, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 230, column: 3)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 230, column: 3)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 230, column: 3)
!3194 = !DILocation(line: 231, column: 10, scope: !3157)
!3195 = !DILocation(line: 222, column: 19, scope: !3157)
!3196 = !DILocation(line: 233, column: 7, scope: !3157)
!3197 = !DILocation(line: 238, column: 3, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 238, column: 3)
!3199 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 238, column: 3)
!3200 = !DILocation(line: 238, column: 3, scope: !3199)
!3201 = !DILocation(line: 238, column: 3, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 238, column: 3)
!3203 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 238, column: 3)
!3204 = !DILocation(line: 238, column: 3, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 238, column: 3)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 238, column: 3)
!3207 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 238, column: 3)
!3208 = !DILocation(line: 245, column: 8, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 245, column: 7)
!3210 = !DILocation(line: 245, column: 7, scope: !3157)
!3211 = !DILocation(line: 247, column: 5, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 245, column: 51)
!3213 = !DILocation(line: 248, column: 5, scope: !3212)
!3214 = !DILocation(line: 251, column: 26, scope: !3157)
!3215 = !DILocation(line: 251, column: 9, scope: !3157)
!3216 = !DILocation(line: 221, column: 18, scope: !3157)
!3217 = !DILocation(line: 252, column: 11, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 252, column: 7)
!3219 = !DILocation(line: 252, column: 7, scope: !3157)
!3220 = !DILocation(line: 253, column: 5, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 252, column: 20)
!3222 = !DILocation(line: 254, column: 5, scope: !3221)
!3223 = !DILocation(line: 256, column: 10, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 255, column: 10)
!3225 = !DILocation(line: 256, column: 12, scope: !3224)
!3226 = !DILocation(line: 257, column: 10, scope: !3224)
!3227 = !DILocation(line: 257, column: 14, scope: !3224)
!3228 = !{!2362, !964, i64 8}
!3229 = !DILocation(line: 258, column: 5, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 258, column: 5)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 258, column: 5)
!3232 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 258, column: 5)
!3233 = !DILocation(line: 258, column: 5, scope: !3231)
!3234 = !DILocation(line: 258, column: 5, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 258, column: 5)
!3236 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 258, column: 5)
!3237 = !DILocation(line: 258, column: 5, scope: !3236)
!3238 = !DILocation(line: 258, column: 5, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 258, column: 5)
!3240 = !DILocation(line: 258, column: 5, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 258, column: 5)
!3242 = !DILocation(line: 258, column: 5, scope: !3232)
!3243 = !DILocation(line: 258, column: 5, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 258, column: 5)
!3245 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 258, column: 5)
!3246 = !DILocation(line: 258, column: 5, scope: !3245)
!3247 = !DILocation(line: 258, column: 5, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 258, column: 5)
!3249 = !DILocation(line: 259, column: 10, scope: !3224)
!3250 = !DILocation(line: 259, column: 15, scope: !3224)
!3251 = !DILocation(line: 271, column: 12, scope: !3157)
!3252 = !{!3253, !1020, i64 16}
!3253 = !{!"pbuf", !964, i64 0, !964, i64 8, !1020, i64 16, !1020, i64 18, !942, i64 20, !942, i64 21, !942, i64 22, !942, i64 23}
!3254 = !DILocation(line: 223, column: 9, scope: !3157)
!3255 = !DILocation(line: 272, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 272, column: 7)
!3257 = !DILocation(line: 272, column: 46, scope: !3256)
!3258 = !DILocation(line: 272, column: 7, scope: !3157)
!3259 = !DILocation(line: 273, column: 5, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 272, column: 57)
!3261 = !DILocation(line: 274, column: 5, scope: !3260)
!3262 = !DILocation(line: 280, column: 5, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 280, column: 5)
!3264 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 275, column: 10)
!3265 = !DILocation(line: 280, column: 5, scope: !3264)
!3266 = !DILocation(line: 280, column: 5, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 280, column: 5)
!3268 = !DILocation(line: 0, scope: !3212)
!3269 = !DILocation(line: 282, column: 1, scope: !3157)
!3270 = distinct !DISubprogram(name: "sent_tcp", scope: !3, file: !3, line: 398, type: !282, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3271)
!3271 = !{!3272, !3273, !3274, !3275}
!3272 = !DILocalVariable(name: "arg", arg: 1, scope: !3270, file: !3, line: 398, type: !119)
!3273 = !DILocalVariable(name: "pcb", arg: 2, scope: !3270, file: !3, line: 398, type: !178)
!3274 = !DILocalVariable(name: "len", arg: 3, scope: !3270, file: !3, line: 398, type: !193)
!3275 = !DILocalVariable(name: "conn", scope: !3270, file: !3, line: 400, type: !125)
!3276 = !DILocation(line: 398, column: 16, scope: !3270)
!3277 = !DILocation(line: 398, column: 37, scope: !3270)
!3278 = !DILocation(line: 398, column: 48, scope: !3270)
!3279 = !DILocation(line: 400, column: 26, scope: !3270)
!3280 = !DILocation(line: 400, column: 19, scope: !3270)
!3281 = !DILocation(line: 403, column: 3, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 403, column: 3)
!3283 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 403, column: 3)
!3284 = !DILocation(line: 403, column: 3, scope: !3283)
!3285 = !DILocation(line: 403, column: 3, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 403, column: 3)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 403, column: 3)
!3288 = !DILocation(line: 403, column: 3, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 403, column: 3)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 403, column: 3)
!3291 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 403, column: 3)
!3292 = !DILocation(line: 405, column: 7, scope: !3270)
!3293 = !DILocation(line: 406, column: 15, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 406, column: 9)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 405, column: 13)
!3296 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 405, column: 7)
!3297 = !DILocation(line: 406, column: 21, scope: !3294)
!3298 = !DILocation(line: 406, column: 9, scope: !3295)
!3299 = !DILocation(line: 407, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 406, column: 39)
!3301 = !DILocation(line: 408, column: 5, scope: !3300)
!3302 = !DILocation(line: 408, column: 28, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 408, column: 16)
!3304 = !DILocation(line: 408, column: 16, scope: !3294)
!3305 = !DILocation(line: 409, column: 7, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 408, column: 46)
!3307 = !DILocation(line: 410, column: 5, scope: !3306)
!3308 = !DILocation(line: 0, scope: !3300)
!3309 = !DILocation(line: 414, column: 16, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 414, column: 9)
!3311 = !DILocation(line: 414, column: 20, scope: !3310)
!3312 = !DILocation(line: 414, column: 24, scope: !3310)
!3313 = !DILocation(line: 414, column: 33, scope: !3310)
!3314 = !DILocation(line: 414, column: 37, scope: !3310)
!3315 = !DILocation(line: 0, scope: !3310)
!3316 = !DILocation(line: 414, column: 79, scope: !3310)
!3317 = !DILocation(line: 415, column: 10, scope: !3310)
!3318 = !DILocation(line: 415, column: 41, scope: !3310)
!3319 = !DILocation(line: 414, column: 9, scope: !3295)
!3320 = !DILocation(line: 416, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 416, column: 7)
!3322 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 415, column: 63)
!3323 = !DILocation(line: 417, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 417, column: 7)
!3325 = !DILocation(line: 417, column: 7, scope: !3322)
!3326 = !DILocation(line: 417, column: 7, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 417, column: 7)
!3328 = !DILocation(line: 421, column: 3, scope: !3270)
!3329 = distinct !DISubprogram(name: "poll_tcp", scope: !3, file: !3, line: 357, type: !294, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "arg", arg: 1, scope: !3329, file: !3, line: 357, type: !119)
!3332 = !DILocalVariable(name: "pcb", arg: 2, scope: !3329, file: !3, line: 357, type: !178)
!3333 = !DILocalVariable(name: "conn", scope: !3329, file: !3, line: 359, type: !125)
!3334 = !DILocation(line: 357, column: 16, scope: !3329)
!3335 = !DILocation(line: 357, column: 37, scope: !3329)
!3336 = !DILocation(line: 359, column: 26, scope: !3329)
!3337 = !DILocation(line: 359, column: 19, scope: !3329)
!3338 = !DILocation(line: 362, column: 3, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 362, column: 3)
!3340 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 362, column: 3)
!3341 = !DILocation(line: 362, column: 3, scope: !3340)
!3342 = !DILocation(line: 362, column: 3, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 362, column: 3)
!3344 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 362, column: 3)
!3345 = !DILocation(line: 362, column: 3, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 362, column: 3)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 362, column: 3)
!3348 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 362, column: 3)
!3349 = !DILocation(line: 364, column: 13, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 364, column: 7)
!3351 = !DILocation(line: 364, column: 19, scope: !3350)
!3352 = !DILocation(line: 364, column: 7, scope: !3329)
!3353 = !DILocation(line: 365, column: 5, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 364, column: 37)
!3355 = !DILocation(line: 366, column: 3, scope: !3354)
!3356 = !DILocation(line: 366, column: 26, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 366, column: 14)
!3358 = !DILocation(line: 366, column: 14, scope: !3350)
!3359 = !DILocation(line: 368, column: 15, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 368, column: 9)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 366, column: 44)
!3362 = !DILocation(line: 368, column: 9, scope: !3360)
!3363 = !DILocation(line: 368, column: 27, scope: !3360)
!3364 = !DILocation(line: 368, column: 49, scope: !3360)
!3365 = !DILocation(line: 368, column: 53, scope: !3360)
!3366 = !DILocation(line: 368, column: 56, scope: !3360)
!3367 = !DILocation(line: 368, column: 30, scope: !3360)
!3368 = !DILocation(line: 368, column: 9, scope: !3361)
!3369 = !DILocation(line: 369, column: 43, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 368, column: 68)
!3371 = !DILocation(line: 370, column: 5, scope: !3370)
!3372 = !DILocation(line: 372, column: 5, scope: !3361)
!3373 = !DILocation(line: 373, column: 3, scope: !3361)
!3374 = !DILocation(line: 0, scope: !3354)
!3375 = !DILocation(line: 377, column: 13, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 377, column: 7)
!3377 = !DILocation(line: 377, column: 19, scope: !3376)
!3378 = !DILocation(line: 377, column: 7, scope: !3329)
!3379 = !DILocation(line: 380, column: 16, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 380, column: 9)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 377, column: 52)
!3382 = !DILocation(line: 380, column: 20, scope: !3380)
!3383 = !DILocation(line: 380, column: 24, scope: !3380)
!3384 = !DILocation(line: 380, column: 33, scope: !3380)
!3385 = !DILocation(line: 380, column: 37, scope: !3380)
!3386 = !DILocation(line: 0, scope: !3380)
!3387 = !DILocation(line: 380, column: 79, scope: !3380)
!3388 = !DILocation(line: 381, column: 10, scope: !3380)
!3389 = !DILocation(line: 381, column: 41, scope: !3380)
!3390 = !DILocation(line: 380, column: 9, scope: !3381)
!3391 = !DILocation(line: 382, column: 7, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 382, column: 7)
!3393 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 381, column: 63)
!3394 = !DILocation(line: 383, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 383, column: 7)
!3396 = !DILocation(line: 383, column: 7, scope: !3393)
!3397 = !DILocation(line: 383, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 383, column: 7)
!3399 = !DILocation(line: 387, column: 3, scope: !3329)
!3400 = distinct !DISubprogram(name: "err_tcp", scope: !3, file: !3, line: 432, type: !299, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3401)
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407, !3408, !3411}
!3402 = !DILocalVariable(name: "arg", arg: 1, scope: !3400, file: !3, line: 432, type: !119)
!3403 = !DILocalVariable(name: "err", arg: 2, scope: !3400, file: !3, line: 432, type: !274)
!3404 = !DILocalVariable(name: "conn", scope: !3400, file: !3, line: 434, type: !125)
!3405 = !DILocalVariable(name: "old_state", scope: !3400, file: !3, line: 435, type: !48)
!3406 = !DILocalVariable(name: "mbox_msg", scope: !3400, file: !3, line: 436, type: !119)
!3407 = !DILocalVariable(name: "lev", scope: !3400, file: !3, line: 437, type: !412)
!3408 = !DILocalVariable(name: "was_nonblocking_connect", scope: !3409, file: !3, line: 480, type: !15)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 477, column: 39)
!3410 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 476, column: 7)
!3411 = !DILocalVariable(name: "op_completed_sem", scope: !3412, file: !3, line: 484, type: !872)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 483, column: 35)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 483, column: 9)
!3414 = !DILocation(line: 432, column: 15, scope: !3400)
!3415 = !DILocation(line: 432, column: 26, scope: !3400)
!3416 = !DILocation(line: 439, column: 10, scope: !3400)
!3417 = !DILocation(line: 434, column: 19, scope: !3400)
!3418 = !DILocation(line: 440, column: 3, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 440, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 440, column: 3)
!3421 = !DILocation(line: 440, column: 3, scope: !3420)
!3422 = !DILocation(line: 440, column: 3, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 440, column: 3)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 440, column: 3)
!3425 = !DILocation(line: 440, column: 3, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 440, column: 3)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 440, column: 3)
!3428 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 440, column: 3)
!3429 = !DILocation(line: 442, column: 3, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 442, column: 3)
!3431 = !DILocation(line: 437, column: 3, scope: !3400)
!3432 = !DILocation(line: 445, column: 9, scope: !3400)
!3433 = !DILocation(line: 445, column: 13, scope: !3400)
!3434 = !DILocation(line: 445, column: 17, scope: !3400)
!3435 = !DILocation(line: 447, column: 9, scope: !3400)
!3436 = !DILocation(line: 447, column: 21, scope: !3400)
!3437 = !DILocation(line: 449, column: 9, scope: !3400)
!3438 = !DILocation(line: 449, column: 15, scope: !3400)
!3439 = !DILocation(line: 452, column: 21, scope: !3400)
!3440 = !DILocation(line: 435, column: 22, scope: !3400)
!3441 = !DILocation(line: 453, column: 15, scope: !3400)
!3442 = !DILocation(line: 455, column: 3, scope: !3400)
!3443 = !DILocation(line: 458, column: 3, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 458, column: 3)
!3445 = !DILocation(line: 458, column: 3, scope: !3400)
!3446 = !DILocation(line: 461, column: 3, scope: !3400)
!3447 = !DILocation(line: 458, column: 3, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 458, column: 3)
!3449 = !DILocation(line: 461, column: 3, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 461, column: 3)
!3451 = !DILocation(line: 461, column: 3, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 461, column: 3)
!3453 = !DILocation(line: 462, column: 3, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 462, column: 3)
!3455 = !DILocation(line: 462, column: 3, scope: !3400)
!3456 = !DILocation(line: 462, column: 3, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 462, column: 3)
!3458 = !DILocation(line: 117, column: 11, scope: !2243, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 464, column: 14, scope: !3400)
!3460 = !DILocation(line: 115, column: 31, scope: !2243, inlinedAt: !3459)
!3461 = !DILocation(line: 117, column: 3, scope: !2243, inlinedAt: !3459)
!3462 = !DILocation(line: 125, column: 7, scope: !3463, inlinedAt: !3459)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 125, column: 7)
!3464 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 125, column: 7)
!3465 = !DILocation(line: 125, column: 7, scope: !3464, inlinedAt: !3459)
!3466 = !DILocation(line: 125, column: 7, scope: !3467, inlinedAt: !3459)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 125, column: 7)
!3468 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 125, column: 7)
!3469 = !DILocation(line: 125, column: 7, scope: !3470, inlinedAt: !3459)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 125, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 125, column: 7)
!3472 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 125, column: 7)
!3473 = !DILocation(line: 0, scope: !2253, inlinedAt: !3459)
!3474 = !DILocation(line: 0, scope: !3400)
!3475 = !DILocation(line: 128, column: 1, scope: !2243, inlinedAt: !3459)
!3476 = !DILocation(line: 436, column: 9, scope: !3400)
!3477 = !DILocation(line: 466, column: 7, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 466, column: 7)
!3479 = !DILocation(line: 466, column: 7, scope: !3400)
!3480 = !DILocation(line: 468, column: 5, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 466, column: 50)
!3482 = !DILocation(line: 469, column: 3, scope: !3481)
!3483 = !DILocation(line: 471, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 471, column: 7)
!3485 = !DILocation(line: 471, column: 7, scope: !3400)
!3486 = !DILocation(line: 473, column: 5, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 471, column: 52)
!3488 = !DILocation(line: 474, column: 3, scope: !3487)
!3489 = !DILocation(line: 476, column: 50, scope: !3410)
!3490 = !DILocation(line: 476, column: 36, scope: !3410)
!3491 = !DILocation(line: 480, column: 35, scope: !3409)
!3492 = !DILocation(line: 481, column: 5, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 481, column: 5)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 481, column: 5)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 481, column: 5)
!3496 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 481, column: 5)
!3497 = !DILocation(line: 483, column: 9, scope: !3409)
!3498 = !DILocation(line: 486, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 486, column: 7)
!3500 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 486, column: 7)
!3501 = !DILocation(line: 486, column: 7, scope: !3500)
!3502 = !DILocation(line: 486, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 486, column: 7)
!3504 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 486, column: 7)
!3505 = !DILocation(line: 486, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 486, column: 7)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 486, column: 7)
!3508 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 486, column: 7)
!3509 = !DILocation(line: 487, column: 11, scope: !3412)
!3510 = !DILocation(line: 0, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 490, column: 14)
!3512 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 487, column: 11)
!3513 = !DILocation(line: 0, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 487, column: 39)
!3515 = !DILocation(line: 494, column: 26, scope: !3412)
!3516 = !DILocation(line: 484, column: 18, scope: !3412)
!3517 = !DILocation(line: 495, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 495, column: 7)
!3519 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 495, column: 7)
!3520 = !DILocation(line: 495, column: 7, scope: !3519)
!3521 = !DILocation(line: 495, column: 7, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 495, column: 7)
!3523 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 495, column: 7)
!3524 = !DILocation(line: 495, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 495, column: 7)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 495, column: 7)
!3527 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 495, column: 7)
!3528 = !DILocation(line: 496, column: 25, scope: !3412)
!3529 = !DILocation(line: 498, column: 7, scope: !3412)
!3530 = !DILocation(line: 499, column: 5, scope: !3412)
!3531 = !DILocation(line: 502, column: 3, scope: !3409)
!3532 = !DILocation(line: 503, column: 5, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 503, column: 5)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 503, column: 5)
!3535 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 502, column: 10)
!3536 = !DILocation(line: 503, column: 5, scope: !3534)
!3537 = !DILocation(line: 503, column: 5, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 503, column: 5)
!3539 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 503, column: 5)
!3540 = !DILocation(line: 503, column: 5, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 503, column: 5)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 503, column: 5)
!3543 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 503, column: 5)
!3544 = !DILocation(line: 505, column: 1, scope: !3400)
!3545 = distinct !DISubprogram(name: "recv_tcp", scope: !3, file: !3, line: 293, type: !287, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3547 = !DILocalVariable(name: "arg", arg: 1, scope: !3545, file: !3, line: 293, type: !119)
!3548 = !DILocalVariable(name: "pcb", arg: 2, scope: !3545, file: !3, line: 293, type: !178)
!3549 = !DILocalVariable(name: "p", arg: 3, scope: !3545, file: !3, line: 293, type: !242)
!3550 = !DILocalVariable(name: "err", arg: 4, scope: !3545, file: !3, line: 293, type: !274)
!3551 = !DILocalVariable(name: "conn", scope: !3545, file: !3, line: 295, type: !125)
!3552 = !DILocalVariable(name: "len", scope: !3545, file: !3, line: 296, type: !193)
!3553 = !DILocalVariable(name: "msg", scope: !3545, file: !3, line: 297, type: !119)
!3554 = !DILocation(line: 293, column: 16, scope: !3545)
!3555 = !DILocation(line: 293, column: 37, scope: !3545)
!3556 = !DILocation(line: 293, column: 55, scope: !3545)
!3557 = !DILocation(line: 293, column: 64, scope: !3545)
!3558 = !DILocation(line: 300, column: 3, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 300, column: 3)
!3560 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 300, column: 3)
!3561 = !DILocation(line: 300, column: 3, scope: !3560)
!3562 = !DILocation(line: 300, column: 3, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 300, column: 3)
!3564 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 300, column: 3)
!3565 = !DILocation(line: 300, column: 3, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 300, column: 3)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 300, column: 3)
!3568 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 300, column: 3)
!3569 = !DILocation(line: 301, column: 3, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 301, column: 3)
!3571 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 301, column: 3)
!3572 = !DILocation(line: 301, column: 3, scope: !3571)
!3573 = !DILocation(line: 301, column: 3, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 301, column: 3)
!3575 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 301, column: 3)
!3576 = !DILocation(line: 301, column: 3, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 301, column: 3)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 301, column: 3)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 301, column: 3)
!3580 = !DILocation(line: 302, column: 3, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 302, column: 3)
!3582 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 302, column: 3)
!3583 = !DILocation(line: 302, column: 3, scope: !3582)
!3584 = !DILocation(line: 302, column: 3, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 302, column: 3)
!3586 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 302, column: 3)
!3587 = !DILocation(line: 302, column: 3, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 302, column: 3)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 302, column: 3)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 302, column: 3)
!3591 = !DILocation(line: 304, column: 10, scope: !3545)
!3592 = !DILocation(line: 295, column: 19, scope: !3545)
!3593 = !DILocation(line: 306, column: 7, scope: !3545)
!3594 = !DILocation(line: 309, column: 3, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 309, column: 3)
!3596 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 309, column: 3)
!3597 = !DILocation(line: 309, column: 3, scope: !3596)
!3598 = !DILocation(line: 309, column: 3, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 309, column: 3)
!3600 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 309, column: 3)
!3601 = !DILocation(line: 309, column: 3, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 309, column: 3)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 309, column: 3)
!3604 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 309, column: 3)
!3605 = !DILocation(line: 311, column: 8, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 311, column: 7)
!3607 = !DILocation(line: 0, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 313, column: 9)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 311, column: 51)
!3610 = !DILocation(line: 311, column: 7, scope: !3545)
!3611 = !DILocation(line: 0, scope: !3545)
!3612 = !DILocation(line: 313, column: 9, scope: !3609)
!3613 = !DILocation(line: 314, column: 26, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 313, column: 20)
!3615 = !DILocation(line: 314, column: 7, scope: !3614)
!3616 = !DILocation(line: 315, column: 7, scope: !3614)
!3617 = !DILocation(line: 316, column: 5, scope: !3614)
!3618 = !DILocation(line: 323, column: 7, scope: !3545)
!3619 = !DILocation(line: 324, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 323, column: 18)
!3621 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 323, column: 7)
!3622 = !DILocation(line: 297, column: 9, scope: !3545)
!3623 = !DILocation(line: 325, column: 14, scope: !3620)
!3624 = !DILocation(line: 296, column: 9, scope: !3545)
!3625 = !DILocation(line: 326, column: 3, scope: !3620)
!3626 = !DILocation(line: 0, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 326, column: 10)
!3628 = !DILocation(line: 331, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 331, column: 7)
!3630 = !DILocation(line: 331, column: 46, scope: !3629)
!3631 = !DILocation(line: 331, column: 7, scope: !3545)
!3632 = !DILocation(line: 339, column: 5, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 339, column: 5)
!3634 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 334, column: 10)
!3635 = !DILocation(line: 339, column: 5, scope: !3634)
!3636 = !DILocation(line: 339, column: 5, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 339, column: 5)
!3638 = !DILocation(line: 0, scope: !3609)
!3639 = !DILocation(line: 343, column: 1, scope: !3545)
