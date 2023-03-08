; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/netif.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/netif.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], {}*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.netif_ext_callback = type { void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, %struct.netif_ext_callback* }
%union.netif_ext_callback_args_t = type { %struct.ipv4_changed_s }
%struct.ipv4_changed_s = type { %struct.ip_addr*, %struct.ip_addr*, %struct.ip_addr* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ipv6_addr_state_changed_s = type { i8, i8, %struct.ip_addr* }

@.str = private unnamed_addr constant [26 x i8] c"netif_input: invalid pbuf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"netif_input: invalid netif\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"netif_add: invalid netif\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"netif_add: No init function given\00", align 1
@ip_addr_any = external dso_local constant %struct.ip_addr, align 4
@netif_num = internal unnamed_addr global i8 0, align 1, !dbg !0
@netif_list = common dso_local local_unnamed_addr global %struct.netif* null, align 8, !dbg !221
@.str.6 = private unnamed_addr constant [20 x i8] c"netif already added\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"too many netifs, max. supported number is 255\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"netif_set_ipaddr: invalid netif\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"netif_set_netmask: invalid netif\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"netif_set_gw: invalid netif\00", align 1
@netif_default = common dso_local local_unnamed_addr global %struct.netif* null, align 8, !dbg !223
@.str.11 = private unnamed_addr constant [28 x i8] c"netif_set_up: invalid netif\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"netif_set_down: invalid netif\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"netif_set_link_up: invalid netif\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"netif_set_link_down: invalid netif\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"netif_ip6_addr_set: invalid netif\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"netif_ip6_addr_set: invalid addr6\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"netif != NULL\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"netif_get_ip6_addr_match: invalid netif\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"netif_get_ip6_addr_match: invalid ip6addr\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"netif_create_ip6_linklocal_address: invalid netif\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"netif_add_ip6_address: invalid netif\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"netif_add_ip6_address: invalid ip6addr\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"callback must be != NULL\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"fn must be != NULL\00", align 1
@ext_callback = internal unnamed_addr global %struct.netif_ext_callback* null, align 8, !dbg !87
@.str.27 = private unnamed_addr constant [22 x i8] c"netif must be != NULL\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !225
@uk_pr_crit.__str.28 = internal global [8 x i8] c"netif.c\00", section ".data_shared", align 1, !dbg !249
@.str.29 = private unnamed_addr constant [16 x i8] c"invalid pointer\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"netif_issue_reports: invalid netif\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: norecurse noredzone nounwind
define dso_local void @netif_init() local_unnamed_addr #0 !dbg !255 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  ret void, !dbg !259
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #1 !dbg !260 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %3, label %4, label %5, !dbg !269

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #8, !dbg !270
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !273
  tail call void @ukplat_terminate(i32 3) #9, !dbg !273
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netif* %1, null, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %6, label %7, label %8, !dbg !280

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !281
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !284
  tail call void @ukplat_terminate(i32 3) #9, !dbg !284
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !288
  %10 = load i8, i8* %9, align 1, !dbg !288, !tbaa !290
  %11 = and i8 %10, 24, !dbg !297
  %12 = icmp eq i8 %11, 0, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %12, label %15, label %13, !dbg !298

; <label>:13:                                     ; preds = %8
  %14 = tail call signext i8 @ethernet_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #10, !dbg !299
  br label %17, !dbg !301

; <label>:15:                                     ; preds = %8
  %16 = tail call signext i8 @ip_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #10, !dbg !302
  br label %17, !dbg !303

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i8 [ %14, %13 ], [ %16, %15 ], !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  ret i8 %18, !dbg !306
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !227 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !308
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !308
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !310
  call void @llvm.va_start(i8* nonnull %3), !dbg !310
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.28, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !311
  call void @llvm.va_end(i8* nonnull %3), !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  ret void, !dbg !315
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @ethernet_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_add_noaddr(%struct.netif*, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #1 !dbg !316 {
  %5 = tail call %struct.netif* @netif_add(%struct.netif* %0, %struct.ip4_addr* null, %struct.ip4_addr* null, %struct.ip4_addr* null, i8* %1, i8 (%struct.netif*)* %2, i8 (%struct.pbuf*, %struct.netif*)* %3) #8, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  ret %struct.netif* %5, !dbg !333
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_add(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #1 !dbg !334 {
  %8 = icmp eq %struct.netif* %0, null, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %8, label %9, label %10, !dbg !359

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !360
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !363
  tail call void @ukplat_terminate(i32 3) #9, !dbg !363
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 (%struct.netif*)* %5, null, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %11, label %12, label %13, !dbg !370

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !371
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !374
  tail call void @ukplat_terminate(i32 3) #9, !dbg !374
  unreachable

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.ip4_addr* %1, null, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br i1 %14, label %15, label %16, !dbg !380

; <label>:15:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br label %16, !dbg !381

; <label>:16:                                     ; preds = %15, %13
  %17 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %15 ], [ %1, %13 ]
  %18 = icmp eq %struct.ip4_addr* %2, null, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %18, label %19, label %20, !dbg !385

; <label>:19:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br label %20, !dbg !386

; <label>:20:                                     ; preds = %19, %16
  %21 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %19 ], [ %2, %16 ]
  %22 = icmp eq %struct.ip4_addr* %3, null, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %22, label %23, label %24, !dbg !390

; <label>:23:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br label %24, !dbg !391

; <label>:24:                                     ; preds = %23, %20
  %25 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %23 ], [ %3, %20 ]
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !393
  %27 = bitcast i32* %26 to <4 x i32>*, !dbg !393
  store <4 x i32> zeroinitializer, <4 x i32>* %27, align 8, !dbg !393, !tbaa !396
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !393
  store i8 0, i8* %28, align 8, !dbg !393, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 1, !dbg !399
  store i8 0, i8* %29, align 4, !dbg !399, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !405
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !405
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 8, !dbg !405, !tbaa !396
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !405
  store i8 0, i8* %32, align 8, !dbg !405, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !410
  store i8 0, i8* %33, align 4, !dbg !410, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !416
  %35 = bitcast i32* %34 to <4 x i32>*, !dbg !416
  store <4 x i32> zeroinitializer, <4 x i32>* %35, align 8, !dbg !416, !tbaa !396
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !416
  store i8 0, i8* %36, align 8, !dbg !416, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !421
  store i8 0, i8* %37, align 4, !dbg !421, !tbaa !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 9, !dbg !427
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)* @netif_null_output_ip4, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %38, align 8, !dbg !428, !tbaa !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !434
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !434
  store <4 x i32> zeroinitializer, <4 x i32>* %40, align 8, !dbg !434, !tbaa !396
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !434
  store i8 0, i8* %41, align 8, !dbg !434, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 1, !dbg !441
  store i8 6, i8* %42, align 4, !dbg !441, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !447
  store i8 0, i8* %43, align 1, !dbg !448, !tbaa !396
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 0, !dbg !449
  store i32 0, i32* %44, align 4, !dbg !450, !tbaa !451
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 0, !dbg !453
  store i32 0, i32* %45, align 4, !dbg !454, !tbaa !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !434
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !434
  store <4 x i32> zeroinitializer, <4 x i32>* %47, align 8, !dbg !434, !tbaa !396
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !434
  store i8 0, i8* %48, align 8, !dbg !434, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 1, !dbg !441
  store i8 6, i8* %49, align 4, !dbg !441, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !447
  store i8 0, i8* %50, align 1, !dbg !448, !tbaa !396
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !449
  store i32 0, i32* %51, align 4, !dbg !450, !tbaa !451
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 1, !dbg !453
  store i32 0, i32* %52, align 4, !dbg !454, !tbaa !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %53 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !434
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !434
  store <4 x i32> zeroinitializer, <4 x i32>* %54, align 8, !dbg !434, !tbaa !396
  %55 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !434
  store i8 0, i8* %55, align 8, !dbg !434, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 1, !dbg !441
  store i8 6, i8* %56, align 4, !dbg !441, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !447
  store i8 0, i8* %57, align 1, !dbg !448, !tbaa !396
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !449
  store i32 0, i32* %58, align 4, !dbg !450, !tbaa !451
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 2, !dbg !453
  store i32 0, i32* %59, align 4, !dbg !454, !tbaa !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 11, !dbg !456
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)* @netif_null_output_ip6, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %60, align 8, !dbg !457, !tbaa !458
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !459
  store i16 -1, i16* %61, align 8, !dbg !459, !tbaa !461
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !462
  store i16 0, i16* %62, align 2, !dbg !463, !tbaa !464
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !465
  store i8 0, i8* %63, align 1, !dbg !466, !tbaa !290
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !467
  %65 = bitcast i8** %64 to i8*, !dbg !467
  %66 = tail call i8* @memset(i8* nonnull %65, i32 0, i64 8) #10, !dbg !468
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 24, !dbg !469
  store i8 0, i8* %67, align 1, !dbg !470, !tbaa !471
  tail call void @nd6_restart_netif(%struct.netif* nonnull %0) #10, !dbg !472
  %68 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !473
  store void (%struct.netif*)* null, void (%struct.netif*)** %68, align 8, !dbg !474, !tbaa !475
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !476
  store i8 (%struct.netif*, %struct.ip6_addr*, i32)* null, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %69, align 8, !dbg !477, !tbaa !478
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !479
  store i8* %4, i8** %70, align 8, !dbg !480, !tbaa !481
  %71 = load i8, i8* @netif_num, align 1, !dbg !482, !tbaa !396
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !483
  store i8 %71, i8* %72, align 8, !dbg !484, !tbaa !485
  %73 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 8, !dbg !486
  %74 = bitcast {}** %73 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !486
  store i8 (%struct.pbuf*, %struct.netif*)* %6, i8 (%struct.pbuf*, %struct.netif*)** %74, align 8, !dbg !487, !tbaa !488
  tail call void @netif_set_addr(%struct.netif* nonnull %0, %struct.ip4_addr* %17, %struct.ip4_addr* %21, %struct.ip4_addr* nonnull %25) #8, !dbg !489
  %75 = tail call signext i8 %5(%struct.netif* nonnull %0) #10, !dbg !490
  %76 = icmp eq i8 %75, 0, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %76, label %77, label %124, !dbg !493

; <label>:77:                                     ; preds = %24
  %78 = load i16, i16* %62, align 2, !dbg !494, !tbaa !464
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !495
  store i16 %78, i16* %79, align 4, !dbg !496, !tbaa !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %80 = load i8, i8* %72, align 8, !dbg !499, !tbaa !485
  %81 = load %struct.netif*, %struct.netif** @netif_list, align 8
  %82 = icmp eq %struct.netif* %81, null
  %83 = ptrtoint %struct.netif* %81 to i64, !dbg !498
  br label %84, !dbg !498

; <label>:84:                                     ; preds = %103, %77
  %85 = phi i8 [ %104, %103 ], [ %80, %77 ], !dbg !499
  %86 = icmp eq i8 %85, -1, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %86, label %87, label %88, !dbg !503

; <label>:87:                                     ; preds = %84
  store i8 0, i8* %72, align 8, !dbg !504, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  br label %88, !dbg !506

; <label>:88:                                     ; preds = %87, %84
  %89 = phi i8 [ 0, %87 ], [ %85, %84 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %82, label %109, label %90, !dbg !511

; <label>:90:                                     ; preds = %88, %105
  %91 = phi i32 [ %96, %105 ], [ 0, %88 ]
  %92 = phi %struct.netif* [ %107, %105 ], [ %81, %88 ]
  %93 = icmp eq %struct.netif* %92, %0, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br i1 %93, label %94, label %95, !dbg !517

; <label>:94:                                     ; preds = %90
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !518
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !521
  tail call void @ukplat_terminate(i32 3) #9, !dbg !521
  unreachable

; <label>:95:                                     ; preds = %90
  %96 = add nuw nsw i32 %91, 1, !dbg !525
  %97 = icmp ult i32 %96, 256, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %97, label %99, label %98, !dbg !529

; <label>:98:                                     ; preds = %95
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !530
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !533
  tail call void @ukplat_terminate(i32 3) #9, !dbg !533
  unreachable

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds %struct.netif, %struct.netif* %92, i64 0, i32 23, !dbg !537
  %101 = load i8, i8* %100, align 8, !dbg !537, !tbaa !485
  %102 = icmp eq i8 %101, %89, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %102, label %103, label %105, !dbg !540

; <label>:103:                                    ; preds = %99
  %104 = add i8 %89, 1, !dbg !541
  store i8 %104, i8* %72, align 8, !dbg !541, !tbaa !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %84, !dbg !544

; <label>:105:                                    ; preds = %99
  %106 = getelementptr inbounds %struct.netif, %struct.netif* %92, i64 0, i32 0, !dbg !545
  %107 = load %struct.netif*, %struct.netif** %106, align 8, !dbg !545, !tbaa !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  %108 = icmp eq %struct.netif* %107, null, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %108, label %109, label %90, !dbg !511, !llvm.loop !549

; <label>:109:                                    ; preds = %88, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %110 = icmp eq i8 %89, -2, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  %111 = add i8 %89, 1, !dbg !554
  %112 = select i1 %110, i8 0, i8 %111, !dbg !553
  store i8 %112, i8* @netif_num, align 1, !dbg !556, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %113 = bitcast %struct.netif* %0 to i64*, !dbg !557
  store i64 %83, i64* %113, align 8, !dbg !557, !tbaa !546
  store %struct.netif* %0, %struct.netif** @netif_list, align 8, !dbg !558, !tbaa !559
  %114 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !570, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %115 = icmp eq %struct.netif_ext_callback* %114, null, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %115, label %123, label %116, !dbg !575

; <label>:116:                                    ; preds = %109, %116
  %117 = phi %struct.netif_ext_callback* [ %121, %116 ], [ %114, %109 ]
  %118 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %117, i64 0, i32 0, !dbg !576
  %119 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %118, align 8, !dbg !576, !tbaa !578
  tail call void %119(%struct.netif* nonnull %0, i16 zeroext 1, %union.netif_ext_callback_args_t* null) #10, !dbg !580
  %120 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %117, i64 0, i32 1, !dbg !581
  %121 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %120, align 8, !dbg !581, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %122 = icmp eq %struct.netif_ext_callback* %121, null, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %122, label %123, label %116, !dbg !575, !llvm.loop !583

; <label>:123:                                    ; preds = %116, %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br label %124, !dbg !587

; <label>:124:                                    ; preds = %24, %123
  %125 = phi %struct.netif* [ %0, %123 ], [ null, %24 ], !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  ret %struct.netif* %125, !dbg !591
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #6

; Function Attrs: noredzone nounwind
define internal signext i8 @netif_null_output_ip4(%struct.netif* nocapture readnone, %struct.pbuf* nocapture readnone, %struct.ip4_addr* nocapture readnone) #1 !dbg !592 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  ret i8 -12, !dbg !600
}

; Function Attrs: noredzone nounwind
define internal signext i8 @netif_null_output_ip6(%struct.netif* nocapture readnone, %struct.pbuf* nocapture readnone, %struct.ip6_addr* nocapture readnone) #1 !dbg !601 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  ret i8 -12, !dbg !609
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @nd6_restart_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_addr(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !610 {
  %5 = alloca %union.netif_ext_callback_args_t, align 8
  %6 = alloca %struct.ip_addr, align 4
  %7 = alloca %struct.ip_addr, align 4
  %8 = alloca %struct.ip_addr, align 4
  %9 = bitcast %union.netif_ext_callback_args_t* %5 to i8*, !dbg !632
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !632
  %10 = bitcast %struct.ip_addr* %6 to i8*, !dbg !633
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !633
  %11 = bitcast %struct.ip_addr* %7 to i8*, !dbg !634
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !634
  %12 = bitcast %struct.ip_addr* %8 to i8*, !dbg !637
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7, !dbg !637
  %13 = icmp eq %struct.ip4_addr* %1, null, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br i1 %13, label %14, label %15, !dbg !640

; <label>:14:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br label %15, !dbg !641

; <label>:15:                                     ; preds = %14, %4
  %16 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %14 ], [ %1, %4 ]
  %17 = icmp eq %struct.ip4_addr* %2, null, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %17, label %18, label %19, !dbg !645

; <label>:18:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br label %19, !dbg !646

; <label>:19:                                     ; preds = %18, %15
  %20 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %18 ], [ %2, %15 ]
  %21 = icmp eq %struct.ip4_addr* %3, null, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %21, label %22, label %23, !dbg !650

; <label>:22:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br label %23, !dbg !651

; <label>:23:                                     ; preds = %22, %19
  %24 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %22 ], [ %3, %19 ]
  %25 = icmp eq %struct.ip4_addr* %16, null, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %25, label %26, label %27, !dbg !653

; <label>:26:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %31, !dbg !654

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %16, i64 0, i32 0, !dbg !653
  %29 = load i32, i32* %28, align 4, !dbg !653, !tbaa !655
  %30 = icmp eq i32 %29, 0, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br i1 %30, label %31, label %36, !dbg !654

; <label>:31:                                     ; preds = %26, %27
  %32 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* %0, %struct.ip4_addr* %16, %struct.ip_addr* nonnull %8) #8, !dbg !658
  %33 = icmp eq i32 %32, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %33, label %36, label %34, !dbg !662

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 0, !dbg !663
  store %struct.ip_addr* %8, %struct.ip_addr** %35, align 8, !dbg !665, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %36, !dbg !666

; <label>:36:                                     ; preds = %31, %34, %27
  %37 = phi i1 [ true, %34 ], [ true, %31 ], [ false, %27 ]
  %38 = phi i16 [ 16, %34 ], [ 0, %31 ], [ 0, %27 ], !dbg !667
  %39 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %20, i64 0, i32 0, !dbg !681
  %40 = load i32, i32* %39, align 4, !dbg !681, !tbaa !655
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !681
  %42 = load i32, i32* %41, align 8, !dbg !681, !tbaa !396
  %43 = icmp eq i32 %40, %42, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %43, label %59, label %44, !dbg !683

; <label>:44:                                     ; preds = %36
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !685
  %46 = load i8, i8* %45, align 4, !dbg !685, !tbaa !445
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 1, !dbg !685
  store i8 %46, i8* %47, align 4, !dbg !685, !tbaa !445
  %48 = icmp eq i8 %46, 6, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %49 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !692
  store i32 %42, i32* %49, align 4, !dbg !692, !tbaa !396
  br i1 %48, label %50, label %60, !dbg !691

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !692
  %52 = load i32, i32* %51, align 4, !dbg !692, !tbaa !396
  %53 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !692
  %54 = load i32, i32* %53, align 8, !dbg !692, !tbaa !396
  %55 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !692
  %56 = load i32, i32* %55, align 4, !dbg !692, !tbaa !396
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !692
  %58 = load i8, i8* %57, align 8, !dbg !692, !tbaa !396
  br label %60, !dbg !695

; <label>:59:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br label %71, !dbg !697

; <label>:60:                                     ; preds = %44, %50
  %61 = phi i32 [ %56, %50 ], [ 0, %44 ]
  %62 = phi i32 [ %54, %50 ], [ 0, %44 ]
  %63 = phi i32 [ %52, %50 ], [ 0, %44 ]
  %64 = phi i8 [ %58, %50 ], [ 0, %44 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %65 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !698
  store i32 %61, i32* %65, align 4, !dbg !698
  %66 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !698
  store i32 %62, i32* %66, align 4, !dbg !698
  %67 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !698
  store i32 %63, i32* %67, align 4, !dbg !698
  %68 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 1, !dbg !692
  store i8 %64, i8* %68, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  store i32 %40, i32* %41, align 8, !dbg !701, !tbaa !396
  store i8 0, i8* %45, align 4, !dbg !702, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  %69 = or i16 %38, 64, !dbg !705
  %70 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 1, !dbg !707
  store %struct.ip_addr* %6, %struct.ip_addr** %70, align 8, !dbg !708, !tbaa !396
  br label %71, !dbg !709

; <label>:71:                                     ; preds = %59, %60
  %72 = phi i16 [ %69, %60 ], [ %38, %59 ], !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %73 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %24, i64 0, i32 0, !dbg !723
  %74 = load i32, i32* %73, align 4, !dbg !723, !tbaa !655
  %75 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !723
  %76 = load i32, i32* %75, align 8, !dbg !723, !tbaa !396
  %77 = icmp eq i32 %74, %76, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %77, label %93, label %78, !dbg !725

; <label>:78:                                     ; preds = %71
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !727
  %80 = load i8, i8* %79, align 4, !dbg !727, !tbaa !445
  %81 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !727
  store i8 %80, i8* %81, align 4, !dbg !727, !tbaa !445
  %82 = icmp eq i8 %80, 6, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  %83 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !734
  store i32 %76, i32* %83, align 4, !dbg !734, !tbaa !396
  br i1 %82, label %84, label %94, !dbg !733

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 1, !dbg !734
  %86 = load i32, i32* %85, align 4, !dbg !734, !tbaa !396
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 2, !dbg !734
  %88 = load i32, i32* %87, align 8, !dbg !734, !tbaa !396
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 3, !dbg !734
  %90 = load i32, i32* %89, align 4, !dbg !734, !tbaa !396
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !734
  %92 = load i8, i8* %91, align 8, !dbg !734, !tbaa !396
  br label %94, !dbg !737

; <label>:93:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %105, !dbg !739

; <label>:94:                                     ; preds = %78, %84
  %95 = phi i32 [ %90, %84 ], [ 0, %78 ]
  %96 = phi i32 [ %88, %84 ], [ 0, %78 ]
  %97 = phi i32 [ %86, %84 ], [ 0, %78 ]
  %98 = phi i8 [ %92, %84 ], [ 0, %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %99 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !740
  store i32 %95, i32* %99, align 4, !dbg !740
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !740
  store i32 %96, i32* %100, align 4, !dbg !740
  %101 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !740
  store i32 %97, i32* %101, align 4, !dbg !740
  %102 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !734
  store i8 %98, i8* %102, align 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  store i32 %74, i32* %75, align 8, !dbg !743, !tbaa !396
  store i8 0, i8* %79, align 4, !dbg !744, !tbaa !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %103 = or i16 %72, 32, !dbg !747
  %104 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 2, !dbg !749
  store %struct.ip_addr* %7, %struct.ip_addr** %104, align 8, !dbg !750, !tbaa !396
  br label %105, !dbg !751

; <label>:105:                                    ; preds = %93, %94
  %106 = phi i16 [ %103, %94 ], [ %72, %93 ], !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br i1 %37, label %113, label %107, !dbg !753

; <label>:107:                                    ; preds = %105
  %108 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* nonnull %0, %struct.ip4_addr* %16, %struct.ip_addr* nonnull %8) #8, !dbg !754
  %109 = icmp eq i32 %108, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br i1 %109, label %113, label %110, !dbg !758

; <label>:110:                                    ; preds = %107
  %111 = or i16 %106, 16, !dbg !759
  %112 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 0, !dbg !761
  store %struct.ip_addr* %8, %struct.ip_addr** %112, align 8, !dbg !762, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  br label %115, !dbg !764

; <label>:113:                                    ; preds = %107, %105
  %114 = icmp eq i16 %106, 0, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  br i1 %114, label %128, label %115, !dbg !764

; <label>:115:                                    ; preds = %113, %110
  %116 = phi i16 [ %111, %110 ], [ %106, %113 ]
  %117 = or i16 %116, 128, !dbg !767
  %118 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !774, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %119 = icmp eq %struct.netif_ext_callback* %118, null, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %119, label %127, label %120, !dbg !778

; <label>:120:                                    ; preds = %115, %120
  %121 = phi %struct.netif_ext_callback* [ %125, %120 ], [ %118, %115 ]
  %122 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %121, i64 0, i32 0, !dbg !779
  %123 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %122, align 8, !dbg !779, !tbaa !578
  call void %123(%struct.netif* nonnull %0, i16 zeroext %117, %union.netif_ext_callback_args_t* nonnull %5) #10, !dbg !780
  %124 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %121, i64 0, i32 1, !dbg !781
  %125 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %124, align 8, !dbg !781, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  %126 = icmp eq %struct.netif_ext_callback* %125, null, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %126, label %127, label %120, !dbg !778, !llvm.loop !583

; <label>:127:                                    ; preds = %120, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br label %128, !dbg !783

; <label>:128:                                    ; preds = %113, %127
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  ret void, !dbg !784
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #6

; Function Attrs: noredzone nounwind
define dso_local void @netif_invoke_ext_callback(%struct.netif*, i16 zeroext, %union.netif_ext_callback_args_t*) local_unnamed_addr #1 !dbg !561 {
  %4 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !788, !tbaa !559
  %5 = icmp eq %struct.netif* %0, null, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %5, label %8, label %6, !dbg !792

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.netif_ext_callback* %4, null, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %7, label %16, label %9, !dbg !584

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !794
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !797
  tail call void @ukplat_terminate(i32 3) #9, !dbg !797
  unreachable

; <label>:9:                                      ; preds = %6, %9
  %10 = phi %struct.netif_ext_callback* [ %14, %9 ], [ %4, %6 ]
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %10, i64 0, i32 0, !dbg !801
  %12 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %11, align 8, !dbg !801, !tbaa !578
  tail call void %12(%struct.netif* nonnull %0, i16 zeroext %1, %union.netif_ext_callback_args_t* %2) #10, !dbg !802
  %13 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %10, i64 0, i32 1, !dbg !803
  %14 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %13, align 8, !dbg !803, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  %15 = icmp eq %struct.netif_ext_callback* %14, null, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %15, label %16, label %9, !dbg !584, !llvm.loop !583

; <label>:16:                                     ; preds = %9, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  ret void, !dbg !804
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_ipaddr(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !805 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !817
  %6 = icmp eq %struct.netif* %0, null, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br i1 %6, label %7, label %8, !dbg !821

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !822
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !825
  tail call void @ukplat_terminate(i32 3) #9, !dbg !825
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %9, label %10, label %11, !dbg !831

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  br label %11, !dbg !832

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %10 ], [ %1, %8 ]
  %13 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %12, %struct.ip_addr* nonnull %3) #8, !dbg !835
  %14 = icmp eq i32 %13, 0, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %14, label %28, label %15, !dbg !836

; <label>:15:                                     ; preds = %11
  %16 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !837
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #7, !dbg !837
  %17 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 0, !dbg !838
  store %struct.ip_addr* %3, %struct.ip_addr** %17, align 8, !dbg !839, !tbaa !396
  %18 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !845, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  %19 = icmp eq %struct.netif_ext_callback* %18, null, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %19, label %27, label %20, !dbg !849

