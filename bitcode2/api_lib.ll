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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.netconn* @netconn_new_with_proto_and_callback(i32, i8 zeroext, void (%struct.netconn*, i32, i16)*) local_unnamed_addr #0 !dbg !906 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !921
  %6 = tail call %struct.netconn* @netconn_alloc(i32 %0, void (%struct.netconn*, i32, i16)* %2) #7, !dbg !922
  %7 = icmp eq %struct.netconn* %6, null, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br i1 %7, label %50, label %8, !dbg !925

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !926
  %10 = bitcast %union.anon.1* %9 to i8*, !dbg !927
  store i8 %1, i8* %10, align 8, !dbg !928, !tbaa !929
  %11 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !932
  store %struct.netconn* %6, %struct.netconn** %11, align 8, !dbg !933, !tbaa !934
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 4, !dbg !949
  %13 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_newconn, i8* nonnull %5, %struct.sys_sem_t* nonnull %12) #7, !dbg !950
  %14 = icmp eq i8 %13, 0, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br i1 %14, label %16, label %15, !dbg !954

; <label>:15:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %20, !dbg !958

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !959
  %18 = load i8, i8* %17, align 8, !dbg !959, !tbaa !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  %19 = icmp eq i8 %18, 0, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %19, label %48, label %20, !dbg !958

; <label>:20:                                     ; preds = %15, %16
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 2, !dbg !965
  %22 = bitcast %union.anon* %21 to %struct.tcp_pcb**, !dbg !965
  %23 = load %struct.tcp_pcb*, %struct.tcp_pcb** %22, align 8, !dbg !965, !tbaa !929
  %24 = icmp eq %struct.tcp_pcb* %23, null, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %24, label %26, label %25, !dbg !969

; <label>:25:                                     ; preds = %20
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !970
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !973
  call void @ukplat_terminate(i32 3) #9, !dbg !973
  unreachable

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 5, !dbg !977
  %28 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %27) #7, !dbg !977
  %29 = icmp eq i32 %28, 0, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br i1 %29, label %30, label %31, !dbg !980

; <label>:30:                                     ; preds = %26
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !981
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !984
  call void @ukplat_terminate(i32 3) #9, !dbg !984
  unreachable

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.netconn, %struct.netconn* %6, i64 0, i32 6, !dbg !988
  %33 = call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %32) #7, !dbg !988
  %34 = icmp eq i32 %33, 0, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br i1 %34, label %36, label %35, !dbg !991

; <label>:35:                                     ; preds = %31
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !992
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !995
  call void @ukplat_terminate(i32 3) #9, !dbg !995
  unreachable

; <label>:36:                                     ; preds = %31
  %37 = call i32 @sys_sem_valid(%struct.sys_sem_t* nonnull %12) #7, !dbg !999
  %38 = icmp eq i32 %37, 0, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %38, label %39, label %40, !dbg !1002

; <label>:39:                                     ; preds = %36
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1003
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1006
  call void @ukplat_terminate(i32 3) #9, !dbg !1006
  unreachable

; <label>:40:                                     ; preds = %36
  call void @sys_sem_free(%struct.sys_sem_t* nonnull %12) #7, !dbg !1010
  call void @sys_mbox_free(%struct.sys_mbox_t* nonnull %27) #7, !dbg !1011
  %41 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !1012, !tbaa !1013
  %42 = icmp eq %struct.uk_alloc* %41, null, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %42, label %43, label %44, !dbg !1029, !prof !1030

; <label>:43:                                     ; preds = %40
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !1031
  call void @ukplat_terminate(i32 3) #9, !dbg !1031
  unreachable

; <label>:44:                                     ; preds = %40
  %45 = bitcast %struct.netconn* %6 to i8*, !dbg !1033
  %46 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %41, i64 0, i32 5, !dbg !1036
  %47 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %46, align 8, !dbg !1036, !tbaa !1013
  call void %47(%struct.uk_alloc* nonnull %41, i8* %45) #7, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br label %48

; <label>:48:                                     ; preds = %16, %44
  %49 = phi %struct.netconn* [ null, %44 ], [ %6, %16 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %3
  %51 = phi %struct.netconn* [ %6, %3 ], [ %49, %48 ], !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  ret %struct.netconn* %51, !dbg !1040
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
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1042
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1044
  call void @llvm.va_start(i8* nonnull %3), !dbg !1044
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.28, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !1045
  call void @llvm.va_end(i8* nonnull %3), !dbg !1048
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  ret void, !dbg !1049
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
define dso_local signext i8 @netconn_prepare_delete(%struct.netconn*) local_unnamed_addr #0 !dbg !1050 {
  %2 = alloca %struct.api_msg, align 8
  %3 = bitcast %struct.api_msg* %2 to i8*, !dbg !1058
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1058
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %4, label %16, label %5, !dbg !1061

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !1062
  store %struct.netconn* %0, %struct.netconn** %6, align 8, !dbg !1063, !tbaa !934
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 2, !dbg !1064
  %8 = bitcast %union.anon.1* %7 to %struct.anon.7*, !dbg !1065
  %9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %8, i64 0, i32 1, !dbg !1066
  store i8 41, i8* %9, align 1, !dbg !1067, !tbaa !929
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1071
  %11 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_delconn, i8* nonnull %3, %struct.sys_sem_t* nonnull %10) #7, !dbg !1072
  %12 = icmp eq i8 %11, 0, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !1076
  %14 = load i8, i8* %13, align 8, !dbg !1076
  %15 = select i1 %12, i8 %14, i8 %11, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br label %16, !dbg !1081

; <label>:16:                                     ; preds = %1, %5
  %17 = phi i8 [ %15, %5 ], [ 0, %1 ], !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  ret i8 %17, !dbg !1084
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_delconn(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_delete(%struct.netconn*) local_unnamed_addr #0 !dbg !1085 {
  %2 = alloca %struct.api_msg, align 8
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %3, label %18, label %4, !dbg !1092

; <label>:4:                                      ; preds = %1
  %5 = bitcast %struct.api_msg* %2 to i8*, !dbg !1096
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  %6 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !1098
  store %struct.netconn* %0, %struct.netconn** %6, align 8, !dbg !1099, !tbaa !934
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 2, !dbg !1100
  %8 = bitcast %union.anon.1* %7 to %struct.anon.7*, !dbg !1101
  %9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %8, i64 0, i32 1, !dbg !1102
  store i8 41, i8* %9, align 1, !dbg !1103, !tbaa !929
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1107
  %11 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_delconn, i8* nonnull %5, %struct.sys_sem_t* nonnull %10) #7, !dbg !1108
  %12 = icmp eq i8 %11, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !1112
  %14 = load i8, i8* %13, align 8, !dbg !1112
  %15 = select i1 %12, i8 %14, i8 %11, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  %16 = icmp eq i8 %15, 0, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %16, label %17, label %18, !dbg !1124

; <label>:17:                                     ; preds = %4
  call void @netconn_free(%struct.netconn* nonnull %0) #7, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br label %18, !dbg !1127

; <label>:18:                                     ; preds = %4, %17, %1
  %19 = phi i8 [ 0, %1 ], [ %15, %17 ], [ %15, %4 ], !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  ret i8 %19, !dbg !1131
}

; Function Attrs: noredzone
declare dso_local void @netconn_free(%struct.netconn*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_getaddr(%struct.netconn*, %struct.ip_addr*, i16*, i8 zeroext) local_unnamed_addr #0 !dbg !1132 {
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !1146
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1146
  %7 = icmp eq %struct.netconn* %0, null, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %7, label %8, label %9, !dbg !1150

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1151
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1154
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1154
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip_addr* %1, null, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  br i1 %10, label %11, label %12, !dbg !1161

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1162
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1165
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1165
  unreachable

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i16* %2, null, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %13, label %14, label %15, !dbg !1172

; <label>:14:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1173
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1176
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1176
  unreachable

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !1180
  store %struct.netconn* %0, %struct.netconn** %16, align 8, !dbg !1181, !tbaa !934
  %17 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !1182
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 2, !dbg !1183
  %19 = bitcast i64* %18 to i8*, !dbg !1183
  store i8 %3, i8* %19, align 8, !dbg !1184, !tbaa !929
  %20 = bitcast %union.anon.1* %17 to %struct.ip_addr**, !dbg !1185
  store %struct.ip_addr* %1, %struct.ip_addr** %20, align 8, !dbg !1186, !tbaa !929
  %21 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 1, !dbg !1187
  %22 = bitcast i16* %21 to i16**, !dbg !1187
  store i16* %2, i16** %22, align 8, !dbg !1188, !tbaa !929
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1192
  %24 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_getaddr, i8* nonnull %6, %struct.sys_sem_t* nonnull %23) #7, !dbg !1193
  %25 = icmp eq i8 %24, 0, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %26 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !1197
  %27 = load i8, i8* %26, align 8, !dbg !1197
  %28 = select i1 %25, i8 %27, i8 %24, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  ret i8 %28, !dbg !1201
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_getaddr(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_bind(%struct.netconn*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1202 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !1214
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1214
  %6 = icmp eq %struct.netconn* %0, null, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %6, label %7, label %8, !dbg !1218

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1219
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1222
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1222
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.ip_addr* %1, null, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %9, label %10, label %11, !dbg !1228

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br label %11, !dbg !1229

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.ip_addr* [ @ip_addr_any, %10 ], [ %1, %8 ]
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1231
  %14 = load i8, i8* %13, align 4, !dbg !1231, !tbaa !1233
  %15 = and i8 %14, 32, !dbg !1231
  %16 = icmp eq i8 %15, 0, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %16, label %17, label %51, !dbg !1242

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i64 0, i32 1, !dbg !1243
  %19 = load i8, i8* %18, align 4, !dbg !1243, !tbaa !1244
  %20 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 1), align 4, !dbg !1243, !tbaa !1244
  %21 = icmp eq i8 %19, %20, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br i1 %21, label %22, label %51, !dbg !1246

; <label>:22:                                     ; preds = %17
  %23 = icmp eq i8 %19, 6, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1243
  %25 = load i32, i32* %24, align 4, !dbg !1243, !tbaa !929
  %26 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1243, !tbaa !929
  %27 = icmp eq i32 %25, %26, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %23, label %28, label %49, !dbg !1246

; <label>:28:                                     ; preds = %22
  br i1 %27, label %29, label %51, !dbg !1243

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1243
  %31 = load i32, i32* %30, align 4, !dbg !1243, !tbaa !929
  %32 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !1243, !tbaa !929
  %33 = icmp eq i32 %31, %32, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %33, label %34, label %51, !dbg !1243

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1243
  %36 = load i32, i32* %35, align 4, !dbg !1243, !tbaa !929
  %37 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !1243, !tbaa !929
  %38 = icmp eq i32 %36, %37, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %38, label %39, label %51, !dbg !1243

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1243
  %41 = load i32, i32* %40, align 4, !dbg !1243, !tbaa !929
  %42 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !1243, !tbaa !929
  %43 = icmp eq i32 %41, %42, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %43, label %44, label %51, !dbg !1243

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i64 0, i32 0, i32 0, i32 1, !dbg !1243
  %46 = load i8, i8* %45, align 4, !dbg !1243, !tbaa !929
  %47 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !1243, !tbaa !929
  %48 = icmp eq i8 %46, %47, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %48, label %50, label %51, !dbg !1243

; <label>:49:                                     ; preds = %22
  br i1 %27, label %50, label %51, !dbg !1246

; <label>:50:                                     ; preds = %49, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br label %51, !dbg !1248

; <label>:51:                                     ; preds = %17, %50, %49, %44, %39, %34, %29, %28, %11
  %52 = phi %struct.ip_addr* [ %12, %17 ], [ @ip_addr_any_type, %50 ], [ %12, %44 ], [ %12, %39 ], [ %12, %34 ], [ %12, %29 ], [ %12, %28 ], [ %12, %49 ], [ %12, %11 ], !dbg !1250
  %53 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !1251
  store %struct.netconn* %0, %struct.netconn** %53, align 8, !dbg !1252, !tbaa !934
  %54 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !1253
  %55 = bitcast %union.anon.1* %54 to %struct.ip_addr**, !dbg !1254
  store %struct.ip_addr* %52, %struct.ip_addr** %55, align 8, !dbg !1255, !tbaa !929
  %56 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, i32 0, i32 1, !dbg !1256
  store i16 %2, i16* %56, align 8, !dbg !1257, !tbaa !929
  %57 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1261
  %58 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_bind, i8* nonnull %5, %struct.sys_sem_t* nonnull %57) #7, !dbg !1262
  %59 = icmp eq i8 %58, 0, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  %60 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !1266
  %61 = load i8, i8* %60, align 8, !dbg !1266
  %62 = select i1 %59, i8 %61, i8 %58, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  ret i8 %62, !dbg !1269
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_bind(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_bind_if(%struct.netconn*, i8 zeroext) local_unnamed_addr #0 !dbg !1270 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !1280
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1280
  %5 = icmp eq %struct.netconn* %0, null, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br i1 %5, label %6, label %7, !dbg !1284

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1285
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1288
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1288
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !1292
  store %struct.netconn* %0, %struct.netconn** %8, align 8, !dbg !1293, !tbaa !934
  %9 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 2, !dbg !1294
  %10 = bitcast %union.anon.1* %9 to %struct.anon.3*, !dbg !1295
  %11 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %10, i64 0, i32 2, !dbg !1296
  store i8 %1, i8* %11, align 2, !dbg !1297, !tbaa !929
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1301
  %13 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_bind_if, i8* nonnull %4, %struct.sys_sem_t* nonnull %12) #7, !dbg !1302
  %14 = icmp eq i8 %13, 0, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !1306
  %16 = load i8, i8* %15, align 8, !dbg !1306
  %17 = select i1 %14, i8 %16, i8 %13, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  ret i8 %17, !dbg !1310
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_bind_if(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_connect(%struct.netconn*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1311 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !1321
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1321
  %6 = icmp eq %struct.netconn* %0, null, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %6, label %7, label %8, !dbg !1325

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1326
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1329
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1329
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.ip_addr* %1, null, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  br i1 %9, label %10, label %11, !dbg !1335

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  br label %11, !dbg !1336

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.ip_addr* [ @ip_addr_any, %10 ], [ %1, %8 ]
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !1338
  store %struct.netconn* %0, %struct.netconn** %13, align 8, !dbg !1339, !tbaa !934
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !1340
  %15 = bitcast %union.anon.1* %14 to %struct.ip_addr**, !dbg !1341
  store %struct.ip_addr* %12, %struct.ip_addr** %15, align 8, !dbg !1342, !tbaa !929
  %16 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, i32 0, i32 1, !dbg !1343
  store i16 %2, i16* %16, align 8, !dbg !1344, !tbaa !929
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1348
  %18 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_connect, i8* nonnull %5, %struct.sys_sem_t* nonnull %17) #7, !dbg !1349
  %19 = icmp eq i8 %18, 0, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  %20 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !1353
  %21 = load i8, i8* %20, align 8, !dbg !1353
  %22 = select i1 %19, i8 %21, i8 %18, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  ret i8 %22, !dbg !1357
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_connect(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_disconnect(%struct.netconn*) local_unnamed_addr #0 !dbg !1358 {
  %2 = alloca %struct.api_msg, align 8
  %3 = bitcast %struct.api_msg* %2 to i8*, !dbg !1364
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1364
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br i1 %4, label %5, label %6, !dbg !1368

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1369
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1372
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1372
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !1376
  store %struct.netconn* %0, %struct.netconn** %7, align 8, !dbg !1377, !tbaa !934
  %8 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1381
  %9 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_disconnect, i8* nonnull %3, %struct.sys_sem_t* nonnull %8) #7, !dbg !1382
  %10 = icmp eq i8 %9, 0, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %11 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !1386
  %12 = load i8, i8* %11, align 8, !dbg !1386
  %13 = select i1 %10, i8 %12, i8 %9, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  ret i8 %13, !dbg !1390
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_disconnect(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_listen_with_backlog(%struct.netconn*, i8 zeroext) local_unnamed_addr #0 !dbg !1391 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !1399
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1399
  %5 = icmp eq %struct.netconn* %0, null, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br i1 %5, label %6, label %7, !dbg !1403

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1404
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1407
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1407
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !1411
  store %struct.netconn* %0, %struct.netconn** %8, align 8, !dbg !1412, !tbaa !934
  %9 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1416
  %10 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_listen, i8* nonnull %4, %struct.sys_sem_t* nonnull %9) #7, !dbg !1417
  %11 = icmp eq i8 %10, 0, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  %12 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !1421
  %13 = load i8, i8* %12, align 8, !dbg !1421
  %14 = select i1 %11, i8 %13, i8 %10, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  ret i8 %14, !dbg !1425
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_listen(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_accept(%struct.netconn*, %struct.netconn**) local_unnamed_addr #0 !dbg !1426 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #6, !dbg !1439
  %5 = bitcast i8** %4 to i8*, !dbg !1440
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1440
  %6 = icmp eq %struct.netconn** %1, null, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br i1 %6, label %7, label %8, !dbg !1444

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1445
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1448
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1448
  unreachable

; <label>:8:                                      ; preds = %2
  store %struct.netconn* null, %struct.netconn** %1, align 8, !dbg !1452, !tbaa !1013
  %9 = icmp eq %struct.netconn* %0, null, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %9, label %10, label %11, !dbg !1456

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1457
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1460
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1460
  unreachable

; <label>:11:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  %12 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1472
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1475
  %14 = load i8, i8* %13, align 8, !dbg !1475, !tbaa !1476
  store i8 0, i8* %13, align 8, !dbg !1478, !tbaa !1476
  tail call void @ukplat_lcpu_restore_irqf(i64 %12) #7, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  store i8 %14, i8* %3, align 1, !dbg !1482, !tbaa !929
  %15 = icmp eq i8 %14, 0, !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br i1 %15, label %16, label %50, !dbg !1485

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 6, !dbg !1486
  %18 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %17) #7, !dbg !1486
  %19 = icmp eq i32 %18, 0, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  br i1 %19, label %50, label %20, !dbg !1486

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1486
  %22 = load i8, i8* %21, align 4, !dbg !1486, !tbaa !1233
  %23 = zext i8 %22 to i32, !dbg !1486
  %24 = and i32 %23, 1, !dbg !1486
  %25 = icmp eq i32 %24, 0, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br i1 %25, label %26, label %50, !dbg !1488

; <label>:26:                                     ; preds = %20
  %27 = and i32 %23, 2, !dbg !1489
  %28 = icmp eq i32 %27, 0, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %28, label %32, label %29, !dbg !1491

; <label>:29:                                     ; preds = %26
  %30 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %17, i8** nonnull %4) #7, !dbg !1493
  %31 = icmp eq i32 %30, -1, !dbg !1496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br i1 %31, label %50, label %34, !dbg !1497

; <label>:32:                                     ; preds = %26
  %33 = call i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* nonnull %17, i8** nonnull %4, i32 0) #7, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %34

; <label>:34:                                     ; preds = %29, %32
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1500
  %36 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %35, align 8, !dbg !1500, !tbaa !1502
  %37 = icmp eq void (%struct.netconn*, i32, i16)* %36, null, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %37, label %39, label %38, !dbg !1503

; <label>:38:                                     ; preds = %34
  call void %36(%struct.netconn* nonnull %0, i32 1, i16 zeroext 0) #7, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  br label %39, !dbg !1504

; <label>:39:                                     ; preds = %34, %38
  %40 = load i8*, i8** %4, align 8, !dbg !1506, !tbaa !1013
  %41 = call i32 @lwip_netconn_is_err_msg(i8* %40, i8* nonnull %3) #7, !dbg !1508
  %42 = icmp eq i32 %41, 0, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  br i1 %42, label %45, label %43, !dbg !1509

; <label>:43:                                     ; preds = %39
  %44 = load i8, i8* %3, align 1, !dbg !1510, !tbaa !929
  br label %50, !dbg !1512

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %4, align 8, !dbg !1513, !tbaa !1013
  %47 = icmp eq i8* %46, null, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  br i1 %47, label %50, label %48, !dbg !1516

; <label>:48:                                     ; preds = %45
  %49 = bitcast %struct.netconn** %1 to i8**, !dbg !1518
  store i8* %46, i8** %49, align 8, !dbg !1518, !tbaa !1013
  br label %50, !dbg !1519

; <label>:50:                                     ; preds = %45, %29, %20, %16, %11, %48, %43
  %51 = phi i8 [ %44, %43 ], [ 0, %48 ], [ %14, %11 ], [ -15, %16 ], [ -15, %20 ], [ -7, %29 ], [ -15, %45 ], !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1524
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #6, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  ret i8 %51, !dbg !1524
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_err(%struct.netconn*) local_unnamed_addr #0 !dbg !1465 {
  %2 = icmp eq %struct.netconn* %0, null, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  br i1 %2, label %7, label %3, !dbg !1528

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1529
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1531
  %6 = load i8, i8* %5, align 8, !dbg !1531, !tbaa !1476
  store i8 0, i8* %5, align 8, !dbg !1533, !tbaa !1476
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #7, !dbg !1534
  br label %7, !dbg !1535

