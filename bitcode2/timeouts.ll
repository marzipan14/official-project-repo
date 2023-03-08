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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %1, label %11, label %2, !dbg !120

; <label>:2:                                      ; preds = %0
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !122, !tbaa !123
  %4 = icmp ne %struct.tcp_pcb* %3, null, !dbg !122
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !127
  %6 = icmp ne %struct.tcp_pcb* %5, null, !dbg !127
  %7 = or i1 %4, %6, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %7, label %8, label %11, !dbg !128

; <label>:8:                                      ; preds = %2
  store i1 true, i1* @tcpip_tcp_timer_active, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  %9 = tail call i32 @sys_now() #7, !dbg !144
  %10 = add i32 %9, 250, !dbg !145
  tail call fastcc void @sys_timeout_abs(i32 %10, void (i8*)* nonnull @tcpip_tcp_timer, i8* null) #7, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br label %11, !dbg !149

; <label>:11:                                     ; preds = %2, %8, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  ret void, !dbg !150
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_timeout(i32, void (i8*)*, i8*) local_unnamed_addr #1 !dbg !130 {
  %4 = icmp ult i32 %0, 1073741824, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %4, label %6, label %5, !dbg !156

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #8, !dbg !157
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !160
  tail call void @ukplat_terminate(i32 3) #9, !dbg !160
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @sys_now() #7, !dbg !164
  %8 = add i32 %7, %0, !dbg !165
  tail call fastcc void @sys_timeout_abs(i32 %8, void (i8*)* %1, i8* %2) #8, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  ret void, !dbg !168
}

; Function Attrs: noredzone nounwind
define internal void @tcpip_tcp_timer(i8* nocapture readnone) #1 !dbg !169 {
  tail call void @tcp_tmr() #7, !dbg !173
  %2 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !174, !tbaa !123
  %3 = icmp ne %struct.tcp_pcb* %2, null, !dbg !174
  %4 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !176
  %5 = icmp ne %struct.tcp_pcb* %4, null, !dbg !176
  %6 = or i1 %3, %5, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %6, label %7, label %10, !dbg !177

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  %8 = tail call i32 @sys_now() #7, !dbg !184
  %9 = add i32 %8, 250, !dbg !185
  tail call fastcc void @sys_timeout_abs(i32 %9, void (i8*)* nonnull @tcpip_tcp_timer, i8* null) #7, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br label %11, !dbg !189

; <label>:10:                                     ; preds = %1
  store i1 false, i1* @tcpip_tcp_timer_active, align 4
  br label %11

; <label>:11:                                     ; preds = %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  ret void, !dbg !190
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_timeouts_init() local_unnamed_addr #1 !dbg !191 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %1 = tail call i32 @sys_now() #7, !dbg !210
  %2 = add i32 %1, 1000, !dbg !211
  tail call fastcc void @sys_timeout_abs(i32 %2, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 1) to i8*)) #7, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %3 = tail call i32 @sys_now() #7, !dbg !210
  %4 = add i32 %3, 1000, !dbg !211
  tail call fastcc void @sys_timeout_abs(i32 %4, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 2) to i8*)) #7, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %5 = tail call i32 @sys_now() #7, !dbg !210
  %6 = add i32 %5, 1000, !dbg !211
  tail call fastcc void @sys_timeout_abs(i32 %6, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 3) to i8*)) #7, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %7 = tail call i32 @sys_now() #7, !dbg !210
  %8 = add i32 %7, 1000, !dbg !211
  tail call fastcc void @sys_timeout_abs(i32 %8, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 4) to i8*)) #7, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %9 = tail call i32 @sys_now() #7, !dbg !210
  %10 = add i32 %9, 1000, !dbg !211
  tail call fastcc void @sys_timeout_abs(i32 %10, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 5) to i8*)) #7, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %11 = tail call i32 @sys_now() #7, !dbg !210
  %12 = add i32 %11, 100, !dbg !211
  tail call fastcc void @sys_timeout_abs(i32 %12, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull bitcast (%struct.lwip_cyclic_timer* getelementptr inbounds ([7 x %struct.lwip_cyclic_timer], [7 x %struct.lwip_cyclic_timer]* @lwip_cyclic_timers, i64 0, i64 6) to i8*)) #7, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  ret void, !dbg !216
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define internal void @lwip_cyclic_timer(i8*) #1 !dbg !217 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !225
  %3 = bitcast i8* %2 to void ()**, !dbg !225
  %4 = load void ()*, void ()** %3, align 8, !dbg !225, !tbaa !226
  tail call void %4() #7, !dbg !229
  %5 = tail call i32 @sys_now() #7, !dbg !230
  %6 = load i32, i32* @current_timeout_due_time, align 4, !dbg !232, !tbaa !233
  %7 = bitcast i8* %0 to i32*, !dbg !234
  %8 = load i32, i32* %7, align 8, !dbg !234, !tbaa !235
  %9 = add i32 %8, %6, !dbg !236
  %10 = sub i32 %9, %5, !dbg !238
  %11 = icmp slt i32 %10, 0, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %11, label %12, label %14, !dbg !240