; <label>:20:                                     ; preds = %15, %20
  %21 = phi %struct.netif_ext_callback* [ %25, %20 ], [ %18, %15 ]
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 0, !dbg !850
  %23 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %22, align 8, !dbg !850, !tbaa !578
  call void %23(%struct.netif* nonnull %0, i16 zeroext 16, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !851
  %24 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 1, !dbg !852
  %25 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %24, align 8, !dbg !852, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  %26 = icmp eq %struct.netif_ext_callback* %25, null, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %26, label %27, label %20, !dbg !849, !llvm.loop !583

; <label>:27:                                     ; preds = %20, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #7, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br label %28, !dbg !855

; <label>:28:                                     ; preds = %11, %27
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  ret void, !dbg !856
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @netif_do_set_ipaddr(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip_addr*) unnamed_addr #1 !dbg !857 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = icmp eq %struct.ip4_addr* %1, null, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br i1 %5, label %6, label %7, !dbg !871

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !872
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !875
  tail call void @ukplat_terminate(i32 3) #9, !dbg !875
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = icmp eq %struct.ip_addr* %2, null, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %8, label %9, label %10, !dbg !882

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !883
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !886
  tail call void @ukplat_terminate(i32 3) #9, !dbg !886
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !890
  %12 = load i32, i32* %11, align 4, !dbg !890, !tbaa !655
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !890
  %14 = load i32, i32* %13, align 8, !dbg !890, !tbaa !396
  %15 = icmp eq i32 %12, %14, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %15, label %52, label %16, !dbg !891

; <label>:16:                                     ; preds = %10
  %17 = bitcast %struct.ip_addr* %4 to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !892
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !893
  store i32 %12, i32* %18, align 4, !dbg !893, !tbaa !451
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !894
  store i8 0, i8* %19, align 4, !dbg !894, !tbaa !445
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 1, !dbg !896
  %21 = load i8, i8* %20, align 4, !dbg !896, !tbaa !445
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !896
  store i8 %21, i8* %22, align 4, !dbg !896, !tbaa !445
  %23 = load i8, i8* %20, align 4, !dbg !899, !tbaa !445
  %24 = icmp eq i8 %23, 6, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  %25 = load i32, i32* %13, align 8, !dbg !902, !tbaa !396
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !902
  store i32 %25, i32* %26, align 4, !dbg !902, !tbaa !396
  br i1 %24, label %27, label %39, !dbg !901

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !902
  %29 = load i32, i32* %28, align 4, !dbg !902, !tbaa !396
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !902
  store i32 %29, i32* %30, align 4, !dbg !902, !tbaa !396
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !902
  %32 = load i32, i32* %31, align 8, !dbg !902, !tbaa !396
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !902
  store i32 %32, i32* %33, align 4, !dbg !902, !tbaa !396
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !902
  %35 = load i32, i32* %34, align 4, !dbg !902, !tbaa !396
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !902
  store i32 %35, i32* %36, align 4, !dbg !902, !tbaa !396
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !902
  %38 = load i8, i8* %37, align 8, !dbg !902, !tbaa !396
  br label %43, !dbg !905

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !906
  store i32 0, i32* %40, align 4, !dbg !906, !tbaa !396
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !906
  store i32 0, i32* %41, align 4, !dbg !906, !tbaa !396
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !906
  store i32 0, i32* %42, align 4, !dbg !906, !tbaa !396
  br label %43

; <label>:43:                                     ; preds = %39, %27
  %44 = phi i8 [ 0, %39 ], [ %38, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 1, !dbg !906
  store i8 %44, i8* %45, align 4, !dbg !906
  call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %2, %struct.ip_addr* nonnull %4) #10, !dbg !919
  call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %2, %struct.ip_addr* nonnull %4) #10, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  %46 = load i32, i32* %11, align 4, !dbg !922, !tbaa !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store i32 %46, i32* %13, align 8, !dbg !922, !tbaa !396
  store i8 0, i8* %20, align 4, !dbg !923, !tbaa !403
  call fastcc void @netif_issue_reports(%struct.netif* nonnull %0, i8 zeroext 1) #8, !dbg !925
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !926
  %48 = load void (%struct.netif*)*, void (%struct.netif*)** %47, align 8, !dbg !926, !tbaa !475
  %49 = icmp eq void (%struct.netif*)* %48, null, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  br i1 %49, label %51, label %50, !dbg !929

; <label>:50:                                     ; preds = %43
  call void %48(%struct.netif* nonnull %0) #10, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br label %51, !dbg !930

; <label>:51:                                     ; preds = %43, %50
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !932
  br label %52

; <label>:52:                                     ; preds = %10, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %10 ], !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  ret i32 %53, !dbg !934
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_netmask(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !935 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !946
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !946
  %6 = icmp eq %struct.netif* %0, null, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br i1 %6, label %7, label %8, !dbg !951

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !952
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !955
  tail call void @ukplat_terminate(i32 3) #9, !dbg !955
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  br i1 %9, label %10, label %11, !dbg !961

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br label %11, !dbg !962

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %10 ], [ %1, %8 ]
  %13 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %12, i64 0, i32 0, !dbg !969
  %14 = load i32, i32* %13, align 4, !dbg !969, !tbaa !655
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !969
  %16 = load i32, i32* %15, align 8, !dbg !969, !tbaa !396
  %17 = icmp eq i32 %14, %16, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %17, label %33, label %18, !dbg !970

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !972
  %20 = load i8, i8* %19, align 4, !dbg !972, !tbaa !445
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !972
  store i8 %20, i8* %21, align 4, !dbg !972, !tbaa !445
  %22 = icmp eq i8 %20, 6, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !975
  store i32 %16, i32* %23, align 4, !dbg !975, !tbaa !396
  br i1 %22, label %24, label %34, !dbg !974

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !975
  %26 = load i32, i32* %25, align 4, !dbg !975, !tbaa !396
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !975
  %28 = load i32, i32* %27, align 8, !dbg !975, !tbaa !396
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !975
  %30 = load i32, i32* %29, align 4, !dbg !975, !tbaa !396
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !975
  %32 = load i8, i8* %31, align 8, !dbg !975, !tbaa !396
  br label %34, !dbg !976

; <label>:33:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  br label %55, !dbg !978

; <label>:34:                                     ; preds = %18, %24
  %35 = phi i32 [ %26, %24 ], [ 0, %18 ]
  %36 = phi i32 [ %28, %24 ], [ 0, %18 ]
  %37 = phi i32 [ %30, %24 ], [ 0, %18 ]
  %38 = phi i8 [ %32, %24 ], [ 0, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !975
  store i32 %35, i32* %39, align 4, !dbg !975
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !975
  store i32 %36, i32* %40, align 4, !dbg !975
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !975
  store i32 %37, i32* %41, align 4, !dbg !975
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !975
  store i8 %38, i8* %42, align 4, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  store i32 %14, i32* %15, align 8, !dbg !979, !tbaa !396
  store i8 0, i8* %19, align 4, !dbg !980, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  %43 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %43) #7, !dbg !982
  %44 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 1, !dbg !983
  store %struct.ip_addr* %3, %struct.ip_addr** %44, align 8, !dbg !984, !tbaa !396
  %45 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !990, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  %46 = icmp eq %struct.netif_ext_callback* %45, null, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  br i1 %46, label %54, label %47, !dbg !994

; <label>:47:                                     ; preds = %34, %47
  %48 = phi %struct.netif_ext_callback* [ %52, %47 ], [ %45, %34 ]
  %49 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %48, i64 0, i32 0, !dbg !995
  %50 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %49, align 8, !dbg !995, !tbaa !578
  call void %50(%struct.netif* nonnull %0, i16 zeroext 64, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !996
  %51 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %48, i64 0, i32 1, !dbg !997
  %52 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %51, align 8, !dbg !997, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  %53 = icmp eq %struct.netif_ext_callback* %52, null, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  br i1 %53, label %54, label %47, !dbg !994, !llvm.loop !583

; <label>:54:                                     ; preds = %47, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %43) #7, !dbg !999
  br label %55, !dbg !1000

; <label>:55:                                     ; preds = %33, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  ret void, !dbg !1002
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_gw(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !1003 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1014
  %6 = icmp eq %struct.netif* %0, null, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %6, label %7, label %8, !dbg !1019

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1020
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1023
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1023
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %9, label %10, label %11, !dbg !1029

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br label %11, !dbg !1030

; <label>:11:                                     ; preds = %10, %8
  %12 = phi %struct.ip4_addr* [ bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %10 ], [ %1, %8 ]
  %13 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %12, i64 0, i32 0, !dbg !1037
  %14 = load i32, i32* %13, align 4, !dbg !1037, !tbaa !655
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !1037
  %16 = load i32, i32* %15, align 8, !dbg !1037, !tbaa !396
  %17 = icmp eq i32 %14, %16, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br i1 %17, label %33, label %18, !dbg !1038

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !1040
  %20 = load i8, i8* %19, align 4, !dbg !1040, !tbaa !445
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !1040
  store i8 %20, i8* %21, align 4, !dbg !1040, !tbaa !445
  %22 = icmp eq i8 %20, 6, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1043
  store i32 %16, i32* %23, align 4, !dbg !1043, !tbaa !396
  br i1 %22, label %24, label %34, !dbg !1042

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 1, !dbg !1043
  %26 = load i32, i32* %25, align 4, !dbg !1043, !tbaa !396
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 2, !dbg !1043
  %28 = load i32, i32* %27, align 8, !dbg !1043, !tbaa !396
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 3, !dbg !1043
  %30 = load i32, i32* %29, align 4, !dbg !1043, !tbaa !396
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !1043
  %32 = load i8, i8* %31, align 8, !dbg !1043, !tbaa !396
  br label %34, !dbg !1044

; <label>:33:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br label %55, !dbg !1046

; <label>:34:                                     ; preds = %18, %24
  %35 = phi i32 [ %26, %24 ], [ 0, %18 ]
  %36 = phi i32 [ %28, %24 ], [ 0, %18 ]
  %37 = phi i32 [ %30, %24 ], [ 0, %18 ]
  %38 = phi i8 [ %32, %24 ], [ 0, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1043
  store i32 %35, i32* %39, align 4, !dbg !1043
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1043
  store i32 %36, i32* %40, align 4, !dbg !1043
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1043
  store i32 %37, i32* %41, align 4, !dbg !1043
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !1043
  store i8 %38, i8* %42, align 4, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  store i32 %14, i32* %15, align 8, !dbg !1047, !tbaa !396
  store i8 0, i8* %19, align 4, !dbg !1048, !tbaa !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  %43 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %43) #7, !dbg !1050
  %44 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 2, !dbg !1051
  store %struct.ip_addr* %3, %struct.ip_addr** %44, align 8, !dbg !1052, !tbaa !396
  %45 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1058, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  %46 = icmp eq %struct.netif_ext_callback* %45, null, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %46, label %54, label %47, !dbg !1062

; <label>:47:                                     ; preds = %34, %47
  %48 = phi %struct.netif_ext_callback* [ %52, %47 ], [ %45, %34 ]
  %49 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %48, i64 0, i32 0, !dbg !1063
  %50 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %49, align 8, !dbg !1063, !tbaa !578
  call void %50(%struct.netif* nonnull %0, i16 zeroext 32, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !1064
  %51 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %48, i64 0, i32 1, !dbg !1065
  %52 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %51, align 8, !dbg !1065, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  %53 = icmp eq %struct.netif_ext_callback* %52, null, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %53, label %54, label %47, !dbg !1062, !llvm.loop !583

; <label>:54:                                     ; preds = %47, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %43) #7, !dbg !1067
  br label %55, !dbg !1068

; <label>:55:                                     ; preds = %33, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  ret void, !dbg !1070
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_remove(%struct.netif*) local_unnamed_addr #1 !dbg !1071 {
  %2 = icmp eq %struct.netif* %0, null, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %2, label %61, label %3, !dbg !1081

; <label>:3:                                      ; preds = %1
  %4 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1086, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  %5 = icmp eq %struct.netif_ext_callback* %4, null, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br i1 %5, label %13, label %6, !dbg !1090

; <label>:6:                                      ; preds = %3, %6
  %7 = phi %struct.netif_ext_callback* [ %11, %6 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %7, i64 0, i32 0, !dbg !1091
  %9 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %8, align 8, !dbg !1091, !tbaa !578
  tail call void %9(%struct.netif* nonnull %0, i16 zeroext 2, %union.netif_ext_callback_args_t* null) #10, !dbg !1092
  %10 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %7, i64 0, i32 1, !dbg !1093
  %11 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %10, align 8, !dbg !1093, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  %12 = icmp eq %struct.netif_ext_callback* %11, null, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br i1 %12, label %13, label %6, !dbg !1090, !llvm.loop !583

; <label>:13:                                     ; preds = %6, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, !dbg !1095
  %15 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %14, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1095
  %16 = load i32, i32* %15, align 8, !dbg !1095, !tbaa !396
  %17 = icmp eq i32 %16, 0, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %17, label %19, label %18, !dbg !1097

; <label>:18:                                     ; preds = %13
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %14, %struct.ip_addr* null) #10, !dbg !1102
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %14, %struct.ip_addr* null) #10, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br label %19, !dbg !1105

; <label>:19:                                     ; preds = %18, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1110
  %21 = load i8, i8* %20, align 1, !dbg !1110, !tbaa !396
  %22 = and i8 %21, 16, !dbg !1110
  %23 = icmp eq i8 %22, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %23, label %26, label %24, !dbg !1114

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, !dbg !1115
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %25, %struct.ip_addr* null) #10, !dbg !1120
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %25, %struct.ip_addr* null) #10, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br label %26, !dbg !1123

; <label>:26:                                     ; preds = %19, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1110
  %28 = load i8, i8* %27, align 1, !dbg !1110, !tbaa !396
  %29 = and i8 %28, 16, !dbg !1110
  %30 = icmp eq i8 %29, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %30, label %64, label %62, !dbg !1114

; <label>:31:                                     ; preds = %71
  tail call void @netif_set_down(%struct.netif* nonnull %0) #8, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br label %32, !dbg !1128

; <label>:32:                                     ; preds = %71, %31
  %33 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !1129, !tbaa !559
  %34 = icmp eq %struct.netif* %33, %0, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br i1 %34, label %35, label %36, !dbg !1132

; <label>:35:                                     ; preds = %32
  store %struct.netif* null, %struct.netif** @netif_default, align 8, !dbg !1139, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  br label %36, !dbg !1141

; <label>:36:                                     ; preds = %35, %32
  %37 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1142, !tbaa !559
  %38 = icmp eq %struct.netif* %37, %0, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  br i1 %38, label %39, label %42, !dbg !1144

; <label>:39:                                     ; preds = %36
  %40 = bitcast %struct.netif* %0 to i64*, !dbg !1145
  %41 = load i64, i64* %40, align 8, !dbg !1145, !tbaa !546
  store i64 %41, i64* bitcast (%struct.netif** @netif_list to i64*), align 8, !dbg !1147, !tbaa !559
  br label %56, !dbg !1148

; <label>:42:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  %43 = icmp eq %struct.netif* %37, null, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %43, label %55, label %44, !dbg !1150

; <label>:44:                                     ; preds = %42, %53
  %45 = phi %struct.netif* [ %47, %53 ], [ %37, %42 ]
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %45, i64 0, i32 0, !dbg !1154
  %47 = load %struct.netif*, %struct.netif** %46, align 8, !dbg !1154, !tbaa !546
  %48 = icmp eq %struct.netif* %47, %0, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %48, label %49, label %53, !dbg !1158

; <label>:49:                                     ; preds = %44
  %50 = bitcast %struct.netif* %0 to i64*, !dbg !1159
  %51 = load i64, i64* %50, align 8, !dbg !1159, !tbaa !546
  %52 = bitcast %struct.netif* %45 to i64*, !dbg !1161
  store i64 %51, i64* %52, align 8, !dbg !1161, !tbaa !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br label %56

; <label>:53:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  %54 = icmp eq %struct.netif* %47, null, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %54, label %55, label %44, !dbg !1150, !llvm.loop !1165

; <label>:55:                                     ; preds = %53, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br label %61

; <label>:56:                                     ; preds = %49, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 13, !dbg !1167
  %58 = load void (%struct.netif*)*, void (%struct.netif*)** %57, align 8, !dbg !1167, !tbaa !1169
  %59 = icmp eq void (%struct.netif*)* %58, null, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  br i1 %59, label %61, label %60, !dbg !1171

; <label>:60:                                     ; preds = %56
  tail call void %58(%struct.netif* nonnull %0) #10, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br label %61, !dbg !1174

; <label>:61:                                     ; preds = %60, %56, %1, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  ret void, !dbg !1175

; <label>:62:                                     ; preds = %26
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, !dbg !1115
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %63, %struct.ip_addr* null) #10, !dbg !1120
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %63, %struct.ip_addr* null) #10, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br label %64, !dbg !1123

; <label>:64:                                     ; preds = %62, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %65 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1110
  %66 = load i8, i8* %65, align 1, !dbg !1110, !tbaa !396
  %67 = and i8 %66, 16, !dbg !1110
  %68 = icmp eq i8 %67, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %68, label %71, label %69, !dbg !1114

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, !dbg !1115
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %70, %struct.ip_addr* null) #10, !dbg !1120
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %70, %struct.ip_addr* null) #10, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br label %71, !dbg !1123

; <label>:71:                                     ; preds = %69, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %72 = tail call signext i8 @mld6_stop(%struct.netif* nonnull %0) #10, !dbg !1176
  %73 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1177
  %74 = load i8, i8* %73, align 1, !dbg !1177, !tbaa !290
  %75 = and i8 %74, 1, !dbg !1177
  %76 = icmp eq i8 %75, 0, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %76, label %32, label %31, !dbg !1178
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_stop(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_down(%struct.netif*) local_unnamed_addr #1 !dbg !1179 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  br i1 %3, label %4, label %5, !dbg !1190

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1191
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1194
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1194
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1198
  %7 = load i8, i8* %6, align 1, !dbg !1198, !tbaa !290
  %8 = and i8 %7, 1, !dbg !1199
  %9 = icmp eq i8 %8, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %9, label %34, label %10, !dbg !1200

; <label>:10:                                     ; preds = %5
  %11 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1201
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1201
  store i8 0, i8* %11, align 8, !dbg !1202, !tbaa !396
  %12 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1208, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  %13 = icmp eq %struct.netif_ext_callback* %12, null, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br i1 %13, label %23, label %14, !dbg !1212

; <label>:14:                                     ; preds = %10, %14
  %15 = phi %struct.netif_ext_callback* [ %19, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %15, i64 0, i32 0, !dbg !1213
  %17 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %16, align 8, !dbg !1213, !tbaa !578
  call void %17(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1214
  %18 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %15, i64 0, i32 1, !dbg !1215
  %19 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %18, align 8, !dbg !1215, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %20 = icmp eq %struct.netif_ext_callback* %19, null, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br i1 %20, label %21, label %14, !dbg !1212, !llvm.loop !583

; <label>:21:                                     ; preds = %14
  %22 = load i8, i8* %6, align 1, !dbg !1216, !tbaa !290
  br label %23, !dbg !1218

; <label>:23:                                     ; preds = %21, %10
  %24 = phi i8 [ %22, %21 ], [ %7, %10 ], !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1219
  %25 = and i8 %24, -2, !dbg !1216
  store i8 %25, i8* %6, align 1, !dbg !1216, !tbaa !290
  %26 = and i8 %24, 8, !dbg !1220
  %27 = icmp eq i8 %26, 0, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br i1 %27, label %29, label %28, !dbg !1222

; <label>:28:                                     ; preds = %23
  call void @etharp_cleanup_netif(%struct.netif* nonnull %0) #10, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br label %29, !dbg !1225

; <label>:29:                                     ; preds = %23, %28
  call void @nd6_cleanup_netif(%struct.netif* nonnull %0) #10, !dbg !1226
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1227
  %31 = load void (%struct.netif*)*, void (%struct.netif*)** %30, align 8, !dbg !1227, !tbaa !475
  %32 = icmp eq void (%struct.netif*)* %31, null, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br i1 %32, label %34, label %33, !dbg !1230

; <label>:33:                                     ; preds = %29
  call void %31(%struct.netif* nonnull %0) #10, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br label %34, !dbg !1231

; <label>:34:                                     ; preds = %29, %5, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  ret void, !dbg !1233
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_default(%struct.netif*) local_unnamed_addr #1 !dbg !1134 {
  store %struct.netif* %0, %struct.netif** @netif_default, align 8, !dbg !1235, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  ret void, !dbg !1236
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_up(%struct.netif*) local_unnamed_addr #1 !dbg !1237 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %3, label %4, label %5, !dbg !1248

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1249
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1252
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1252
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1256
  %7 = load i8, i8* %6, align 1, !dbg !1256, !tbaa !290
  %8 = and i8 %7, 1, !dbg !1257
  %9 = icmp eq i8 %8, 0, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  br i1 %9, label %10, label %48, !dbg !1258

; <label>:10:                                     ; preds = %5
  %11 = or i8 %7, 1, !dbg !1259
  store i8 %11, i8* %6, align 1, !dbg !1259, !tbaa !290
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1261
  %13 = load void (%struct.netif*)*, void (%struct.netif*)** %12, align 8, !dbg !1261, !tbaa !475
  %14 = icmp eq void (%struct.netif*)* %13, null, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %14, label %16, label %15, !dbg !1264

; <label>:15:                                     ; preds = %10
  tail call void %13(%struct.netif* nonnull %0) #10, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br label %16, !dbg !1265

; <label>:16:                                     ; preds = %15, %10
  %17 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !1267
  store i8 1, i8* %17, align 8, !dbg !1268, !tbaa !396
  %18 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1274, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %19 = icmp eq %struct.netif_ext_callback* %18, null, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  br i1 %19, label %27, label %20, !dbg !1278

; <label>:20:                                     ; preds = %16, %20
  %21 = phi %struct.netif_ext_callback* [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 0, !dbg !1279
  %23 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %22, align 8, !dbg !1279, !tbaa !578
  call void %23(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1280
  %24 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 1, !dbg !1281
  %25 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %24, align 8, !dbg !1281, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  %26 = icmp eq %struct.netif_ext_callback* %25, null, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  br i1 %26, label %27, label %20, !dbg !1278, !llvm.loop !583

; <label>:27:                                     ; preds = %20, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  %28 = load i8, i8* %6, align 1, !dbg !1295, !tbaa !290
  %29 = zext i8 %28 to i32, !dbg !1297
  %30 = and i32 %29, 4, !dbg !1298
  %31 = icmp eq i32 %30, 0, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %31, label %47, label %32, !dbg !1299

; <label>:32:                                     ; preds = %27
  %33 = and i32 %29, 1, !dbg !1300
  %34 = icmp eq i32 %33, 0, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  br i1 %34, label %47, label %35, !dbg !1301

; <label>:35:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1304
  %37 = bitcast %union.anon* %36 to %struct.ip4_addr*, !dbg !1304
  %38 = getelementptr inbounds %union.anon, %union.anon* %36, i64 0, i32 0, i32 0, i64 0, !dbg !1304
  %39 = load i32, i32* %38, align 8, !dbg !1304, !tbaa !396
  %40 = icmp eq i32 %39, 0, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %40, label %46, label %41, !dbg !1305

; <label>:41:                                     ; preds = %35
  %42 = and i32 %29, 8, !dbg !1306
  %43 = icmp eq i32 %42, 0, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %43, label %46, label %44, !dbg !1309

; <label>:44:                                     ; preds = %41
  %45 = call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %37) #10, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br label %46, !dbg !1312

; <label>:46:                                     ; preds = %44, %41, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br label %47, !dbg !1317

; <label>:47:                                     ; preds = %27, %32, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  call void @nd6_restart_netif(%struct.netif* nonnull %0) #10, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  br label %48, !dbg !1320

; <label>:48:                                     ; preds = %5, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  ret void, !dbg !1321
}

; Function Attrs: noredzone nounwind
define internal fastcc void @netif_issue_reports(%struct.netif*, i8 zeroext) unnamed_addr #1 !dbg !1285 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br i1 %3, label %4, label %5, !dbg !1326

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !1327
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1330
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1330
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1334
  %7 = load i8, i8* %6, align 1, !dbg !1334, !tbaa !290
  %8 = zext i8 %7 to i32, !dbg !1335
  %9 = and i32 %8, 4, !dbg !1336
  %10 = icmp eq i32 %9, 0, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %10, label %33, label %11, !dbg !1337

; <label>:11:                                     ; preds = %5
  %12 = and i32 %8, 1, !dbg !1338
  %13 = icmp eq i32 %12, 0, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %13, label %33, label %14, !dbg !1339

; <label>:14:                                     ; preds = %11
  %15 = zext i8 %1 to i32, !dbg !1340
  %16 = and i32 %15, 1, !dbg !1341
  %17 = icmp eq i32 %16, 0, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %17, label %29, label %18, !dbg !1342

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1343
  %20 = bitcast %union.anon* %19 to %struct.ip4_addr*, !dbg !1343
  %21 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0, i32 0, i64 0, !dbg !1343
  %22 = load i32, i32* %21, align 8, !dbg !1343, !tbaa !396
  %23 = icmp eq i32 %22, 0, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br i1 %23, label %29, label %24, !dbg !1344

; <label>:24:                                     ; preds = %18
  %25 = and i32 %8, 8, !dbg !1345
  %26 = icmp eq i32 %25, 0, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  br i1 %26, label %29, label %27, !dbg !1346

; <label>:27:                                     ; preds = %24
  %28 = tail call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %20) #10, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br label %29, !dbg !1348

; <label>:29:                                     ; preds = %24, %14, %27, %18
  %30 = and i32 %15, 2, !dbg !1349
  %31 = icmp eq i32 %30, 0, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  br i1 %31, label %33, label %32, !dbg !1350

; <label>:32:                                     ; preds = %29
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br label %33, !dbg !1352

; <label>:33:                                     ; preds = %29, %11, %5, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  ret void, !dbg !1353
}

; Function Attrs: noredzone
declare dso_local void @etharp_cleanup_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @nd6_cleanup_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_status_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #1 !dbg !1354 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %3, label %6, label %4, !dbg !1364

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1365
  store void (%struct.netif*)* %1, void (%struct.netif*)** %5, align 8, !dbg !1367, !tbaa !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br label %6, !dbg !1368

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  ret void, !dbg !1369
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_remove_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #1 !dbg !1370 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br i1 %3, label %6, label %4, !dbg !1378

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 13, !dbg !1379
  store void (%struct.netif*)* %1, void (%struct.netif*)** %5, align 8, !dbg !1381, !tbaa !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br label %6, !dbg !1382

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  ret void, !dbg !1383
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_link_up(%struct.netif*) local_unnamed_addr #1 !dbg !1384 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  br i1 %3, label %4, label %5, !dbg !1395

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1396
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1399
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1399
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1403
  %7 = load i8, i8* %6, align 1, !dbg !1403, !tbaa !290
  %8 = and i8 %7, 4, !dbg !1404
  %9 = icmp eq i8 %8, 0, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br i1 %9, label %10, label %39, !dbg !1405

; <label>:10:                                     ; preds = %5
  %11 = or i8 %7, 4, !dbg !1406
  store i8 %11, i8* %6, align 1, !dbg !1406, !tbaa !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  %12 = zext i8 %11 to i32, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  %13 = and i32 %12, 1, !dbg !1414
  %14 = icmp eq i32 %13, 0, !dbg !1414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  br i1 %14, label %27, label %15, !dbg !1415

; <label>:15:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1417
  %17 = bitcast %union.anon* %16 to %struct.ip4_addr*, !dbg !1417
  %18 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0, i32 0, i64 0, !dbg !1417
  %19 = load i32, i32* %18, align 8, !dbg !1417, !tbaa !396
  %20 = icmp eq i32 %19, 0, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %20, label %26, label %21, !dbg !1418

; <label>:21:                                     ; preds = %15
  %22 = and i32 %12, 8, !dbg !1419
  %23 = icmp eq i32 %22, 0, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br i1 %23, label %26, label %24, !dbg !1420

; <label>:24:                                     ; preds = %21
  %25 = tail call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %17) #10, !dbg !1421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  br label %26, !dbg !1422

; <label>:26:                                     ; preds = %24, %21, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br label %27, !dbg !1425

; <label>:27:                                     ; preds = %26, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  tail call void @nd6_restart_netif(%struct.netif* nonnull %0) #10, !dbg !1427
  %28 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1428
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #7, !dbg !1428
  store i8 1, i8* %28, align 8, !dbg !1429, !tbaa !396
  %29 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1435, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  %30 = icmp eq %struct.netif_ext_callback* %29, null, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %30, label %38, label %31, !dbg !1439