; <label>:7:                                      ; preds = %1, %3
  %8 = phi i8 [ %6, %3 ], [ 0, %1 ], !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  ret i8 %8, !dbg !1539
}

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lwip_netconn_is_err_msg(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_tcp_recvd(%struct.netconn*, i64) local_unnamed_addr #0 !dbg !1540 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1550
  %5 = icmp eq %struct.netconn* %0, null, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %5, label %11, label %6, !dbg !1551

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1551
  %8 = load i32, i32* %7, align 8, !dbg !1551, !tbaa !1554
  %9 = and i32 %8, 240, !dbg !1551
  %10 = icmp eq i32 %9, 16, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %10, label %12, label %11, !dbg !1555

; <label>:11:                                     ; preds = %2, %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1556
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1559
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1559
  unreachable

; <label>:12:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  %13 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !1578
  store %struct.netconn* %0, %struct.netconn** %13, align 8, !dbg !1579, !tbaa !934
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 2, !dbg !1580
  %15 = bitcast %union.anon.1* %14 to i64*, !dbg !1581
  store i64 %1, i64* %15, align 8, !dbg !1582, !tbaa !929
  %16 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1586
  %17 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_recv, i8* nonnull %4, %struct.sys_sem_t* nonnull %16) #7, !dbg !1587
  %18 = icmp eq i8 %17, 0, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  %19 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !1591
  %20 = load i8, i8* %19, align 8, !dbg !1591
  %21 = select i1 %18, i8 %20, i8 %17, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  ret i8 %21, !dbg !1596
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_tcp_pbuf(%struct.netconn*, %struct.pbuf**) local_unnamed_addr #0 !dbg !1597 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  br i1 %3, label %9, label %4, !dbg !1606

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1606
  %6 = load i32, i32* %5, align 8, !dbg !1606, !tbaa !1554
  %7 = and i32 %6, 240, !dbg !1606
  %8 = icmp eq i32 %7, 16, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  br i1 %8, label %10, label %9, !dbg !1609

; <label>:9:                                      ; preds = %2, %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1610
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1613
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1613
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = tail call fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn* nonnull %0, %struct.pbuf** %1, i8 zeroext 0) #8, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  ret i8 %11, !dbg !1618
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn*, %struct.pbuf**, i8 zeroext) unnamed_addr #0 !dbg !1619 {
  %4 = alloca %struct.api_msg, align 8
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1635
  %7 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1636
  %8 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %7) #7, !dbg !1636
  %9 = icmp eq i32 %8, 0, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br i1 %9, label %10, label %11, !dbg !1638

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  br label %79, !dbg !1639

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1641
  %13 = load i8, i8* %12, align 4, !dbg !1641, !tbaa !1233
  %14 = icmp slt i8 %13, 0, !dbg !1641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  br i1 %14, label %15, label %17, !dbg !1643

; <label>:15:                                     ; preds = %11
  %16 = and i8 %13, 127, !dbg !1644
  store i8 %16, i8* %12, align 4, !dbg !1644, !tbaa !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br label %54, !dbg !1647

; <label>:17:                                     ; preds = %11
  %18 = zext i8 %2 to i32, !dbg !1648
  %19 = bitcast %struct.pbuf** %1 to i8**, !dbg !1650
  %20 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %19, i8 zeroext %2) #8, !dbg !1651
  %21 = icmp eq i8 %20, 0, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  br i1 %21, label %23, label %22, !dbg !1655

; <label>:22:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br label %79, !dbg !1656

; <label>:23:                                     ; preds = %17
  %24 = and i32 %18, 8, !dbg !1658
  %25 = load %struct.pbuf*, %struct.pbuf** %1, align 8, !dbg !1659, !tbaa !1013
  %26 = icmp eq i32 %24, 0, !dbg !1661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %26, label %27, label %46, !dbg !1662

; <label>:27:                                     ; preds = %23
  %28 = icmp eq %struct.pbuf* %25, null, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  br i1 %28, label %33, label %29, !dbg !1663

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i64 0, i32 2, !dbg !1664
  %31 = load i16, i16* %30, align 8, !dbg !1664, !tbaa !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  %32 = zext i16 %31 to i64, !dbg !1663
  br label %33, !dbg !1663

; <label>:33:                                     ; preds = %29, %27
  %34 = phi i64 [ %32, %29 ], [ 1, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1672
  %36 = load i32, i32* %35, align 8, !dbg !1672, !tbaa !1554
  %37 = and i32 %36, 240, !dbg !1672
  %38 = icmp eq i32 %37, 16, !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  br i1 %38, label %40, label %39, !dbg !1673

; <label>:39:                                     ; preds = %33
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1674
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1677
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1677
  unreachable

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !1681
  store %struct.netconn* %0, %struct.netconn** %41, align 8, !dbg !1682, !tbaa !934
  %42 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !1683
  %43 = bitcast %union.anon.1* %42 to i64*, !dbg !1684
  store i64 %34, i64* %43, align 8, !dbg !1685, !tbaa !929
  %44 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1689
  %45 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_recv, i8* nonnull %6, %struct.sys_sem_t* nonnull %44) #7, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br label %46, !dbg !1696

; <label>:46:                                     ; preds = %23, %40
  %47 = icmp eq %struct.pbuf* %25, null, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br i1 %47, label %48, label %78, !dbg !1699

; <label>:48:                                     ; preds = %46
  %49 = and i32 %18, 16, !dbg !1700
  %50 = icmp eq i32 %49, 0, !dbg !1700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  br i1 %50, label %54, label %51, !dbg !1703

; <label>:51:                                     ; preds = %48
  %52 = load i8, i8* %12, align 4, !dbg !1704, !tbaa !1233
  %53 = or i8 %52, -128, !dbg !1704
  store i8 %53, i8* %12, align 4, !dbg !1704, !tbaa !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  br label %79, !dbg !1707

; <label>:54:                                     ; preds = %48, %15
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1708
  %56 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %55, align 8, !dbg !1708, !tbaa !1502
  %57 = icmp eq void (%struct.netconn*, i32, i16)* %56, null, !dbg !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br i1 %57, label %59, label %58, !dbg !1711

; <label>:58:                                     ; preds = %54
  call void %56(%struct.netconn* nonnull %0, i32 1, i16 zeroext 0) #7, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  br label %59, !dbg !1712

; <label>:59:                                     ; preds = %54, %58
  %60 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 2, i32 0, !dbg !1714
  %61 = load %struct.ip_pcb*, %struct.ip_pcb** %60, align 8, !dbg !1714, !tbaa !929
  %62 = icmp eq %struct.ip_pcb* %61, null, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  br i1 %62, label %63, label %69, !dbg !1717

; <label>:63:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  %64 = call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1722
  %65 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1724
  %66 = load i8, i8* %65, align 8, !dbg !1724, !tbaa !1476
  store i8 0, i8* %65, align 8, !dbg !1726, !tbaa !1476
  call void @ukplat_lcpu_restore_irqf(i64 %64) #7, !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  %67 = icmp eq i8 %66, 0, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  %68 = select i1 %67, i8 -14, i8 %66, !dbg !1735
  br label %79, !dbg !1735

; <label>:69:                                     ; preds = %59
  %70 = bitcast %struct.api_msg* %4 to i8*, !dbg !1745
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %70) #6, !dbg !1745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  %71 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !1748
  store %struct.netconn* %0, %struct.netconn** %71, align 8, !dbg !1749, !tbaa !934
  %72 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !1750
  %73 = bitcast %union.anon.1* %72 to %struct.anon.7*, !dbg !1751
  %74 = bitcast %union.anon.1* %72 to i8*, !dbg !1752
  store i8 1, i8* %74, align 8, !dbg !1753, !tbaa !929
  %75 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %73, i64 0, i32 1, !dbg !1754
  store i8 41, i8* %75, align 1, !dbg !1755, !tbaa !929
  %76 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !1759
  %77 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_close, i8* nonnull %70, %struct.sys_sem_t* nonnull %76) #7, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %70) #6, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br label %79, !dbg !1766

; <label>:78:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  br label %79, !dbg !1767

; <label>:79:                                     ; preds = %63, %78, %69, %51, %22, %10
  %80 = phi i8 [ -15, %69 ], [ %20, %22 ], [ -7, %51 ], [ 0, %78 ], [ -11, %10 ], [ %68, %63 ], !dbg !1768
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !1769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  ret i8 %80, !dbg !1769
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_tcp_pbuf_flags(%struct.netconn*, %struct.pbuf**, i8 zeroext) local_unnamed_addr #0 !dbg !1770 {
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br i1 %4, label %10, label %5, !dbg !1778

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1778
  %7 = load i32, i32* %6, align 8, !dbg !1778, !tbaa !1554
  %8 = and i32 %7, 240, !dbg !1778
  %9 = icmp eq i32 %8, 16, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  br i1 %9, label %11, label %10, !dbg !1781

; <label>:10:                                     ; preds = %3, %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1782
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1785
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1785
  unreachable

; <label>:11:                                     ; preds = %5
  %12 = tail call fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn* nonnull %0, %struct.pbuf** %1, i8 zeroext %2) #8, !dbg !1789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  ret i8 %12, !dbg !1790
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_udp_raw_netbuf(%struct.netconn*, %struct.netbuf**) local_unnamed_addr #0 !dbg !1791 {
  %3 = icmp eq %struct.netconn* %0, null, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1800
  br i1 %3, label %9, label %4, !dbg !1800

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1800
  %6 = load i32, i32* %5, align 8, !dbg !1800, !tbaa !1554
  %7 = and i32 %6, 240, !dbg !1800
  %8 = icmp eq i32 %7, 16, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  br i1 %8, label %9, label %10, !dbg !1803

; <label>:9:                                      ; preds = %4, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1804
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1807
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1807
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.netbuf** %1 to i8**, !dbg !1811
  %12 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %11, i8 zeroext 0) #8, !dbg !1812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  ret i8 %12, !dbg !1813
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @netconn_recv_data(%struct.netconn*, i8**, i8 zeroext) unnamed_addr #0 !dbg !1814 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = bitcast i8** %4 to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !1837
  store i8* null, i8** %4, align 8, !dbg !1838, !tbaa !1013
  %7 = icmp eq i8** %1, null, !dbg !1839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %7, label %8, label %9, !dbg !1842

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1843
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1846
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1846
  unreachable

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %1, align 8, !dbg !1850, !tbaa !1013
  %10 = icmp eq %struct.netconn* %0, null, !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %10, label %11, label %12, !dbg !1854

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1855
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1858
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1858
  unreachable

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 5, !dbg !1862
  %14 = tail call i32 @sys_mbox_valid(%struct.sys_mbox_t* nonnull %13) #7, !dbg !1862
  %15 = icmp eq i32 %14, 0, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %15, label %16, label %22, !dbg !1863

; <label>:16:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %17 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1867
  %18 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1869
  %19 = load i8, i8* %18, align 8, !dbg !1869, !tbaa !1476
  store i8 0, i8* %18, align 8, !dbg !1871, !tbaa !1476
  tail call void @ukplat_lcpu_restore_irqf(i64 %17) #7, !dbg !1872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  %20 = icmp eq i8 %19, 0, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  %21 = select i1 %20, i8 -11, i8 %19, !dbg !1881
  br label %95

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !1882
  %24 = load i8, i8* %23, align 4, !dbg !1882, !tbaa !1233
  %25 = zext i8 %24 to i32, !dbg !1882
  %26 = and i32 %25, 2, !dbg !1882
  %27 = icmp eq i32 %26, 0, !dbg !1882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1883
  br i1 %27, label %28, label %38, !dbg !1883

; <label>:28:                                     ; preds = %22
  %29 = and i8 %2, 4, !dbg !1884
  %30 = icmp eq i8 %29, 0, !dbg !1884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  br i1 %30, label %31, label %38, !dbg !1885

; <label>:31:                                     ; preds = %28
  %32 = and i32 %25, 1, !dbg !1886
  %33 = icmp eq i32 %32, 0, !dbg !1886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br i1 %33, label %34, label %38, !dbg !1887

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1888
  %36 = load i8, i8* %35, align 8, !dbg !1888, !tbaa !1476
  %37 = icmp eq i8 %36, 0, !dbg !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  br i1 %37, label %52, label %38, !dbg !1890

; <label>:38:                                     ; preds = %34, %31, %28, %22
  %39 = call i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* nonnull %13, i8** nonnull %4) #7, !dbg !1891
  %40 = icmp eq i32 %39, -1, !dbg !1892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  br i1 %40, label %41, label %54, !dbg !1893

; <label>:41:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  %42 = call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1897
  %43 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 3, !dbg !1899
  %44 = load i8, i8* %43, align 8, !dbg !1899, !tbaa !1476
  store i8 0, i8* %43, align 8, !dbg !1901, !tbaa !1476
  call void @ukplat_lcpu_restore_irqf(i64 %42) #7, !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  %45 = icmp eq i8 %44, 0, !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br i1 %45, label %47, label %46, !dbg !1908

; <label>:46:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  br label %95, !dbg !1909

; <label>:47:                                     ; preds = %41
  %48 = load i8, i8* %23, align 4, !dbg !1911, !tbaa !1233
  %49 = and i8 %48, 1, !dbg !1913
  %50 = icmp eq i8 %49, 0, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  %51 = select i1 %50, i8 -7, i8 -11, !dbg !1917
  br label %95, !dbg !1917

; <label>:52:                                     ; preds = %34
  %53 = call i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* nonnull %13, i8** nonnull %4, i32 0) #7, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %54

; <label>:54:                                     ; preds = %38, %52
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1920
  %56 = load i32, i32* %55, align 8, !dbg !1920, !tbaa !1554
  %57 = and i32 %56, 240, !dbg !1920
  %58 = icmp eq i32 %57, 16, !dbg !1921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  br i1 %58, label %59, label %73, !dbg !1922

; <label>:59:                                     ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #6, !dbg !1924
  %60 = load i8*, i8** %4, align 8, !dbg !1925, !tbaa !1013
  %61 = call i32 @lwip_netconn_is_err_msg(i8* %60, i8* nonnull %5) #7, !dbg !1927
  %62 = icmp eq i32 %61, 0, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  br i1 %62, label %63, label %69, !dbg !1928

; <label>:63:                                     ; preds = %59
  %64 = bitcast i8** %4 to %struct.pbuf**, !dbg !1929
  %65 = load %struct.pbuf*, %struct.pbuf** %64, align 8, !dbg !1929, !tbaa !1013
  %66 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %65, i64 0, i32 2, !dbg !1930
  %67 = load i16, i16* %66, align 8, !dbg !1930, !tbaa !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #6, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = ptrtoint %struct.pbuf* %65 to i64
  br label %83

; <label>:69:                                     ; preds = %59
  %70 = load i8, i8* %5, align 1, !dbg !1933, !tbaa !929
  %71 = icmp eq i8 %70, -15, !dbg !1936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  %72 = select i1 %71, i8 0, i8 %70, !dbg !1939
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #6, !dbg !1932
  br label %95

; <label>:73:                                     ; preds = %54
  %74 = load i8*, i8** %4, align 8, !dbg !1941, !tbaa !1013
  %75 = icmp eq i8* %74, null, !dbg !1941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  br i1 %75, label %76, label %77, !dbg !1945

; <label>:76:                                     ; preds = %73
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !1946
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1949
  call void @ukplat_terminate(i32 3) #9, !dbg !1949
  unreachable

; <label>:77:                                     ; preds = %73
  %78 = ptrtoint i8* %74 to i64, !dbg !1945
  %79 = bitcast i8* %74 to %struct.pbuf**, !dbg !1953
  %80 = load %struct.pbuf*, %struct.pbuf** %79, align 8, !dbg !1953, !tbaa !1954
  %81 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %80, i64 0, i32 2, !dbg !1953
  %82 = load i16, i16* %81, align 8, !dbg !1953, !tbaa !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %83

; <label>:83:                                     ; preds = %63, %77
  %84 = phi i64 [ %78, %77 ], [ %68, %63 ]
  %85 = phi i16 [ %82, %77 ], [ %67, %63 ]
  %86 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 10, !dbg !1956
  %87 = load void (%struct.netconn*, i32, i16)*, void (%struct.netconn*, i32, i16)** %86, align 8, !dbg !1956, !tbaa !1502
  %88 = icmp eq void (%struct.netconn*, i32, i16)* %87, null, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  br i1 %88, label %92, label %89, !dbg !1958

; <label>:89:                                     ; preds = %83
  call void %87(%struct.netconn* nonnull %0, i32 1, i16 zeroext %85) #7, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1959
  %90 = bitcast i8** %4 to i64*
  %91 = load i64, i64* %90, align 8, !dbg !1961, !tbaa !1013
  br label %92, !dbg !1959

; <label>:92:                                     ; preds = %83, %89
  %93 = phi i64 [ %91, %89 ], [ %84, %83 ], !dbg !1961
  %94 = bitcast i8** %1 to i64*, !dbg !1962
  store i64 %93, i64* %94, align 8, !dbg !1962, !tbaa !1013
  br label %95, !dbg !1963

; <label>:95:                                     ; preds = %46, %47, %69, %92, %16
  %96 = phi i8 [ 0, %92 ], [ %72, %69 ], [ %21, %16 ], [ %44, %46 ], [ %51, %47 ], !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !1964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  ret i8 %96, !dbg !1964
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv_udp_raw_netbuf_flags(%struct.netconn*, %struct.netbuf**, i8 zeroext) local_unnamed_addr #0 !dbg !1965 {
  %4 = icmp eq %struct.netconn* %0, null, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %4, label %10, label %5, !dbg !1975

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !1975
  %7 = load i32, i32* %6, align 8, !dbg !1975, !tbaa !1554
  %8 = and i32 %7, 240, !dbg !1975
  %9 = icmp eq i32 %8, 16, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br i1 %9, label %10, label %11, !dbg !1978

; <label>:10:                                     ; preds = %5, %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1979
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1982
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1982
  unreachable

; <label>:11:                                     ; preds = %5
  %12 = bitcast %struct.netbuf** %1 to i8**, !dbg !1986
  %13 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %12, i8 zeroext %2) #8, !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  ret i8 %13, !dbg !1988
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_recv(%struct.netconn*, %struct.netbuf**) local_unnamed_addr #0 !dbg !1989 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = icmp eq %struct.netbuf** %1, null, !dbg !2001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  br i1 %4, label %5, label %6, !dbg !2004

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !2005
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2008
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2008
  unreachable

; <label>:6:                                      ; preds = %2
  store %struct.netbuf* null, %struct.netbuf** %1, align 8, !dbg !2012, !tbaa !1013
  %7 = icmp eq %struct.netconn* %0, null, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  br i1 %7, label %8, label %9, !dbg !2016

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !2017
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2020
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2020
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !2024
  %11 = load i32, i32* %10, align 8, !dbg !2024, !tbaa !1554
  %12 = and i32 %11, 240, !dbg !2024
  %13 = icmp eq i32 %12, 16, !dbg !2025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2026
  br i1 %13, label %14, label %41, !dbg !2026

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct.pbuf** %3 to i8*, !dbg !2027
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #6, !dbg !2027
  store %struct.pbuf* null, %struct.pbuf** %3, align 8, !dbg !2028, !tbaa !1013
  %16 = tail call i8* @memp_malloc(i32 6) #7, !dbg !2029
  %17 = icmp eq i8* %16, null, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br i1 %17, label %39, label %18, !dbg !2032

; <label>:18:                                     ; preds = %14
  %19 = call fastcc signext i8 @netconn_recv_data_tcp(%struct.netconn* nonnull %0, %struct.pbuf** nonnull %3, i8 zeroext 0) #8, !dbg !2033
  %20 = icmp eq i8 %19, 0, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  br i1 %20, label %22, label %21, !dbg !2037

; <label>:21:                                     ; preds = %18
  call void @memp_free(i32 6, i8* nonnull %16) #7, !dbg !2038
  br label %39, !dbg !2040

; <label>:22:                                     ; preds = %18
  %23 = load %struct.pbuf*, %struct.pbuf** %3, align 8, !dbg !2041, !tbaa !1013
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !2041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2044
  br i1 %24, label %25, label %26, !dbg !2044

; <label>:25:                                     ; preds = %22
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !2045
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2048
  call void @ukplat_terminate(i32 3) #9, !dbg !2048
  unreachable

; <label>:26:                                     ; preds = %22
  %27 = bitcast i8* %16 to %struct.pbuf**, !dbg !2052
  store %struct.pbuf* %23, %struct.pbuf** %27, align 8, !dbg !2053, !tbaa !1954
  %28 = bitcast %struct.pbuf** %3 to i64*, !dbg !2054
  %29 = load i64, i64* %28, align 8, !dbg !2054, !tbaa !1013
  %30 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !2055
  %31 = bitcast i8* %30 to i64*, !dbg !2056
  store i64 %29, i64* %31, align 8, !dbg !2056, !tbaa !2057
  %32 = getelementptr inbounds i8, i8* %16, i64 40, !dbg !2058
  %33 = bitcast i8* %32 to i16*, !dbg !2058
  store i16 0, i16* %33, align 8, !dbg !2059, !tbaa !2060
  %34 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !2061
  %35 = bitcast i8* %34 to <4 x i32>*, !dbg !2061
  store <4 x i32> zeroinitializer, <4 x i32>* %35, align 8, !dbg !2061, !tbaa !929
  %36 = getelementptr inbounds i8, i8* %16, i64 32, !dbg !2061
  store i8 0, i8* %36, align 8, !dbg !2061, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2064
  %37 = getelementptr inbounds i8, i8* %16, i64 36, !dbg !2066
  store i8 0, i8* %37, align 4, !dbg !2066, !tbaa !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %38 = bitcast %struct.netbuf** %1 to i8**, !dbg !2072
  store i8* %16, i8** %38, align 8, !dbg !2072, !tbaa !1013
  br label %39, !dbg !2073

