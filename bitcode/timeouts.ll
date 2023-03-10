; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/timeouts.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/timeouts.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lwip_cyclic_timer = type { i32, void ()* }
%struct.tcp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb*, i8*, i32, i8, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.tcp_seg*, %struct.tcp_seg*, %struct.tcp_seg*, %struct.pbuf*, %struct.tcp_pcb_listen*, i8 (i8*, %struct.tcp_pcb*, i16)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, i8)*, i8 (i8*, %struct.tcp_pcb*)*, void (i8*, i8)*, i32, i8, i8, i8, i8, i8, i8 }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.tcp_seg = type { %struct.tcp_seg*, %struct.pbuf*, i16, i8, %struct.tcp_hdr* }
%struct.tcp_hdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.tcp_pcb_listen = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb_listen*, i8*, i32, i8, i16, i8 (i8*, %struct.tcp_pcb*, i8)* }
%struct.sys_timeo = type { %struct.sys_timeo*, i32, void (i8*)*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@lwip_cyclic_timers = dso_local constant [7 x %struct.lwip_cyclic_timer] [%struct.lwip_cyclic_timer { i32 250, void ()* @tcp_tmr }, %struct.lwip_cyclic_timer { i32 1000, void ()* @ip_reass_tmr }, %struct.lwip_cyclic_timer { i32 1000, void ()* @etharp_tmr }, %struct.lwip_cyclic_timer { i32 1000, void ()* @dns_tmr }, %struct.lwip_cyclic_timer { i32 1000, void ()* @nd6_tmr }, %struct.lwip_cyclic_timer { i32 1000, void ()* @ip6_reass_tmr }, %struct.lwip_cyclic_timer { i32 100, void ()* @mld6_tmr }], align 16, !dbg !0
@lwip_num_cyclic_timers = dso_local local_unnamed_addr constant i32 7, align 4, !dbg !68
@tcpip_tcp_timer_active = internal unnamed_addr global i1 false, align 4, !dbg !113
@tcp_active_pcbs = external dso_local local_unnamed_addr global %struct.tcp_pcb*, align 8
@tcp_tw_pcbs = external dso_local local_unnamed_addr global %struct.tcp_pcb*, align 8
@.str = private unnamed_addr constant [54 x i8] c"Timeout time too long, max is LWIP_UINT32_MAX/4 msecs\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@next_timeout = internal unnamed_addr global %struct.sys_timeo* null, align 8, !dbg !72
@current_timeout_due_time = internal unnamed_addr global i32 0, align 4, !dbg !74
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !78
@uk_pr_crit.__str.4 = internal global [11 x i8] c"timeouts.c\00", section ".data_shared", align 1, !dbg !105
@.str.5 = private unnamed_addr constant [61 x i8] c"sys_timeout: timeout != NULL, pool MEMP_SYS_TIMEOUT is empty\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone
declare dso_local void @tcp_tmr() #0

; Function Attrs: noredzone
declare dso_local void @ip_reass_tmr() #0

; Function Attrs: noredzone
declare dso_local void @etharp_tmr() #0

; Function Attrs: noredzone
declare dso_local void @dns_tmr() #0

; Function Attrs: noredzone
declare dso_local void @nd6_tmr() #0

; Function Attrs: noredzone
declare dso_local void @ip6_reass_tmr() #0

; Function Attrs: noredzone
declare dso_local void @mld6_tmr() #0

; Function Attrs: noredzone nounwind
define dso_local void @tcp_timer_needed() local_unnamed_addr #1 !dbg !118 {
  %1 = load i1, i1* @tcpip_tcp_timer_active, align 4
  br i1 %1, label %11, label %2, !dbg !120

; <label>:2:                                      ; preds = %0
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !122, !tbaa !123
  %4 = icmp ne %struct.tcp_pcb* %3, null, !dbg !122
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !127
  %6 = icmp ne %struct.tcp_pcb* %5, null, !dbg !127
  %7 = or i1 %4, %6, !dbg !128
  br i1 %7, label %8, label %11, !dbg !128

; <label>:8:                                      ; preds = %2
  store i1 true, i1* @tcpip_tcp_timer_active, align 4
  %9 = tail call i32 @sys_now() #7, !dbg !142
  %10 = add i32 %9, 250, !dbg !143
  tail call fastcc void @sys_timeout_abs(i32 %10, void (i8*)* nonnull @tcpip_tcp_timer, i8* null) #7, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  br label %11, !dbg !147

; <label>:11:                                     ; preds = %2, %8, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  ret void, !dbg !148
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_timeout(i32, void (i8*)*, i8*) local_unnamed_addr #1 !dbg !130 {
  %4 = icmp ult i32 %0, 1073741824, !dbg !152
  br i1 %4, label %6, label %5, !dbg !155

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #8, !dbg !156
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !159
  tail call void @ukplat_terminate(i32 3) #9, !dbg !159
  unreachable, !dbg !159

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @sys_now() #7, !dbg !163
  %8 = add i32 %7, %0, !dbg !164
  tail call fastcc void @sys_timeout_abs(i32 %8, void (i8*)* %1, i8* %2) #8, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  ret void, !dbg !167
}

