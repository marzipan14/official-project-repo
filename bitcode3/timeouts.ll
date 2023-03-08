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
  br label %11, !dbg !146

; <label>:11:                                     ; preds = %2, %8, %0
  ret void, !dbg !147
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_timeout(i32, void (i8*)*, i8*) local_unnamed_addr #1 !dbg !130 {
  %4 = icmp ult i32 %0, 1073741824, !dbg !151
  br i1 %4, label %6, label %5, !dbg !154

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #8, !dbg !155
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !158
  tail call void @ukplat_terminate(i32 3) #9, !dbg !158
  unreachable, !dbg !158

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @sys_now() #7, !dbg !162
  %8 = add i32 %7, %0, !dbg !163
  tail call fastcc void @sys_timeout_abs(i32 %8, void (i8*)* %1, i8* %2) #8, !dbg !165
  ret void, !dbg !166
}

; Function Attrs: noredzone nounwind
define internal void @tcpip_tcp_timer(i8* nocapture readnone) #1 !dbg !167 {
  tail call void @tcp_tmr() #7, !dbg !171
  %2 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !172, !tbaa !123
  %3 = icmp ne %struct.tcp_pcb* %2, null, !dbg !172
  %4 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !174
  %5 = icmp ne %struct.tcp_pcb* %4, null, !dbg !174
  %6 = or i1 %3, %5, !dbg !175
  br i1 %6, label %7, label %10, !dbg !175

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @sys_now() #7, !dbg !181
  %9 = add i32 %8, 250, !dbg !182
  tail call fastcc void @sys_timeout_abs(i32 %9, void (i8*)* nonnull @tcpip_tcp_timer, i8* null) #7, !dbg !184
  br label %11, !dbg !185

; <label>:10:                                     ; preds = %1
  store i1 false, i1* @tcpip_tcp_timer_active, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %7
  ret void, !dbg !186
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_timeouts_init() local_unnamed_addr #1 !dbg !187 {
  %1 = tail call i32 @sys_now() #7, !dbg !203
  %2 = add i32 %1, 1000, !dbg !204
  tail call fastcc void @sys_timeout_abs(i32 %2, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 1) to i8*)) #7, !dbg !206
  %3 = tail call i32 @sys_now() #7, !dbg !203
  %4 = add i32 %3, 1000, !dbg !204
  tail call fastcc void @sys_timeout_abs(i32 %4, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 2) to i8*)) #7, !dbg !206
  %5 = tail call i32 @sys_now() #7, !dbg !203
  %6 = add i32 %5, 1000, !dbg !204
  tail call fastcc void @sys_timeout_abs(i32 %6, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 3) to i8*)) #7, !dbg !206
  %7 = tail call i32 @sys_now() #7, !dbg !203
  %8 = add i32 %7, 1000, !dbg !204
  tail call fastcc void @sys_timeout_abs(i32 %8, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 4) to i8*)) #7, !dbg !206
  %9 = tail call i32 @sys_now() #7, !dbg !203
  %10 = add i32 %9, 1000, !dbg !204
  tail call fastcc void @sys_timeout_abs(i32 %10, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 5) to i8*)) #7, !dbg !206
  %11 = tail call i32 @sys_now() #7, !dbg !203
  %12 = add i32 %11, 100, !dbg !204
  tail call fastcc void @sys_timeout_abs(i32 %12, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 6) to i8*)) #7, !dbg !206
  ret void, !dbg !207
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define internal void @lwip_cyclic_timer(i8*) #1 !dbg !208 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !216
  %3 = bitcast i8* %2 to void ()**, !dbg !216
  %4 = load void ()*, void ()** %3, align 8, !dbg !216, !tbaa !217
  tail call void %4() #7, !dbg !220
  %5 = tail call i32 @sys_now() #7, !dbg !221
  %6 = load i32, i32* @current_timeout_due_time, align 4, !dbg !223, !tbaa !224
  %7 = bitcast i8* %0 to i32*, !dbg !225
  %8 = load i32, i32* %7, align 8, !dbg !225, !tbaa !226
  %9 = add i32 %8, %6, !dbg !227
  %10 = sub i32 %9, %5, !dbg !229
  %11 = icmp slt i32 %10, 0, !dbg !229
  br i1 %11, label %12, label %14, !dbg !231