; <label>:12:                                     ; preds = %1
  %13 = add i32 %8, %5, !dbg !241
  tail call fastcc void @sys_timeout_abs(i32 %13, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull %0) #8, !dbg !243
  br label %15, !dbg !244

; <label>:14:                                     ; preds = %1
  tail call fastcc void @sys_timeout_abs(i32 %9, void (i8*)* nonnull @lwip_cyclic_timer, i8* nonnull %0) #8, !dbg !245
  br label %15

; <label>:15:                                     ; preds = %14, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  ret void, !dbg !247
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !80 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !249
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !251
  call void @llvm.va_start(i8* nonnull %3), !dbg !251
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !252
  call void @llvm.va_end(i8* nonnull %3), !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  ret void, !dbg !256
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @sys_now() local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define internal fastcc void @sys_timeout_abs(i32, void (i8*)*, i8*) unnamed_addr #1 !dbg !257 {
  %4 = tail call i8* @memp_malloc(i32 10) #7, !dbg !267
  %5 = icmp eq i8* %4, null, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %5, label %6, label %7, !dbg !270

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !275
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !279
  tail call void @ukplat_terminate(i32 3) #9, !dbg !279
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to %struct.sys_timeo**, !dbg !283
  store %struct.sys_timeo* null, %struct.sys_timeo** %8, align 8, !dbg !284, !tbaa !285
  %9 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !287
  %10 = bitcast i8* %9 to void (i8*)**, !dbg !287
  store void (i8*)* %1, void (i8*)** %10, align 8, !dbg !288, !tbaa !289
  %11 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !290
  %12 = bitcast i8* %11 to i8**, !dbg !290
  store i8* %2, i8** %12, align 8, !dbg !291, !tbaa !292
  %13 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !293
  %14 = bitcast i8* %13 to i32*, !dbg !293
  store i32 %0, i32* %14, align 8, !dbg !294, !tbaa !295
  %15 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !296, !tbaa !123
  %16 = icmp eq %struct.sys_timeo* %15, null, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %16, label %17, label %18, !dbg !299

; <label>:17:                                     ; preds = %7
  store i8* %4, i8** bitcast (%struct.sys_timeo** @next_timeout to i8**), align 8, !dbg !300, !tbaa !123
  br label %51, !dbg !302

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %15, i64 0, i32 1, !dbg !303
  %20 = load i32, i32* %19, align 8, !dbg !303, !tbaa !295
  %21 = sub i32 %0, %20, !dbg !303
  %22 = icmp slt i32 %21, 0, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %22, label %23, label %24, !dbg !305

; <label>:23:                                     ; preds = %18
  store %struct.sys_timeo* %15, %struct.sys_timeo** %8, align 8, !dbg !306, !tbaa !285
  br label %49, !dbg !308

; <label>:24:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  %25 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %15, i64 0, i32 0, !dbg !314
  %26 = load %struct.sys_timeo*, %struct.sys_timeo** %25, align 8, !dbg !314, !tbaa !285
  %27 = icmp eq %struct.sys_timeo* %26, null, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %27, label %38, label %28, !dbg !319

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %26, i64 0, i32 1, !dbg !320
  %30 = load i32, i32* %29, align 8, !dbg !320, !tbaa !295
  %31 = sub i32 %0, %30, !dbg !320
  %32 = icmp slt i32 %31, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %32, label %38, label %44, !dbg !321

; <label>:33:                                     ; preds = %44
  %34 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %47, i64 0, i32 1, !dbg !320
  %35 = load i32, i32* %34, align 8, !dbg !320, !tbaa !295
  %36 = sub i32 %0, %35, !dbg !320
  %37 = icmp slt i32 %36, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %37, label %38, label %44, !dbg !321, !llvm.loop !322

; <label>:38:                                     ; preds = %33, %44, %28, %24
  %39 = phi %struct.sys_timeo* [ %15, %24 ], [ %15, %28 ], [ %45, %44 ], [ %45, %33 ], !dbg !324
  %40 = bitcast %struct.sys_timeo* %39 to i64*, !dbg !325
  %41 = load i64, i64* %40, align 8, !dbg !325, !tbaa !285
  %42 = bitcast i8* %4 to i64*, !dbg !327
  store i64 %41, i64* %42, align 8, !dbg !327, !tbaa !285
  %43 = bitcast %struct.sys_timeo* %39 to i8**, !dbg !328
  br label %49, !dbg !329