; Function Attrs: noredzone nounwind
define internal void @tcpip_tcp_timer(i8* nocapture readnone) #1 !dbg !168 {
  tail call void @tcp_tmr() #7, !dbg !172
  %2 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !173, !tbaa !123
  %3 = icmp ne %struct.tcp_pcb* %2, null, !dbg !173
  %4 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !175
  %5 = icmp ne %struct.tcp_pcb* %4, null, !dbg !175
  %6 = or i1 %3, %5, !dbg !176
  br i1 %6, label %7, label %10, !dbg !176

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @sys_now() #7, !dbg !182
  %9 = add i32 %8, 250, !dbg !183
  tail call fastcc void @sys_timeout_abs(i32 %9, void (i8*)* nonnull @tcpip_tcp_timer, i8* null) #7, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br label %11, !dbg !187

; <label>:10:                                     ; preds = %1
  store i1 false, i1* @tcpip_tcp_timer_active, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  ret void, !dbg !188
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_timeouts_init() local_unnamed_addr #1 !dbg !189 {
  %1 = tail call i32 @sys_now() #7, !dbg !205
  %2 = add i32 %1, 1000, !dbg !206
  tail call fastcc void @sys_timeout_abs(i32 %2, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 1) to i8*)) #7, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %3 = tail call i32 @sys_now() #7, !dbg !205
  %4 = add i32 %3, 1000, !dbg !206
  tail call fastcc void @sys_timeout_abs(i32 %4, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 2) to i8*)) #7, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %5 = tail call i32 @sys_now() #7, !dbg !205
  %6 = add i32 %5, 1000, !dbg !206
  tail call fastcc void @sys_timeout_abs(i32 %6, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 3) to i8*)) #7, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %7 = tail call i32 @sys_now() #7, !dbg !205
  %8 = add i32 %7, 1000, !dbg !206
  tail call fastcc void @sys_timeout_abs(i32 %8, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 4) to i8*)) #7, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %9 = tail call i32 @sys_now() #7, !dbg !205
  %10 = add i32 %9, 1000, !dbg !206
  tail call fastcc void @sys_timeout_abs(i32 %10, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 5) to i8*)) #7, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %11 = tail call i32 @sys_now() #7, !dbg !205
  %12 = add i32 %11, 100, !dbg !206
  tail call fastcc void @sys_timeout_abs(i32 %12, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 6) to i8*)) #7, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  ret void, !dbg !210
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define internal void @lwip_cyclic_timer(i8*) #1 !dbg !211 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !219
  %3 = bitcast i8* %2 to void ()**, !dbg !219
  %4 = load void ()*, void ()** %3, align 8, !dbg !219, !tbaa !220
  tail call void %4() #7, !dbg !223
  %5 = tail call i32 @sys_now() #7, !dbg !224
  %6 = load i32, i32* @current_timeout_due_time, align 4, !dbg !226, !tbaa !227
  %7 = bitcast i8* %0 to i32*, !dbg !228
  %8 = load i32, i32* %7, align 8, !dbg !228, !tbaa !229
  %9 = add i32 %8, %6, !dbg !230
  %10 = sub i32 %9, %5, !dbg !232
  %11 = icmp slt i32 %10, 0, !dbg !232
  br i1 %11, label %12, label %14, !dbg !234

; <label>:12:                                     ; preds = %1
  %13 = add i32 %8, %5, !dbg !235
  tail call fastcc void @sys_timeout_abs(i32 %13, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull %0) #8, !dbg !237
  br label %15, !dbg !238

; <label>:14:                                     ; preds = %1
  tail call fastcc void @sys_timeout_abs(i32 %9, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull %0) #8, !dbg !239
  br label %15

; <label>:15:                                     ; preds = %14, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  ret void, !dbg !241
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !80 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !243
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !243
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !245
  call void @llvm.va_start(i8* nonnull %3), !dbg !245
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !246
  call void @llvm.va_end(i8* nonnull %3), !dbg !249
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  ret void, !dbg !250
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_now() local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define internal fastcc void @sys_timeout_abs(i32, void (i8*)*, i8*) unnamed_addr #1 !dbg !251 {
  %4 = tail call i8* @memp_malloc(i32 10) #7, !dbg !261
  %5 = icmp eq i8* %4, null, !dbg !262
  br i1 %5, label %6, label %7, !dbg !264

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !266
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !272
  tail call void @ukplat_terminate(i32 3) #9, !dbg !272
  unreachable, !dbg !272

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to %struct.sys_timeo**, !dbg !276
  store %struct.sys_timeo* null, %struct.sys_timeo** %8, align 8, !dbg !277, !tbaa !278
  %9 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !280
  %10 = bitcast i8* %9 to void (i8*)**, !dbg !280
  store void (i8*)* %1, void (i8*)** %10, align 8, !dbg !281, !tbaa !282
  %11 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !283
  %12 = bitcast i8* %11 to i8**, !dbg !283
  store i8* %2, i8** %12, align 8, !dbg !284, !tbaa !285
  %13 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !286
  %14 = bitcast i8* %13 to i32*, !dbg !286
  store i32 %0, i32* %14, align 8, !dbg !287, !tbaa !288
  %15 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !289, !tbaa !123
  %16 = icmp eq %struct.sys_timeo* %15, null, !dbg !291
  br i1 %16, label %37, label %17, !dbg !292

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %15, i64 0, i32 1, !dbg !293
  %19 = load i32, i32* %18, align 8, !dbg !293, !tbaa !288
  %20 = sub i32 %0, %19, !dbg !293
  %21 = icmp slt i32 %20, 0, !dbg !293
  br i1 %21, label %22, label %23, !dbg !295