; <label>:39:                                     ; preds = %14, %26, %21
  %40 = phi i8 [ %19, %21 ], [ 0, %26 ], [ -1, %14 ], !dbg !2074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2075
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #6, !dbg !2077
  br label %44

; <label>:41:                                     ; preds = %9
  %42 = bitcast %struct.netbuf** %1 to i8**, !dbg !2078
  %43 = tail call fastcc signext i8 @netconn_recv_data(%struct.netconn* nonnull %0, i8** %42, i8 zeroext 0) #8, !dbg !2080
  br label %44, !dbg !2081

; <label>:44:                                     ; preds = %41, %39
  %45 = phi i8 [ %40, %39 ], [ %43, %41 ], !dbg !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  ret i8 %45, !dbg !2083
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_sendto(%struct.netconn*, %struct.netbuf*, %struct.ip_addr* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !2084 {
  %5 = alloca %struct.api_msg, align 8
  %6 = icmp eq %struct.netbuf* %1, null, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  br i1 %6, label %55, label %7, !dbg !2098

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, !dbg !2099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !2105
  %10 = load i8, i8* %9, align 4, !dbg !2105, !tbaa !1244
  %11 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 1, !dbg !2105
  store i8 %10, i8* %11, align 4, !dbg !2105, !tbaa !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2108
  %12 = icmp eq %struct.ip_addr* %2, null, !dbg !2109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2109
  br i1 %12, label %13, label %14, !dbg !2109

; <label>:13:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br label %32, !dbg !2111

; <label>:14:                                     ; preds = %7
  %15 = load i8, i8* %9, align 4, !dbg !2109, !tbaa !1244
  %16 = icmp eq i8 %15, 6, !dbg !2109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2114
  %18 = load i32, i32* %17, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  br i1 %16, label %19, label %32, !dbg !2113

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2114
  store i32 %18, i32* %20, align 8, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2114
  %22 = load i32, i32* %21, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %23 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !2114
  store i32 %22, i32* %23, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2114
  %25 = load i32, i32* %24, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %26 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !2114
  store i32 %25, i32* %26, align 8, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2114
  %28 = load i32, i32* %27, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %29 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !2114
  store i32 %28, i32* %29, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 1, !dbg !2114
  %31 = load i8, i8* %30, align 4, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  br label %38, !dbg !2117

; <label>:32:                                     ; preds = %14, %13
  %33 = phi i32 [ 0, %13 ], [ %18, %14 ], !dbg !2111
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2111
  store i32 %33, i32* %34, align 8, !dbg !2111, !tbaa !929
  %35 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !2118
  store i32 0, i32* %35, align 4, !dbg !2118, !tbaa !929
  %36 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !2118
  store i32 0, i32* %36, align 8, !dbg !2118, !tbaa !929
  %37 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !2118
  store i32 0, i32* %37, align 4, !dbg !2118, !tbaa !929
  br label %38

; <label>:38:                                     ; preds = %19, %32
  %39 = phi i8 [ %31, %19 ], [ 0, %32 ]
  %40 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !2114
  store i8 %39, i8* %40, align 8, !dbg !2114, !tbaa !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 3, !dbg !2120
  store i16 %3, i16* %41, align 8, !dbg !2121, !tbaa !2060
  %42 = bitcast %struct.api_msg* %5 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %42) #6, !dbg !2133
  %43 = icmp eq %struct.netconn* %0, null, !dbg !2134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  br i1 %43, label %44, label %45, !dbg !2137

; <label>:44:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !2138
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2141
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2141
  unreachable

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !2145
  store %struct.netconn* %0, %struct.netconn** %46, align 8, !dbg !2146, !tbaa !934
  %47 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !2147
  %48 = bitcast %union.anon.1* %47 to %struct.netbuf**, !dbg !2148
  store %struct.netbuf* %1, %struct.netbuf** %48, align 8, !dbg !2149, !tbaa !929
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2153
  %50 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_send, i8* nonnull %42, %struct.sys_sem_t* nonnull %49) #7, !dbg !2154
  %51 = icmp eq i8 %50, 0, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  %52 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !2158
  %53 = load i8, i8* %52, align 8, !dbg !2158
  %54 = select i1 %51, i8 %53, i8 %50, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %42) #6, !dbg !2162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  br label %55, !dbg !2163

; <label>:55:                                     ; preds = %4, %45
  %56 = phi i8 [ %54, %45 ], [ -6, %4 ], !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  ret i8 %56, !dbg !2166
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_send(%struct.netconn*, %struct.netbuf*) local_unnamed_addr #0 !dbg !2123 {
  %3 = alloca %struct.api_msg, align 8
  %4 = bitcast %struct.api_msg* %3 to i8*, !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !2169
  %5 = icmp eq %struct.netconn* %0, null, !dbg !2170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br i1 %5, label %6, label %7, !dbg !2171

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !2172
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2173
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2173
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 0, !dbg !2174
  store %struct.netconn* %0, %struct.netconn** %8, align 8, !dbg !2175, !tbaa !934
  %9 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 2, !dbg !2176
  %10 = bitcast %union.anon.1* %9 to %struct.netbuf**, !dbg !2177
  store %struct.netbuf* %1, %struct.netbuf** %10, align 8, !dbg !2178, !tbaa !929
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2182
  %12 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_send, i8* nonnull %4, %struct.sys_sem_t* nonnull %11) #7, !dbg !2183
  %13 = icmp eq i8 %12, 0, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %3, i64 0, i32 1, !dbg !2187
  %15 = load i8, i8* %14, align 8, !dbg !2187
  %16 = select i1 %13, i8 %15, i8 %12, !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2189
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  ret i8 %16, !dbg !2191
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_send(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_write_partly(%struct.netconn*, i8*, i64, i8 zeroext, i64*) local_unnamed_addr #0 !dbg !2192 {
  %6 = alloca %struct.netvector, align 8
  %7 = bitcast %struct.netvector* %6 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #6, !dbg !2208
  %8 = getelementptr inbounds %struct.netvector, %struct.netvector* %6, i64 0, i32 0, !dbg !2209
  store i8* %1, i8** %8, align 8, !dbg !2210, !tbaa !2211
  %9 = getelementptr inbounds %struct.netvector, %struct.netvector* %6, i64 0, i32 1, !dbg !2213
  store i64 %2, i64* %9, align 8, !dbg !2214, !tbaa !2215
  %10 = call signext i8 @netconn_write_vectors_partly(%struct.netconn* %0, %struct.netvector* nonnull %6, i16 zeroext 1, i8 zeroext %3, i64* %4) #8, !dbg !2217
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #6, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  ret i8 %10, !dbg !2219
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_write_vectors_partly(%struct.netconn*, %struct.netvector*, i16 zeroext, i8 zeroext, i64*) local_unnamed_addr #0 !dbg !2220 {
  %6 = alloca %struct.api_msg, align 8
  %7 = bitcast %struct.api_msg* %6 to i8*, !dbg !2246
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #6, !dbg !2246
  %8 = icmp eq %struct.netconn* %0, null, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2250
  br i1 %8, label %9, label %10, !dbg !2250

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !2251
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2254
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2254
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 0, !dbg !2258
  %12 = load i32, i32* %11, align 8, !dbg !2258, !tbaa !1554
  %13 = and i32 %12, 240, !dbg !2258
  %14 = icmp eq i32 %13, 16, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2261
  br i1 %14, label %16, label %15, !dbg !2261

; <label>:15:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !2262
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2265
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2265
  unreachable

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 8, !dbg !2269
  %18 = load i8, i8* %17, align 4, !dbg !2269, !tbaa !1233
  %19 = and i8 %18, 2, !dbg !2269
  %20 = icmp eq i8 %19, 0, !dbg !2269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  br i1 %20, label %21, label %24, !dbg !2270

; <label>:21:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  %22 = and i8 %3, 4, !dbg !2270
  %23 = icmp eq i8 %22, 0, !dbg !2270
  br label %24, !dbg !2270

; <label>:24:                                     ; preds = %16, %21
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  %26 = icmp ne i64* %4, null, !dbg !2271
  %27 = or i1 %26, %25, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br i1 %27, label %28, label %77, !dbg !2273

; <label>:28:                                     ; preds = %24
  %29 = icmp eq i16 %2, 0, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  br i1 %29, label %30, label %31, !dbg !2281

; <label>:30:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  br label %46, !dbg !2282

; <label>:31:                                     ; preds = %28
  %32 = zext i16 %2 to i64, !dbg !2283
  br label %33, !dbg !2283

; <label>:33:                                     ; preds = %31, %41
  %34 = phi i64 [ 0, %31 ], [ %42, %41 ]
  %35 = phi i64 [ 0, %31 ], [ %38, %41 ]
  %36 = getelementptr inbounds %struct.netvector, %struct.netvector* %1, i64 %34, i32 1, !dbg !2285
  %37 = load i64, i64* %36, align 8, !dbg !2285, !tbaa !2215
  %38 = add i64 %37, %35, !dbg !2286
  %39 = icmp ult i64 %38, %37, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  br i1 %39, label %40, label %41, !dbg !2289

; <label>:40:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  br label %77, !dbg !2290

; <label>:41:                                     ; preds = %33
  %42 = add nuw nsw i64 %34, 1, !dbg !2292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2293
  %43 = icmp ult i64 %42, %32, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  br i1 %43, label %33, label %44, !dbg !2281, !llvm.loop !2294

; <label>:44:                                     ; preds = %41
  %45 = icmp eq i64 %38, 0, !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  br i1 %45, label %46, label %47, !dbg !2282

; <label>:46:                                     ; preds = %30, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  br label %77, !dbg !2297

; <label>:47:                                     ; preds = %44
  %48 = icmp slt i64 %38, 0, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2300
  br i1 %48, label %49, label %50, !dbg !2300

; <label>:49:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2302
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %26, label %50, label %77

; <label>:50:                                     ; preds = %47, %49
  %51 = phi i64 [ 9223372036854775807, %49 ], [ %38, %47 ], !dbg !2305
  %52 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 0, !dbg !2306
  store %struct.netconn* %0, %struct.netconn** %52, align 8, !dbg !2307, !tbaa !934
  %53 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 0, !dbg !2308
  store %struct.netvector* %1, %struct.netvector** %53, align 8, !dbg !2309, !tbaa !929
  %54 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 1, !dbg !2310
  store i16 %2, i16* %54, align 8, !dbg !2311, !tbaa !929
  %55 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 2, !dbg !2312
  store i64 0, i64* %55, align 8, !dbg !2313, !tbaa !929
  %56 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 5, !dbg !2314
  store i8 %3, i8* %56, align 8, !dbg !2315, !tbaa !929
  %57 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 3, !dbg !2316
  store i64 %51, i64* %57, align 8, !dbg !2317, !tbaa !929
  %58 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 2, i32 0, i32 4, !dbg !2318
  store i64 0, i64* %58, align 8, !dbg !2319, !tbaa !929
  %59 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2323
  %60 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_write, i8* nonnull %7, %struct.sys_sem_t* nonnull %59) #7, !dbg !2324
  %61 = icmp eq i8 %60, 0, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2327
  br i1 %61, label %63, label %62, !dbg !2327

; <label>:62:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2331
  br label %75, !dbg !2331

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %6, i64 0, i32 1, !dbg !2332
  %65 = load i8, i8* %64, align 8, !dbg !2332, !tbaa !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %66 = icmp eq i8 %65, 0, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2331
  br i1 %66, label %67, label %75, !dbg !2331

; <label>:67:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br i1 %26, label %68, label %70, !dbg !2336

; <label>:68:                                     ; preds = %67
  %69 = load i64, i64* %58, align 8, !dbg !2338, !tbaa !929
  store i64 %69, i64* %4, align 8, !dbg !2341, !tbaa !2342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  br label %70, !dbg !2343

; <label>:70:                                     ; preds = %68, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2344
  br i1 %25, label %71, label %75, !dbg !2344

; <label>:71:                                     ; preds = %70
  %72 = load i64, i64* %58, align 8, !dbg !2345, !tbaa !929
  %73 = icmp eq i64 %72, %51, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  br i1 %73, label %75, label %74, !dbg !2350

; <label>:74:                                     ; preds = %71
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2351
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2354
  call void @ukplat_terminate(i32 3) #9, !dbg !2354
  unreachable