; <label>:44:                                     ; preds = %28, %33
  %45 = phi %struct.sys_timeo* [ %47, %33 ], [ %26, %28 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  %46 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %45, i64 0, i32 0, !dbg !314
  %47 = load %struct.sys_timeo*, %struct.sys_timeo** %46, align 8, !dbg !314, !tbaa !285
  %48 = icmp eq %struct.sys_timeo* %47, null, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %48, label %38, label %33, !dbg !319, !llvm.loop !322

; <label>:49:                                     ; preds = %38, %23
  %50 = phi i8** [ %43, %38 ], [ bitcast (%struct.sys_timeo** @next_timeout to i8**), %23 ]
  store i8* %4, i8** %50, align 8, !dbg !331, !tbaa !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %51, !dbg !332

; <label>:51:                                     ; preds = %49, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  ret void, !dbg !332
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_untimeout(void (i8*)* readnone, i8* readnone) local_unnamed_addr #1 !dbg !334 {
  %3 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !344, !tbaa !123
  %4 = icmp eq %struct.sys_timeo* %3, null, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %4, label %28, label %5, !dbg !347

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br label %6, !dbg !352

; <label>:6:                                      ; preds = %5, %23
  %7 = phi %struct.sys_timeo* [ %3, %5 ], [ %25, %23 ]
  %8 = phi %struct.sys_timeo* [ null, %5 ], [ %7, %23 ]
  %9 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %7, i64 0, i32 2, !dbg !353
  %10 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !353, !tbaa !289
  %11 = icmp eq void (i8*)* %10, %0, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %11, label %12, label %23, !dbg !358

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %7, i64 0, i32 3, !dbg !359
  %14 = load i8*, i8** %13, align 8, !dbg !359, !tbaa !292
  %15 = icmp eq i8* %14, %1, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %15, label %16, label %23, !dbg !361

; <label>:16:                                     ; preds = %12
  %17 = icmp eq %struct.sys_timeo* %8, null, !dbg !362
  %18 = bitcast %struct.sys_timeo* %7 to i64*, !dbg !365
  %19 = load i64, i64* %18, align 8, !dbg !365, !tbaa !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  %20 = bitcast %struct.sys_timeo* %8 to i64*, !dbg !368
  %21 = select i1 %17, i64* bitcast (%struct.sys_timeo** @next_timeout to i64*), i64* %20, !dbg !367
  store i64 %19, i64* %21, align 8, !dbg !369, !tbaa !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = bitcast %struct.sys_timeo* %7 to i8*, !dbg !371
  tail call void @memp_free(i32 10, i8* %22) #7, !dbg !372
  br label %27, !dbg !373

; <label>:23:                                     ; preds = %6, %12
  %24 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %7, i64 0, i32 0, !dbg !374
  %25 = load %struct.sys_timeo*, %struct.sys_timeo** %24, align 8, !dbg !374, !tbaa !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  %26 = icmp eq %struct.sys_timeo* %25, null, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %26, label %27, label %6, !dbg !352, !llvm.loop !377

; <label>:27:                                     ; preds = %23, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br label %28, !dbg !380

; <label>:28:                                     ; preds = %27, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  ret void, !dbg !380
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define dso_local void @sys_check_timeouts() local_unnamed_addr #1 !dbg !381 {
  %1 = tail call i32 @sys_now() #7, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  %2 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !391, !tbaa !123
  %3 = icmp eq %struct.sys_timeo* %2, null, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %3, label %23, label %4, !dbg !395

; <label>:4:                                      ; preds = %0, %20
  %5 = phi %struct.sys_timeo* [ %21, %20 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !396
  %7 = load i32, i32* %6, align 8, !dbg !396, !tbaa !295
  %8 = sub i32 %1, %7, !dbg !396
  %9 = icmp slt i32 %8, 0, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %9, label %23, label %10, !dbg !398

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.sys_timeo* %5 to i64*, !dbg !399
  %12 = load i64, i64* %11, align 8, !dbg !399, !tbaa !285
  store i64 %12, i64* bitcast (%struct.sys_timeo** @next_timeout to i64*), align 8, !dbg !400, !tbaa !123
  %13 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 2, !dbg !401
  %14 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !401, !tbaa !289
  %15 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 3, !dbg !403
  %16 = load i8*, i8** %15, align 8, !dbg !403, !tbaa !292
  store i32 %7, i32* @current_timeout_due_time, align 4, !dbg !405, !tbaa !233
  %17 = bitcast %struct.sys_timeo* %5 to i8*, !dbg !406
  tail call void @memp_free(i32 10, i8* %17) #7, !dbg !407
  %18 = icmp eq void (i8*)* %14, null, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %18, label %20, label %19, !dbg !410

; <label>:19:                                     ; preds = %10
  tail call void %14(i8* %16) #7, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %20, !dbg !413

; <label>:20:                                     ; preds = %10, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %21 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !391, !tbaa !123
  %22 = icmp eq %struct.sys_timeo* %21, null, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %22, label %23, label %4, !dbg !395

; <label>:23:                                     ; preds = %4, %20, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  ret void, !dbg !417
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_restart_timeouts() local_unnamed_addr #1 !dbg !418 {
  %1 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !423, !tbaa !123
  %2 = icmp eq %struct.sys_timeo* %1, null, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %2, label %24, label %3, !dbg !426

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @sys_now() #7, !dbg !427
  %5 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !429, !tbaa !123
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !430
  %7 = load i32, i32* %6, align 8, !dbg !430, !tbaa !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %8 = icmp eq %struct.sys_timeo* %5, null, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %8, label %24, label %9, !dbg !437

; <label>:9:                                      ; preds = %3
  %10 = sub i32 %4, %7
  %11 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !438
  store i32 %4, i32* %11, align 8, !dbg !440, !tbaa !295
  %12 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 0, !dbg !441
  %13 = load %struct.sys_timeo*, %struct.sys_timeo** %12, align 8, !dbg !441, !tbaa !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %14 = icmp eq %struct.sys_timeo* %13, null, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %14, label %24, label %15, !dbg !437, !llvm.loop !443

; <label>:15:                                     ; preds = %9, %15
  %16 = phi %struct.sys_timeo* [ %22, %15 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 1
  %18 = load i32, i32* %17, align 8, !dbg !438, !tbaa !295
  %19 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 1, !dbg !438
  %20 = add i32 %10, %18, !dbg !445
  store i32 %20, i32* %19, align 8, !dbg !440, !tbaa !295
  %21 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %16, i64 0, i32 0, !dbg !441
  %22 = load %struct.sys_timeo*, %struct.sys_timeo** %21, align 8, !dbg !441, !tbaa !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %23 = icmp eq %struct.sys_timeo* %22, null, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %23, label %24, label %15, !dbg !437, !llvm.loop !443

; <label>:24:                                     ; preds = %15, %3, %9, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  ret void, !dbg !448
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_timeouts_sleeptime() local_unnamed_addr #1 !dbg !449 {
  %1 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !457, !tbaa !123
  %2 = icmp eq %struct.sys_timeo* %1, null, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %2, label %10, label %3, !dbg !460

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @sys_now() #7, !dbg !461
  %5 = load %struct.sys_timeo*, %struct.sys_timeo** @next_timeout, align 8, !dbg !463, !tbaa !123
  %6 = getelementptr inbounds %struct.sys_timeo, %struct.sys_timeo* %5, i64 0, i32 1, !dbg !463
  %7 = load i32, i32* %6, align 8, !dbg !463, !tbaa !295
  %8 = sub i32 %7, %4, !dbg !463
  %9 = icmp slt i32 %8, 0, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %9, label %12, label %10, !dbg !464

; <label>:10:                                     ; preds = %3, %0
  %11 = phi i32 [ -1, %0 ], [ %8, %3 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %12, !dbg !467

; <label>:12:                                     ; preds = %10, %3
  %13 = phi i32 [ 0, %3 ], [ %11, %10 ], !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret i32 %13, !dbg !467
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
!142 = !DILocation(line: 297, column: 3, scope: !143, inlinedAt: !138)
!143 = distinct !DILexicalBlock(scope: !130, file: !3, line: 297, column: 3)
!144 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !138)
!145 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !138)
!146 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !138)
!147 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !138)
!148 = !DILocation(line: 306, column: 1, scope: !130, inlinedAt: !138)
!149 = !DILocation(line: 175, column: 3, scope: !139)
!150 = !DILocation(line: 176, column: 1, scope: !118)
!151 = !DILocation(line: 290, column: 19, scope: !130)
!152 = !DILocation(line: 290, column: 46, scope: !130)
!153 = !DILocation(line: 290, column: 61, scope: !130)
!154 = !DILocation(line: 297, column: 3, scope: !155)
!155 = distinct !DILexicalBlock(scope: !143, file: !3, line: 297, column: 3)
!156 = !DILocation(line: 297, column: 3, scope: !143)
!157 = !DILocation(line: 297, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 297, column: 3)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 297, column: 3)
!160 = !DILocation(line: 297, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 297, column: 3)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 297, column: 3)
!163 = distinct !DILexicalBlock(scope: !158, file: !3, line: 297, column: 3)
!164 = !DILocation(line: 299, column: 31, scope: !130)
!165 = !DILocation(line: 299, column: 41, scope: !130)
!166 = !DILocation(line: 293, column: 9, scope: !130)
!167 = !DILocation(line: 304, column: 3, scope: !130)
!168 = !DILocation(line: 306, column: 1, scope: !130)
!169 = distinct !DISubprogram(name: "tcpip_tcp_timer", scope: !3, file: !3, line: 144, type: !64, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !170)
!170 = !{!171}
!171 = !DILocalVariable(name: "arg", arg: 1, scope: !169, file: !3, line: 144, type: !35)
!172 = !DILocation(line: 144, column: 23, scope: !169)
!173 = !DILocation(line: 149, column: 3, scope: !169)
!174 = !DILocation(line: 151, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !3, line: 151, column: 7)
!176 = !DILocation(line: 151, column: 26, scope: !175)
!177 = !DILocation(line: 151, column: 23, scope: !175)
!178 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !179)
!179 = distinct !DILocation(line: 153, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 151, column: 39)
!181 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !179)
!182 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !179)
!183 = !DILocation(line: 297, column: 3, scope: !143, inlinedAt: !179)
!184 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !179)
!185 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !179)
!186 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !179)
!187 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !179)
!188 = !DILocation(line: 306, column: 1, scope: !130, inlinedAt: !179)
!189 = !DILocation(line: 154, column: 3, scope: !180)
!190 = !DILocation(line: 158, column: 1, scope: !169)
!191 = distinct !DISubprogram(name: "sys_timeouts_init", scope: !3, file: !3, line: 264, type: !54, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !192)
!192 = !{!193}
!193 = !DILocalVariable(name: "i", scope: !191, file: !3, line: 266, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 40, baseType: !196)
!195 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !197, line: 129, baseType: !198)
!197 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!198 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!199 = !DILocation(line: 266, column: 10, scope: !191)
!200 = !DILocation(line: 268, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !191, file: !3, line: 268, column: 3)
!202 = !DILocation(line: 268, column: 3, scope: !201)
!203 = !DILocation(line: 290, column: 19, scope: !130, inlinedAt: !204)
!204 = distinct !DILocation(line: 271, column: 5, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 268, column: 77)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 268, column: 3)
!207 = !DILocation(line: 290, column: 46, scope: !130, inlinedAt: !204)
!208 = !DILocation(line: 297, column: 3, scope: !143, inlinedAt: !204)
!209 = !DILocation(line: 290, column: 61, scope: !130, inlinedAt: !204)
!210 = !DILocation(line: 299, column: 31, scope: !130, inlinedAt: !204)
!211 = !DILocation(line: 299, column: 41, scope: !130, inlinedAt: !204)
!212 = !DILocation(line: 293, column: 9, scope: !130, inlinedAt: !204)
!213 = !DILocation(line: 304, column: 3, scope: !130, inlinedAt: !204)
!214 = !DILocation(line: 306, column: 1, scope: !130, inlinedAt: !204)
!215 = !DILocation(line: 268, column: 3, scope: !206)
!216 = !DILocation(line: 273, column: 1, scope: !191)
!217 = distinct !DISubprogram(name: "lwip_cyclic_timer", scope: !3, file: !3, line: 232, type: !64, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !218)
!218 = !{!219, !220, !221, !222}
!219 = !DILocalVariable(name: "arg", arg: 1, scope: !217, file: !3, line: 232, type: !35)
!220 = !DILocalVariable(name: "now", scope: !217, file: !3, line: 234, type: !39)
!221 = !DILocalVariable(name: "next_timeout_time", scope: !217, file: !3, line: 235, type: !39)
!222 = !DILocalVariable(name: "cyclic", scope: !217, file: !3, line: 236, type: !45)
!223 = !DILocation(line: 232, column: 25, scope: !217)
!224 = !DILocation(line: 236, column: 35, scope: !217)
!225 = !DILocation(line: 241, column: 11, scope: !217)
!226 = !{!227, !124, i64 8}
!227 = !{!"lwip_cyclic_timer", !228, i64 0, !124, i64 8}
!228 = !{!"int", !125, i64 0}
!229 = !DILocation(line: 241, column: 3, scope: !217)
!230 = !DILocation(line: 243, column: 9, scope: !217)
!231 = !DILocation(line: 234, column: 9, scope: !217)
!232 = !DILocation(line: 244, column: 31, scope: !217)
!233 = !{!228, !228, i64 0}
!234 = !DILocation(line: 244, column: 66, scope: !217)
!235 = !{!227, !228, i64 0}
!236 = !DILocation(line: 244, column: 56, scope: !217)
!237 = !DILocation(line: 235, column: 9, scope: !217)
!238 = !DILocation(line: 245, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !217, file: !3, line: 245, column: 7)
!240 = !DILocation(line: 245, column: 7, scope: !217)
!241 = !DILocation(line: 250, column: 33, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 245, column: 47)
!243 = !DILocation(line: 250, column: 5, scope: !242)
!244 = !DILocation(line: 253, column: 3, scope: !242)
!245 = !DILocation(line: 258, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !3, line: 253, column: 10)
!247 = !DILocation(line: 261, column: 1, scope: !217)
!248 = !DILocation(line: 194, column: 43, scope: !80)
!249 = !DILocation(line: 196, column: 2, scope: !80)
!250 = !DILocation(line: 196, column: 10, scope: !80)
!251 = !DILocation(line: 197, column: 2, scope: !80)
!252 = !DILocation(line: 198, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !81, line: 198, column: 2)
!254 = distinct !DILexicalBlock(scope: !80, file: !81, line: 198, column: 2)
!255 = !DILocation(line: 199, column: 2, scope: !80)
!256 = !DILocation(line: 200, column: 1, scope: !80)
!257 = distinct !DISubprogram(name: "sys_timeout_abs", scope: !3, file: !3, line: 183, type: !131, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DILocalVariable(name: "abs_time", arg: 1, scope: !257, file: !3, line: 183, type: !39)
!260 = !DILocalVariable(name: "handler", arg: 2, scope: !257, file: !3, line: 183, type: !62)
!261 = !DILocalVariable(name: "arg", arg: 3, scope: !257, file: !3, line: 183, type: !35)
!262 = !DILocalVariable(name: "timeout", scope: !257, file: !3, line: 186, type: !56)
!263 = !DILocalVariable(name: "t", scope: !257, file: !3, line: 186, type: !56)
!264 = !DILocation(line: 183, column: 23, scope: !257)
!265 = !DILocation(line: 183, column: 53, scope: !257)
!266 = !DILocation(line: 183, column: 68, scope: !257)
!267 = !DILocation(line: 188, column: 33, scope: !257)
!268 = !DILocation(line: 189, column: 15, scope: !269)
!269 = distinct !DILexicalBlock(scope: !257, file: !3, line: 189, column: 7)
!270 = !DILocation(line: 189, column: 7, scope: !257)
!271 = !DILocation(line: 186, column: 21, scope: !257)
!272 = !DILocation(line: 190, column: 5, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 190, column: 5)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 189, column: 24)
!275 = !DILocation(line: 190, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 190, column: 5)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 190, column: 5)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 190, column: 5)
!279 = !DILocation(line: 190, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 190, column: 5)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 190, column: 5)
!282 = distinct !DILexicalBlock(scope: !276, file: !3, line: 190, column: 5)
!283 = !DILocation(line: 194, column: 12, scope: !257)
!284 = !DILocation(line: 194, column: 17, scope: !257)
!285 = !{!286, !124, i64 0}
!286 = !{!"sys_timeo", !124, i64 0, !228, i64 8, !124, i64 16, !124, i64 24}
!287 = !DILocation(line: 195, column: 12, scope: !257)
!288 = !DILocation(line: 195, column: 14, scope: !257)
!289 = !{!286, !124, i64 16}
!290 = !DILocation(line: 196, column: 12, scope: !257)
!291 = !DILocation(line: 196, column: 16, scope: !257)
!292 = !{!286, !124, i64 24}
!293 = !DILocation(line: 197, column: 12, scope: !257)
!294 = !DILocation(line: 197, column: 17, scope: !257)
!295 = !{!286, !228, i64 8}
!296 = !DILocation(line: 205, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !257, file: !3, line: 205, column: 7)
!298 = !DILocation(line: 205, column: 20, scope: !297)
!299 = !DILocation(line: 205, column: 7, scope: !257)
!300 = !DILocation(line: 206, column: 18, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !3, line: 205, column: 29)
!302 = !DILocation(line: 207, column: 5, scope: !301)
!303 = !DILocation(line: 209, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !257, file: !3, line: 209, column: 7)
!305 = !DILocation(line: 209, column: 7, scope: !257)
!306 = !DILocation(line: 210, column: 19, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 209, column: 58)
!308 = !DILocation(line: 212, column: 3, scope: !307)
!309 = !DILocation(line: 186, column: 31, scope: !257)
!310 = !DILocation(line: 213, column: 10, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 213, column: 5)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 212, column: 10)
!313 = !DILocation(line: 213, column: 5, scope: !311)
!314 = !DILocation(line: 214, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 214, column: 11)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 213, column: 52)
!317 = distinct !DILexicalBlock(scope: !311, file: !3, line: 213, column: 5)
!318 = !DILocation(line: 214, column: 20, scope: !315)
!319 = !DILocation(line: 214, column: 29, scope: !315)
!320 = !DILocation(line: 214, column: 32, scope: !315)
!321 = !DILocation(line: 214, column: 11, scope: !316)
!322 = distinct !{!322, !313, !323}
!323 = !DILocation(line: 219, column: 5, scope: !311)
!324 = !DILocation(line: 0, scope: !317)
!325 = !DILocation(line: 215, column: 28, scope: !326)
!326 = distinct !DILexicalBlock(scope: !315, file: !3, line: 214, column: 78)
!327 = !DILocation(line: 215, column: 23, scope: !326)
!328 = !DILocation(line: 216, column: 17, scope: !326)
!329 = !DILocation(line: 217, column: 9, scope: !326)
!330 = !DILocation(line: 213, column: 5, scope: !317)
!331 = !DILocation(line: 0, scope: !307)
!332 = !DILocation(line: 221, column: 1, scope: !257)
!333 = !DILocation(line: 0, scope: !301)
!334 = distinct !DISubprogram(name: "sys_untimeout", scope: !3, file: !3, line: 317, type: !335, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !62, !35}
!337 = !{!338, !339, !340, !341}
!338 = !DILocalVariable(name: "handler", arg: 1, scope: !334, file: !3, line: 317, type: !62)
!339 = !DILocalVariable(name: "arg", arg: 2, scope: !334, file: !3, line: 317, type: !35)
!340 = !DILocalVariable(name: "prev_t", scope: !334, file: !3, line: 319, type: !56)
!341 = !DILocalVariable(name: "t", scope: !334, file: !3, line: 319, type: !56)
!342 = !DILocation(line: 317, column: 35, scope: !334)
!343 = !DILocation(line: 317, column: 50, scope: !334)
!344 = !DILocation(line: 323, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !334, file: !3, line: 323, column: 7)
!346 = !DILocation(line: 323, column: 20, scope: !345)
!347 = !DILocation(line: 323, column: 7, scope: !334)
!348 = !DILocation(line: 0, scope: !349)
!349 = distinct !DILexicalBlock(scope: !334, file: !3, line: 327, column: 3)
!350 = !DILocation(line: 319, column: 30, scope: !334)
!351 = !DILocation(line: 319, column: 21, scope: !334)
!352 = !DILocation(line: 327, column: 3, scope: !349)
!353 = !DILocation(line: 328, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 328, column: 9)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 327, column: 77)
!356 = distinct !DILexicalBlock(scope: !349, file: !3, line: 327, column: 3)
!357 = !DILocation(line: 328, column: 15, scope: !354)
!358 = !DILocation(line: 328, column: 27, scope: !354)
!359 = !DILocation(line: 328, column: 34, scope: !354)
!360 = !DILocation(line: 328, column: 38, scope: !354)
!361 = !DILocation(line: 328, column: 9, scope: !355)
!362 = !DILocation(line: 331, column: 18, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 331, column: 11)
!364 = distinct !DILexicalBlock(scope: !354, file: !3, line: 328, column: 47)
!365 = !DILocation(line: 0, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !3, line: 333, column: 14)
!367 = !DILocation(line: 331, column: 11, scope: !364)
!368 = !DILocation(line: 334, column: 22, scope: !366)
!369 = !DILocation(line: 0, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !3, line: 331, column: 27)
!371 = !DILocation(line: 336, column: 35, scope: !364)
!372 = !DILocation(line: 336, column: 7, scope: !364)
!373 = !DILocation(line: 337, column: 7, scope: !364)
!374 = !DILocation(line: 327, column: 71, scope: !356)
!375 = !DILocation(line: 327, column: 3, scope: !356)
!376 = !DILocation(line: 327, column: 43, scope: !356)
!377 = distinct !{!377, !352, !378}
!378 = !DILocation(line: 339, column: 3, scope: !349)
!379 = !DILocation(line: 0, scope: !364)
!380 = !DILocation(line: 341, column: 1, scope: !334)
!381 = distinct !DISubprogram(name: "sys_check_timeouts", scope: !3, file: !3, line: 352, type: !54, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !382)
!382 = !{!383, !384, !386, !387}
!383 = !DILocalVariable(name: "now", scope: !381, file: !3, line: 354, type: !39)
!384 = !DILocalVariable(name: "tmptimeout", scope: !385, file: !3, line: 362, type: !56)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 361, column: 6)
!386 = !DILocalVariable(name: "handler", scope: !385, file: !3, line: 363, type: !62)
!387 = !DILocalVariable(name: "arg", scope: !385, file: !3, line: 364, type: !35)
!388 = !DILocation(line: 359, column: 9, scope: !381)
!389 = !DILocation(line: 354, column: 9, scope: !381)
!390 = !DILocation(line: 361, column: 3, scope: !381)
!391 = !DILocation(line: 368, column: 18, scope: !385)
!392 = !DILocation(line: 362, column: 23, scope: !385)
!393 = !DILocation(line: 369, column: 20, scope: !394)
!394 = distinct !DILexicalBlock(scope: !385, file: !3, line: 369, column: 9)
!395 = !DILocation(line: 369, column: 9, scope: !385)
!396 = !DILocation(line: 373, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !385, file: !3, line: 373, column: 9)
!398 = !DILocation(line: 373, column: 9, scope: !385)
!399 = !DILocation(line: 378, column: 32, scope: !385)
!400 = !DILocation(line: 378, column: 18, scope: !385)
!401 = !DILocation(line: 379, column: 27, scope: !385)
!402 = !DILocation(line: 363, column: 25, scope: !385)
!403 = !DILocation(line: 380, column: 23, scope: !385)
!404 = !DILocation(line: 364, column: 11, scope: !385)
!405 = !DILocation(line: 381, column: 30, scope: !385)
!406 = !DILocation(line: 388, column: 33, scope: !385)
!407 = !DILocation(line: 388, column: 5, scope: !385)
!408 = !DILocation(line: 389, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !385, file: !3, line: 389, column: 9)
!410 = !DILocation(line: 389, column: 9, scope: !385)
!411 = !DILocation(line: 390, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 389, column: 26)
!413 = !DILocation(line: 391, column: 5, scope: !412)
!414 = !DILocation(line: 395, column: 3, scope: !381)
!415 = !DILocation(line: 0, scope: !416)
!416 = distinct !DILexicalBlock(scope: !394, file: !3, line: 369, column: 29)
!417 = !DILocation(line: 396, column: 1, scope: !381)
!418 = distinct !DISubprogram(name: "sys_restart_timeouts", scope: !3, file: !3, line: 404, type: !54, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !419)
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "now", scope: !418, file: !3, line: 406, type: !39)
!421 = !DILocalVariable(name: "base", scope: !418, file: !3, line: 407, type: !39)
!422 = !DILocalVariable(name: "t", scope: !418, file: !3, line: 408, type: !56)
!423 = !DILocation(line: 410, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !3, line: 410, column: 7)
!425 = !DILocation(line: 410, column: 20, scope: !424)
!426 = !DILocation(line: 410, column: 7, scope: !418)
!427 = !DILocation(line: 414, column: 9, scope: !418)
!428 = !DILocation(line: 406, column: 9, scope: !418)
!429 = !DILocation(line: 415, column: 10, scope: !418)
!430 = !DILocation(line: 415, column: 24, scope: !418)
!431 = !DILocation(line: 407, column: 9, scope: !418)
!432 = !DILocation(line: 408, column: 21, scope: !418)
!433 = !DILocation(line: 417, column: 8, scope: !434)
!434 = distinct !DILexicalBlock(scope: !418, file: !3, line: 417, column: 3)
!435 = !DILocation(line: 417, column: 28, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !3, line: 417, column: 3)
!437 = !DILocation(line: 417, column: 3, scope: !434)
!438 = !DILocation(line: 418, column: 19, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !3, line: 417, column: 50)
!440 = !DILocation(line: 418, column: 13, scope: !439)
!441 = !DILocation(line: 417, column: 44, scope: !436)
!442 = !DILocation(line: 417, column: 3, scope: !436)
!443 = distinct !{!443, !437, !444}
!444 = !DILocation(line: 419, column: 3, scope: !434)
!445 = !DILocation(line: 418, column: 32, scope: !439)
!446 = !DILocation(line: 0, scope: !447)
!447 = distinct !DILexicalBlock(scope: !424, file: !3, line: 410, column: 29)
!448 = !DILocation(line: 420, column: 1, scope: !418)
!449 = distinct !DISubprogram(name: "sys_timeouts_sleeptime", scope: !3, file: !3, line: 426, type: !450, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!39}
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "now", scope: !449, file: !3, line: 428, type: !39)
!454 = !DILocalVariable(name: "ret", scope: !455, file: !3, line: 439, type: !39)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 438, column: 10)
!456 = distinct !DILexicalBlock(scope: !449, file: !3, line: 436, column: 7)
!457 = !DILocation(line: 432, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !449, file: !3, line: 432, column: 7)
!459 = !DILocation(line: 432, column: 20, scope: !458)
!460 = !DILocation(line: 432, column: 7, scope: !449)
!461 = !DILocation(line: 435, column: 9, scope: !449)
!462 = !DILocation(line: 428, column: 9, scope: !449)
!463 = !DILocation(line: 436, column: 7, scope: !456)
!464 = !DILocation(line: 436, column: 7, scope: !449)
!465 = !DILocation(line: 0, scope: !466)
!466 = distinct !DILexicalBlock(scope: !455, file: !3, line: 440, column: 5)
!467 = !DILocation(line: 443, column: 1, scope: !449)
!468 = !DILocation(line: 0, scope: !455)