; <label>:12:                                     ; preds = %1
  %13 = add i32 %8, %5, !dbg !232
  tail call fastcc void @sys_timeout_abs(i32 %13, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull %0) #8, !dbg !234
  br label %15, !dbg !235

; <label>:14:                                     ; preds = %1
  tail call fastcc void @sys_timeout_abs(i32 %9, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull %0) #8, !dbg !236
  br label %15

; <label>:15:                                     ; preds = %14, %12
  ret void, !dbg !238
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !80 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !240
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !240
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !242
  call void @llvm.va_start(i8* nonnull %3), !dbg !242
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !243
  call void @llvm.va_end(i8* nonnull %3), !dbg !246
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !247
  ret void, !dbg !247
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_now() local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define internal fastcc void @sys_timeout_abs(i32, void (i8*)*, i8*) unnamed_addr #1 !dbg !248 {
  %4 = tail call i8* @memp_malloc(i32 10) #7, !dbg !258
  %5 = icmp eq i8* %4, null, !dbg !259
  br i1 %5, label %6, label %7, !dbg !261

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !263
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !269
  tail call void @ukplat_terminate(i32 3) #9, !dbg !269
  unreachable, !dbg !269

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to %struct.sys_timeo**, !dbg !273
  store %struct.sys_timeo* null, %struct.sys_timeo** %8, align 8, !dbg !274, !tbaa !275
  %9 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !277
  %10 = bitcast i8* %9 to void (i8*)**, !dbg !277
  store void (i8*)* %1, void (i8*)** %10, align 8, !dbg !278, !tbaa !279
  %11 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !280
  %12 = bitcast i8* %11 to i8**, !dbg !280
  store i8* %2, i8** %12, align 8, !dbg !281, !tbaa !282
  %13 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !283
  %14 = bitcast i8* %13 to i32*, !dbg !283
  store i32 %0, i32* %14, align 8, !dbg !284, !tbaa !285
  %15 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !286, !tbaa !123
  %16 = icmp eq %struct.sys_timeo* %15, null, !dbg !288
  br i1 %16, label %37, label %17, !dbg !289

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %15, i64 0, i32 1, !dbg !290
  %19 = load i32, i32* %18, align 8, !dbg !290, !tbaa !285
  %20 = sub i32 %0, %19, !dbg !290
  %21 = icmp slt i32 %20, 0, !dbg !290
  br i1 %21, label %22, label %23, !dbg !292

; <label>:22:                                     ; preds = %17
  store %struct.sys_timeo* %15, %struct.sys_timeo** %8, align 8, !dbg !293, !tbaa !275
  br label %37, !dbg !295

; <label>:23:                                     ; preds = %17, %28
  %24 = phi %struct.sys_timeo* [ %26, %28 ], [ %15, %17 ], !dbg !296
  %25 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %24, i64 0, i32 0, !dbg !301
  %26 = load %struct.sys_timeo*, %struct.sys_timeo** %25, align 8, !dbg !301, !tbaa !275
  %27 = icmp eq %struct.sys_timeo* %26, null, !dbg !304
  br i1 %27, label %33, label %28, !dbg !305

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %26, i64 0, i32 1, !dbg !306
  %30 = load i32, i32* %29, align 8, !dbg !306, !tbaa !285
  %31 = sub i32 %0, %30, !dbg !306
  %32 = icmp slt i32 %31, 0, !dbg !306
  br i1 %32, label %33, label %23, !dbg !307, !llvm.loop !308

; <label>:33:                                     ; preds = %28, %23
  %34 = ptrtoint %struct.sys_timeo* %26 to i64, !dbg !305
  %35 = bitcast i8* %4 to i64*, !dbg !311
  store i64 %34, i64* %35, align 8, !dbg !311, !tbaa !275
  %36 = bitcast %struct.sys_timeo* %24 to i8**, !dbg !313
  br label %37, !dbg !314