; <label>:75:                                     ; preds = %62, %70, %71, %63
  %76 = phi i8 [ %60, %62 ], [ 0, %70 ], [ 0, %71 ], [ %65, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br label %77, !dbg !2358

; <label>:77:                                     ; preds = %24, %49, %75, %46, %40
  %78 = phi i8 [ -6, %40 ], [ 0, %46 ], [ %76, %75 ], [ -6, %49 ], [ -6, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #6, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2359
  ret i8 %78, !dbg !2359
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_write(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_close(%struct.netconn*) local_unnamed_addr #0 !dbg !2360 {
  %2 = alloca %struct.api_msg, align 8
  %3 = bitcast %struct.api_msg* %2 to i8*, !dbg !2367
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6, !dbg !2367
  %4 = icmp eq %struct.netconn* %0, null, !dbg !2368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2370
  br i1 %4, label %5, label %6, !dbg !2370

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2371
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2374
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2374
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 0, !dbg !2378
  store %struct.netconn* %0, %struct.netconn** %7, align 8, !dbg !2379, !tbaa !934
  %8 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 2, !dbg !2380
  %9 = bitcast %union.anon.1* %8 to %struct.anon.7*, !dbg !2381
  %10 = bitcast %union.anon.1* %8 to i8*, !dbg !2382
  store i8 3, i8* %10, align 8, !dbg !2383, !tbaa !929
  %11 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %9, i64 0, i32 1, !dbg !2384
  store i8 41, i8* %11, align 1, !dbg !2385, !tbaa !929
  %12 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2389
  %13 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_close, i8* nonnull %3, %struct.sys_sem_t* nonnull %12) #7, !dbg !2390
  %14 = icmp eq i8 %13, 0, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2393
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %2, i64 0, i32 1, !dbg !2394
  %16 = load i8, i8* %15, align 8, !dbg !2394
  %17 = select i1 %14, i8 %16, i8 %13, !dbg !2393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6, !dbg !2398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2399
  ret i8 %17, !dbg !2399
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_shutdown(%struct.netconn*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !2400 {
  %4 = alloca %struct.api_msg, align 8
  %5 = bitcast %struct.api_msg* %4 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6, !dbg !2412
  %6 = icmp eq %struct.netconn* %0, null, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  br i1 %6, label %7, label %8, !dbg !2414

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2415
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2416
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2416
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i8 %2, 0, !dbg !2417
  %10 = select i1 %9, i8 0, i8 2, !dbg !2417
  %11 = icmp ne i8 %1, 0, !dbg !2418
  %12 = zext i1 %11 to i8, !dbg !2418
  %13 = or i8 %10, %12, !dbg !2419
  %14 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 0, !dbg !2421
  store %struct.netconn* %0, %struct.netconn** %14, align 8, !dbg !2422, !tbaa !934
  %15 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 2, !dbg !2423
  %16 = bitcast %union.anon.1* %15 to %struct.anon.7*, !dbg !2424
  %17 = bitcast %union.anon.1* %15 to i8*, !dbg !2425
  store i8 %13, i8* %17, align 8, !dbg !2426, !tbaa !929
  %18 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %16, i64 0, i32 1, !dbg !2427
  store i8 41, i8* %18, align 1, !dbg !2428, !tbaa !929
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2432
  %20 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_close, i8* nonnull %5, %struct.sys_sem_t* nonnull %19) #7, !dbg !2433
  %21 = icmp eq i8 %20, 0, !dbg !2435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %22 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %4, i64 0, i32 1, !dbg !2437
  %23 = load i8, i8* %22, align 8, !dbg !2437
  %24 = select i1 %21, i8 %23, i8 %20, !dbg !2436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6, !dbg !2441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2442
  ret i8 %24, !dbg !2442
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_join_leave_group(%struct.netconn*, %struct.ip_addr*, %struct.ip_addr*, i32) local_unnamed_addr #0 !dbg !2443 {
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2457
  %7 = icmp eq %struct.netconn* %0, null, !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  br i1 %7, label %8, label %9, !dbg !2461

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2462
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2465
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2465
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip_addr* %1, null, !dbg !2469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2471
  br i1 %10, label %11, label %12, !dbg !2471

; <label>:11:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  br label %12, !dbg !2472

; <label>:12:                                     ; preds = %11, %9
  %13 = phi %struct.ip_addr* [ @ip_addr_any, %11 ], [ %1, %9 ]
  %14 = icmp eq %struct.ip_addr* %2, null, !dbg !2474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  br i1 %14, label %15, label %16, !dbg !2476

; <label>:15:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  br label %16, !dbg !2477

; <label>:16:                                     ; preds = %15, %12
  %17 = phi %struct.ip_addr* [ @ip_addr_any, %15 ], [ %2, %12 ]
  %18 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !2479
  store %struct.netconn* %0, %struct.netconn** %18, align 8, !dbg !2480, !tbaa !934
  %19 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !2481
  %20 = bitcast %union.anon.1* %19 to %struct.anon.8*, !dbg !2482
  %21 = bitcast %union.anon.1* %19 to %struct.ip_addr**, !dbg !2483
  store %struct.ip_addr* %13, %struct.ip_addr** %21, align 8, !dbg !2484, !tbaa !929
  %22 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 1, !dbg !2485
  %23 = bitcast i16* %22 to %struct.ip_addr**, !dbg !2485
  store %struct.ip_addr* %17, %struct.ip_addr** %23, align 8, !dbg !2486, !tbaa !929
  %24 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %20, i64 0, i32 3, !dbg !2487
  store i32 %3, i32* %24, align 4, !dbg !2488, !tbaa !929
  %25 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2492
  %26 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_join_leave_group, i8* nonnull %6, %struct.sys_sem_t* nonnull %25) #7, !dbg !2493
  %27 = icmp eq i8 %26, 0, !dbg !2495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2496
  %28 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !2497
  %29 = load i8, i8* %28, align 8, !dbg !2497
  %30 = select i1 %27, i8 %29, i8 %26, !dbg !2496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2501
  ret i8 %30, !dbg !2501
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_join_leave_group(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_join_leave_group_netif(%struct.netconn*, %struct.ip_addr*, i8 zeroext, i32) local_unnamed_addr #0 !dbg !2502 {
  %5 = alloca %struct.api_msg, align 8
  %6 = bitcast %struct.api_msg* %5 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2516
  %7 = icmp eq %struct.netconn* %0, null, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  br i1 %7, label %8, label %9, !dbg !2520

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2521
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2524
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2524
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip_addr* %1, null, !dbg !2528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  br i1 %10, label %11, label %12, !dbg !2530

; <label>:11:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2531
  br label %12, !dbg !2531

; <label>:12:                                     ; preds = %11, %9
  %13 = phi %struct.ip_addr* [ @ip_addr_any, %11 ], [ %1, %9 ]
  %14 = icmp eq i8 %2, 0, !dbg !2533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  br i1 %14, label %29, label %15, !dbg !2535

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 0, !dbg !2536
  store %struct.netconn* %0, %struct.netconn** %16, align 8, !dbg !2537, !tbaa !934
  %17 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, !dbg !2538
  %18 = bitcast %union.anon.1* %17 to %struct.anon.8*, !dbg !2539
  %19 = bitcast %union.anon.1* %17 to %struct.ip_addr**, !dbg !2540
  store %struct.ip_addr* %13, %struct.ip_addr** %19, align 8, !dbg !2541, !tbaa !929
  %20 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 2, i32 0, i32 2, !dbg !2542
  %21 = bitcast i64* %20 to i8*, !dbg !2542
  store i8 %2, i8* %21, align 8, !dbg !2543, !tbaa !929
  %22 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %18, i64 0, i32 3, !dbg !2544
  store i32 %3, i32* %22, align 4, !dbg !2545, !tbaa !929
  %23 = getelementptr inbounds %struct.netconn, %struct.netconn* %0, i64 0, i32 4, !dbg !2549
  %24 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_join_leave_group_netif, i8* nonnull %6, %struct.sys_sem_t* nonnull %23) #7, !dbg !2550
  %25 = icmp eq i8 %24, 0, !dbg !2552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2553
  %26 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %5, i64 0, i32 1, !dbg !2554
  %27 = load i8, i8* %26, align 8, !dbg !2554
  %28 = select i1 %25, i8 %27, i8 %24, !dbg !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2556
  br label %29, !dbg !2558

; <label>:29:                                     ; preds = %12, %15
  %30 = phi i8 [ %28, %15 ], [ -12, %12 ], !dbg !2555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #6, !dbg !2561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  ret i8 %30, !dbg !2561
}

; Function Attrs: noredzone
declare dso_local void @lwip_netconn_do_join_leave_group_netif(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netconn_gethostbyname_addrtype(i8*, %struct.ip_addr*, i8 zeroext) local_unnamed_addr #0 !dbg !2562 {
  %4 = alloca %struct.dns_api_msg, align 8
  %5 = alloca %struct.sys_sem_t, align 8
  %6 = alloca i8, align 1
  %7 = bitcast %struct.dns_api_msg* %4 to i8*, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6, !dbg !2585
  %8 = bitcast %struct.sys_sem_t* %5 to i8*, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #6, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #6, !dbg !2588
  %9 = icmp eq i8* %0, null, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2592
  br i1 %9, label %10, label %11, !dbg !2592

; <label>:10:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !2593
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2596
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2596
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = icmp eq %struct.ip_addr* %1, null, !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2603
  br i1 %12, label %13, label %14, !dbg !2603

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2604
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2607
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2607
  unreachable

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 4, !dbg !2611
  store i8* %6, i8** %15, align 8, !dbg !2612, !tbaa !2613
  %16 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 3, !dbg !2615
  store %struct.sys_sem_t* %5, %struct.sys_sem_t** %16, align 8, !dbg !2616, !tbaa !2617
  %17 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 1, !dbg !2618
  store %struct.ip_addr* %1, %struct.ip_addr** %17, align 8, !dbg !2619, !tbaa !2620
  %18 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 0, !dbg !2621
  store i8* %0, i8** %18, align 8, !dbg !2622, !tbaa !2623
  %19 = getelementptr inbounds %struct.dns_api_msg, %struct.dns_api_msg* %4, i64 0, i32 2, !dbg !2624
  store i8 %2, i8* %19, align 8, !dbg !2625, !tbaa !2626
  %20 = call signext i8 @sys_sem_new(%struct.sys_sem_t* nonnull %5, i8 zeroext 0) #7, !dbg !2627
  store i8 %20, i8* %6, align 1, !dbg !2628, !tbaa !929
  %21 = icmp eq i8 %20, 0, !dbg !2629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2631
  br i1 %21, label %22, label %28, !dbg !2631

; <label>:22:                                     ; preds = %14
  %23 = call signext i8 @tcpip_send_msg_wait_sem(void (i8*)* nonnull @lwip_netconn_do_gethostbyname, i8* nonnull %7, %struct.sys_sem_t* nonnull %5) #7, !dbg !2632
  %24 = load %struct.sys_sem_t*, %struct.sys_sem_t** %16, align 8, !dbg !2634, !tbaa !2617
  call void @sys_sem_free(%struct.sys_sem_t* %24) #7, !dbg !2635
  %25 = icmp eq i8 %23, 0, !dbg !2636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2638
  %26 = load i8, i8* %6, align 1, !dbg !2639
  %27 = select i1 %25, i8 %26, i8 %23, !dbg !2638
  br label %28, !dbg !2638

; <label>:28:                                     ; preds = %22, %14
  %29 = phi i8 [ %20, %14 ], [ %27, %22 ], !dbg !2640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #6, !dbg !2643
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #6, !dbg !2643
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6, !dbg !2643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  ret i8 %29, !dbg !2643
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
!955 = !DILocation(line: 137, column: 3, scope: !938, inlinedAt: !947)
!956 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !947)
!957 = !DILocation(line: 159, column: 11, scope: !916)
!958 = !DILocation(line: 164, column: 9, scope: !916)
!959 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !947)
!960 = distinct !DILexicalBlock(scope: !953, file: !10, line: 134, column: 22)
!961 = !{!935, !930, i64 8}
!962 = !DILocation(line: 135, column: 5, scope: !960, inlinedAt: !947)
!963 = !DILocation(line: 164, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !916, file: !10, line: 164, column: 9)
!965 = !DILocation(line: 165, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !10, line: 165, column: 7)
!967 = distinct !DILexicalBlock(scope: !968, file: !10, line: 165, column: 7)
!968 = distinct !DILexicalBlock(scope: !964, file: !10, line: 164, column: 24)
!969 = !DILocation(line: 165, column: 7, scope: !967)
!970 = !DILocation(line: 165, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !10, line: 165, column: 7)
!972 = distinct !DILexicalBlock(scope: !966, file: !10, line: 165, column: 7)
!973 = !DILocation(line: 165, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !10, line: 165, column: 7)
!975 = distinct !DILexicalBlock(scope: !976, file: !10, line: 165, column: 7)
!976 = distinct !DILexicalBlock(scope: !971, file: !10, line: 165, column: 7)
!977 = !DILocation(line: 166, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !10, line: 166, column: 7)
!979 = distinct !DILexicalBlock(scope: !968, file: !10, line: 166, column: 7)
!980 = !DILocation(line: 166, column: 7, scope: !979)
!981 = !DILocation(line: 166, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !10, line: 166, column: 7)
!983 = distinct !DILexicalBlock(scope: !978, file: !10, line: 166, column: 7)
!984 = !DILocation(line: 166, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !10, line: 166, column: 7)
!986 = distinct !DILexicalBlock(scope: !987, file: !10, line: 166, column: 7)
!987 = distinct !DILexicalBlock(scope: !982, file: !10, line: 166, column: 7)
!988 = !DILocation(line: 168, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !10, line: 168, column: 7)
!990 = distinct !DILexicalBlock(scope: !968, file: !10, line: 168, column: 7)
!991 = !DILocation(line: 168, column: 7, scope: !990)
!992 = !DILocation(line: 168, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !10, line: 168, column: 7)
!994 = distinct !DILexicalBlock(scope: !989, file: !10, line: 168, column: 7)
!995 = !DILocation(line: 168, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !10, line: 168, column: 7)
!997 = distinct !DILexicalBlock(scope: !998, file: !10, line: 168, column: 7)
!998 = distinct !DILexicalBlock(scope: !993, file: !10, line: 168, column: 7)
!999 = !DILocation(line: 171, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !10, line: 171, column: 7)
!1001 = distinct !DILexicalBlock(scope: !968, file: !10, line: 171, column: 7)
!1002 = !DILocation(line: 171, column: 7, scope: !1001)
!1003 = !DILocation(line: 171, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !10, line: 171, column: 7)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !10, line: 171, column: 7)
!1006 = !DILocation(line: 171, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !10, line: 171, column: 7)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !10, line: 171, column: 7)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !10, line: 171, column: 7)
!1010 = !DILocation(line: 172, column: 7, scope: !968)
!1011 = !DILocation(line: 174, column: 7, scope: !968)
!1012 = !DILocation(line: 175, column: 15, scope: !968)
!1013 = !{!936, !936, i64 0}
!1014 = !DILocalVariable(name: "a", arg: 1, scope: !1015, file: !477, line: 237, type: !475)
!1015 = distinct !DISubprogram(name: "uk_free", scope: !477, file: !477, line: 237, type: !507, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1016)
!1016 = !{!1014, !1017}
!1017 = !DILocalVariable(name: "ptr", arg: 2, scope: !1015, file: !477, line: 237, type: !121)
!1018 = !DILocation(line: 237, column: 45, scope: !1015, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 175, column: 7, scope: !968)
!1020 = !DILocalVariable(name: "a", arg: 1, scope: !1021, file: !477, line: 231, type: !475)
!1021 = distinct !DISubprogram(name: "uk_do_free", scope: !477, file: !477, line: 231, type: !507, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1022)
!1022 = !{!1020, !1023}
!1023 = !DILocalVariable(name: "ptr", arg: 2, scope: !1021, file: !477, line: 231, type: !121)
!1024 = !DILocation(line: 231, column: 48, scope: !1021, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 239, column: 2, scope: !1015, inlinedAt: !1019)
!1026 = !DILocation(line: 233, column: 2, scope: !1027, inlinedAt: !1025)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !477, line: 233, column: 2)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !477, line: 233, column: 2)
!1029 = !DILocation(line: 233, column: 2, scope: !1028, inlinedAt: !1025)
!1030 = !{!"branch_weights", i32 1, i32 2000}
!1031 = !DILocation(line: 233, column: 2, scope: !1032, inlinedAt: !1025)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !477, line: 233, column: 2)
!1033 = !DILocation(line: 175, column: 36, scope: !968)
!1034 = !DILocation(line: 231, column: 57, scope: !1021, inlinedAt: !1025)
!1035 = !DILocation(line: 237, column: 54, scope: !1015, inlinedAt: !1019)
!1036 = !DILocation(line: 234, column: 5, scope: !1021, inlinedAt: !1025)
!1037 = !DILocation(line: 234, column: 2, scope: !1021, inlinedAt: !1025)
!1038 = !DILocation(line: 235, column: 1, scope: !1021, inlinedAt: !1025)
!1039 = !DILocation(line: 0, scope: !968)
!1040 = !DILocation(line: 182, column: 1, scope: !906)
!1041 = !DILocation(line: 194, column: 43, scope: !2)
!1042 = !DILocation(line: 196, column: 2, scope: !2)
!1043 = !DILocation(line: 196, column: 10, scope: !2)
!1044 = !DILocation(line: 197, column: 2, scope: !2)
!1045 = !DILocation(line: 198, column: 2, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 198, column: 2)
!1047 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!1048 = !DILocation(line: 199, column: 2, scope: !2)
!1049 = !DILocation(line: 200, column: 1, scope: !2)
!1050 = distinct !DISubprogram(name: "netconn_prepare_delete", scope: !10, file: !10, line: 194, type: !1051, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!290, !122}
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "conn", arg: 1, scope: !1050, file: !10, line: 194, type: !122)
!1055 = !DILocalVariable(name: "err", scope: !1050, file: !10, line: 196, type: !290)
!1056 = !DILocalVariable(name: "msg", scope: !1050, file: !10, line: 197, type: !807)
!1057 = !DILocation(line: 194, column: 40, scope: !1050)
!1058 = !DILocation(line: 197, column: 3, scope: !1050)
!1059 = !DILocation(line: 200, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1050, file: !10, line: 200, column: 7)
!1061 = !DILocation(line: 200, column: 7, scope: !1050)
!1062 = !DILocation(line: 205, column: 24, scope: !1050)
!1063 = !DILocation(line: 205, column: 29, scope: !1050)
!1064 = !DILocation(line: 212, column: 24, scope: !1050)
!1065 = !DILocation(line: 212, column: 28, scope: !1050)
!1066 = !DILocation(line: 212, column: 31, scope: !1050)
!1067 = !DILocation(line: 212, column: 42, scope: !1050)
!1068 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 216, column: 9, scope: !1050)
!1070 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1069)
!1071 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1069)
!1072 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1069)
!1073 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1069)
!1074 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1069)
!1075 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1069)
!1076 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1069)
!1077 = !DILocation(line: 0, scope: !1050)
!1078 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1069)
!1079 = !DILocation(line: 196, column: 9, scope: !1050)
!1080 = !DILocation(line: 219, column: 7, scope: !1050)
!1081 = !DILocation(line: 222, column: 3, scope: !1050)
!1082 = !DILocation(line: 0, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 200, column: 21)
!1084 = !DILocation(line: 223, column: 1, scope: !1050)
!1085 = distinct !DISubprogram(name: "netconn_delete", scope: !10, file: !10, line: 235, type: !1051, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1086)
!1086 = !{!1087, !1088}
!1087 = !DILocalVariable(name: "conn", arg: 1, scope: !1085, file: !10, line: 235, type: !122)
!1088 = !DILocalVariable(name: "err", scope: !1085, file: !10, line: 237, type: !290)
!1089 = !DILocation(line: 235, column: 32, scope: !1085)
!1090 = !DILocation(line: 240, column: 12, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !10, line: 240, column: 7)
!1092 = !DILocation(line: 240, column: 7, scope: !1085)
!1093 = !DILocation(line: 194, column: 40, scope: !1050, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 251, column: 11, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !10, line: 250, column: 3)
!1096 = !DILocation(line: 197, column: 3, scope: !1050, inlinedAt: !1094)
!1097 = !DILocation(line: 200, column: 7, scope: !1050, inlinedAt: !1094)
!1098 = !DILocation(line: 205, column: 24, scope: !1050, inlinedAt: !1094)
!1099 = !DILocation(line: 205, column: 29, scope: !1050, inlinedAt: !1094)
!1100 = !DILocation(line: 212, column: 24, scope: !1050, inlinedAt: !1094)
!1101 = !DILocation(line: 212, column: 28, scope: !1050, inlinedAt: !1094)
!1102 = !DILocation(line: 212, column: 31, scope: !1050, inlinedAt: !1094)
!1103 = !DILocation(line: 212, column: 42, scope: !1050, inlinedAt: !1094)
!1104 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 216, column: 9, scope: !1050, inlinedAt: !1094)
!1106 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1105)
!1107 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1105)
!1108 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1105)
!1109 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1105)
!1110 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1105)
!1111 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1105)
!1112 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1105)
!1113 = !DILocation(line: 0, scope: !1050, inlinedAt: !1094)
!1114 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1105)
!1115 = !DILocation(line: 196, column: 9, scope: !1050, inlinedAt: !1094)
!1116 = !DILocation(line: 219, column: 7, scope: !1050, inlinedAt: !1094)
!1117 = !DILocation(line: 0, scope: !1118, inlinedAt: !1094)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 219, column: 22)
!1119 = distinct !DILexicalBlock(scope: !1050, file: !10, line: 219, column: 7)
!1120 = !DILocation(line: 223, column: 1, scope: !1050, inlinedAt: !1094)
!1121 = !DILocation(line: 237, column: 9, scope: !1085)
!1122 = !DILocation(line: 253, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1085, file: !10, line: 253, column: 7)
!1124 = !DILocation(line: 253, column: 7, scope: !1085)
!1125 = !DILocation(line: 254, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !10, line: 253, column: 22)
!1127 = !DILocation(line: 255, column: 3, scope: !1126)
!1128 = !DILocation(line: 0, scope: !1085)
!1129 = !DILocation(line: 0, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1091, file: !10, line: 240, column: 21)
!1131 = !DILocation(line: 257, column: 1, scope: !1085)
!1132 = distinct !DISubprogram(name: "netconn_getaddr", scope: !10, file: !10, line: 271, type: !1133, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!290, !122, !838, !840, !158}
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141}
!1136 = !DILocalVariable(name: "conn", arg: 1, scope: !1132, file: !10, line: 271, type: !122)
!1137 = !DILocalVariable(name: "addr", arg: 2, scope: !1132, file: !10, line: 271, type: !838)
!1138 = !DILocalVariable(name: "port", arg: 3, scope: !1132, file: !10, line: 271, type: !840)
!1139 = !DILocalVariable(name: "local", arg: 4, scope: !1132, file: !10, line: 271, type: !158)
!1140 = !DILocalVariable(name: "msg", scope: !1132, file: !10, line: 273, type: !807)
!1141 = !DILocalVariable(name: "err", scope: !1132, file: !10, line: 274, type: !290)
!1142 = !DILocation(line: 271, column: 33, scope: !1132)
!1143 = !DILocation(line: 271, column: 50, scope: !1132)
!1144 = !DILocation(line: 271, column: 63, scope: !1132)
!1145 = !DILocation(line: 271, column: 74, scope: !1132)
!1146 = !DILocation(line: 273, column: 3, scope: !1132)
!1147 = !DILocation(line: 276, column: 3, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !10, line: 276, column: 3)
!1149 = distinct !DILexicalBlock(scope: !1132, file: !10, line: 276, column: 3)
!1150 = !DILocation(line: 276, column: 3, scope: !1149)
!1151 = !DILocation(line: 276, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !10, line: 276, column: 3)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !10, line: 276, column: 3)
!1154 = !DILocation(line: 276, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !10, line: 276, column: 3)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !10, line: 276, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !10, line: 276, column: 3)
!1158 = !DILocation(line: 277, column: 3, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !10, line: 277, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1132, file: !10, line: 277, column: 3)
!1161 = !DILocation(line: 277, column: 3, scope: !1160)
!1162 = !DILocation(line: 277, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !10, line: 277, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !10, line: 277, column: 3)
!1165 = !DILocation(line: 277, column: 3, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !10, line: 277, column: 3)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !10, line: 277, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !10, line: 277, column: 3)
!1169 = !DILocation(line: 278, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !10, line: 278, column: 3)
!1171 = distinct !DILexicalBlock(scope: !1132, file: !10, line: 278, column: 3)
!1172 = !DILocation(line: 278, column: 3, scope: !1171)
!1173 = !DILocation(line: 278, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !10, line: 278, column: 3)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !10, line: 278, column: 3)
!1176 = !DILocation(line: 278, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !10, line: 278, column: 3)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !10, line: 278, column: 3)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !10, line: 278, column: 3)
!1180 = !DILocation(line: 281, column: 24, scope: !1132)
!1181 = !DILocation(line: 281, column: 29, scope: !1132)
!1182 = !DILocation(line: 282, column: 24, scope: !1132)
!1183 = !DILocation(line: 282, column: 31, scope: !1132)
!1184 = !DILocation(line: 282, column: 37, scope: !1132)
!1185 = !DILocation(line: 288, column: 14, scope: !1132)
!1186 = !DILocation(line: 288, column: 21, scope: !1132)
!1187 = !DILocation(line: 289, column: 14, scope: !1132)
!1188 = !DILocation(line: 289, column: 19, scope: !1132)
!1189 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 290, column: 9, scope: !1132)
!1191 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1190)
!1192 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1190)
!1193 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1190)
!1194 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1190)
!1195 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1190)
!1196 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1190)
!1197 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1190)
!1198 = !DILocation(line: 0, scope: !1132)
!1199 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1190)
!1200 = !DILocation(line: 274, column: 9, scope: !1132)
!1201 = !DILocation(line: 295, column: 1, scope: !1132)
!1202 = distinct !DISubprogram(name: "netconn_bind", scope: !10, file: !10, line: 309, type: !1203, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!290, !122, !347, !190}
!1205 = !{!1206, !1207, !1208, !1209, !1210}
!1206 = !DILocalVariable(name: "conn", arg: 1, scope: !1202, file: !10, line: 309, type: !122)
!1207 = !DILocalVariable(name: "addr", arg: 2, scope: !1202, file: !10, line: 309, type: !347)
!1208 = !DILocalVariable(name: "port", arg: 3, scope: !1202, file: !10, line: 309, type: !190)
!1209 = !DILocalVariable(name: "msg", scope: !1202, file: !10, line: 311, type: !807)
!1210 = !DILocalVariable(name: "err", scope: !1202, file: !10, line: 312, type: !290)
!1211 = !DILocation(line: 309, column: 30, scope: !1202)
!1212 = !DILocation(line: 309, column: 53, scope: !1202)
!1213 = !DILocation(line: 309, column: 65, scope: !1202)
!1214 = !DILocation(line: 311, column: 3, scope: !1202)
!1215 = !DILocation(line: 314, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !10, line: 314, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1202, file: !10, line: 314, column: 3)
!1218 = !DILocation(line: 314, column: 3, scope: !1217)
!1219 = !DILocation(line: 314, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !10, line: 314, column: 3)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !10, line: 314, column: 3)
!1222 = !DILocation(line: 314, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !10, line: 314, column: 3)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !10, line: 314, column: 3)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !10, line: 314, column: 3)
!1226 = !DILocation(line: 318, column: 12, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1202, file: !10, line: 318, column: 7)
!1228 = !DILocation(line: 318, column: 7, scope: !1202)
!1229 = !DILocation(line: 320, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !10, line: 318, column: 21)
!1231 = !DILocation(line: 327, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1202, file: !10, line: 327, column: 7)
!1233 = !{!1234, !930, i64 108}
!1234 = !{!"netconn", !930, i64 0, !930, i64 4, !930, i64 8, !930, i64 16, !1235, i64 24, !1240, i64 56, !1240, i64 80, !1239, i64 104, !930, i64 108, !936, i64 112, !936, i64 120}
!1235 = !{!"", !1236, i64 0, !1239, i64 24}
!1236 = !{!"uk_semaphore", !1237, i64 0, !1238, i64 8}
!1237 = !{!"long", !930, i64 0}
!1238 = !{!"uk_waitq", !936, i64 0, !936, i64 8}
!1239 = !{!"int", !930, i64 0}
!1240 = !{!"", !936, i64 0, !936, i64 8, !1239, i64 16}
!1241 = !DILocation(line: 327, column: 35, scope: !1232)
!1242 = !DILocation(line: 327, column: 41, scope: !1232)
!1243 = !DILocation(line: 328, column: 7, scope: !1232)
!1244 = !{!1245, !930, i64 20}
!1245 = !{!"ip_addr", !930, i64 0, !930, i64 20}
!1246 = !DILocation(line: 327, column: 7, scope: !1202)
!1247 = !DILocation(line: 0, scope: !1202)
!1248 = !DILocation(line: 330, column: 3, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1232, file: !10, line: 328, column: 40)
!1250 = !DILocation(line: 0, scope: !1230)
!1251 = !DILocation(line: 334, column: 24, scope: !1202)
!1252 = !DILocation(line: 334, column: 29, scope: !1202)
!1253 = !DILocation(line: 335, column: 24, scope: !1202)
!1254 = !DILocation(line: 335, column: 31, scope: !1202)
!1255 = !DILocation(line: 335, column: 38, scope: !1202)
!1256 = !DILocation(line: 336, column: 31, scope: !1202)
!1257 = !DILocation(line: 336, column: 36, scope: !1202)
!1258 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 337, column: 9, scope: !1202)
!1260 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1259)
!1261 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1259)
!1262 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1259)
!1263 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1259)
!1264 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1259)
!1265 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1259)
!1266 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1259)
!1267 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1259)
!1268 = !DILocation(line: 312, column: 9, scope: !1202)
!1269 = !DILocation(line: 341, column: 1, scope: !1202)
!1270 = distinct !DISubprogram(name: "netconn_bind_if", scope: !10, file: !10, line: 353, type: !1271, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!290, !122, !158}
!1273 = !{!1274, !1275, !1276, !1277}
!1274 = !DILocalVariable(name: "conn", arg: 1, scope: !1270, file: !10, line: 353, type: !122)
!1275 = !DILocalVariable(name: "if_idx", arg: 2, scope: !1270, file: !10, line: 353, type: !158)
!1276 = !DILocalVariable(name: "msg", scope: !1270, file: !10, line: 355, type: !807)
!1277 = !DILocalVariable(name: "err", scope: !1270, file: !10, line: 356, type: !290)
!1278 = !DILocation(line: 353, column: 33, scope: !1270)
!1279 = !DILocation(line: 353, column: 44, scope: !1270)
!1280 = !DILocation(line: 355, column: 3, scope: !1270)
!1281 = !DILocation(line: 358, column: 3, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !10, line: 358, column: 3)
!1283 = distinct !DILexicalBlock(scope: !1270, file: !10, line: 358, column: 3)
!1284 = !DILocation(line: 358, column: 3, scope: !1283)
!1285 = !DILocation(line: 358, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !10, line: 358, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !10, line: 358, column: 3)
!1288 = !DILocation(line: 358, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !10, line: 358, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !10, line: 358, column: 3)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !10, line: 358, column: 3)
!1292 = !DILocation(line: 361, column: 24, scope: !1270)
!1293 = !DILocation(line: 361, column: 29, scope: !1270)
!1294 = !DILocation(line: 362, column: 24, scope: !1270)
!1295 = !DILocation(line: 362, column: 28, scope: !1270)
!1296 = !DILocation(line: 362, column: 31, scope: !1270)
!1297 = !DILocation(line: 362, column: 38, scope: !1270)
!1298 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 363, column: 9, scope: !1270)
!1300 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1299)
!1301 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1299)
!1302 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1299)
!1303 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1299)
!1304 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1299)
!1305 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1299)
!1306 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1299)
!1307 = !DILocation(line: 0, scope: !1270)
!1308 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1299)
!1309 = !DILocation(line: 356, column: 9, scope: !1270)
!1310 = !DILocation(line: 367, column: 1, scope: !1270)
!1311 = distinct !DISubprogram(name: "netconn_connect", scope: !10, file: !10, line: 379, type: !1203, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317}
!1313 = !DILocalVariable(name: "conn", arg: 1, scope: !1311, file: !10, line: 379, type: !122)
!1314 = !DILocalVariable(name: "addr", arg: 2, scope: !1311, file: !10, line: 379, type: !347)
!1315 = !DILocalVariable(name: "port", arg: 3, scope: !1311, file: !10, line: 379, type: !190)
!1316 = !DILocalVariable(name: "msg", scope: !1311, file: !10, line: 381, type: !807)
!1317 = !DILocalVariable(name: "err", scope: !1311, file: !10, line: 382, type: !290)
!1318 = !DILocation(line: 379, column: 33, scope: !1311)
!1319 = !DILocation(line: 379, column: 56, scope: !1311)
!1320 = !DILocation(line: 379, column: 68, scope: !1311)
!1321 = !DILocation(line: 381, column: 3, scope: !1311)
!1322 = !DILocation(line: 384, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !10, line: 384, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1311, file: !10, line: 384, column: 3)
!1325 = !DILocation(line: 384, column: 3, scope: !1324)
!1326 = !DILocation(line: 384, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !10, line: 384, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !10, line: 384, column: 3)
!1329 = !DILocation(line: 384, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 384, column: 3)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !10, line: 384, column: 3)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !10, line: 384, column: 3)
!1333 = !DILocation(line: 388, column: 12, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1311, file: !10, line: 388, column: 7)
!1335 = !DILocation(line: 388, column: 7, scope: !1311)
!1336 = !DILocation(line: 390, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !10, line: 388, column: 21)
!1338 = !DILocation(line: 394, column: 24, scope: !1311)
!1339 = !DILocation(line: 394, column: 29, scope: !1311)
!1340 = !DILocation(line: 395, column: 24, scope: !1311)
!1341 = !DILocation(line: 395, column: 31, scope: !1311)
!1342 = !DILocation(line: 395, column: 38, scope: !1311)
!1343 = !DILocation(line: 396, column: 31, scope: !1311)
!1344 = !DILocation(line: 396, column: 36, scope: !1311)
!1345 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 397, column: 9, scope: !1311)
!1347 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1346)
!1348 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1346)
!1349 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1346)
!1350 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1346)
!1351 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1346)
!1352 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1346)
!1353 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1346)
!1354 = !DILocation(line: 0, scope: !1311)
!1355 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1346)
!1356 = !DILocation(line: 382, column: 9, scope: !1311)
!1357 = !DILocation(line: 401, column: 1, scope: !1311)
!1358 = distinct !DISubprogram(name: "netconn_disconnect", scope: !10, file: !10, line: 411, type: !1051, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1359)
!1359 = !{!1360, !1361, !1362}
!1360 = !DILocalVariable(name: "conn", arg: 1, scope: !1358, file: !10, line: 411, type: !122)
!1361 = !DILocalVariable(name: "msg", scope: !1358, file: !10, line: 413, type: !807)
!1362 = !DILocalVariable(name: "err", scope: !1358, file: !10, line: 414, type: !290)
!1363 = !DILocation(line: 411, column: 36, scope: !1358)
!1364 = !DILocation(line: 413, column: 3, scope: !1358)
!1365 = !DILocation(line: 416, column: 3, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !10, line: 416, column: 3)
!1367 = distinct !DILexicalBlock(scope: !1358, file: !10, line: 416, column: 3)
!1368 = !DILocation(line: 416, column: 3, scope: !1367)
!1369 = !DILocation(line: 416, column: 3, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !10, line: 416, column: 3)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !10, line: 416, column: 3)
!1372 = !DILocation(line: 416, column: 3, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !10, line: 416, column: 3)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !10, line: 416, column: 3)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !10, line: 416, column: 3)
!1376 = !DILocation(line: 419, column: 24, scope: !1358)
!1377 = !DILocation(line: 419, column: 29, scope: !1358)
!1378 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 420, column: 9, scope: !1358)
!1380 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1379)
!1381 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1379)
!1382 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1379)
!1383 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1379)
!1384 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1379)
!1385 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1379)
!1386 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1379)
!1387 = !DILocation(line: 0, scope: !1358)
!1388 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1379)
!1389 = !DILocation(line: 414, column: 9, scope: !1358)
!1390 = !DILocation(line: 424, column: 1, scope: !1358)
!1391 = distinct !DISubprogram(name: "netconn_listen_with_backlog", scope: !10, file: !10, line: 436, type: !1271, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1392)
!1392 = !{!1393, !1394, !1395, !1396}
!1393 = !DILocalVariable(name: "conn", arg: 1, scope: !1391, file: !10, line: 436, type: !122)
!1394 = !DILocalVariable(name: "backlog", arg: 2, scope: !1391, file: !10, line: 436, type: !158)
!1395 = !DILocalVariable(name: "msg", scope: !1391, file: !10, line: 439, type: !807)
!1396 = !DILocalVariable(name: "err", scope: !1391, file: !10, line: 440, type: !290)
!1397 = !DILocation(line: 436, column: 45, scope: !1391)
!1398 = !DILocation(line: 436, column: 56, scope: !1391)
!1399 = !DILocation(line: 439, column: 3, scope: !1391)
!1400 = !DILocation(line: 445, column: 3, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !10, line: 445, column: 3)
!1402 = distinct !DILexicalBlock(scope: !1391, file: !10, line: 445, column: 3)
!1403 = !DILocation(line: 445, column: 3, scope: !1402)
!1404 = !DILocation(line: 445, column: 3, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !10, line: 445, column: 3)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !10, line: 445, column: 3)
!1407 = !DILocation(line: 445, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !10, line: 445, column: 3)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !10, line: 445, column: 3)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !10, line: 445, column: 3)
!1411 = !DILocation(line: 448, column: 24, scope: !1391)
!1412 = !DILocation(line: 448, column: 29, scope: !1391)
!1413 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 452, column: 9, scope: !1391)
!1415 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1414)
!1416 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1414)
!1417 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1414)
!1418 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1414)
!1419 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1414)
!1420 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1414)
!1421 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1414)
!1422 = !DILocation(line: 0, scope: !1391)
!1423 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1414)
!1424 = !DILocation(line: 440, column: 9, scope: !1391)
!1425 = !DILocation(line: 461, column: 1, scope: !1391)
!1426 = distinct !DISubprogram(name: "netconn_accept", scope: !10, file: !10, line: 473, type: !1427, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1430)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!290, !122, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1430 = !{!1431, !1432, !1433, !1434, !1435}
!1431 = !DILocalVariable(name: "conn", arg: 1, scope: !1426, file: !10, line: 473, type: !122)
!1432 = !DILocalVariable(name: "new_conn", arg: 2, scope: !1426, file: !10, line: 473, type: !1429)
!1433 = !DILocalVariable(name: "err", scope: !1426, file: !10, line: 476, type: !290)
!1434 = !DILocalVariable(name: "accept_ptr", scope: !1426, file: !10, line: 477, type: !121)
!1435 = !DILocalVariable(name: "newconn", scope: !1426, file: !10, line: 478, type: !122)
!1436 = !DILocation(line: 473, column: 32, scope: !1426)
!1437 = !DILocation(line: 473, column: 55, scope: !1426)
!1438 = !DILocation(line: 476, column: 9, scope: !1426)
!1439 = !DILocation(line: 476, column: 3, scope: !1426)
!1440 = !DILocation(line: 477, column: 3, scope: !1426)
!1441 = !DILocation(line: 483, column: 3, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !10, line: 483, column: 3)
!1443 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 483, column: 3)
!1444 = !DILocation(line: 483, column: 3, scope: !1443)
!1445 = !DILocation(line: 483, column: 3, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !10, line: 483, column: 3)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !10, line: 483, column: 3)
!1448 = !DILocation(line: 483, column: 3, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !10, line: 483, column: 3)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !10, line: 483, column: 3)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !10, line: 483, column: 3)
!1452 = !DILocation(line: 484, column: 13, scope: !1426)
!1453 = !DILocation(line: 485, column: 3, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !10, line: 485, column: 3)
!1455 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 485, column: 3)
!1456 = !DILocation(line: 485, column: 3, scope: !1455)
!1457 = !DILocation(line: 485, column: 3, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !10, line: 485, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !10, line: 485, column: 3)
!1460 = !DILocation(line: 485, column: 3, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !10, line: 485, column: 3)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !10, line: 485, column: 3)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !10, line: 485, column: 3)
!1464 = !DILocalVariable(name: "conn", arg: 1, scope: !1465, file: !10, line: 1141, type: !122)
!1465 = distinct !DISubprogram(name: "netconn_err", scope: !10, file: !10, line: 1141, type: !1051, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1466)
!1466 = !{!1464, !1467, !1468}
!1467 = !DILocalVariable(name: "err", scope: !1465, file: !10, line: 1143, type: !290)
!1468 = !DILocalVariable(name: "lev", scope: !1465, file: !10, line: 1144, type: !425)
!1469 = !DILocation(line: 1141, column: 29, scope: !1465, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 490, column: 9, scope: !1426)
!1471 = !DILocation(line: 1145, column: 7, scope: !1465, inlinedAt: !1470)
!1472 = !DILocation(line: 1148, column: 3, scope: !1473, inlinedAt: !1470)
!1473 = distinct !DILexicalBlock(scope: !1465, file: !10, line: 1148, column: 3)
!1474 = !DILocation(line: 1144, column: 3, scope: !1465, inlinedAt: !1470)
!1475 = !DILocation(line: 1149, column: 15, scope: !1465, inlinedAt: !1470)
!1476 = !{!1234, !930, i64 16}
!1477 = !DILocation(line: 1143, column: 9, scope: !1465, inlinedAt: !1470)
!1478 = !DILocation(line: 1150, column: 21, scope: !1465, inlinedAt: !1470)
!1479 = !DILocation(line: 1151, column: 3, scope: !1465, inlinedAt: !1470)
!1480 = !DILocation(line: 1152, column: 3, scope: !1465, inlinedAt: !1470)
!1481 = !DILocation(line: 1153, column: 1, scope: !1465, inlinedAt: !1470)
!1482 = !DILocation(line: 490, column: 7, scope: !1426)
!1483 = !DILocation(line: 491, column: 11, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 491, column: 7)
!1485 = !DILocation(line: 491, column: 7, scope: !1426)
!1486 = !DILocation(line: 495, column: 8, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 495, column: 7)
!1488 = !DILocation(line: 495, column: 7, scope: !1426)
!1489 = !DILocation(line: 504, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 504, column: 7)
!1491 = !DILocation(line: 504, column: 7, scope: !1426)
!1492 = !DILocation(line: 477, column: 9, scope: !1426)
!1493 = !DILocation(line: 505, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !10, line: 505, column: 9)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !10, line: 504, column: 37)
!1496 = !DILocation(line: 505, column: 64, scope: !1494)
!1497 = !DILocation(line: 505, column: 9, scope: !1495)
!1498 = !DILocation(line: 518, column: 5, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !10, line: 510, column: 10)
!1500 = !DILocation(line: 533, column: 3, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 533, column: 3)
!1502 = !{!1234, !936, i64 120}
!1503 = !DILocation(line: 533, column: 3, scope: !1426)
!1504 = !DILocation(line: 533, column: 3, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 533, column: 3)
!1506 = !DILocation(line: 535, column: 31, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 535, column: 7)
!1508 = !DILocation(line: 535, column: 7, scope: !1507)
!1509 = !DILocation(line: 535, column: 7, scope: !1426)
!1510 = !DILocation(line: 538, column: 12, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !10, line: 535, column: 50)
!1512 = !DILocation(line: 538, column: 5, scope: !1511)
!1513 = !DILocation(line: 540, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1426, file: !10, line: 540, column: 7)
!1515 = !DILocation(line: 540, column: 18, scope: !1514)
!1516 = !DILocation(line: 540, column: 7, scope: !1426)
!1517 = !DILocation(line: 478, column: 19, scope: !1426)
!1518 = !DILocation(line: 554, column: 13, scope: !1426)
!1519 = !DILocation(line: 556, column: 3, scope: !1426)
!1520 = !DILocation(line: 0, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1487, file: !10, line: 495, column: 43)
!1522 = !DILocation(line: 0, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1484, file: !10, line: 491, column: 22)
!1524 = !DILocation(line: 562, column: 1, scope: !1426)
!1525 = !DILocation(line: 1141, column: 29, scope: !1465)
!1526 = !DILocation(line: 1145, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1465, file: !10, line: 1145, column: 7)
!1528 = !DILocation(line: 1145, column: 7, scope: !1465)
!1529 = !DILocation(line: 1148, column: 3, scope: !1473)
!1530 = !DILocation(line: 1144, column: 3, scope: !1465)
!1531 = !DILocation(line: 1149, column: 15, scope: !1465)
!1532 = !DILocation(line: 1143, column: 9, scope: !1465)
!1533 = !DILocation(line: 1150, column: 21, scope: !1465)
!1534 = !DILocation(line: 1151, column: 3, scope: !1465)
!1535 = !DILocation(line: 1152, column: 3, scope: !1465)
!1536 = !DILocation(line: 0, scope: !1465)
!1537 = !DILocation(line: 0, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1527, file: !10, line: 1145, column: 21)
!1539 = !DILocation(line: 1153, column: 1, scope: !1465)
!1540 = distinct !DISubprogram(name: "netconn_tcp_recvd", scope: !10, file: !10, line: 691, type: !1541, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!290, !122, !854}
!1543 = !{!1544, !1545, !1546, !1547}
!1544 = !DILocalVariable(name: "conn", arg: 1, scope: !1540, file: !10, line: 691, type: !122)
!1545 = !DILocalVariable(name: "len", arg: 2, scope: !1540, file: !10, line: 691, type: !854)
!1546 = !DILocalVariable(name: "err", scope: !1540, file: !10, line: 693, type: !290)
!1547 = !DILocalVariable(name: "msg", scope: !1540, file: !10, line: 694, type: !807)
!1548 = !DILocation(line: 691, column: 35, scope: !1540)
!1549 = !DILocation(line: 691, column: 48, scope: !1540)
!1550 = !DILocation(line: 694, column: 3, scope: !1540)
!1551 = !DILocation(line: 695, column: 3, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !10, line: 695, column: 3)
!1553 = distinct !DILexicalBlock(scope: !1540, file: !10, line: 695, column: 3)
!1554 = !{!1234, !930, i64 0}
!1555 = !DILocation(line: 695, column: 3, scope: !1553)
!1556 = !DILocation(line: 695, column: 3, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !10, line: 695, column: 3)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !10, line: 695, column: 3)
!1559 = !DILocation(line: 695, column: 3, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !10, line: 695, column: 3)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !10, line: 695, column: 3)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !10, line: 695, column: 3)
!1563 = !DILocalVariable(name: "conn", arg: 1, scope: !1564, file: !10, line: 679, type: !122)
!1564 = distinct !DISubprogram(name: "netconn_tcp_recvd_msg", scope: !10, file: !10, line: 679, type: !1565, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!290, !122, !854, !806}
!1567 = !{!1563, !1568, !1569}
!1568 = !DILocalVariable(name: "len", arg: 2, scope: !1564, file: !10, line: 679, type: !854)
!1569 = !DILocalVariable(name: "msg", arg: 3, scope: !1564, file: !10, line: 679, type: !806)
!1570 = !DILocation(line: 679, column: 39, scope: !1564, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 699, column: 9, scope: !1540)
!1572 = !DILocation(line: 679, column: 52, scope: !1564, inlinedAt: !1571)
!1573 = !DILocation(line: 679, column: 73, scope: !1564, inlinedAt: !1571)
!1574 = !DILocation(line: 681, column: 3, scope: !1575, inlinedAt: !1571)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !10, line: 681, column: 3)
!1576 = distinct !DILexicalBlock(scope: !1564, file: !10, line: 681, column: 3)
!1577 = !DILocation(line: 681, column: 3, scope: !1576, inlinedAt: !1571)
!1578 = !DILocation(line: 684, column: 8, scope: !1564, inlinedAt: !1571)
!1579 = !DILocation(line: 684, column: 13, scope: !1564, inlinedAt: !1571)
!1580 = !DILocation(line: 685, column: 8, scope: !1564, inlinedAt: !1571)
!1581 = !DILocation(line: 685, column: 14, scope: !1564, inlinedAt: !1571)
!1582 = !DILocation(line: 685, column: 18, scope: !1564, inlinedAt: !1571)
!1583 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 687, column: 10, scope: !1564, inlinedAt: !1571)
!1585 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1584)
!1586 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1584)
!1587 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1584)
!1588 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1584)
!1589 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !1584)
!1590 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1584)
!1591 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !1584)
!1592 = !DILocation(line: 0, scope: !1564, inlinedAt: !1571)
!1593 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1584)
!1594 = !DILocation(line: 688, column: 1, scope: !1564, inlinedAt: !1571)
!1595 = !DILocation(line: 693, column: 9, scope: !1540)
!1596 = !DILocation(line: 702, column: 1, scope: !1540)
!1597 = distinct !DISubprogram(name: "netconn_recv_tcp_pbuf", scope: !10, file: !10, line: 784, type: !1598, isLocal: false, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1601)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!290, !122, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!1601 = !{!1602, !1603}
!1602 = !DILocalVariable(name: "conn", arg: 1, scope: !1597, file: !10, line: 784, type: !122)
!1603 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1597, file: !10, line: 784, type: !1600)
!1604 = !DILocation(line: 784, column: 39, scope: !1597)
!1605 = !DILocation(line: 784, column: 59, scope: !1597)
!1606 = !DILocation(line: 786, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !10, line: 786, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1597, file: !10, line: 786, column: 3)
!1609 = !DILocation(line: 786, column: 3, scope: !1608)
!1610 = !DILocation(line: 786, column: 3, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !10, line: 786, column: 3)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !10, line: 786, column: 3)
!1613 = !DILocation(line: 786, column: 3, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !10, line: 786, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !10, line: 786, column: 3)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !10, line: 786, column: 3)
!1617 = !DILocation(line: 789, column: 10, scope: !1597)
!1618 = !DILocation(line: 790, column: 1, scope: !1597)
!1619 = distinct !DISubprogram(name: "netconn_recv_data_tcp", scope: !10, file: !10, line: 705, type: !1620, isLocal: true, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!290, !122, !1600, !158}
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1623 = !DILocalVariable(name: "conn", arg: 1, scope: !1619, file: !10, line: 705, type: !122)
!1624 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1619, file: !10, line: 705, type: !1600)
!1625 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1619, file: !10, line: 705, type: !158)
!1626 = !DILocalVariable(name: "err", scope: !1619, file: !10, line: 707, type: !290)
!1627 = !DILocalVariable(name: "buf", scope: !1619, file: !10, line: 708, type: !240)
!1628 = !DILocalVariable(name: "msg", scope: !1619, file: !10, line: 709, type: !807)
!1629 = !DILocalVariable(name: "len", scope: !1630, file: !10, line: 739, type: !190)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !10, line: 737, column: 41)
!1631 = distinct !DILexicalBlock(scope: !1619, file: !10, line: 737, column: 7)
!1632 = !DILocation(line: 705, column: 39, scope: !1619)
!1633 = !DILocation(line: 705, column: 59, scope: !1619)
!1634 = !DILocation(line: 705, column: 73, scope: !1619)
!1635 = !DILocation(line: 709, column: 3, scope: !1619)
!1636 = !DILocation(line: 714, column: 8, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1619, file: !10, line: 714, column: 7)
!1638 = !DILocation(line: 714, column: 7, scope: !1619)
!1639 = !DILocation(line: 716, column: 5, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !10, line: 714, column: 41)
!1641 = !DILocation(line: 718, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1619, file: !10, line: 718, column: 7)
!1643 = !DILocation(line: 718, column: 7, scope: !1619)
!1644 = !DILocation(line: 719, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !10, line: 719, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !10, line: 718, column: 58)
!1647 = !DILocation(line: 720, column: 5, scope: !1646)
!1648 = !DILocation(line: 723, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1619, file: !10, line: 723, column: 7)
!1650 = !DILocation(line: 729, column: 33, scope: !1619)
!1651 = !DILocation(line: 729, column: 9, scope: !1619)
!1652 = !DILocation(line: 707, column: 9, scope: !1619)
!1653 = !DILocation(line: 730, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1619, file: !10, line: 730, column: 7)
!1655 = !DILocation(line: 730, column: 7, scope: !1619)
!1656 = !DILocation(line: 734, column: 5, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !10, line: 730, column: 22)
!1658 = !DILocation(line: 723, column: 18, scope: !1649)
!1659 = !DILocation(line: 736, column: 9, scope: !1619)
!1660 = !DILocation(line: 708, column: 16, scope: !1619)
!1661 = !DILocation(line: 737, column: 18, scope: !1631)
!1662 = !DILocation(line: 737, column: 7, scope: !1619)
!1663 = !DILocation(line: 739, column: 17, scope: !1630)
!1664 = !DILocation(line: 739, column: 28, scope: !1630)
!1665 = !{!1666, !1667, i64 16}
!1666 = !{!"pbuf", !936, i64 0, !936, i64 8, !1667, i64 16, !1667, i64 18, !930, i64 20, !930, i64 21, !930, i64 22, !930, i64 23}
!1667 = !{!"short", !930, i64 0}
!1668 = !DILocation(line: 679, column: 39, scope: !1564, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 742, column: 5, scope: !1630)
!1670 = !DILocation(line: 679, column: 52, scope: !1564, inlinedAt: !1669)
!1671 = !DILocation(line: 679, column: 73, scope: !1564, inlinedAt: !1669)
!1672 = !DILocation(line: 681, column: 3, scope: !1575, inlinedAt: !1669)
!1673 = !DILocation(line: 681, column: 3, scope: !1576, inlinedAt: !1669)
!1674 = !DILocation(line: 681, column: 3, scope: !1675, inlinedAt: !1669)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !10, line: 681, column: 3)
!1676 = distinct !DILexicalBlock(scope: !1575, file: !10, line: 681, column: 3)
!1677 = !DILocation(line: 681, column: 3, scope: !1678, inlinedAt: !1669)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !10, line: 681, column: 3)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !10, line: 681, column: 3)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !10, line: 681, column: 3)
!1681 = !DILocation(line: 684, column: 8, scope: !1564, inlinedAt: !1669)
!1682 = !DILocation(line: 684, column: 13, scope: !1564, inlinedAt: !1669)
!1683 = !DILocation(line: 685, column: 8, scope: !1564, inlinedAt: !1669)
!1684 = !DILocation(line: 685, column: 14, scope: !1564, inlinedAt: !1669)
!1685 = !DILocation(line: 685, column: 18, scope: !1564, inlinedAt: !1669)
!1686 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 687, column: 10, scope: !1564, inlinedAt: !1669)
!1688 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1687)
!1689 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1687)
!1690 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1687)
!1691 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1687)
!1692 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1687)
!1693 = !DILocation(line: 0, scope: !1564, inlinedAt: !1669)
!1694 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1687)
!1695 = !DILocation(line: 688, column: 1, scope: !1564, inlinedAt: !1669)
!1696 = !DILocation(line: 744, column: 3, scope: !1630)
!1697 = !DILocation(line: 747, column: 11, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1619, file: !10, line: 747, column: 7)
!1699 = !DILocation(line: 747, column: 7, scope: !1619)
!1700 = !DILocation(line: 748, column: 18, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !10, line: 748, column: 9)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !10, line: 747, column: 20)
!1703 = !DILocation(line: 748, column: 9, scope: !1702)
!1704 = !DILocation(line: 751, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !10, line: 751, column: 7)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !10, line: 748, column: 35)
!1707 = !DILocation(line: 752, column: 7, scope: !1706)
!1708 = !DILocation(line: 755, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !10, line: 755, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1701, file: !10, line: 753, column: 12)
!1711 = !DILocation(line: 755, column: 7, scope: !1710)
!1712 = !DILocation(line: 755, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 755, column: 7)
!1714 = !DILocation(line: 756, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !10, line: 756, column: 11)
!1716 = !DILocation(line: 756, column: 24, scope: !1715)
!1717 = !DILocation(line: 756, column: 11, scope: !1710)
!1718 = !DILocation(line: 1141, column: 29, scope: !1465, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 758, column: 15, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !10, line: 756, column: 33)
!1721 = !DILocation(line: 1145, column: 7, scope: !1465, inlinedAt: !1719)
!1722 = !DILocation(line: 1148, column: 3, scope: !1473, inlinedAt: !1719)
!1723 = !DILocation(line: 1144, column: 3, scope: !1465, inlinedAt: !1719)
!1724 = !DILocation(line: 1149, column: 15, scope: !1465, inlinedAt: !1719)
!1725 = !DILocation(line: 1143, column: 9, scope: !1465, inlinedAt: !1719)
!1726 = !DILocation(line: 1150, column: 21, scope: !1465, inlinedAt: !1719)
!1727 = !DILocation(line: 1151, column: 3, scope: !1465, inlinedAt: !1719)
!1728 = !DILocation(line: 1152, column: 3, scope: !1465, inlinedAt: !1719)
!1729 = !DILocation(line: 1153, column: 1, scope: !1465, inlinedAt: !1719)
!1730 = !DILocation(line: 759, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1720, file: !10, line: 759, column: 13)
!1732 = !DILocation(line: 759, column: 13, scope: !1720)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !10, line: 759, column: 28)
!1735 = !DILocation(line: 762, column: 9, scope: !1720)
!1736 = !DILocalVariable(name: "conn", arg: 1, scope: !1737, file: !10, line: 1091, type: !122)
!1737 = distinct !DISubprogram(name: "netconn_close_shutdown", scope: !10, file: !10, line: 1091, type: !1271, isLocal: true, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1738)
!1738 = !{!1736, !1739, !1740, !1741}
!1739 = !DILocalVariable(name: "how", arg: 2, scope: !1737, file: !10, line: 1091, type: !158)
!1740 = !DILocalVariable(name: "msg", scope: !1737, file: !10, line: 1093, type: !807)
!1741 = !DILocalVariable(name: "err", scope: !1737, file: !10, line: 1094, type: !290)
!1742 = !DILocation(line: 1091, column: 40, scope: !1737, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 765, column: 7, scope: !1710)
!1744 = !DILocation(line: 1091, column: 51, scope: !1737, inlinedAt: !1743)
!1745 = !DILocation(line: 1093, column: 3, scope: !1737, inlinedAt: !1743)
!1746 = !DILocation(line: 1097, column: 3, scope: !1747, inlinedAt: !1743)
!1747 = distinct !DILexicalBlock(scope: !1737, file: !10, line: 1097, column: 3)
!1748 = !DILocation(line: 1100, column: 24, scope: !1737, inlinedAt: !1743)
!1749 = !DILocation(line: 1100, column: 29, scope: !1737, inlinedAt: !1743)
!1750 = !DILocation(line: 1103, column: 24, scope: !1737, inlinedAt: !1743)
!1751 = !DILocation(line: 1103, column: 28, scope: !1737, inlinedAt: !1743)
!1752 = !DILocation(line: 1103, column: 31, scope: !1737, inlinedAt: !1743)
!1753 = !DILocation(line: 1103, column: 36, scope: !1737, inlinedAt: !1743)
!1754 = !DILocation(line: 1109, column: 31, scope: !1737, inlinedAt: !1743)
!1755 = !DILocation(line: 1109, column: 42, scope: !1737, inlinedAt: !1743)
!1756 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 1113, column: 9, scope: !1737, inlinedAt: !1743)
!1758 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !1757)
!1759 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !1757)
!1760 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !1757)
!1761 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !1757)
!1762 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !1757)
!1763 = !DILocation(line: 0, scope: !1737, inlinedAt: !1743)
!1764 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !1757)
!1765 = !DILocation(line: 1117, column: 1, scope: !1737, inlinedAt: !1743)
!1766 = !DILocation(line: 767, column: 7, scope: !1710)
!1767 = !DILocation(line: 770, column: 3, scope: !1619)
!1768 = !DILocation(line: 0, scope: !1640)
!1769 = !DILocation(line: 771, column: 1, scope: !1619)
!1770 = distinct !DISubprogram(name: "netconn_recv_tcp_pbuf_flags", scope: !10, file: !10, line: 805, type: !1620, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1771)
!1771 = !{!1772, !1773, !1774}
!1772 = !DILocalVariable(name: "conn", arg: 1, scope: !1770, file: !10, line: 805, type: !122)
!1773 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1770, file: !10, line: 805, type: !1600)
!1774 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1770, file: !10, line: 805, type: !158)
!1775 = !DILocation(line: 805, column: 45, scope: !1770)
!1776 = !DILocation(line: 805, column: 65, scope: !1770)
!1777 = !DILocation(line: 805, column: 79, scope: !1770)
!1778 = !DILocation(line: 807, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !10, line: 807, column: 3)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !10, line: 807, column: 3)
!1781 = !DILocation(line: 807, column: 3, scope: !1780)
!1782 = !DILocation(line: 807, column: 3, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 807, column: 3)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !10, line: 807, column: 3)
!1785 = !DILocation(line: 807, column: 3, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !10, line: 807, column: 3)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !10, line: 807, column: 3)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !10, line: 807, column: 3)
!1789 = !DILocation(line: 810, column: 10, scope: !1770)
!1790 = !DILocation(line: 811, column: 1, scope: !1770)
!1791 = distinct !DISubprogram(name: "netconn_recv_udp_raw_netbuf", scope: !10, file: !10, line: 824, type: !1792, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1795)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!290, !122, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!1795 = !{!1796, !1797}
!1796 = !DILocalVariable(name: "conn", arg: 1, scope: !1791, file: !10, line: 824, type: !122)
!1797 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1791, file: !10, line: 824, type: !1794)
!1798 = !DILocation(line: 824, column: 45, scope: !1791)
!1799 = !DILocation(line: 824, column: 67, scope: !1791)
!1800 = !DILocation(line: 826, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !10, line: 826, column: 3)
!1802 = distinct !DILexicalBlock(scope: !1791, file: !10, line: 826, column: 3)
!1803 = !DILocation(line: 826, column: 3, scope: !1802)
!1804 = !DILocation(line: 826, column: 3, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !10, line: 826, column: 3)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !10, line: 826, column: 3)
!1807 = !DILocation(line: 826, column: 3, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !10, line: 826, column: 3)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !10, line: 826, column: 3)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !10, line: 826, column: 3)
!1811 = !DILocation(line: 829, column: 34, scope: !1791)
!1812 = !DILocation(line: 829, column: 10, scope: !1791)
!1813 = !DILocation(line: 830, column: 1, scope: !1791)
!1814 = distinct !DISubprogram(name: "netconn_recv_data", scope: !10, file: !10, line: 581, type: !1815, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!290, !122, !501, !158}
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1826, !1831}
!1818 = !DILocalVariable(name: "conn", arg: 1, scope: !1814, file: !10, line: 581, type: !122)
!1819 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1814, file: !10, line: 581, type: !501)
!1820 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1814, file: !10, line: 581, type: !158)
!1821 = !DILocalVariable(name: "buf", scope: !1814, file: !10, line: 583, type: !121)
!1822 = !DILocalVariable(name: "len", scope: !1814, file: !10, line: 584, type: !190)
!1823 = !DILocalVariable(name: "err", scope: !1824, file: !10, line: 591, type: !290)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !10, line: 590, column: 41)
!1825 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 590, column: 7)
!1826 = !DILocalVariable(name: "err", scope: !1827, file: !10, line: 603, type: !290)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !10, line: 602, column: 76)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !10, line: 602, column: 9)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !10, line: 601, column: 81)
!1830 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 600, column: 7)
!1831 = !DILocalVariable(name: "err", scope: !1832, file: !10, line: 641, type: !290)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !10, line: 640, column: 3)
!1833 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 638, column: 7)
!1834 = !DILocation(line: 581, column: 35, scope: !1814)
!1835 = !DILocation(line: 581, column: 48, scope: !1814)
!1836 = !DILocation(line: 581, column: 62, scope: !1814)
!1837 = !DILocation(line: 583, column: 3, scope: !1814)
!1838 = !DILocation(line: 583, column: 9, scope: !1814)
!1839 = !DILocation(line: 586, column: 3, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !10, line: 586, column: 3)
!1841 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 586, column: 3)
!1842 = !DILocation(line: 586, column: 3, scope: !1841)
!1843 = !DILocation(line: 586, column: 3, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !10, line: 586, column: 3)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !10, line: 586, column: 3)
!1846 = !DILocation(line: 586, column: 3, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !10, line: 586, column: 3)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !10, line: 586, column: 3)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !10, line: 586, column: 3)
!1850 = !DILocation(line: 587, column: 12, scope: !1814)
!1851 = !DILocation(line: 588, column: 3, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !10, line: 588, column: 3)
!1853 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 588, column: 3)
!1854 = !DILocation(line: 588, column: 3, scope: !1853)
!1855 = !DILocation(line: 588, column: 3, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !10, line: 588, column: 3)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !10, line: 588, column: 3)
!1858 = !DILocation(line: 588, column: 3, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !10, line: 588, column: 3)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !10, line: 588, column: 3)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !10, line: 588, column: 3)
!1862 = !DILocation(line: 590, column: 8, scope: !1825)
!1863 = !DILocation(line: 590, column: 7, scope: !1814)
!1864 = !DILocation(line: 1141, column: 29, scope: !1465, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 591, column: 17, scope: !1824)
!1866 = !DILocation(line: 1145, column: 7, scope: !1465, inlinedAt: !1865)
!1867 = !DILocation(line: 1148, column: 3, scope: !1473, inlinedAt: !1865)
!1868 = !DILocation(line: 1144, column: 3, scope: !1465, inlinedAt: !1865)
!1869 = !DILocation(line: 1149, column: 15, scope: !1465, inlinedAt: !1865)
!1870 = !DILocation(line: 1143, column: 9, scope: !1465, inlinedAt: !1865)
!1871 = !DILocation(line: 1150, column: 21, scope: !1465, inlinedAt: !1865)
!1872 = !DILocation(line: 1151, column: 3, scope: !1465, inlinedAt: !1865)
!1873 = !DILocation(line: 1152, column: 3, scope: !1465, inlinedAt: !1865)
!1874 = !DILocation(line: 1153, column: 1, scope: !1465, inlinedAt: !1865)
!1875 = !DILocation(line: 591, column: 11, scope: !1824)
!1876 = !DILocation(line: 592, column: 13, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1824, file: !10, line: 592, column: 9)
!1878 = !DILocation(line: 592, column: 9, scope: !1824)
!1879 = !DILocation(line: 0, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !10, line: 592, column: 24)
!1881 = !DILocation(line: 596, column: 5, scope: !1824)
!1882 = !DILocation(line: 600, column: 7, scope: !1830)
!1883 = !DILocation(line: 600, column: 36, scope: !1830)
!1884 = !DILocation(line: 600, column: 49, scope: !1830)
!1885 = !DILocation(line: 600, column: 70, scope: !1830)
!1886 = !DILocation(line: 601, column: 20, scope: !1830)
!1887 = !DILocation(line: 601, column: 47, scope: !1830)
!1888 = !DILocation(line: 601, column: 57, scope: !1830)
!1889 = !DILocation(line: 601, column: 69, scope: !1830)
!1890 = !DILocation(line: 600, column: 7, scope: !1814)
!1891 = !DILocation(line: 602, column: 9, scope: !1828)
!1892 = !DILocation(line: 602, column: 55, scope: !1828)
!1893 = !DILocation(line: 602, column: 9, scope: !1829)
!1894 = !DILocation(line: 1141, column: 29, scope: !1465, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 605, column: 13, scope: !1827)
!1896 = !DILocation(line: 1145, column: 7, scope: !1465, inlinedAt: !1895)
!1897 = !DILocation(line: 1148, column: 3, scope: !1473, inlinedAt: !1895)
!1898 = !DILocation(line: 1144, column: 3, scope: !1465, inlinedAt: !1895)
!1899 = !DILocation(line: 1149, column: 15, scope: !1465, inlinedAt: !1895)
!1900 = !DILocation(line: 1143, column: 9, scope: !1465, inlinedAt: !1895)
!1901 = !DILocation(line: 1150, column: 21, scope: !1465, inlinedAt: !1895)
!1902 = !DILocation(line: 1151, column: 3, scope: !1465, inlinedAt: !1895)
!1903 = !DILocation(line: 1152, column: 3, scope: !1465, inlinedAt: !1895)
!1904 = !DILocation(line: 1153, column: 1, scope: !1465, inlinedAt: !1895)
!1905 = !DILocation(line: 603, column: 13, scope: !1827)
!1906 = !DILocation(line: 606, column: 15, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1827, file: !10, line: 606, column: 11)
!1908 = !DILocation(line: 606, column: 11, scope: !1827)
!1909 = !DILocation(line: 608, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !10, line: 606, column: 26)
!1911 = !DILocation(line: 610, column: 17, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1827, file: !10, line: 610, column: 11)
!1913 = !DILocation(line: 610, column: 23, scope: !1912)
!1914 = !DILocation(line: 610, column: 11, scope: !1827)
!1915 = !DILocation(line: 0, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !10, line: 610, column: 50)
!1917 = !DILocation(line: 613, column: 7, scope: !1827)
!1918 = !DILocation(line: 622, column: 5, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1830, file: !10, line: 615, column: 10)
!1920 = !DILocation(line: 638, column: 7, scope: !1833)
!1921 = !DILocation(line: 638, column: 37, scope: !1833)
!1922 = !DILocation(line: 638, column: 7, scope: !1814)
!1923 = !DILocation(line: 641, column: 11, scope: !1832)
!1924 = !DILocation(line: 641, column: 5, scope: !1832)
!1925 = !DILocation(line: 643, column: 33, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1832, file: !10, line: 643, column: 9)
!1927 = !DILocation(line: 643, column: 9, scope: !1926)
!1928 = !DILocation(line: 643, column: 9, scope: !1832)
!1929 = !DILocation(line: 651, column: 27, scope: !1832)
!1930 = !DILocation(line: 651, column: 33, scope: !1832)
!1931 = !DILocation(line: 584, column: 9, scope: !1814)
!1932 = !DILocation(line: 652, column: 3, scope: !1833)
!1933 = !DILocation(line: 645, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !10, line: 645, column: 11)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !10, line: 643, column: 45)
!1936 = !DILocation(line: 645, column: 15, scope: !1934)
!1937 = !DILocation(line: 645, column: 11, scope: !1935)
!1938 = !DILocation(line: 0, scope: !1935)
!1939 = !DILocation(line: 647, column: 9, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 645, column: 28)
!1941 = !DILocation(line: 659, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !10, line: 659, column: 5)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !10, line: 659, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1833, file: !10, line: 658, column: 3)
!1945 = !DILocation(line: 659, column: 5, scope: !1943)
!1946 = !DILocation(line: 659, column: 5, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !10, line: 659, column: 5)
!1948 = distinct !DILexicalBlock(scope: !1942, file: !10, line: 659, column: 5)
!1949 = !DILocation(line: 659, column: 5, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !10, line: 659, column: 5)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !10, line: 659, column: 5)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !10, line: 659, column: 5)
!1953 = !DILocation(line: 660, column: 11, scope: !1944)
!1954 = !{!1955, !936, i64 0}
!1955 = !{!"netbuf", !936, i64 0, !936, i64 8, !1245, i64 16, !1667, i64 40}
!1956 = !DILocation(line: 668, column: 3, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 668, column: 3)
!1958 = !DILocation(line: 668, column: 3, scope: !1814)
!1959 = !DILocation(line: 668, column: 3, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !10, line: 668, column: 3)
!1961 = !DILocation(line: 672, column: 14, scope: !1814)
!1962 = !DILocation(line: 672, column: 12, scope: !1814)
!1963 = !DILocation(line: 674, column: 3, scope: !1814)
!1964 = !DILocation(line: 675, column: 1, scope: !1814)
!1965 = distinct !DISubprogram(name: "netconn_recv_udp_raw_netbuf_flags", scope: !10, file: !10, line: 844, type: !1966, isLocal: false, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!290, !122, !1794, !158}
!1968 = !{!1969, !1970, !1971}
!1969 = !DILocalVariable(name: "conn", arg: 1, scope: !1965, file: !10, line: 844, type: !122)
!1970 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1965, file: !10, line: 844, type: !1794)
!1971 = !DILocalVariable(name: "apiflags", arg: 3, scope: !1965, file: !10, line: 844, type: !158)
!1972 = !DILocation(line: 844, column: 51, scope: !1965)
!1973 = !DILocation(line: 844, column: 73, scope: !1965)
!1974 = !DILocation(line: 844, column: 87, scope: !1965)
!1975 = !DILocation(line: 846, column: 3, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !10, line: 846, column: 3)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !10, line: 846, column: 3)
!1978 = !DILocation(line: 846, column: 3, scope: !1977)
!1979 = !DILocation(line: 846, column: 3, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !10, line: 846, column: 3)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !10, line: 846, column: 3)
!1982 = !DILocation(line: 846, column: 3, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !10, line: 846, column: 3)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !10, line: 846, column: 3)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !10, line: 846, column: 3)
!1986 = !DILocation(line: 849, column: 34, scope: !1965)
!1987 = !DILocation(line: 849, column: 10, scope: !1965)
!1988 = !DILocation(line: 850, column: 1, scope: !1965)
!1989 = distinct !DISubprogram(name: "netconn_recv", scope: !10, file: !10, line: 862, type: !1792, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995}
!1991 = !DILocalVariable(name: "conn", arg: 1, scope: !1989, file: !10, line: 862, type: !122)
!1992 = !DILocalVariable(name: "new_buf", arg: 2, scope: !1989, file: !10, line: 862, type: !1794)
!1993 = !DILocalVariable(name: "buf", scope: !1989, file: !10, line: 865, type: !816)
!1994 = !DILocalVariable(name: "err", scope: !1989, file: !10, line: 866, type: !290)
!1995 = !DILocalVariable(name: "p", scope: !1996, file: !10, line: 878, type: !240)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !10, line: 877, column: 3)
!1997 = distinct !DILexicalBlock(scope: !1989, file: !10, line: 875, column: 7)
!1998 = !DILocation(line: 862, column: 30, scope: !1989)
!1999 = !DILocation(line: 862, column: 52, scope: !1989)
!2000 = !DILocation(line: 865, column: 18, scope: !1989)
!2001 = !DILocation(line: 869, column: 3, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !10, line: 869, column: 3)
!2003 = distinct !DILexicalBlock(scope: !1989, file: !10, line: 869, column: 3)
!2004 = !DILocation(line: 869, column: 3, scope: !2003)
!2005 = !DILocation(line: 869, column: 3, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !10, line: 869, column: 3)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !10, line: 869, column: 3)
!2008 = !DILocation(line: 869, column: 3, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !10, line: 869, column: 3)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !10, line: 869, column: 3)
!2011 = distinct !DILexicalBlock(scope: !2006, file: !10, line: 869, column: 3)
!2012 = !DILocation(line: 870, column: 12, scope: !1989)
!2013 = !DILocation(line: 871, column: 3, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !10, line: 871, column: 3)
!2015 = distinct !DILexicalBlock(scope: !1989, file: !10, line: 871, column: 3)
!2016 = !DILocation(line: 871, column: 3, scope: !2015)
!2017 = !DILocation(line: 871, column: 3, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !10, line: 871, column: 3)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !10, line: 871, column: 3)
!2020 = !DILocation(line: 871, column: 3, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !10, line: 871, column: 3)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !10, line: 871, column: 3)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !10, line: 871, column: 3)
!2024 = !DILocation(line: 875, column: 7, scope: !1997)
!2025 = !DILocation(line: 875, column: 37, scope: !1997)
!2026 = !DILocation(line: 875, column: 7, scope: !1989)
!2027 = !DILocation(line: 878, column: 5, scope: !1996)
!2028 = !DILocation(line: 878, column: 18, scope: !1996)
!2029 = !DILocation(line: 881, column: 28, scope: !1996)
!2030 = !DILocation(line: 882, column: 13, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1996, file: !10, line: 882, column: 9)
!2032 = !DILocation(line: 882, column: 9, scope: !1996)
!2033 = !DILocation(line: 886, column: 11, scope: !1996)
!2034 = !DILocation(line: 866, column: 9, scope: !1989)
!2035 = !DILocation(line: 887, column: 13, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1996, file: !10, line: 887, column: 9)
!2037 = !DILocation(line: 887, column: 9, scope: !1996)
!2038 = !DILocation(line: 888, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !10, line: 887, column: 24)
!2040 = !DILocation(line: 889, column: 7, scope: !2039)
!2041 = !DILocation(line: 891, column: 5, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !10, line: 891, column: 5)
!2043 = distinct !DILexicalBlock(scope: !1996, file: !10, line: 891, column: 5)
!2044 = !DILocation(line: 891, column: 5, scope: !2043)
!2045 = !DILocation(line: 891, column: 5, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !10, line: 891, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !10, line: 891, column: 5)
!2048 = !DILocation(line: 891, column: 5, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !10, line: 891, column: 5)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !10, line: 891, column: 5)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !10, line: 891, column: 5)
!2052 = !DILocation(line: 893, column: 10, scope: !1996)
!2053 = !DILocation(line: 893, column: 12, scope: !1996)
!2054 = !DILocation(line: 894, column: 16, scope: !1996)
!2055 = !DILocation(line: 894, column: 10, scope: !1996)
!2056 = !DILocation(line: 894, column: 14, scope: !1996)
!2057 = !{!1955, !936, i64 8}
!2058 = !DILocation(line: 895, column: 10, scope: !1996)
!2059 = !DILocation(line: 895, column: 15, scope: !1996)
!2060 = !{!1955, !1667, i64 40}
!2061 = !DILocation(line: 896, column: 5, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !10, line: 896, column: 5)
!2063 = distinct !DILexicalBlock(scope: !1996, file: !10, line: 896, column: 5)
!2064 = !DILocation(line: 896, column: 5, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !10, line: 896, column: 5)
!2066 = !DILocation(line: 896, column: 5, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !10, line: 896, column: 5)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !10, line: 896, column: 5)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !10, line: 896, column: 5)
!2070 = !{!1955, !930, i64 36}
!2071 = !DILocation(line: 896, column: 5, scope: !2068)
!2072 = !DILocation(line: 897, column: 14, scope: !1996)
!2073 = !DILocation(line: 899, column: 5, scope: !1996)
!2074 = !DILocation(line: 0, scope: !1996)
!2075 = !DILocation(line: 0, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2031, file: !10, line: 882, column: 22)
!2077 = !DILocation(line: 900, column: 3, scope: !1997)
!2078 = !DILocation(line: 907, column: 36, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1997, file: !10, line: 905, column: 3)
!2080 = !DILocation(line: 907, column: 12, scope: !2079)
!2081 = !DILocation(line: 907, column: 5, scope: !2079)
!2082 = !DILocation(line: 0, scope: !2079)
!2083 = !DILocation(line: 910, column: 1, scope: !1989)
!2084 = distinct !DISubprogram(name: "netconn_sendto", scope: !10, file: !10, line: 924, type: !2085, isLocal: false, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!290, !122, !816, !347, !190}
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DILocalVariable(name: "conn", arg: 1, scope: !2084, file: !10, line: 924, type: !122)
!2089 = !DILocalVariable(name: "buf", arg: 2, scope: !2084, file: !10, line: 924, type: !816)
!2090 = !DILocalVariable(name: "addr", arg: 3, scope: !2084, file: !10, line: 924, type: !347)
!2091 = !DILocalVariable(name: "port", arg: 4, scope: !2084, file: !10, line: 924, type: !190)
!2092 = !DILocation(line: 924, column: 32, scope: !2084)
!2093 = !DILocation(line: 924, column: 53, scope: !2084)
!2094 = !DILocation(line: 924, column: 75, scope: !2084)
!2095 = !DILocation(line: 924, column: 87, scope: !2084)
!2096 = !DILocation(line: 926, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2084, file: !10, line: 926, column: 7)
!2098 = !DILocation(line: 926, column: 7, scope: !2084)
!2099 = !DILocation(line: 927, column: 5, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !10, line: 927, column: 5)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !10, line: 927, column: 5)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !10, line: 927, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !10, line: 926, column: 20)
!2104 = !DILocation(line: 927, column: 5, scope: !2101)
!2105 = !DILocation(line: 927, column: 5, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !10, line: 927, column: 5)
!2107 = distinct !DILexicalBlock(scope: !2100, file: !10, line: 927, column: 5)
!2108 = !DILocation(line: 927, column: 5, scope: !2107)
!2109 = !DILocation(line: 927, column: 5, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2102, file: !10, line: 927, column: 5)
!2111 = !DILocation(line: 927, column: 5, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !10, line: 927, column: 5)
!2113 = !DILocation(line: 927, column: 5, scope: !2102)
!2114 = !DILocation(line: 927, column: 5, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !10, line: 927, column: 5)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !10, line: 927, column: 5)
!2117 = !DILocation(line: 927, column: 5, scope: !2116)
!2118 = !DILocation(line: 927, column: 5, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !10, line: 927, column: 5)
!2120 = !DILocation(line: 928, column: 10, scope: !2103)
!2121 = !DILocation(line: 928, column: 15, scope: !2103)
!2122 = !DILocalVariable(name: "conn", arg: 1, scope: !2123, file: !10, line: 943, type: !122)
!2123 = distinct !DISubprogram(name: "netconn_send", scope: !10, file: !10, line: 943, type: !2124, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!290, !122, !816}
!2126 = !{!2122, !2127, !2128, !2129}
!2127 = !DILocalVariable(name: "buf", arg: 2, scope: !2123, file: !10, line: 943, type: !816)
!2128 = !DILocalVariable(name: "msg", scope: !2123, file: !10, line: 945, type: !807)
!2129 = !DILocalVariable(name: "err", scope: !2123, file: !10, line: 946, type: !290)
!2130 = !DILocation(line: 943, column: 30, scope: !2123, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 929, column: 12, scope: !2103)
!2132 = !DILocation(line: 943, column: 51, scope: !2123, inlinedAt: !2131)
!2133 = !DILocation(line: 945, column: 3, scope: !2123, inlinedAt: !2131)
!2134 = !DILocation(line: 948, column: 3, scope: !2135, inlinedAt: !2131)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !10, line: 948, column: 3)
!2136 = distinct !DILexicalBlock(scope: !2123, file: !10, line: 948, column: 3)
!2137 = !DILocation(line: 948, column: 3, scope: !2136, inlinedAt: !2131)
!2138 = !DILocation(line: 948, column: 3, scope: !2139, inlinedAt: !2131)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !10, line: 948, column: 3)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !10, line: 948, column: 3)
!2141 = !DILocation(line: 948, column: 3, scope: !2142, inlinedAt: !2131)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !10, line: 948, column: 3)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !10, line: 948, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !10, line: 948, column: 3)
!2145 = !DILocation(line: 953, column: 24, scope: !2123, inlinedAt: !2131)
!2146 = !DILocation(line: 953, column: 29, scope: !2123, inlinedAt: !2131)
!2147 = !DILocation(line: 954, column: 24, scope: !2123, inlinedAt: !2131)
!2148 = !DILocation(line: 954, column: 28, scope: !2123, inlinedAt: !2131)
!2149 = !DILocation(line: 954, column: 30, scope: !2123, inlinedAt: !2131)
!2150 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 955, column: 9, scope: !2123, inlinedAt: !2131)
!2152 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2151)
!2153 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2151)
!2154 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2151)
!2155 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2151)
!2156 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2151)
!2157 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2151)
!2158 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2151)
!2159 = !DILocation(line: 0, scope: !2123, inlinedAt: !2131)
!2160 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2151)
!2161 = !DILocation(line: 946, column: 9, scope: !2123, inlinedAt: !2131)
!2162 = !DILocation(line: 959, column: 1, scope: !2123, inlinedAt: !2131)
!2163 = !DILocation(line: 929, column: 5, scope: !2103)
!2164 = !DILocation(line: 0, scope: !2084)
!2165 = !DILocation(line: 0, scope: !2103)
!2166 = !DILocation(line: 932, column: 1, scope: !2084)
!2167 = !DILocation(line: 943, column: 30, scope: !2123)
!2168 = !DILocation(line: 943, column: 51, scope: !2123)
!2169 = !DILocation(line: 945, column: 3, scope: !2123)
!2170 = !DILocation(line: 948, column: 3, scope: !2135)
!2171 = !DILocation(line: 948, column: 3, scope: !2136)
!2172 = !DILocation(line: 948, column: 3, scope: !2139)
!2173 = !DILocation(line: 948, column: 3, scope: !2142)
!2174 = !DILocation(line: 953, column: 24, scope: !2123)
!2175 = !DILocation(line: 953, column: 29, scope: !2123)
!2176 = !DILocation(line: 954, column: 24, scope: !2123)
!2177 = !DILocation(line: 954, column: 28, scope: !2123)
!2178 = !DILocation(line: 954, column: 30, scope: !2123)
!2179 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 955, column: 9, scope: !2123)
!2181 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2180)
!2182 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2180)
!2183 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2180)
!2184 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2180)
!2185 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2180)
!2186 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2180)
!2187 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2180)
!2188 = !DILocation(line: 0, scope: !2123)
!2189 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2180)
!2190 = !DILocation(line: 946, column: 9, scope: !2123)
!2191 = !DILocation(line: 959, column: 1, scope: !2123)
!2192 = distinct !DISubprogram(name: "netconn_write_partly", scope: !10, file: !10, line: 976, type: !2193, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2196)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!290, !122, !851, !854, !158, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202}
!2197 = !DILocalVariable(name: "conn", arg: 1, scope: !2192, file: !10, line: 976, type: !122)
!2198 = !DILocalVariable(name: "dataptr", arg: 2, scope: !2192, file: !10, line: 976, type: !851)
!2199 = !DILocalVariable(name: "size", arg: 3, scope: !2192, file: !10, line: 976, type: !854)
!2200 = !DILocalVariable(name: "apiflags", arg: 4, scope: !2192, file: !10, line: 977, type: !158)
!2201 = !DILocalVariable(name: "bytes_written", arg: 5, scope: !2192, file: !10, line: 977, type: !2195)
!2202 = !DILocalVariable(name: "vector", scope: !2192, file: !10, line: 979, type: !848)
!2203 = !DILocation(line: 976, column: 38, scope: !2192)
!2204 = !DILocation(line: 976, column: 56, scope: !2192)
!2205 = !DILocation(line: 976, column: 72, scope: !2192)
!2206 = !DILocation(line: 977, column: 27, scope: !2192)
!2207 = !DILocation(line: 977, column: 45, scope: !2192)
!2208 = !DILocation(line: 979, column: 3, scope: !2192)
!2209 = !DILocation(line: 980, column: 10, scope: !2192)
!2210 = !DILocation(line: 980, column: 14, scope: !2192)
!2211 = !{!2212, !936, i64 0}
!2212 = !{!"netvector", !936, i64 0, !1237, i64 8}
!2213 = !DILocation(line: 981, column: 10, scope: !2192)
!2214 = !DILocation(line: 981, column: 14, scope: !2192)
!2215 = !{!2212, !1237, i64 8}
!2216 = !DILocation(line: 979, column: 20, scope: !2192)
!2217 = !DILocation(line: 982, column: 10, scope: !2192)
!2218 = !DILocation(line: 983, column: 1, scope: !2192)
!2219 = !DILocation(line: 982, column: 3, scope: !2192)
!2220 = distinct !DISubprogram(name: "netconn_write_vectors_partly", scope: !10, file: !10, line: 999, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2224)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!290, !122, !2223, !190, !158, !2195}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2225 = !DILocalVariable(name: "conn", arg: 1, scope: !2220, file: !10, line: 999, type: !122)
!2226 = !DILocalVariable(name: "vectors", arg: 2, scope: !2220, file: !10, line: 999, type: !2223)
!2227 = !DILocalVariable(name: "vectorcnt", arg: 3, scope: !2220, file: !10, line: 999, type: !190)
!2228 = !DILocalVariable(name: "apiflags", arg: 4, scope: !2220, file: !10, line: 1000, type: !158)
!2229 = !DILocalVariable(name: "bytes_written", arg: 5, scope: !2220, file: !10, line: 1000, type: !2195)
!2230 = !DILocalVariable(name: "msg", scope: !2220, file: !10, line: 1002, type: !807)
!2231 = !DILocalVariable(name: "err", scope: !2220, file: !10, line: 1003, type: !290)
!2232 = !DILocalVariable(name: "dontblock", scope: !2220, file: !10, line: 1004, type: !158)
!2233 = !DILocalVariable(name: "size", scope: !2220, file: !10, line: 1005, type: !854)
!2234 = !DILocalVariable(name: "i", scope: !2220, file: !10, line: 1006, type: !67)
!2235 = !DILocalVariable(name: "limited", scope: !2236, file: !10, line: 1034, type: !2239)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !10, line: 1033, column: 32)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !10, line: 1033, column: 14)
!2238 = distinct !DILexicalBlock(scope: !2220, file: !10, line: 1031, column: 7)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2240, line: 200, baseType: !574)
!2240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!2241 = !DILocation(line: 999, column: 46, scope: !2220)
!2242 = !DILocation(line: 999, column: 70, scope: !2220)
!2243 = !DILocation(line: 999, column: 85, scope: !2220)
!2244 = !DILocation(line: 1000, column: 35, scope: !2220)
!2245 = !DILocation(line: 1000, column: 53, scope: !2220)
!2246 = !DILocation(line: 1002, column: 3, scope: !2220)
!2247 = !DILocation(line: 1008, column: 3, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !10, line: 1008, column: 3)
!2249 = distinct !DILexicalBlock(scope: !2220, file: !10, line: 1008, column: 3)
!2250 = !DILocation(line: 1008, column: 3, scope: !2249)
!2251 = !DILocation(line: 1008, column: 3, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !10, line: 1008, column: 3)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !10, line: 1008, column: 3)
!2254 = !DILocation(line: 1008, column: 3, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !10, line: 1008, column: 3)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !10, line: 1008, column: 3)
!2257 = distinct !DILexicalBlock(scope: !2252, file: !10, line: 1008, column: 3)
!2258 = !DILocation(line: 1009, column: 3, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !10, line: 1009, column: 3)
!2260 = distinct !DILexicalBlock(scope: !2220, file: !10, line: 1009, column: 3)
!2261 = !DILocation(line: 1009, column: 3, scope: !2260)
!2262 = !DILocation(line: 1009, column: 3, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !10, line: 1009, column: 3)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1009, column: 3)
!2265 = !DILocation(line: 1009, column: 3, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !10, line: 1009, column: 3)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !10, line: 1009, column: 3)
!2268 = distinct !DILexicalBlock(scope: !2263, file: !10, line: 1009, column: 3)
!2269 = !DILocation(line: 1010, column: 15, scope: !2220)
!2270 = !DILocation(line: 1010, column: 44, scope: !2220)
!2271 = !DILocation(line: 1016, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2220, file: !10, line: 1016, column: 7)
!2273 = !DILocation(line: 1016, column: 17, scope: !2272)
!2274 = !DILocation(line: 0, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !10, line: 1016, column: 36)
!2276 = !DILocation(line: 1006, column: 7, scope: !2220)
!2277 = !DILocation(line: 1005, column: 10, scope: !2220)
!2278 = !DILocation(line: 1024, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !10, line: 1024, column: 3)
!2280 = distinct !DILexicalBlock(scope: !2220, file: !10, line: 1024, column: 3)
!2281 = !DILocation(line: 1024, column: 3, scope: !2280)
!2282 = !DILocation(line: 1031, column: 7, scope: !2220)
!2283 = !DILocation(line: 1025, column: 13, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2279, file: !10, line: 1024, column: 35)
!2285 = !DILocation(line: 1025, column: 24, scope: !2284)
!2286 = !DILocation(line: 1025, column: 10, scope: !2284)
!2287 = !DILocation(line: 1026, column: 14, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !10, line: 1026, column: 9)
!2289 = !DILocation(line: 1026, column: 9, scope: !2284)
!2290 = !DILocation(line: 1028, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !10, line: 1026, column: 32)
!2292 = !DILocation(line: 1024, column: 31, scope: !2279)
!2293 = !DILocation(line: 1024, column: 3, scope: !2279)
!2294 = distinct !{!2294, !2281, !2295}
!2295 = !DILocation(line: 1030, column: 3, scope: !2280)
!2296 = !DILocation(line: 1031, column: 12, scope: !2238)
!2297 = !DILocation(line: 1032, column: 5, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2238, file: !10, line: 1031, column: 18)
!2299 = !DILocation(line: 1033, column: 19, scope: !2237)
!2300 = !DILocation(line: 1033, column: 14, scope: !2238)
!2301 = !DILocation(line: 1036, column: 9, scope: !2236)
!2302 = !DILocation(line: 0, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !10, line: 1036, column: 25)
!2304 = distinct !DILexicalBlock(scope: !2236, file: !10, line: 1036, column: 9)
!2305 = !DILocation(line: 0, scope: !2220)
!2306 = !DILocation(line: 1046, column: 24, scope: !2220)
!2307 = !DILocation(line: 1046, column: 29, scope: !2220)
!2308 = !DILocation(line: 1047, column: 30, scope: !2220)
!2309 = !DILocation(line: 1047, column: 37, scope: !2220)
!2310 = !DILocation(line: 1048, column: 30, scope: !2220)
!2311 = !DILocation(line: 1048, column: 41, scope: !2220)
!2312 = !DILocation(line: 1049, column: 30, scope: !2220)
!2313 = !DILocation(line: 1049, column: 41, scope: !2220)
!2314 = !DILocation(line: 1050, column: 30, scope: !2220)
!2315 = !DILocation(line: 1050, column: 39, scope: !2220)
!2316 = !DILocation(line: 1051, column: 30, scope: !2220)
!2317 = !DILocation(line: 1051, column: 34, scope: !2220)
!2318 = !DILocation(line: 1052, column: 30, scope: !2220)
!2319 = !DILocation(line: 1052, column: 37, scope: !2220)
!2320 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 1066, column: 9, scope: !2220)
!2322 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2321)
!2323 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2321)
!2324 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2321)
!2325 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2321)
!2326 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2321)
!2327 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2321)
!2328 = !DILocation(line: 137, column: 3, scope: !938, inlinedAt: !2321)
!2329 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2321)
!2330 = !DILocation(line: 1003, column: 9, scope: !2220)
!2331 = !DILocation(line: 1067, column: 7, scope: !2220)
!2332 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2321)
!2333 = !DILocation(line: 135, column: 5, scope: !960, inlinedAt: !2321)
!2334 = !DILocation(line: 1067, column: 11, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2220, file: !10, line: 1067, column: 7)
!2336 = !DILocation(line: 1068, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !10, line: 1067, column: 22)
!2338 = !DILocation(line: 1069, column: 51, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !10, line: 1068, column: 32)
!2340 = distinct !DILexicalBlock(scope: !2337, file: !10, line: 1068, column: 9)
!2341 = !DILocation(line: 1069, column: 22, scope: !2339)
!2342 = !{!1237, !1237, i64 0}
!2343 = !DILocation(line: 1070, column: 5, scope: !2339)
!2344 = !DILocation(line: 1073, column: 9, scope: !2337)
!2345 = !DILocation(line: 1074, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !10, line: 1074, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !10, line: 1074, column: 7)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !10, line: 1073, column: 21)
!2349 = distinct !DILexicalBlock(scope: !2337, file: !10, line: 1073, column: 9)
!2350 = !DILocation(line: 1074, column: 7, scope: !2347)
!2351 = !DILocation(line: 1074, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !10, line: 1074, column: 7)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !10, line: 1074, column: 7)
!2354 = !DILocation(line: 1074, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !10, line: 1074, column: 7)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !10, line: 1074, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !10, line: 1074, column: 7)
!2358 = !DILocation(line: 1079, column: 3, scope: !2220)
!2359 = !DILocation(line: 1080, column: 1, scope: !2220)
!2360 = distinct !DISubprogram(name: "netconn_close", scope: !10, file: !10, line: 1127, type: !1051, isLocal: false, isDefinition: true, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2361)
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "conn", arg: 1, scope: !2360, file: !10, line: 1127, type: !122)
!2363 = !DILocation(line: 1127, column: 31, scope: !2360)
!2364 = !DILocation(line: 1091, column: 40, scope: !1737, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1130, column: 10, scope: !2360)
!2366 = !DILocation(line: 1091, column: 51, scope: !1737, inlinedAt: !2365)
!2367 = !DILocation(line: 1093, column: 3, scope: !1737, inlinedAt: !2365)
!2368 = !DILocation(line: 1097, column: 3, scope: !2369, inlinedAt: !2365)
!2369 = distinct !DILexicalBlock(scope: !1747, file: !10, line: 1097, column: 3)
!2370 = !DILocation(line: 1097, column: 3, scope: !1747, inlinedAt: !2365)
!2371 = !DILocation(line: 1097, column: 3, scope: !2372, inlinedAt: !2365)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !10, line: 1097, column: 3)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !10, line: 1097, column: 3)
!2374 = !DILocation(line: 1097, column: 3, scope: !2375, inlinedAt: !2365)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !10, line: 1097, column: 3)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !10, line: 1097, column: 3)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !10, line: 1097, column: 3)
!2378 = !DILocation(line: 1100, column: 24, scope: !1737, inlinedAt: !2365)
!2379 = !DILocation(line: 1100, column: 29, scope: !1737, inlinedAt: !2365)
!2380 = !DILocation(line: 1103, column: 24, scope: !1737, inlinedAt: !2365)
!2381 = !DILocation(line: 1103, column: 28, scope: !1737, inlinedAt: !2365)
!2382 = !DILocation(line: 1103, column: 31, scope: !1737, inlinedAt: !2365)
!2383 = !DILocation(line: 1103, column: 36, scope: !1737, inlinedAt: !2365)
!2384 = !DILocation(line: 1109, column: 31, scope: !1737, inlinedAt: !2365)
!2385 = !DILocation(line: 1109, column: 42, scope: !1737, inlinedAt: !2365)
!2386 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 1113, column: 9, scope: !1737, inlinedAt: !2365)
!2388 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2387)
!2389 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2387)
!2390 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2387)
!2391 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2387)
!2392 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2387)
!2393 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2387)
!2394 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2387)
!2395 = !DILocation(line: 0, scope: !1737, inlinedAt: !2365)
!2396 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2387)
!2397 = !DILocation(line: 1094, column: 9, scope: !1737, inlinedAt: !2365)
!2398 = !DILocation(line: 1117, column: 1, scope: !1737, inlinedAt: !2365)
!2399 = !DILocation(line: 1130, column: 3, scope: !2360)
!2400 = distinct !DISubprogram(name: "netconn_shutdown", scope: !10, file: !10, line: 1165, type: !2401, isLocal: false, isDefinition: true, scopeLine: 1166, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!290, !122, !158, !158}
!2403 = !{!2404, !2405, !2406}
!2404 = !DILocalVariable(name: "conn", arg: 1, scope: !2400, file: !10, line: 1165, type: !122)
!2405 = !DILocalVariable(name: "shut_rx", arg: 2, scope: !2400, file: !10, line: 1165, type: !158)
!2406 = !DILocalVariable(name: "shut_tx", arg: 3, scope: !2400, file: !10, line: 1165, type: !158)
!2407 = !DILocation(line: 1165, column: 34, scope: !2400)
!2408 = !DILocation(line: 1165, column: 45, scope: !2400)
!2409 = !DILocation(line: 1165, column: 59, scope: !2400)
!2410 = !DILocation(line: 1091, column: 40, scope: !1737, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1167, column: 10, scope: !2400)
!2412 = !DILocation(line: 1093, column: 3, scope: !1737, inlinedAt: !2411)
!2413 = !DILocation(line: 1097, column: 3, scope: !2369, inlinedAt: !2411)
!2414 = !DILocation(line: 1097, column: 3, scope: !1747, inlinedAt: !2411)
!2415 = !DILocation(line: 1097, column: 3, scope: !2372, inlinedAt: !2411)
!2416 = !DILocation(line: 1097, column: 3, scope: !2375, inlinedAt: !2411)
!2417 = !DILocation(line: 1167, column: 81, scope: !2400)
!2418 = !DILocation(line: 1167, column: 47, scope: !2400)
!2419 = !DILocation(line: 1167, column: 78, scope: !2400)
!2420 = !DILocation(line: 1091, column: 51, scope: !1737, inlinedAt: !2411)
!2421 = !DILocation(line: 1100, column: 24, scope: !1737, inlinedAt: !2411)
!2422 = !DILocation(line: 1100, column: 29, scope: !1737, inlinedAt: !2411)
!2423 = !DILocation(line: 1103, column: 24, scope: !1737, inlinedAt: !2411)
!2424 = !DILocation(line: 1103, column: 28, scope: !1737, inlinedAt: !2411)
!2425 = !DILocation(line: 1103, column: 31, scope: !1737, inlinedAt: !2411)
!2426 = !DILocation(line: 1103, column: 36, scope: !1737, inlinedAt: !2411)
!2427 = !DILocation(line: 1109, column: 31, scope: !1737, inlinedAt: !2411)
!2428 = !DILocation(line: 1109, column: 42, scope: !1737, inlinedAt: !2411)
!2429 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1113, column: 9, scope: !1737, inlinedAt: !2411)
!2431 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2430)
!2432 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2430)
!2433 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2430)
!2434 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2430)
!2435 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2430)
!2436 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2430)
!2437 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2430)
!2438 = !DILocation(line: 0, scope: !1737, inlinedAt: !2411)
!2439 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2430)
!2440 = !DILocation(line: 1094, column: 9, scope: !1737, inlinedAt: !2411)
!2441 = !DILocation(line: 1117, column: 1, scope: !1737, inlinedAt: !2411)
!2442 = !DILocation(line: 1167, column: 3, scope: !2400)
!2443 = distinct !DISubprogram(name: "netconn_join_leave_group", scope: !10, file: !10, line: 1183, type: !2444, isLocal: false, isDefinition: true, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!290, !122, !347, !347, !54}
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452}
!2447 = !DILocalVariable(name: "conn", arg: 1, scope: !2443, file: !10, line: 1183, type: !122)
!2448 = !DILocalVariable(name: "multiaddr", arg: 2, scope: !2443, file: !10, line: 1184, type: !347)
!2449 = !DILocalVariable(name: "netif_addr", arg: 3, scope: !2443, file: !10, line: 1185, type: !347)
!2450 = !DILocalVariable(name: "join_or_leave", arg: 4, scope: !2443, file: !10, line: 1186, type: !54)
!2451 = !DILocalVariable(name: "msg", scope: !2443, file: !10, line: 1188, type: !807)
!2452 = !DILocalVariable(name: "err", scope: !2443, file: !10, line: 1189, type: !290)
!2453 = !DILocation(line: 1183, column: 42, scope: !2443)
!2454 = !DILocation(line: 1184, column: 43, scope: !2443)
!2455 = !DILocation(line: 1185, column: 43, scope: !2443)
!2456 = !DILocation(line: 1186, column: 44, scope: !2443)
!2457 = !DILocation(line: 1188, column: 3, scope: !2443)
!2458 = !DILocation(line: 1191, column: 3, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !10, line: 1191, column: 3)
!2460 = distinct !DILexicalBlock(scope: !2443, file: !10, line: 1191, column: 3)
!2461 = !DILocation(line: 1191, column: 3, scope: !2460)
!2462 = !DILocation(line: 1191, column: 3, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !10, line: 1191, column: 3)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !10, line: 1191, column: 3)
!2465 = !DILocation(line: 1191, column: 3, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !10, line: 1191, column: 3)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !10, line: 1191, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !10, line: 1191, column: 3)
!2469 = !DILocation(line: 1197, column: 17, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2443, file: !10, line: 1197, column: 7)
!2471 = !DILocation(line: 1197, column: 7, scope: !2443)
!2472 = !DILocation(line: 1199, column: 3, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !10, line: 1197, column: 26)
!2474 = !DILocation(line: 1200, column: 18, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2443, file: !10, line: 1200, column: 7)
!2476 = !DILocation(line: 1200, column: 7, scope: !2443)
!2477 = !DILocation(line: 1202, column: 3, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !10, line: 1200, column: 27)
!2479 = !DILocation(line: 1205, column: 24, scope: !2443)
!2480 = !DILocation(line: 1205, column: 29, scope: !2443)
!2481 = !DILocation(line: 1206, column: 24, scope: !2443)
!2482 = !DILocation(line: 1206, column: 28, scope: !2443)
!2483 = !DILocation(line: 1206, column: 31, scope: !2443)
!2484 = !DILocation(line: 1206, column: 41, scope: !2443)
!2485 = !DILocation(line: 1207, column: 31, scope: !2443)
!2486 = !DILocation(line: 1207, column: 42, scope: !2443)
!2487 = !DILocation(line: 1208, column: 31, scope: !2443)
!2488 = !DILocation(line: 1208, column: 45, scope: !2443)
!2489 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 1209, column: 9, scope: !2443)
!2491 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2490)
!2492 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2490)
!2493 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2490)
!2494 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2490)
!2495 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2490)
!2496 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2490)
!2497 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2490)
!2498 = !DILocation(line: 0, scope: !2443)
!2499 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2490)
!2500 = !DILocation(line: 1189, column: 9, scope: !2443)
!2501 = !DILocation(line: 1213, column: 1, scope: !2443)
!2502 = distinct !DISubprogram(name: "netconn_join_leave_group_netif", scope: !10, file: !10, line: 1225, type: !2503, isLocal: false, isDefinition: true, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!290, !122, !347, !158, !54}
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511}
!2506 = !DILocalVariable(name: "conn", arg: 1, scope: !2502, file: !10, line: 1225, type: !122)
!2507 = !DILocalVariable(name: "multiaddr", arg: 2, scope: !2502, file: !10, line: 1226, type: !347)
!2508 = !DILocalVariable(name: "if_idx", arg: 3, scope: !2502, file: !10, line: 1227, type: !158)
!2509 = !DILocalVariable(name: "join_or_leave", arg: 4, scope: !2502, file: !10, line: 1228, type: !54)
!2510 = !DILocalVariable(name: "msg", scope: !2502, file: !10, line: 1230, type: !807)
!2511 = !DILocalVariable(name: "err", scope: !2502, file: !10, line: 1231, type: !290)
!2512 = !DILocation(line: 1225, column: 48, scope: !2502)
!2513 = !DILocation(line: 1226, column: 49, scope: !2502)
!2514 = !DILocation(line: 1227, column: 37, scope: !2502)
!2515 = !DILocation(line: 1228, column: 50, scope: !2502)
!2516 = !DILocation(line: 1230, column: 3, scope: !2502)
!2517 = !DILocation(line: 1233, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !10, line: 1233, column: 3)
!2519 = distinct !DILexicalBlock(scope: !2502, file: !10, line: 1233, column: 3)
!2520 = !DILocation(line: 1233, column: 3, scope: !2519)
!2521 = !DILocation(line: 1233, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !10, line: 1233, column: 3)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !10, line: 1233, column: 3)
!2524 = !DILocation(line: 1233, column: 3, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !10, line: 1233, column: 3)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !10, line: 1233, column: 3)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !10, line: 1233, column: 3)
!2528 = !DILocation(line: 1239, column: 17, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2502, file: !10, line: 1239, column: 7)
!2530 = !DILocation(line: 1239, column: 7, scope: !2502)
!2531 = !DILocation(line: 1241, column: 3, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !10, line: 1239, column: 26)
!2533 = !DILocation(line: 1242, column: 14, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2502, file: !10, line: 1242, column: 7)
!2535 = !DILocation(line: 1242, column: 7, scope: !2502)
!2536 = !DILocation(line: 1247, column: 24, scope: !2502)
!2537 = !DILocation(line: 1247, column: 29, scope: !2502)
!2538 = !DILocation(line: 1248, column: 24, scope: !2502)
!2539 = !DILocation(line: 1248, column: 28, scope: !2502)
!2540 = !DILocation(line: 1248, column: 31, scope: !2502)
!2541 = !DILocation(line: 1248, column: 41, scope: !2502)
!2542 = !DILocation(line: 1249, column: 31, scope: !2502)
!2543 = !DILocation(line: 1249, column: 38, scope: !2502)
!2544 = !DILocation(line: 1250, column: 31, scope: !2502)
!2545 = !DILocation(line: 1250, column: 45, scope: !2502)
!2546 = !DILocation(line: 120, column: 34, scope: !938, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 1251, column: 9, scope: !2502)
!2548 = !DILocation(line: 120, column: 54, scope: !938, inlinedAt: !2547)
!2549 = !DILocation(line: 133, column: 45, scope: !938, inlinedAt: !2547)
!2550 = !DILocation(line: 133, column: 9, scope: !938, inlinedAt: !2547)
!2551 = !DILocation(line: 122, column: 9, scope: !938, inlinedAt: !2547)
!2552 = !DILocation(line: 134, column: 11, scope: !953, inlinedAt: !2547)
!2553 = !DILocation(line: 134, column: 7, scope: !938, inlinedAt: !2547)
!2554 = !DILocation(line: 135, column: 20, scope: !960, inlinedAt: !2547)
!2555 = !DILocation(line: 0, scope: !2502)
!2556 = !DILocation(line: 138, column: 1, scope: !938, inlinedAt: !2547)
!2557 = !DILocation(line: 1231, column: 9, scope: !2502)
!2558 = !DILocation(line: 1254, column: 3, scope: !2502)
!2559 = !DILocation(line: 0, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2534, file: !10, line: 1242, column: 33)
!2561 = !DILocation(line: 1255, column: 1, scope: !2502)
!2562 = distinct !DISubprogram(name: "netconn_gethostbyname_addrtype", scope: !10, file: !10, line: 1273, type: !2563, isLocal: false, isDefinition: true, scopeLine: 1278, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!290, !6, !838, !158}
!2565 = !{!2566, !2567, !2568, !2569, !2579, !2580, !2581}
!2566 = !DILocalVariable(name: "name", arg: 1, scope: !2562, file: !10, line: 1273, type: !6)
!2567 = !DILocalVariable(name: "addr", arg: 2, scope: !2562, file: !10, line: 1273, type: !838)
!2568 = !DILocalVariable(name: "dns_addrtype", arg: 3, scope: !2562, file: !10, line: 1273, type: !158)
!2569 = !DILocalVariable(name: "msg", scope: !2562, file: !10, line: 1279, type: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_api_msg", file: !808, line: 169, size: 320, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2577}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2570, file: !808, line: 174, baseType: !6, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2570, file: !808, line: 177, baseType: !838, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dns_addrtype", scope: !2570, file: !808, line: 180, baseType: !158, size: 8, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2570, file: !808, line: 184, baseType: !2576, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2570, file: !808, line: 186, baseType: !2578, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2579 = !DILocalVariable(name: "sem", scope: !2562, file: !10, line: 1281, type: !355)
!2580 = !DILocalVariable(name: "err", scope: !2562, file: !10, line: 1283, type: !290)
!2581 = !DILocalVariable(name: "cberr", scope: !2562, file: !10, line: 1284, type: !290)
!2582 = !DILocation(line: 1273, column: 44, scope: !2562)
!2583 = !DILocation(line: 1273, column: 61, scope: !2562)
!2584 = !DILocation(line: 1273, column: 72, scope: !2562)
!2585 = !DILocation(line: 1279, column: 3, scope: !2562)
!2586 = !DILocation(line: 1281, column: 3, scope: !2562)
!2587 = !DILocation(line: 1283, column: 9, scope: !2562)
!2588 = !DILocation(line: 1283, column: 3, scope: !2562)
!2589 = !DILocation(line: 1286, column: 3, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !10, line: 1286, column: 3)
!2591 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1286, column: 3)
!2592 = !DILocation(line: 1286, column: 3, scope: !2591)
!2593 = !DILocation(line: 1286, column: 3, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !10, line: 1286, column: 3)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !10, line: 1286, column: 3)
!2596 = !DILocation(line: 1286, column: 3, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !10, line: 1286, column: 3)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !10, line: 1286, column: 3)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !10, line: 1286, column: 3)
!2600 = !DILocation(line: 1287, column: 3, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !10, line: 1287, column: 3)
!2602 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1287, column: 3)
!2603 = !DILocation(line: 1287, column: 3, scope: !2602)
!2604 = !DILocation(line: 1287, column: 3, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !10, line: 1287, column: 3)
!2606 = distinct !DILexicalBlock(scope: !2601, file: !10, line: 1287, column: 3)
!2607 = !DILocation(line: 1287, column: 3, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !10, line: 1287, column: 3)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !10, line: 1287, column: 3)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !10, line: 1287, column: 3)
!2611 = !DILocation(line: 1309, column: 7, scope: !2562)
!2612 = !DILocation(line: 1309, column: 11, scope: !2562)
!2613 = !{!2614, !936, i64 32}
!2614 = !{!"dns_api_msg", !936, i64 0, !936, i64 8, !930, i64 16, !936, i64 24, !936, i64 32}
!2615 = !DILocation(line: 1310, column: 7, scope: !2562)
!2616 = !DILocation(line: 1310, column: 11, scope: !2562)
!2617 = !{!2614, !936, i64 24}
!2618 = !DILocation(line: 1311, column: 20, scope: !2562)
!2619 = !DILocation(line: 1311, column: 25, scope: !2562)
!2620 = !{!2614, !936, i64 8}
!2621 = !DILocation(line: 1312, column: 20, scope: !2562)
!2622 = !DILocation(line: 1312, column: 25, scope: !2562)
!2623 = !{!2614, !936, i64 0}
!2624 = !DILocation(line: 1315, column: 20, scope: !2562)
!2625 = !DILocation(line: 1315, column: 33, scope: !2562)
!2626 = !{!2614, !930, i64 16}
!2627 = !DILocation(line: 1320, column: 9, scope: !2562)
!2628 = !DILocation(line: 1320, column: 7, scope: !2562)
!2629 = !DILocation(line: 1321, column: 11, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1321, column: 7)
!2631 = !DILocation(line: 1321, column: 7, scope: !2562)
!2632 = !DILocation(line: 1327, column: 11, scope: !2562)
!2633 = !DILocation(line: 1284, column: 9, scope: !2562)
!2634 = !DILocation(line: 1329, column: 16, scope: !2562)
!2635 = !DILocation(line: 1329, column: 3, scope: !2562)
!2636 = !DILocation(line: 1331, column: 13, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2562, file: !10, line: 1331, column: 7)
!2638 = !DILocation(line: 1331, column: 7, scope: !2562)
!2639 = !DILocation(line: 1342, column: 10, scope: !2562)
!2640 = !DILocation(line: 0, scope: !2562)
!2641 = !DILocation(line: 0, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2630, file: !10, line: 1321, column: 22)
!2643 = !DILocation(line: 1343, column: 1, scope: !2562)