; <label>:22:                                     ; preds = %17
  store %struct.sys_timeo* %15, %struct.sys_timeo** %8, align 8, !dbg !296, !tbaa !278
  br label %37, !dbg !298

; <label>:23:                                     ; preds = %17, %28
  %24 = phi %struct.sys_timeo* [ %26, %28 ], [ %15, %17 ], !dbg !299
  %25 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %24, i64 0, i32 0, !dbg !304
  %26 = load %struct.sys_timeo*, %struct.sys_timeo** %25, align 8, !dbg !304, !tbaa !278
  %27 = icmp eq %struct.sys_timeo* %26, null, !dbg !307
  br i1 %27, label %33, label %28, !dbg !308

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %26, i64 0, i32 1, !dbg !309
  %30 = load i32, i32* %29, align 8, !dbg !309, !tbaa !288
  %31 = sub i32 %0, %30, !dbg !309
  %32 = icmp slt i32 %31, 0, !dbg !309
  br i1 %32, label %33, label %23, !dbg !310, !llvm.loop !311

; <label>:33:                                     ; preds = %28, %23
  %34 = ptrtoint %struct.sys_timeo* %26 to i64, !dbg !308
  %35 = bitcast i8* %4 to i64*, !dbg !314
  store i64 %34, i64* %35, align 8, !dbg !314, !tbaa !278
  %36 = bitcast %struct.sys_timeo* %24 to i8**, !dbg !316
  br label %37, !dbg !317

; <label>:37:                                     ; preds = %7, %22, %33
  %38 = phi i8** [ bitcast (%struct.sys_timeo** @next_timeout to i8**), %22 ], [ %36, %33 ], [ bitcast (%struct.sys_timeo** @next_timeout to i8**), %7 ]
  store i8* %4, i8** %38, align 8, !dbg !318, !tbaa !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  ret void, !dbg !320
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_untimeout(void (i8*)* readnone, i8* readnone) local_unnamed_addr #1 !dbg !321 {
  %3 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !331, !tbaa !123
  %4 = icmp eq %struct.sys_timeo* %3, null, !dbg !333
  br i1 %4, label %26, label %5, !dbg !334