; <label>:37:                                     ; preds = %7, %22, %33
  %38 = phi i8** [ bitcast (%struct.sys_timeo** @next_timeout to i8**), %22 ], [ %36, %33 ], [ bitcast (%struct.sys_timeo** @next_timeout to i8**), %7 ]
  store i8* %4, i8** %38, align 8, !dbg !315, !tbaa !123
  ret void, !dbg !317
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_untimeout(void (i8*)* readnone, i8* readnone) local_unnamed_addr #1 !dbg !318 {
  %3 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !328, !tbaa !123
  %4 = icmp eq %struct.sys_timeo* %3, null, !dbg !330
  br i1 %4, label %26, label %5, !dbg !331

; <label>:5:                                      ; preds = %2, %22
  %6 = phi %struct.sys_timeo* [ %24, %22 ], [ %3, %2 ]
  %7 = phi %struct.sys_timeo* [ %6, %22 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %6, i64 0, i32 2, !dbg !334
  %9 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !334, !tbaa !279
  %10 = icmp eq void (i8*)* %9, %0, !dbg !339
  br i1 %10, label %11, label %22, !dbg !340

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %6, i64 0, i32 3, !dbg !341
  %13 = load i8*, i8** %12, align 8, !dbg !341, !tbaa !282
  %14 = icmp eq i8* %13, %1, !dbg !342
  br i1 %14, label %15, label %22, !dbg !343

; <label>:15:                                     ; preds = %11
  %16 = icmp eq %struct.sys_timeo* %7, null, !dbg !344
  %17 = bitcast %struct.sys_timeo* %6 to i64*, !dbg !347
  %18 = load i64, i64* %17, align 8, !dbg !347, !tbaa !275
  %19 = bitcast %struct.sys_timeo* %7 to i64*, !dbg !349
  %20 = select i1 %16, i64* bitcast (%struct.sys_timeo** @next_timeout to i64*), i64* %19, !dbg !350
  store i64 %18, i64* %20, align 8, !dbg !351, !tbaa !123
  %21 = bitcast %struct.sys_timeo* %6 to i8*, !dbg !353
  tail call void @memp_free(i32 10, i8* %21) #7, !dbg !354
  br label %26, !dbg !355

; <label>:22:                                     ; preds = %5, %11
  %23 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %6, i64 0, i32 0, !dbg !356
  %24 = load %struct.sys_timeo*, %struct.sys_timeo** %23, align 8, !dbg !356, !tbaa !275
  %25 = icmp eq %struct.sys_timeo* %24, null, !dbg !357
  br i1 %25, label %26, label %5, !dbg !358, !llvm.loop !359

; <label>:26:                                     ; preds = %22, %2, %15
  ret void, !dbg !361
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define dso_local void @sys_check_timeouts() local_unnamed_addr #1 !dbg !362 {
  %1 = tail call i32 @sys_now() #7, !dbg !369
  %2 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !371, !tbaa !123
  %3 = icmp eq %struct.sys_timeo* %2, null, !dbg !373
  br i1 %3, label %23, label %4, !dbg !375

; <label>:4:                                      ; preds = %0, %20
  %5 = phi %struct.sys_timeo* [ %21, %20 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !376
  %7 = load i32, i32* %6, align 8, !dbg !376, !tbaa !285
  %8 = sub i32 %1, %7, !dbg !376
  %9 = icmp slt i32 %8, 0, !dbg !376
  br i1 %9, label %23, label %10, !dbg !378

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.sys_timeo* %5 to i64*, !dbg !379
  %12 = load i64, i64* %11, align 8, !dbg !379, !tbaa !275
  store i64 %12, i64* bitcast (%struct.sys_timeo** @next_timeout to i64*), align 8, !dbg !380, !tbaa !123
  %13 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 2, !dbg !381
  %14 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !381, !tbaa !279
  %15 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 3, !dbg !383
  %16 = load i8*, i8** %15, align 8, !dbg !383, !tbaa !282
  store i32 %7, i32* @current_timeout_due_time, align 4, !dbg !385, !tbaa !224
  %17 = bitcast %struct.sys_timeo* %5 to i8*, !dbg !386
  tail call void @memp_free(i32 10, i8* %17) #7, !dbg !387
  %18 = icmp eq void (i8*)* %14, null, !dbg !388
  br i1 %18, label %20, label %19, !dbg !390

; <label>:19:                                     ; preds = %10
  tail call void %14(i8* %16) #7, !dbg !391
  br label %20, !dbg !393

; <label>:20:                                     ; preds = %19, %10
  %21 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !371, !tbaa !123
  %22 = icmp eq %struct.sys_timeo* %21, null, !dbg !373
  br i1 %22, label %23, label %4, !dbg !375

; <label>:23:                                     ; preds = %20, %4, %0
  ret void, !dbg !394
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_restart_timeouts() local_unnamed_addr #1 !dbg !395 {
  %1 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !400, !tbaa !123
  %2 = icmp eq %struct.sys_timeo* %1, null, !dbg !402
  br i1 %2, label %24, label %3, !dbg !403

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @sys_now() #7, !dbg !404
  %5 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !406, !tbaa !123
  %6 = icmp eq %struct.sys_timeo* %5, null, !dbg !408
  br i1 %6, label %24, label %7, !dbg !411

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !412
  %9 = load i32, i32* %8, align 8, !dbg !412, !tbaa !285
  %10 = sub i32 %4, %9
  %11 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !414
  store i32 %4, i32* %11, align 8, !dbg !416, !tbaa !285
  %12 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 0, !dbg !417
  %13 = load %struct.sys_timeo*, %struct.sys_timeo** %12, align 8, !dbg !417, !tbaa !275
  %14 = icmp eq %struct.sys_timeo* %13, null, !dbg !408
  br i1 %14, label %24, label %15, !dbg !411, !llvm.loop !418

; <label>:15:                                     ; preds = %7, %15
  %16 = phi %struct.sys_timeo* [ %22, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 1
  %18 = load i32, i32* %17, align 8, !dbg !414, !tbaa !285
  %19 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 1, !dbg !414
  %20 = add i32 %10, %18, !dbg !420
  store i32 %20, i32* %19, align 8, !dbg !416, !tbaa !285
  %21 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 0, !dbg !417
  %22 = load %struct.sys_timeo*, %struct.sys_timeo** %21, align 8, !dbg !417, !tbaa !275
  %23 = icmp eq %struct.sys_timeo* %22, null, !dbg !408
  br i1 %23, label %24, label %15, !dbg !411, !llvm.loop !418

; <label>:24:                                     ; preds = %15, %7, %3, %0
  ret void, !dbg !421
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_timeouts_sleeptime() local_unnamed_addr #1 !dbg !422 {
  %1 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !430, !tbaa !123
  %2 = icmp eq %struct.sys_timeo* %1, null, !dbg !432
  br i1 %2, label %11, label %3, !dbg !433

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @sys_now() #7, !dbg !434
  %5 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !436, !tbaa !123
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !436
  %7 = load i32, i32* %6, align 8, !dbg !436, !tbaa !285
  %8 = sub i32 %7, %4, !dbg !436
  %9 = icmp sgt i32 %8, 0, !dbg !437
  %10 = select i1 %9, i32 %8, i32 0, !dbg !437
  ret i32 %10, !dbg !437

; <label>:11:                                     ; preds = %0
  ret i32 -1, !dbg !438
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
!146 = !DILocation(line: 175, column: 3, scope: !139)
!147 = !DILocation(line: 176, column: 1, scope: !118)
!148 = !DILocation(line: 290, column: 19, scope: !130)
!149 = !DILocation(line: 290, column: 46, scope: !130)
!150 = !DILocation(line: 290, column: 61, scope: !130)
!151 = !DILocation(line: 297, column: 3, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 297, column: 3)
!153 = distinct !DILexicalBlock(scope: !130, file: !3, line: 297, column: 3)
!154 = !DILocation(line: 297, column: 3, scope: !153)
!155 = !DILocation(line: 297, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 297, column: 3)
!157 = distinct !DILexicalBlock(scope: !152, file: !3, line: 297, column: 3)
!158 = !DILocation(line: 297, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 297, column: 3)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 297, column: 3)
!161 = distinct !DILexicalBlock(scope: !156, file: !3, line: 297, column: 3)
!162 = !DILocation(line: 299, column: 31, scope: !130)
!163 = !DILocation(line: 299, column: 41, scope: !130)
!164 = !DILocation(line: 293, column: 9, scope: !130)
!165 = !DILocation(line: 304, column: 3, scope: !130)
!166 = !DILocation(line: 306, column: 1, scope: !130)
!167 = distinct !DISubprogram(name: "tcpip_tcp_timer", scope: !3, file: !3, line: 144, type: !64, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !168)
!168 = !{!169}
!169 = !DILocalVariable(name: "arg", arg: 1, scope: !167, file: !3, line: 144, type: !35)
!170 = !DILocation(line: 144, column: 23, scope: !167)
!171 = !DILocation(line: 149, column: 3, scope: !167)
!172 = !DILocation(line: 151, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !3, line: 151, column: 7)
!174 = !DILocation(line: 151, column: 26, scope: !173)
!175 = !DILocation(line: 151, column: 23, scope: !173)
!176 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !177)
!177 = distinct !DILocation(line: 153, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !3, line: 151, column: 39)
!179 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !177)
!180 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !177)
!181 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !177)
!182 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !177)
!183 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !177)
!184 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !177)
!185 = !DILocation(line: 154, column: 3, scope: !178)
!186 = !DILocation(line: 158, column: 1, scope: !167)
!187 = distinct !DISubprogram(name: "sys_timeouts_init", scope: !3, file: !3, line: 264, type: !54, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !188)
!188 = !{!189}
!189 = !DILocalVariable(name: "i", scope: !187, file: !3, line: 266, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 40, baseType: !192)
!191 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !193, line: 129, baseType: !194)
!193 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!194 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!195 = !DILocation(line: 266, column: 10, scope: !187)
!196 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !197)
!197 = distinct !DILocation(line: 271, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 268, column: 77)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 268, column: 3)
!200 = distinct !DILexicalBlock(scope: !187, file: !3, line: 268, column: 3)
!201 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !197)
!202 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !197)
!203 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !197)
!204 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !197)
!205 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !197)
!206 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !197)
!207 = !DILocation(line: 273, column: 1, scope: !187)
!208 = distinct !DISubprogram(name: "lwip_cyclic_timer", scope: !3, file: !3, line: 232, type: !64, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(name: "arg", arg: 1, scope: !208, file: !3, line: 232, type: !35)
!211 = !DILocalVariable(name: "now", scope: !208, file: !3, line: 234, type: !39)
!212 = !DILocalVariable(name: "next_timeout_time", scope: !208, file: !3, line: 235, type: !39)
!213 = !DILocalVariable(name: "cyclic", scope: !208, file: !3, line: 236, type: !45)
!214 = !DILocation(line: 232, column: 25, scope: !208)
!215 = !DILocation(line: 236, column: 35, scope: !208)
!216 = !DILocation(line: 241, column: 11, scope: !208)
!217 = !{!218, !124, i64 8}
!218 = !{!"lwip_cyclic_timer", !219, i64 0, !124, i64 8}
!219 = !{!"int", !125, i64 0}
!220 = !DILocation(line: 241, column: 3, scope: !208)
!221 = !DILocation(line: 243, column: 9, scope: !208)
!222 = !DILocation(line: 234, column: 9, scope: !208)
!223 = !DILocation(line: 244, column: 31, scope: !208)
!224 = !{!219, !219, i64 0}
!225 = !DILocation(line: 244, column: 66, scope: !208)
!226 = !{!218, !219, i64 0}
!227 = !DILocation(line: 244, column: 56, scope: !208)
!228 = !DILocation(line: 235, column: 9, scope: !208)
!229 = !DILocation(line: 245, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !208, file: !3, line: 245, column: 7)
!231 = !DILocation(line: 245, column: 7, scope: !208)
!232 = !DILocation(line: 250, column: 33, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !3, line: 245, column: 47)
!234 = !DILocation(line: 250, column: 5, scope: !233)
!235 = !DILocation(line: 253, column: 3, scope: !233)
!236 = !DILocation(line: 258, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 253, column: 10)
!238 = !DILocation(line: 261, column: 1, scope: !208)
!239 = !DILocation(line: 194, column: 43, scope: !80)
!240 = !DILocation(line: 196, column: 2, scope: !80)
!241 = !DILocation(line: 196, column: 10, scope: !80)
!242 = !DILocation(line: 197, column: 2, scope: !80)
!243 = !DILocation(line: 198, column: 2, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !81, line: 198, column: 2)
!245 = distinct !DILexicalBlock(scope: !80, file: !81, line: 198, column: 2)
!246 = !DILocation(line: 199, column: 2, scope: !80)
!247 = !DILocation(line: 200, column: 1, scope: !80)
!248 = distinct !DISubprogram(name: "sys_timeout_abs", scope: !3, file: !3, line: 183, type: !131, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !249)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DILocalVariable(name: "abs_time", arg: 1, scope: !248, file: !3, line: 183, type: !39)
!251 = !DILocalVariable(name: "handler", arg: 2, scope: !248, file: !3, line: 183, type: !62)
!252 = !DILocalVariable(name: "arg", arg: 3, scope: !248, file: !3, line: 183, type: !35)
!253 = !DILocalVariable(name: "timeout", scope: !248, file: !3, line: 186, type: !56)
!254 = !DILocalVariable(name: "t", scope: !248, file: !3, line: 186, type: !56)
!255 = !DILocation(line: 183, column: 23, scope: !248)
!256 = !DILocation(line: 183, column: 53, scope: !248)
!257 = !DILocation(line: 183, column: 68, scope: !248)
!258 = !DILocation(line: 188, column: 33, scope: !248)
!259 = !DILocation(line: 189, column: 15, scope: !260)
!260 = distinct !DILexicalBlock(scope: !248, file: !3, line: 189, column: 7)
!261 = !DILocation(line: 189, column: 7, scope: !248)
!262 = !DILocation(line: 186, column: 21, scope: !248)
!263 = !DILocation(line: 190, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 190, column: 5)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 190, column: 5)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 190, column: 5)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 190, column: 5)
!268 = distinct !DILexicalBlock(scope: !260, file: !3, line: 189, column: 24)
!269 = !DILocation(line: 190, column: 5, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 190, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 190, column: 5)
!272 = distinct !DILexicalBlock(scope: !264, file: !3, line: 190, column: 5)
!273 = !DILocation(line: 194, column: 12, scope: !248)
!274 = !DILocation(line: 194, column: 17, scope: !248)
!275 = !{!276, !124, i64 0}
!276 = !{!"sys_timeo", !124, i64 0, !219, i64 8, !124, i64 16, !124, i64 24}
!277 = !DILocation(line: 195, column: 12, scope: !248)
!278 = !DILocation(line: 195, column: 14, scope: !248)
!279 = !{!276, !124, i64 16}
!280 = !DILocation(line: 196, column: 12, scope: !248)
!281 = !DILocation(line: 196, column: 16, scope: !248)
!282 = !{!276, !124, i64 24}
!283 = !DILocation(line: 197, column: 12, scope: !248)
!284 = !DILocation(line: 197, column: 17, scope: !248)
!285 = !{!276, !219, i64 8}
!286 = !DILocation(line: 205, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !248, file: !3, line: 205, column: 7)
!288 = !DILocation(line: 205, column: 20, scope: !287)
!289 = !DILocation(line: 205, column: 7, scope: !248)
!290 = !DILocation(line: 209, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !248, file: !3, line: 209, column: 7)
!292 = !DILocation(line: 209, column: 7, scope: !248)
!293 = !DILocation(line: 210, column: 19, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 209, column: 58)
!295 = !DILocation(line: 212, column: 3, scope: !294)
!296 = !DILocation(line: 0, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 213, column: 5)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 213, column: 5)
!299 = distinct !DILexicalBlock(scope: !291, file: !3, line: 212, column: 10)
!300 = !DILocation(line: 186, column: 31, scope: !248)
!301 = !DILocation(line: 214, column: 15, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 214, column: 11)
!303 = distinct !DILexicalBlock(scope: !297, file: !3, line: 213, column: 52)
!304 = !DILocation(line: 214, column: 20, scope: !302)
!305 = !DILocation(line: 214, column: 29, scope: !302)
!306 = !DILocation(line: 214, column: 32, scope: !302)
!307 = !DILocation(line: 214, column: 11, scope: !303)
!308 = distinct !{!308, !309, !310}
!309 = !DILocation(line: 213, column: 5, scope: !298)
!310 = !DILocation(line: 219, column: 5, scope: !298)
!311 = !DILocation(line: 215, column: 23, scope: !312)
!312 = distinct !DILexicalBlock(scope: !302, file: !3, line: 214, column: 78)
!313 = !DILocation(line: 216, column: 17, scope: !312)
!314 = !DILocation(line: 217, column: 9, scope: !312)
!315 = !DILocation(line: 0, scope: !316)
!316 = distinct !DILexicalBlock(scope: !287, file: !3, line: 205, column: 29)
!317 = !DILocation(line: 221, column: 1, scope: !248)
!318 = distinct !DISubprogram(name: "sys_untimeout", scope: !3, file: !3, line: 317, type: !319, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !62, !35}
!321 = !{!322, !323, !324, !325}
!322 = !DILocalVariable(name: "handler", arg: 1, scope: !318, file: !3, line: 317, type: !62)
!323 = !DILocalVariable(name: "arg", arg: 2, scope: !318, file: !3, line: 317, type: !35)
!324 = !DILocalVariable(name: "prev_t", scope: !318, file: !3, line: 319, type: !56)
!325 = !DILocalVariable(name: "t", scope: !318, file: !3, line: 319, type: !56)
!326 = !DILocation(line: 317, column: 35, scope: !318)
!327 = !DILocation(line: 317, column: 50, scope: !318)
!328 = !DILocation(line: 323, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !318, file: !3, line: 323, column: 7)
!330 = !DILocation(line: 323, column: 20, scope: !329)
!331 = !DILocation(line: 323, column: 7, scope: !318)
!332 = !DILocation(line: 319, column: 30, scope: !318)
!333 = !DILocation(line: 319, column: 21, scope: !318)
!334 = !DILocation(line: 328, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 328, column: 9)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 327, column: 77)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 327, column: 3)
!338 = distinct !DILexicalBlock(scope: !318, file: !3, line: 327, column: 3)
!339 = !DILocation(line: 328, column: 15, scope: !335)
!340 = !DILocation(line: 328, column: 27, scope: !335)
!341 = !DILocation(line: 328, column: 34, scope: !335)
!342 = !DILocation(line: 328, column: 38, scope: !335)
!343 = !DILocation(line: 328, column: 9, scope: !336)
!344 = !DILocation(line: 331, column: 18, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 331, column: 11)
!346 = distinct !DILexicalBlock(scope: !335, file: !3, line: 328, column: 47)
!347 = !DILocation(line: 0, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 333, column: 14)
!349 = !DILocation(line: 334, column: 22, scope: !348)
!350 = !DILocation(line: 331, column: 11, scope: !346)
!351 = !DILocation(line: 0, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !3, line: 331, column: 27)
!353 = !DILocation(line: 336, column: 35, scope: !346)
!354 = !DILocation(line: 336, column: 7, scope: !346)
!355 = !DILocation(line: 337, column: 7, scope: !346)
!356 = !DILocation(line: 327, column: 71, scope: !337)
!357 = !DILocation(line: 327, column: 43, scope: !337)
!358 = !DILocation(line: 327, column: 3, scope: !338)
!359 = distinct !{!359, !358, !360}
!360 = !DILocation(line: 339, column: 3, scope: !338)
!361 = !DILocation(line: 341, column: 1, scope: !318)
!362 = distinct !DISubprogram(name: "sys_check_timeouts", scope: !3, file: !3, line: 352, type: !54, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !363)
!363 = !{!364, !365, !367, !368}
!364 = !DILocalVariable(name: "now", scope: !362, file: !3, line: 354, type: !39)
!365 = !DILocalVariable(name: "tmptimeout", scope: !366, file: !3, line: 362, type: !56)
!366 = distinct !DILexicalBlock(scope: !362, file: !3, line: 361, column: 6)
!367 = !DILocalVariable(name: "handler", scope: !366, file: !3, line: 363, type: !62)
!368 = !DILocalVariable(name: "arg", scope: !366, file: !3, line: 364, type: !35)
!369 = !DILocation(line: 359, column: 9, scope: !362)
!370 = !DILocation(line: 354, column: 9, scope: !362)
!371 = !DILocation(line: 368, column: 18, scope: !366)
!372 = !DILocation(line: 362, column: 23, scope: !366)
!373 = !DILocation(line: 369, column: 20, scope: !374)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 369, column: 9)
!375 = !DILocation(line: 369, column: 9, scope: !366)
!376 = !DILocation(line: 373, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !366, file: !3, line: 373, column: 9)
!378 = !DILocation(line: 373, column: 9, scope: !366)
!379 = !DILocation(line: 378, column: 32, scope: !366)
!380 = !DILocation(line: 378, column: 18, scope: !366)
!381 = !DILocation(line: 379, column: 27, scope: !366)
!382 = !DILocation(line: 363, column: 25, scope: !366)
!383 = !DILocation(line: 380, column: 23, scope: !366)
!384 = !DILocation(line: 364, column: 11, scope: !366)
!385 = !DILocation(line: 381, column: 30, scope: !366)
!386 = !DILocation(line: 388, column: 33, scope: !366)
!387 = !DILocation(line: 388, column: 5, scope: !366)
!388 = !DILocation(line: 389, column: 17, scope: !389)
!389 = distinct !DILexicalBlock(scope: !366, file: !3, line: 389, column: 9)
!390 = !DILocation(line: 389, column: 9, scope: !366)
!391 = !DILocation(line: 390, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 389, column: 26)
!393 = !DILocation(line: 391, column: 5, scope: !392)
!394 = !DILocation(line: 396, column: 1, scope: !362)
!395 = distinct !DISubprogram(name: "sys_restart_timeouts", scope: !3, file: !3, line: 404, type: !54, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !396)
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(name: "now", scope: !395, file: !3, line: 406, type: !39)
!398 = !DILocalVariable(name: "base", scope: !395, file: !3, line: 407, type: !39)
!399 = !DILocalVariable(name: "t", scope: !395, file: !3, line: 408, type: !56)
!400 = !DILocation(line: 410, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !3, line: 410, column: 7)
!402 = !DILocation(line: 410, column: 20, scope: !401)
!403 = !DILocation(line: 410, column: 7, scope: !395)
!404 = !DILocation(line: 414, column: 9, scope: !395)
!405 = !DILocation(line: 406, column: 9, scope: !395)
!406 = !DILocation(line: 415, column: 10, scope: !395)
!407 = !DILocation(line: 408, column: 21, scope: !395)
!408 = !DILocation(line: 417, column: 28, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 417, column: 3)
!410 = distinct !DILexicalBlock(scope: !395, file: !3, line: 417, column: 3)
!411 = !DILocation(line: 417, column: 3, scope: !410)
!412 = !DILocation(line: 415, column: 24, scope: !395)
!413 = !DILocation(line: 407, column: 9, scope: !395)
!414 = !DILocation(line: 418, column: 19, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !3, line: 417, column: 50)
!416 = !DILocation(line: 418, column: 13, scope: !415)
!417 = !DILocation(line: 417, column: 44, scope: !409)
!418 = distinct !{!418, !411, !419}
!419 = !DILocation(line: 419, column: 3, scope: !410)
!420 = !DILocation(line: 418, column: 32, scope: !415)
!421 = !DILocation(line: 420, column: 1, scope: !395)
!422 = distinct !DISubprogram(name: "sys_timeouts_sleeptime", scope: !3, file: !3, line: 426, type: !423, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!39}
!425 = !{!426, !427}
!426 = !DILocalVariable(name: "now", scope: !422, file: !3, line: 428, type: !39)
!427 = !DILocalVariable(name: "ret", scope: !428, file: !3, line: 439, type: !39)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 438, column: 10)
!429 = distinct !DILexicalBlock(scope: !422, file: !3, line: 436, column: 7)
!430 = !DILocation(line: 432, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !422, file: !3, line: 432, column: 7)
!432 = !DILocation(line: 432, column: 20, scope: !431)
!433 = !DILocation(line: 432, column: 7, scope: !422)
!434 = !DILocation(line: 435, column: 9, scope: !422)
!435 = !DILocation(line: 428, column: 9, scope: !422)
!436 = !DILocation(line: 436, column: 7, scope: !429)
!437 = !DILocation(line: 436, column: 7, scope: !422)
!438 = !DILocation(line: 443, column: 1, scope: !422)