; <label>:31:                                     ; preds = %27, %31
  %32 = phi %struct.netif_ext_callback* [ %36, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %32, i64 0, i32 0, !dbg !1440
  %34 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %33, align 8, !dbg !1440, !tbaa !578
  call void %34(%struct.netif* nonnull %0, i16 zeroext 4, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1441
  %35 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %32, i64 0, i32 1, !dbg !1442
  %36 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %35, align 8, !dbg !1442, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %37 = icmp eq %struct.netif_ext_callback* %36, null, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %37, label %38, label %31, !dbg !1439, !llvm.loop !583

; <label>:38:                                     ; preds = %31, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #7, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  br label %39, !dbg !1445

; <label>:39:                                     ; preds = %5, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  ret void, !dbg !1446
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_link_down(%struct.netif*) local_unnamed_addr #1 !dbg !1447 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %3, label %4, label %5, !dbg !1458

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1459
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1462
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1462
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1466
  %7 = load i8, i8* %6, align 1, !dbg !1466, !tbaa !290
  %8 = and i8 %7, 4, !dbg !1467
  %9 = icmp eq i8 %8, 0, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %9, label %23, label %10, !dbg !1468

; <label>:10:                                     ; preds = %5
  %11 = and i8 %7, -5, !dbg !1469
  store i8 %11, i8* %6, align 1, !dbg !1469, !tbaa !290
  %12 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1471
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7, !dbg !1471
  store i8 0, i8* %12, align 8, !dbg !1472, !tbaa !396
  %13 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1478, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %14 = icmp eq %struct.netif_ext_callback* %13, null, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  br i1 %14, label %22, label %15, !dbg !1482

; <label>:15:                                     ; preds = %10, %15
  %16 = phi %struct.netif_ext_callback* [ %20, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %16, i64 0, i32 0, !dbg !1483
  %18 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %17, align 8, !dbg !1483, !tbaa !578
  call void %18(%struct.netif* nonnull %0, i16 zeroext 4, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1484
  %19 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %16, i64 0, i32 1, !dbg !1485
  %20 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %19, align 8, !dbg !1485, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %21 = icmp eq %struct.netif_ext_callback* %20, null, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  br i1 %21, label %22, label %15, !dbg !1482, !llvm.loop !583

; <label>:22:                                     ; preds = %15, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br label %23, !dbg !1488

; <label>:23:                                     ; preds = %5, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  ret void, !dbg !1489
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set(%struct.netif*, i8 signext, %struct.ip6_addr* readonly) local_unnamed_addr #1 !dbg !1490 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %4, label %5, label %6, !dbg !1503

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1504
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1507
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1507
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip6_addr* %2, null, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  br i1 %7, label %8, label %9, !dbg !1514

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1515
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1518
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1518
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !1522
  %11 = load i32, i32* %10, align 4, !dbg !1522, !tbaa !451
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1, !dbg !1523
  %13 = load i32, i32* %12, align 4, !dbg !1523, !tbaa !451
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !1524
  %15 = load i32, i32* %14, align 4, !dbg !1524, !tbaa !451
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !1525
  %17 = load i32, i32* %16, align 4, !dbg !1525, !tbaa !451
  tail call void @netif_ip6_addr_set_parts(%struct.netif* nonnull %0, i8 signext %1, i32 %11, i32 %13, i32 %15, i32 %17) #8, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  ret void, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set_parts(%struct.netif*, i8 signext, i32, i32, i32, i32) local_unnamed_addr #1 !dbg !1528 {
  %7 = alloca %struct.ip_addr, align 16
  %8 = alloca %struct.ip_addr, align 4
  %9 = alloca %union.netif_ext_callback_args_t, align 8
  %10 = bitcast %struct.ip_addr* %7 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !1550
  %11 = bitcast %struct.ip_addr* %8 to i8*, !dbg !1551
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1551
  %12 = icmp eq %struct.netif* %0, null, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %12, label %13, label %14, !dbg !1555

; <label>:13:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1556
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1559
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1559
  unreachable

; <label>:14:                                     ; preds = %6
  %15 = icmp slt i8 %1, 3, !dbg !1563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  br i1 %15, label %17, label %16, !dbg !1566

; <label>:16:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1567
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1570
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1570
  unreachable

; <label>:17:                                     ; preds = %14
  %18 = sext i8 %1 to i64, !dbg !1574
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, !dbg !1574
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %19, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1574
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 1, !dbg !1574
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 2, !dbg !1574
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 3, !dbg !1574
  %24 = bitcast %struct.ip_addr* %19 to <4 x i32>*, !dbg !1574
  %25 = load <4 x i32>, <4 x i32>* %24, align 8, !dbg !1574, !tbaa !396
  %26 = bitcast %struct.ip_addr* %7 to <4 x i32>*, !dbg !1574
  store <4 x i32> %25, <4 x i32>* %26, align 16, !dbg !1574, !tbaa !396
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 1, !dbg !1574
  %28 = load i8, i8* %27, align 8, !dbg !1574, !tbaa !396
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1574
  store i8 %28, i8* %29, align 16, !dbg !1574, !tbaa !396
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1576
  store i8 6, i8* %30, align 4, !dbg !1576, !tbaa !445
  %31 = extractelement <4 x i32> %25, i32 0, !dbg !1578
  %32 = icmp eq i32 %31, %2, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %32, label %33, label %42, !dbg !1579

; <label>:33:                                     ; preds = %17
  %34 = extractelement <4 x i32> %25, i32 1, !dbg !1580
  %35 = icmp eq i32 %34, %3, !dbg !1580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br i1 %35, label %36, label %42, !dbg !1581

; <label>:36:                                     ; preds = %33
  %37 = extractelement <4 x i32> %25, i32 2, !dbg !1582
  %38 = icmp eq i32 %37, %4, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  br i1 %38, label %39, label %42, !dbg !1583

; <label>:39:                                     ; preds = %36
  %40 = extractelement <4 x i32> %25, i32 3, !dbg !1584
  %41 = icmp eq i32 %40, %5, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %41, label %107, label %42, !dbg !1585

; <label>:42:                                     ; preds = %39, %36, %33, %17
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1586
  store i32 %2, i32* %43, align 4, !dbg !1586, !tbaa !396
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1586
  store i32 %3, i32* %44, align 4, !dbg !1586, !tbaa !396
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1586
  store i32 %4, i32* %45, align 4, !dbg !1586, !tbaa !396
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1586
  store i32 %5, i32* %46, align 4, !dbg !1586, !tbaa !396
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 1, !dbg !1586
  store i8 0, i8* %47, align 4, !dbg !1586, !tbaa !396
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 1, !dbg !1589
  store i8 6, i8* %48, align 4, !dbg !1589, !tbaa !445
  %49 = and i32 %2, 49407, !dbg !1591
  %50 = icmp eq i32 %49, 33022, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br i1 %50, label %51, label %55, !dbg !1591

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1591
  %53 = load i8, i8* %52, align 8, !dbg !1591, !tbaa !485
  %54 = add i8 %53, 1, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br label %55, !dbg !1591

; <label>:55:                                     ; preds = %42, %51
  %56 = phi i8 [ %54, %51 ], [ 0, %42 ]
  store i8 %56, i8* %47, align 4, !dbg !1591, !tbaa !396
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %18, !dbg !1592
  %58 = load i8, i8* %57, align 1, !dbg !1592, !tbaa !396
  %59 = and i8 %58, 16, !dbg !1592
  %60 = icmp eq i8 %59, 0, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br i1 %60, label %61, label %63, !dbg !1594

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 1, !dbg !1595
  store i8 6, i8* %62, align 4, !dbg !1595, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store i32 %2, i32* %20, align 8, !dbg !1599, !tbaa !396
  br label %68, !dbg !1598

; <label>:63:                                     ; preds = %55
  call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %19, %struct.ip_addr* nonnull %8) #10, !dbg !1608
  call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %19, %struct.ip_addr* nonnull %8) #10, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  %64 = load i8, i8* %48, align 4, !dbg !1595, !tbaa !445
  %65 = load i32, i32* %43, align 4, !dbg !1599, !tbaa !396
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 1, !dbg !1595
  store i8 %64, i8* %66, align 4, !dbg !1595, !tbaa !445
  %67 = icmp eq i8 %64, 6, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store i32 %65, i32* %20, align 8, !dbg !1599, !tbaa !396
  br i1 %67, label %68, label %73, !dbg !1598

; <label>:68:                                     ; preds = %61, %63
  %69 = load i32, i32* %44, align 4, !dbg !1599, !tbaa !396
  store i32 %69, i32* %21, align 4, !dbg !1599, !tbaa !396
  %70 = load i32, i32* %45, align 4, !dbg !1599, !tbaa !396
  store i32 %70, i32* %22, align 8, !dbg !1599, !tbaa !396
  %71 = load i32, i32* %46, align 4, !dbg !1599, !tbaa !396
  store i32 %71, i32* %23, align 4, !dbg !1599, !tbaa !396
  %72 = load i8, i8* %47, align 4, !dbg !1599, !tbaa !396
  br label %74, !dbg !1613

; <label>:73:                                     ; preds = %63
  store i32 0, i32* %23, align 4, !dbg !1614, !tbaa !396
  store i32 0, i32* %22, align 8, !dbg !1614, !tbaa !396
  store i32 0, i32* %21, align 4, !dbg !1614, !tbaa !396
  br label %74

; <label>:74:                                     ; preds = %73, %68
  %75 = phi i8 [ 0, %73 ], [ %72, %68 ]
  store i8 %75, i8* %27, align 8, !dbg !1614, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %76 = load i8, i8* %57, align 1, !dbg !1617, !tbaa !396
  %77 = and i8 %76, 16, !dbg !1617
  %78 = icmp eq i8 %77, 0, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br i1 %78, label %94, label %79, !dbg !1619

; <label>:79:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1625
  %81 = load i8, i8* %80, align 1, !dbg !1625, !tbaa !290
  %82 = zext i8 %81 to i32, !dbg !1626
  %83 = and i32 %82, 4, !dbg !1627
  %84 = icmp eq i32 %83, 0, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br i1 %84, label %89, label %85, !dbg !1628

; <label>:85:                                     ; preds = %79
  %86 = and i32 %82, 1, !dbg !1629
  %87 = icmp eq i32 %86, 0, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  br i1 %87, label %89, label %88, !dbg !1630

; <label>:88:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br label %89, !dbg !1634

; <label>:89:                                     ; preds = %79, %85, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  %90 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1636
  %91 = load void (%struct.netif*)*, void (%struct.netif*)** %90, align 8, !dbg !1636, !tbaa !475
  %92 = icmp eq void (%struct.netif*)* %91, null, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  br i1 %92, label %94, label %93, !dbg !1639

; <label>:93:                                     ; preds = %89
  call void %91(%struct.netif* nonnull %0) #10, !dbg !1640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1640
  br label %94, !dbg !1640

; <label>:94:                                     ; preds = %93, %74, %89
  %95 = bitcast %union.netif_ext_callback_args_t* %9 to i8*, !dbg !1642
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %95) #7, !dbg !1642
  store i8 %1, i8* %95, align 8, !dbg !1643, !tbaa !396
  %96 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %9, i64 0, i32 0, i32 1, !dbg !1644
  store %struct.ip_addr* %7, %struct.ip_addr** %96, align 8, !dbg !1645, !tbaa !396
  %97 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1651, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  %98 = icmp eq %struct.netif_ext_callback* %97, null, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  br i1 %98, label %106, label %99, !dbg !1655

; <label>:99:                                     ; preds = %94, %99
  %100 = phi %struct.netif_ext_callback* [ %104, %99 ], [ %97, %94 ]
  %101 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %100, i64 0, i32 0, !dbg !1656
  %102 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %101, align 8, !dbg !1656, !tbaa !578
  call void %102(%struct.netif* nonnull %0, i16 zeroext 256, %union.netif_ext_callback_args_t* nonnull %9) #10, !dbg !1657
  %103 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %100, i64 0, i32 1, !dbg !1658
  %104 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %103, align 8, !dbg !1658, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  %105 = icmp eq %struct.netif_ext_callback* %104, null, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  br i1 %105, label %106, label %99, !dbg !1655, !llvm.loop !583

; <label>:106:                                    ; preds = %99, %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95) #7, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1661
  br label %107, !dbg !1661

; <label>:107:                                    ; preds = %39, %106
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1662
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  ret void, !dbg !1662
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set_state(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #1 !dbg !1663 {
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = icmp eq %struct.netif* %0, null, !dbg !1680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  br i1 %5, label %6, label %7, !dbg !1683

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1684
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1687
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1687
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = icmp slt i8 %1, 3, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %8, label %10, label %9, !dbg !1694

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1695
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1698
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1698
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = sext i8 %1 to i64, !dbg !1702
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %11, !dbg !1702
  %13 = load i8, i8* %12, align 1, !dbg !1702, !tbaa !396
  %14 = icmp eq i8 %13, %2, !dbg !1704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %14, label %66, label %15, !dbg !1705

; <label>:15:                                     ; preds = %10
  %16 = and i8 %13, 16, !dbg !1706
  %17 = and i8 %2, 16, !dbg !1708
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1710
  %19 = load i8, i8* %18, align 1, !dbg !1710, !tbaa !290
  %20 = and i8 %19, 64, !dbg !1712
  %21 = icmp eq i8 %20, 0, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br i1 %21, label %23, label %22, !dbg !1713

; <label>:22:                                     ; preds = %15
  tail call void @nd6_adjust_mld_membership(%struct.netif* nonnull %0, i8 signext %1, i8 zeroext %2) #10, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br label %23, !dbg !1716

; <label>:23:                                     ; preds = %15, %22
  %24 = icmp eq i8 %16, 0, !dbg !1717
  %25 = icmp ne i8 %17, 0, !dbg !1719
  %26 = or i1 %25, %24, !dbg !1720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  br i1 %26, label %29, label %27, !dbg !1720

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %11, !dbg !1721
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %28, %struct.ip_addr* null) #10, !dbg !1726
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %28, %struct.ip_addr* null) #10, !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  br label %29, !dbg !1729

; <label>:29:                                     ; preds = %23, %27
  store i8 %2, i8* %12, align 1, !dbg !1730, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br i1 %24, label %30, label %42, !dbg !1731

; <label>:30:                                     ; preds = %29
  %31 = icmp eq i8 %17, 0, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  br i1 %31, label %42, label %32, !dbg !1734

; <label>:32:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  %33 = load i8, i8* %18, align 1, !dbg !1740, !tbaa !290
  %34 = zext i8 %33 to i32, !dbg !1741
  %35 = and i32 %34, 4, !dbg !1742
  %36 = icmp eq i32 %35, 0, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  br i1 %36, label %41, label %37, !dbg !1743

; <label>:37:                                     ; preds = %32
  %38 = and i32 %34, 1, !dbg !1744
  %39 = icmp eq i32 %38, 0, !dbg !1744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %39, label %41, label %40, !dbg !1745

; <label>:40:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  br label %41, !dbg !1749

; <label>:41:                                     ; preds = %32, %37, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br label %42, !dbg !1751

; <label>:42:                                     ; preds = %30, %29, %41
  %43 = xor i8 %13, %2, !dbg !1752
  %44 = icmp ugt i8 %43, 7, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br i1 %44, label %45, label %50, !dbg !1754

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1755
  %47 = load void (%struct.netif*)*, void (%struct.netif*)** %46, align 8, !dbg !1755, !tbaa !475
  %48 = icmp eq void (%struct.netif*)* %47, null, !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  br i1 %48, label %50, label %49, !dbg !1759

; <label>:49:                                     ; preds = %45
  tail call void %47(%struct.netif* nonnull %0) #10, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %50, !dbg !1760

; <label>:50:                                     ; preds = %42, %49, %45
  %51 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !1762
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %51) #7, !dbg !1762
  %52 = bitcast %union.netif_ext_callback_args_t* %4 to %struct.ipv6_addr_state_changed_s*, !dbg !1763
  store i8 %1, i8* %51, align 8, !dbg !1764, !tbaa !396
  %53 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %52, i64 0, i32 1, !dbg !1765
  store i8 %13, i8* %53, align 1, !dbg !1766, !tbaa !396
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %11, !dbg !1767
  %55 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 1, !dbg !1768
  store %struct.ip_addr* %54, %struct.ip_addr** %55, align 8, !dbg !1769, !tbaa !396
  %56 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1775, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  %57 = icmp eq %struct.netif_ext_callback* %56, null, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %57, label %65, label %58, !dbg !1779

; <label>:58:                                     ; preds = %50, %58
  %59 = phi %struct.netif_ext_callback* [ %63, %58 ], [ %56, %50 ]
  %60 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %59, i64 0, i32 0, !dbg !1780
  %61 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %60, align 8, !dbg !1780, !tbaa !578
  call void %61(%struct.netif* nonnull %0, i16 zeroext 512, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !1781
  %62 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %59, i64 0, i32 1, !dbg !1782
  %63 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %62, align 8, !dbg !1782, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  %64 = icmp eq %struct.netif_ext_callback* %63, null, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %64, label %65, label %58, !dbg !1779, !llvm.loop !583

; <label>:65:                                     ; preds = %58, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %51) #7, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br label %66, !dbg !1785

; <label>:66:                                     ; preds = %10, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1786
  ret void, !dbg !1786
}

; Function Attrs: noredzone
declare dso_local void @nd6_adjust_mld_membership(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif* readonly, %struct.ip6_addr* readonly) local_unnamed_addr #1 !dbg !1787 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  br i1 %3, label %4, label %5, !dbg !1799

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1800
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1803
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1803
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %1, null, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1810
  br i1 %6, label %7, label %8, !dbg !1810

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1811
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1814
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1814
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !1818
  %10 = load i8, i8* %9, align 4, !dbg !1818, !tbaa !1820
  %11 = icmp eq i8 %10, 0, !dbg !1818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br i1 %11, label %17, label %12, !dbg !1822

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1823
  %14 = load i8, i8* %13, align 8, !dbg !1823, !tbaa !485
  %15 = add i8 %14, 1, !dbg !1823
  %16 = icmp eq i8 %10, %15, !dbg !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  br i1 %16, label %17, label %49, !dbg !1824

; <label>:17:                                     ; preds = %8, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1829
  %23 = load i8, i8* %22, align 1, !dbg !1829, !tbaa !396
  %24 = icmp eq i8 %23, 0, !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  br i1 %24, label %45, label %25, !dbg !1833

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1834
  %27 = load i32, i32* %26, align 8, !dbg !1834, !tbaa !396
  %28 = load i32, i32* %18, align 4, !dbg !1834, !tbaa !451
  %29 = icmp eq i32 %27, %28, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %29, label %30, label %45, !dbg !1834

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1834
  %32 = load i32, i32* %31, align 4, !dbg !1834, !tbaa !396
  %33 = load i32, i32* %19, align 4, !dbg !1834, !tbaa !451
  %34 = icmp eq i32 %32, %33, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %34, label %35, label %45, !dbg !1834

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1834
  %37 = load i32, i32* %36, align 8, !dbg !1834, !tbaa !396
  %38 = load i32, i32* %20, align 4, !dbg !1834, !tbaa !451
  %39 = icmp eq i32 %37, %38, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %39, label %40, label %45, !dbg !1834

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1834
  %42 = load i32, i32* %41, align 4, !dbg !1834, !tbaa !396
  %43 = load i32, i32* %21, align 4, !dbg !1834, !tbaa !451
  %44 = icmp eq i32 %42, %43, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  br i1 %44, label %49, label %45, !dbg !1835

; <label>:45:                                     ; preds = %17, %25, %30, %35, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1829
  %47 = load i8, i8* %46, align 1, !dbg !1829, !tbaa !396
  %48 = icmp eq i8 %47, 0, !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  br i1 %48, label %71, label %51, !dbg !1833

; <label>:49:                                     ; preds = %40, %66, %90, %12, %95
  %50 = phi i8 [ -1, %95 ], [ -1, %12 ], [ 0, %40 ], [ 1, %66 ], [ 2, %90 ], !dbg !1837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  ret i8 %50, !dbg !1839

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !1834
  %53 = load i32, i32* %52, align 8, !dbg !1834, !tbaa !396
  %54 = load i32, i32* %18, align 4, !dbg !1834, !tbaa !451
  %55 = icmp eq i32 %53, %54, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %55, label %56, label %71, !dbg !1834

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !1834
  %58 = load i32, i32* %57, align 4, !dbg !1834, !tbaa !396
  %59 = load i32, i32* %19, align 4, !dbg !1834, !tbaa !451
  %60 = icmp eq i32 %58, %59, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %60, label %61, label %71, !dbg !1834

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !1834
  %63 = load i32, i32* %62, align 8, !dbg !1834, !tbaa !396
  %64 = load i32, i32* %20, align 4, !dbg !1834, !tbaa !451
  %65 = icmp eq i32 %63, %64, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %65, label %66, label %71, !dbg !1834

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !1834
  %68 = load i32, i32* %67, align 4, !dbg !1834, !tbaa !396
  %69 = load i32, i32* %21, align 4, !dbg !1834, !tbaa !451
  %70 = icmp eq i32 %68, %69, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  br i1 %70, label %49, label %71, !dbg !1835

; <label>:71:                                     ; preds = %66, %61, %56, %51, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1829
  %73 = load i8, i8* %72, align 1, !dbg !1829, !tbaa !396
  %74 = icmp eq i8 %73, 0, !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  br i1 %74, label %95, label %75, !dbg !1833

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !1834
  %77 = load i32, i32* %76, align 8, !dbg !1834, !tbaa !396
  %78 = load i32, i32* %18, align 4, !dbg !1834, !tbaa !451
  %79 = icmp eq i32 %77, %78, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %79, label %80, label %95, !dbg !1834

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !1834
  %82 = load i32, i32* %81, align 4, !dbg !1834, !tbaa !396
  %83 = load i32, i32* %19, align 4, !dbg !1834, !tbaa !451
  %84 = icmp eq i32 %82, %83, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %84, label %85, label %95, !dbg !1834

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !1834
  %87 = load i32, i32* %86, align 8, !dbg !1834, !tbaa !396
  %88 = load i32, i32* %20, align 4, !dbg !1834, !tbaa !451
  %89 = icmp eq i32 %87, %88, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %89, label %90, label %95, !dbg !1834

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !1834
  %92 = load i32, i32* %91, align 4, !dbg !1834, !tbaa !396
  %93 = load i32, i32* %21, align 4, !dbg !1834, !tbaa !451
  %94 = icmp eq i32 %92, %93, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  br i1 %94, label %49, label %95, !dbg !1835

; <label>:95:                                     ; preds = %90, %85, %80, %75, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  br label %49, !dbg !1840
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_create_ip6_linklocal_address(%struct.netif*, i8 zeroext) local_unnamed_addr #1 !dbg !1841 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1852
  br i1 %3, label %4, label %5, !dbg !1852

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1853
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1856
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1856
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1860
  store i32 33022, i32* %6, align 8, !dbg !1861, !tbaa !396
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1862
  store i32 0, i32* %7, align 4, !dbg !1863, !tbaa !396
  %8 = icmp eq i8 %1, 0, !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br i1 %8, label %44, label %9, !dbg !1866

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1867
  %11 = load i8, i8* %10, align 2, !dbg !1867, !tbaa !396
  %12 = xor i8 %11, 2, !dbg !1869
  %13 = zext i8 %12 to i32, !dbg !1869
  %14 = shl nuw i32 %13, 24, !dbg !1870
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 1, !dbg !1871
  %16 = load i8, i8* %15, align 1, !dbg !1871, !tbaa !396
  %17 = zext i8 %16 to i32, !dbg !1872
  %18 = shl nuw nsw i32 %17, 16, !dbg !1873
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 2, !dbg !1874
  %20 = load i8, i8* %19, align 2, !dbg !1874, !tbaa !396
  %21 = zext i8 %20 to i32, !dbg !1875
  %22 = shl nuw nsw i32 %21, 8, !dbg !1876
  %23 = or i32 %18, %14, !dbg !1877
  %24 = or i32 %23, %22, !dbg !1878
  %25 = or i32 %24, 255, !dbg !1878
  %26 = tail call i32 @lwip_htonl(i32 %25) #10, !dbg !1879
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1880
  store i32 %26, i32* %27, align 8, !dbg !1881, !tbaa !396
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 3, !dbg !1882
  %29 = load i8, i8* %28, align 1, !dbg !1882, !tbaa !396
  %30 = zext i8 %29 to i32, !dbg !1883
  %31 = shl nuw nsw i32 %30, 16, !dbg !1884
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 4, !dbg !1885
  %33 = load i8, i8* %32, align 2, !dbg !1885, !tbaa !396
  %34 = zext i8 %33 to i32, !dbg !1886
  %35 = shl nuw nsw i32 %34, 8, !dbg !1887
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 5, !dbg !1888
  %37 = load i8, i8* %36, align 1, !dbg !1888, !tbaa !396
  %38 = zext i8 %37 to i32, !dbg !1889
  %39 = or i32 %31, %35, !dbg !1890
  %40 = or i32 %39, %38, !dbg !1890
  %41 = or i32 %40, -33554432, !dbg !1890
  %42 = tail call i32 @lwip_htonl(i32 %41) #10, !dbg !1891
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1892
  store i32 %42, i32* %43, align 4, !dbg !1893, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  br label %76, !dbg !1894

; <label>:44:                                     ; preds = %5
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1895
  store i32 0, i32* %45, align 8, !dbg !1897, !tbaa !396
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1898
  store i32 0, i32* %46, align 4, !dbg !1899, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  br label %48, !dbg !1906

; <label>:48:                                     ; preds = %44, %58
  %49 = phi i32 [ 0, %44 ], [ %74, %58 ]
  %50 = phi i8 [ 3, %44 ], [ %59, %58 ]
  %51 = load i8, i8* %47, align 4, !dbg !1904, !tbaa !1907
  %52 = zext i8 %51 to i32, !dbg !1908
  %53 = icmp ult i32 %49, %52, !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  br i1 %53, label %54, label %76, !dbg !1909

; <label>:54:                                     ; preds = %48
  %55 = icmp eq i32 %49, 4, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  br i1 %55, label %56, label %58, !dbg !1913

; <label>:56:                                     ; preds = %54
  %57 = add i8 %50, -1, !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  br label %58, !dbg !1916

; <label>:58:                                     ; preds = %56, %54
  %59 = phi i8 [ %57, %56 ], [ %50, %54 ], !dbg !1917
  %60 = xor i32 %49, -1, !dbg !1918
  %61 = add nsw i32 %52, %60, !dbg !1918
  %62 = sext i32 %61 to i64, !dbg !1919
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 %62, !dbg !1919
  %64 = load i8, i8* %63, align 1, !dbg !1919, !tbaa !396
  %65 = zext i8 %64 to i32, !dbg !1920
  %66 = shl nuw nsw i32 %49, 3, !dbg !1921
  %67 = and i32 %66, 24, !dbg !1921
  %68 = shl i32 %65, %67, !dbg !1922
  %69 = tail call i32 @lwip_htonl(i32 %68) #10, !dbg !1923
  %70 = zext i8 %59 to i64, !dbg !1924
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 %70, !dbg !1924
  %72 = load i32, i32* %71, align 4, !dbg !1925, !tbaa !396
  %73 = or i32 %72, %69, !dbg !1925
  store i32 %73, i32* %71, align 4, !dbg !1925, !tbaa !396
  %74 = add nuw nsw i32 %49, 1, !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %75 = icmp ult i32 %74, 8, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  br i1 %75, label %48, label %76, !dbg !1906, !llvm.loop !1929

; <label>:76:                                     ; preds = %48, %58, %9
  %77 = load i32, i32* %6, align 8, !dbg !1931, !tbaa !396
  %78 = and i32 %77, 49407, !dbg !1931
  %79 = icmp eq i32 %78, 33022, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %79, label %80, label %84, !dbg !1931

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1931
  %82 = load i8, i8* %81, align 8, !dbg !1931, !tbaa !485
  %83 = add i8 %82, 1, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br label %84, !dbg !1931

; <label>:84:                                     ; preds = %76, %80
  %85 = phi i8 [ %83, %80 ], [ 0, %76 ]
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !1931
  store i8 %85, i8* %86, align 8, !dbg !1931, !tbaa !396
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext 0, i8 zeroext 8) #8, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  ret void, !dbg !1933
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_add_ip6_address(%struct.netif*, %struct.ip6_addr*, i8*) local_unnamed_addr #1 !dbg !1934 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  br i1 %4, label %5, label %6, !dbg !1949

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1950
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1953
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1953
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip6_addr* %1, null, !dbg !1957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  br i1 %7, label %8, label %9, !dbg !1960

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1961
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1964
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1964
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull %1) #8, !dbg !1968
  %11 = icmp sgt i8 %10, -1, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br i1 %11, label %12, label %15, !dbg !1972

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i8* %2, null, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %13, label %60, label %14, !dbg !1976

; <label>:14:                                     ; preds = %12
  store i8 %10, i8* %2, align 1, !dbg !1977, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br label %60, !dbg !1979

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1980
  %17 = load i32, i32* %16, align 4, !dbg !1980, !tbaa !451
  %18 = and i32 %17, 49407, !dbg !1980
  %19 = icmp ne i32 %18, 33022, !dbg !1980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  %20 = zext i1 %19 to i8, !dbg !1980
  %21 = zext i1 %19 to i64, !dbg !1984
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %21, !dbg !1984
  %23 = load i8, i8* %22, align 1, !dbg !1984, !tbaa !396
  %24 = icmp eq i8 %23, 0, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  br i1 %24, label %25, label %51, !dbg !1988