; <label>:5:                                      ; preds = %2, %22
  %6 = phi %struct.sys_timeo* [ %24, %22 ], [ %3, %2 ]
  %7 = phi %struct.sys_timeo* [ %6, %22 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %6, i64 0, i32 2, !dbg !337
  %9 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !337, !tbaa !282
  %10 = icmp eq void (i8*)* %9, %0, !dbg !342
  br i1 %10, label %11, label %22, !dbg !343

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %6, i64 0, i32 3, !dbg !344
  %13 = load i8*, i8** %12, align 8, !dbg !344, !tbaa !285
  %14 = icmp eq i8* %13, %1, !dbg !345
  br i1 %14, label %15, label %22, !dbg !346

; <label>:15:                                     ; preds = %11
  %16 = icmp eq %struct.sys_timeo* %7, null, !dbg !347
  %17 = bitcast %struct.sys_timeo* %6 to i64*, !dbg !350
  %18 = load i64, i64* %17, align 8, !dbg !350, !tbaa !278
  %19 = bitcast %struct.sys_timeo* %7 to i64*, !dbg !352
  %20 = select i1 %16, i64* bitcast (%struct.sys_timeo** @next_timeout to i64*), i64* %19, !dbg !353
  store i64 %18, i64* %20, align 8, !dbg !354, !tbaa !123
  %21 = bitcast %struct.sys_timeo* %6 to i8*, !dbg !356
  tail call void @memp_free(i32 10, i8* %21) #7, !dbg !357
  br label %26, !dbg !358

; <label>:22:                                     ; preds = %5, %11
  %23 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %6, i64 0, i32 0, !dbg !359
  %24 = load %struct.sys_timeo*, %struct.sys_timeo** %23, align 8, !dbg !359, !tbaa !278
  %25 = icmp eq %struct.sys_timeo* %24, null, !dbg !360
  br i1 %25, label %26, label %5, !dbg !361, !llvm.loop !362

; <label>:26:                                     ; preds = %22, %2, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  ret void, !dbg !364
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define dso_local void @sys_check_timeouts() local_unnamed_addr #1 !dbg !365 {
  %1 = tail call i32 @sys_now() #7, !dbg !372
  %2 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !374, !tbaa !123
  %3 = icmp eq %struct.sys_timeo* %2, null, !dbg !376
  br i1 %3, label %23, label %4, !dbg !378

; <label>:4:                                      ; preds = %0, %20
  %5 = phi %struct.sys_timeo* [ %21, %20 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !379
  %7 = load i32, i32* %6, align 8, !dbg !379, !tbaa !288
  %8 = sub i32 %1, %7, !dbg !379
  %9 = icmp slt i32 %8, 0, !dbg !379
  br i1 %9, label %23, label %10, !dbg !381

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.sys_timeo* %5 to i64*, !dbg !382
  %12 = load i64, i64* %11, align 8, !dbg !382, !tbaa !278
  store i64 %12, i64* bitcast (%struct.sys_timeo** @next_timeout to i64*), align 8, !dbg !383, !tbaa !123
  %13 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 2, !dbg !384
  %14 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !384, !tbaa !282
  %15 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 3, !dbg !386
  %16 = load i8*, i8** %15, align 8, !dbg !386, !tbaa !285
  store i32 %7, i32* @current_timeout_due_time, align 4, !dbg !388, !tbaa !227
  %17 = bitcast %struct.sys_timeo* %5 to i8*, !dbg !389
  tail call void @memp_free(i32 10, i8* %17) #7, !dbg !390
  %18 = icmp eq void (i8*)* %14, null, !dbg !391
  br i1 %18, label %20, label %19, !dbg !393

; <label>:19:                                     ; preds = %10
  tail call void %14(i8* %16) #7, !dbg !394
  br label %20, !dbg !396

; <label>:20:                                     ; preds = %19, %10
  %21 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !374, !tbaa !123
  %22 = icmp eq %struct.sys_timeo* %21, null, !dbg !376
  br i1 %22, label %23, label %4, !dbg !378

; <label>:23:                                     ; preds = %20, %4, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret void, !dbg !397
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_restart_timeouts() local_unnamed_addr #1 !dbg !398 {
  %1 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !403, !tbaa !123
  %2 = icmp eq %struct.sys_timeo* %1, null, !dbg !405
  br i1 %2, label %24, label %3, !dbg !406

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @sys_now() #7, !dbg !407
  %5 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !409, !tbaa !123
  %6 = icmp eq %struct.sys_timeo* %5, null, !dbg !411
  br i1 %6, label %24, label %7, !dbg !414

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !415
  %9 = load i32, i32* %8, align 8, !dbg !415, !tbaa !288
  %10 = sub i32 %4, %9
  %11 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !417
  store i32 %4, i32* %11, align 8, !dbg !419, !tbaa !288
  %12 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 0, !dbg !420
  %13 = load %struct.sys_timeo*, %struct.sys_timeo** %12, align 8, !dbg !420, !tbaa !278
  %14 = icmp eq %struct.sys_timeo* %13, null, !dbg !411
  br i1 %14, label %24, label %15, !dbg !414, !llvm.loop !421

; <label>:15:                                     ; preds = %7, %15
  %16 = phi %struct.sys_timeo* [ %22, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 1
  %18 = load i32, i32* %17, align 8, !dbg !417, !tbaa !288
  %19 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 1, !dbg !417
  %20 = add i32 %10, %18, !dbg !423
  store i32 %20, i32* %19, align 8, !dbg !419, !tbaa !288
  %21 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 0, !dbg !420
  %22 = load %struct.sys_timeo*, %struct.sys_timeo** %21, align 8, !dbg !420, !tbaa !278
  %23 = icmp eq %struct.sys_timeo* %22, null, !dbg !411
  br i1 %23, label %24, label %15, !dbg !414, !llvm.loop !421

; <label>:24:                                     ; preds = %15, %7, %3, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  ret void, !dbg !424
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_timeouts_sleeptime() local_unnamed_addr #1 !dbg !425 {
  %1 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !433, !tbaa !123
  %2 = icmp eq %struct.sys_timeo* %1, null, !dbg !435
  br i1 %2, label %11, label %3, !dbg !436

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @sys_now() #7, !dbg !437
  %5 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !439, !tbaa !123
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !439
  %7 = load i32, i32* %6, align 8, !dbg !439, !tbaa !288
  %8 = sub i32 %7, %4, !dbg !439
  %9 = icmp sgt i32 %8, 0, !dbg !440
  %10 = select i1 %9, i32 %8, i32 0, !dbg !440
  br label %11, !dbg !440

; <label>:11:                                     ; preds = %3, %0
  %12 = phi i32 [ -1, %0 ], [ %10, %3 ], !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  ret i32 %12, !dbg !442
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #0

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!114, !115, !116}
!llvm.ident = !{!117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lwip_cyclic_timers", scope: !2, file: !3, line: 77, type: !110, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !67)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/timeouts.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 52, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!16 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!34 = !{!35, !36, !39, !45, !56}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !37, line: 49, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !40, line: 129, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !42, line: 48, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 79, baseType: !7)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwip_cyclic_timer", file: !48, line: 70, size: 128, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/timeouts.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "interval_ms", scope: !47, file: !48, line: 71, baseType: !39, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !47, file: !48, line: 72, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwip_cyclic_timer_handler", file: !48, line: 66, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_timeo", file: !48, line: 93, size: 256, elements: !58)
!58 = !{!59, !60, !61, !66}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !48, line: 94, baseType: !56, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !57, file: !48, line: 95, baseType: !39, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !57, file: !48, line: 96, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_timeout_handler", file: !48, line: 91, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !35}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !57, file: !48, line: 97, baseType: !35, size: 64, offset: 192)
!67 = !{!0, !68, !72, !74, !76, !78, !105}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "lwip_num_cyclic_timers", scope: !2, file: !3, line: 117, type: !70, isLocal: false, isDefinition: true)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "next_timeout", scope: !2, file: !3, line: 122, type: !56, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "current_timeout_due_time", scope: !2, file: !3, line: 124, type: !39, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "tcpip_tcp_timer_active", scope: !2, file: !3, line: 136, type: !71, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "__str", scope: !80, file: !81, line: 198, type: !102, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "uk_pr_crit", scope: !81, file: !81, line: 194, type: !82, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !87)
!81 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84, null}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!87 = !{!88, !89}
!88 = !DILocalVariable(name: "fmt", arg: 1, scope: !80, file: !81, line: 194, type: !84)
!89 = !DILocalVariable(name: "argp", scope: !80, file: !81, line: 196, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !91, line: 32, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !93)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 192, elements: !100)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !94, file: !3, line: 196, baseType: !7, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !94, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !94, file: !3, line: 196, baseType: !35, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !94, file: !3, line: 196, baseType: !35, size: 64, offset: 128)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__str", scope: !80, file: !81, line: 198, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 88, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 11)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 896, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 7)
!113 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!114 = !{i32 2, !"Dwarf Version", i32 4}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{i32 1, !"wchar_size", i32 4}
!117 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!118 = distinct !DISubprogram(name: "tcp_timer_needed", scope: !3, file: !3, line: 166, type: !54, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !119)
!119 = !{}
!120 = !DILocation(line: 171, column: 31, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !3, line: 171, column: 7)
!122 = !DILocation(line: 171, column: 35, scope: !121)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 171, column: 54, scope: !121)
!128 = !DILocation(line: 171, column: 51, scope: !121)
!129 = !DILocalVariable(name: "msecs", arg: 1, scope: !130, file: !3, line: 290, type: !39)
!130 = distinct !DISubprogram(name: "sys_timeout", scope: !3, file: !3, line: 290, type: !131, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !39, !62, !35}
!133 = !{!129, !134, !135, !136}
!134 = !DILocalVariable(name: "handler", arg: 2, scope: !130, file: !3, line: 290, type: !62)
!135 = !DILocalVariable(name: "arg", arg: 3, scope: !130, file: !3, line: 290, type: !35)
!136 = !DILocalVariable(name: "next_timeout_time", scope: !130, file: !3, line: 293, type: !39)
!137 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !138)
!138 = distinct !DILocation(line: 174, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !121, file: !3, line: 171, column: 68)
!140 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !138)
!141 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !138)
!142 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !138)
!143 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !138)
!144 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !138)
!145 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !138)
!146 = !DILocation(line: 306, column: 1, scope: !130, inlinedAt: !138)
!147 = !DILocation(line: 175, column: 3, scope: !139)
!148 = !DILocation(line: 176, column: 1, scope: !118)
!149 = !DILocation(line: 290, column: 19, scope: !130)
!150 = !DILocation(line: 290, column: 46, scope: !130)
!151 = !DILocation(line: 290, column: 61, scope: !130)
!152 = !DILocation(line: 297, column: 3, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 297, column: 3)
!154 = distinct !DILexicalBlock(scope: !130, file: !3, line: 297, column: 3)
!155 = !DILocation(line: 297, column: 3, scope: !154)
!156 = !DILocation(line: 297, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 297, column: 3)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 297, column: 3)
!159 = !DILocation(line: 297, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 297, column: 3)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 297, column: 3)
!162 = distinct !DILexicalBlock(scope: !157, file: !3, line: 297, column: 3)
!163 = !DILocation(line: 299, column: 31, scope: !130)
!164 = !DILocation(line: 299, column: 41, scope: !130)
!165 = !DILocation(line: 293, column: 9, scope: !130)
!166 = !DILocation(line: 304, column: 3, scope: !130)
!167 = !DILocation(line: 306, column: 1, scope: !130)
!168 = distinct !DISubprogram(name: "tcpip_tcp_timer", scope: !3, file: !3, line: 144, type: !64, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "arg", arg: 1, scope: !168, file: !3, line: 144, type: !35)
!171 = !DILocation(line: 144, column: 23, scope: !168)
!172 = !DILocation(line: 149, column: 3, scope: !168)
!173 = !DILocation(line: 151, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !3, line: 151, column: 7)
!175 = !DILocation(line: 151, column: 26, scope: !174)
!176 = !DILocation(line: 151, column: 23, scope: !174)
!177 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !178)
!178 = distinct !DILocation(line: 153, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !3, line: 151, column: 39)
!180 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !178)
!181 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !178)
!182 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !178)
!183 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !178)
!184 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !178)
!185 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !178)
!186 = !DILocation(line: 306, column: 1, scope: !130, inlinedAt: !178)
!187 = !DILocation(line: 154, column: 3, scope: !179)
!188 = !DILocation(line: 158, column: 1, scope: !168)
!189 = distinct !DISubprogram(name: "sys_timeouts_init", scope: !3, file: !3, line: 264, type: !54, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !190)
!190 = !{!191}
!191 = !DILocalVariable(name: "i", scope: !189, file: !3, line: 266, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 40, baseType: !194)
!193 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !195, line: 129, baseType: !196)
!195 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!196 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!197 = !DILocation(line: 266, column: 10, scope: !189)
!198 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !199)
!199 = distinct !DILocation(line: 271, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 268, column: 77)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 268, column: 3)
!202 = distinct !DILexicalBlock(scope: !189, file: !3, line: 268, column: 3)
!203 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !199)
!204 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !199)
!205 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !199)
!206 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !199)
!207 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !199)
!208 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !199)
!209 = !DILocation(line: 306, column: 1, scope: !130, inlinedAt: !199)
!210 = !DILocation(line: 273, column: 1, scope: !189)
!211 = distinct !DISubprogram(name: "lwip_cyclic_timer", scope: !3, file: !3, line: 232, type: !64, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DILocalVariable(name: "arg", arg: 1, scope: !211, file: !3, line: 232, type: !35)
!214 = !DILocalVariable(name: "now", scope: !211, file: !3, line: 234, type: !39)
!215 = !DILocalVariable(name: "next_timeout_time", scope: !211, file: !3, line: 235, type: !39)
!216 = !DILocalVariable(name: "cyclic", scope: !211, file: !3, line: 236, type: !45)
!217 = !DILocation(line: 232, column: 25, scope: !211)
!218 = !DILocation(line: 236, column: 35, scope: !211)
!219 = !DILocation(line: 241, column: 11, scope: !211)
!220 = !{!221, !124, i64 8}
!221 = !{!"lwip_cyclic_timer", !222, i64 0, !124, i64 8}
!222 = !{!"int", !125, i64 0}
!223 = !DILocation(line: 241, column: 3, scope: !211)
!224 = !DILocation(line: 243, column: 9, scope: !211)
!225 = !DILocation(line: 234, column: 9, scope: !211)
!226 = !DILocation(line: 244, column: 31, scope: !211)
!227 = !{!222, !222, i64 0}
!228 = !DILocation(line: 244, column: 66, scope: !211)
!229 = !{!221, !222, i64 0}
!230 = !DILocation(line: 244, column: 56, scope: !211)
!231 = !DILocation(line: 235, column: 9, scope: !211)
!232 = !DILocation(line: 245, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !211, file: !3, line: 245, column: 7)
!234 = !DILocation(line: 245, column: 7, scope: !211)
!235 = !DILocation(line: 250, column: 33, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 245, column: 47)
!237 = !DILocation(line: 250, column: 5, scope: !236)
!238 = !DILocation(line: 253, column: 3, scope: !236)
!239 = !DILocation(line: 258, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !3, line: 253, column: 10)
!241 = !DILocation(line: 261, column: 1, scope: !211)
!242 = !DILocation(line: 194, column: 43, scope: !80)
!243 = !DILocation(line: 196, column: 2, scope: !80)
!244 = !DILocation(line: 196, column: 10, scope: !80)
!245 = !DILocation(line: 197, column: 2, scope: !80)
!246 = !DILocation(line: 198, column: 2, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !81, line: 198, column: 2)
!248 = distinct !DILexicalBlock(scope: !80, file: !81, line: 198, column: 2)
!249 = !DILocation(line: 199, column: 2, scope: !80)
!250 = !DILocation(line: 200, column: 1, scope: !80)
!251 = distinct !DISubprogram(name: "sys_timeout_abs", scope: !3, file: !3, line: 183, type: !131, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !252)
!252 = !{!253, !254, !255, !256, !257}
!253 = !DILocalVariable(name: "abs_time", arg: 1, scope: !251, file: !3, line: 183, type: !39)
!254 = !DILocalVariable(name: "handler", arg: 2, scope: !251, file: !3, line: 183, type: !62)
!255 = !DILocalVariable(name: "arg", arg: 3, scope: !251, file: !3, line: 183, type: !35)
!256 = !DILocalVariable(name: "timeout", scope: !251, file: !3, line: 186, type: !56)
!257 = !DILocalVariable(name: "t", scope: !251, file: !3, line: 186, type: !56)
!258 = !DILocation(line: 183, column: 23, scope: !251)
!259 = !DILocation(line: 183, column: 53, scope: !251)
!260 = !DILocation(line: 183, column: 68, scope: !251)
!261 = !DILocation(line: 188, column: 33, scope: !251)
!262 = !DILocation(line: 189, column: 15, scope: !263)
!263 = distinct !DILexicalBlock(scope: !251, file: !3, line: 189, column: 7)
!264 = !DILocation(line: 189, column: 7, scope: !251)
!265 = !DILocation(line: 186, column: 21, scope: !251)
!266 = !DILocation(line: 190, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 190, column: 5)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 190, column: 5)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 190, column: 5)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 190, column: 5)
!271 = distinct !DILexicalBlock(scope: !263, file: !3, line: 189, column: 24)
!272 = !DILocation(line: 190, column: 5, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 190, column: 5)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 190, column: 5)
!275 = distinct !DILexicalBlock(scope: !267, file: !3, line: 190, column: 5)
!276 = !DILocation(line: 194, column: 12, scope: !251)
!277 = !DILocation(line: 194, column: 17, scope: !251)
!278 = !{!279, !124, i64 0}
!279 = !{!"sys_timeo", !124, i64 0, !222, i64 8, !124, i64 16, !124, i64 24}
!280 = !DILocation(line: 195, column: 12, scope: !251)
!281 = !DILocation(line: 195, column: 14, scope: !251)
!282 = !{!279, !124, i64 16}
!283 = !DILocation(line: 196, column: 12, scope: !251)
!284 = !DILocation(line: 196, column: 16, scope: !251)
!285 = !{!279, !124, i64 24}
!286 = !DILocation(line: 197, column: 12, scope: !251)
!287 = !DILocation(line: 197, column: 17, scope: !251)
!288 = !{!279, !222, i64 8}
!289 = !DILocation(line: 205, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !251, file: !3, line: 205, column: 7)
!291 = !DILocation(line: 205, column: 20, scope: !290)
!292 = !DILocation(line: 205, column: 7, scope: !251)
!293 = !DILocation(line: 209, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !251, file: !3, line: 209, column: 7)
!295 = !DILocation(line: 209, column: 7, scope: !251)
!296 = !DILocation(line: 210, column: 19, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 209, column: 58)
!298 = !DILocation(line: 212, column: 3, scope: !297)
!299 = !DILocation(line: 0, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 213, column: 5)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 213, column: 5)
!302 = distinct !DILexicalBlock(scope: !294, file: !3, line: 212, column: 10)
!303 = !DILocation(line: 186, column: 31, scope: !251)
!304 = !DILocation(line: 214, column: 15, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 214, column: 11)
!306 = distinct !DILexicalBlock(scope: !300, file: !3, line: 213, column: 52)
!307 = !DILocation(line: 214, column: 20, scope: !305)
!308 = !DILocation(line: 214, column: 29, scope: !305)
!309 = !DILocation(line: 214, column: 32, scope: !305)
!310 = !DILocation(line: 214, column: 11, scope: !306)
!311 = distinct !{!311, !312, !313}
!312 = !DILocation(line: 213, column: 5, scope: !301)
!313 = !DILocation(line: 219, column: 5, scope: !301)
!314 = !DILocation(line: 215, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !305, file: !3, line: 214, column: 78)
!316 = !DILocation(line: 216, column: 17, scope: !315)
!317 = !DILocation(line: 217, column: 9, scope: !315)
!318 = !DILocation(line: 0, scope: !319)
!319 = distinct !DILexicalBlock(scope: !290, file: !3, line: 205, column: 29)
!320 = !DILocation(line: 221, column: 1, scope: !251)
!321 = distinct !DISubprogram(name: "sys_untimeout", scope: !3, file: !3, line: 317, type: !322, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !62, !35}
!324 = !{!325, !326, !327, !328}
!325 = !DILocalVariable(name: "handler", arg: 1, scope: !321, file: !3, line: 317, type: !62)
!326 = !DILocalVariable(name: "arg", arg: 2, scope: !321, file: !3, line: 317, type: !35)
!327 = !DILocalVariable(name: "prev_t", scope: !321, file: !3, line: 319, type: !56)
!328 = !DILocalVariable(name: "t", scope: !321, file: !3, line: 319, type: !56)
!329 = !DILocation(line: 317, column: 35, scope: !321)
!330 = !DILocation(line: 317, column: 50, scope: !321)
!331 = !DILocation(line: 323, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !321, file: !3, line: 323, column: 7)
!333 = !DILocation(line: 323, column: 20, scope: !332)
!334 = !DILocation(line: 323, column: 7, scope: !321)
!335 = !DILocation(line: 319, column: 30, scope: !321)
!336 = !DILocation(line: 319, column: 21, scope: !321)
!337 = !DILocation(line: 328, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 328, column: 9)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 327, column: 77)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 327, column: 3)
!341 = distinct !DILexicalBlock(scope: !321, file: !3, line: 327, column: 3)
!342 = !DILocation(line: 328, column: 15, scope: !338)
!343 = !DILocation(line: 328, column: 27, scope: !338)
!344 = !DILocation(line: 328, column: 34, scope: !338)
!345 = !DILocation(line: 328, column: 38, scope: !338)
!346 = !DILocation(line: 328, column: 9, scope: !339)
!347 = !DILocation(line: 331, column: 18, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 331, column: 11)
!349 = distinct !DILexicalBlock(scope: !338, file: !3, line: 328, column: 47)
!350 = !DILocation(line: 0, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !3, line: 333, column: 14)
!352 = !DILocation(line: 334, column: 22, scope: !351)
!353 = !DILocation(line: 331, column: 11, scope: !349)
!354 = !DILocation(line: 0, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !3, line: 331, column: 27)
!356 = !DILocation(line: 336, column: 35, scope: !349)
!357 = !DILocation(line: 336, column: 7, scope: !349)
!358 = !DILocation(line: 337, column: 7, scope: !349)
!359 = !DILocation(line: 327, column: 71, scope: !340)
!360 = !DILocation(line: 327, column: 43, scope: !340)
!361 = !DILocation(line: 327, column: 3, scope: !341)
!362 = distinct !{!362, !361, !363}
!363 = !DILocation(line: 339, column: 3, scope: !341)
!364 = !DILocation(line: 341, column: 1, scope: !321)
!365 = distinct !DISubprogram(name: "sys_check_timeouts", scope: !3, file: !3, line: 352, type: !54, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !366)
!366 = !{!367, !368, !370, !371}
!367 = !DILocalVariable(name: "now", scope: !365, file: !3, line: 354, type: !39)
!368 = !DILocalVariable(name: "tmptimeout", scope: !369, file: !3, line: 362, type: !56)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 361, column: 6)
!370 = !DILocalVariable(name: "handler", scope: !369, file: !3, line: 363, type: !62)
!371 = !DILocalVariable(name: "arg", scope: !369, file: !3, line: 364, type: !35)
!372 = !DILocation(line: 359, column: 9, scope: !365)
!373 = !DILocation(line: 354, column: 9, scope: !365)
!374 = !DILocation(line: 368, column: 18, scope: !369)
!375 = !DILocation(line: 362, column: 23, scope: !369)
!376 = !DILocation(line: 369, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !3, line: 369, column: 9)
!378 = !DILocation(line: 369, column: 9, scope: !369)
!379 = !DILocation(line: 373, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !369, file: !3, line: 373, column: 9)
!381 = !DILocation(line: 373, column: 9, scope: !369)
!382 = !DILocation(line: 378, column: 32, scope: !369)
!383 = !DILocation(line: 378, column: 18, scope: !369)
!384 = !DILocation(line: 379, column: 27, scope: !369)
!385 = !DILocation(line: 363, column: 25, scope: !369)
!386 = !DILocation(line: 380, column: 23, scope: !369)
!387 = !DILocation(line: 364, column: 11, scope: !369)
!388 = !DILocation(line: 381, column: 30, scope: !369)
!389 = !DILocation(line: 388, column: 33, scope: !369)
!390 = !DILocation(line: 388, column: 5, scope: !369)
!391 = !DILocation(line: 389, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !369, file: !3, line: 389, column: 9)
!393 = !DILocation(line: 389, column: 9, scope: !369)
!394 = !DILocation(line: 390, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 389, column: 26)
!396 = !DILocation(line: 391, column: 5, scope: !395)
!397 = !DILocation(line: 396, column: 1, scope: !365)
!398 = distinct !DISubprogram(name: "sys_restart_timeouts", scope: !3, file: !3, line: 404, type: !54, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !399)
!399 = !{!400, !401, !402}
!400 = !DILocalVariable(name: "now", scope: !398, file: !3, line: 406, type: !39)
!401 = !DILocalVariable(name: "base", scope: !398, file: !3, line: 407, type: !39)
!402 = !DILocalVariable(name: "t", scope: !398, file: !3, line: 408, type: !56)
!403 = !DILocation(line: 410, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !3, line: 410, column: 7)
!405 = !DILocation(line: 410, column: 20, scope: !404)
!406 = !DILocation(line: 410, column: 7, scope: !398)
!407 = !DILocation(line: 414, column: 9, scope: !398)
!408 = !DILocation(line: 406, column: 9, scope: !398)
!409 = !DILocation(line: 415, column: 10, scope: !398)
!410 = !DILocation(line: 408, column: 21, scope: !398)
!411 = !DILocation(line: 417, column: 28, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 417, column: 3)
!413 = distinct !DILexicalBlock(scope: !398, file: !3, line: 417, column: 3)
!414 = !DILocation(line: 417, column: 3, scope: !413)
!415 = !DILocation(line: 415, column: 24, scope: !398)
!416 = !DILocation(line: 407, column: 9, scope: !398)
!417 = !DILocation(line: 418, column: 19, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !3, line: 417, column: 50)
!419 = !DILocation(line: 418, column: 13, scope: !418)
!420 = !DILocation(line: 417, column: 44, scope: !412)
!421 = distinct !{!421, !414, !422}
!422 = !DILocation(line: 419, column: 3, scope: !413)
!423 = !DILocation(line: 418, column: 32, scope: !418)
!424 = !DILocation(line: 420, column: 1, scope: !398)
!425 = distinct !DISubprogram(name: "sys_timeouts_sleeptime", scope: !3, file: !3, line: 426, type: !426, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!39}
!428 = !{!429, !430}
!429 = !DILocalVariable(name: "now", scope: !425, file: !3, line: 428, type: !39)
!430 = !DILocalVariable(name: "ret", scope: !431, file: !3, line: 439, type: !39)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 438, column: 10)
!432 = distinct !DILexicalBlock(scope: !425, file: !3, line: 436, column: 7)
!433 = !DILocation(line: 432, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !425, file: !3, line: 432, column: 7)
!435 = !DILocation(line: 432, column: 20, scope: !434)
!436 = !DILocation(line: 432, column: 7, scope: !425)
!437 = !DILocation(line: 435, column: 9, scope: !425)
!438 = !DILocation(line: 428, column: 9, scope: !425)
!439 = !DILocation(line: 436, column: 7, scope: !432)
!440 = !DILocation(line: 436, column: 7, scope: !425)
!441 = !DILocation(line: 0, scope: !431)
!442 = !DILocation(line: 443, column: 1, scope: !425)