; <label>:25:                                     ; preds = %65, %51, %15
  %26 = phi i8 [ %20, %15 ], [ %52, %51 ], [ %63, %65 ]
  %27 = phi i64 [ %21, %15 ], [ %53, %51 ], [ %66, %65 ], !dbg !1984
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 0, !dbg !1989
  store i32 %17, i32* %28, align 8, !dbg !1989, !tbaa !396
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1989
  %30 = load i32, i32* %29, align 4, !dbg !1989, !tbaa !451
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 1, !dbg !1989
  store i32 %30, i32* %31, align 4, !dbg !1989, !tbaa !396
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1989
  %33 = load i32, i32* %32, align 4, !dbg !1989, !tbaa !451
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 2, !dbg !1989
  store i32 %33, i32* %34, align 8, !dbg !1989, !tbaa !396
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1989
  %36 = load i32, i32* %35, align 4, !dbg !1989, !tbaa !451
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 3, !dbg !1989
  store i32 %36, i32* %37, align 4, !dbg !1989, !tbaa !396
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !1989
  %39 = load i8, i8* %38, align 4, !dbg !1989, !tbaa !1820
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 1, !dbg !1989
  store i8 %39, i8* %40, align 8, !dbg !1989, !tbaa !396
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 1, !dbg !1993
  store i8 6, i8* %41, align 4, !dbg !1993, !tbaa !445
  %42 = icmp eq i32 %18, 33022, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  br i1 %42, label %43, label %47, !dbg !1995

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1995
  %45 = load i8, i8* %44, align 8, !dbg !1995, !tbaa !485
  %46 = add i8 %45, 1, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  br label %47, !dbg !1995

; <label>:47:                                     ; preds = %25, %43
  %48 = phi i8 [ %46, %43 ], [ 0, %25 ]
  store i8 %48, i8* %40, align 8, !dbg !1995, !tbaa !396
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext %26, i8 zeroext 8) #8, !dbg !1996
  %49 = icmp eq i8* %2, null, !dbg !1997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br i1 %49, label %60, label %50, !dbg !1999

; <label>:50:                                     ; preds = %47
  store i8 %26, i8* %2, align 1, !dbg !2000, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  br label %60, !dbg !2002

; <label>:51:                                     ; preds = %15
  %52 = select i1 %19, i8 2, i8 1, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  %53 = zext i8 %52 to i64, !dbg !1984
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %53, !dbg !1984
  %55 = load i8, i8* %54, align 1, !dbg !1984, !tbaa !396
  %56 = icmp eq i8 %55, 0, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  br i1 %56, label %25, label %62, !dbg !1988

; <label>:57:                                     ; preds = %70, %62
  %58 = icmp eq i8* %2, null, !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  br i1 %58, label %60, label %59, !dbg !2007

; <label>:59:                                     ; preds = %57
  store i8 -1, i8* %2, align 1, !dbg !2008, !tbaa !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  br label %60, !dbg !2010

; <label>:60:                                     ; preds = %59, %57, %50, %47, %14, %12
  %61 = phi i8 [ 0, %12 ], [ 0, %14 ], [ 0, %47 ], [ 0, %50 ], [ -6, %57 ], [ -6, %59 ], !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  ret i8 %61, !dbg !2013

; <label>:62:                                     ; preds = %51
  %63 = add nuw nsw i8 %52, 1, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  %64 = icmp ult i8 %63, 3, !dbg !2014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  br i1 %64, label %65, label %57, !dbg !1983, !llvm.loop !2015

; <label>:65:                                     ; preds = %62
  %66 = zext i8 %63 to i64, !dbg !1984
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %66, !dbg !1984
  %68 = load i8, i8* %67, align 1, !dbg !1984, !tbaa !396
  %69 = icmp eq i8 %68, 0, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  br i1 %69, label %25, label %70, !dbg !1988

; <label>:70:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  br label %57
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @netif_name_to_index(i8*) local_unnamed_addr #1 !dbg !2017 {
  %2 = icmp eq i8* %0, null, !dbg !2033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  br i1 %2, label %32, label %3, !dbg !2035

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2036
  %5 = tail call i32 @atoi(i8* nonnull %4) #10, !dbg !2037
  %6 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2038, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  %7 = icmp eq %struct.netif* %6, null, !dbg !2041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  br i1 %7, label %32, label %8, !dbg !2038

; <label>:8:                                      ; preds = %3
  %9 = trunc i32 %5 to i8
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br label %11, !dbg !2038

; <label>:11:                                     ; preds = %26, %8
  %12 = phi %struct.netif* [ %6, %8 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 23, !dbg !2043
  %14 = load i8, i8* %13, align 8, !dbg !2043, !tbaa !485
  %15 = icmp eq i8 %14, %9, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  br i1 %15, label %16, label %26, !dbg !2047

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %0, align 1, !dbg !2048, !tbaa !396
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 0, !dbg !2049
  %19 = load i8, i8* %18, align 2, !dbg !2049, !tbaa !396
  %20 = icmp eq i8 %17, %19, !dbg !2050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  br i1 %20, label %21, label %26, !dbg !2051

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %10, align 1, !dbg !2052, !tbaa !396
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 1, !dbg !2053
  %24 = load i8, i8* %23, align 1, !dbg !2053, !tbaa !396
  %25 = icmp eq i8 %22, %24, !dbg !2054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  br i1 %25, label %30, label %26, !dbg !2055

; <label>:26:                                     ; preds = %21, %16, %11
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !2041
  %28 = load %struct.netif*, %struct.netif** %27, align 8, !dbg !2041, !tbaa !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  %29 = icmp eq %struct.netif* %28, null, !dbg !2041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  br i1 %29, label %32, label %11, !dbg !2038, !llvm.loop !2056

; <label>:30:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  %31 = add i8 %9, 1, !dbg !2064
  br label %33, !dbg !2067

; <label>:32:                                     ; preds = %26, %3, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  br label %33, !dbg !2069

; <label>:33:                                     ; preds = %32, %30
  %34 = phi i8 [ %31, %30 ], [ 0, %32 ], !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  ret i8 %34, !dbg !2071
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_find(i8*) local_unnamed_addr #1 !dbg !2025 {
  %2 = icmp eq i8* %0, null, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  br i1 %2, label %30, label %3, !dbg !2074

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2075
  %5 = tail call i32 @atoi(i8* nonnull %4) #10, !dbg !2076
  %6 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2057, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %7 = icmp eq %struct.netif* %6, null, !dbg !2078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br i1 %7, label %30, label %8, !dbg !2057

; <label>:8:                                      ; preds = %3
  %9 = trunc i32 %5 to i8
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br label %11, !dbg !2057

; <label>:11:                                     ; preds = %8, %26
  %12 = phi %struct.netif* [ %6, %8 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 23, !dbg !2079
  %14 = load i8, i8* %13, align 8, !dbg !2079, !tbaa !485
  %15 = icmp eq i8 %14, %9, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  br i1 %15, label %16, label %26, !dbg !2081

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %0, align 1, !dbg !2082, !tbaa !396
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 0, !dbg !2083
  %19 = load i8, i8* %18, align 2, !dbg !2083, !tbaa !396
  %20 = icmp eq i8 %17, %19, !dbg !2084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2085
  br i1 %20, label %21, label %26, !dbg !2085

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %10, align 1, !dbg !2086, !tbaa !396
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 1, !dbg !2087
  %24 = load i8, i8* %23, align 1, !dbg !2087, !tbaa !396
  %25 = icmp eq i8 %22, %24, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br i1 %25, label %30, label %26, !dbg !2089

; <label>:26:                                     ; preds = %11, %16, %21
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !2078
  %28 = load %struct.netif*, %struct.netif** %27, align 8, !dbg !2078, !tbaa !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2078
  %29 = icmp eq %struct.netif* %28, null, !dbg !2078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br i1 %29, label %30, label %11, !dbg !2057, !llvm.loop !2056

; <label>:30:                                     ; preds = %26, %21, %3, %1
  %31 = phi %struct.netif* [ null, %1 ], [ null, %3 ], [ null, %26 ], [ %12, %21 ], !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  ret %struct.netif* %31, !dbg !2093
}

; Function Attrs: noredzone nounwind
define dso_local i8* @netif_index_to_name(i8 zeroext, i8*) local_unnamed_addr #1 !dbg !2094 {
  %3 = icmp eq i8 %0, 0, !dbg !2112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2114
  br i1 %3, label %26, label %4, !dbg !2114

; <label>:4:                                      ; preds = %2
  %5 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2115, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  %6 = icmp eq %struct.netif* %5, null, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  br i1 %6, label %26, label %7, !dbg !2115

; <label>:7:                                      ; preds = %4, %13
  %8 = phi %struct.netif* [ %15, %13 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 23, !dbg !2121
  %10 = load i8, i8* %9, align 8, !dbg !2121, !tbaa !485
  %11 = add i8 %10, 1, !dbg !2121
  %12 = icmp eq i8 %11, %0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %12, label %17, label %13, !dbg !2125

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 0, !dbg !2119
  %15 = load %struct.netif*, %struct.netif** %14, align 8, !dbg !2119, !tbaa !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %16 = icmp eq %struct.netif* %15, null, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  br i1 %16, label %26, label %7, !dbg !2115, !llvm.loop !2126

; <label>:17:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2133
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 22, i64 0, !dbg !2134
  %19 = load i8, i8* %18, align 2, !dbg !2134, !tbaa !396
  store i8 %19, i8* %1, align 1, !dbg !2137, !tbaa !396
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 22, i64 1, !dbg !2138
  %21 = load i8, i8* %20, align 1, !dbg !2138, !tbaa !396
  %22 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2139
  store i8 %21, i8* %22, align 1, !dbg !2140, !tbaa !396
  %23 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2141
  %24 = zext i8 %0 to i32, !dbg !2142
  %25 = add nsw i32 %24, -1, !dbg !2142
  tail call void @lwip_itoa(i8* nonnull %23, i64 4, i32 %25) #10, !dbg !2143
  br label %27, !dbg !2144

; <label>:26:                                     ; preds = %13, %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2133
  br label %27, !dbg !2146

; <label>:27:                                     ; preds = %26, %17
  %28 = phi i8* [ %1, %17 ], [ null, %26 ], !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  ret i8* %28, !dbg !2149
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #1 !dbg !2105 {
  %2 = icmp eq i8 %0, 0, !dbg !2151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br i1 %2, label %16, label %3, !dbg !2152

; <label>:3:                                      ; preds = %1
  %4 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2127, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  %5 = icmp eq %struct.netif* %4, null, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  br i1 %5, label %16, label %6, !dbg !2127

; <label>:6:                                      ; preds = %3, %12
  %7 = phi %struct.netif* [ %14, %12 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 23, !dbg !2155
  %9 = load i8, i8* %8, align 8, !dbg !2155, !tbaa !485
  %10 = add i8 %9, 1, !dbg !2155
  %11 = icmp eq i8 %10, %0, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  br i1 %11, label %16, label %12, !dbg !2157

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 0, !dbg !2154
  %14 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !2154, !tbaa !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  %15 = icmp eq %struct.netif* %14, null, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  br i1 %15, label %16, label %6, !dbg !2127, !llvm.loop !2126

; <label>:16:                                     ; preds = %12, %6, %1, %3
  %17 = phi %struct.netif* [ null, %3 ], [ null, %1 ], [ null, %12 ], [ %7, %6 ], !dbg !2158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  ret %struct.netif* %17, !dbg !2160
}

; Function Attrs: noredzone
declare dso_local void @lwip_itoa(i8*, i64, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_add_ext_callback(%struct.netif_ext_callback*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*) local_unnamed_addr #1 !dbg !2161 {
  %3 = icmp eq %struct.netif_ext_callback* %0, null, !dbg !2169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  br i1 %3, label %4, label %5, !dbg !2172

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2173
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2176
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2176
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* %1, null, !dbg !2180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  br i1 %6, label %7, label %8, !dbg !2183

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2184
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2187
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2187
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 0, !dbg !2191
  store void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* %1, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %9, align 8, !dbg !2192, !tbaa !578
  %10 = load i64, i64* bitcast (%struct.netif_ext_callback** @ext_callback to i64*), align 8, !dbg !2193, !tbaa !559
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2194
  %12 = bitcast %struct.netif_ext_callback** %11 to i64*, !dbg !2195
  store i64 %10, i64* %12, align 8, !dbg !2195, !tbaa !582
  store %struct.netif_ext_callback* %0, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !2196, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  ret void, !dbg !2197
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_remove_ext_callback(%struct.netif_ext_callback*) local_unnamed_addr #1 !dbg !2198 {
  %2 = icmp eq %struct.netif_ext_callback* %0, null, !dbg !2206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  br i1 %2, label %3, label %4, !dbg !2209

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2210
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2213
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2213
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !2217, !tbaa !559
  %6 = icmp eq %struct.netif_ext_callback* %5, null, !dbg !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2220
  br i1 %6, label %32, label %7, !dbg !2220

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.netif_ext_callback* %5, %0, !dbg !2221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  %9 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %5, i64 0, i32 1, !dbg !2224
  br i1 %8, label %10, label %13, !dbg !2223

; <label>:10:                                     ; preds = %7
  %11 = bitcast %struct.netif_ext_callback** %9 to i64*, !dbg !2227
  %12 = load i64, i64* %11, align 8, !dbg !2227, !tbaa !582
  store i64 %12, i64* bitcast (%struct.netif_ext_callback** @ext_callback to i64*), align 8, !dbg !2229, !tbaa !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br label %32, !dbg !2230

; <label>:13:                                     ; preds = %7
  %14 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %9, align 8, !dbg !2232, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  %15 = icmp eq %struct.netif_ext_callback* %14, null, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2237
  br i1 %15, label %32, label %16, !dbg !2237

; <label>:16:                                     ; preds = %13
  %17 = icmp eq %struct.netif_ext_callback* %14, %0, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  br i1 %17, label %20, label %27, !dbg !2241

; <label>:18:                                     ; preds = %27
  %19 = icmp eq %struct.netif_ext_callback* %30, %0, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  br i1 %19, label %20, label %27, !dbg !2241, !llvm.loop !2242

; <label>:20:                                     ; preds = %18, %16
  %21 = phi %struct.netif_ext_callback* [ %5, %16 ], [ %28, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2244
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2247
  %23 = bitcast %struct.netif_ext_callback** %22 to i64*, !dbg !2247
  %24 = load i64, i64* %23, align 8, !dbg !2247, !tbaa !582
  %25 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 1, !dbg !2248
  %26 = bitcast %struct.netif_ext_callback** %25 to i64*, !dbg !2249
  store i64 %24, i64* %26, align 8, !dbg !2249, !tbaa !582
  store %struct.netif_ext_callback* null, %struct.netif_ext_callback** %22, align 8, !dbg !2250, !tbaa !582
  br label %32, !dbg !2251

; <label>:27:                                     ; preds = %16, %18
  %28 = phi %struct.netif_ext_callback* [ %30, %18 ], [ %14, %16 ]
  %29 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %28, i64 0, i32 1, !dbg !2252
  %30 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %29, align 8, !dbg !2252, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2253
  %31 = icmp eq %struct.netif_ext_callback* %30, null, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2237
  br i1 %31, label %32, label %18, !dbg !2237, !llvm.loop !2242

; <label>:32:                                     ; preds = %27, %10, %13, %4, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2256
  ret void, !dbg !2256
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noredzone
declare dso_local void @tcp_netif_ip_addr_changed(%struct.ip_addr*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_netif_ip_addr_changed(%struct.ip_addr*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @etharp_request(%struct.netif*, %struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @mld6_report_groups(%struct.netif*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!251, !252, !253}
!llvm.ident = !{!254}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "netif_num", scope: !2, file: !3, line: 115, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !86)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/netif.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11, !18, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !6, line: 156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !12, line: 68, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 53, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!28 = !DIEnumerator(name: "ERR_OK", value: 0)
!29 = !DIEnumerator(name: "ERR_MEM", value: -1)
!30 = !DIEnumerator(name: "ERR_BUF", value: -2)
!31 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!32 = !DIEnumerator(name: "ERR_RTE", value: -4)
!33 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!34 = !DIEnumerator(name: "ERR_VAL", value: -6)
!35 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!36 = !DIEnumerator(name: "ERR_USE", value: -8)
!37 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!38 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!39 = !DIEnumerator(name: "ERR_CONN", value: -11)
!40 = !DIEnumerator(name: "ERR_IF", value: -12)
!41 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!42 = !DIEnumerator(name: "ERR_RST", value: -14)
!43 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!44 = !DIEnumerator(name: "ERR_ARG", value: -16)
!45 = !{!46, !47, !54, !57, !64, !84}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !48, line: 125, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 43, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !48, line: 129, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 48, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 79, baseType: !7)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !60, line: 57, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !60, line: 51, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !61, file: !60, line: 52, baseType: !54, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !19, line: 76, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !19, line: 69, size: 192, elements: !68)
!68 = !{!69, !83}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !67, file: !19, line: 73, baseType: !70, size: 160)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !19, line: 70, size: 160, elements: !71)
!71 = !{!72, !82}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !70, file: !19, line: 71, baseType: !73, size: 160)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !74, line: 67, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !74, line: 59, size: 160, elements: !76)
!76 = !{!77, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !75, file: !74, line: 60, baseType: !78, size: 128)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !75, file: !74, line: 62, baseType: !47, size: 8, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !70, file: !19, line: 72, baseType: !59, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !19, line: 75, baseType: !47, size: 8, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!86 = !{!87, !221, !223, !0, !225, !249}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "ext_callback", scope: !2, file: !3, line: 106, type: !89, isLocal: true, isDefinition: true)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_t", file: !6, line: 652, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif_ext_callback", file: !6, line: 648, size: 128, elements: !92)
!92 = !{!93, !219}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "callback_fn", scope: !91, file: !6, line: 650, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_fn", file: !6, line: 644, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !188, !189}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !109, !111, !113, !114, !140, !145, !150, !155, !160, !161, !162, !166, !167, !168, !169, !173, !174, !175, !180, !181, !182, !183}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !6, line: 263, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !99, file: !6, line: 268, baseType: !66, size: 192, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !99, file: !6, line: 269, baseType: !66, size: 192, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !99, file: !6, line: 270, baseType: !66, size: 192, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !99, file: !6, line: 274, baseType: !106, size: 576, offset: 640)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 576, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 3)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !99, file: !6, line: 277, baseType: !110, size: 24, offset: 1216)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !107)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !99, file: !6, line: 282, baseType: !112, size: 96, offset: 1248)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 96, elements: !107)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !99, file: !6, line: 283, baseType: !112, size: 96, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !99, file: !6, line: 288, baseType: !115, size: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !124, !98}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !25, line: 96, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !48, line: 126, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !50, line: 20, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !52, line: 41, baseType: !123)
!123 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !126, line: 186, size: 192, elements: !127)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !{!128, !129, !130, !135, !136, !137, !138, !139}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 188, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !125, file: !126, line: 191, baseType: !46, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !125, file: !126, line: 200, baseType: !131, size: 16, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !48, line: 127, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 36, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 57, baseType: !134)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !125, file: !126, line: 203, baseType: !131, size: 16, offset: 144)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !125, file: !126, line: 208, baseType: !47, size: 8, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !126, line: 211, baseType: !47, size: 8, offset: 168)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !125, file: !126, line: 218, baseType: !47, size: 8, offset: 176)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !125, file: !126, line: 221, baseType: !47, size: 8, offset: 184)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !99, file: !6, line: 294, baseType: !141, size: 64, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!119, !98, !124, !57}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !99, file: !6, line: 299, baseType: !146, size: 64, offset: 1600)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!119, !98, !124}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !99, file: !6, line: 305, baseType: !151, size: 64, offset: 1664)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!119, !98, !124, !84}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !99, file: !6, line: 310, baseType: !156, size: 64, offset: 1728)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !98}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !99, file: !6, line: 319, baseType: !156, size: 64, offset: 1792)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !99, file: !6, line: 323, baseType: !46, size: 64, offset: 1856)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !99, file: !6, line: 325, baseType: !163, size: 64, offset: 1920)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 1)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !99, file: !6, line: 332, baseType: !131, size: 16, offset: 1984)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !99, file: !6, line: 335, baseType: !131, size: 16, offset: 2000)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !99, file: !6, line: 338, baseType: !131, size: 16, offset: 2016)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !99, file: !6, line: 341, baseType: !170, size: 48, offset: 2032)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 48, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 6)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !99, file: !6, line: 343, baseType: !47, size: 8, offset: 2080)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !6, line: 345, baseType: !47, size: 8, offset: 2088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !6, line: 347, baseType: !176, size: 16, offset: 2096)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 16, elements: !178)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!178 = !{!179}
!179 = !DISubrange(count: 2)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !99, file: !6, line: 350, baseType: !47, size: 8, offset: 2112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !99, file: !6, line: 353, baseType: !47, size: 8, offset: 2120)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !99, file: !6, line: 357, baseType: !47, size: 8, offset: 2128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !99, file: !6, line: 377, baseType: !184, size: 64, offset: 2176)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!119, !98, !84, !5}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_nsc_reason_t", file: !6, line: 564, baseType: !131)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_args_t", file: !6, line: 634, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 594, size: 192, elements: !193)
!193 = !{!194, !198, !202, !208, !213}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "link_changed", scope: !192, file: !6, line: 601, baseType: !195, size: 8)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link_changed_s", file: !6, line: 597, size: 8, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !195, file: !6, line: 600, baseType: !47, size: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "status_changed", scope: !192, file: !6, line: 607, baseType: !199, size: 8)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "status_changed_s", file: !6, line: 603, size: 8, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !199, file: !6, line: 606, baseType: !47, size: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_changed", scope: !192, file: !6, line: 615, baseType: !203, size: 192)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_changed_s", file: !6, line: 609, size: 192, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "old_address", scope: !203, file: !6, line: 612, baseType: !64, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "old_netmask", scope: !203, file: !6, line: 613, baseType: !64, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "old_gw", scope: !203, file: !6, line: 614, baseType: !64, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_set", scope: !192, file: !6, line: 623, baseType: !209, size: 128)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_set_s", file: !6, line: 617, size: 128, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addr_index", scope: !209, file: !6, line: 620, baseType: !120, size: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "old_address", scope: !209, file: !6, line: 622, baseType: !64, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_addr_state_changed", scope: !192, file: !6, line: 633, baseType: !214, size: 128)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_addr_state_changed_s", file: !6, line: 625, size: 128, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addr_index", scope: !214, file: !6, line: 628, baseType: !120, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !214, file: !6, line: 630, baseType: !47, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !214, file: !6, line: 632, baseType: !64, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !6, line: 651, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "netif_list", scope: !2, file: !3, line: 110, type: !98, isLocal: false, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "netif_default", scope: !2, file: !3, line: 112, type: !98, isLocal: false, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "__str", scope: !227, file: !228, line: 198, type: !246, isLocal: true, isDefinition: true)
!227 = distinct !DISubprogram(name: "uk_pr_crit", scope: !228, file: !228, line: 194, type: !229, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !233)
!228 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, null}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "fmt", arg: 1, scope: !227, file: !228, line: 194, type: !231)
!235 = !DILocalVariable(name: "argp", scope: !227, file: !228, line: 196, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !237, line: 32, baseType: !238)
!237 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 192, elements: !164)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !240, file: !3, line: 196, baseType: !7, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !240, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !240, file: !3, line: 196, baseType: !46, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !240, file: !3, line: 196, baseType: !46, size: 64, offset: 128)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 64, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 8)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "__str", scope: !227, file: !228, line: 198, type: !246, isLocal: true, isDefinition: true)
!251 = !{i32 2, !"Dwarf Version", i32 4}
!252 = !{i32 2, !"Debug Info Version", i32 3}
!253 = !{i32 1, !"wchar_size", i32 4}
!254 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!255 = distinct !DISubprogram(name: "netif_init", scope: !3, file: !3, line: 177, type: !256, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null}
!258 = !{}
!259 = !DILocation(line: 205, column: 1, scope: !255)
!260 = distinct !DISubprogram(name: "netif_input", scope: !3, file: !3, line: 217, type: !117, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !261)
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "p", arg: 1, scope: !260, file: !3, line: 217, type: !124)
!263 = !DILocalVariable(name: "inp", arg: 2, scope: !260, file: !3, line: 217, type: !98)
!264 = !DILocation(line: 217, column: 26, scope: !260)
!265 = !DILocation(line: 217, column: 43, scope: !260)
!266 = !DILocation(line: 221, column: 3, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 221, column: 3)
!268 = distinct !DILexicalBlock(scope: !260, file: !3, line: 221, column: 3)
!269 = !DILocation(line: 221, column: 3, scope: !268)
!270 = !DILocation(line: 221, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 221, column: 3)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 221, column: 3)
!273 = !DILocation(line: 221, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 221, column: 3)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 221, column: 3)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 221, column: 3)
!277 = !DILocation(line: 222, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 222, column: 3)
!279 = distinct !DILexicalBlock(scope: !260, file: !3, line: 222, column: 3)
!280 = !DILocation(line: 222, column: 3, scope: !279)
!281 = !DILocation(line: 222, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 222, column: 3)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 222, column: 3)
!284 = !DILocation(line: 222, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 222, column: 3)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 222, column: 3)
!287 = distinct !DILexicalBlock(scope: !282, file: !3, line: 222, column: 3)
!288 = !DILocation(line: 225, column: 12, scope: !289)
!289 = distinct !DILexicalBlock(scope: !260, file: !3, line: 225, column: 7)
!290 = !{!291, !293, i64 261}
!291 = !{!"netif", !292, i64 0, !295, i64 8, !295, i64 32, !295, i64 56, !293, i64 80, !293, i64 152, !293, i64 156, !293, i64 168, !292, i64 184, !292, i64 192, !292, i64 200, !292, i64 208, !292, i64 216, !292, i64 224, !292, i64 232, !293, i64 240, !296, i64 248, !296, i64 250, !296, i64 252, !293, i64 254, !293, i64 260, !293, i64 261, !293, i64 262, !293, i64 264, !293, i64 265, !293, i64 266, !292, i64 272}
!292 = !{!"any pointer", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C/C++ TBAA"}
!295 = !{!"ip_addr", !293, i64 0, !293, i64 20}
!296 = !{!"short", !293, i64 0}
!297 = !DILocation(line: 225, column: 18, scope: !289)
!298 = !DILocation(line: 225, column: 7, scope: !260)
!299 = !DILocation(line: 226, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !289, file: !3, line: 225, column: 63)
!301 = !DILocation(line: 226, column: 5, scope: !300)
!302 = !DILocation(line: 229, column: 12, scope: !289)
!303 = !DILocation(line: 229, column: 5, scope: !289)
!304 = !DILocation(line: 0, scope: !289)
!305 = !DILocation(line: 0, scope: !300)
!306 = !DILocation(line: 230, column: 1, scope: !260)
!307 = !DILocation(line: 194, column: 43, scope: !227)
!308 = !DILocation(line: 196, column: 2, scope: !227)
!309 = !DILocation(line: 196, column: 10, scope: !227)
!310 = !DILocation(line: 197, column: 2, scope: !227)
!311 = !DILocation(line: 198, column: 2, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !228, line: 198, column: 2)
!313 = distinct !DILexicalBlock(scope: !227, file: !228, line: 198, column: 2)
!314 = !DILocation(line: 199, column: 2, scope: !227)
!315 = !DILocation(line: 200, column: 1, scope: !227)
!316 = distinct !DISubprogram(name: "netif_add_noaddr", scope: !3, file: !3, line: 239, type: !317, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !323)
!317 = !DISubroutineType(types: !318)
!318 = !{!98, !98, !46, !319, !115}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_init_fn", file: !6, line: 168, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!119, !98}
!323 = !{!324, !325, !326, !327}
!324 = !DILocalVariable(name: "netif", arg: 1, scope: !316, file: !3, line: 239, type: !98)
!325 = !DILocalVariable(name: "state", arg: 2, scope: !316, file: !3, line: 239, type: !46)
!326 = !DILocalVariable(name: "init", arg: 3, scope: !316, file: !3, line: 239, type: !319)
!327 = !DILocalVariable(name: "input", arg: 4, scope: !316, file: !3, line: 239, type: !115)
!328 = !DILocation(line: 239, column: 32, scope: !316)
!329 = !DILocation(line: 239, column: 45, scope: !316)
!330 = !DILocation(line: 239, column: 66, scope: !316)
!331 = !DILocation(line: 239, column: 87, scope: !316)
!332 = !DILocation(line: 241, column: 10, scope: !316)
!333 = !DILocation(line: 241, column: 3, scope: !316)
!334 = distinct !DISubprogram(name: "netif_add", scope: !3, file: !3, line: 276, type: !335, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!98, !98, !57, !57, !57, !46, !319, !115}
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!338 = !DILocalVariable(name: "netif", arg: 1, scope: !334, file: !3, line: 276, type: !98)
!339 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !334, file: !3, line: 278, type: !57)
!340 = !DILocalVariable(name: "netmask", arg: 3, scope: !334, file: !3, line: 278, type: !57)
!341 = !DILocalVariable(name: "gw", arg: 4, scope: !334, file: !3, line: 278, type: !57)
!342 = !DILocalVariable(name: "state", arg: 5, scope: !334, file: !3, line: 280, type: !46)
!343 = !DILocalVariable(name: "init", arg: 6, scope: !334, file: !3, line: 280, type: !319)
!344 = !DILocalVariable(name: "input", arg: 7, scope: !334, file: !3, line: 280, type: !115)
!345 = !DILocalVariable(name: "i", scope: !334, file: !3, line: 283, type: !120)
!346 = !DILocalVariable(name: "netif2", scope: !347, file: !3, line: 387, type: !98)
!347 = distinct !DILexicalBlock(scope: !334, file: !3, line: 386, column: 3)
!348 = !DILocalVariable(name: "num_netifs", scope: !347, file: !3, line: 388, type: !26)
!349 = !DILocation(line: 276, column: 25, scope: !334)
!350 = !DILocation(line: 278, column: 29, scope: !334)
!351 = !DILocation(line: 278, column: 55, scope: !334)
!352 = !DILocation(line: 278, column: 82, scope: !334)
!353 = !DILocation(line: 280, column: 17, scope: !334)
!354 = !DILocation(line: 280, column: 38, scope: !334)
!355 = !DILocation(line: 280, column: 59, scope: !334)
!356 = !DILocation(line: 295, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 295, column: 3)
!358 = distinct !DILexicalBlock(scope: !334, file: !3, line: 295, column: 3)
!359 = !DILocation(line: 295, column: 3, scope: !358)
!360 = !DILocation(line: 295, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 295, column: 3)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 295, column: 3)
!363 = !DILocation(line: 295, column: 3, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 295, column: 3)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 295, column: 3)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 295, column: 3)
!367 = !DILocation(line: 296, column: 3, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 296, column: 3)
!369 = distinct !DILexicalBlock(scope: !334, file: !3, line: 296, column: 3)
!370 = !DILocation(line: 296, column: 3, scope: !369)
!371 = !DILocation(line: 296, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 296, column: 3)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 296, column: 3)
!374 = !DILocation(line: 296, column: 3, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 296, column: 3)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 296, column: 3)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 296, column: 3)
!378 = !DILocation(line: 299, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !334, file: !3, line: 299, column: 7)
!380 = !DILocation(line: 299, column: 7, scope: !334)
!381 = !DILocation(line: 301, column: 3, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !3, line: 299, column: 23)
!383 = !DILocation(line: 302, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !334, file: !3, line: 302, column: 7)
!385 = !DILocation(line: 302, column: 7, scope: !334)
!386 = !DILocation(line: 304, column: 3, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !3, line: 302, column: 24)
!388 = !DILocation(line: 305, column: 10, scope: !389)
!389 = distinct !DILexicalBlock(scope: !334, file: !3, line: 305, column: 7)
!390 = !DILocation(line: 305, column: 7, scope: !334)
!391 = !DILocation(line: 307, column: 3, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 305, column: 19)
!393 = !DILocation(line: 310, column: 3, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 310, column: 3)
!395 = distinct !DILexicalBlock(scope: !334, file: !3, line: 310, column: 3)
!396 = !{!293, !293, i64 0}
!397 = !DILocation(line: 310, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 310, column: 3)
!399 = !DILocation(line: 310, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 310, column: 3)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 310, column: 3)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 310, column: 3)
!403 = !{!291, !293, i64 28}
!404 = !DILocation(line: 310, column: 3, scope: !401)
!405 = !DILocation(line: 311, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 311, column: 3)
!407 = distinct !DILexicalBlock(scope: !334, file: !3, line: 311, column: 3)
!408 = !DILocation(line: 311, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !3, line: 311, column: 3)
!410 = !DILocation(line: 311, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 311, column: 3)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 311, column: 3)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 311, column: 3)
!414 = !{!291, !293, i64 52}
!415 = !DILocation(line: 311, column: 3, scope: !412)
!416 = !DILocation(line: 312, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 312, column: 3)
!418 = distinct !DILexicalBlock(scope: !334, file: !3, line: 312, column: 3)
!419 = !DILocation(line: 312, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !418, file: !3, line: 312, column: 3)
!421 = !DILocation(line: 312, column: 3, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 312, column: 3)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 312, column: 3)
!424 = distinct !DILexicalBlock(scope: !420, file: !3, line: 312, column: 3)
!425 = !{!291, !293, i64 76}
!426 = !DILocation(line: 312, column: 3, scope: !423)
!427 = !DILocation(line: 313, column: 10, scope: !334)
!428 = !DILocation(line: 313, column: 17, scope: !334)
!429 = !{!291, !292, i64 192}
!430 = !DILocation(line: 283, column: 8, scope: !334)
!431 = !DILocation(line: 316, column: 8, scope: !432)
!432 = distinct !DILexicalBlock(scope: !334, file: !3, line: 316, column: 3)
!433 = !DILocation(line: 316, column: 3, scope: !432)
!434 = !DILocation(line: 317, column: 5, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 317, column: 5)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 317, column: 5)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 316, column: 49)
!438 = distinct !DILexicalBlock(scope: !432, file: !3, line: 316, column: 3)
!439 = !DILocation(line: 317, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 317, column: 5)
!441 = !DILocation(line: 317, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 317, column: 5)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 317, column: 5)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 317, column: 5)
!445 = !{!295, !293, i64 20}
!446 = !DILocation(line: 317, column: 5, scope: !443)
!447 = !DILocation(line: 318, column: 5, scope: !437)
!448 = !DILocation(line: 318, column: 30, scope: !437)
!449 = !DILocation(line: 320, column: 5, scope: !437)
!450 = !DILocation(line: 320, column: 35, scope: !437)
!451 = !{!452, !452, i64 0}
!452 = !{!"int", !293, i64 0}
!453 = !DILocation(line: 321, column: 5, scope: !437)
!454 = !DILocation(line: 321, column: 34, scope: !437)
!455 = !DILocation(line: 316, column: 3, scope: !438)
!456 = !DILocation(line: 324, column: 10, scope: !334)
!457 = !DILocation(line: 324, column: 21, scope: !334)
!458 = !{!291, !292, i64 208}
!459 = !DILocation(line: 326, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !334, file: !3, line: 326, column: 3)
!461 = !{!291, !296, i64 248}
!462 = !DILocation(line: 327, column: 10, scope: !334)
!463 = !DILocation(line: 327, column: 14, scope: !334)
!464 = !{!291, !296, i64 250}
!465 = !DILocation(line: 328, column: 10, scope: !334)
!466 = !DILocation(line: 328, column: 16, scope: !334)
!467 = !DILocation(line: 330, column: 10, scope: !334)
!468 = !DILocation(line: 330, column: 3, scope: !334)
!469 = !DILocation(line: 335, column: 10, scope: !334)
!470 = !DILocation(line: 335, column: 33, scope: !334)
!471 = !{!291, !293, i64 265}
!472 = !DILocation(line: 337, column: 3, scope: !334)
!473 = !DILocation(line: 340, column: 10, scope: !334)
!474 = !DILocation(line: 340, column: 26, scope: !334)
!475 = !{!291, !292, i64 216}
!476 = !DILocation(line: 349, column: 10, scope: !334)
!477 = !DILocation(line: 349, column: 25, scope: !334)
!478 = !{!291, !292, i64 272}
!479 = !DILocation(line: 357, column: 10, scope: !334)
!480 = !DILocation(line: 357, column: 16, scope: !334)
!481 = !{!291, !292, i64 232}
!482 = !DILocation(line: 358, column: 16, scope: !334)
!483 = !DILocation(line: 358, column: 10, scope: !334)
!484 = !DILocation(line: 358, column: 14, scope: !334)
!485 = !{!291, !293, i64 264}
!486 = !DILocation(line: 359, column: 10, scope: !334)
!487 = !DILocation(line: 359, column: 16, scope: !334)
!488 = !{!291, !292, i64 184}
!489 = !DILocation(line: 367, column: 3, scope: !334)
!490 = !DILocation(line: 371, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !334, file: !3, line: 371, column: 7)
!492 = !DILocation(line: 371, column: 19, scope: !491)
!493 = !DILocation(line: 371, column: 7, scope: !334)
!494 = !DILocation(line: 377, column: 24, scope: !334)
!495 = !DILocation(line: 377, column: 10, scope: !334)
!496 = !DILocation(line: 377, column: 15, scope: !334)
!497 = !{!291, !296, i64 252}
!498 = !DILocation(line: 389, column: 5, scope: !347)
!499 = !DILocation(line: 390, column: 18, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 390, column: 11)
!501 = distinct !DILexicalBlock(scope: !347, file: !3, line: 389, column: 8)
!502 = !DILocation(line: 390, column: 22, scope: !500)
!503 = !DILocation(line: 390, column: 11, scope: !501)
!504 = !DILocation(line: 391, column: 20, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !3, line: 390, column: 30)
!506 = !DILocation(line: 392, column: 7, scope: !505)
!507 = !DILocation(line: 388, column: 9, scope: !347)
!508 = !DILocation(line: 387, column: 19, scope: !347)
!509 = !DILocation(line: 394, column: 12, scope: !510)
!510 = distinct !DILexicalBlock(scope: !501, file: !3, line: 394, column: 7)
!511 = !DILocation(line: 394, column: 7, scope: !510)
!512 = !DILocation(line: 395, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 395, column: 9)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 395, column: 9)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 394, column: 72)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 394, column: 7)
!517 = !DILocation(line: 395, column: 9, scope: !514)
!518 = !DILocation(line: 395, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 395, column: 9)
!520 = distinct !DILexicalBlock(scope: !513, file: !3, line: 395, column: 9)
!521 = !DILocation(line: 395, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 395, column: 9)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 395, column: 9)
!524 = distinct !DILexicalBlock(scope: !519, file: !3, line: 395, column: 9)
!525 = !DILocation(line: 396, column: 19, scope: !515)
!526 = !DILocation(line: 397, column: 9, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 397, column: 9)
!528 = distinct !DILexicalBlock(scope: !515, file: !3, line: 397, column: 9)
!529 = !DILocation(line: 397, column: 9, scope: !528)
!530 = !DILocation(line: 397, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 397, column: 9)
!532 = distinct !DILexicalBlock(scope: !527, file: !3, line: 397, column: 9)
!533 = !DILocation(line: 397, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 397, column: 9)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 397, column: 9)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 397, column: 9)
!537 = !DILocation(line: 398, column: 21, scope: !538)
!538 = distinct !DILexicalBlock(scope: !515, file: !3, line: 398, column: 13)
!539 = !DILocation(line: 398, column: 25, scope: !538)
!540 = !DILocation(line: 398, column: 13, scope: !515)
!541 = !DILocation(line: 399, column: 21, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !3, line: 398, column: 40)
!543 = !DILocation(line: 400, column: 11, scope: !542)
!544 = !DILocation(line: 403, column: 5, scope: !501)
!545 = !DILocation(line: 394, column: 66, scope: !516)
!546 = !{!291, !292, i64 0}
!547 = !DILocation(line: 394, column: 7, scope: !516)
!548 = !DILocation(line: 394, column: 40, scope: !516)
!549 = distinct !{!549, !511, !550}
!550 = !DILocation(line: 402, column: 7, scope: !510)
!551 = !DILocation(line: 405, column: 18, scope: !552)
!552 = distinct !DILexicalBlock(scope: !334, file: !3, line: 405, column: 7)
!553 = !DILocation(line: 405, column: 7, scope: !334)
!554 = !DILocation(line: 408, column: 35, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 407, column: 10)
!556 = !DILocation(line: 0, scope: !555)
!557 = !DILocation(line: 412, column: 15, scope: !334)
!558 = !DILocation(line: 413, column: 14, scope: !334)
!559 = !{!292, !292, i64 0}
!560 = !DILocalVariable(name: "netif", arg: 1, scope: !561, file: !3, line: 1784, type: !98)
!561 = distinct !DISubprogram(name: "netif_invoke_ext_callback", scope: !3, file: !3, line: 1784, type: !96, isLocal: false, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !562)
!562 = !{!560, !563, !564, !565}
!563 = !DILocalVariable(name: "reason", arg: 2, scope: !561, file: !3, line: 1784, type: !188)
!564 = !DILocalVariable(name: "args", arg: 3, scope: !561, file: !3, line: 1784, type: !189)
!565 = !DILocalVariable(name: "callback", scope: !561, file: !3, line: 1786, type: !89)
!566 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !567)
!567 = distinct !DILocation(line: 436, column: 3, scope: !334)
!568 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !567)
!569 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !567)
!570 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !567)
!571 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !567)
!572 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !567)
!573 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1788, column: 3)
!574 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !567)
!575 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !567)
!576 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !567)
!577 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1790, column: 28)
!578 = !{!579, !292, i64 0}
!579 = !{!"netif_ext_callback", !292, i64 0, !292, i64 8}
!580 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !567)
!581 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !567)
!582 = !{!579, !292, i64 8}
!583 = distinct !{!583, !584, !585}
!584 = !DILocation(line: 1790, column: 3, scope: !561)
!585 = !DILocation(line: 1793, column: 3, scope: !561)
!586 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !567)
!587 = !DILocation(line: 438, column: 3, scope: !334)
!588 = !DILocation(line: 0, scope: !334)
!589 = !DILocation(line: 0, scope: !590)
!590 = distinct !DILexicalBlock(scope: !491, file: !3, line: 371, column: 30)
!591 = !DILocation(line: 439, column: 1, scope: !334)
!592 = distinct !DISubprogram(name: "netif_null_output_ip4", scope: !3, file: !3, line: 1619, type: !143, isLocal: true, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!593 = !{!594, !595, !596}
!594 = !DILocalVariable(name: "netif", arg: 1, scope: !592, file: !3, line: 1619, type: !98)
!595 = !DILocalVariable(name: "p", arg: 2, scope: !592, file: !3, line: 1619, type: !124)
!596 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !592, file: !3, line: 1619, type: !57)
!597 = !DILocation(line: 1619, column: 37, scope: !592)
!598 = !DILocation(line: 1619, column: 57, scope: !592)
!599 = !DILocation(line: 1619, column: 78, scope: !592)
!600 = !DILocation(line: 1625, column: 3, scope: !592)
!601 = distinct !DISubprogram(name: "netif_null_output_ip6", scope: !3, file: !3, line: 1605, type: !153, isLocal: true, isDefinition: true, scopeLine: 1606, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !602)
!602 = !{!603, !604, !605}
!603 = !DILocalVariable(name: "netif", arg: 1, scope: !601, file: !3, line: 1605, type: !98)
!604 = !DILocalVariable(name: "p", arg: 2, scope: !601, file: !3, line: 1605, type: !124)
!605 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !601, file: !3, line: 1605, type: !84)
!606 = !DILocation(line: 1605, column: 37, scope: !601)
!607 = !DILocation(line: 1605, column: 57, scope: !601)
!608 = !DILocation(line: 1605, column: 78, scope: !601)
!609 = !DILocation(line: 1611, column: 3, scope: !601)
!610 = distinct !DISubprogram(name: "netif_set_addr", scope: !3, file: !3, line: 658, type: !611, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !98, !57, !57, !57}
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !624, !625, !626}
!614 = !DILocalVariable(name: "netif", arg: 1, scope: !610, file: !3, line: 658, type: !98)
!615 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !610, file: !3, line: 658, type: !57)
!616 = !DILocalVariable(name: "netmask", arg: 3, scope: !610, file: !3, line: 658, type: !57)
!617 = !DILocalVariable(name: "gw", arg: 4, scope: !610, file: !3, line: 659, type: !57)
!618 = !DILocalVariable(name: "change_reason", scope: !610, file: !3, line: 662, type: !188)
!619 = !DILocalVariable(name: "cb_args", scope: !610, file: !3, line: 663, type: !191)
!620 = !DILocalVariable(name: "old_nm_val", scope: !610, file: !3, line: 664, type: !66)
!621 = !DILocalVariable(name: "old_gw_val", scope: !610, file: !3, line: 665, type: !66)
!622 = !DILocalVariable(name: "old_nm", scope: !610, file: !3, line: 666, type: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!624 = !DILocalVariable(name: "old_gw", scope: !610, file: !3, line: 667, type: !623)
!625 = !DILocalVariable(name: "old_addr", scope: !610, file: !3, line: 672, type: !66)
!626 = !DILocalVariable(name: "remove", scope: !610, file: !3, line: 673, type: !26)
!627 = !DILocation(line: 658, column: 30, scope: !610)
!628 = !DILocation(line: 658, column: 55, scope: !610)
!629 = !DILocation(line: 658, column: 81, scope: !610)
!630 = !DILocation(line: 659, column: 34, scope: !610)
!631 = !DILocation(line: 662, column: 22, scope: !610)
!632 = !DILocation(line: 663, column: 3, scope: !610)
!633 = !DILocation(line: 664, column: 3, scope: !610)
!634 = !DILocation(line: 665, column: 3, scope: !610)
!635 = !DILocation(line: 666, column: 14, scope: !610)
!636 = !DILocation(line: 667, column: 14, scope: !610)
!637 = !DILocation(line: 672, column: 3, scope: !610)
!638 = !DILocation(line: 678, column: 14, scope: !639)
!639 = distinct !DILexicalBlock(scope: !610, file: !3, line: 678, column: 7)
!640 = !DILocation(line: 678, column: 7, scope: !610)
!641 = !DILocation(line: 680, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !3, line: 678, column: 23)
!643 = !DILocation(line: 681, column: 15, scope: !644)
!644 = distinct !DILexicalBlock(scope: !610, file: !3, line: 681, column: 7)
!645 = !DILocation(line: 681, column: 7, scope: !610)
!646 = !DILocation(line: 683, column: 3, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 681, column: 24)
!648 = !DILocation(line: 684, column: 10, scope: !649)
!649 = distinct !DILexicalBlock(scope: !610, file: !3, line: 684, column: 7)
!650 = !DILocation(line: 684, column: 7, scope: !610)
!651 = !DILocation(line: 686, column: 3, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !3, line: 684, column: 19)
!653 = !DILocation(line: 688, column: 12, scope: !610)
!654 = !DILocation(line: 689, column: 7, scope: !610)
!655 = !{!656, !452, i64 0}
!656 = !{!"ip4_addr", !452, i64 0}
!657 = !DILocation(line: 672, column: 13, scope: !610)
!658 = !DILocation(line: 692, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 692, column: 9)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 689, column: 15)
!661 = distinct !DILexicalBlock(scope: !610, file: !3, line: 689, column: 7)
!662 = !DILocation(line: 692, column: 9, scope: !660)
!663 = !DILocation(line: 695, column: 28, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 692, column: 56)
!665 = !DILocation(line: 695, column: 40, scope: !664)
!666 = !DILocation(line: 697, column: 5, scope: !664)
!667 = !DILocation(line: 0, scope: !610)
!668 = !DILocation(line: 664, column: 13, scope: !610)
!669 = !DILocalVariable(name: "netif", arg: 1, scope: !670, file: !3, line: 523, type: !98)
!670 = distinct !DISubprogram(name: "netif_do_set_netmask", scope: !3, file: !3, line: 523, type: !671, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{!26, !98, !57, !623}
!673 = !{!669, !674, !675}
!674 = !DILocalVariable(name: "netmask", arg: 2, scope: !670, file: !3, line: 523, type: !57)
!675 = !DILocalVariable(name: "old_nm", arg: 3, scope: !670, file: !3, line: 523, type: !623)
!676 = !DILocation(line: 523, column: 36, scope: !670, inlinedAt: !677)
!677 = distinct !DILocation(line: 699, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !610, file: !3, line: 699, column: 7)
!679 = !DILocation(line: 523, column: 61, scope: !670, inlinedAt: !677)
!680 = !DILocation(line: 523, column: 81, scope: !670, inlinedAt: !677)
!681 = !DILocation(line: 526, column: 7, scope: !682, inlinedAt: !677)
!682 = distinct !DILexicalBlock(scope: !670, file: !3, line: 526, column: 7)
!683 = !DILocation(line: 526, column: 7, scope: !670, inlinedAt: !677)
!684 = !DILocation(line: 0, scope: !678)
!685 = !DILocation(line: 529, column: 5, scope: !686, inlinedAt: !677)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 529, column: 5)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 529, column: 5)
!688 = distinct !DILexicalBlock(scope: !682, file: !3, line: 526, column: 61)
!689 = !DILocation(line: 529, column: 5, scope: !690, inlinedAt: !677)
!690 = distinct !DILexicalBlock(scope: !687, file: !3, line: 529, column: 5)
!691 = !DILocation(line: 529, column: 5, scope: !687, inlinedAt: !677)
!692 = !DILocation(line: 529, column: 5, scope: !693, inlinedAt: !677)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 529, column: 5)
!694 = distinct !DILexicalBlock(scope: !690, file: !3, line: 529, column: 5)
!695 = !DILocation(line: 529, column: 5, scope: !694, inlinedAt: !677)
!696 = !DILocation(line: 547, column: 1, scope: !670, inlinedAt: !677)
!697 = !DILocation(line: 699, column: 7, scope: !610)
!698 = !DILocation(line: 529, column: 5, scope: !699, inlinedAt: !677)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 529, column: 5)
!700 = distinct !DILexicalBlock(scope: !690, file: !3, line: 529, column: 5)
!701 = !DILocation(line: 535, column: 5, scope: !688, inlinedAt: !677)
!702 = !DILocation(line: 536, column: 5, scope: !703, inlinedAt: !677)
!703 = distinct !DILexicalBlock(scope: !688, file: !3, line: 536, column: 5)
!704 = !DILocation(line: 544, column: 5, scope: !688, inlinedAt: !677)
!705 = !DILocation(line: 701, column: 19, scope: !706)
!706 = distinct !DILexicalBlock(scope: !678, file: !3, line: 699, column: 53)
!707 = !DILocation(line: 702, column: 26, scope: !706)
!708 = !DILocation(line: 702, column: 38, scope: !706)
!709 = !DILocation(line: 704, column: 3, scope: !706)
!710 = !DILocation(line: 0, scope: !664)
!711 = !DILocation(line: 0, scope: !706)
!712 = !DILocation(line: 665, column: 13, scope: !610)
!713 = !DILocalVariable(name: "netif", arg: 1, scope: !714, file: !3, line: 587, type: !98)
!714 = distinct !DISubprogram(name: "netif_do_set_gw", scope: !3, file: !3, line: 587, type: !671, isLocal: true, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !715)
!715 = !{!713, !716, !717}
!716 = !DILocalVariable(name: "gw", arg: 2, scope: !714, file: !3, line: 587, type: !57)
!717 = !DILocalVariable(name: "old_gw", arg: 3, scope: !714, file: !3, line: 587, type: !623)
!718 = !DILocation(line: 587, column: 31, scope: !714, inlinedAt: !719)
!719 = distinct !DILocation(line: 705, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !610, file: !3, line: 705, column: 7)
!721 = !DILocation(line: 587, column: 56, scope: !714, inlinedAt: !719)
!722 = !DILocation(line: 587, column: 71, scope: !714, inlinedAt: !719)
!723 = !DILocation(line: 590, column: 7, scope: !724, inlinedAt: !719)
!724 = distinct !DILexicalBlock(scope: !714, file: !3, line: 590, column: 7)
!725 = !DILocation(line: 590, column: 7, scope: !714, inlinedAt: !719)
!726 = !DILocation(line: 0, scope: !720)
!727 = !DILocation(line: 593, column: 5, scope: !728, inlinedAt: !719)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 593, column: 5)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 593, column: 5)
!730 = distinct !DILexicalBlock(scope: !724, file: !3, line: 590, column: 51)
!731 = !DILocation(line: 593, column: 5, scope: !732, inlinedAt: !719)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 593, column: 5)
!733 = !DILocation(line: 593, column: 5, scope: !729, inlinedAt: !719)
!734 = !DILocation(line: 593, column: 5, scope: !735, inlinedAt: !719)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 593, column: 5)
!736 = distinct !DILexicalBlock(scope: !732, file: !3, line: 593, column: 5)
!737 = !DILocation(line: 593, column: 5, scope: !736, inlinedAt: !719)
!738 = !DILocation(line: 609, column: 1, scope: !714, inlinedAt: !719)
!739 = !DILocation(line: 705, column: 7, scope: !610)
!740 = !DILocation(line: 593, column: 5, scope: !741, inlinedAt: !719)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 593, column: 5)
!742 = distinct !DILexicalBlock(scope: !732, file: !3, line: 593, column: 5)
!743 = !DILocation(line: 598, column: 5, scope: !730, inlinedAt: !719)
!744 = !DILocation(line: 599, column: 5, scope: !745, inlinedAt: !719)
!745 = distinct !DILexicalBlock(scope: !730, file: !3, line: 599, column: 5)
!746 = !DILocation(line: 606, column: 5, scope: !730, inlinedAt: !719)
!747 = !DILocation(line: 707, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !720, file: !3, line: 705, column: 43)
!749 = !DILocation(line: 708, column: 26, scope: !748)
!750 = !DILocation(line: 708, column: 33, scope: !748)
!751 = !DILocation(line: 710, column: 3, scope: !748)
!752 = !DILocation(line: 0, scope: !748)
!753 = !DILocation(line: 711, column: 7, scope: !610)
!754 = !DILocation(line: 713, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 713, column: 9)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 711, column: 16)
!757 = distinct !DILexicalBlock(scope: !610, file: !3, line: 711, column: 7)
!758 = !DILocation(line: 713, column: 9, scope: !756)
!759 = !DILocation(line: 715, column: 21, scope: !760)
!760 = distinct !DILexicalBlock(scope: !755, file: !3, line: 713, column: 56)
!761 = !DILocation(line: 716, column: 28, scope: !760)
!762 = !DILocation(line: 716, column: 40, scope: !760)
!763 = !DILocation(line: 718, column: 5, scope: !760)
!764 = !DILocation(line: 722, column: 7, scope: !610)
!765 = !DILocation(line: 722, column: 21, scope: !766)
!766 = distinct !DILexicalBlock(scope: !610, file: !3, line: 722, column: 7)
!767 = !DILocation(line: 723, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !766, file: !3, line: 722, column: 39)
!769 = !DILocation(line: 663, column: 29, scope: !610)
!770 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !771)
!771 = distinct !DILocation(line: 724, column: 5, scope: !768)
!772 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !771)
!773 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !771)
!774 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !771)
!775 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !771)
!776 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !771)
!777 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !771)
!778 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !771)
!779 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !771)
!780 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !771)
!781 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !771)
!782 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !771)
!783 = !DILocation(line: 725, column: 3, scope: !768)
!784 = !DILocation(line: 727, column: 1, scope: !610)
!785 = !DILocation(line: 1784, column: 41, scope: !561)
!786 = !DILocation(line: 1784, column: 67, scope: !561)
!787 = !DILocation(line: 1784, column: 108, scope: !561)
!788 = !DILocation(line: 1786, column: 36, scope: !561)
!789 = !DILocation(line: 1786, column: 25, scope: !561)
!790 = !DILocation(line: 1788, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1788, column: 3)
!792 = !DILocation(line: 1788, column: 3, scope: !573)
!793 = !DILocation(line: 1790, column: 19, scope: !561)
!794 = !DILocation(line: 1788, column: 3, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 1788, column: 3)
!796 = distinct !DILexicalBlock(scope: !791, file: !3, line: 1788, column: 3)
!797 = !DILocation(line: 1788, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 1788, column: 3)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1788, column: 3)
!800 = distinct !DILexicalBlock(scope: !795, file: !3, line: 1788, column: 3)
!801 = !DILocation(line: 1791, column: 15, scope: !577)
!802 = !DILocation(line: 1791, column: 5, scope: !577)
!803 = !DILocation(line: 1792, column: 26, scope: !577)
!804 = !DILocation(line: 1794, column: 1, scope: !561)
!805 = distinct !DISubprogram(name: "netif_set_ipaddr", scope: !3, file: !3, line: 500, type: !806, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !98, !57}
!808 = !{!809, !810, !811, !812}
!809 = !DILocalVariable(name: "netif", arg: 1, scope: !805, file: !3, line: 500, type: !98)
!810 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !805, file: !3, line: 500, type: !57)
!811 = !DILocalVariable(name: "old_addr", scope: !805, file: !3, line: 502, type: !66)
!812 = !DILocalVariable(name: "args", scope: !813, file: !3, line: 515, type: !191)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 513, column: 54)
!814 = distinct !DILexicalBlock(scope: !805, file: !3, line: 513, column: 7)
!815 = !DILocation(line: 500, column: 32, scope: !805)
!816 = !DILocation(line: 500, column: 57, scope: !805)
!817 = !DILocation(line: 502, column: 3, scope: !805)
!818 = !DILocation(line: 504, column: 3, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 504, column: 3)
!820 = distinct !DILexicalBlock(scope: !805, file: !3, line: 504, column: 3)
!821 = !DILocation(line: 504, column: 3, scope: !820)
!822 = !DILocation(line: 504, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 504, column: 3)
!824 = distinct !DILexicalBlock(scope: !819, file: !3, line: 504, column: 3)
!825 = !DILocation(line: 504, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 504, column: 3)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 504, column: 3)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 504, column: 3)
!829 = !DILocation(line: 507, column: 14, scope: !830)
!830 = distinct !DILexicalBlock(scope: !805, file: !3, line: 507, column: 7)
!831 = !DILocation(line: 507, column: 7, scope: !805)
!832 = !DILocation(line: 509, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 507, column: 23)
!834 = !DILocation(line: 502, column: 13, scope: !805)
!835 = !DILocation(line: 513, column: 7, scope: !814)
!836 = !DILocation(line: 513, column: 7, scope: !805)
!837 = !DILocation(line: 515, column: 5, scope: !813)
!838 = !DILocation(line: 516, column: 23, scope: !813)
!839 = !DILocation(line: 516, column: 35, scope: !813)
!840 = !DILocation(line: 515, column: 31, scope: !813)
!841 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !842)
!842 = distinct !DILocation(line: 517, column: 5, scope: !813)
!843 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !842)
!844 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !842)
!845 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !842)
!846 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !842)
!847 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !842)
!848 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !842)
!849 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !842)
!850 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !842)
!851 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !842)
!852 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !842)
!853 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !842)
!854 = !DILocation(line: 519, column: 3, scope: !814)
!855 = !DILocation(line: 519, column: 3, scope: !813)
!856 = !DILocation(line: 520, column: 1, scope: !805)
!857 = distinct !DISubprogram(name: "netif_do_set_ipaddr", scope: !3, file: !3, line: 457, type: !671, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !858)
!858 = !{!859, !860, !861, !862}
!859 = !DILocalVariable(name: "netif", arg: 1, scope: !857, file: !3, line: 457, type: !98)
!860 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !857, file: !3, line: 457, type: !57)
!861 = !DILocalVariable(name: "old_addr", arg: 3, scope: !857, file: !3, line: 457, type: !623)
!862 = !DILocalVariable(name: "new_addr", scope: !863, file: !3, line: 464, type: !66)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 463, column: 57)
!864 = distinct !DILexicalBlock(scope: !857, file: !3, line: 463, column: 7)
!865 = !DILocation(line: 457, column: 35, scope: !857)
!866 = !DILocation(line: 457, column: 60, scope: !857)
!867 = !DILocation(line: 457, column: 79, scope: !857)
!868 = !DILocation(line: 459, column: 3, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 459, column: 3)
!870 = distinct !DILexicalBlock(scope: !857, file: !3, line: 459, column: 3)
!871 = !DILocation(line: 459, column: 3, scope: !870)
!872 = !DILocation(line: 459, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 459, column: 3)
!874 = distinct !DILexicalBlock(scope: !869, file: !3, line: 459, column: 3)
!875 = !DILocation(line: 459, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 459, column: 3)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 459, column: 3)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 459, column: 3)
!879 = !DILocation(line: 460, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 460, column: 3)
!881 = distinct !DILexicalBlock(scope: !857, file: !3, line: 460, column: 3)
!882 = !DILocation(line: 460, column: 3, scope: !881)
!883 = !DILocation(line: 460, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 460, column: 3)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 460, column: 3)
!886 = !DILocation(line: 460, column: 3, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 460, column: 3)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 460, column: 3)
!889 = distinct !DILexicalBlock(scope: !884, file: !3, line: 460, column: 3)
!890 = !DILocation(line: 463, column: 7, scope: !864)
!891 = !DILocation(line: 463, column: 7, scope: !857)
!892 = !DILocation(line: 464, column: 5, scope: !863)
!893 = !DILocation(line: 465, column: 28, scope: !863)
!894 = !DILocation(line: 466, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !863, file: !3, line: 466, column: 5)
!896 = !DILocation(line: 468, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 468, column: 5)
!898 = distinct !DILexicalBlock(scope: !863, file: !3, line: 468, column: 5)
!899 = !DILocation(line: 468, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !3, line: 468, column: 5)
!901 = !DILocation(line: 468, column: 5, scope: !898)
!902 = !DILocation(line: 468, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 468, column: 5)
!904 = distinct !DILexicalBlock(scope: !900, file: !3, line: 468, column: 5)
!905 = !DILocation(line: 468, column: 5, scope: !904)
!906 = !DILocation(line: 468, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 468, column: 5)
!908 = distinct !DILexicalBlock(scope: !900, file: !3, line: 468, column: 5)
!909 = !DILocation(line: 464, column: 15, scope: !863)
!910 = !DILocalVariable(name: "old_addr", arg: 1, scope: !911, file: !3, line: 442, type: !64)
!911 = distinct !DISubprogram(name: "netif_do_ip_addr_changed", scope: !3, file: !3, line: 442, type: !912, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !64, !64}
!914 = !{!910, !915}
!915 = !DILocalVariable(name: "new_addr", arg: 2, scope: !911, file: !3, line: 442, type: !64)
!916 = !DILocation(line: 442, column: 43, scope: !911, inlinedAt: !917)
!917 = distinct !DILocation(line: 471, column: 5, scope: !863)
!918 = !DILocation(line: 442, column: 70, scope: !911, inlinedAt: !917)
!919 = !DILocation(line: 445, column: 3, scope: !911, inlinedAt: !917)
!920 = !DILocation(line: 448, column: 3, scope: !911, inlinedAt: !917)
!921 = !DILocation(line: 453, column: 1, scope: !911, inlinedAt: !917)
!922 = !DILocation(line: 476, column: 5, scope: !863)
!923 = !DILocation(line: 477, column: 5, scope: !924)
!924 = distinct !DILexicalBlock(scope: !863, file: !3, line: 477, column: 5)
!925 = !DILocation(line: 481, column: 5, scope: !863)
!926 = !DILocation(line: 483, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 483, column: 5)
!928 = distinct !DILexicalBlock(scope: !863, file: !3, line: 483, column: 5)
!929 = !DILocation(line: 483, column: 5, scope: !928)
!930 = !DILocation(line: 483, column: 5, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !3, line: 483, column: 5)
!932 = !DILocation(line: 485, column: 3, scope: !864)
!933 = !DILocation(line: 0, scope: !857)
!934 = !DILocation(line: 487, column: 1, scope: !857)
!935 = distinct !DISubprogram(name: "netif_set_netmask", scope: !3, file: !3, line: 560, type: !806, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !936)
!936 = !{!937, !938, !939, !940, !941}
!937 = !DILocalVariable(name: "netif", arg: 1, scope: !935, file: !3, line: 560, type: !98)
!938 = !DILocalVariable(name: "netmask", arg: 2, scope: !935, file: !3, line: 560, type: !57)
!939 = !DILocalVariable(name: "old_nm_val", scope: !935, file: !3, line: 563, type: !66)
!940 = !DILocalVariable(name: "old_nm", scope: !935, file: !3, line: 564, type: !623)
!941 = !DILocalVariable(name: "args", scope: !942, file: !3, line: 579, type: !191)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 577, column: 53)
!943 = distinct !DILexicalBlock(scope: !935, file: !3, line: 577, column: 7)
!944 = !DILocation(line: 560, column: 33, scope: !935)
!945 = !DILocation(line: 560, column: 58, scope: !935)
!946 = !DILocation(line: 563, column: 3, scope: !935)
!947 = !DILocation(line: 564, column: 14, scope: !935)
!948 = !DILocation(line: 570, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 570, column: 3)
!950 = distinct !DILexicalBlock(scope: !935, file: !3, line: 570, column: 3)
!951 = !DILocation(line: 570, column: 3, scope: !950)
!952 = !DILocation(line: 570, column: 3, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 570, column: 3)
!954 = distinct !DILexicalBlock(scope: !949, file: !3, line: 570, column: 3)
!955 = !DILocation(line: 570, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 570, column: 3)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 570, column: 3)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 570, column: 3)
!959 = !DILocation(line: 573, column: 15, scope: !960)
!960 = distinct !DILexicalBlock(scope: !935, file: !3, line: 573, column: 7)
!961 = !DILocation(line: 573, column: 7, scope: !935)
!962 = !DILocation(line: 575, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 573, column: 24)
!964 = !DILocation(line: 563, column: 13, scope: !935)
!965 = !DILocation(line: 523, column: 36, scope: !670, inlinedAt: !966)
!966 = distinct !DILocation(line: 577, column: 7, scope: !943)
!967 = !DILocation(line: 523, column: 61, scope: !670, inlinedAt: !966)
!968 = !DILocation(line: 523, column: 81, scope: !670, inlinedAt: !966)
!969 = !DILocation(line: 526, column: 7, scope: !682, inlinedAt: !966)
!970 = !DILocation(line: 526, column: 7, scope: !670, inlinedAt: !966)
!971 = !DILocation(line: 0, scope: !943)
!972 = !DILocation(line: 529, column: 5, scope: !686, inlinedAt: !966)
!973 = !DILocation(line: 529, column: 5, scope: !690, inlinedAt: !966)
!974 = !DILocation(line: 529, column: 5, scope: !687, inlinedAt: !966)
!975 = !DILocation(line: 529, column: 5, scope: !693, inlinedAt: !966)
!976 = !DILocation(line: 529, column: 5, scope: !694, inlinedAt: !966)
!977 = !DILocation(line: 547, column: 1, scope: !670, inlinedAt: !966)
!978 = !DILocation(line: 577, column: 7, scope: !935)
!979 = !DILocation(line: 535, column: 5, scope: !688, inlinedAt: !966)
!980 = !DILocation(line: 536, column: 5, scope: !703, inlinedAt: !966)
!981 = !DILocation(line: 544, column: 5, scope: !688, inlinedAt: !966)
!982 = !DILocation(line: 579, column: 5, scope: !942)
!983 = !DILocation(line: 580, column: 23, scope: !942)
!984 = !DILocation(line: 580, column: 35, scope: !942)
!985 = !DILocation(line: 579, column: 31, scope: !942)
!986 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !987)
!987 = distinct !DILocation(line: 581, column: 5, scope: !942)
!988 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !987)
!989 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !987)
!990 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !987)
!991 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !987)
!992 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !987)
!993 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !987)
!994 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !987)
!995 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !987)
!996 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !987)
!997 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !987)
!998 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !987)
!999 = !DILocation(line: 583, column: 3, scope: !943)
!1000 = !DILocation(line: 583, column: 3, scope: !942)
!1001 = !DILocation(line: 0, scope: !942)
!1002 = !DILocation(line: 584, column: 1, scope: !935)
!1003 = distinct !DISubprogram(name: "netif_set_gw", scope: !3, file: !3, line: 621, type: !806, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DILocalVariable(name: "netif", arg: 1, scope: !1003, file: !3, line: 621, type: !98)
!1006 = !DILocalVariable(name: "gw", arg: 2, scope: !1003, file: !3, line: 621, type: !57)
!1007 = !DILocalVariable(name: "old_gw_val", scope: !1003, file: !3, line: 624, type: !66)
!1008 = !DILocalVariable(name: "old_gw", scope: !1003, file: !3, line: 625, type: !623)
!1009 = !DILocalVariable(name: "args", scope: !1010, file: !3, line: 640, type: !191)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 638, column: 43)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 638, column: 7)
!1012 = !DILocation(line: 621, column: 28, scope: !1003)
!1013 = !DILocation(line: 621, column: 53, scope: !1003)
!1014 = !DILocation(line: 624, column: 3, scope: !1003)
!1015 = !DILocation(line: 625, column: 14, scope: !1003)
!1016 = !DILocation(line: 631, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 631, column: 3)
!1018 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 631, column: 3)
!1019 = !DILocation(line: 631, column: 3, scope: !1018)
!1020 = !DILocation(line: 631, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 631, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 631, column: 3)
!1023 = !DILocation(line: 631, column: 3, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 631, column: 3)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 631, column: 3)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 631, column: 3)
!1027 = !DILocation(line: 634, column: 10, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 634, column: 7)
!1029 = !DILocation(line: 634, column: 7, scope: !1003)
!1030 = !DILocation(line: 636, column: 3, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 634, column: 19)
!1032 = !DILocation(line: 624, column: 13, scope: !1003)
!1033 = !DILocation(line: 587, column: 31, scope: !714, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 638, column: 7, scope: !1011)
!1035 = !DILocation(line: 587, column: 56, scope: !714, inlinedAt: !1034)
!1036 = !DILocation(line: 587, column: 71, scope: !714, inlinedAt: !1034)
!1037 = !DILocation(line: 590, column: 7, scope: !724, inlinedAt: !1034)
!1038 = !DILocation(line: 590, column: 7, scope: !714, inlinedAt: !1034)
!1039 = !DILocation(line: 0, scope: !1011)
!1040 = !DILocation(line: 593, column: 5, scope: !728, inlinedAt: !1034)
!1041 = !DILocation(line: 593, column: 5, scope: !732, inlinedAt: !1034)
!1042 = !DILocation(line: 593, column: 5, scope: !729, inlinedAt: !1034)
!1043 = !DILocation(line: 593, column: 5, scope: !735, inlinedAt: !1034)
!1044 = !DILocation(line: 593, column: 5, scope: !736, inlinedAt: !1034)
!1045 = !DILocation(line: 609, column: 1, scope: !714, inlinedAt: !1034)
!1046 = !DILocation(line: 638, column: 7, scope: !1003)
!1047 = !DILocation(line: 598, column: 5, scope: !730, inlinedAt: !1034)
!1048 = !DILocation(line: 599, column: 5, scope: !745, inlinedAt: !1034)
!1049 = !DILocation(line: 606, column: 5, scope: !730, inlinedAt: !1034)
!1050 = !DILocation(line: 640, column: 5, scope: !1010)
!1051 = !DILocation(line: 641, column: 23, scope: !1010)
!1052 = !DILocation(line: 641, column: 30, scope: !1010)
!1053 = !DILocation(line: 640, column: 31, scope: !1010)
!1054 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 642, column: 5, scope: !1010)
!1056 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1055)
!1057 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1055)
!1058 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1055)
!1059 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1055)
!1060 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1055)
!1061 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1055)
!1062 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1055)
!1063 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1055)
!1064 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1055)
!1065 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1055)
!1066 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1055)
!1067 = !DILocation(line: 644, column: 3, scope: !1011)
!1068 = !DILocation(line: 644, column: 3, scope: !1010)
!1069 = !DILocation(line: 0, scope: !1010)
!1070 = !DILocation(line: 645, column: 1, scope: !1003)
!1071 = distinct !DISubprogram(name: "netif_remove", scope: !3, file: !3, line: 737, type: !158, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DILocalVariable(name: "netif", arg: 1, scope: !1071, file: !3, line: 737, type: !98)
!1074 = !DILocalVariable(name: "i", scope: !1071, file: !3, line: 740, type: !26)
!1075 = !DILocalVariable(name: "tmp_netif", scope: !1076, file: !3, line: 793, type: !98)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 791, column: 10)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 789, column: 7)
!1078 = !DILocation(line: 737, column: 28, scope: !1071)
!1079 = !DILocation(line: 745, column: 13, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 745, column: 7)
!1081 = !DILocation(line: 745, column: 7, scope: !1071)
!1082 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 749, column: 3, scope: !1071)
!1084 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1083)
!1085 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1083)
!1086 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1083)
!1087 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1083)
!1088 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1083)
!1089 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1083)
!1090 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1083)
!1091 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1083)
!1092 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1083)
!1093 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1083)
!1094 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1083)
!1095 = !DILocation(line: 752, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 752, column: 7)
!1097 = !DILocation(line: 752, column: 7, scope: !1071)
!1098 = !DILocation(line: 442, column: 43, scope: !911, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 753, column: 5, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 752, column: 52)
!1101 = !DILocation(line: 442, column: 70, scope: !911, inlinedAt: !1099)
!1102 = !DILocation(line: 445, column: 3, scope: !911, inlinedAt: !1099)
!1103 = !DILocation(line: 448, column: 3, scope: !911, inlinedAt: !1099)
!1104 = !DILocation(line: 453, column: 1, scope: !911, inlinedAt: !1099)
!1105 = !DILocation(line: 754, column: 3, scope: !1100)
!1106 = !DILocation(line: 740, column: 7, scope: !1071)
!1107 = !DILocation(line: 765, column: 8, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 765, column: 3)
!1109 = !DILocation(line: 765, column: 3, scope: !1108)
!1110 = !DILocation(line: 766, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 766, column: 9)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 765, column: 49)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 765, column: 3)
!1114 = !DILocation(line: 766, column: 9, scope: !1112)
!1115 = !DILocation(line: 767, column: 32, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 766, column: 59)
!1117 = !DILocation(line: 442, column: 43, scope: !911, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 767, column: 7, scope: !1116)
!1119 = !DILocation(line: 442, column: 70, scope: !911, inlinedAt: !1118)
!1120 = !DILocation(line: 445, column: 3, scope: !911, inlinedAt: !1118)
!1121 = !DILocation(line: 448, column: 3, scope: !911, inlinedAt: !1118)
!1122 = !DILocation(line: 453, column: 1, scope: !911, inlinedAt: !1118)
!1123 = !DILocation(line: 768, column: 5, scope: !1116)
!1124 = !DILocation(line: 765, column: 3, scope: !1113)
!1125 = !DILocation(line: 777, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 775, column: 27)
!1127 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 775, column: 7)
!1128 = !DILocation(line: 778, column: 3, scope: !1126)
!1129 = !DILocation(line: 783, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 783, column: 7)
!1131 = !DILocation(line: 783, column: 21, scope: !1130)
!1132 = !DILocation(line: 783, column: 7, scope: !1071)
!1133 = !DILocalVariable(name: "netif", arg: 1, scope: !1134, file: !3, line: 822, type: !98)
!1134 = distinct !DISubprogram(name: "netif_set_default", scope: !3, file: !3, line: 822, type: !158, isLocal: false, isDefinition: true, scopeLine: 823, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1135)
!1135 = !{!1133}
!1136 = !DILocation(line: 822, column: 33, scope: !1134, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 785, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 783, column: 31)
!1139 = !DILocation(line: 833, column: 17, scope: !1134, inlinedAt: !1137)
!1140 = !DILocation(line: 836, column: 1, scope: !1134, inlinedAt: !1137)
!1141 = !DILocation(line: 786, column: 3, scope: !1138)
!1142 = !DILocation(line: 789, column: 7, scope: !1077)
!1143 = !DILocation(line: 789, column: 18, scope: !1077)
!1144 = !DILocation(line: 789, column: 7, scope: !1071)
!1145 = !DILocation(line: 790, column: 25, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 789, column: 28)
!1147 = !DILocation(line: 790, column: 16, scope: !1146)
!1148 = !DILocation(line: 791, column: 3, scope: !1146)
!1149 = !DILocation(line: 793, column: 19, scope: !1076)
!1150 = !DILocation(line: 794, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 794, column: 5)
!1152 = !DILocation(line: 794, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 794, column: 5)
!1154 = !DILocation(line: 795, column: 22, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 795, column: 11)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 794, column: 30)
!1157 = !DILocation(line: 795, column: 27, scope: !1155)
!1158 = !DILocation(line: 795, column: 11, scope: !1156)
!1159 = !DILocation(line: 796, column: 34, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 795, column: 37)
!1161 = !DILocation(line: 796, column: 25, scope: !1160)
!1162 = !DILocation(line: 797, column: 9, scope: !1160)
!1163 = !DILocation(line: 800, column: 9, scope: !1076)
!1164 = !DILocation(line: 0, scope: !1077)
!1165 = distinct !{!1165, !1150, !1166}
!1166 = !DILocation(line: 799, column: 5, scope: !1151)
!1167 = !DILocation(line: 807, column: 14, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 807, column: 7)
!1169 = !{!291, !292, i64 224}
!1170 = !DILocation(line: 807, column: 7, scope: !1168)
!1171 = !DILocation(line: 807, column: 7, scope: !1071)
!1172 = !DILocation(line: 808, column: 5, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 807, column: 31)
!1174 = !DILocation(line: 809, column: 3, scope: !1173)
!1175 = !DILocation(line: 812, column: 1, scope: !1071)
!1176 = !DILocation(line: 772, column: 3, scope: !1071)
!1177 = !DILocation(line: 775, column: 7, scope: !1127)
!1178 = !DILocation(line: 775, column: 7, scope: !1071)
!1179 = distinct !DISubprogram(name: "netif_set_down", scope: !3, file: !3, line: 919, type: !158, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1180)
!1180 = !{!1181, !1182}
!1181 = !DILocalVariable(name: "netif", arg: 1, scope: !1179, file: !3, line: 919, type: !98)
!1182 = !DILocalVariable(name: "args", scope: !1183, file: !3, line: 928, type: !191)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 927, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 925, column: 37)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 925, column: 7)
!1186 = !DILocation(line: 919, column: 30, scope: !1179)
!1187 = !DILocation(line: 923, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 923, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 923, column: 3)
!1190 = !DILocation(line: 923, column: 3, scope: !1189)
!1191 = !DILocation(line: 923, column: 3, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 923, column: 3)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 923, column: 3)
!1194 = !DILocation(line: 923, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 923, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 923, column: 3)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 923, column: 3)
!1198 = !DILocation(line: 925, column: 14, scope: !1185)
!1199 = !DILocation(line: 925, column: 20, scope: !1185)
!1200 = !DILocation(line: 925, column: 7, scope: !1179)
!1201 = !DILocation(line: 928, column: 7, scope: !1183)
!1202 = !DILocation(line: 929, column: 33, scope: !1183)
!1203 = !DILocation(line: 928, column: 33, scope: !1183)
!1204 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 930, column: 7, scope: !1183)
!1206 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1205)
!1207 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1205)
!1208 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1205)
!1209 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1205)
!1210 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1205)
!1211 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1205)
!1212 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1205)
!1213 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1205)
!1214 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1205)
!1215 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1205)
!1216 = !DILocation(line: 934, column: 5, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 934, column: 5)
!1218 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1205)
!1219 = !DILocation(line: 931, column: 5, scope: !1184)
!1220 = !DILocation(line: 938, column: 22, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 938, column: 9)
!1222 = !DILocation(line: 938, column: 9, scope: !1184)
!1223 = !DILocation(line: 939, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 938, column: 43)
!1225 = !DILocation(line: 940, column: 5, scope: !1224)
!1226 = !DILocation(line: 944, column: 5, scope: !1184)
!1227 = !DILocation(line: 947, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 947, column: 5)
!1229 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 947, column: 5)
!1230 = !DILocation(line: 947, column: 5, scope: !1229)
!1231 = !DILocation(line: 947, column: 5, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 947, column: 5)
!1233 = !DILocation(line: 949, column: 1, scope: !1179)
!1234 = !DILocation(line: 822, column: 33, scope: !1134)
!1235 = !DILocation(line: 833, column: 17, scope: !1134)
!1236 = !DILocation(line: 836, column: 1, scope: !1134)
!1237 = distinct !DISubprogram(name: "netif_set_up", scope: !3, file: !3, line: 844, type: !158, isLocal: false, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1238)
!1238 = !{!1239, !1240}
!1239 = !DILocalVariable(name: "netif", arg: 1, scope: !1237, file: !3, line: 844, type: !98)
!1240 = !DILocalVariable(name: "args", scope: !1241, file: !3, line: 859, type: !191)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 858, column: 5)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 850, column: 40)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 850, column: 7)
!1244 = !DILocation(line: 844, column: 28, scope: !1237)
!1245 = !DILocation(line: 848, column: 3, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 848, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 848, column: 3)
!1248 = !DILocation(line: 848, column: 3, scope: !1247)
!1249 = !DILocation(line: 848, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 848, column: 3)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 848, column: 3)
!1252 = !DILocation(line: 848, column: 3, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 848, column: 3)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 848, column: 3)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 848, column: 3)
!1256 = !DILocation(line: 850, column: 16, scope: !1243)
!1257 = !DILocation(line: 850, column: 22, scope: !1243)
!1258 = !DILocation(line: 850, column: 7, scope: !1237)
!1259 = !DILocation(line: 851, column: 5, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 851, column: 5)
!1261 = !DILocation(line: 855, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 855, column: 5)
!1263 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 855, column: 5)
!1264 = !DILocation(line: 855, column: 5, scope: !1263)
!1265 = !DILocation(line: 855, column: 5, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 855, column: 5)
!1267 = !DILocation(line: 859, column: 7, scope: !1241)
!1268 = !DILocation(line: 860, column: 33, scope: !1241)
!1269 = !DILocation(line: 859, column: 33, scope: !1241)
!1270 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 861, column: 7, scope: !1241)
!1272 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1271)
!1273 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1271)
!1274 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1271)
!1275 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1271)
!1276 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1271)
!1277 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1271)
!1278 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1271)
!1279 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1271)
!1280 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1271)
!1281 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1271)
!1282 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1271)
!1283 = !DILocation(line: 862, column: 5, scope: !1242)
!1284 = !DILocalVariable(name: "netif", arg: 1, scope: !1285, file: !3, line: 875, type: !98)
!1285 = distinct !DISubprogram(name: "netif_issue_reports", scope: !3, file: !3, line: 875, type: !1286, isLocal: true, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !98, !47}
!1288 = !{!1284, !1289}
!1289 = !DILocalVariable(name: "report_type", arg: 2, scope: !1285, file: !3, line: 875, type: !47)
!1290 = !DILocation(line: 875, column: 35, scope: !1285, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 865, column: 5, scope: !1242)
!1292 = !DILocation(line: 875, column: 47, scope: !1285, inlinedAt: !1291)
!1293 = !DILocation(line: 877, column: 3, scope: !1294, inlinedAt: !1291)
!1294 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 877, column: 3)
!1295 = !DILocation(line: 880, column: 16, scope: !1296, inlinedAt: !1291)
!1296 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 880, column: 7)
!1297 = !DILocation(line: 880, column: 9, scope: !1296, inlinedAt: !1291)
!1298 = !DILocation(line: 880, column: 22, scope: !1296, inlinedAt: !1291)
!1299 = !DILocation(line: 880, column: 44, scope: !1296, inlinedAt: !1291)
!1300 = !DILocation(line: 881, column: 22, scope: !1296, inlinedAt: !1291)
!1301 = !DILocation(line: 880, column: 7, scope: !1285, inlinedAt: !1291)
!1302 = !DILocation(line: 886, column: 46, scope: !1303, inlinedAt: !1291)
!1303 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 886, column: 7)
!1304 = !DILocation(line: 887, column: 8, scope: !1303, inlinedAt: !1291)
!1305 = !DILocation(line: 886, column: 7, scope: !1285, inlinedAt: !1291)
!1306 = !DILocation(line: 890, column: 22, scope: !1307, inlinedAt: !1291)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 890, column: 9)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 887, column: 52)
!1309 = !DILocation(line: 890, column: 9, scope: !1308, inlinedAt: !1291)
!1310 = !DILocation(line: 891, column: 7, scope: !1311, inlinedAt: !1291)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 890, column: 45)
!1312 = !DILocation(line: 892, column: 5, scope: !1311, inlinedAt: !1291)
!1313 = !DILocation(line: 905, column: 7, scope: !1285, inlinedAt: !1291)
!1314 = !DILocation(line: 908, column: 5, scope: !1315, inlinedAt: !1291)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 905, column: 45)
!1316 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 905, column: 7)
!1317 = !DILocation(line: 910, column: 3, scope: !1315, inlinedAt: !1291)
!1318 = !DILocation(line: 912, column: 1, scope: !1285, inlinedAt: !1291)
!1319 = !DILocation(line: 867, column: 5, scope: !1242)
!1320 = !DILocation(line: 869, column: 3, scope: !1242)
!1321 = !DILocation(line: 870, column: 1, scope: !1237)
!1322 = !DILocation(line: 875, column: 35, scope: !1285)
!1323 = !DILocation(line: 875, column: 47, scope: !1285)
!1324 = !DILocation(line: 877, column: 3, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 877, column: 3)
!1326 = !DILocation(line: 877, column: 3, scope: !1294)
!1327 = !DILocation(line: 877, column: 3, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 877, column: 3)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 877, column: 3)
!1330 = !DILocation(line: 877, column: 3, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 877, column: 3)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 877, column: 3)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 877, column: 3)
!1334 = !DILocation(line: 880, column: 16, scope: !1296)
!1335 = !DILocation(line: 880, column: 9, scope: !1296)
!1336 = !DILocation(line: 880, column: 22, scope: !1296)
!1337 = !DILocation(line: 880, column: 44, scope: !1296)
!1338 = !DILocation(line: 881, column: 22, scope: !1296)
!1339 = !DILocation(line: 880, column: 7, scope: !1285)
!1340 = !DILocation(line: 886, column: 8, scope: !1303)
!1341 = !DILocation(line: 886, column: 20, scope: !1303)
!1342 = !DILocation(line: 886, column: 46, scope: !1303)
!1343 = !DILocation(line: 887, column: 8, scope: !1303)
!1344 = !DILocation(line: 886, column: 7, scope: !1285)
!1345 = !DILocation(line: 890, column: 22, scope: !1307)
!1346 = !DILocation(line: 890, column: 9, scope: !1308)
!1347 = !DILocation(line: 891, column: 7, scope: !1311)
!1348 = !DILocation(line: 892, column: 5, scope: !1311)
!1349 = !DILocation(line: 905, column: 19, scope: !1316)
!1350 = !DILocation(line: 905, column: 7, scope: !1285)
!1351 = !DILocation(line: 908, column: 5, scope: !1315)
!1352 = !DILocation(line: 910, column: 3, scope: !1315)
!1353 = !DILocation(line: 912, column: 1, scope: !1285)
!1354 = distinct !DISubprogram(name: "netif_set_status_callback", scope: !3, file: !3, line: 957, type: !1355, isLocal: false, isDefinition: true, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !98, !156}
!1357 = !{!1358, !1359}
!1358 = !DILocalVariable(name: "netif", arg: 1, scope: !1354, file: !3, line: 957, type: !98)
!1359 = !DILocalVariable(name: "status_callback", arg: 2, scope: !1354, file: !3, line: 957, type: !156)
!1360 = !DILocation(line: 957, column: 41, scope: !1354)
!1361 = !DILocation(line: 957, column: 73, scope: !1354)
!1362 = !DILocation(line: 961, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 961, column: 7)
!1364 = !DILocation(line: 961, column: 7, scope: !1354)
!1365 = !DILocation(line: 962, column: 12, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 961, column: 14)
!1367 = !DILocation(line: 962, column: 28, scope: !1366)
!1368 = !DILocation(line: 963, column: 3, scope: !1366)
!1369 = !DILocation(line: 964, column: 1, scope: !1354)
!1370 = distinct !DISubprogram(name: "netif_set_remove_callback", scope: !3, file: !3, line: 973, type: !1355, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1371)
!1371 = !{!1372, !1373}
!1372 = !DILocalVariable(name: "netif", arg: 1, scope: !1370, file: !3, line: 973, type: !98)
!1373 = !DILocalVariable(name: "remove_callback", arg: 2, scope: !1370, file: !3, line: 973, type: !156)
!1374 = !DILocation(line: 973, column: 41, scope: !1370)
!1375 = !DILocation(line: 973, column: 73, scope: !1370)
!1376 = !DILocation(line: 977, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 977, column: 7)
!1378 = !DILocation(line: 977, column: 7, scope: !1370)
!1379 = !DILocation(line: 978, column: 12, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 977, column: 14)
!1381 = !DILocation(line: 978, column: 28, scope: !1380)
!1382 = !DILocation(line: 979, column: 3, scope: !1380)
!1383 = !DILocation(line: 980, column: 1, scope: !1370)
!1384 = distinct !DISubprogram(name: "netif_set_link_up", scope: !3, file: !3, line: 988, type: !158, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1385)
!1385 = !{!1386, !1387}
!1386 = !DILocalVariable(name: "netif", arg: 1, scope: !1384, file: !3, line: 988, type: !98)
!1387 = !DILocalVariable(name: "args", scope: !1388, file: !3, line: 1013, type: !191)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1012, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 994, column: 45)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 994, column: 7)
!1391 = !DILocation(line: 988, column: 33, scope: !1384)
!1392 = !DILocation(line: 992, column: 3, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 992, column: 3)
!1394 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 992, column: 3)
!1395 = !DILocation(line: 992, column: 3, scope: !1394)
!1396 = !DILocation(line: 992, column: 3, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 992, column: 3)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 992, column: 3)
!1399 = !DILocation(line: 992, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 992, column: 3)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 992, column: 3)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 992, column: 3)
!1403 = !DILocation(line: 994, column: 16, scope: !1390)
!1404 = !DILocation(line: 994, column: 22, scope: !1390)
!1405 = !DILocation(line: 994, column: 7, scope: !1384)
!1406 = !DILocation(line: 995, column: 5, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 995, column: 5)
!1408 = !DILocation(line: 875, column: 35, scope: !1285, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 1005, column: 5, scope: !1389)
!1410 = !DILocation(line: 875, column: 47, scope: !1285, inlinedAt: !1409)
!1411 = !DILocation(line: 877, column: 3, scope: !1294, inlinedAt: !1409)
!1412 = !DILocation(line: 880, column: 9, scope: !1296, inlinedAt: !1409)
!1413 = !DILocation(line: 880, column: 44, scope: !1296, inlinedAt: !1409)
!1414 = !DILocation(line: 881, column: 22, scope: !1296, inlinedAt: !1409)
!1415 = !DILocation(line: 880, column: 7, scope: !1285, inlinedAt: !1409)
!1416 = !DILocation(line: 886, column: 46, scope: !1303, inlinedAt: !1409)
!1417 = !DILocation(line: 887, column: 8, scope: !1303, inlinedAt: !1409)
!1418 = !DILocation(line: 886, column: 7, scope: !1285, inlinedAt: !1409)
!1419 = !DILocation(line: 890, column: 22, scope: !1307, inlinedAt: !1409)
!1420 = !DILocation(line: 890, column: 9, scope: !1308, inlinedAt: !1409)
!1421 = !DILocation(line: 891, column: 7, scope: !1311, inlinedAt: !1409)
!1422 = !DILocation(line: 892, column: 5, scope: !1311, inlinedAt: !1409)
!1423 = !DILocation(line: 905, column: 7, scope: !1285, inlinedAt: !1409)
!1424 = !DILocation(line: 908, column: 5, scope: !1315, inlinedAt: !1409)
!1425 = !DILocation(line: 910, column: 3, scope: !1315, inlinedAt: !1409)
!1426 = !DILocation(line: 912, column: 1, scope: !1285, inlinedAt: !1409)
!1427 = !DILocation(line: 1007, column: 5, scope: !1389)
!1428 = !DILocation(line: 1013, column: 7, scope: !1388)
!1429 = !DILocation(line: 1014, column: 31, scope: !1388)
!1430 = !DILocation(line: 1013, column: 33, scope: !1388)
!1431 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 1015, column: 7, scope: !1388)
!1433 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1432)
!1434 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1432)
!1435 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1432)
!1436 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1432)
!1437 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1432)
!1438 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1432)
!1439 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1432)
!1440 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1432)
!1441 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1432)
!1442 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1432)
!1443 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1432)
!1444 = !DILocation(line: 1016, column: 5, scope: !1389)
!1445 = !DILocation(line: 1018, column: 3, scope: !1389)
!1446 = !DILocation(line: 1019, column: 1, scope: !1384)
!1447 = distinct !DISubprogram(name: "netif_set_link_down", scope: !3, file: !3, line: 1026, type: !158, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1448)
!1448 = !{!1449, !1450}
!1449 = !DILocalVariable(name: "netif", arg: 1, scope: !1447, file: !3, line: 1026, type: !98)
!1450 = !DILocalVariable(name: "args", scope: !1451, file: !3, line: 1037, type: !191)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 1036, column: 5)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 1032, column: 42)
!1453 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1032, column: 7)
!1454 = !DILocation(line: 1026, column: 35, scope: !1447)
!1455 = !DILocation(line: 1030, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1030, column: 3)
!1457 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1030, column: 3)
!1458 = !DILocation(line: 1030, column: 3, scope: !1457)
!1459 = !DILocation(line: 1030, column: 3, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1030, column: 3)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1030, column: 3)
!1462 = !DILocation(line: 1030, column: 3, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1030, column: 3)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1030, column: 3)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1030, column: 3)
!1466 = !DILocation(line: 1032, column: 14, scope: !1453)
!1467 = !DILocation(line: 1032, column: 20, scope: !1453)
!1468 = !DILocation(line: 1032, column: 7, scope: !1447)
!1469 = !DILocation(line: 1033, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 1033, column: 5)
!1471 = !DILocation(line: 1037, column: 7, scope: !1451)
!1472 = !DILocation(line: 1038, column: 31, scope: !1451)
!1473 = !DILocation(line: 1037, column: 33, scope: !1451)
!1474 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 1039, column: 7, scope: !1451)
!1476 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1475)
!1477 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1475)
!1478 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1475)
!1479 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1475)
!1480 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1475)
!1481 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1475)
!1482 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1475)
!1483 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1475)
!1484 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1475)
!1485 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1475)
!1486 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1475)
!1487 = !DILocation(line: 1040, column: 5, scope: !1452)
!1488 = !DILocation(line: 1042, column: 3, scope: !1452)
!1489 = !DILocation(line: 1043, column: 1, scope: !1447)
!1490 = distinct !DISubprogram(name: "netif_ip6_addr_set", scope: !3, file: !3, line: 1314, type: !1491, isLocal: false, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !98, !120, !84}
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "netif", arg: 1, scope: !1490, file: !3, line: 1314, type: !98)
!1495 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1490, file: !3, line: 1314, type: !120)
!1496 = !DILocalVariable(name: "addr6", arg: 3, scope: !1490, file: !3, line: 1314, type: !84)
!1497 = !DILocation(line: 1314, column: 34, scope: !1490)
!1498 = !DILocation(line: 1314, column: 46, scope: !1490)
!1499 = !DILocation(line: 1314, column: 74, scope: !1490)
!1500 = !DILocation(line: 1318, column: 3, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1318, column: 3)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1318, column: 3)
!1503 = !DILocation(line: 1318, column: 3, scope: !1502)
!1504 = !DILocation(line: 1318, column: 3, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 1318, column: 3)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1318, column: 3)
!1507 = !DILocation(line: 1318, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1318, column: 3)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1318, column: 3)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 1318, column: 3)
!1511 = !DILocation(line: 1319, column: 3, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 1319, column: 3)
!1513 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1319, column: 3)
!1514 = !DILocation(line: 1319, column: 3, scope: !1513)
!1515 = !DILocation(line: 1319, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1319, column: 3)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1319, column: 3)
!1518 = !DILocation(line: 1319, column: 3, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 1319, column: 3)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 1319, column: 3)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 1319, column: 3)
!1522 = !DILocation(line: 1321, column: 45, scope: !1490)
!1523 = !DILocation(line: 1321, column: 61, scope: !1490)
!1524 = !DILocation(line: 1322, column: 28, scope: !1490)
!1525 = !DILocation(line: 1322, column: 44, scope: !1490)
!1526 = !DILocation(line: 1321, column: 3, scope: !1490)
!1527 = !DILocation(line: 1323, column: 1, scope: !1490)
!1528 = distinct !DISubprogram(name: "netif_ip6_addr_set_parts", scope: !3, file: !3, line: 1336, type: !1529, isLocal: false, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !98, !120, !54, !54, !54, !54}
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1532 = !DILocalVariable(name: "netif", arg: 1, scope: !1528, file: !3, line: 1336, type: !98)
!1533 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1528, file: !3, line: 1336, type: !120)
!1534 = !DILocalVariable(name: "i0", arg: 3, scope: !1528, file: !3, line: 1336, type: !54)
!1535 = !DILocalVariable(name: "i1", arg: 4, scope: !1528, file: !3, line: 1336, type: !54)
!1536 = !DILocalVariable(name: "i2", arg: 5, scope: !1528, file: !3, line: 1336, type: !54)
!1537 = !DILocalVariable(name: "i3", arg: 6, scope: !1528, file: !3, line: 1336, type: !54)
!1538 = !DILocalVariable(name: "old_addr", scope: !1528, file: !3, line: 1338, type: !66)
!1539 = !DILocalVariable(name: "new_ipaddr", scope: !1528, file: !3, line: 1339, type: !66)
!1540 = !DILocalVariable(name: "args", scope: !1541, file: !3, line: 1369, type: !191)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1368, column: 5)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1349, column: 85)
!1543 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1348, column: 7)
!1544 = !DILocation(line: 1336, column: 40, scope: !1528)
!1545 = !DILocation(line: 1336, column: 52, scope: !1528)
!1546 = !DILocation(line: 1336, column: 68, scope: !1528)
!1547 = !DILocation(line: 1336, column: 78, scope: !1528)
!1548 = !DILocation(line: 1336, column: 88, scope: !1528)
!1549 = !DILocation(line: 1336, column: 98, scope: !1528)
!1550 = !DILocation(line: 1338, column: 3, scope: !1528)
!1551 = !DILocation(line: 1339, column: 3, scope: !1528)
!1552 = !DILocation(line: 1341, column: 3, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 1341, column: 3)
!1554 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1341, column: 3)
!1555 = !DILocation(line: 1341, column: 3, scope: !1554)
!1556 = !DILocation(line: 1341, column: 3, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1341, column: 3)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 1341, column: 3)
!1559 = !DILocation(line: 1341, column: 3, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 1341, column: 3)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1341, column: 3)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1341, column: 3)
!1563 = !DILocation(line: 1342, column: 3, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 1342, column: 3)
!1565 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1342, column: 3)
!1566 = !DILocation(line: 1342, column: 3, scope: !1565)
!1567 = !DILocation(line: 1342, column: 3, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1342, column: 3)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 1342, column: 3)
!1570 = !DILocation(line: 1342, column: 3, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 1342, column: 3)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1342, column: 3)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 1342, column: 3)
!1574 = !DILocation(line: 1344, column: 3, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1344, column: 3)
!1576 = !DILocation(line: 1345, column: 3, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1345, column: 3)
!1578 = !DILocation(line: 1348, column: 37, scope: !1543)
!1579 = !DILocation(line: 1348, column: 44, scope: !1543)
!1580 = !DILocation(line: 1348, column: 77, scope: !1543)
!1581 = !DILocation(line: 1348, column: 84, scope: !1543)
!1582 = !DILocation(line: 1349, column: 37, scope: !1543)
!1583 = !DILocation(line: 1349, column: 44, scope: !1543)
!1584 = !DILocation(line: 1349, column: 77, scope: !1543)
!1585 = !DILocation(line: 1348, column: 7, scope: !1528)
!1586 = !DILocation(line: 1352, column: 5, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1352, column: 5)
!1588 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1352, column: 5)
!1589 = !DILocation(line: 1352, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1352, column: 5)
!1591 = !DILocation(line: 1353, column: 5, scope: !1542)
!1592 = !DILocation(line: 1355, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1355, column: 9)
!1594 = !DILocation(line: 1355, column: 9, scope: !1542)
!1595 = !DILocation(line: 1360, column: 5, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 1360, column: 5)
!1597 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1360, column: 5)
!1598 = !DILocation(line: 1360, column: 5, scope: !1597)
!1599 = !DILocation(line: 1360, column: 5, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1360, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1360, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 1360, column: 5)
!1603 = !DILocation(line: 1339, column: 13, scope: !1528)
!1604 = !DILocation(line: 442, column: 43, scope: !911, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 1356, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 1355, column: 66)
!1607 = !DILocation(line: 442, column: 70, scope: !911, inlinedAt: !1605)
!1608 = !DILocation(line: 445, column: 3, scope: !911, inlinedAt: !1605)
!1609 = !DILocation(line: 448, column: 3, scope: !911, inlinedAt: !1605)
!1610 = !DILocation(line: 453, column: 1, scope: !911, inlinedAt: !1605)
!1611 = !DILocation(line: 1357, column: 5, scope: !1606)
!1612 = !DILocation(line: 1360, column: 5, scope: !1602)
!1613 = !DILocation(line: 1360, column: 5, scope: !1601)
!1614 = !DILocation(line: 1360, column: 5, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1360, column: 5)
!1616 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1360, column: 5)
!1617 = !DILocation(line: 1362, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1362, column: 9)
!1619 = !DILocation(line: 1362, column: 9, scope: !1542)
!1620 = !DILocation(line: 875, column: 35, scope: !1285, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 1363, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1362, column: 66)
!1623 = !DILocation(line: 875, column: 47, scope: !1285, inlinedAt: !1621)
!1624 = !DILocation(line: 877, column: 3, scope: !1294, inlinedAt: !1621)
!1625 = !DILocation(line: 880, column: 16, scope: !1296, inlinedAt: !1621)
!1626 = !DILocation(line: 880, column: 9, scope: !1296, inlinedAt: !1621)
!1627 = !DILocation(line: 880, column: 22, scope: !1296, inlinedAt: !1621)
!1628 = !DILocation(line: 880, column: 44, scope: !1296, inlinedAt: !1621)
!1629 = !DILocation(line: 881, column: 22, scope: !1296, inlinedAt: !1621)
!1630 = !DILocation(line: 880, column: 7, scope: !1285, inlinedAt: !1621)
!1631 = !DILocation(line: 886, column: 46, scope: !1303, inlinedAt: !1621)
!1632 = !DILocation(line: 905, column: 7, scope: !1285, inlinedAt: !1621)
!1633 = !DILocation(line: 908, column: 5, scope: !1315, inlinedAt: !1621)
!1634 = !DILocation(line: 910, column: 3, scope: !1315, inlinedAt: !1621)
!1635 = !DILocation(line: 912, column: 1, scope: !1285, inlinedAt: !1621)
!1636 = !DILocation(line: 1364, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1364, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1364, column: 7)
!1639 = !DILocation(line: 1364, column: 7, scope: !1638)
!1640 = !DILocation(line: 1364, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1364, column: 7)
!1642 = !DILocation(line: 1369, column: 7, scope: !1541)
!1643 = !DILocation(line: 1370, column: 33, scope: !1541)
!1644 = !DILocation(line: 1371, column: 21, scope: !1541)
!1645 = !DILocation(line: 1371, column: 33, scope: !1541)
!1646 = !DILocation(line: 1369, column: 33, scope: !1541)
!1647 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 1372, column: 7, scope: !1541)
!1649 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1648)
!1650 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1648)
!1651 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1648)
!1652 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1648)
!1653 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1648)
!1654 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1648)
!1655 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1648)
!1656 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1648)
!1657 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1648)
!1658 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1648)
!1659 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1648)
!1660 = !DILocation(line: 1373, column: 5, scope: !1542)
!1661 = !DILocation(line: 1375, column: 3, scope: !1542)
!1662 = !DILocation(line: 1380, column: 1, scope: !1528)
!1663 = distinct !DISubprogram(name: "netif_ip6_addr_set_state", scope: !3, file: !3, line: 1393, type: !1664, isLocal: false, isDefinition: true, scopeLine: 1394, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1666)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !98, !120, !47}
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1674, !1675}
!1667 = !DILocalVariable(name: "netif", arg: 1, scope: !1663, file: !3, line: 1393, type: !98)
!1668 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1663, file: !3, line: 1393, type: !120)
!1669 = !DILocalVariable(name: "state", arg: 3, scope: !1663, file: !3, line: 1393, type: !47)
!1670 = !DILocalVariable(name: "old_state", scope: !1663, file: !3, line: 1395, type: !47)
!1671 = !DILocalVariable(name: "old_valid", scope: !1672, file: !3, line: 1403, type: !47)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 1402, column: 27)
!1673 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1402, column: 7)
!1674 = !DILocalVariable(name: "new_valid", scope: !1672, file: !3, line: 1404, type: !47)
!1675 = !DILocalVariable(name: "args", scope: !1676, file: !3, line: 1436, type: !191)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1435, column: 5)
!1677 = !DILocation(line: 1393, column: 40, scope: !1663)
!1678 = !DILocation(line: 1393, column: 52, scope: !1663)
!1679 = !DILocation(line: 1393, column: 67, scope: !1663)
!1680 = !DILocation(line: 1397, column: 3, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1397, column: 3)
!1682 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1397, column: 3)
!1683 = !DILocation(line: 1397, column: 3, scope: !1682)
!1684 = !DILocation(line: 1397, column: 3, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 1397, column: 3)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 1397, column: 3)
!1687 = !DILocation(line: 1397, column: 3, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 1397, column: 3)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1397, column: 3)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1397, column: 3)
!1691 = !DILocation(line: 1398, column: 3, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1398, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1398, column: 3)
!1694 = !DILocation(line: 1398, column: 3, scope: !1693)
!1695 = !DILocation(line: 1398, column: 3, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1398, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 1398, column: 3)
!1698 = !DILocation(line: 1398, column: 3, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 1398, column: 3)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 1398, column: 3)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 1398, column: 3)
!1702 = !DILocation(line: 1400, column: 15, scope: !1663)
!1703 = !DILocation(line: 1395, column: 8, scope: !1663)
!1704 = !DILocation(line: 1402, column: 17, scope: !1673)
!1705 = !DILocation(line: 1402, column: 7, scope: !1663)
!1706 = !DILocation(line: 1403, column: 32, scope: !1672)
!1707 = !DILocation(line: 1403, column: 10, scope: !1672)
!1708 = !DILocation(line: 1404, column: 28, scope: !1672)
!1709 = !DILocation(line: 1404, column: 10, scope: !1672)
!1710 = !DILocation(line: 1409, column: 16, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1409, column: 9)
!1712 = !DILocation(line: 1409, column: 22, scope: !1711)
!1713 = !DILocation(line: 1409, column: 9, scope: !1672)
!1714 = !DILocation(line: 1410, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1409, column: 41)
!1716 = !DILocation(line: 1411, column: 5, scope: !1715)
!1717 = !DILocation(line: 1414, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1414, column: 9)
!1719 = !DILocation(line: 1414, column: 23, scope: !1718)
!1720 = !DILocation(line: 1414, column: 19, scope: !1718)
!1721 = !DILocation(line: 1416, column: 32, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1414, column: 34)
!1723 = !DILocation(line: 442, column: 43, scope: !911, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 1416, column: 7, scope: !1722)
!1725 = !DILocation(line: 442, column: 70, scope: !911, inlinedAt: !1724)
!1726 = !DILocation(line: 445, column: 3, scope: !911, inlinedAt: !1724)
!1727 = !DILocation(line: 448, column: 3, scope: !911, inlinedAt: !1724)
!1728 = !DILocation(line: 453, column: 1, scope: !911, inlinedAt: !1724)
!1729 = !DILocation(line: 1418, column: 5, scope: !1722)
!1730 = !DILocation(line: 1419, column: 37, scope: !1672)
!1731 = !DILocation(line: 1421, column: 20, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1421, column: 9)
!1733 = !DILocation(line: 1421, column: 23, scope: !1732)
!1734 = !DILocation(line: 1421, column: 9, scope: !1672)
!1735 = !DILocation(line: 875, column: 35, scope: !1285, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 1426, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 1421, column: 34)
!1738 = !DILocation(line: 875, column: 47, scope: !1285, inlinedAt: !1736)
!1739 = !DILocation(line: 877, column: 3, scope: !1294, inlinedAt: !1736)
!1740 = !DILocation(line: 880, column: 16, scope: !1296, inlinedAt: !1736)
!1741 = !DILocation(line: 880, column: 9, scope: !1296, inlinedAt: !1736)
!1742 = !DILocation(line: 880, column: 22, scope: !1296, inlinedAt: !1736)
!1743 = !DILocation(line: 880, column: 44, scope: !1296, inlinedAt: !1736)
!1744 = !DILocation(line: 881, column: 22, scope: !1296, inlinedAt: !1736)
!1745 = !DILocation(line: 880, column: 7, scope: !1285, inlinedAt: !1736)
!1746 = !DILocation(line: 886, column: 46, scope: !1303, inlinedAt: !1736)
!1747 = !DILocation(line: 905, column: 7, scope: !1285, inlinedAt: !1736)
!1748 = !DILocation(line: 908, column: 5, scope: !1315, inlinedAt: !1736)
!1749 = !DILocation(line: 910, column: 3, scope: !1315, inlinedAt: !1736)
!1750 = !DILocation(line: 912, column: 1, scope: !1285, inlinedAt: !1736)
!1751 = !DILocation(line: 1427, column: 5, scope: !1737)
!1752 = !DILocation(line: 1428, column: 54, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1428, column: 9)
!1754 = !DILocation(line: 1428, column: 9, scope: !1672)
!1755 = !DILocation(line: 1431, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 1431, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 1431, column: 7)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 1429, column: 55)
!1759 = !DILocation(line: 1431, column: 7, scope: !1757)
!1760 = !DILocation(line: 1431, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1431, column: 7)
!1762 = !DILocation(line: 1436, column: 7, scope: !1676)
!1763 = !DILocation(line: 1437, column: 12, scope: !1676)
!1764 = !DILocation(line: 1437, column: 47, scope: !1676)
!1765 = !DILocation(line: 1438, column: 36, scope: !1676)
!1766 = !DILocation(line: 1438, column: 47, scope: !1676)
!1767 = !DILocation(line: 1439, column: 49, scope: !1676)
!1768 = !DILocation(line: 1439, column: 36, scope: !1676)
!1769 = !DILocation(line: 1439, column: 47, scope: !1676)
!1770 = !DILocation(line: 1436, column: 33, scope: !1676)
!1771 = !DILocation(line: 1784, column: 41, scope: !561, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 1440, column: 7, scope: !1676)
!1773 = !DILocation(line: 1784, column: 67, scope: !561, inlinedAt: !1772)
!1774 = !DILocation(line: 1784, column: 108, scope: !561, inlinedAt: !1772)
!1775 = !DILocation(line: 1786, column: 36, scope: !561, inlinedAt: !1772)
!1776 = !DILocation(line: 1786, column: 25, scope: !561, inlinedAt: !1772)
!1777 = !DILocation(line: 1788, column: 3, scope: !573, inlinedAt: !1772)
!1778 = !DILocation(line: 1790, column: 19, scope: !561, inlinedAt: !1772)
!1779 = !DILocation(line: 1790, column: 3, scope: !561, inlinedAt: !1772)
!1780 = !DILocation(line: 1791, column: 15, scope: !577, inlinedAt: !1772)
!1781 = !DILocation(line: 1791, column: 5, scope: !577, inlinedAt: !1772)
!1782 = !DILocation(line: 1792, column: 26, scope: !577, inlinedAt: !1772)
!1783 = !DILocation(line: 1794, column: 1, scope: !561, inlinedAt: !1772)
!1784 = !DILocation(line: 1441, column: 5, scope: !1672)
!1785 = !DILocation(line: 1443, column: 3, scope: !1672)
!1786 = !DILocation(line: 1447, column: 1, scope: !1663)
!1787 = distinct !DISubprogram(name: "netif_get_ip6_addr_match", scope: !3, file: !3, line: 1464, type: !1788, isLocal: false, isDefinition: true, scopeLine: 1465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!120, !98, !84}
!1790 = !{!1791, !1792, !1793}
!1791 = !DILocalVariable(name: "netif", arg: 1, scope: !1787, file: !3, line: 1464, type: !98)
!1792 = !DILocalVariable(name: "ip6addr", arg: 2, scope: !1787, file: !3, line: 1464, type: !84)
!1793 = !DILocalVariable(name: "i", scope: !1787, file: !3, line: 1466, type: !120)
!1794 = !DILocation(line: 1464, column: 40, scope: !1787)
!1795 = !DILocation(line: 1464, column: 65, scope: !1787)
!1796 = !DILocation(line: 1470, column: 3, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1470, column: 3)
!1798 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1470, column: 3)
!1799 = !DILocation(line: 1470, column: 3, scope: !1798)
!1800 = !DILocation(line: 1470, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1470, column: 3)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1470, column: 3)
!1803 = !DILocation(line: 1470, column: 3, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1470, column: 3)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 1470, column: 3)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 1470, column: 3)
!1807 = !DILocation(line: 1471, column: 3, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 1471, column: 3)
!1809 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1471, column: 3)
!1810 = !DILocation(line: 1471, column: 3, scope: !1809)
!1811 = !DILocation(line: 1471, column: 3, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1471, column: 3)
!1813 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1471, column: 3)
!1814 = !DILocation(line: 1471, column: 3, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1471, column: 3)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1471, column: 3)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 1471, column: 3)
!1818 = !DILocation(line: 1474, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1474, column: 7)
!1820 = !{!1821, !293, i64 16}
!1821 = !{!"ip6_addr", !293, i64 0, !293, i64 16}
!1822 = !DILocation(line: 1474, column: 34, scope: !1819)
!1823 = !DILocation(line: 1474, column: 38, scope: !1819)
!1824 = !DILocation(line: 1474, column: 7, scope: !1787)
!1825 = !DILocation(line: 1466, column: 8, scope: !1787)
!1826 = !DILocation(line: 1479, column: 8, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1479, column: 3)
!1828 = !DILocation(line: 1479, column: 3, scope: !1827)
!1829 = !DILocation(line: 1480, column: 10, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 1480, column: 9)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1479, column: 49)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1479, column: 3)
!1833 = !DILocation(line: 1480, column: 61, scope: !1830)
!1834 = !DILocation(line: 1481, column: 9, scope: !1830)
!1835 = !DILocation(line: 1480, column: 9, scope: !1831)
!1836 = !DILocation(line: 1479, column: 3, scope: !1832)
!1837 = !DILocation(line: 0, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1474, column: 74)
!1839 = !DILocation(line: 1486, column: 1, scope: !1787)
!1840 = !DILocation(line: 1485, column: 3, scope: !1787)
!1841 = distinct !DISubprogram(name: "netif_create_ip6_linklocal_address", scope: !3, file: !3, line: 1497, type: !1286, isLocal: false, isDefinition: true, scopeLine: 1498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1842)
!1842 = !{!1843, !1844, !1845, !1846}
!1843 = !DILocalVariable(name: "netif", arg: 1, scope: !1841, file: !3, line: 1497, type: !98)
!1844 = !DILocalVariable(name: "from_mac_48bit", arg: 2, scope: !1841, file: !3, line: 1497, type: !47)
!1845 = !DILocalVariable(name: "i", scope: !1841, file: !3, line: 1499, type: !47)
!1846 = !DILocalVariable(name: "addr_index", scope: !1841, file: !3, line: 1499, type: !47)
!1847 = !DILocation(line: 1497, column: 50, scope: !1841)
!1848 = !DILocation(line: 1497, column: 62, scope: !1841)
!1849 = !DILocation(line: 1503, column: 3, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1503, column: 3)
!1851 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 1503, column: 3)
!1852 = !DILocation(line: 1503, column: 3, scope: !1851)
!1853 = !DILocation(line: 1503, column: 3, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 1503, column: 3)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 1503, column: 3)
!1856 = !DILocation(line: 1503, column: 3, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 1503, column: 3)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1503, column: 3)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 1503, column: 3)
!1860 = !DILocation(line: 1506, column: 3, scope: !1841)
!1861 = !DILocation(line: 1506, column: 42, scope: !1841)
!1862 = !DILocation(line: 1507, column: 3, scope: !1841)
!1863 = !DILocation(line: 1507, column: 42, scope: !1841)
!1864 = !DILocation(line: 1510, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 1510, column: 7)
!1866 = !DILocation(line: 1510, column: 7, scope: !1841)
!1867 = !DILocation(line: 1512, column: 67, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1510, column: 23)
!1869 = !DILocation(line: 1512, column: 84, scope: !1868)
!1870 = !DILocation(line: 1512, column: 93, scope: !1868)
!1871 = !DILocation(line: 1513, column: 18, scope: !1868)
!1872 = !DILocation(line: 1513, column: 10, scope: !1868)
!1873 = !DILocation(line: 1513, column: 36, scope: !1868)
!1874 = !DILocation(line: 1514, column: 18, scope: !1868)
!1875 = !DILocation(line: 1514, column: 10, scope: !1868)
!1876 = !DILocation(line: 1514, column: 36, scope: !1868)
!1877 = !DILocation(line: 1513, column: 43, scope: !1868)
!1878 = !DILocation(line: 1514, column: 42, scope: !1868)
!1879 = !DILocation(line: 1512, column: 46, scope: !1868)
!1880 = !DILocation(line: 1512, column: 5, scope: !1868)
!1881 = !DILocation(line: 1512, column: 44, scope: !1868)
!1882 = !DILocation(line: 1517, column: 18, scope: !1868)
!1883 = !DILocation(line: 1517, column: 10, scope: !1868)
!1884 = !DILocation(line: 1517, column: 36, scope: !1868)
!1885 = !DILocation(line: 1518, column: 18, scope: !1868)
!1886 = !DILocation(line: 1518, column: 10, scope: !1868)
!1887 = !DILocation(line: 1518, column: 36, scope: !1868)
!1888 = !DILocation(line: 1519, column: 10, scope: !1868)
!1889 = !DILocation(line: 1519, column: 9, scope: !1868)
!1890 = !DILocation(line: 1518, column: 42, scope: !1868)
!1891 = !DILocation(line: 1516, column: 46, scope: !1868)
!1892 = !DILocation(line: 1516, column: 5, scope: !1868)
!1893 = !DILocation(line: 1516, column: 44, scope: !1868)
!1894 = !DILocation(line: 1520, column: 3, scope: !1868)
!1895 = !DILocation(line: 1522, column: 5, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1520, column: 10)
!1897 = !DILocation(line: 1522, column: 44, scope: !1896)
!1898 = !DILocation(line: 1523, column: 5, scope: !1896)
!1899 = !DILocation(line: 1523, column: 44, scope: !1896)
!1900 = !DILocation(line: 1499, column: 11, scope: !1841)
!1901 = !DILocation(line: 1499, column: 8, scope: !1841)
!1902 = !DILocation(line: 1526, column: 10, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 1526, column: 5)
!1904 = !DILocation(line: 1526, column: 40, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 1526, column: 5)
!1906 = !DILocation(line: 1526, column: 25, scope: !1905)
!1907 = !{!291, !293, i64 260}
!1908 = !DILocation(line: 1526, column: 31, scope: !1905)
!1909 = !DILocation(line: 1526, column: 5, scope: !1903)
!1910 = !DILocation(line: 1527, column: 13, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1527, column: 11)
!1912 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1526, column: 58)
!1913 = !DILocation(line: 1527, column: 11, scope: !1912)
!1914 = !DILocation(line: 1528, column: 19, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1527, column: 19)
!1916 = !DILocation(line: 1529, column: 7, scope: !1915)
!1917 = !DILocation(line: 0, scope: !1896)
!1918 = !DILocation(line: 1530, column: 114, scope: !1912)
!1919 = !DILocation(line: 1530, column: 78, scope: !1912)
!1920 = !DILocation(line: 1530, column: 70, scope: !1912)
!1921 = !DILocation(line: 1530, column: 127, scope: !1912)
!1922 = !DILocation(line: 1530, column: 121, scope: !1912)
!1923 = !DILocation(line: 1530, column: 58, scope: !1912)
!1924 = !DILocation(line: 1530, column: 7, scope: !1912)
!1925 = !DILocation(line: 1530, column: 55, scope: !1912)
!1926 = !DILocation(line: 1526, column: 54, scope: !1905)
!1927 = !DILocation(line: 1526, column: 5, scope: !1905)
!1928 = !DILocation(line: 1526, column: 20, scope: !1905)
!1929 = distinct !{!1929, !1909, !1930}
!1930 = !DILocation(line: 1531, column: 5, scope: !1903)
!1931 = !DILocation(line: 1542, column: 3, scope: !1841)
!1932 = !DILocation(line: 1547, column: 3, scope: !1841)
!1933 = !DILocation(line: 1552, column: 1, scope: !1841)
!1934 = distinct !DISubprogram(name: "netif_add_ip6_address", scope: !3, file: !3, line: 1565, type: !1935, isLocal: false, isDefinition: true, scopeLine: 1566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1938)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!119, !98, !84, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1938 = !{!1939, !1940, !1941, !1942}
!1939 = !DILocalVariable(name: "netif", arg: 1, scope: !1934, file: !3, line: 1565, type: !98)
!1940 = !DILocalVariable(name: "ip6addr", arg: 2, scope: !1934, file: !3, line: 1565, type: !84)
!1941 = !DILocalVariable(name: "chosen_idx", arg: 3, scope: !1934, file: !3, line: 1565, type: !1937)
!1942 = !DILocalVariable(name: "i", scope: !1934, file: !3, line: 1567, type: !120)
!1943 = !DILocation(line: 1565, column: 37, scope: !1934)
!1944 = !DILocation(line: 1565, column: 62, scope: !1934)
!1945 = !DILocation(line: 1565, column: 77, scope: !1934)
!1946 = !DILocation(line: 1571, column: 3, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 1571, column: 3)
!1948 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1571, column: 3)
!1949 = !DILocation(line: 1571, column: 3, scope: !1948)
!1950 = !DILocation(line: 1571, column: 3, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 1571, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 1571, column: 3)
!1953 = !DILocation(line: 1571, column: 3, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 1571, column: 3)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1571, column: 3)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 1571, column: 3)
!1957 = !DILocation(line: 1572, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 1572, column: 3)
!1959 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1572, column: 3)
!1960 = !DILocation(line: 1572, column: 3, scope: !1959)
!1961 = !DILocation(line: 1572, column: 3, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1572, column: 3)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 1572, column: 3)
!1964 = !DILocation(line: 1572, column: 3, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1572, column: 3)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1572, column: 3)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 1572, column: 3)
!1968 = !DILocation(line: 1574, column: 7, scope: !1934)
!1969 = !DILocation(line: 1567, column: 8, scope: !1934)
!1970 = !DILocation(line: 1575, column: 9, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1575, column: 7)
!1972 = !DILocation(line: 1575, column: 7, scope: !1934)
!1973 = !DILocation(line: 1577, column: 20, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 1577, column: 9)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1575, column: 15)
!1976 = !DILocation(line: 1577, column: 9, scope: !1975)
!1977 = !DILocation(line: 1578, column: 19, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 1577, column: 29)
!1979 = !DILocation(line: 1579, column: 5, scope: !1978)
!1980 = !DILocation(line: 1584, column: 12, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1584, column: 3)
!1982 = !DILocation(line: 1584, column: 8, scope: !1981)
!1983 = !DILocation(line: 1584, column: 3, scope: !1981)
!1984 = !DILocation(line: 1585, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1585, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1584, column: 85)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 1584, column: 3)
!1988 = !DILocation(line: 1585, column: 9, scope: !1986)
!1989 = !DILocation(line: 1586, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1586, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1586, column: 7)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1585, column: 61)
!1993 = !DILocation(line: 1586, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1586, column: 7)
!1995 = !DILocation(line: 1587, column: 7, scope: !1992)
!1996 = !DILocation(line: 1588, column: 7, scope: !1992)
!1997 = !DILocation(line: 1589, column: 22, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1589, column: 11)
!1999 = !DILocation(line: 1589, column: 11, scope: !1992)
!2000 = !DILocation(line: 1590, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1589, column: 31)
!2002 = !DILocation(line: 1591, column: 7, scope: !2001)
!2003 = !DILocation(line: 1584, column: 81, scope: !1987)
!2004 = !DILocation(line: 1584, column: 3, scope: !1987)
!2005 = !DILocation(line: 1596, column: 18, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1596, column: 7)
!2007 = !DILocation(line: 1596, column: 7, scope: !1934)
!2008 = !DILocation(line: 1597, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1596, column: 27)
!2010 = !DILocation(line: 1598, column: 3, scope: !2009)
!2011 = !DILocation(line: 0, scope: !1934)
!2012 = !DILocation(line: 0, scope: !1975)
!2013 = !DILocation(line: 1600, column: 1, scope: !1934)
!2014 = !DILocation(line: 1584, column: 53, scope: !1987)
!2015 = distinct !{!2015, !1983, !2016}
!2016 = !DILocation(line: 1594, column: 3, scope: !1981)
!2017 = distinct !DISubprogram(name: "netif_name_to_index", scope: !3, file: !3, line: 1637, type: !2018, isLocal: false, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!47, !231}
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "name", arg: 1, scope: !2017, file: !3, line: 1637, type: !231)
!2022 = !DILocalVariable(name: "netif", scope: !2017, file: !3, line: 1639, type: !98)
!2023 = !DILocation(line: 1637, column: 33, scope: !2017)
!2024 = !DILocalVariable(name: "name", arg: 1, scope: !2025, file: !3, line: 1701, type: !231)
!2025 = distinct !DISubprogram(name: "netif_find", scope: !3, file: !3, line: 1701, type: !2026, isLocal: false, isDefinition: true, scopeLine: 1702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!98, !231}
!2028 = !{!2024, !2029, !2030}
!2029 = !DILocalVariable(name: "netif", scope: !2025, file: !3, line: 1703, type: !98)
!2030 = !DILocalVariable(name: "num", scope: !2025, file: !3, line: 1704, type: !47)
!2031 = !DILocation(line: 1701, column: 24, scope: !2025, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 1639, column: 25, scope: !2017)
!2033 = !DILocation(line: 1708, column: 12, scope: !2034, inlinedAt: !2032)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 1708, column: 7)
!2035 = !DILocation(line: 1708, column: 7, scope: !2025, inlinedAt: !2032)
!2036 = !DILocation(line: 1712, column: 21, scope: !2025, inlinedAt: !2032)
!2037 = !DILocation(line: 1712, column: 15, scope: !2025, inlinedAt: !2032)
!2038 = !DILocation(line: 1714, column: 3, scope: !2039, inlinedAt: !2032)
!2039 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 1714, column: 3)
!2040 = !DILocation(line: 1703, column: 17, scope: !2025, inlinedAt: !2032)
!2041 = !DILocation(line: 1714, column: 3, scope: !2042, inlinedAt: !2032)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1714, column: 3)
!2043 = !DILocation(line: 1715, column: 23, scope: !2044, inlinedAt: !2032)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1715, column: 9)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1714, column: 24)
!2046 = !DILocation(line: 1715, column: 13, scope: !2044, inlinedAt: !2032)
!2047 = !DILocation(line: 1715, column: 27, scope: !2044, inlinedAt: !2032)
!2048 = !DILocation(line: 1716, column: 9, scope: !2044, inlinedAt: !2032)
!2049 = !DILocation(line: 1716, column: 20, scope: !2044, inlinedAt: !2032)
!2050 = !DILocation(line: 1716, column: 17, scope: !2044, inlinedAt: !2032)
!2051 = !DILocation(line: 1716, column: 35, scope: !2044, inlinedAt: !2032)
!2052 = !DILocation(line: 1717, column: 9, scope: !2044, inlinedAt: !2032)
!2053 = !DILocation(line: 1717, column: 20, scope: !2044, inlinedAt: !2032)
!2054 = !DILocation(line: 1717, column: 17, scope: !2044, inlinedAt: !2032)
!2055 = !DILocation(line: 1715, column: 9, scope: !2045, inlinedAt: !2032)
!2056 = distinct !{!2056, !2057, !2058}
!2057 = !DILocation(line: 1714, column: 3, scope: !2039)
!2058 = !DILocation(line: 1721, column: 3, scope: !2039)
!2059 = !DILocation(line: 1719, column: 7, scope: !2060, inlinedAt: !2032)
!2060 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1717, column: 36)
!2061 = !DILocation(line: 1724, column: 1, scope: !2025, inlinedAt: !2032)
!2062 = !DILocation(line: 1639, column: 17, scope: !2017)
!2063 = !DILocation(line: 1640, column: 7, scope: !2017)
!2064 = !DILocation(line: 1641, column: 12, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1640, column: 22)
!2066 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1640, column: 7)
!2067 = !DILocation(line: 1641, column: 5, scope: !2065)
!2068 = !DILocation(line: 0, scope: !2017)
!2069 = !DILocation(line: 1644, column: 3, scope: !2017)
!2070 = !DILocation(line: 0, scope: !2065)
!2071 = !DILocation(line: 1645, column: 1, scope: !2017)
!2072 = !DILocation(line: 1701, column: 24, scope: !2025)
!2073 = !DILocation(line: 1708, column: 12, scope: !2034)
!2074 = !DILocation(line: 1708, column: 7, scope: !2025)
!2075 = !DILocation(line: 1712, column: 21, scope: !2025)
!2076 = !DILocation(line: 1712, column: 15, scope: !2025)
!2077 = !DILocation(line: 1703, column: 17, scope: !2025)
!2078 = !DILocation(line: 1714, column: 3, scope: !2042)
!2079 = !DILocation(line: 1715, column: 23, scope: !2044)
!2080 = !DILocation(line: 1715, column: 13, scope: !2044)
!2081 = !DILocation(line: 1715, column: 27, scope: !2044)
!2082 = !DILocation(line: 1716, column: 9, scope: !2044)
!2083 = !DILocation(line: 1716, column: 20, scope: !2044)
!2084 = !DILocation(line: 1716, column: 17, scope: !2044)
!2085 = !DILocation(line: 1716, column: 35, scope: !2044)
!2086 = !DILocation(line: 1717, column: 9, scope: !2044)
!2087 = !DILocation(line: 1717, column: 20, scope: !2044)
!2088 = !DILocation(line: 1717, column: 17, scope: !2044)
!2089 = !DILocation(line: 1715, column: 9, scope: !2045)
!2090 = !DILocation(line: 0, scope: !2025)
!2091 = !DILocation(line: 0, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1708, column: 21)
!2093 = !DILocation(line: 1724, column: 1, scope: !2025)
!2094 = distinct !DISubprogram(name: "netif_index_to_name", scope: !3, file: !3, line: 1656, type: !2095, isLocal: false, isDefinition: true, scopeLine: 1657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2098)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !47, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!2098 = !{!2099, !2100, !2101}
!2099 = !DILocalVariable(name: "idx", arg: 1, scope: !2094, file: !3, line: 1656, type: !47)
!2100 = !DILocalVariable(name: "name", arg: 2, scope: !2094, file: !3, line: 1656, type: !2097)
!2101 = !DILocalVariable(name: "netif", scope: !2094, file: !3, line: 1658, type: !98)
!2102 = !DILocation(line: 1656, column: 26, scope: !2094)
!2103 = !DILocation(line: 1656, column: 37, scope: !2094)
!2104 = !DILocalVariable(name: "idx", arg: 1, scope: !2105, file: !3, line: 1676, type: !47)
!2105 = distinct !DISubprogram(name: "netif_get_by_index", scope: !3, file: !3, line: 1676, type: !2106, isLocal: false, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!98, !47}
!2108 = !{!2104, !2109}
!2109 = !DILocalVariable(name: "netif", scope: !2105, file: !3, line: 1678, type: !98)
!2110 = !DILocation(line: 1676, column: 25, scope: !2105, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 1658, column: 25, scope: !2094)
!2112 = !DILocation(line: 1682, column: 11, scope: !2113, inlinedAt: !2111)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1682, column: 7)
!2114 = !DILocation(line: 1682, column: 7, scope: !2105, inlinedAt: !2111)
!2115 = !DILocation(line: 1683, column: 5, scope: !2116, inlinedAt: !2111)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 1683, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1682, column: 30)
!2118 = !DILocation(line: 1678, column: 17, scope: !2105, inlinedAt: !2111)
!2119 = !DILocation(line: 1683, column: 5, scope: !2120, inlinedAt: !2111)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 1683, column: 5)
!2121 = !DILocation(line: 1684, column: 18, scope: !2122, inlinedAt: !2111)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 1684, column: 11)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1683, column: 26)
!2124 = !DILocation(line: 1684, column: 15, scope: !2122, inlinedAt: !2111)
!2125 = !DILocation(line: 1684, column: 11, scope: !2123, inlinedAt: !2111)
!2126 = distinct !{!2126, !2127, !2128}
!2127 = !DILocation(line: 1683, column: 5, scope: !2116)
!2128 = !DILocation(line: 1687, column: 5, scope: !2116)
!2129 = !DILocation(line: 1685, column: 9, scope: !2130, inlinedAt: !2111)
!2130 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 1684, column: 42)
!2131 = !DILocation(line: 1691, column: 1, scope: !2105, inlinedAt: !2111)
!2132 = !DILocation(line: 1658, column: 17, scope: !2094)
!2133 = !DILocation(line: 1660, column: 7, scope: !2094)
!2134 = !DILocation(line: 1661, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 1660, column: 22)
!2136 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 1660, column: 7)
!2137 = !DILocation(line: 1661, column: 13, scope: !2135)
!2138 = !DILocation(line: 1662, column: 15, scope: !2135)
!2139 = !DILocation(line: 1662, column: 5, scope: !2135)
!2140 = !DILocation(line: 1662, column: 13, scope: !2135)
!2141 = !DILocation(line: 1663, column: 16, scope: !2135)
!2142 = !DILocation(line: 1663, column: 45, scope: !2135)
!2143 = !DILocation(line: 1663, column: 5, scope: !2135)
!2144 = !DILocation(line: 1664, column: 5, scope: !2135)
!2145 = !DILocation(line: 1690, column: 3, scope: !2105, inlinedAt: !2111)
!2146 = !DILocation(line: 1666, column: 3, scope: !2094)
!2147 = !DILocation(line: 0, scope: !2094)
!2148 = !DILocation(line: 0, scope: !2135)
!2149 = !DILocation(line: 1667, column: 1, scope: !2094)
!2150 = !DILocation(line: 1676, column: 25, scope: !2105)
!2151 = !DILocation(line: 1682, column: 11, scope: !2113)
!2152 = !DILocation(line: 1682, column: 7, scope: !2105)
!2153 = !DILocation(line: 1678, column: 17, scope: !2105)
!2154 = !DILocation(line: 1683, column: 5, scope: !2120)
!2155 = !DILocation(line: 1684, column: 18, scope: !2122)
!2156 = !DILocation(line: 1684, column: 15, scope: !2122)
!2157 = !DILocation(line: 1684, column: 11, scope: !2123)
!2158 = !DILocation(line: 0, scope: !2105)
!2159 = !DILocation(line: 0, scope: !2130)
!2160 = !DILocation(line: 1691, column: 1, scope: !2105)
!2161 = distinct !DISubprogram(name: "netif_add_ext_callback", scope: !3, file: !3, line: 1734, type: !2162, isLocal: false, isDefinition: true, scopeLine: 1735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !89, !94}
!2164 = !{!2165, !2166}
!2165 = !DILocalVariable(name: "callback", arg: 1, scope: !2161, file: !3, line: 1734, type: !89)
!2166 = !DILocalVariable(name: "fn", arg: 2, scope: !2161, file: !3, line: 1734, type: !94)
!2167 = !DILocation(line: 1734, column: 46, scope: !2161)
!2168 = !DILocation(line: 1734, column: 78, scope: !2161)
!2169 = !DILocation(line: 1737, column: 3, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1737, column: 3)
!2171 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 1737, column: 3)
!2172 = !DILocation(line: 1737, column: 3, scope: !2171)
!2173 = !DILocation(line: 1737, column: 3, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1737, column: 3)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 1737, column: 3)
!2176 = !DILocation(line: 1737, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1737, column: 3)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 1737, column: 3)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1737, column: 3)
!2180 = !DILocation(line: 1738, column: 3, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 1738, column: 3)
!2182 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 1738, column: 3)
!2183 = !DILocation(line: 1738, column: 3, scope: !2182)
!2184 = !DILocation(line: 1738, column: 3, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1738, column: 3)
!2186 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 1738, column: 3)
!2187 = !DILocation(line: 1738, column: 3, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1738, column: 3)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 1738, column: 3)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1738, column: 3)
!2191 = !DILocation(line: 1740, column: 13, scope: !2161)
!2192 = !DILocation(line: 1740, column: 25, scope: !2161)
!2193 = !DILocation(line: 1741, column: 27, scope: !2161)
!2194 = !DILocation(line: 1741, column: 13, scope: !2161)
!2195 = !DILocation(line: 1741, column: 25, scope: !2161)
!2196 = !DILocation(line: 1742, column: 25, scope: !2161)
!2197 = !DILocation(line: 1743, column: 1, scope: !2161)
!2198 = distinct !DISubprogram(name: "netif_remove_ext_callback", scope: !3, file: !3, line: 1751, type: !2199, isLocal: false, isDefinition: true, scopeLine: 1752, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !89}
!2201 = !{!2202, !2203, !2204}
!2202 = !DILocalVariable(name: "callback", arg: 1, scope: !2198, file: !3, line: 1751, type: !89)
!2203 = !DILocalVariable(name: "last", scope: !2198, file: !3, line: 1753, type: !89)
!2204 = !DILocalVariable(name: "iter", scope: !2198, file: !3, line: 1753, type: !89)
!2205 = !DILocation(line: 1751, column: 49, scope: !2198)
!2206 = !DILocation(line: 1756, column: 3, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1756, column: 3)
!2208 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1756, column: 3)
!2209 = !DILocation(line: 1756, column: 3, scope: !2208)
!2210 = !DILocation(line: 1756, column: 3, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1756, column: 3)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1756, column: 3)
!2213 = !DILocation(line: 1756, column: 3, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 1756, column: 3)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 1756, column: 3)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1756, column: 3)
!2217 = !DILocation(line: 1758, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1758, column: 7)
!2219 = !DILocation(line: 1758, column: 20, scope: !2218)
!2220 = !DILocation(line: 1758, column: 7, scope: !2198)
!2221 = !DILocation(line: 1762, column: 16, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1762, column: 7)
!2223 = !DILocation(line: 1762, column: 7, scope: !2198)
!2224 = !DILocation(line: 0, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 1766, column: 5)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1764, column: 10)
!2227 = !DILocation(line: 1763, column: 34, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1762, column: 33)
!2229 = !DILocation(line: 1763, column: 18, scope: !2228)
!2230 = !DILocation(line: 1764, column: 3, scope: !2228)
!2231 = !DILocation(line: 1753, column: 25, scope: !2198)
!2232 = !DILocation(line: 1766, column: 31, scope: !2225)
!2233 = !DILocation(line: 1753, column: 32, scope: !2198)
!2234 = !DILocation(line: 1766, column: 10, scope: !2225)
!2235 = !DILocation(line: 1766, column: 42, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 1766, column: 5)
!2237 = !DILocation(line: 1766, column: 5, scope: !2225)
!2238 = !DILocation(line: 1767, column: 16, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1767, column: 11)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 1766, column: 83)
!2241 = !DILocation(line: 1767, column: 11, scope: !2240)
!2242 = distinct !{!2242, !2237, !2243}
!2243 = !DILocation(line: 1773, column: 5, scope: !2225)
!2244 = !DILocation(line: 1768, column: 9, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 1768, column: 9)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 1767, column: 29)
!2247 = !DILocation(line: 1769, column: 32, scope: !2246)
!2248 = !DILocation(line: 1769, column: 15, scope: !2246)
!2249 = !DILocation(line: 1769, column: 20, scope: !2246)
!2250 = !DILocation(line: 1770, column: 24, scope: !2246)
!2251 = !DILocation(line: 1771, column: 9, scope: !2246)
!2252 = !DILocation(line: 1766, column: 77, scope: !2236)
!2253 = !DILocation(line: 1766, column: 5, scope: !2236)
!2254 = !DILocation(line: 0, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1758, column: 29)
!2256 = !DILocation(line: 1775, column: 1, scope: !2198)
