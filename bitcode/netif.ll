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
@__A_VARIABLE = internal global i32 0

; Function Attrs: norecurse noredzone nounwind
define dso_local void @netif_init() local_unnamed_addr #0 !dbg !255 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  ret void, !dbg !259
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #1 !dbg !260 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !266
  br i1 %3, label %4, label %5, !dbg !269

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #8, !dbg !270
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !273
  tail call void @ukplat_terminate(i32 3) #9, !dbg !273
  unreachable, !dbg !273

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netif* %1, null, !dbg !277
  br i1 %6, label %7, label %8, !dbg !280

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !281
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !284
  tail call void @ukplat_terminate(i32 3) #9, !dbg !284
  unreachable, !dbg !284

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !288
  %10 = load i8, i8* %9, align 1, !dbg !288, !tbaa !290
  %11 = and i8 %10, 24, !dbg !297
  %12 = icmp eq i8 %11, 0, !dbg !297
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
  ret i8 %18, !dbg !305
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !227 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !307
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !307
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !309
  call void @llvm.va_start(i8* nonnull %3), !dbg !309
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.28, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !310
  call void @llvm.va_end(i8* nonnull %3), !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  ret void, !dbg !314
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @ethernet_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_add_noaddr(%struct.netif*, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #1 !dbg !315 {
  %5 = tail call %struct.netif* @netif_add(%struct.netif* %0, %struct.ip4_addr* null, %struct.ip4_addr* null, %struct.ip4_addr* null, i8* %1, i8 (%struct.netif*)* %2, i8 (%struct.pbuf*, %struct.netif*)* %3) #8, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  ret %struct.netif* %5, !dbg !332
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_add(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #1 !dbg !333 {
  %8 = icmp eq %struct.netif* %0, null, !dbg !355
  br i1 %8, label %9, label %10, !dbg !358

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !359
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !362
  tail call void @ukplat_terminate(i32 3) #9, !dbg !362
  unreachable, !dbg !362

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 (%struct.netif*)* %5, null, !dbg !366
  br i1 %11, label %12, label %13, !dbg !369

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !370
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !373
  tail call void @ukplat_terminate(i32 3) #9, !dbg !373
  unreachable, !dbg !373

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.ip4_addr* %1, null, !dbg !377
  %15 = icmp eq %struct.ip4_addr* %2, null, !dbg !379
  %16 = icmp eq %struct.ip4_addr* %3, null, !dbg !381
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !383
  %18 = bitcast i32* %17 to <4 x i32>*, !dbg !383
  store <4 x i32> zeroinitializer, <4 x i32>* %18, align 8, !dbg !383, !tbaa !386
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !383
  store i8 0, i8* %19, align 8, !dbg !383, !tbaa !386
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 1, !dbg !387
  store i8 0, i8* %20, align 4, !dbg !387, !tbaa !392
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !393
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !393
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 8, !dbg !393, !tbaa !386
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !393
  store i8 0, i8* %23, align 8, !dbg !393, !tbaa !386
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !396
  store i8 0, i8* %24, align 4, !dbg !396, !tbaa !401
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !402
  %26 = bitcast i32* %25 to <4 x i32>*, !dbg !402
  store <4 x i32> zeroinitializer, <4 x i32>* %26, align 8, !dbg !402, !tbaa !386
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !402
  store i8 0, i8* %27, align 8, !dbg !402, !tbaa !386
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !405
  store i8 0, i8* %28, align 4, !dbg !405, !tbaa !410
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 9, !dbg !411
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)* @netif_null_output_ip4, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %29, align 8, !dbg !412, !tbaa !413
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !415
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !415
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 8, !dbg !415, !tbaa !386
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !415
  store i8 0, i8* %32, align 8, !dbg !415, !tbaa !386
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 1, !dbg !421
  store i8 6, i8* %33, align 4, !dbg !421, !tbaa !426
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !427
  store i8 0, i8* %34, align 1, !dbg !428, !tbaa !386
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 0, !dbg !429
  store i32 0, i32* %35, align 4, !dbg !430, !tbaa !431
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 0, !dbg !433
  store i32 0, i32* %36, align 4, !dbg !434, !tbaa !431
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !415
  %38 = bitcast i32* %37 to <4 x i32>*, !dbg !415
  store <4 x i32> zeroinitializer, <4 x i32>* %38, align 8, !dbg !415, !tbaa !386
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !415
  store i8 0, i8* %39, align 8, !dbg !415, !tbaa !386
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 1, !dbg !421
  store i8 6, i8* %40, align 4, !dbg !421, !tbaa !426
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !427
  store i8 0, i8* %41, align 1, !dbg !428, !tbaa !386
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !429
  store i32 0, i32* %42, align 4, !dbg !430, !tbaa !431
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 1, !dbg !433
  store i32 0, i32* %43, align 4, !dbg !434, !tbaa !431
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !415
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !415
  store <4 x i32> zeroinitializer, <4 x i32>* %45, align 8, !dbg !415, !tbaa !386
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !415
  store i8 0, i8* %46, align 8, !dbg !415, !tbaa !386
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 1, !dbg !421
  store i8 6, i8* %47, align 4, !dbg !421, !tbaa !426
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !427
  store i8 0, i8* %48, align 1, !dbg !428, !tbaa !386
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !429
  store i32 0, i32* %49, align 4, !dbg !430, !tbaa !431
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 2, !dbg !433
  store i32 0, i32* %50, align 4, !dbg !434, !tbaa !431
  %51 = select i1 %14, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !435
  %52 = select i1 %15, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %2, !dbg !436
  %53 = select i1 %16, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %3, !dbg !437
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 11, !dbg !438
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)* @netif_null_output_ip6, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %54, align 8, !dbg !439, !tbaa !440
  %55 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !441
  store i16 -1, i16* %55, align 8, !dbg !441, !tbaa !443
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !444
  store i16 0, i16* %56, align 2, !dbg !445, !tbaa !446
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !447
  store i8 0, i8* %57, align 1, !dbg !448, !tbaa !290
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !449
  %59 = bitcast i8** %58 to i8*, !dbg !449
  %60 = tail call i8* @memset(i8* nonnull %59, i32 0, i64 8) #10, !dbg !450
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 24, !dbg !451
  store i8 0, i8* %61, align 1, !dbg !452, !tbaa !453
  tail call void @nd6_restart_netif(%struct.netif* nonnull %0) #10, !dbg !454
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !455
  store void (%struct.netif*)* null, void (%struct.netif*)** %62, align 8, !dbg !456, !tbaa !457
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !458
  store i8 (%struct.netif*, %struct.ip6_addr*, i32)* null, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %63, align 8, !dbg !459, !tbaa !460
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !461
  store i8* %4, i8** %64, align 8, !dbg !462, !tbaa !463
  %65 = load i8, i8* @netif_num, align 1, !dbg !464, !tbaa !386
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !465
  store i8 %65, i8* %66, align 8, !dbg !466, !tbaa !467
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 8, !dbg !468
  %68 = bitcast {}** %67 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !468
  store i8 (%struct.pbuf*, %struct.netif*)* %6, i8 (%struct.pbuf*, %struct.netif*)** %68, align 8, !dbg !469, !tbaa !470
  tail call void @netif_set_addr(%struct.netif* nonnull %0, %struct.ip4_addr* %51, %struct.ip4_addr* %52, %struct.ip4_addr* %53) #8, !dbg !471
  %69 = tail call signext i8 %5(%struct.netif* nonnull %0) #10, !dbg !472
  %70 = icmp eq i8 %69, 0, !dbg !474
  br i1 %70, label %71, label %118, !dbg !475

; <label>:71:                                     ; preds = %13
  %72 = load i16, i16* %56, align 2, !dbg !476, !tbaa !446
  %73 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !477
  store i16 %72, i16* %73, align 4, !dbg !478, !tbaa !479
  %74 = load i8, i8* %66, align 8, !dbg !480, !tbaa !467
  %75 = load %struct.netif*, %struct.netif** @netif_list, align 8, !tbaa !483
  %76 = icmp eq %struct.netif* %75, null
  %77 = ptrtoint %struct.netif* %75 to i64, !dbg !484
  br label %78, !dbg !484

; <label>:78:                                     ; preds = %101, %71
  %79 = phi i8 [ %102, %101 ], [ %74, %71 ], !dbg !480
  %80 = icmp eq i8 %79, -1, !dbg !485
  br i1 %80, label %81, label %82, !dbg !486

; <label>:81:                                     ; preds = %78
  store i8 0, i8* %66, align 8, !dbg !487, !tbaa !467
  br label %82, !dbg !489

; <label>:82:                                     ; preds = %81, %78
  %83 = phi i8 [ 0, %81 ], [ %79, %78 ]
  br i1 %76, label %103, label %88, !dbg !492

; <label>:84:                                     ; preds = %97
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %89, i64 0, i32 0, !dbg !494
  %86 = load %struct.netif*, %struct.netif** %85, align 8, !dbg !496, !tbaa !483
  %87 = icmp eq %struct.netif* %86, null, !dbg !497
  br i1 %87, label %103, label %88, !dbg !492, !llvm.loop !498

; <label>:88:                                     ; preds = %82, %84
  %89 = phi %struct.netif* [ %86, %84 ], [ %75, %82 ]
  %90 = phi i32 [ %94, %84 ], [ 0, %82 ]
  %91 = icmp eq %struct.netif* %89, %0, !dbg !500
  br i1 %91, label %92, label %93, !dbg !504

; <label>:92:                                     ; preds = %88
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !505
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !508
  tail call void @ukplat_terminate(i32 3) #9, !dbg !508
  unreachable, !dbg !508

; <label>:93:                                     ; preds = %88
  %94 = add nuw nsw i32 %90, 1, !dbg !512
  %95 = icmp ult i32 %94, 256, !dbg !513
  br i1 %95, label %97, label %96, !dbg !516

; <label>:96:                                     ; preds = %93
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !517
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !520
  tail call void @ukplat_terminate(i32 3) #9, !dbg !520
  unreachable, !dbg !520

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.netif, %struct.netif* %89, i64 0, i32 23, !dbg !524
  %99 = load i8, i8* %98, align 8, !dbg !524, !tbaa !467
  %100 = icmp eq i8 %99, %83, !dbg !526
  br i1 %100, label %101, label %84, !dbg !527

; <label>:101:                                    ; preds = %97
  %102 = add i8 %83, 1, !dbg !528
  store i8 %102, i8* %66, align 8, !dbg !528, !tbaa !467
  br label %78, !dbg !530

; <label>:103:                                    ; preds = %82, %84
  %104 = icmp eq i8 %83, -2, !dbg !531
  %105 = add i8 %83, 1, !dbg !533
  %106 = select i1 %104, i8 0, i8 %105, !dbg !535
  store i8 %106, i8* @netif_num, align 1, !dbg !536, !tbaa !386
  %107 = bitcast %struct.netif* %0 to i64*, !dbg !538
  store i64 %77, i64* %107, align 8, !dbg !538, !tbaa !539
  store %struct.netif* %0, %struct.netif** @netif_list, align 8, !dbg !540, !tbaa !483
  %108 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !552, !tbaa !483
  %109 = icmp eq %struct.netif_ext_callback* %108, null, !dbg !554
  br i1 %109, label %117, label %110, !dbg !555

; <label>:110:                                    ; preds = %103, %110
  %111 = phi %struct.netif_ext_callback* [ %115, %110 ], [ %108, %103 ]
  %112 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %111, i64 0, i32 0, !dbg !556
  %113 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %112, align 8, !dbg !556, !tbaa !557
  tail call void %113(%struct.netif* nonnull %0, i16 zeroext 1, %union.netif_ext_callback_args_t* null) #10, !dbg !559
  %114 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %111, i64 0, i32 1, !dbg !560
  %115 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %114, align 8, !dbg !552, !tbaa !483
  %116 = icmp eq %struct.netif_ext_callback* %115, null, !dbg !554
  br i1 %116, label %117, label %110, !dbg !555, !llvm.loop !561

; <label>:117:                                    ; preds = %110, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br label %118, !dbg !565

; <label>:118:                                    ; preds = %13, %117
  %119 = phi %struct.netif* [ %0, %117 ], [ null, %13 ], !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  ret %struct.netif* %119, !dbg !567
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #6

; Function Attrs: noredzone nounwind
define internal signext i8 @netif_null_output_ip4(%struct.netif* nocapture readnone, %struct.pbuf* nocapture readnone, %struct.ip4_addr* nocapture readnone) #1 !dbg !568 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  ret i8 -12, !dbg !576
}

; Function Attrs: noredzone nounwind
define internal signext i8 @netif_null_output_ip6(%struct.netif* nocapture readnone, %struct.pbuf* nocapture readnone, %struct.ip6_addr* nocapture readnone) #1 !dbg !577 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  ret i8 -12, !dbg !585
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @nd6_restart_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_addr(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !586 {
  %5 = alloca %union.netif_ext_callback_args_t, align 8
  %6 = alloca %struct.ip_addr, align 4
  %7 = alloca %struct.ip_addr, align 4
  %8 = alloca %struct.ip_addr, align 4
  %9 = bitcast %union.netif_ext_callback_args_t* %5 to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !608
  %10 = bitcast %struct.ip_addr* %6 to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !609
  %11 = bitcast %struct.ip_addr* %7 to i8*, !dbg !610
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !610
  %12 = bitcast %struct.ip_addr* %8 to i8*, !dbg !613
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7, !dbg !613
  %13 = icmp eq %struct.ip4_addr* %1, null, !dbg !614
  %14 = select i1 %13, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !616
  %15 = icmp eq %struct.ip4_addr* %2, null, !dbg !617
  %16 = select i1 %15, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %2, !dbg !619
  %17 = icmp eq %struct.ip4_addr* %3, null, !dbg !620
  %18 = select i1 %17, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %3, !dbg !622
  %19 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %14, i64 0, i32 0, !dbg !623
  %20 = load i32, i32* %19, align 4, !dbg !623, !tbaa !624
  %21 = icmp eq i32 %20, 0, !dbg !623
  br i1 %21, label %22, label %27, !dbg !626

; <label>:22:                                     ; preds = %4
  %23 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* %0, %struct.ip4_addr* %14, %struct.ip_addr* nonnull %8) #8, !dbg !628
  %24 = icmp eq i32 %23, 0, !dbg !628
  br i1 %24, label %27, label %25, !dbg !632

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 0, !dbg !633
  store %struct.ip_addr* %8, %struct.ip_addr** %26, align 8, !dbg !635, !tbaa !386
  br label %27, !dbg !636

; <label>:27:                                     ; preds = %22, %25, %4
  %28 = phi i16 [ 16, %25 ], [ 0, %22 ], [ 0, %4 ], !dbg !637
  %29 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %16, i64 0, i32 0, !dbg !651
  %30 = load i32, i32* %29, align 4, !dbg !651, !tbaa !624
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !651
  %32 = load i32, i32* %31, align 8, !dbg !651, !tbaa !386
  %33 = icmp eq i32 %30, %32, !dbg !651
  br i1 %33, label %34, label %35, !dbg !653

; <label>:34:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %61, !dbg !655

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !656
  %37 = load i8, i8* %36, align 4, !dbg !656, !tbaa !426
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 1, !dbg !656
  store i8 %37, i8* %38, align 4, !dbg !656, !tbaa !426
  %39 = icmp eq i8 %37, 6, !dbg !660
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !662
  store i32 %32, i32* %40, align 4, !dbg !662, !tbaa !386
  br i1 %39, label %41, label %50, !dbg !665

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !662
  %43 = load i32, i32* %42, align 4, !dbg !662, !tbaa !386
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !662
  %45 = load i32, i32* %44, align 8, !dbg !662, !tbaa !386
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !662
  %47 = load i32, i32* %46, align 4, !dbg !662, !tbaa !386
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !662
  %49 = load i8, i8* %48, align 8, !dbg !662, !tbaa !386
  br label %50, !dbg !666

; <label>:50:                                     ; preds = %35, %41
  %51 = phi i32 [ %47, %41 ], [ 0, %35 ]
  %52 = phi i32 [ %45, %41 ], [ 0, %35 ]
  %53 = phi i32 [ %43, %41 ], [ 0, %35 ]
  %54 = phi i8 [ %49, %41 ], [ 0, %35 ]
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !667
  store i32 %51, i32* %55, align 4, !dbg !667
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !667
  store i32 %52, i32* %56, align 4, !dbg !667
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !667
  store i32 %53, i32* %57, align 4, !dbg !667
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 1, !dbg !662
  store i8 %54, i8* %58, align 4, !dbg !662
  store i32 %30, i32* %31, align 8, !dbg !670, !tbaa !386
  store i8 0, i8* %36, align 4, !dbg !671, !tbaa !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %59 = or i16 %28, 64, !dbg !673
  %60 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 1, !dbg !675
  store %struct.ip_addr* %6, %struct.ip_addr** %60, align 8, !dbg !676, !tbaa !386
  br label %61, !dbg !677

; <label>:61:                                     ; preds = %34, %50
  %62 = phi i16 [ %59, %50 ], [ %28, %34 ], !dbg !678
  %63 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %18, i64 0, i32 0, !dbg !690
  %64 = load i32, i32* %63, align 4, !dbg !690, !tbaa !624
  %65 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !690
  %66 = load i32, i32* %65, align 8, !dbg !690, !tbaa !386
  %67 = icmp eq i32 %64, %66, !dbg !690
  br i1 %67, label %68, label %69, !dbg !692

; <label>:68:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %95, !dbg !694

; <label>:69:                                     ; preds = %61
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !695
  %71 = load i8, i8* %70, align 4, !dbg !695, !tbaa !426
  %72 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !695
  store i8 %71, i8* %72, align 4, !dbg !695, !tbaa !426
  %73 = icmp eq i8 %71, 6, !dbg !699
  %74 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !701
  store i32 %66, i32* %74, align 4, !dbg !701, !tbaa !386
  br i1 %73, label %75, label %84, !dbg !704

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 1, !dbg !701
  %77 = load i32, i32* %76, align 4, !dbg !701, !tbaa !386
  %78 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 2, !dbg !701
  %79 = load i32, i32* %78, align 8, !dbg !701, !tbaa !386
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 3, !dbg !701
  %81 = load i32, i32* %80, align 4, !dbg !701, !tbaa !386
  %82 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !701
  %83 = load i8, i8* %82, align 8, !dbg !701, !tbaa !386
  br label %84, !dbg !705

; <label>:84:                                     ; preds = %69, %75
  %85 = phi i32 [ %81, %75 ], [ 0, %69 ]
  %86 = phi i32 [ %79, %75 ], [ 0, %69 ]
  %87 = phi i32 [ %77, %75 ], [ 0, %69 ]
  %88 = phi i8 [ %83, %75 ], [ 0, %69 ]
  %89 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !706
  store i32 %85, i32* %89, align 4, !dbg !706
  %90 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !706
  store i32 %86, i32* %90, align 4, !dbg !706
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !706
  store i32 %87, i32* %91, align 4, !dbg !706
  %92 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !701
  store i8 %88, i8* %92, align 4, !dbg !701
  store i32 %64, i32* %65, align 8, !dbg !709, !tbaa !386
  store i8 0, i8* %70, align 4, !dbg !710, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %93 = or i16 %62, 32, !dbg !712
  %94 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 2, !dbg !714
  store %struct.ip_addr* %7, %struct.ip_addr** %94, align 8, !dbg !715, !tbaa !386
  br label %95, !dbg !716

; <label>:95:                                     ; preds = %68, %84
  %96 = phi i16 [ %93, %84 ], [ %62, %68 ], !dbg !717
  br i1 %21, label %103, label %97, !dbg !718

; <label>:97:                                     ; preds = %95
  %98 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* nonnull %0, %struct.ip4_addr* %14, %struct.ip_addr* nonnull %8) #8, !dbg !719
  %99 = icmp eq i32 %98, 0, !dbg !719
  br i1 %99, label %103, label %100, !dbg !723

; <label>:100:                                    ; preds = %97
  %101 = or i16 %96, 16, !dbg !724
  %102 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 0, !dbg !726
  store %struct.ip_addr* %8, %struct.ip_addr** %102, align 8, !dbg !727, !tbaa !386
  br label %105, !dbg !728

; <label>:103:                                    ; preds = %97, %95
  %104 = icmp eq i16 %96, 0, !dbg !729
  br i1 %104, label %118, label %105, !dbg !728

; <label>:105:                                    ; preds = %103, %100
  %106 = phi i16 [ %101, %100 ], [ %96, %103 ]
  %107 = or i16 %106, 128, !dbg !731
  %108 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !739, !tbaa !483
  %109 = icmp eq %struct.netif_ext_callback* %108, null, !dbg !740
  br i1 %109, label %117, label %110, !dbg !741

; <label>:110:                                    ; preds = %105, %110
  %111 = phi %struct.netif_ext_callback* [ %115, %110 ], [ %108, %105 ]
  %112 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %111, i64 0, i32 0, !dbg !742
  %113 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %112, align 8, !dbg !742, !tbaa !557
  call void %113(%struct.netif* nonnull %0, i16 zeroext %107, %union.netif_ext_callback_args_t* nonnull %5) #10, !dbg !743
  %114 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %111, i64 0, i32 1, !dbg !744
  %115 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %114, align 8, !dbg !739, !tbaa !483
  %116 = icmp eq %struct.netif_ext_callback* %115, null, !dbg !740
  br i1 %116, label %117, label %110, !dbg !741, !llvm.loop !561

; <label>:117:                                    ; preds = %110, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br label %118, !dbg !746

; <label>:118:                                    ; preds = %103, %117
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  ret void, !dbg !747
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #6

; Function Attrs: noredzone nounwind
define dso_local void @netif_invoke_ext_callback(%struct.netif*, i16 zeroext, %union.netif_ext_callback_args_t*) local_unnamed_addr #1 !dbg !542 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !752
  br i1 %4, label %8, label %5, !dbg !755

; <label>:5:                                      ; preds = %3
  %6 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !756, !tbaa !483
  %7 = icmp eq %struct.netif_ext_callback* %6, null, !dbg !757
  br i1 %7, label %16, label %9, !dbg !562

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !758
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !761
  tail call void @ukplat_terminate(i32 3) #9, !dbg !761
  unreachable, !dbg !761

; <label>:9:                                      ; preds = %5, %9
  %10 = phi %struct.netif_ext_callback* [ %14, %9 ], [ %6, %5 ]
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %10, i64 0, i32 0, !dbg !765
  %12 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %11, align 8, !dbg !765, !tbaa !557
  tail call void %12(%struct.netif* nonnull %0, i16 zeroext %1, %union.netif_ext_callback_args_t* %2) #10, !dbg !766
  %13 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %10, i64 0, i32 1, !dbg !767
  %14 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %13, align 8, !dbg !756, !tbaa !483
  %15 = icmp eq %struct.netif_ext_callback* %14, null, !dbg !757
  br i1 %15, label %16, label %9, !dbg !562, !llvm.loop !561

; <label>:16:                                     ; preds = %9, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  ret void, !dbg !768
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_ipaddr(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !769 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !781
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !781
  %6 = icmp eq %struct.netif* %0, null, !dbg !782
  br i1 %6, label %7, label %8, !dbg !785

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !786
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !789
  tail call void @ukplat_terminate(i32 3) #9, !dbg !789
  unreachable, !dbg !789

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !793
  %10 = select i1 %9, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !795
  %11 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* nonnull %0, %struct.ip4_addr* %10, %struct.ip_addr* nonnull %3) #8, !dbg !797
  %12 = icmp eq i32 %11, 0, !dbg !797
  br i1 %12, label %26, label %13, !dbg !798

; <label>:13:                                     ; preds = %8
  %14 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #7, !dbg !799
  %15 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 0, !dbg !800
  store %struct.ip_addr* %3, %struct.ip_addr** %15, align 8, !dbg !801, !tbaa !386
  %16 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !808, !tbaa !483
  %17 = icmp eq %struct.netif_ext_callback* %16, null, !dbg !809
  br i1 %17, label %25, label %18, !dbg !810

; <label>:18:                                     ; preds = %13, %18
  %19 = phi %struct.netif_ext_callback* [ %23, %18 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %19, i64 0, i32 0, !dbg !811
  %21 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %20, align 8, !dbg !811, !tbaa !557
  call void %21(%struct.netif* nonnull %0, i16 zeroext 16, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !812
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %19, i64 0, i32 1, !dbg !813
  %23 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %22, align 8, !dbg !808, !tbaa !483
  %24 = icmp eq %struct.netif_ext_callback* %23, null, !dbg !809
  br i1 %24, label %25, label %18, !dbg !810, !llvm.loop !561

; <label>:25:                                     ; preds = %18, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #7, !dbg !815
  br label %26, !dbg !816

; <label>:26:                                     ; preds = %8, %25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  ret void, !dbg !817
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @netif_do_set_ipaddr(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip_addr*) unnamed_addr #1 !dbg !818 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = icmp eq %struct.ip4_addr* %1, null, !dbg !829
  br i1 %5, label %6, label %7, !dbg !832

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !833
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !836
  tail call void @ukplat_terminate(i32 3) #9, !dbg !836
  unreachable, !dbg !836

; <label>:7:                                      ; preds = %3
  %8 = icmp eq %struct.ip_addr* %2, null, !dbg !840
  br i1 %8, label %9, label %10, !dbg !843

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !844
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !847
  tail call void @ukplat_terminate(i32 3) #9, !dbg !847
  unreachable, !dbg !847

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !851
  %12 = load i32, i32* %11, align 4, !dbg !851, !tbaa !624
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !851
  %14 = load i32, i32* %13, align 8, !dbg !851, !tbaa !386
  %15 = icmp eq i32 %12, %14, !dbg !851
  br i1 %15, label %67, label %16, !dbg !852

; <label>:16:                                     ; preds = %10
  %17 = bitcast %struct.ip_addr* %4 to i8*, !dbg !853
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !853
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !854
  store i32 %12, i32* %18, align 4, !dbg !854, !tbaa !431
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !855
  store i8 0, i8* %19, align 4, !dbg !855, !tbaa !426
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 1, !dbg !857
  %21 = load i8, i8* %20, align 4, !dbg !857, !tbaa !426
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !857
  store i8 %21, i8* %22, align 4, !dbg !857, !tbaa !426
  %23 = load i8, i8* %20, align 4, !dbg !860, !tbaa !426
  %24 = icmp eq i8 %23, 6, !dbg !860
  %25 = load i32, i32* %13, align 8, !dbg !862, !tbaa !386
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !862
  store i32 %25, i32* %26, align 4, !dbg !862, !tbaa !386
  br i1 %24, label %27, label %39, !dbg !865

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !862
  %29 = load i32, i32* %28, align 4, !dbg !862, !tbaa !386
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !862
  store i32 %29, i32* %30, align 4, !dbg !862, !tbaa !386
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !862
  %32 = load i32, i32* %31, align 8, !dbg !862, !tbaa !386
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !862
  store i32 %32, i32* %33, align 4, !dbg !862, !tbaa !386
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !862
  %35 = load i32, i32* %34, align 4, !dbg !862, !tbaa !386
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !862
  store i32 %35, i32* %36, align 4, !dbg !862, !tbaa !386
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !862
  %38 = load i8, i8* %37, align 8, !dbg !862, !tbaa !386
  br label %43, !dbg !866

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !867
  store i32 0, i32* %40, align 4, !dbg !867, !tbaa !386
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !867
  store i32 0, i32* %41, align 4, !dbg !867, !tbaa !386
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !867
  store i32 0, i32* %42, align 4, !dbg !867, !tbaa !386
  br label %43

; <label>:43:                                     ; preds = %27, %39
  %44 = phi i8 [ %38, %27 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 1, !dbg !862
  store i8 %44, i8* %45, align 4, !dbg !862
  call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %2, %struct.ip_addr* nonnull %4) #10, !dbg !880
  call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %2, %struct.ip_addr* nonnull %4) #10, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  %46 = load i32, i32* %11, align 4, !dbg !883, !tbaa !624
  store i32 %46, i32* %13, align 8, !dbg !883, !tbaa !386
  store i8 0, i8* %20, align 4, !dbg !884, !tbaa !392
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !895
  %48 = load i8, i8* %47, align 1, !dbg !895, !tbaa !290
  %49 = zext i8 %48 to i32, !dbg !897
  %50 = and i32 %49, 5, !dbg !898
  %51 = icmp eq i32 %50, 5, !dbg !898
  br i1 %51, label %52, label %61, !dbg !898

; <label>:52:                                     ; preds = %43
  %53 = icmp eq i32 %46, 0, !dbg !899
  %54 = and i32 %49, 8, !dbg !901
  %55 = icmp eq i32 %54, 0, !dbg !901
  %56 = or i1 %55, %53, !dbg !904
  br i1 %56, label %61, label %57, !dbg !904

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !899
  %59 = bitcast %union.anon* %58 to %struct.ip4_addr*, !dbg !899
  %60 = call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %59) #10, !dbg !905
  br label %61, !dbg !907

; <label>:61:                                     ; preds = %52, %57, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !909
  %63 = load void (%struct.netif*)*, void (%struct.netif*)** %62, align 8, !dbg !909, !tbaa !457
  %64 = icmp eq void (%struct.netif*)* %63, null, !dbg !909
  br i1 %64, label %66, label %65, !dbg !912

; <label>:65:                                     ; preds = %61
  call void %63(%struct.netif* nonnull %0) #10, !dbg !913
  br label %66, !dbg !913

; <label>:66:                                     ; preds = %61, %65
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !915
  br label %67

; <label>:67:                                     ; preds = %10, %66
  %68 = phi i32 [ 1, %66 ], [ 0, %10 ], !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  ret i32 %68, !dbg !917
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_netmask(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !918 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !929
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !929
  %6 = icmp eq %struct.netif* %0, null, !dbg !931
  br i1 %6, label %7, label %8, !dbg !934

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !935
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !938
  tail call void @ukplat_terminate(i32 3) #9, !dbg !938
  unreachable, !dbg !938

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !942
  %10 = select i1 %9, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !944
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %10, i64 0, i32 0, !dbg !950
  %12 = load i32, i32* %11, align 4, !dbg !950, !tbaa !624
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !950
  %14 = load i32, i32* %13, align 8, !dbg !950, !tbaa !386
  %15 = icmp eq i32 %12, %14, !dbg !950
  br i1 %15, label %16, label %17, !dbg !951

; <label>:16:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br label %53, !dbg !953

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !954
  %19 = load i8, i8* %18, align 4, !dbg !954, !tbaa !426
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !954
  store i8 %19, i8* %20, align 4, !dbg !954, !tbaa !426
  %21 = icmp eq i8 %19, 6, !dbg !955
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !956
  store i32 %14, i32* %22, align 4, !dbg !956, !tbaa !386
  br i1 %21, label %23, label %32, !dbg !957

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !956
  %25 = load i32, i32* %24, align 4, !dbg !956, !tbaa !386
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !956
  %27 = load i32, i32* %26, align 8, !dbg !956, !tbaa !386
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !956
  %29 = load i32, i32* %28, align 4, !dbg !956, !tbaa !386
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !956
  %31 = load i8, i8* %30, align 8, !dbg !956, !tbaa !386
  br label %32, !dbg !958

; <label>:32:                                     ; preds = %17, %23
  %33 = phi i32 [ %25, %23 ], [ 0, %17 ]
  %34 = phi i32 [ %27, %23 ], [ 0, %17 ]
  %35 = phi i32 [ %29, %23 ], [ 0, %17 ]
  %36 = phi i8 [ %31, %23 ], [ 0, %17 ]
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !956
  store i32 %33, i32* %37, align 4, !dbg !956
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !956
  store i32 %34, i32* %38, align 4, !dbg !956
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !956
  store i32 %35, i32* %39, align 4, !dbg !956
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !956
  store i8 %36, i8* %40, align 4, !dbg !956
  store i32 %12, i32* %13, align 8, !dbg !959, !tbaa !386
  store i8 0, i8* %18, align 4, !dbg !960, !tbaa !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %41 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !961
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %41) #7, !dbg !961
  %42 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 1, !dbg !962
  store %struct.ip_addr* %3, %struct.ip_addr** %42, align 8, !dbg !963, !tbaa !386
  %43 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !970, !tbaa !483
  %44 = icmp eq %struct.netif_ext_callback* %43, null, !dbg !971
  br i1 %44, label %52, label %45, !dbg !972

; <label>:45:                                     ; preds = %32, %45
  %46 = phi %struct.netif_ext_callback* [ %50, %45 ], [ %43, %32 ]
  %47 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %46, i64 0, i32 0, !dbg !973
  %48 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %47, align 8, !dbg !973, !tbaa !557
  call void %48(%struct.netif* nonnull %0, i16 zeroext 64, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !974
  %49 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %46, i64 0, i32 1, !dbg !975
  %50 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %49, align 8, !dbg !970, !tbaa !483
  %51 = icmp eq %struct.netif_ext_callback* %50, null, !dbg !971
  br i1 %51, label %52, label %45, !dbg !972, !llvm.loop !561

; <label>:52:                                     ; preds = %45, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %41) #7, !dbg !977
  br label %53, !dbg !978

; <label>:53:                                     ; preds = %16, %52
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  ret void, !dbg !979
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_gw(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !980 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !991
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !991
  %6 = icmp eq %struct.netif* %0, null, !dbg !993
  br i1 %6, label %7, label %8, !dbg !996

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !997
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1000
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1000
  unreachable, !dbg !1000

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !1004
  %10 = select i1 %9, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !1006
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %10, i64 0, i32 0, !dbg !1012
  %12 = load i32, i32* %11, align 4, !dbg !1012, !tbaa !624
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !1012
  %14 = load i32, i32* %13, align 8, !dbg !1012, !tbaa !386
  %15 = icmp eq i32 %12, %14, !dbg !1012
  br i1 %15, label %16, label %17, !dbg !1013

; <label>:16:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br label %53, !dbg !1015

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !1016
  %19 = load i8, i8* %18, align 4, !dbg !1016, !tbaa !426
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !1016
  store i8 %19, i8* %20, align 4, !dbg !1016, !tbaa !426
  %21 = icmp eq i8 %19, 6, !dbg !1017
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1018
  store i32 %14, i32* %22, align 4, !dbg !1018, !tbaa !386
  br i1 %21, label %23, label %32, !dbg !1019

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 1, !dbg !1018
  %25 = load i32, i32* %24, align 4, !dbg !1018, !tbaa !386
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 2, !dbg !1018
  %27 = load i32, i32* %26, align 8, !dbg !1018, !tbaa !386
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 3, !dbg !1018
  %29 = load i32, i32* %28, align 4, !dbg !1018, !tbaa !386
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !1018
  %31 = load i8, i8* %30, align 8, !dbg !1018, !tbaa !386
  br label %32, !dbg !1020

; <label>:32:                                     ; preds = %17, %23
  %33 = phi i32 [ %25, %23 ], [ 0, %17 ]
  %34 = phi i32 [ %27, %23 ], [ 0, %17 ]
  %35 = phi i32 [ %29, %23 ], [ 0, %17 ]
  %36 = phi i8 [ %31, %23 ], [ 0, %17 ]
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1018
  store i32 %33, i32* %37, align 4, !dbg !1018
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1018
  store i32 %34, i32* %38, align 4, !dbg !1018
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1018
  store i32 %35, i32* %39, align 4, !dbg !1018
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !1018
  store i8 %36, i8* %40, align 4, !dbg !1018
  store i32 %12, i32* %13, align 8, !dbg !1021, !tbaa !386
  store i8 0, i8* %18, align 4, !dbg !1022, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  %41 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %41) #7, !dbg !1023
  %42 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 2, !dbg !1024
  store %struct.ip_addr* %3, %struct.ip_addr** %42, align 8, !dbg !1025, !tbaa !386
  %43 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1032, !tbaa !483
  %44 = icmp eq %struct.netif_ext_callback* %43, null, !dbg !1033
  br i1 %44, label %52, label %45, !dbg !1034

; <label>:45:                                     ; preds = %32, %45
  %46 = phi %struct.netif_ext_callback* [ %50, %45 ], [ %43, %32 ]
  %47 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %46, i64 0, i32 0, !dbg !1035
  %48 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %47, align 8, !dbg !1035, !tbaa !557
  call void %48(%struct.netif* nonnull %0, i16 zeroext 32, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !1036
  %49 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %46, i64 0, i32 1, !dbg !1037
  %50 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %49, align 8, !dbg !1032, !tbaa !483
  %51 = icmp eq %struct.netif_ext_callback* %50, null, !dbg !1033
  br i1 %51, label %52, label %45, !dbg !1034, !llvm.loop !561

; <label>:52:                                     ; preds = %45, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %41) #7, !dbg !1039
  br label %53, !dbg !1040

; <label>:53:                                     ; preds = %16, %52
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  ret void, !dbg !1041
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_remove(%struct.netif*) local_unnamed_addr #1 !dbg !1042 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1050
  br i1 %3, label %83, label %4, !dbg !1052

; <label>:4:                                      ; preds = %1
  %5 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1058, !tbaa !483
  %6 = icmp eq %struct.netif_ext_callback* %5, null, !dbg !1059
  br i1 %6, label %14, label %7, !dbg !1060

; <label>:7:                                      ; preds = %4, %7
  %8 = phi %struct.netif_ext_callback* [ %12, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %8, i64 0, i32 0, !dbg !1061
  %10 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %9, align 8, !dbg !1061, !tbaa !557
  tail call void %10(%struct.netif* nonnull %0, i16 zeroext 2, %union.netif_ext_callback_args_t* null) #10, !dbg !1062
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %8, i64 0, i32 1, !dbg !1063
  %12 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %11, align 8, !dbg !1058, !tbaa !483
  %13 = icmp eq %struct.netif_ext_callback* %12, null, !dbg !1059
  br i1 %13, label %14, label %7, !dbg !1060, !llvm.loop !561

; <label>:14:                                     ; preds = %7, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, !dbg !1065
  %16 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %15, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1065
  %17 = load i32, i32* %16, align 8, !dbg !1065, !tbaa !386
  %18 = icmp eq i32 %17, 0, !dbg !1065
  br i1 %18, label %20, label %19, !dbg !1067

; <label>:19:                                     ; preds = %14
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %15, %struct.ip_addr* null) #10, !dbg !1072
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %15, %struct.ip_addr* null) #10, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br label %20, !dbg !1075

; <label>:20:                                     ; preds = %19, %14
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1077
  %22 = load i8, i8* %21, align 1, !dbg !1077, !tbaa !386
  %23 = and i8 %22, 16, !dbg !1077
  %24 = icmp eq i8 %23, 0, !dbg !1077
  br i1 %24, label %27, label %25, !dbg !1082

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, !dbg !1083
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %26, %struct.ip_addr* null) #10, !dbg !1088
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %26, %struct.ip_addr* null) #10, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br label %27, !dbg !1091

; <label>:27:                                     ; preds = %20, %25
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1077
  %29 = load i8, i8* %28, align 1, !dbg !1077, !tbaa !386
  %30 = and i8 %29, 16, !dbg !1077
  %31 = icmp eq i8 %30, 0, !dbg !1077
  br i1 %31, label %86, label %84, !dbg !1082

; <label>:32:                                     ; preds = %93
  %33 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %33) #7, !dbg !1103
  store i8 0, i8* %33, align 8, !dbg !1104, !tbaa !386
  %34 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1111, !tbaa !483
  %35 = icmp eq %struct.netif_ext_callback* %34, null, !dbg !1112
  br i1 %35, label %45, label %36, !dbg !1113

; <label>:36:                                     ; preds = %32, %36
  %37 = phi %struct.netif_ext_callback* [ %41, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %37, i64 0, i32 0, !dbg !1114
  %39 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %38, align 8, !dbg !1114, !tbaa !557
  call void %39(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1115
  %40 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %37, i64 0, i32 1, !dbg !1116
  %41 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %40, align 8, !dbg !1111, !tbaa !483
  %42 = icmp eq %struct.netif_ext_callback* %41, null, !dbg !1112
  br i1 %42, label %43, label %36, !dbg !1113, !llvm.loop !561

; <label>:43:                                     ; preds = %36
  %44 = load i8, i8* %95, align 1, !dbg !1117, !tbaa !290
  br label %45, !dbg !1119

; <label>:45:                                     ; preds = %43, %32
  %46 = phi i8 [ %44, %43 ], [ %96, %32 ], !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %33) #7, !dbg !1120
  %47 = and i8 %46, -2, !dbg !1117
  store i8 %47, i8* %95, align 1, !dbg !1117, !tbaa !290
  %48 = and i8 %46, 8, !dbg !1121
  %49 = icmp eq i8 %48, 0, !dbg !1121
  br i1 %49, label %51, label %50, !dbg !1123

; <label>:50:                                     ; preds = %45
  call void @etharp_cleanup_netif(%struct.netif* nonnull %0) #10, !dbg !1124
  br label %51, !dbg !1126

; <label>:51:                                     ; preds = %50, %45
  call void @nd6_cleanup_netif(%struct.netif* nonnull %0) #10, !dbg !1127
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1128
  %53 = load void (%struct.netif*)*, void (%struct.netif*)** %52, align 8, !dbg !1128, !tbaa !457
  %54 = icmp eq void (%struct.netif*)* %53, null, !dbg !1128
  br i1 %54, label %56, label %55, !dbg !1131

; <label>:55:                                     ; preds = %51
  call void %53(%struct.netif* nonnull %0) #10, !dbg !1132
  br label %56, !dbg !1132

; <label>:56:                                     ; preds = %51, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br label %57, !dbg !1135

; <label>:57:                                     ; preds = %93, %56
  %58 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !1136, !tbaa !483
  %59 = icmp eq %struct.netif* %58, %0, !dbg !1138
  br i1 %59, label %60, label %61, !dbg !1139

; <label>:60:                                     ; preds = %57
  store %struct.netif* null, %struct.netif** @netif_default, align 8, !dbg !1146, !tbaa !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br label %61, !dbg !1148

; <label>:61:                                     ; preds = %60, %57
  %62 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1149, !tbaa !483
  %63 = icmp eq %struct.netif* %62, %0, !dbg !1150
  br i1 %63, label %64, label %67, !dbg !1151

; <label>:64:                                     ; preds = %61
  %65 = bitcast %struct.netif* %0 to i64*, !dbg !1152
  %66 = load i64, i64* %65, align 8, !dbg !1152, !tbaa !539
  store i64 %66, i64* bitcast (%struct.netif** @netif_list to i64*), align 8, !dbg !1154, !tbaa !483
  br label %78, !dbg !1155

; <label>:67:                                     ; preds = %61, %70
  %68 = phi %struct.netif* [ %72, %70 ], [ %62, %61 ], !dbg !1156
  %69 = icmp eq %struct.netif* %68, null, !dbg !1156
  br i1 %69, label %83, label %70, !dbg !1156

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %68, i64 0, i32 0, !dbg !1159
  %72 = load %struct.netif*, %struct.netif** %71, align 8, !dbg !1159, !tbaa !539
  %73 = icmp eq %struct.netif* %72, %0, !dbg !1163
  br i1 %73, label %74, label %67, !dbg !1164, !llvm.loop !1165

; <label>:74:                                     ; preds = %70
  %75 = bitcast %struct.netif* %0 to i64*, !dbg !1167
  %76 = load i64, i64* %75, align 8, !dbg !1167, !tbaa !539
  %77 = bitcast %struct.netif* %68 to i64*, !dbg !1169
  store i64 %76, i64* %77, align 8, !dbg !1169, !tbaa !539
  br label %78

; <label>:78:                                     ; preds = %74, %64
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 13, !dbg !1170
  %80 = load void (%struct.netif*)*, void (%struct.netif*)** %79, align 8, !dbg !1170, !tbaa !1172
  %81 = icmp eq void (%struct.netif*)* %80, null, !dbg !1173
  br i1 %81, label %83, label %82, !dbg !1174

; <label>:82:                                     ; preds = %78
  call void %80(%struct.netif* nonnull %0) #10, !dbg !1175
  br label %83, !dbg !1177

; <label>:83:                                     ; preds = %67, %82, %78, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  ret void, !dbg !1178

; <label>:84:                                     ; preds = %27
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, !dbg !1083
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %85, %struct.ip_addr* null) #10, !dbg !1088
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %85, %struct.ip_addr* null) #10, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br label %86, !dbg !1091

; <label>:86:                                     ; preds = %84, %27
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1077
  %88 = load i8, i8* %87, align 1, !dbg !1077, !tbaa !386
  %89 = and i8 %88, 16, !dbg !1077
  %90 = icmp eq i8 %89, 0, !dbg !1077
  br i1 %90, label %93, label %91, !dbg !1082

; <label>:91:                                     ; preds = %86
  %92 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, !dbg !1083
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %92, %struct.ip_addr* null) #10, !dbg !1088
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %92, %struct.ip_addr* null) #10, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br label %93, !dbg !1091

; <label>:93:                                     ; preds = %91, %86
  %94 = tail call signext i8 @mld6_stop(%struct.netif* nonnull %0) #10, !dbg !1179
  %95 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1180
  %96 = load i8, i8* %95, align 1, !dbg !1180, !tbaa !290
  %97 = and i8 %96, 1, !dbg !1180
  %98 = icmp eq i8 %97, 0, !dbg !1180
  br i1 %98, label %57, label %32, !dbg !1181
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_stop(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_down(%struct.netif*) local_unnamed_addr #1 !dbg !1093 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1183
  br i1 %3, label %4, label %5, !dbg !1186

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1187
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1190
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1190
  unreachable, !dbg !1190

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1194
  %7 = load i8, i8* %6, align 1, !dbg !1194, !tbaa !290
  %8 = and i8 %7, 1, !dbg !1195
  %9 = icmp eq i8 %8, 0, !dbg !1195
  br i1 %9, label %34, label %10, !dbg !1196

; <label>:10:                                     ; preds = %5
  %11 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1197
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1197
  store i8 0, i8* %11, align 8, !dbg !1198, !tbaa !386
  %12 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1205, !tbaa !483
  %13 = icmp eq %struct.netif_ext_callback* %12, null, !dbg !1206
  br i1 %13, label %23, label %14, !dbg !1207

; <label>:14:                                     ; preds = %10, %14
  %15 = phi %struct.netif_ext_callback* [ %19, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %15, i64 0, i32 0, !dbg !1208
  %17 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %16, align 8, !dbg !1208, !tbaa !557
  call void %17(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1209
  %18 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %15, i64 0, i32 1, !dbg !1210
  %19 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %18, align 8, !dbg !1205, !tbaa !483
  %20 = icmp eq %struct.netif_ext_callback* %19, null, !dbg !1206
  br i1 %20, label %21, label %14, !dbg !1207, !llvm.loop !561

; <label>:21:                                     ; preds = %14
  %22 = load i8, i8* %6, align 1, !dbg !1211, !tbaa !290
  br label %23, !dbg !1212

; <label>:23:                                     ; preds = %21, %10
  %24 = phi i8 [ %22, %21 ], [ %7, %10 ], !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1213
  %25 = and i8 %24, -2, !dbg !1211
  store i8 %25, i8* %6, align 1, !dbg !1211, !tbaa !290
  %26 = and i8 %24, 8, !dbg !1214
  %27 = icmp eq i8 %26, 0, !dbg !1214
  br i1 %27, label %29, label %28, !dbg !1215

; <label>:28:                                     ; preds = %23
  call void @etharp_cleanup_netif(%struct.netif* nonnull %0) #10, !dbg !1216
  br label %29, !dbg !1217

; <label>:29:                                     ; preds = %23, %28
  call void @nd6_cleanup_netif(%struct.netif* nonnull %0) #10, !dbg !1218
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1219
  %31 = load void (%struct.netif*)*, void (%struct.netif*)** %30, align 8, !dbg !1219, !tbaa !457
  %32 = icmp eq void (%struct.netif*)* %31, null, !dbg !1219
  br i1 %32, label %34, label %33, !dbg !1220

; <label>:33:                                     ; preds = %29
  call void %31(%struct.netif* nonnull %0) #10, !dbg !1221
  br label %34, !dbg !1221

; <label>:34:                                     ; preds = %29, %5, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  ret void, !dbg !1222
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_default(%struct.netif*) local_unnamed_addr #1 !dbg !1141 {
  store %struct.netif* %0, %struct.netif** @netif_default, align 8, !dbg !1224, !tbaa !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  ret void, !dbg !1225
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_up(%struct.netif*) local_unnamed_addr #1 !dbg !1226 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1234
  br i1 %3, label %4, label %5, !dbg !1237

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1238
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1241
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1241
  unreachable, !dbg !1241

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1245
  %7 = load i8, i8* %6, align 1, !dbg !1245, !tbaa !290
  %8 = and i8 %7, 1, !dbg !1246
  %9 = icmp eq i8 %8, 0, !dbg !1246
  br i1 %9, label %10, label %45, !dbg !1247

; <label>:10:                                     ; preds = %5
  %11 = or i8 %7, 1, !dbg !1248
  store i8 %11, i8* %6, align 1, !dbg !1248, !tbaa !290
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1250
  %13 = load void (%struct.netif*)*, void (%struct.netif*)** %12, align 8, !dbg !1250, !tbaa !457
  %14 = icmp eq void (%struct.netif*)* %13, null, !dbg !1250
  br i1 %14, label %16, label %15, !dbg !1253

; <label>:15:                                     ; preds = %10
  tail call void %13(%struct.netif* nonnull %0) #10, !dbg !1254
  br label %16, !dbg !1254

; <label>:16:                                     ; preds = %15, %10
  %17 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !1256
  store i8 1, i8* %17, align 8, !dbg !1257, !tbaa !386
  %18 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1264, !tbaa !483
  %19 = icmp eq %struct.netif_ext_callback* %18, null, !dbg !1265
  br i1 %19, label %27, label %20, !dbg !1266

; <label>:20:                                     ; preds = %16, %20
  %21 = phi %struct.netif_ext_callback* [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 0, !dbg !1267
  %23 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %22, align 8, !dbg !1267, !tbaa !557
  call void %23(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1268
  %24 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 1, !dbg !1269
  %25 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %24, align 8, !dbg !1264, !tbaa !483
  %26 = icmp eq %struct.netif_ext_callback* %25, null, !dbg !1265
  br i1 %26, label %27, label %20, !dbg !1266, !llvm.loop !561

; <label>:27:                                     ; preds = %20, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !1271
  %28 = load i8, i8* %6, align 1, !dbg !1275, !tbaa !290
  %29 = zext i8 %28 to i32, !dbg !1276
  %30 = and i32 %29, 5, !dbg !1277
  %31 = icmp eq i32 %30, 5, !dbg !1277
  br i1 %31, label %32, label %44, !dbg !1277

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1278
  %34 = getelementptr inbounds %union.anon, %union.anon* %33, i64 0, i32 0, i32 0, i64 0, !dbg !1278
  %35 = load i32, i32* %34, align 8, !dbg !1278, !tbaa !386
  %36 = icmp eq i32 %35, 0, !dbg !1278
  %37 = and i32 %29, 8, !dbg !1279
  %38 = icmp eq i32 %37, 0, !dbg !1279
  %39 = or i1 %38, %36, !dbg !1280
  br i1 %39, label %43, label %40, !dbg !1280

; <label>:40:                                     ; preds = %32
  %41 = bitcast %union.anon* %33 to %struct.ip4_addr*, !dbg !1278
  %42 = call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %41) #10, !dbg !1281
  br label %43, !dbg !1282

; <label>:43:                                     ; preds = %40, %32
  call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1283
  br label %44, !dbg !1286

; <label>:44:                                     ; preds = %27, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  call void @nd6_restart_netif(%struct.netif* nonnull %0) #10, !dbg !1288
  br label %45, !dbg !1289

; <label>:45:                                     ; preds = %5, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  ret void, !dbg !1290
}

; Function Attrs: noredzone
declare dso_local void @etharp_cleanup_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @nd6_cleanup_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_status_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #1 !dbg !1291 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1299
  br i1 %3, label %6, label %4, !dbg !1301

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1302
  store void (%struct.netif*)* %1, void (%struct.netif*)** %5, align 8, !dbg !1304, !tbaa !457
  br label %6, !dbg !1305

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  ret void, !dbg !1306
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_remove_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #1 !dbg !1307 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1313
  br i1 %3, label %6, label %4, !dbg !1315

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 13, !dbg !1316
  store void (%struct.netif*)* %1, void (%struct.netif*)** %5, align 8, !dbg !1318, !tbaa !1172
  br label %6, !dbg !1319

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  ret void, !dbg !1320
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_link_up(%struct.netif*) local_unnamed_addr #1 !dbg !1321 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1329
  br i1 %3, label %4, label %5, !dbg !1332

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1333
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1336
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1336
  unreachable, !dbg !1336

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1340
  %7 = load i8, i8* %6, align 1, !dbg !1340, !tbaa !290
  %8 = and i8 %7, 4, !dbg !1341
  %9 = icmp eq i8 %8, 0, !dbg !1341
  br i1 %9, label %10, label %39, !dbg !1342

; <label>:10:                                     ; preds = %5
  %11 = or i8 %7, 4, !dbg !1343
  store i8 %11, i8* %6, align 1, !dbg !1343, !tbaa !290
  %12 = zext i8 %11 to i32, !dbg !1348
  %13 = and i32 %12, 5, !dbg !1349
  %14 = icmp eq i32 %13, 5, !dbg !1349
  br i1 %14, label %15, label %27, !dbg !1349

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1350
  %17 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0, i32 0, i64 0, !dbg !1350
  %18 = load i32, i32* %17, align 8, !dbg !1350, !tbaa !386
  %19 = icmp eq i32 %18, 0, !dbg !1350
  %20 = and i32 %12, 8, !dbg !1351
  %21 = icmp eq i32 %20, 0, !dbg !1351
  %22 = or i1 %21, %19, !dbg !1352
  br i1 %22, label %26, label %23, !dbg !1352

; <label>:23:                                     ; preds = %15
  %24 = bitcast %union.anon* %16 to %struct.ip4_addr*, !dbg !1350
  %25 = tail call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %24) #10, !dbg !1353
  br label %26, !dbg !1354

; <label>:26:                                     ; preds = %23, %15
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1355
  br label %27, !dbg !1356

; <label>:27:                                     ; preds = %26, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  tail call void @nd6_restart_netif(%struct.netif* nonnull %0) #10, !dbg !1358
  %28 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1359
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #7, !dbg !1359
  store i8 1, i8* %28, align 8, !dbg !1360, !tbaa !386
  %29 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1367, !tbaa !483
  %30 = icmp eq %struct.netif_ext_callback* %29, null, !dbg !1368
  br i1 %30, label %38, label %31, !dbg !1369

; <label>:31:                                     ; preds = %27, %31
  %32 = phi %struct.netif_ext_callback* [ %36, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %32, i64 0, i32 0, !dbg !1370
  %34 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %33, align 8, !dbg !1370, !tbaa !557
  call void %34(%struct.netif* nonnull %0, i16 zeroext 4, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1371
  %35 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %32, i64 0, i32 1, !dbg !1372
  %36 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %35, align 8, !dbg !1367, !tbaa !483
  %37 = icmp eq %struct.netif_ext_callback* %36, null, !dbg !1368
  br i1 %37, label %38, label %31, !dbg !1369, !llvm.loop !561

; <label>:38:                                     ; preds = %31, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #7, !dbg !1374
  br label %39, !dbg !1375

; <label>:39:                                     ; preds = %5, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  ret void, !dbg !1376
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_link_down(%struct.netif*) local_unnamed_addr #1 !dbg !1377 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1385
  br i1 %3, label %4, label %5, !dbg !1388

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1389
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1392
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1392
  unreachable, !dbg !1392

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1396
  %7 = load i8, i8* %6, align 1, !dbg !1396, !tbaa !290
  %8 = and i8 %7, 4, !dbg !1397
  %9 = icmp eq i8 %8, 0, !dbg !1397
  br i1 %9, label %23, label %10, !dbg !1398

; <label>:10:                                     ; preds = %5
  %11 = and i8 %7, -5, !dbg !1399
  store i8 %11, i8* %6, align 1, !dbg !1399, !tbaa !290
  %12 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1401
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7, !dbg !1401
  store i8 0, i8* %12, align 8, !dbg !1402, !tbaa !386
  %13 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1409, !tbaa !483
  %14 = icmp eq %struct.netif_ext_callback* %13, null, !dbg !1410
  br i1 %14, label %22, label %15, !dbg !1411

; <label>:15:                                     ; preds = %10, %15
  %16 = phi %struct.netif_ext_callback* [ %20, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %16, i64 0, i32 0, !dbg !1412
  %18 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %17, align 8, !dbg !1412, !tbaa !557
  call void %18(%struct.netif* nonnull %0, i16 zeroext 4, %union.netif_ext_callback_args_t* nonnull %2) #10, !dbg !1413
  %19 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %16, i64 0, i32 1, !dbg !1414
  %20 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %19, align 8, !dbg !1409, !tbaa !483
  %21 = icmp eq %struct.netif_ext_callback* %20, null, !dbg !1410
  br i1 %21, label %22, label %15, !dbg !1411, !llvm.loop !561

; <label>:22:                                     ; preds = %15, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7, !dbg !1416
  br label %23, !dbg !1417

; <label>:23:                                     ; preds = %5, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  ret void, !dbg !1418
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set(%struct.netif*, i8 signext, %struct.ip6_addr* readonly) local_unnamed_addr #1 !dbg !1419 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !1429
  br i1 %4, label %5, label %6, !dbg !1432

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1433
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1436
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1436
  unreachable, !dbg !1436

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip6_addr* %2, null, !dbg !1440
  br i1 %7, label %8, label %9, !dbg !1443

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1444
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1447
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1447
  unreachable, !dbg !1447

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !1451
  %11 = load i32, i32* %10, align 4, !dbg !1451, !tbaa !431
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1, !dbg !1452
  %13 = load i32, i32* %12, align 4, !dbg !1452, !tbaa !431
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !1453
  %15 = load i32, i32* %14, align 4, !dbg !1453, !tbaa !431
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !1454
  %17 = load i32, i32* %16, align 4, !dbg !1454, !tbaa !431
  tail call void @netif_ip6_addr_set_parts(%struct.netif* nonnull %0, i8 signext %1, i32 %11, i32 %13, i32 %15, i32 %17) #8, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  ret void, !dbg !1456
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set_parts(%struct.netif*, i8 signext, i32, i32, i32, i32) local_unnamed_addr #1 !dbg !1457 {
  %7 = alloca %struct.ip_addr, align 16
  %8 = alloca %struct.ip_addr, align 4
  %9 = alloca %union.netif_ext_callback_args_t, align 8
  %10 = bitcast %struct.ip_addr* %7 to i8*, !dbg !1479
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !1479
  %11 = bitcast %struct.ip_addr* %8 to i8*, !dbg !1480
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1480
  %12 = icmp eq %struct.netif* %0, null, !dbg !1481
  br i1 %12, label %13, label %14, !dbg !1484

; <label>:13:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1485
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1488
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1488
  unreachable, !dbg !1488

; <label>:14:                                     ; preds = %6
  %15 = icmp slt i8 %1, 3, !dbg !1492
  br i1 %15, label %17, label %16, !dbg !1495

; <label>:16:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1496
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1499
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1499
  unreachable, !dbg !1499

; <label>:17:                                     ; preds = %14
  %18 = sext i8 %1 to i64, !dbg !1503
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, !dbg !1503
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %19, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1503
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 1, !dbg !1503
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 2, !dbg !1503
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 3, !dbg !1503
  %24 = bitcast %struct.ip_addr* %19 to <4 x i32>*, !dbg !1503
  %25 = load <4 x i32>, <4 x i32>* %24, align 8, !dbg !1503, !tbaa !386
  %26 = bitcast %struct.ip_addr* %7 to <4 x i32>*, !dbg !1503
  store <4 x i32> %25, <4 x i32>* %26, align 16, !dbg !1503, !tbaa !386
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 1, !dbg !1503
  %28 = load i8, i8* %27, align 8, !dbg !1503, !tbaa !386
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1503
  store i8 %28, i8* %29, align 16, !dbg !1503, !tbaa !386
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1505
  store i8 6, i8* %30, align 4, !dbg !1505, !tbaa !426
  %31 = extractelement <4 x i32> %25, i32 0, !dbg !1507
  %32 = icmp eq i32 %31, %2, !dbg !1507
  %33 = extractelement <4 x i32> %25, i32 1, !dbg !1508
  %34 = icmp eq i32 %33, %3, !dbg !1508
  %35 = and i1 %32, %34, !dbg !1509
  %36 = extractelement <4 x i32> %25, i32 2, !dbg !1510
  %37 = icmp eq i32 %36, %4, !dbg !1510
  %38 = and i1 %35, %37, !dbg !1509
  %39 = extractelement <4 x i32> %25, i32 3, !dbg !1511
  %40 = icmp eq i32 %39, %5, !dbg !1511
  %41 = and i1 %38, %40, !dbg !1509
  br i1 %41, label %103, label %42, !dbg !1509

; <label>:42:                                     ; preds = %17
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1512
  store i32 %2, i32* %43, align 4, !dbg !1512, !tbaa !386
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1512
  store i32 %3, i32* %44, align 4, !dbg !1512, !tbaa !386
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1512
  store i32 %4, i32* %45, align 4, !dbg !1512, !tbaa !386
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1512
  store i32 %5, i32* %46, align 4, !dbg !1512, !tbaa !386
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 1, !dbg !1512
  store i8 0, i8* %47, align 4, !dbg !1512, !tbaa !386
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 1, !dbg !1515
  store i8 6, i8* %48, align 4, !dbg !1515, !tbaa !426
  %49 = and i32 %2, 49407, !dbg !1517
  %50 = icmp eq i32 %49, 33022, !dbg !1517
  br i1 %50, label %51, label %55, !dbg !1517

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1517
  %53 = load i8, i8* %52, align 8, !dbg !1517, !tbaa !467
  %54 = add i8 %53, 1, !dbg !1517
  br label %55, !dbg !1517

; <label>:55:                                     ; preds = %42, %51
  %56 = phi i8 [ %54, %51 ], [ 0, %42 ]
  store i8 %56, i8* %47, align 4, !dbg !1517, !tbaa !386
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %18, !dbg !1518
  %58 = load i8, i8* %57, align 1, !dbg !1518, !tbaa !386
  %59 = and i8 %58, 16, !dbg !1518
  %60 = icmp eq i8 %59, 0, !dbg !1518
  br i1 %60, label %61, label %63, !dbg !1520

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 1, !dbg !1521
  store i8 6, i8* %62, align 4, !dbg !1521, !tbaa !426
  store i32 %2, i32* %20, align 8, !dbg !1524, !tbaa !386
  br label %68, !dbg !1528

; <label>:63:                                     ; preds = %55
  call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %19, %struct.ip_addr* nonnull %8) #10, !dbg !1534
  call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %19, %struct.ip_addr* nonnull %8) #10, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  %64 = load i8, i8* %48, align 4, !dbg !1521, !tbaa !426
  %65 = load i32, i32* %43, align 4, !dbg !1524, !tbaa !386
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 1, !dbg !1521
  store i8 %64, i8* %66, align 4, !dbg !1521, !tbaa !426
  %67 = icmp eq i8 %64, 6, !dbg !1537
  store i32 %65, i32* %20, align 8, !dbg !1524, !tbaa !386
  br i1 %67, label %68, label %73, !dbg !1528

; <label>:68:                                     ; preds = %61, %63
  %69 = load i32, i32* %44, align 4, !dbg !1524, !tbaa !386
  store i32 %69, i32* %21, align 4, !dbg !1524, !tbaa !386
  %70 = load i32, i32* %45, align 4, !dbg !1524, !tbaa !386
  store i32 %70, i32* %22, align 8, !dbg !1524, !tbaa !386
  %71 = load i32, i32* %46, align 4, !dbg !1524, !tbaa !386
  store i32 %71, i32* %23, align 4, !dbg !1524, !tbaa !386
  %72 = load i8, i8* %47, align 4, !dbg !1524, !tbaa !386
  br label %74, !dbg !1538

; <label>:73:                                     ; preds = %63
  store i32 0, i32* %23, align 4, !dbg !1539, !tbaa !386
  store i32 0, i32* %22, align 8, !dbg !1539, !tbaa !386
  store i32 0, i32* %21, align 4, !dbg !1539, !tbaa !386
  br label %74

; <label>:74:                                     ; preds = %73, %68
  %75 = phi i8 [ 0, %73 ], [ %72, %68 ]
  store i8 %75, i8* %27, align 8, !dbg !1539, !tbaa !386
  %76 = load i8, i8* %57, align 1, !dbg !1542, !tbaa !386
  %77 = and i8 %76, 16, !dbg !1542
  %78 = icmp eq i8 %77, 0, !dbg !1542
  br i1 %78, label %90, label %79, !dbg !1544

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1549
  %81 = load i8, i8* %80, align 1, !dbg !1549, !tbaa !290
  %82 = and i8 %81, 5, !dbg !1550
  %83 = icmp eq i8 %82, 5, !dbg !1550
  br i1 %83, label %84, label %85, !dbg !1550

; <label>:84:                                     ; preds = %79
  call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1551
  br label %85, !dbg !1552

; <label>:85:                                     ; preds = %79, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1554
  %87 = load void (%struct.netif*)*, void (%struct.netif*)** %86, align 8, !dbg !1554, !tbaa !457
  %88 = icmp eq void (%struct.netif*)* %87, null, !dbg !1554
  br i1 %88, label %90, label %89, !dbg !1557

; <label>:89:                                     ; preds = %85
  call void %87(%struct.netif* nonnull %0) #10, !dbg !1558
  br label %90, !dbg !1558

; <label>:90:                                     ; preds = %89, %74, %85
  %91 = bitcast %union.netif_ext_callback_args_t* %9 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %91) #7, !dbg !1560
  store i8 %1, i8* %91, align 8, !dbg !1561, !tbaa !386
  %92 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %9, i64 0, i32 0, i32 1, !dbg !1562
  store %struct.ip_addr* %7, %struct.ip_addr** %92, align 8, !dbg !1563, !tbaa !386
  %93 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1570, !tbaa !483
  %94 = icmp eq %struct.netif_ext_callback* %93, null, !dbg !1571
  br i1 %94, label %102, label %95, !dbg !1572

; <label>:95:                                     ; preds = %90, %95
  %96 = phi %struct.netif_ext_callback* [ %100, %95 ], [ %93, %90 ]
  %97 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %96, i64 0, i32 0, !dbg !1573
  %98 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %97, align 8, !dbg !1573, !tbaa !557
  call void %98(%struct.netif* nonnull %0, i16 zeroext 256, %union.netif_ext_callback_args_t* nonnull %9) #10, !dbg !1574
  %99 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %96, i64 0, i32 1, !dbg !1575
  %100 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %99, align 8, !dbg !1570, !tbaa !483
  %101 = icmp eq %struct.netif_ext_callback* %100, null, !dbg !1571
  br i1 %101, label %102, label %95, !dbg !1572, !llvm.loop !561

; <label>:102:                                    ; preds = %95, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %91) #7, !dbg !1577
  br label %103, !dbg !1578

; <label>:103:                                    ; preds = %17, %102
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !1579
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  ret void, !dbg !1579
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set_state(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #1 !dbg !1580 {
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = icmp eq %struct.netif* %0, null, !dbg !1597
  br i1 %5, label %6, label %7, !dbg !1600

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1601
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1604
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1604
  unreachable, !dbg !1604

; <label>:7:                                      ; preds = %3
  %8 = icmp slt i8 %1, 3, !dbg !1608
  br i1 %8, label %10, label %9, !dbg !1611

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1612
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1615
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1615
  unreachable, !dbg !1615

; <label>:10:                                     ; preds = %7
  %11 = sext i8 %1 to i64, !dbg !1619
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %11, !dbg !1619
  %13 = load i8, i8* %12, align 1, !dbg !1619, !tbaa !386
  %14 = icmp eq i8 %13, %2, !dbg !1621
  br i1 %14, label %63, label %15, !dbg !1622

; <label>:15:                                     ; preds = %10
  %16 = and i8 %13, 16, !dbg !1623
  %17 = and i8 %2, 16, !dbg !1625
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1627
  %19 = load i8, i8* %18, align 1, !dbg !1627, !tbaa !290
  %20 = and i8 %19, 64, !dbg !1629
  %21 = icmp eq i8 %20, 0, !dbg !1629
  br i1 %21, label %23, label %22, !dbg !1630

; <label>:22:                                     ; preds = %15
  tail call void @nd6_adjust_mld_membership(%struct.netif* nonnull %0, i8 signext %1, i8 zeroext %2) #10, !dbg !1631
  br label %23, !dbg !1633

; <label>:23:                                     ; preds = %15, %22
  %24 = icmp eq i8 %16, 0, !dbg !1634
  %25 = icmp ne i8 %17, 0, !dbg !1636
  %26 = or i1 %25, %24, !dbg !1637
  br i1 %26, label %29, label %27, !dbg !1637

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %11, !dbg !1638
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %28, %struct.ip_addr* null) #10, !dbg !1643
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %28, %struct.ip_addr* null) #10, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  store i8 %2, i8* %12, align 1, !dbg !1646, !tbaa !386
  br label %39, !dbg !1647

; <label>:29:                                     ; preds = %23
  store i8 %2, i8* %12, align 1, !dbg !1646, !tbaa !386
  %30 = icmp ne i8 %16, 0, !dbg !1649
  %31 = icmp eq i8 %17, 0, !dbg !1650
  %32 = or i1 %31, %30, !dbg !1647
  br i1 %32, label %39, label %33, !dbg !1647

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %18, align 1, !dbg !1655, !tbaa !290
  %35 = and i8 %34, 5, !dbg !1656
  %36 = icmp eq i8 %35, 5, !dbg !1656
  br i1 %36, label %37, label %38, !dbg !1656

; <label>:37:                                     ; preds = %33
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #10, !dbg !1657
  br label %38, !dbg !1658

; <label>:38:                                     ; preds = %33, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  br label %39, !dbg !1660

; <label>:39:                                     ; preds = %27, %29, %38
  %40 = xor i8 %13, %2, !dbg !1661
  %41 = icmp ugt i8 %40, 7, !dbg !1661
  br i1 %41, label %42, label %47, !dbg !1663

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1664
  %44 = load void (%struct.netif*)*, void (%struct.netif*)** %43, align 8, !dbg !1664, !tbaa !457
  %45 = icmp eq void (%struct.netif*)* %44, null, !dbg !1664
  br i1 %45, label %47, label %46, !dbg !1668

; <label>:46:                                     ; preds = %42
  tail call void %44(%struct.netif* nonnull %0) #10, !dbg !1669
  br label %47, !dbg !1669

; <label>:47:                                     ; preds = %39, %46, %42
  %48 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !1671
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %48) #7, !dbg !1671
  %49 = bitcast %union.netif_ext_callback_args_t* %4 to %struct.ipv6_addr_state_changed_s*, !dbg !1672
  store i8 %1, i8* %48, align 8, !dbg !1673, !tbaa !386
  %50 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %49, i64 0, i32 1, !dbg !1674
  store i8 %13, i8* %50, align 1, !dbg !1675, !tbaa !386
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %11, !dbg !1676
  %52 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 1, !dbg !1677
  store %struct.ip_addr* %51, %struct.ip_addr** %52, align 8, !dbg !1678, !tbaa !386
  %53 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1685, !tbaa !483
  %54 = icmp eq %struct.netif_ext_callback* %53, null, !dbg !1686
  br i1 %54, label %62, label %55, !dbg !1687

; <label>:55:                                     ; preds = %47, %55
  %56 = phi %struct.netif_ext_callback* [ %60, %55 ], [ %53, %47 ]
  %57 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %56, i64 0, i32 0, !dbg !1688
  %58 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %57, align 8, !dbg !1688, !tbaa !557
  call void %58(%struct.netif* nonnull %0, i16 zeroext 512, %union.netif_ext_callback_args_t* nonnull %4) #10, !dbg !1689
  %59 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %56, i64 0, i32 1, !dbg !1690
  %60 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %59, align 8, !dbg !1685, !tbaa !483
  %61 = icmp eq %struct.netif_ext_callback* %60, null, !dbg !1686
  br i1 %61, label %62, label %55, !dbg !1687, !llvm.loop !561

; <label>:62:                                     ; preds = %55, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %48) #7, !dbg !1692
  br label %63, !dbg !1693

; <label>:63:                                     ; preds = %10, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  ret void, !dbg !1694
}

; Function Attrs: noredzone
declare dso_local void @nd6_adjust_mld_membership(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif* readonly, %struct.ip6_addr* readonly) local_unnamed_addr #1 !dbg !1695 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1704
  br i1 %3, label %4, label %5, !dbg !1707

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1708
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1711
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1711
  unreachable, !dbg !1711

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %1, null, !dbg !1715
  br i1 %6, label %7, label %8, !dbg !1718

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1719
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1722
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1722
  unreachable, !dbg !1722

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !1726
  %10 = load i8, i8* %9, align 4, !dbg !1726, !tbaa !1728
  %11 = icmp eq i8 %10, 0, !dbg !1726
  br i1 %11, label %17, label %12, !dbg !1730

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1731
  %14 = load i8, i8* %13, align 8, !dbg !1731, !tbaa !467
  %15 = add i8 %14, 1, !dbg !1731
  %16 = icmp eq i8 %10, %15, !dbg !1731
  br i1 %16, label %17, label %49, !dbg !1732

; <label>:17:                                     ; preds = %8, %12
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1734
  %23 = load i8, i8* %22, align 1, !dbg !1734, !tbaa !386
  %24 = icmp eq i8 %23, 0, !dbg !1734
  br i1 %24, label %45, label %25, !dbg !1739

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1740
  %27 = load i32, i32* %26, align 8, !dbg !1740, !tbaa !386
  %28 = load i32, i32* %18, align 4, !dbg !1740, !tbaa !431
  %29 = icmp eq i32 %27, %28, !dbg !1740
  br i1 %29, label %30, label %45, !dbg !1740

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1740
  %32 = load i32, i32* %31, align 4, !dbg !1740, !tbaa !386
  %33 = load i32, i32* %19, align 4, !dbg !1740, !tbaa !431
  %34 = icmp eq i32 %32, %33, !dbg !1740
  br i1 %34, label %35, label %45, !dbg !1740

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1740
  %37 = load i32, i32* %36, align 8, !dbg !1740, !tbaa !386
  %38 = load i32, i32* %20, align 4, !dbg !1740, !tbaa !431
  %39 = icmp eq i32 %37, %38, !dbg !1740
  br i1 %39, label %40, label %45, !dbg !1740

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1740
  %42 = load i32, i32* %41, align 4, !dbg !1740, !tbaa !386
  %43 = load i32, i32* %21, align 4, !dbg !1740, !tbaa !431
  %44 = icmp eq i32 %42, %43, !dbg !1740
  br i1 %44, label %49, label %45, !dbg !1741

; <label>:45:                                     ; preds = %17, %25, %30, %35, %40
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1734
  %47 = load i8, i8* %46, align 1, !dbg !1734, !tbaa !386
  %48 = icmp eq i8 %47, 0, !dbg !1734
  br i1 %48, label %71, label %51, !dbg !1739

; <label>:49:                                     ; preds = %40, %66, %90, %95, %12
  %50 = phi i8 [ -1, %12 ], [ 0, %40 ], [ 1, %66 ], [ 2, %90 ], [ -1, %95 ], !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1744
  ret i8 %50, !dbg !1744

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !1740
  %53 = load i32, i32* %52, align 8, !dbg !1740, !tbaa !386
  %54 = load i32, i32* %18, align 4, !dbg !1740, !tbaa !431
  %55 = icmp eq i32 %53, %54, !dbg !1740
  br i1 %55, label %56, label %71, !dbg !1740

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !1740
  %58 = load i32, i32* %57, align 4, !dbg !1740, !tbaa !386
  %59 = load i32, i32* %19, align 4, !dbg !1740, !tbaa !431
  %60 = icmp eq i32 %58, %59, !dbg !1740
  br i1 %60, label %61, label %71, !dbg !1740

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !1740
  %63 = load i32, i32* %62, align 8, !dbg !1740, !tbaa !386
  %64 = load i32, i32* %20, align 4, !dbg !1740, !tbaa !431
  %65 = icmp eq i32 %63, %64, !dbg !1740
  br i1 %65, label %66, label %71, !dbg !1740

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !1740
  %68 = load i32, i32* %67, align 4, !dbg !1740, !tbaa !386
  %69 = load i32, i32* %21, align 4, !dbg !1740, !tbaa !431
  %70 = icmp eq i32 %68, %69, !dbg !1740
  br i1 %70, label %49, label %71, !dbg !1741

; <label>:71:                                     ; preds = %66, %61, %56, %51, %45
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1734
  %73 = load i8, i8* %72, align 1, !dbg !1734, !tbaa !386
  %74 = icmp eq i8 %73, 0, !dbg !1734
  br i1 %74, label %95, label %75, !dbg !1739

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !1740
  %77 = load i32, i32* %76, align 8, !dbg !1740, !tbaa !386
  %78 = load i32, i32* %18, align 4, !dbg !1740, !tbaa !431
  %79 = icmp eq i32 %77, %78, !dbg !1740
  br i1 %79, label %80, label %95, !dbg !1740

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !1740
  %82 = load i32, i32* %81, align 4, !dbg !1740, !tbaa !386
  %83 = load i32, i32* %19, align 4, !dbg !1740, !tbaa !431
  %84 = icmp eq i32 %82, %83, !dbg !1740
  br i1 %84, label %85, label %95, !dbg !1740

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !1740
  %87 = load i32, i32* %86, align 8, !dbg !1740, !tbaa !386
  %88 = load i32, i32* %20, align 4, !dbg !1740, !tbaa !431
  %89 = icmp eq i32 %87, %88, !dbg !1740
  br i1 %89, label %90, label %95, !dbg !1740

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !1740
  %92 = load i32, i32* %91, align 4, !dbg !1740, !tbaa !386
  %93 = load i32, i32* %21, align 4, !dbg !1740, !tbaa !431
  %94 = icmp eq i32 %92, %93, !dbg !1740
  br i1 %94, label %49, label %95, !dbg !1741

; <label>:95:                                     ; preds = %90, %85, %80, %75, %71
  br label %49
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_create_ip6_linklocal_address(%struct.netif*, i8 zeroext) local_unnamed_addr #1 !dbg !1745 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1753
  br i1 %3, label %4, label %5, !dbg !1756

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1757
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1760
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1760
  unreachable, !dbg !1760

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1764
  store i32 33022, i32* %6, align 8, !dbg !1765, !tbaa !386
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1766
  store i32 0, i32* %7, align 4, !dbg !1767, !tbaa !386
  %8 = icmp eq i8 %1, 0, !dbg !1768
  br i1 %8, label %44, label %9, !dbg !1770

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1771
  %11 = load i8, i8* %10, align 2, !dbg !1771, !tbaa !386
  %12 = xor i8 %11, 2, !dbg !1773
  %13 = zext i8 %12 to i32, !dbg !1773
  %14 = shl nuw i32 %13, 24, !dbg !1774
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 1, !dbg !1775
  %16 = load i8, i8* %15, align 1, !dbg !1775, !tbaa !386
  %17 = zext i8 %16 to i32, !dbg !1776
  %18 = shl nuw nsw i32 %17, 16, !dbg !1777
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 2, !dbg !1778
  %20 = load i8, i8* %19, align 2, !dbg !1778, !tbaa !386
  %21 = zext i8 %20 to i32, !dbg !1779
  %22 = shl nuw nsw i32 %21, 8, !dbg !1780
  %23 = or i32 %18, %14, !dbg !1781
  %24 = or i32 %23, %22, !dbg !1782
  %25 = or i32 %24, 255, !dbg !1782
  %26 = tail call i32 @lwip_htonl(i32 %25) #10, !dbg !1783
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1784
  store i32 %26, i32* %27, align 8, !dbg !1785, !tbaa !386
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 3, !dbg !1786
  %29 = load i8, i8* %28, align 1, !dbg !1786, !tbaa !386
  %30 = zext i8 %29 to i32, !dbg !1787
  %31 = shl nuw nsw i32 %30, 16, !dbg !1788
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 4, !dbg !1789
  %33 = load i8, i8* %32, align 2, !dbg !1789, !tbaa !386
  %34 = zext i8 %33 to i32, !dbg !1790
  %35 = shl nuw nsw i32 %34, 8, !dbg !1791
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 5, !dbg !1792
  %37 = load i8, i8* %36, align 1, !dbg !1792, !tbaa !386
  %38 = zext i8 %37 to i32, !dbg !1793
  %39 = or i32 %31, %35, !dbg !1794
  %40 = or i32 %39, %38, !dbg !1794
  %41 = or i32 %40, -33554432, !dbg !1794
  %42 = tail call i32 @lwip_htonl(i32 %41) #10, !dbg !1795
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1796
  store i32 %42, i32* %43, align 4, !dbg !1797, !tbaa !386
  br label %74, !dbg !1798

; <label>:44:                                     ; preds = %5
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1799
  store i32 0, i32* %45, align 8, !dbg !1801, !tbaa !386
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1802
  store i32 0, i32* %46, align 4, !dbg !1803, !tbaa !386
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1806
  br label %48, !dbg !1809

; <label>:48:                                     ; preds = %44, %54
  %49 = phi i32 [ 0, %44 ], [ %72, %54 ]
  %50 = phi i8 [ 3, %44 ], [ %57, %54 ]
  %51 = load i8, i8* %47, align 4, !dbg !1806, !tbaa !1810
  %52 = zext i8 %51 to i32, !dbg !1811
  %53 = icmp ult i32 %49, %52, !dbg !1811
  br i1 %53, label %54, label %74, !dbg !1812

; <label>:54:                                     ; preds = %48
  %55 = icmp eq i32 %49, 4, !dbg !1813
  %56 = sext i1 %55 to i8, !dbg !1816
  %57 = add i8 %50, %56, !dbg !1816
  %58 = xor i32 %49, -1, !dbg !1817
  %59 = add nsw i32 %52, %58, !dbg !1817
  %60 = sext i32 %59 to i64, !dbg !1818
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 %60, !dbg !1818
  %62 = load i8, i8* %61, align 1, !dbg !1818, !tbaa !386
  %63 = zext i8 %62 to i32, !dbg !1819
  %64 = shl nuw nsw i32 %49, 3, !dbg !1820
  %65 = and i32 %64, 24, !dbg !1820
  %66 = shl i32 %63, %65, !dbg !1821
  %67 = tail call i32 @lwip_htonl(i32 %66) #10, !dbg !1822
  %68 = zext i8 %57 to i64, !dbg !1823
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 %68, !dbg !1823
  %70 = load i32, i32* %69, align 4, !dbg !1824, !tbaa !386
  %71 = or i32 %70, %67, !dbg !1824
  store i32 %71, i32* %69, align 4, !dbg !1824, !tbaa !386
  %72 = add nuw nsw i32 %49, 1, !dbg !1825
  %73 = icmp ult i32 %72, 8, !dbg !1826
  br i1 %73, label %48, label %74, !dbg !1809, !llvm.loop !1827

; <label>:74:                                     ; preds = %48, %54, %9
  %75 = load i32, i32* %6, align 8, !dbg !1829, !tbaa !386
  %76 = and i32 %75, 49407, !dbg !1829
  %77 = icmp eq i32 %76, 33022, !dbg !1829
  br i1 %77, label %78, label %82, !dbg !1829

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1829
  %80 = load i8, i8* %79, align 8, !dbg !1829, !tbaa !467
  %81 = add i8 %80, 1, !dbg !1829
  br label %82, !dbg !1829

; <label>:82:                                     ; preds = %74, %78
  %83 = phi i8 [ %81, %78 ], [ 0, %74 ]
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !1829
  store i8 %83, i8* %84, align 8, !dbg !1829, !tbaa !386
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext 0, i8 zeroext 8) #8, !dbg !1830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  ret void, !dbg !1831
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_add_ip6_address(%struct.netif*, %struct.ip6_addr*, i8*) local_unnamed_addr #1 !dbg !1832 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !1844
  br i1 %4, label %5, label %6, !dbg !1847

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1848
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1851
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1851
  unreachable, !dbg !1851

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip6_addr* %1, null, !dbg !1855
  br i1 %7, label %8, label %9, !dbg !1858

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1859
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1862
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1862
  unreachable, !dbg !1862

; <label>:9:                                      ; preds = %6
  %10 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull %1) #8, !dbg !1866
  %11 = icmp sgt i8 %10, -1, !dbg !1868
  br i1 %11, label %12, label %15, !dbg !1870

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i8* %2, null, !dbg !1871
  br i1 %13, label %60, label %14, !dbg !1874

; <label>:14:                                     ; preds = %12
  store i8 %10, i8* %2, align 1, !dbg !1875, !tbaa !386
  br label %60, !dbg !1877

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1878
  %17 = load i32, i32* %16, align 4, !dbg !1878, !tbaa !431
  %18 = and i32 %17, 49407, !dbg !1878
  %19 = icmp ne i32 %18, 33022, !dbg !1878
  %20 = zext i1 %19 to i8, !dbg !1878
  %21 = zext i1 %19 to i64, !dbg !1880
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %21, !dbg !1880
  %23 = load i8, i8* %22, align 1, !dbg !1880, !tbaa !386
  %24 = icmp eq i8 %23, 0, !dbg !1880
  br i1 %24, label %25, label %51, !dbg !1884

; <label>:25:                                     ; preds = %65, %51, %15
  %26 = phi i8 [ %20, %15 ], [ %52, %51 ], [ %63, %65 ]
  %27 = phi i64 [ %21, %15 ], [ %53, %51 ], [ %66, %65 ], !dbg !1880
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 0, !dbg !1885
  store i32 %17, i32* %28, align 8, !dbg !1885, !tbaa !386
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1885
  %30 = load i32, i32* %29, align 4, !dbg !1885, !tbaa !431
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 1, !dbg !1885
  store i32 %30, i32* %31, align 4, !dbg !1885, !tbaa !386
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1885
  %33 = load i32, i32* %32, align 4, !dbg !1885, !tbaa !431
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 2, !dbg !1885
  store i32 %33, i32* %34, align 8, !dbg !1885, !tbaa !386
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1885
  %36 = load i32, i32* %35, align 4, !dbg !1885, !tbaa !431
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 3, !dbg !1885
  store i32 %36, i32* %37, align 4, !dbg !1885, !tbaa !386
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !1885
  %39 = load i8, i8* %38, align 4, !dbg !1885, !tbaa !1728
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 1, !dbg !1885
  store i8 %39, i8* %40, align 8, !dbg !1885, !tbaa !386
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 1, !dbg !1889
  store i8 6, i8* %41, align 4, !dbg !1889, !tbaa !426
  %42 = icmp eq i32 %18, 33022, !dbg !1891
  br i1 %42, label %43, label %47, !dbg !1891

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1891
  %45 = load i8, i8* %44, align 8, !dbg !1891, !tbaa !467
  %46 = add i8 %45, 1, !dbg !1891
  br label %47, !dbg !1891

; <label>:47:                                     ; preds = %25, %43
  %48 = phi i8 [ %46, %43 ], [ 0, %25 ]
  store i8 %48, i8* %40, align 8, !dbg !1891, !tbaa !386
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext %26, i8 zeroext 8) #8, !dbg !1892
  %49 = icmp eq i8* %2, null, !dbg !1893
  br i1 %49, label %60, label %50, !dbg !1895

; <label>:50:                                     ; preds = %47
  store i8 %26, i8* %2, align 1, !dbg !1896, !tbaa !386
  br label %60, !dbg !1898

; <label>:51:                                     ; preds = %15
  %52 = select i1 %19, i8 2, i8 1, !dbg !1899
  %53 = zext i8 %52 to i64, !dbg !1880
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %53, !dbg !1880
  %55 = load i8, i8* %54, align 1, !dbg !1880, !tbaa !386
  %56 = icmp eq i8 %55, 0, !dbg !1880
  br i1 %56, label %25, label %62, !dbg !1884

; <label>:57:                                     ; preds = %65, %62
  %58 = icmp eq i8* %2, null, !dbg !1900
  br i1 %58, label %60, label %59, !dbg !1902

; <label>:59:                                     ; preds = %57
  store i8 -1, i8* %2, align 1, !dbg !1903, !tbaa !386
  br label %60, !dbg !1905

; <label>:60:                                     ; preds = %59, %57, %50, %47, %14, %12
  %61 = phi i8 [ 0, %12 ], [ 0, %14 ], [ 0, %47 ], [ 0, %50 ], [ -6, %57 ], [ -6, %59 ], !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  ret i8 %61, !dbg !1907

; <label>:62:                                     ; preds = %51
  %63 = add nuw nsw i8 %52, 1, !dbg !1899
  %64 = icmp ult i8 %63, 3, !dbg !1908
  br i1 %64, label %65, label %57, !dbg !1909, !llvm.loop !1910

; <label>:65:                                     ; preds = %62
  %66 = zext i8 %63 to i64, !dbg !1880
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %66, !dbg !1880
  %68 = load i8, i8* %67, align 1, !dbg !1880, !tbaa !386
  %69 = icmp eq i8 %68, 0, !dbg !1880
  br i1 %69, label %25, label %57, !dbg !1884
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @netif_name_to_index(i8*) local_unnamed_addr #1 !dbg !1912 {
  %2 = icmp eq i8* %0, null, !dbg !1928
  br i1 %2, label %30, label %3, !dbg !1930

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1931
  %5 = tail call i32 @atoi(i8* nonnull %4) #10, !dbg !1932
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1934
  %7 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1939, !tbaa !483
  %8 = icmp eq %struct.netif* %7, null, !dbg !1940
  br i1 %8, label %30, label %9, !dbg !1939

; <label>:9:                                      ; preds = %3
  %10 = trunc i32 %5 to i8
  br label %11, !dbg !1939

; <label>:11:                                     ; preds = %26, %9
  %12 = phi %struct.netif* [ %7, %9 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 23, !dbg !1941
  %14 = load i8, i8* %13, align 8, !dbg !1941, !tbaa !467
  %15 = icmp eq i8 %14, %10, !dbg !1942
  br i1 %15, label %16, label %26, !dbg !1943

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %0, align 1, !dbg !1944, !tbaa !386
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 0, !dbg !1945
  %19 = load i8, i8* %18, align 2, !dbg !1945, !tbaa !386
  %20 = icmp eq i8 %17, %19, !dbg !1946
  br i1 %20, label %21, label %26, !dbg !1947

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %6, align 1, !dbg !1934, !tbaa !386
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 1, !dbg !1948
  %24 = load i8, i8* %23, align 1, !dbg !1948, !tbaa !386
  %25 = icmp eq i8 %22, %24, !dbg !1949
  br i1 %25, label %31, label %26, !dbg !1950

; <label>:26:                                     ; preds = %21, %16, %11
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !1940
  %28 = load %struct.netif*, %struct.netif** %27, align 8, !dbg !1939, !tbaa !483
  %29 = icmp eq %struct.netif* %28, null, !dbg !1940
  br i1 %29, label %30, label %11, !dbg !1939, !llvm.loop !1951

; <label>:30:                                     ; preds = %26, %1, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br label %33, !dbg !1956

; <label>:31:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  %32 = add i8 %10, 1, !dbg !1957
  br label %33, !dbg !1960

; <label>:33:                                     ; preds = %30, %31
  %34 = phi i8 [ %32, %31 ], [ 0, %30 ], !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  ret i8 %34, !dbg !1962
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_find(i8*) local_unnamed_addr #1 !dbg !1920 {
  %2 = icmp eq i8* %0, null, !dbg !1964
  br i1 %2, label %30, label %3, !dbg !1965

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1966
  %5 = tail call i32 @atoi(i8* nonnull %4) #10, !dbg !1967
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1969
  %7 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1952, !tbaa !483
  %8 = icmp eq %struct.netif* %7, null, !dbg !1970
  br i1 %8, label %30, label %9, !dbg !1952

; <label>:9:                                      ; preds = %3
  %10 = trunc i32 %5 to i8
  br label %11, !dbg !1952

; <label>:11:                                     ; preds = %9, %26
  %12 = phi %struct.netif* [ %7, %9 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 23, !dbg !1971
  %14 = load i8, i8* %13, align 8, !dbg !1971, !tbaa !467
  %15 = icmp eq i8 %14, %10, !dbg !1972
  br i1 %15, label %16, label %26, !dbg !1973

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %0, align 1, !dbg !1974, !tbaa !386
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 0, !dbg !1975
  %19 = load i8, i8* %18, align 2, !dbg !1975, !tbaa !386
  %20 = icmp eq i8 %17, %19, !dbg !1976
  br i1 %20, label %21, label %26, !dbg !1977

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %6, align 1, !dbg !1969, !tbaa !386
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 1, !dbg !1978
  %24 = load i8, i8* %23, align 1, !dbg !1978, !tbaa !386
  %25 = icmp eq i8 %22, %24, !dbg !1979
  br i1 %25, label %30, label %26, !dbg !1980

; <label>:26:                                     ; preds = %11, %16, %21
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !1970
  %28 = load %struct.netif*, %struct.netif** %27, align 8, !dbg !1952, !tbaa !483
  %29 = icmp eq %struct.netif* %28, null, !dbg !1970
  br i1 %29, label %30, label %11, !dbg !1952, !llvm.loop !1951

; <label>:30:                                     ; preds = %21, %26, %3, %1
  %31 = phi %struct.netif* [ null, %1 ], [ null, %3 ], [ %12, %21 ], [ null, %26 ], !dbg !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  ret %struct.netif* %31, !dbg !1982
}

; Function Attrs: noredzone nounwind
define dso_local i8* @netif_index_to_name(i8 zeroext, i8*) local_unnamed_addr #1 !dbg !1983 {
  %3 = icmp eq i8 %0, 0, !dbg !2001
  br i1 %3, label %17, label %4, !dbg !2003

; <label>:4:                                      ; preds = %2
  %5 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2004, !tbaa !483
  %6 = icmp eq %struct.netif* %5, null, !dbg !2008
  br i1 %6, label %17, label %7, !dbg !2004

; <label>:7:                                      ; preds = %4, %13
  %8 = phi %struct.netif* [ %15, %13 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 23, !dbg !2010
  %10 = load i8, i8* %9, align 8, !dbg !2010, !tbaa !467
  %11 = add i8 %10, 1, !dbg !2010
  %12 = icmp eq i8 %11, %0, !dbg !2013
  br i1 %12, label %18, label %13, !dbg !2014

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 0, !dbg !2008
  %15 = load %struct.netif*, %struct.netif** %14, align 8, !dbg !2004, !tbaa !483
  %16 = icmp eq %struct.netif* %15, null, !dbg !2008
  br i1 %16, label %17, label %7, !dbg !2004, !llvm.loop !2015

; <label>:17:                                     ; preds = %13, %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  br label %27, !dbg !2020

; <label>:18:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 22, i64 0, !dbg !2021
  %20 = load i8, i8* %19, align 2, !dbg !2021, !tbaa !386
  store i8 %20, i8* %1, align 1, !dbg !2024, !tbaa !386
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 22, i64 1, !dbg !2025
  %22 = load i8, i8* %21, align 1, !dbg !2025, !tbaa !386
  %23 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2026
  store i8 %22, i8* %23, align 1, !dbg !2027, !tbaa !386
  %24 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2028
  %25 = zext i8 %0 to i32, !dbg !2029
  %26 = add nsw i32 %25, -1, !dbg !2029
  tail call void @lwip_itoa(i8* nonnull %24, i64 4, i32 %26) #10, !dbg !2030
  br label %27, !dbg !2031

; <label>:27:                                     ; preds = %17, %18
  %28 = phi i8* [ %1, %18 ], [ null, %17 ], !dbg !2032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2033
  ret i8* %28, !dbg !2033
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #1 !dbg !1994 {
  %2 = icmp eq i8 %0, 0, !dbg !2035
  br i1 %2, label %16, label %3, !dbg !2036

; <label>:3:                                      ; preds = %1
  %4 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2016, !tbaa !483
  %5 = icmp eq %struct.netif* %4, null, !dbg !2038
  br i1 %5, label %16, label %6, !dbg !2016

; <label>:6:                                      ; preds = %3, %12
  %7 = phi %struct.netif* [ %14, %12 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 23, !dbg !2039
  %9 = load i8, i8* %8, align 8, !dbg !2039, !tbaa !467
  %10 = add i8 %9, 1, !dbg !2039
  %11 = icmp eq i8 %10, %0, !dbg !2040
  br i1 %11, label %16, label %12, !dbg !2041

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 0, !dbg !2038
  %14 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !2016, !tbaa !483
  %15 = icmp eq %struct.netif* %14, null, !dbg !2038
  br i1 %15, label %16, label %6, !dbg !2016, !llvm.loop !2015

; <label>:16:                                     ; preds = %6, %12, %3, %1
  %17 = phi %struct.netif* [ null, %1 ], [ null, %3 ], [ %7, %6 ], [ null, %12 ], !dbg !2042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2043
  ret %struct.netif* %17, !dbg !2043
}

; Function Attrs: noredzone
declare dso_local void @lwip_itoa(i8*, i64, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_add_ext_callback(%struct.netif_ext_callback*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*) local_unnamed_addr #1 !dbg !2044 {
  %3 = icmp eq %struct.netif_ext_callback* %0, null, !dbg !2052
  br i1 %3, label %4, label %5, !dbg !2055

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2056
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2059
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2059
  unreachable, !dbg !2059

; <label>:5:                                      ; preds = %2
  %6 = icmp eq void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* %1, null, !dbg !2063
  br i1 %6, label %7, label %8, !dbg !2066

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2067
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2070
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2070
  unreachable, !dbg !2070

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 0, !dbg !2074
  store void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* %1, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %9, align 8, !dbg !2075, !tbaa !557
  %10 = load i64, i64* bitcast (%struct.netif_ext_callback** @ext_callback to i64*), align 8, !dbg !2076, !tbaa !483
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2077
  %12 = bitcast %struct.netif_ext_callback** %11 to i64*, !dbg !2078
  store i64 %10, i64* %12, align 8, !dbg !2078, !tbaa !2079
  store %struct.netif_ext_callback* %0, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !2080, !tbaa !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  ret void, !dbg !2081
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_remove_ext_callback(%struct.netif_ext_callback*) local_unnamed_addr #1 !dbg !2082 {
  %2 = icmp eq %struct.netif_ext_callback* %0, null, !dbg !2090
  br i1 %2, label %3, label %4, !dbg !2093

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2094
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2097
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2097
  unreachable, !dbg !2097

; <label>:4:                                      ; preds = %1
  %5 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !2101, !tbaa !483
  %6 = icmp eq %struct.netif_ext_callback* %5, null, !dbg !2103
  br i1 %6, label %26, label %7, !dbg !2104

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.netif_ext_callback* %5, %0, !dbg !2105
  br i1 %8, label %9, label %13, !dbg !2107

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2108
  %11 = bitcast %struct.netif_ext_callback** %10 to i64*, !dbg !2108
  %12 = load i64, i64* %11, align 8, !dbg !2108, !tbaa !2079
  store i64 %12, i64* bitcast (%struct.netif_ext_callback** @ext_callback to i64*), align 8, !dbg !2110, !tbaa !483
  br label %26, !dbg !2111

; <label>:13:                                     ; preds = %7, %18
  %14 = phi %struct.netif_ext_callback* [ %16, %18 ], [ %5, %7 ], !dbg !2112
  %15 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %14, i64 0, i32 1, !dbg !2112
  %16 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %15, align 8, !dbg !2112, !tbaa !2079
  %17 = icmp eq %struct.netif_ext_callback* %16, null, !dbg !2118
  br i1 %17, label %26, label %18, !dbg !2119

; <label>:18:                                     ; preds = %13
  %19 = icmp eq %struct.netif_ext_callback* %16, %0, !dbg !2120
  br i1 %19, label %20, label %13, !dbg !2123, !llvm.loop !2124

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %14, i64 0, i32 1, !dbg !2112
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2126
  %23 = bitcast %struct.netif_ext_callback** %22 to i64*, !dbg !2126
  %24 = load i64, i64* %23, align 8, !dbg !2126, !tbaa !2079
  %25 = bitcast %struct.netif_ext_callback** %21 to i64*, !dbg !2128
  store i64 %24, i64* %25, align 8, !dbg !2128, !tbaa !2079
  store %struct.netif_ext_callback* null, %struct.netif_ext_callback** %22, align 8, !dbg !2129, !tbaa !2079
  br label %26, !dbg !2130

; <label>:26:                                     ; preds = %13, %9, %4, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  ret void, !dbg !2131
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
!305 = !DILocation(line: 230, column: 1, scope: !260)
!306 = !DILocation(line: 194, column: 43, scope: !227)
!307 = !DILocation(line: 196, column: 2, scope: !227)
!308 = !DILocation(line: 196, column: 10, scope: !227)
!309 = !DILocation(line: 197, column: 2, scope: !227)
!310 = !DILocation(line: 198, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !228, line: 198, column: 2)
!312 = distinct !DILexicalBlock(scope: !227, file: !228, line: 198, column: 2)
!313 = !DILocation(line: 199, column: 2, scope: !227)
!314 = !DILocation(line: 200, column: 1, scope: !227)
!315 = distinct !DISubprogram(name: "netif_add_noaddr", scope: !3, file: !3, line: 239, type: !316, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !322)
!316 = !DISubroutineType(types: !317)
!317 = !{!98, !98, !46, !318, !115}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_init_fn", file: !6, line: 168, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!119, !98}
!322 = !{!323, !324, !325, !326}
!323 = !DILocalVariable(name: "netif", arg: 1, scope: !315, file: !3, line: 239, type: !98)
!324 = !DILocalVariable(name: "state", arg: 2, scope: !315, file: !3, line: 239, type: !46)
!325 = !DILocalVariable(name: "init", arg: 3, scope: !315, file: !3, line: 239, type: !318)
!326 = !DILocalVariable(name: "input", arg: 4, scope: !315, file: !3, line: 239, type: !115)
!327 = !DILocation(line: 239, column: 32, scope: !315)
!328 = !DILocation(line: 239, column: 45, scope: !315)
!329 = !DILocation(line: 239, column: 66, scope: !315)
!330 = !DILocation(line: 239, column: 87, scope: !315)
!331 = !DILocation(line: 241, column: 10, scope: !315)
!332 = !DILocation(line: 241, column: 3, scope: !315)
!333 = distinct !DISubprogram(name: "netif_add", scope: !3, file: !3, line: 276, type: !334, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!98, !98, !57, !57, !57, !46, !318, !115}
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !347}
!337 = !DILocalVariable(name: "netif", arg: 1, scope: !333, file: !3, line: 276, type: !98)
!338 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !333, file: !3, line: 278, type: !57)
!339 = !DILocalVariable(name: "netmask", arg: 3, scope: !333, file: !3, line: 278, type: !57)
!340 = !DILocalVariable(name: "gw", arg: 4, scope: !333, file: !3, line: 278, type: !57)
!341 = !DILocalVariable(name: "state", arg: 5, scope: !333, file: !3, line: 280, type: !46)
!342 = !DILocalVariable(name: "init", arg: 6, scope: !333, file: !3, line: 280, type: !318)
!343 = !DILocalVariable(name: "input", arg: 7, scope: !333, file: !3, line: 280, type: !115)
!344 = !DILocalVariable(name: "i", scope: !333, file: !3, line: 283, type: !120)
!345 = !DILocalVariable(name: "netif2", scope: !346, file: !3, line: 387, type: !98)
!346 = distinct !DILexicalBlock(scope: !333, file: !3, line: 386, column: 3)
!347 = !DILocalVariable(name: "num_netifs", scope: !346, file: !3, line: 388, type: !26)
!348 = !DILocation(line: 276, column: 25, scope: !333)
!349 = !DILocation(line: 278, column: 29, scope: !333)
!350 = !DILocation(line: 278, column: 55, scope: !333)
!351 = !DILocation(line: 278, column: 82, scope: !333)
!352 = !DILocation(line: 280, column: 17, scope: !333)
!353 = !DILocation(line: 280, column: 38, scope: !333)
!354 = !DILocation(line: 280, column: 59, scope: !333)
!355 = !DILocation(line: 295, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 295, column: 3)
!357 = distinct !DILexicalBlock(scope: !333, file: !3, line: 295, column: 3)
!358 = !DILocation(line: 295, column: 3, scope: !357)
!359 = !DILocation(line: 295, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 295, column: 3)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 295, column: 3)
!362 = !DILocation(line: 295, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 295, column: 3)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 295, column: 3)
!365 = distinct !DILexicalBlock(scope: !360, file: !3, line: 295, column: 3)
!366 = !DILocation(line: 296, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 296, column: 3)
!368 = distinct !DILexicalBlock(scope: !333, file: !3, line: 296, column: 3)
!369 = !DILocation(line: 296, column: 3, scope: !368)
!370 = !DILocation(line: 296, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 296, column: 3)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 296, column: 3)
!373 = !DILocation(line: 296, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 296, column: 3)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 296, column: 3)
!376 = distinct !DILexicalBlock(scope: !371, file: !3, line: 296, column: 3)
!377 = !DILocation(line: 299, column: 14, scope: !378)
!378 = distinct !DILexicalBlock(scope: !333, file: !3, line: 299, column: 7)
!379 = !DILocation(line: 302, column: 15, scope: !380)
!380 = distinct !DILexicalBlock(scope: !333, file: !3, line: 302, column: 7)
!381 = !DILocation(line: 305, column: 10, scope: !382)
!382 = distinct !DILexicalBlock(scope: !333, file: !3, line: 305, column: 7)
!383 = !DILocation(line: 310, column: 3, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 310, column: 3)
!385 = distinct !DILexicalBlock(scope: !333, file: !3, line: 310, column: 3)
!386 = !{!293, !293, i64 0}
!387 = !DILocation(line: 310, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 310, column: 3)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 310, column: 3)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 310, column: 3)
!391 = distinct !DILexicalBlock(scope: !385, file: !3, line: 310, column: 3)
!392 = !{!291, !293, i64 28}
!393 = !DILocation(line: 311, column: 3, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 311, column: 3)
!395 = distinct !DILexicalBlock(scope: !333, file: !3, line: 311, column: 3)
!396 = !DILocation(line: 311, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 311, column: 3)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 311, column: 3)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 311, column: 3)
!400 = distinct !DILexicalBlock(scope: !395, file: !3, line: 311, column: 3)
!401 = !{!291, !293, i64 52}
!402 = !DILocation(line: 312, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 312, column: 3)
!404 = distinct !DILexicalBlock(scope: !333, file: !3, line: 312, column: 3)
!405 = !DILocation(line: 312, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 312, column: 3)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 312, column: 3)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 312, column: 3)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 312, column: 3)
!410 = !{!291, !293, i64 76}
!411 = !DILocation(line: 313, column: 10, scope: !333)
!412 = !DILocation(line: 313, column: 17, scope: !333)
!413 = !{!291, !292, i64 192}
!414 = !DILocation(line: 283, column: 8, scope: !333)
!415 = !DILocation(line: 317, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 317, column: 5)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 317, column: 5)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 316, column: 49)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 316, column: 3)
!420 = distinct !DILexicalBlock(scope: !333, file: !3, line: 316, column: 3)
!421 = !DILocation(line: 317, column: 5, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 317, column: 5)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 317, column: 5)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 317, column: 5)
!425 = distinct !DILexicalBlock(scope: !417, file: !3, line: 317, column: 5)
!426 = !{!295, !293, i64 20}
!427 = !DILocation(line: 318, column: 5, scope: !418)
!428 = !DILocation(line: 318, column: 30, scope: !418)
!429 = !DILocation(line: 320, column: 5, scope: !418)
!430 = !DILocation(line: 320, column: 35, scope: !418)
!431 = !{!432, !432, i64 0}
!432 = !{!"int", !293, i64 0}
!433 = !DILocation(line: 321, column: 5, scope: !418)
!434 = !DILocation(line: 321, column: 34, scope: !418)
!435 = !DILocation(line: 299, column: 7, scope: !333)
!436 = !DILocation(line: 302, column: 7, scope: !333)
!437 = !DILocation(line: 305, column: 7, scope: !333)
!438 = !DILocation(line: 324, column: 10, scope: !333)
!439 = !DILocation(line: 324, column: 21, scope: !333)
!440 = !{!291, !292, i64 208}
!441 = !DILocation(line: 326, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !333, file: !3, line: 326, column: 3)
!443 = !{!291, !296, i64 248}
!444 = !DILocation(line: 327, column: 10, scope: !333)
!445 = !DILocation(line: 327, column: 14, scope: !333)
!446 = !{!291, !296, i64 250}
!447 = !DILocation(line: 328, column: 10, scope: !333)
!448 = !DILocation(line: 328, column: 16, scope: !333)
!449 = !DILocation(line: 330, column: 10, scope: !333)
!450 = !DILocation(line: 330, column: 3, scope: !333)
!451 = !DILocation(line: 335, column: 10, scope: !333)
!452 = !DILocation(line: 335, column: 33, scope: !333)
!453 = !{!291, !293, i64 265}
!454 = !DILocation(line: 337, column: 3, scope: !333)
!455 = !DILocation(line: 340, column: 10, scope: !333)
!456 = !DILocation(line: 340, column: 26, scope: !333)
!457 = !{!291, !292, i64 216}
!458 = !DILocation(line: 349, column: 10, scope: !333)
!459 = !DILocation(line: 349, column: 25, scope: !333)
!460 = !{!291, !292, i64 272}
!461 = !DILocation(line: 357, column: 10, scope: !333)
!462 = !DILocation(line: 357, column: 16, scope: !333)
!463 = !{!291, !292, i64 232}
!464 = !DILocation(line: 358, column: 16, scope: !333)
!465 = !DILocation(line: 358, column: 10, scope: !333)
!466 = !DILocation(line: 358, column: 14, scope: !333)
!467 = !{!291, !293, i64 264}
!468 = !DILocation(line: 359, column: 10, scope: !333)
!469 = !DILocation(line: 359, column: 16, scope: !333)
!470 = !{!291, !292, i64 184}
!471 = !DILocation(line: 367, column: 3, scope: !333)
!472 = !DILocation(line: 371, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !333, file: !3, line: 371, column: 7)
!474 = !DILocation(line: 371, column: 19, scope: !473)
!475 = !DILocation(line: 371, column: 7, scope: !333)
!476 = !DILocation(line: 377, column: 24, scope: !333)
!477 = !DILocation(line: 377, column: 10, scope: !333)
!478 = !DILocation(line: 377, column: 15, scope: !333)
!479 = !{!291, !296, i64 252}
!480 = !DILocation(line: 390, column: 18, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 390, column: 11)
!482 = distinct !DILexicalBlock(scope: !346, file: !3, line: 389, column: 8)
!483 = !{!292, !292, i64 0}
!484 = !DILocation(line: 389, column: 5, scope: !346)
!485 = !DILocation(line: 390, column: 22, scope: !481)
!486 = !DILocation(line: 390, column: 11, scope: !482)
!487 = !DILocation(line: 391, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !3, line: 390, column: 30)
!489 = !DILocation(line: 392, column: 7, scope: !488)
!490 = !DILocation(line: 388, column: 9, scope: !346)
!491 = !DILocation(line: 387, column: 19, scope: !346)
!492 = !DILocation(line: 394, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !3, line: 394, column: 7)
!494 = !DILocation(line: 394, column: 66, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 394, column: 7)
!496 = !DILocation(line: 0, scope: !495)
!497 = !DILocation(line: 394, column: 40, scope: !495)
!498 = distinct !{!498, !492, !499}
!499 = !DILocation(line: 402, column: 7, scope: !493)
!500 = !DILocation(line: 395, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 395, column: 9)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 395, column: 9)
!503 = distinct !DILexicalBlock(scope: !495, file: !3, line: 394, column: 72)
!504 = !DILocation(line: 395, column: 9, scope: !502)
!505 = !DILocation(line: 395, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 395, column: 9)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 395, column: 9)
!508 = !DILocation(line: 395, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 395, column: 9)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 395, column: 9)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 395, column: 9)
!512 = !DILocation(line: 396, column: 19, scope: !503)
!513 = !DILocation(line: 397, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 397, column: 9)
!515 = distinct !DILexicalBlock(scope: !503, file: !3, line: 397, column: 9)
!516 = !DILocation(line: 397, column: 9, scope: !515)
!517 = !DILocation(line: 397, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 397, column: 9)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 397, column: 9)
!520 = !DILocation(line: 397, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 397, column: 9)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 397, column: 9)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 397, column: 9)
!524 = !DILocation(line: 398, column: 21, scope: !525)
!525 = distinct !DILexicalBlock(scope: !503, file: !3, line: 398, column: 13)
!526 = !DILocation(line: 398, column: 25, scope: !525)
!527 = !DILocation(line: 398, column: 13, scope: !503)
!528 = !DILocation(line: 399, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !3, line: 398, column: 40)
!530 = !DILocation(line: 403, column: 5, scope: !482)
!531 = !DILocation(line: 405, column: 18, scope: !532)
!532 = distinct !DILexicalBlock(scope: !333, file: !3, line: 405, column: 7)
!533 = !DILocation(line: 408, column: 35, scope: !534)
!534 = distinct !DILexicalBlock(scope: !532, file: !3, line: 407, column: 10)
!535 = !DILocation(line: 405, column: 7, scope: !333)
!536 = !DILocation(line: 0, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !3, line: 405, column: 26)
!538 = !DILocation(line: 412, column: 15, scope: !333)
!539 = !{!291, !292, i64 0}
!540 = !DILocation(line: 413, column: 14, scope: !333)
!541 = !DILocalVariable(name: "netif", arg: 1, scope: !542, file: !3, line: 1784, type: !98)
!542 = distinct !DISubprogram(name: "netif_invoke_ext_callback", scope: !3, file: !3, line: 1784, type: !96, isLocal: false, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !543)
!543 = !{!541, !544, !545, !546}
!544 = !DILocalVariable(name: "reason", arg: 2, scope: !542, file: !3, line: 1784, type: !188)
!545 = !DILocalVariable(name: "args", arg: 3, scope: !542, file: !3, line: 1784, type: !189)
!546 = !DILocalVariable(name: "callback", scope: !542, file: !3, line: 1786, type: !89)
!547 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !548)
!548 = distinct !DILocation(line: 436, column: 3, scope: !333)
!549 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !548)
!550 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !548)
!551 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !548)
!552 = !DILocation(line: 0, scope: !553, inlinedAt: !548)
!553 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1790, column: 28)
!554 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !548)
!555 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !548)
!556 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !548)
!557 = !{!558, !292, i64 0}
!558 = !{!"netif_ext_callback", !292, i64 0, !292, i64 8}
!559 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !548)
!560 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !548)
!561 = distinct !{!561, !562, !563}
!562 = !DILocation(line: 1790, column: 3, scope: !542)
!563 = !DILocation(line: 1793, column: 3, scope: !542)
!564 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !548)
!565 = !DILocation(line: 438, column: 3, scope: !333)
!566 = !DILocation(line: 0, scope: !333)
!567 = !DILocation(line: 439, column: 1, scope: !333)
!568 = distinct !DISubprogram(name: "netif_null_output_ip4", scope: !3, file: !3, line: 1619, type: !143, isLocal: true, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !569)
!569 = !{!570, !571, !572}
!570 = !DILocalVariable(name: "netif", arg: 1, scope: !568, file: !3, line: 1619, type: !98)
!571 = !DILocalVariable(name: "p", arg: 2, scope: !568, file: !3, line: 1619, type: !124)
!572 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !568, file: !3, line: 1619, type: !57)
!573 = !DILocation(line: 1619, column: 37, scope: !568)
!574 = !DILocation(line: 1619, column: 57, scope: !568)
!575 = !DILocation(line: 1619, column: 78, scope: !568)
!576 = !DILocation(line: 1625, column: 3, scope: !568)
!577 = distinct !DISubprogram(name: "netif_null_output_ip6", scope: !3, file: !3, line: 1605, type: !153, isLocal: true, isDefinition: true, scopeLine: 1606, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !578)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "netif", arg: 1, scope: !577, file: !3, line: 1605, type: !98)
!580 = !DILocalVariable(name: "p", arg: 2, scope: !577, file: !3, line: 1605, type: !124)
!581 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !577, file: !3, line: 1605, type: !84)
!582 = !DILocation(line: 1605, column: 37, scope: !577)
!583 = !DILocation(line: 1605, column: 57, scope: !577)
!584 = !DILocation(line: 1605, column: 78, scope: !577)
!585 = !DILocation(line: 1611, column: 3, scope: !577)
!586 = distinct !DISubprogram(name: "netif_set_addr", scope: !3, file: !3, line: 658, type: !587, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !98, !57, !57, !57}
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !600, !601, !602}
!590 = !DILocalVariable(name: "netif", arg: 1, scope: !586, file: !3, line: 658, type: !98)
!591 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !586, file: !3, line: 658, type: !57)
!592 = !DILocalVariable(name: "netmask", arg: 3, scope: !586, file: !3, line: 658, type: !57)
!593 = !DILocalVariable(name: "gw", arg: 4, scope: !586, file: !3, line: 659, type: !57)
!594 = !DILocalVariable(name: "change_reason", scope: !586, file: !3, line: 662, type: !188)
!595 = !DILocalVariable(name: "cb_args", scope: !586, file: !3, line: 663, type: !191)
!596 = !DILocalVariable(name: "old_nm_val", scope: !586, file: !3, line: 664, type: !66)
!597 = !DILocalVariable(name: "old_gw_val", scope: !586, file: !3, line: 665, type: !66)
!598 = !DILocalVariable(name: "old_nm", scope: !586, file: !3, line: 666, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!600 = !DILocalVariable(name: "old_gw", scope: !586, file: !3, line: 667, type: !599)
!601 = !DILocalVariable(name: "old_addr", scope: !586, file: !3, line: 672, type: !66)
!602 = !DILocalVariable(name: "remove", scope: !586, file: !3, line: 673, type: !26)
!603 = !DILocation(line: 658, column: 30, scope: !586)
!604 = !DILocation(line: 658, column: 55, scope: !586)
!605 = !DILocation(line: 658, column: 81, scope: !586)
!606 = !DILocation(line: 659, column: 34, scope: !586)
!607 = !DILocation(line: 662, column: 22, scope: !586)
!608 = !DILocation(line: 663, column: 3, scope: !586)
!609 = !DILocation(line: 664, column: 3, scope: !586)
!610 = !DILocation(line: 665, column: 3, scope: !586)
!611 = !DILocation(line: 666, column: 14, scope: !586)
!612 = !DILocation(line: 667, column: 14, scope: !586)
!613 = !DILocation(line: 672, column: 3, scope: !586)
!614 = !DILocation(line: 678, column: 14, scope: !615)
!615 = distinct !DILexicalBlock(scope: !586, file: !3, line: 678, column: 7)
!616 = !DILocation(line: 678, column: 7, scope: !586)
!617 = !DILocation(line: 681, column: 15, scope: !618)
!618 = distinct !DILexicalBlock(scope: !586, file: !3, line: 681, column: 7)
!619 = !DILocation(line: 681, column: 7, scope: !586)
!620 = !DILocation(line: 684, column: 10, scope: !621)
!621 = distinct !DILexicalBlock(scope: !586, file: !3, line: 684, column: 7)
!622 = !DILocation(line: 684, column: 7, scope: !586)
!623 = !DILocation(line: 688, column: 12, scope: !586)
!624 = !{!625, !432, i64 0}
!625 = !{!"ip4_addr", !432, i64 0}
!626 = !DILocation(line: 689, column: 7, scope: !586)
!627 = !DILocation(line: 672, column: 13, scope: !586)
!628 = !DILocation(line: 692, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 692, column: 9)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 689, column: 15)
!631 = distinct !DILexicalBlock(scope: !586, file: !3, line: 689, column: 7)
!632 = !DILocation(line: 692, column: 9, scope: !630)
!633 = !DILocation(line: 695, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 692, column: 56)
!635 = !DILocation(line: 695, column: 40, scope: !634)
!636 = !DILocation(line: 697, column: 5, scope: !634)
!637 = !DILocation(line: 0, scope: !586)
!638 = !DILocation(line: 664, column: 13, scope: !586)
!639 = !DILocalVariable(name: "netif", arg: 1, scope: !640, file: !3, line: 523, type: !98)
!640 = distinct !DISubprogram(name: "netif_do_set_netmask", scope: !3, file: !3, line: 523, type: !641, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!26, !98, !57, !599}
!643 = !{!639, !644, !645}
!644 = !DILocalVariable(name: "netmask", arg: 2, scope: !640, file: !3, line: 523, type: !57)
!645 = !DILocalVariable(name: "old_nm", arg: 3, scope: !640, file: !3, line: 523, type: !599)
!646 = !DILocation(line: 523, column: 36, scope: !640, inlinedAt: !647)
!647 = distinct !DILocation(line: 699, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !586, file: !3, line: 699, column: 7)
!649 = !DILocation(line: 523, column: 61, scope: !640, inlinedAt: !647)
!650 = !DILocation(line: 523, column: 81, scope: !640, inlinedAt: !647)
!651 = !DILocation(line: 526, column: 7, scope: !652, inlinedAt: !647)
!652 = distinct !DILexicalBlock(scope: !640, file: !3, line: 526, column: 7)
!653 = !DILocation(line: 526, column: 7, scope: !640, inlinedAt: !647)
!654 = !DILocation(line: 547, column: 1, scope: !640, inlinedAt: !647)
!655 = !DILocation(line: 699, column: 7, scope: !586)
!656 = !DILocation(line: 529, column: 5, scope: !657, inlinedAt: !647)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 529, column: 5)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 529, column: 5)
!659 = distinct !DILexicalBlock(scope: !652, file: !3, line: 526, column: 61)
!660 = !DILocation(line: 529, column: 5, scope: !661, inlinedAt: !647)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 529, column: 5)
!662 = !DILocation(line: 529, column: 5, scope: !663, inlinedAt: !647)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 529, column: 5)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 529, column: 5)
!665 = !DILocation(line: 529, column: 5, scope: !658, inlinedAt: !647)
!666 = !DILocation(line: 529, column: 5, scope: !664, inlinedAt: !647)
!667 = !DILocation(line: 529, column: 5, scope: !668, inlinedAt: !647)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 529, column: 5)
!669 = distinct !DILexicalBlock(scope: !661, file: !3, line: 529, column: 5)
!670 = !DILocation(line: 535, column: 5, scope: !659, inlinedAt: !647)
!671 = !DILocation(line: 536, column: 5, scope: !672, inlinedAt: !647)
!672 = distinct !DILexicalBlock(scope: !659, file: !3, line: 536, column: 5)
!673 = !DILocation(line: 701, column: 19, scope: !674)
!674 = distinct !DILexicalBlock(scope: !648, file: !3, line: 699, column: 53)
!675 = !DILocation(line: 702, column: 26, scope: !674)
!676 = !DILocation(line: 702, column: 38, scope: !674)
!677 = !DILocation(line: 704, column: 3, scope: !674)
!678 = !DILocation(line: 0, scope: !634)
!679 = !DILocation(line: 665, column: 13, scope: !586)
!680 = !DILocalVariable(name: "netif", arg: 1, scope: !681, file: !3, line: 587, type: !98)
!681 = distinct !DISubprogram(name: "netif_do_set_gw", scope: !3, file: !3, line: 587, type: !641, isLocal: true, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!682 = !{!680, !683, !684}
!683 = !DILocalVariable(name: "gw", arg: 2, scope: !681, file: !3, line: 587, type: !57)
!684 = !DILocalVariable(name: "old_gw", arg: 3, scope: !681, file: !3, line: 587, type: !599)
!685 = !DILocation(line: 587, column: 31, scope: !681, inlinedAt: !686)
!686 = distinct !DILocation(line: 705, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !586, file: !3, line: 705, column: 7)
!688 = !DILocation(line: 587, column: 56, scope: !681, inlinedAt: !686)
!689 = !DILocation(line: 587, column: 71, scope: !681, inlinedAt: !686)
!690 = !DILocation(line: 590, column: 7, scope: !691, inlinedAt: !686)
!691 = distinct !DILexicalBlock(scope: !681, file: !3, line: 590, column: 7)
!692 = !DILocation(line: 590, column: 7, scope: !681, inlinedAt: !686)
!693 = !DILocation(line: 609, column: 1, scope: !681, inlinedAt: !686)
!694 = !DILocation(line: 705, column: 7, scope: !586)
!695 = !DILocation(line: 593, column: 5, scope: !696, inlinedAt: !686)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 593, column: 5)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 593, column: 5)
!698 = distinct !DILexicalBlock(scope: !691, file: !3, line: 590, column: 51)
!699 = !DILocation(line: 593, column: 5, scope: !700, inlinedAt: !686)
!700 = distinct !DILexicalBlock(scope: !697, file: !3, line: 593, column: 5)
!701 = !DILocation(line: 593, column: 5, scope: !702, inlinedAt: !686)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 593, column: 5)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 593, column: 5)
!704 = !DILocation(line: 593, column: 5, scope: !697, inlinedAt: !686)
!705 = !DILocation(line: 593, column: 5, scope: !703, inlinedAt: !686)
!706 = !DILocation(line: 593, column: 5, scope: !707, inlinedAt: !686)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 593, column: 5)
!708 = distinct !DILexicalBlock(scope: !700, file: !3, line: 593, column: 5)
!709 = !DILocation(line: 598, column: 5, scope: !698, inlinedAt: !686)
!710 = !DILocation(line: 599, column: 5, scope: !711, inlinedAt: !686)
!711 = distinct !DILexicalBlock(scope: !698, file: !3, line: 599, column: 5)
!712 = !DILocation(line: 707, column: 19, scope: !713)
!713 = distinct !DILexicalBlock(scope: !687, file: !3, line: 705, column: 43)
!714 = !DILocation(line: 708, column: 26, scope: !713)
!715 = !DILocation(line: 708, column: 33, scope: !713)
!716 = !DILocation(line: 710, column: 3, scope: !713)
!717 = !DILocation(line: 0, scope: !674)
!718 = !DILocation(line: 711, column: 7, scope: !586)
!719 = !DILocation(line: 713, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 713, column: 9)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 711, column: 16)
!722 = distinct !DILexicalBlock(scope: !586, file: !3, line: 711, column: 7)
!723 = !DILocation(line: 713, column: 9, scope: !721)
!724 = !DILocation(line: 715, column: 21, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 713, column: 56)
!726 = !DILocation(line: 716, column: 28, scope: !725)
!727 = !DILocation(line: 716, column: 40, scope: !725)
!728 = !DILocation(line: 722, column: 7, scope: !586)
!729 = !DILocation(line: 722, column: 21, scope: !730)
!730 = distinct !DILexicalBlock(scope: !586, file: !3, line: 722, column: 7)
!731 = !DILocation(line: 723, column: 19, scope: !732)
!732 = distinct !DILexicalBlock(scope: !730, file: !3, line: 722, column: 39)
!733 = !DILocation(line: 663, column: 29, scope: !586)
!734 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !735)
!735 = distinct !DILocation(line: 724, column: 5, scope: !732)
!736 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !735)
!737 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !735)
!738 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !735)
!739 = !DILocation(line: 0, scope: !553, inlinedAt: !735)
!740 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !735)
!741 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !735)
!742 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !735)
!743 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !735)
!744 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !735)
!745 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !735)
!746 = !DILocation(line: 725, column: 3, scope: !732)
!747 = !DILocation(line: 727, column: 1, scope: !586)
!748 = !DILocation(line: 1784, column: 41, scope: !542)
!749 = !DILocation(line: 1784, column: 67, scope: !542)
!750 = !DILocation(line: 1784, column: 108, scope: !542)
!751 = !DILocation(line: 1786, column: 25, scope: !542)
!752 = !DILocation(line: 1788, column: 3, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 1788, column: 3)
!754 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1788, column: 3)
!755 = !DILocation(line: 1788, column: 3, scope: !754)
!756 = !DILocation(line: 0, scope: !553)
!757 = !DILocation(line: 1790, column: 19, scope: !542)
!758 = !DILocation(line: 1788, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 1788, column: 3)
!760 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1788, column: 3)
!761 = !DILocation(line: 1788, column: 3, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 1788, column: 3)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 1788, column: 3)
!764 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1788, column: 3)
!765 = !DILocation(line: 1791, column: 15, scope: !553)
!766 = !DILocation(line: 1791, column: 5, scope: !553)
!767 = !DILocation(line: 1792, column: 26, scope: !553)
!768 = !DILocation(line: 1794, column: 1, scope: !542)
!769 = distinct !DISubprogram(name: "netif_set_ipaddr", scope: !3, file: !3, line: 500, type: !770, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !98, !57}
!772 = !{!773, !774, !775, !776}
!773 = !DILocalVariable(name: "netif", arg: 1, scope: !769, file: !3, line: 500, type: !98)
!774 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !769, file: !3, line: 500, type: !57)
!775 = !DILocalVariable(name: "old_addr", scope: !769, file: !3, line: 502, type: !66)
!776 = !DILocalVariable(name: "args", scope: !777, file: !3, line: 515, type: !191)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 513, column: 54)
!778 = distinct !DILexicalBlock(scope: !769, file: !3, line: 513, column: 7)
!779 = !DILocation(line: 500, column: 32, scope: !769)
!780 = !DILocation(line: 500, column: 57, scope: !769)
!781 = !DILocation(line: 502, column: 3, scope: !769)
!782 = !DILocation(line: 504, column: 3, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 504, column: 3)
!784 = distinct !DILexicalBlock(scope: !769, file: !3, line: 504, column: 3)
!785 = !DILocation(line: 504, column: 3, scope: !784)
!786 = !DILocation(line: 504, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 504, column: 3)
!788 = distinct !DILexicalBlock(scope: !783, file: !3, line: 504, column: 3)
!789 = !DILocation(line: 504, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 504, column: 3)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 504, column: 3)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 504, column: 3)
!793 = !DILocation(line: 507, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !769, file: !3, line: 507, column: 7)
!795 = !DILocation(line: 507, column: 7, scope: !769)
!796 = !DILocation(line: 502, column: 13, scope: !769)
!797 = !DILocation(line: 513, column: 7, scope: !778)
!798 = !DILocation(line: 513, column: 7, scope: !769)
!799 = !DILocation(line: 515, column: 5, scope: !777)
!800 = !DILocation(line: 516, column: 23, scope: !777)
!801 = !DILocation(line: 516, column: 35, scope: !777)
!802 = !DILocation(line: 515, column: 31, scope: !777)
!803 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !804)
!804 = distinct !DILocation(line: 517, column: 5, scope: !777)
!805 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !804)
!806 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !804)
!807 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !804)
!808 = !DILocation(line: 0, scope: !553, inlinedAt: !804)
!809 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !804)
!810 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !804)
!811 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !804)
!812 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !804)
!813 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !804)
!814 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !804)
!815 = !DILocation(line: 519, column: 3, scope: !778)
!816 = !DILocation(line: 519, column: 3, scope: !777)
!817 = !DILocation(line: 520, column: 1, scope: !769)
!818 = distinct !DISubprogram(name: "netif_do_set_ipaddr", scope: !3, file: !3, line: 457, type: !641, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !819)
!819 = !{!820, !821, !822, !823}
!820 = !DILocalVariable(name: "netif", arg: 1, scope: !818, file: !3, line: 457, type: !98)
!821 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !818, file: !3, line: 457, type: !57)
!822 = !DILocalVariable(name: "old_addr", arg: 3, scope: !818, file: !3, line: 457, type: !599)
!823 = !DILocalVariable(name: "new_addr", scope: !824, file: !3, line: 464, type: !66)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 463, column: 57)
!825 = distinct !DILexicalBlock(scope: !818, file: !3, line: 463, column: 7)
!826 = !DILocation(line: 457, column: 35, scope: !818)
!827 = !DILocation(line: 457, column: 60, scope: !818)
!828 = !DILocation(line: 457, column: 79, scope: !818)
!829 = !DILocation(line: 459, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 459, column: 3)
!831 = distinct !DILexicalBlock(scope: !818, file: !3, line: 459, column: 3)
!832 = !DILocation(line: 459, column: 3, scope: !831)
!833 = !DILocation(line: 459, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 459, column: 3)
!835 = distinct !DILexicalBlock(scope: !830, file: !3, line: 459, column: 3)
!836 = !DILocation(line: 459, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 459, column: 3)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 459, column: 3)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 459, column: 3)
!840 = !DILocation(line: 460, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 460, column: 3)
!842 = distinct !DILexicalBlock(scope: !818, file: !3, line: 460, column: 3)
!843 = !DILocation(line: 460, column: 3, scope: !842)
!844 = !DILocation(line: 460, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 460, column: 3)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 460, column: 3)
!847 = !DILocation(line: 460, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 460, column: 3)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 460, column: 3)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 460, column: 3)
!851 = !DILocation(line: 463, column: 7, scope: !825)
!852 = !DILocation(line: 463, column: 7, scope: !818)
!853 = !DILocation(line: 464, column: 5, scope: !824)
!854 = !DILocation(line: 465, column: 28, scope: !824)
!855 = !DILocation(line: 466, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !824, file: !3, line: 466, column: 5)
!857 = !DILocation(line: 468, column: 5, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 468, column: 5)
!859 = distinct !DILexicalBlock(scope: !824, file: !3, line: 468, column: 5)
!860 = !DILocation(line: 468, column: 5, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !3, line: 468, column: 5)
!862 = !DILocation(line: 468, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 468, column: 5)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 468, column: 5)
!865 = !DILocation(line: 468, column: 5, scope: !859)
!866 = !DILocation(line: 468, column: 5, scope: !864)
!867 = !DILocation(line: 468, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 468, column: 5)
!869 = distinct !DILexicalBlock(scope: !861, file: !3, line: 468, column: 5)
!870 = !DILocation(line: 464, column: 15, scope: !824)
!871 = !DILocalVariable(name: "old_addr", arg: 1, scope: !872, file: !3, line: 442, type: !64)
!872 = distinct !DISubprogram(name: "netif_do_ip_addr_changed", scope: !3, file: !3, line: 442, type: !873, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !64, !64}
!875 = !{!871, !876}
!876 = !DILocalVariable(name: "new_addr", arg: 2, scope: !872, file: !3, line: 442, type: !64)
!877 = !DILocation(line: 442, column: 43, scope: !872, inlinedAt: !878)
!878 = distinct !DILocation(line: 471, column: 5, scope: !824)
!879 = !DILocation(line: 442, column: 70, scope: !872, inlinedAt: !878)
!880 = !DILocation(line: 445, column: 3, scope: !872, inlinedAt: !878)
!881 = !DILocation(line: 448, column: 3, scope: !872, inlinedAt: !878)
!882 = !DILocation(line: 453, column: 1, scope: !872, inlinedAt: !878)
!883 = !DILocation(line: 476, column: 5, scope: !824)
!884 = !DILocation(line: 477, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !824, file: !3, line: 477, column: 5)
!886 = !DILocalVariable(name: "netif", arg: 1, scope: !887, file: !3, line: 875, type: !98)
!887 = distinct !DISubprogram(name: "netif_issue_reports", scope: !3, file: !3, line: 875, type: !888, isLocal: true, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !98, !47}
!890 = !{!886, !891}
!891 = !DILocalVariable(name: "report_type", arg: 2, scope: !887, file: !3, line: 875, type: !47)
!892 = !DILocation(line: 875, column: 35, scope: !887, inlinedAt: !893)
!893 = distinct !DILocation(line: 481, column: 5, scope: !824)
!894 = !DILocation(line: 875, column: 47, scope: !887, inlinedAt: !893)
!895 = !DILocation(line: 880, column: 16, scope: !896, inlinedAt: !893)
!896 = distinct !DILexicalBlock(scope: !887, file: !3, line: 880, column: 7)
!897 = !DILocation(line: 880, column: 9, scope: !896, inlinedAt: !893)
!898 = !DILocation(line: 880, column: 44, scope: !896, inlinedAt: !893)
!899 = !DILocation(line: 887, column: 8, scope: !900, inlinedAt: !893)
!900 = distinct !DILexicalBlock(scope: !887, file: !3, line: 886, column: 7)
!901 = !DILocation(line: 890, column: 22, scope: !902, inlinedAt: !893)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 890, column: 9)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 887, column: 52)
!904 = !DILocation(line: 886, column: 7, scope: !887, inlinedAt: !893)
!905 = !DILocation(line: 891, column: 7, scope: !906, inlinedAt: !893)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 890, column: 45)
!907 = !DILocation(line: 892, column: 5, scope: !906, inlinedAt: !893)
!908 = !DILocation(line: 912, column: 1, scope: !887, inlinedAt: !893)
!909 = !DILocation(line: 483, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 483, column: 5)
!911 = distinct !DILexicalBlock(scope: !824, file: !3, line: 483, column: 5)
!912 = !DILocation(line: 483, column: 5, scope: !911)
!913 = !DILocation(line: 483, column: 5, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 483, column: 5)
!915 = !DILocation(line: 485, column: 3, scope: !825)
!916 = !DILocation(line: 0, scope: !818)
!917 = !DILocation(line: 487, column: 1, scope: !818)
!918 = distinct !DISubprogram(name: "netif_set_netmask", scope: !3, file: !3, line: 560, type: !770, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !919)
!919 = !{!920, !921, !922, !923, !924}
!920 = !DILocalVariable(name: "netif", arg: 1, scope: !918, file: !3, line: 560, type: !98)
!921 = !DILocalVariable(name: "netmask", arg: 2, scope: !918, file: !3, line: 560, type: !57)
!922 = !DILocalVariable(name: "old_nm_val", scope: !918, file: !3, line: 563, type: !66)
!923 = !DILocalVariable(name: "old_nm", scope: !918, file: !3, line: 564, type: !599)
!924 = !DILocalVariable(name: "args", scope: !925, file: !3, line: 579, type: !191)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 577, column: 53)
!926 = distinct !DILexicalBlock(scope: !918, file: !3, line: 577, column: 7)
!927 = !DILocation(line: 560, column: 33, scope: !918)
!928 = !DILocation(line: 560, column: 58, scope: !918)
!929 = !DILocation(line: 563, column: 3, scope: !918)
!930 = !DILocation(line: 564, column: 14, scope: !918)
!931 = !DILocation(line: 570, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 570, column: 3)
!933 = distinct !DILexicalBlock(scope: !918, file: !3, line: 570, column: 3)
!934 = !DILocation(line: 570, column: 3, scope: !933)
!935 = !DILocation(line: 570, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 570, column: 3)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 570, column: 3)
!938 = !DILocation(line: 570, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 570, column: 3)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 570, column: 3)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 570, column: 3)
!942 = !DILocation(line: 573, column: 15, scope: !943)
!943 = distinct !DILexicalBlock(scope: !918, file: !3, line: 573, column: 7)
!944 = !DILocation(line: 573, column: 7, scope: !918)
!945 = !DILocation(line: 563, column: 13, scope: !918)
!946 = !DILocation(line: 523, column: 36, scope: !640, inlinedAt: !947)
!947 = distinct !DILocation(line: 577, column: 7, scope: !926)
!948 = !DILocation(line: 523, column: 61, scope: !640, inlinedAt: !947)
!949 = !DILocation(line: 523, column: 81, scope: !640, inlinedAt: !947)
!950 = !DILocation(line: 526, column: 7, scope: !652, inlinedAt: !947)
!951 = !DILocation(line: 526, column: 7, scope: !640, inlinedAt: !947)
!952 = !DILocation(line: 547, column: 1, scope: !640, inlinedAt: !947)
!953 = !DILocation(line: 577, column: 7, scope: !918)
!954 = !DILocation(line: 529, column: 5, scope: !657, inlinedAt: !947)
!955 = !DILocation(line: 529, column: 5, scope: !661, inlinedAt: !947)
!956 = !DILocation(line: 529, column: 5, scope: !663, inlinedAt: !947)
!957 = !DILocation(line: 529, column: 5, scope: !658, inlinedAt: !947)
!958 = !DILocation(line: 529, column: 5, scope: !664, inlinedAt: !947)
!959 = !DILocation(line: 535, column: 5, scope: !659, inlinedAt: !947)
!960 = !DILocation(line: 536, column: 5, scope: !672, inlinedAt: !947)
!961 = !DILocation(line: 579, column: 5, scope: !925)
!962 = !DILocation(line: 580, column: 23, scope: !925)
!963 = !DILocation(line: 580, column: 35, scope: !925)
!964 = !DILocation(line: 579, column: 31, scope: !925)
!965 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !966)
!966 = distinct !DILocation(line: 581, column: 5, scope: !925)
!967 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !966)
!968 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !966)
!969 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !966)
!970 = !DILocation(line: 0, scope: !553, inlinedAt: !966)
!971 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !966)
!972 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !966)
!973 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !966)
!974 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !966)
!975 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !966)
!976 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !966)
!977 = !DILocation(line: 583, column: 3, scope: !926)
!978 = !DILocation(line: 583, column: 3, scope: !925)
!979 = !DILocation(line: 584, column: 1, scope: !918)
!980 = distinct !DISubprogram(name: "netif_set_gw", scope: !3, file: !3, line: 621, type: !770, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !981)
!981 = !{!982, !983, !984, !985, !986}
!982 = !DILocalVariable(name: "netif", arg: 1, scope: !980, file: !3, line: 621, type: !98)
!983 = !DILocalVariable(name: "gw", arg: 2, scope: !980, file: !3, line: 621, type: !57)
!984 = !DILocalVariable(name: "old_gw_val", scope: !980, file: !3, line: 624, type: !66)
!985 = !DILocalVariable(name: "old_gw", scope: !980, file: !3, line: 625, type: !599)
!986 = !DILocalVariable(name: "args", scope: !987, file: !3, line: 640, type: !191)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 638, column: 43)
!988 = distinct !DILexicalBlock(scope: !980, file: !3, line: 638, column: 7)
!989 = !DILocation(line: 621, column: 28, scope: !980)
!990 = !DILocation(line: 621, column: 53, scope: !980)
!991 = !DILocation(line: 624, column: 3, scope: !980)
!992 = !DILocation(line: 625, column: 14, scope: !980)
!993 = !DILocation(line: 631, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 631, column: 3)
!995 = distinct !DILexicalBlock(scope: !980, file: !3, line: 631, column: 3)
!996 = !DILocation(line: 631, column: 3, scope: !995)
!997 = !DILocation(line: 631, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 631, column: 3)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 631, column: 3)
!1000 = !DILocation(line: 631, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 631, column: 3)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 631, column: 3)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 631, column: 3)
!1004 = !DILocation(line: 634, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !980, file: !3, line: 634, column: 7)
!1006 = !DILocation(line: 634, column: 7, scope: !980)
!1007 = !DILocation(line: 624, column: 13, scope: !980)
!1008 = !DILocation(line: 587, column: 31, scope: !681, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 638, column: 7, scope: !988)
!1010 = !DILocation(line: 587, column: 56, scope: !681, inlinedAt: !1009)
!1011 = !DILocation(line: 587, column: 71, scope: !681, inlinedAt: !1009)
!1012 = !DILocation(line: 590, column: 7, scope: !691, inlinedAt: !1009)
!1013 = !DILocation(line: 590, column: 7, scope: !681, inlinedAt: !1009)
!1014 = !DILocation(line: 609, column: 1, scope: !681, inlinedAt: !1009)
!1015 = !DILocation(line: 638, column: 7, scope: !980)
!1016 = !DILocation(line: 593, column: 5, scope: !696, inlinedAt: !1009)
!1017 = !DILocation(line: 593, column: 5, scope: !700, inlinedAt: !1009)
!1018 = !DILocation(line: 593, column: 5, scope: !702, inlinedAt: !1009)
!1019 = !DILocation(line: 593, column: 5, scope: !697, inlinedAt: !1009)
!1020 = !DILocation(line: 593, column: 5, scope: !703, inlinedAt: !1009)
!1021 = !DILocation(line: 598, column: 5, scope: !698, inlinedAt: !1009)
!1022 = !DILocation(line: 599, column: 5, scope: !711, inlinedAt: !1009)
!1023 = !DILocation(line: 640, column: 5, scope: !987)
!1024 = !DILocation(line: 641, column: 23, scope: !987)
!1025 = !DILocation(line: 641, column: 30, scope: !987)
!1026 = !DILocation(line: 640, column: 31, scope: !987)
!1027 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 642, column: 5, scope: !987)
!1029 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1028)
!1030 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1028)
!1031 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1028)
!1032 = !DILocation(line: 0, scope: !553, inlinedAt: !1028)
!1033 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1028)
!1034 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1028)
!1035 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1028)
!1036 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1028)
!1037 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1028)
!1038 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1028)
!1039 = !DILocation(line: 644, column: 3, scope: !988)
!1040 = !DILocation(line: 644, column: 3, scope: !987)
!1041 = !DILocation(line: 645, column: 1, scope: !980)
!1042 = distinct !DISubprogram(name: "netif_remove", scope: !3, file: !3, line: 737, type: !158, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1043)
!1043 = !{!1044, !1045, !1046}
!1044 = !DILocalVariable(name: "netif", arg: 1, scope: !1042, file: !3, line: 737, type: !98)
!1045 = !DILocalVariable(name: "i", scope: !1042, file: !3, line: 740, type: !26)
!1046 = !DILocalVariable(name: "tmp_netif", scope: !1047, file: !3, line: 793, type: !98)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 791, column: 10)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 789, column: 7)
!1049 = !DILocation(line: 737, column: 28, scope: !1042)
!1050 = !DILocation(line: 745, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 745, column: 7)
!1052 = !DILocation(line: 745, column: 7, scope: !1042)
!1053 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 749, column: 3, scope: !1042)
!1055 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1054)
!1056 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1054)
!1057 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1054)
!1058 = !DILocation(line: 0, scope: !553, inlinedAt: !1054)
!1059 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1054)
!1060 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1054)
!1061 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1054)
!1062 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1054)
!1063 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1054)
!1064 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1054)
!1065 = !DILocation(line: 752, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 752, column: 7)
!1067 = !DILocation(line: 752, column: 7, scope: !1042)
!1068 = !DILocation(line: 442, column: 43, scope: !872, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 753, column: 5, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 752, column: 52)
!1071 = !DILocation(line: 442, column: 70, scope: !872, inlinedAt: !1069)
!1072 = !DILocation(line: 445, column: 3, scope: !872, inlinedAt: !1069)
!1073 = !DILocation(line: 448, column: 3, scope: !872, inlinedAt: !1069)
!1074 = !DILocation(line: 453, column: 1, scope: !872, inlinedAt: !1069)
!1075 = !DILocation(line: 754, column: 3, scope: !1070)
!1076 = !DILocation(line: 740, column: 7, scope: !1042)
!1077 = !DILocation(line: 766, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 766, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 765, column: 49)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 765, column: 3)
!1081 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 765, column: 3)
!1082 = !DILocation(line: 766, column: 9, scope: !1079)
!1083 = !DILocation(line: 767, column: 32, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 766, column: 59)
!1085 = !DILocation(line: 442, column: 43, scope: !872, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 767, column: 7, scope: !1084)
!1087 = !DILocation(line: 442, column: 70, scope: !872, inlinedAt: !1086)
!1088 = !DILocation(line: 445, column: 3, scope: !872, inlinedAt: !1086)
!1089 = !DILocation(line: 448, column: 3, scope: !872, inlinedAt: !1086)
!1090 = !DILocation(line: 453, column: 1, scope: !872, inlinedAt: !1086)
!1091 = !DILocation(line: 768, column: 5, scope: !1084)
!1092 = !DILocalVariable(name: "netif", arg: 1, scope: !1093, file: !3, line: 919, type: !98)
!1093 = distinct !DISubprogram(name: "netif_set_down", scope: !3, file: !3, line: 919, type: !158, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1094)
!1094 = !{!1092, !1095}
!1095 = !DILocalVariable(name: "args", scope: !1096, file: !3, line: 928, type: !191)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 927, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 925, column: 37)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 925, column: 7)
!1099 = !DILocation(line: 919, column: 30, scope: !1093, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 777, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 775, column: 27)
!1102 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 775, column: 7)
!1103 = !DILocation(line: 928, column: 7, scope: !1096, inlinedAt: !1100)
!1104 = !DILocation(line: 929, column: 33, scope: !1096, inlinedAt: !1100)
!1105 = !DILocation(line: 928, column: 33, scope: !1096, inlinedAt: !1100)
!1106 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 930, column: 7, scope: !1096, inlinedAt: !1100)
!1108 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1107)
!1109 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1107)
!1110 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1107)
!1111 = !DILocation(line: 0, scope: !553, inlinedAt: !1107)
!1112 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1107)
!1113 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1107)
!1114 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1107)
!1115 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1107)
!1116 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1107)
!1117 = !DILocation(line: 934, column: 5, scope: !1118, inlinedAt: !1100)
!1118 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 934, column: 5)
!1119 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1107)
!1120 = !DILocation(line: 931, column: 5, scope: !1097, inlinedAt: !1100)
!1121 = !DILocation(line: 938, column: 22, scope: !1122, inlinedAt: !1100)
!1122 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 938, column: 9)
!1123 = !DILocation(line: 938, column: 9, scope: !1097, inlinedAt: !1100)
!1124 = !DILocation(line: 939, column: 7, scope: !1125, inlinedAt: !1100)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 938, column: 43)
!1126 = !DILocation(line: 940, column: 5, scope: !1125, inlinedAt: !1100)
!1127 = !DILocation(line: 944, column: 5, scope: !1097, inlinedAt: !1100)
!1128 = !DILocation(line: 947, column: 5, scope: !1129, inlinedAt: !1100)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 947, column: 5)
!1130 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 947, column: 5)
!1131 = !DILocation(line: 947, column: 5, scope: !1130, inlinedAt: !1100)
!1132 = !DILocation(line: 947, column: 5, scope: !1133, inlinedAt: !1100)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 947, column: 5)
!1134 = !DILocation(line: 949, column: 1, scope: !1093, inlinedAt: !1100)
!1135 = !DILocation(line: 778, column: 3, scope: !1101)
!1136 = !DILocation(line: 783, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 783, column: 7)
!1138 = !DILocation(line: 783, column: 21, scope: !1137)
!1139 = !DILocation(line: 783, column: 7, scope: !1042)
!1140 = !DILocalVariable(name: "netif", arg: 1, scope: !1141, file: !3, line: 822, type: !98)
!1141 = distinct !DISubprogram(name: "netif_set_default", scope: !3, file: !3, line: 822, type: !158, isLocal: false, isDefinition: true, scopeLine: 823, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1142)
!1142 = !{!1140}
!1143 = !DILocation(line: 822, column: 33, scope: !1141, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 785, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 783, column: 31)
!1146 = !DILocation(line: 833, column: 17, scope: !1141, inlinedAt: !1144)
!1147 = !DILocation(line: 836, column: 1, scope: !1141, inlinedAt: !1144)
!1148 = !DILocation(line: 786, column: 3, scope: !1145)
!1149 = !DILocation(line: 789, column: 7, scope: !1048)
!1150 = !DILocation(line: 789, column: 18, scope: !1048)
!1151 = !DILocation(line: 789, column: 7, scope: !1042)
!1152 = !DILocation(line: 790, column: 25, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 789, column: 28)
!1154 = !DILocation(line: 790, column: 16, scope: !1153)
!1155 = !DILocation(line: 791, column: 3, scope: !1153)
!1156 = !DILocation(line: 794, column: 5, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 794, column: 5)
!1158 = !DILocation(line: 793, column: 19, scope: !1047)
!1159 = !DILocation(line: 795, column: 22, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 795, column: 11)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 794, column: 30)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 794, column: 5)
!1163 = !DILocation(line: 795, column: 27, scope: !1160)
!1164 = !DILocation(line: 795, column: 11, scope: !1161)
!1165 = distinct !{!1165, !1156, !1166}
!1166 = !DILocation(line: 799, column: 5, scope: !1157)
!1167 = !DILocation(line: 796, column: 34, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 795, column: 37)
!1169 = !DILocation(line: 796, column: 25, scope: !1168)
!1170 = !DILocation(line: 807, column: 14, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 807, column: 7)
!1172 = !{!291, !292, i64 224}
!1173 = !DILocation(line: 807, column: 7, scope: !1171)
!1174 = !DILocation(line: 807, column: 7, scope: !1042)
!1175 = !DILocation(line: 808, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 807, column: 31)
!1177 = !DILocation(line: 809, column: 3, scope: !1176)
!1178 = !DILocation(line: 812, column: 1, scope: !1042)
!1179 = !DILocation(line: 772, column: 3, scope: !1042)
!1180 = !DILocation(line: 775, column: 7, scope: !1102)
!1181 = !DILocation(line: 775, column: 7, scope: !1042)
!1182 = !DILocation(line: 919, column: 30, scope: !1093)
!1183 = !DILocation(line: 923, column: 3, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 923, column: 3)
!1185 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 923, column: 3)
!1186 = !DILocation(line: 923, column: 3, scope: !1185)
!1187 = !DILocation(line: 923, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 923, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 923, column: 3)
!1190 = !DILocation(line: 923, column: 3, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 923, column: 3)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 923, column: 3)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 923, column: 3)
!1194 = !DILocation(line: 925, column: 14, scope: !1098)
!1195 = !DILocation(line: 925, column: 20, scope: !1098)
!1196 = !DILocation(line: 925, column: 7, scope: !1093)
!1197 = !DILocation(line: 928, column: 7, scope: !1096)
!1198 = !DILocation(line: 929, column: 33, scope: !1096)
!1199 = !DILocation(line: 928, column: 33, scope: !1096)
!1200 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 930, column: 7, scope: !1096)
!1202 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1201)
!1203 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1201)
!1204 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1201)
!1205 = !DILocation(line: 0, scope: !553, inlinedAt: !1201)
!1206 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1201)
!1207 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1201)
!1208 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1201)
!1209 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1201)
!1210 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1201)
!1211 = !DILocation(line: 934, column: 5, scope: !1118)
!1212 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1201)
!1213 = !DILocation(line: 931, column: 5, scope: !1097)
!1214 = !DILocation(line: 938, column: 22, scope: !1122)
!1215 = !DILocation(line: 938, column: 9, scope: !1097)
!1216 = !DILocation(line: 939, column: 7, scope: !1125)
!1217 = !DILocation(line: 940, column: 5, scope: !1125)
!1218 = !DILocation(line: 944, column: 5, scope: !1097)
!1219 = !DILocation(line: 947, column: 5, scope: !1129)
!1220 = !DILocation(line: 947, column: 5, scope: !1130)
!1221 = !DILocation(line: 947, column: 5, scope: !1133)
!1222 = !DILocation(line: 949, column: 1, scope: !1093)
!1223 = !DILocation(line: 822, column: 33, scope: !1141)
!1224 = !DILocation(line: 833, column: 17, scope: !1141)
!1225 = !DILocation(line: 836, column: 1, scope: !1141)
!1226 = distinct !DISubprogram(name: "netif_set_up", scope: !3, file: !3, line: 844, type: !158, isLocal: false, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1227)
!1227 = !{!1228, !1229}
!1228 = !DILocalVariable(name: "netif", arg: 1, scope: !1226, file: !3, line: 844, type: !98)
!1229 = !DILocalVariable(name: "args", scope: !1230, file: !3, line: 859, type: !191)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 858, column: 5)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 850, column: 40)
!1232 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 850, column: 7)
!1233 = !DILocation(line: 844, column: 28, scope: !1226)
!1234 = !DILocation(line: 848, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 848, column: 3)
!1236 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 848, column: 3)
!1237 = !DILocation(line: 848, column: 3, scope: !1236)
!1238 = !DILocation(line: 848, column: 3, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 848, column: 3)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 848, column: 3)
!1241 = !DILocation(line: 848, column: 3, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 848, column: 3)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 848, column: 3)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 848, column: 3)
!1245 = !DILocation(line: 850, column: 16, scope: !1232)
!1246 = !DILocation(line: 850, column: 22, scope: !1232)
!1247 = !DILocation(line: 850, column: 7, scope: !1226)
!1248 = !DILocation(line: 851, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 851, column: 5)
!1250 = !DILocation(line: 855, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 855, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 855, column: 5)
!1253 = !DILocation(line: 855, column: 5, scope: !1252)
!1254 = !DILocation(line: 855, column: 5, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 855, column: 5)
!1256 = !DILocation(line: 859, column: 7, scope: !1230)
!1257 = !DILocation(line: 860, column: 33, scope: !1230)
!1258 = !DILocation(line: 859, column: 33, scope: !1230)
!1259 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 861, column: 7, scope: !1230)
!1261 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1260)
!1262 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1260)
!1263 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1260)
!1264 = !DILocation(line: 0, scope: !553, inlinedAt: !1260)
!1265 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1260)
!1266 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1260)
!1267 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1260)
!1268 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1260)
!1269 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1260)
!1270 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1260)
!1271 = !DILocation(line: 862, column: 5, scope: !1231)
!1272 = !DILocation(line: 875, column: 35, scope: !887, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 865, column: 5, scope: !1231)
!1274 = !DILocation(line: 875, column: 47, scope: !887, inlinedAt: !1273)
!1275 = !DILocation(line: 880, column: 16, scope: !896, inlinedAt: !1273)
!1276 = !DILocation(line: 880, column: 9, scope: !896, inlinedAt: !1273)
!1277 = !DILocation(line: 880, column: 44, scope: !896, inlinedAt: !1273)
!1278 = !DILocation(line: 887, column: 8, scope: !900, inlinedAt: !1273)
!1279 = !DILocation(line: 890, column: 22, scope: !902, inlinedAt: !1273)
!1280 = !DILocation(line: 886, column: 7, scope: !887, inlinedAt: !1273)
!1281 = !DILocation(line: 891, column: 7, scope: !906, inlinedAt: !1273)
!1282 = !DILocation(line: 892, column: 5, scope: !906, inlinedAt: !1273)
!1283 = !DILocation(line: 908, column: 5, scope: !1284, inlinedAt: !1273)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 905, column: 45)
!1285 = distinct !DILexicalBlock(scope: !887, file: !3, line: 905, column: 7)
!1286 = !DILocation(line: 910, column: 3, scope: !1284, inlinedAt: !1273)
!1287 = !DILocation(line: 912, column: 1, scope: !887, inlinedAt: !1273)
!1288 = !DILocation(line: 867, column: 5, scope: !1231)
!1289 = !DILocation(line: 869, column: 3, scope: !1231)
!1290 = !DILocation(line: 870, column: 1, scope: !1226)
!1291 = distinct !DISubprogram(name: "netif_set_status_callback", scope: !3, file: !3, line: 957, type: !1292, isLocal: false, isDefinition: true, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !98, !156}
!1294 = !{!1295, !1296}
!1295 = !DILocalVariable(name: "netif", arg: 1, scope: !1291, file: !3, line: 957, type: !98)
!1296 = !DILocalVariable(name: "status_callback", arg: 2, scope: !1291, file: !3, line: 957, type: !156)
!1297 = !DILocation(line: 957, column: 41, scope: !1291)
!1298 = !DILocation(line: 957, column: 73, scope: !1291)
!1299 = !DILocation(line: 961, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 961, column: 7)
!1301 = !DILocation(line: 961, column: 7, scope: !1291)
!1302 = !DILocation(line: 962, column: 12, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 961, column: 14)
!1304 = !DILocation(line: 962, column: 28, scope: !1303)
!1305 = !DILocation(line: 963, column: 3, scope: !1303)
!1306 = !DILocation(line: 964, column: 1, scope: !1291)
!1307 = distinct !DISubprogram(name: "netif_set_remove_callback", scope: !3, file: !3, line: 973, type: !1292, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1308)
!1308 = !{!1309, !1310}
!1309 = !DILocalVariable(name: "netif", arg: 1, scope: !1307, file: !3, line: 973, type: !98)
!1310 = !DILocalVariable(name: "remove_callback", arg: 2, scope: !1307, file: !3, line: 973, type: !156)
!1311 = !DILocation(line: 973, column: 41, scope: !1307)
!1312 = !DILocation(line: 973, column: 73, scope: !1307)
!1313 = !DILocation(line: 977, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 977, column: 7)
!1315 = !DILocation(line: 977, column: 7, scope: !1307)
!1316 = !DILocation(line: 978, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 977, column: 14)
!1318 = !DILocation(line: 978, column: 28, scope: !1317)
!1319 = !DILocation(line: 979, column: 3, scope: !1317)
!1320 = !DILocation(line: 980, column: 1, scope: !1307)
!1321 = distinct !DISubprogram(name: "netif_set_link_up", scope: !3, file: !3, line: 988, type: !158, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1322)
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "netif", arg: 1, scope: !1321, file: !3, line: 988, type: !98)
!1324 = !DILocalVariable(name: "args", scope: !1325, file: !3, line: 1013, type: !191)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1012, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 994, column: 45)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 994, column: 7)
!1328 = !DILocation(line: 988, column: 33, scope: !1321)
!1329 = !DILocation(line: 992, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 992, column: 3)
!1331 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 992, column: 3)
!1332 = !DILocation(line: 992, column: 3, scope: !1331)
!1333 = !DILocation(line: 992, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 992, column: 3)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 992, column: 3)
!1336 = !DILocation(line: 992, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 992, column: 3)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 992, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 992, column: 3)
!1340 = !DILocation(line: 994, column: 16, scope: !1327)
!1341 = !DILocation(line: 994, column: 22, scope: !1327)
!1342 = !DILocation(line: 994, column: 7, scope: !1321)
!1343 = !DILocation(line: 995, column: 5, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 995, column: 5)
!1345 = !DILocation(line: 875, column: 35, scope: !887, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 1005, column: 5, scope: !1326)
!1347 = !DILocation(line: 875, column: 47, scope: !887, inlinedAt: !1346)
!1348 = !DILocation(line: 880, column: 9, scope: !896, inlinedAt: !1346)
!1349 = !DILocation(line: 880, column: 44, scope: !896, inlinedAt: !1346)
!1350 = !DILocation(line: 887, column: 8, scope: !900, inlinedAt: !1346)
!1351 = !DILocation(line: 890, column: 22, scope: !902, inlinedAt: !1346)
!1352 = !DILocation(line: 886, column: 7, scope: !887, inlinedAt: !1346)
!1353 = !DILocation(line: 891, column: 7, scope: !906, inlinedAt: !1346)
!1354 = !DILocation(line: 892, column: 5, scope: !906, inlinedAt: !1346)
!1355 = !DILocation(line: 908, column: 5, scope: !1284, inlinedAt: !1346)
!1356 = !DILocation(line: 910, column: 3, scope: !1284, inlinedAt: !1346)
!1357 = !DILocation(line: 912, column: 1, scope: !887, inlinedAt: !1346)
!1358 = !DILocation(line: 1007, column: 5, scope: !1326)
!1359 = !DILocation(line: 1013, column: 7, scope: !1325)
!1360 = !DILocation(line: 1014, column: 31, scope: !1325)
!1361 = !DILocation(line: 1013, column: 33, scope: !1325)
!1362 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 1015, column: 7, scope: !1325)
!1364 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1363)
!1365 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1363)
!1366 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1363)
!1367 = !DILocation(line: 0, scope: !553, inlinedAt: !1363)
!1368 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1363)
!1369 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1363)
!1370 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1363)
!1371 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1363)
!1372 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1363)
!1373 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1363)
!1374 = !DILocation(line: 1016, column: 5, scope: !1326)
!1375 = !DILocation(line: 1018, column: 3, scope: !1326)
!1376 = !DILocation(line: 1019, column: 1, scope: !1321)
!1377 = distinct !DISubprogram(name: "netif_set_link_down", scope: !3, file: !3, line: 1026, type: !158, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1378)
!1378 = !{!1379, !1380}
!1379 = !DILocalVariable(name: "netif", arg: 1, scope: !1377, file: !3, line: 1026, type: !98)
!1380 = !DILocalVariable(name: "args", scope: !1381, file: !3, line: 1037, type: !191)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1036, column: 5)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 1032, column: 42)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1032, column: 7)
!1384 = !DILocation(line: 1026, column: 35, scope: !1377)
!1385 = !DILocation(line: 1030, column: 3, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1030, column: 3)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1030, column: 3)
!1388 = !DILocation(line: 1030, column: 3, scope: !1387)
!1389 = !DILocation(line: 1030, column: 3, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1030, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 1030, column: 3)
!1392 = !DILocation(line: 1030, column: 3, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1030, column: 3)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1030, column: 3)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 1030, column: 3)
!1396 = !DILocation(line: 1032, column: 14, scope: !1383)
!1397 = !DILocation(line: 1032, column: 20, scope: !1383)
!1398 = !DILocation(line: 1032, column: 7, scope: !1377)
!1399 = !DILocation(line: 1033, column: 5, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1033, column: 5)
!1401 = !DILocation(line: 1037, column: 7, scope: !1381)
!1402 = !DILocation(line: 1038, column: 31, scope: !1381)
!1403 = !DILocation(line: 1037, column: 33, scope: !1381)
!1404 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 1039, column: 7, scope: !1381)
!1406 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1405)
!1407 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1405)
!1408 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1405)
!1409 = !DILocation(line: 0, scope: !553, inlinedAt: !1405)
!1410 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1405)
!1411 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1405)
!1412 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1405)
!1413 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1405)
!1414 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1405)
!1415 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1405)
!1416 = !DILocation(line: 1040, column: 5, scope: !1382)
!1417 = !DILocation(line: 1042, column: 3, scope: !1382)
!1418 = !DILocation(line: 1043, column: 1, scope: !1377)
!1419 = distinct !DISubprogram(name: "netif_ip6_addr_set", scope: !3, file: !3, line: 1314, type: !1420, isLocal: false, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !98, !120, !84}
!1422 = !{!1423, !1424, !1425}
!1423 = !DILocalVariable(name: "netif", arg: 1, scope: !1419, file: !3, line: 1314, type: !98)
!1424 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1419, file: !3, line: 1314, type: !120)
!1425 = !DILocalVariable(name: "addr6", arg: 3, scope: !1419, file: !3, line: 1314, type: !84)
!1426 = !DILocation(line: 1314, column: 34, scope: !1419)
!1427 = !DILocation(line: 1314, column: 46, scope: !1419)
!1428 = !DILocation(line: 1314, column: 74, scope: !1419)
!1429 = !DILocation(line: 1318, column: 3, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1318, column: 3)
!1431 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1318, column: 3)
!1432 = !DILocation(line: 1318, column: 3, scope: !1431)
!1433 = !DILocation(line: 1318, column: 3, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 1318, column: 3)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 1318, column: 3)
!1436 = !DILocation(line: 1318, column: 3, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1318, column: 3)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 1318, column: 3)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1318, column: 3)
!1440 = !DILocation(line: 1319, column: 3, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1319, column: 3)
!1442 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1319, column: 3)
!1443 = !DILocation(line: 1319, column: 3, scope: !1442)
!1444 = !DILocation(line: 1319, column: 3, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 1319, column: 3)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1319, column: 3)
!1447 = !DILocation(line: 1319, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1319, column: 3)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1319, column: 3)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1319, column: 3)
!1451 = !DILocation(line: 1321, column: 45, scope: !1419)
!1452 = !DILocation(line: 1321, column: 61, scope: !1419)
!1453 = !DILocation(line: 1322, column: 28, scope: !1419)
!1454 = !DILocation(line: 1322, column: 44, scope: !1419)
!1455 = !DILocation(line: 1321, column: 3, scope: !1419)
!1456 = !DILocation(line: 1323, column: 1, scope: !1419)
!1457 = distinct !DISubprogram(name: "netif_ip6_addr_set_parts", scope: !3, file: !3, line: 1336, type: !1458, isLocal: false, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !98, !120, !54, !54, !54, !54}
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1461 = !DILocalVariable(name: "netif", arg: 1, scope: !1457, file: !3, line: 1336, type: !98)
!1462 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1457, file: !3, line: 1336, type: !120)
!1463 = !DILocalVariable(name: "i0", arg: 3, scope: !1457, file: !3, line: 1336, type: !54)
!1464 = !DILocalVariable(name: "i1", arg: 4, scope: !1457, file: !3, line: 1336, type: !54)
!1465 = !DILocalVariable(name: "i2", arg: 5, scope: !1457, file: !3, line: 1336, type: !54)
!1466 = !DILocalVariable(name: "i3", arg: 6, scope: !1457, file: !3, line: 1336, type: !54)
!1467 = !DILocalVariable(name: "old_addr", scope: !1457, file: !3, line: 1338, type: !66)
!1468 = !DILocalVariable(name: "new_ipaddr", scope: !1457, file: !3, line: 1339, type: !66)
!1469 = !DILocalVariable(name: "args", scope: !1470, file: !3, line: 1369, type: !191)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1368, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1349, column: 85)
!1472 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1348, column: 7)
!1473 = !DILocation(line: 1336, column: 40, scope: !1457)
!1474 = !DILocation(line: 1336, column: 52, scope: !1457)
!1475 = !DILocation(line: 1336, column: 68, scope: !1457)
!1476 = !DILocation(line: 1336, column: 78, scope: !1457)
!1477 = !DILocation(line: 1336, column: 88, scope: !1457)
!1478 = !DILocation(line: 1336, column: 98, scope: !1457)
!1479 = !DILocation(line: 1338, column: 3, scope: !1457)
!1480 = !DILocation(line: 1339, column: 3, scope: !1457)
!1481 = !DILocation(line: 1341, column: 3, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 1341, column: 3)
!1483 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1341, column: 3)
!1484 = !DILocation(line: 1341, column: 3, scope: !1483)
!1485 = !DILocation(line: 1341, column: 3, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 1341, column: 3)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 1341, column: 3)
!1488 = !DILocation(line: 1341, column: 3, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1341, column: 3)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 1341, column: 3)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1341, column: 3)
!1492 = !DILocation(line: 1342, column: 3, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1342, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1342, column: 3)
!1495 = !DILocation(line: 1342, column: 3, scope: !1494)
!1496 = !DILocation(line: 1342, column: 3, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 1342, column: 3)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1342, column: 3)
!1499 = !DILocation(line: 1342, column: 3, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1342, column: 3)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1342, column: 3)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 1342, column: 3)
!1503 = !DILocation(line: 1344, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1344, column: 3)
!1505 = !DILocation(line: 1345, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1345, column: 3)
!1507 = !DILocation(line: 1348, column: 37, scope: !1472)
!1508 = !DILocation(line: 1348, column: 77, scope: !1472)
!1509 = !DILocation(line: 1348, column: 44, scope: !1472)
!1510 = !DILocation(line: 1349, column: 37, scope: !1472)
!1511 = !DILocation(line: 1349, column: 77, scope: !1472)
!1512 = !DILocation(line: 1352, column: 5, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1352, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1352, column: 5)
!1515 = !DILocation(line: 1352, column: 5, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1352, column: 5)
!1517 = !DILocation(line: 1353, column: 5, scope: !1471)
!1518 = !DILocation(line: 1355, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1355, column: 9)
!1520 = !DILocation(line: 1355, column: 9, scope: !1471)
!1521 = !DILocation(line: 1360, column: 5, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1360, column: 5)
!1523 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1360, column: 5)
!1524 = !DILocation(line: 1360, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1360, column: 5)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 1360, column: 5)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1360, column: 5)
!1528 = !DILocation(line: 1360, column: 5, scope: !1523)
!1529 = !DILocation(line: 1339, column: 13, scope: !1457)
!1530 = !DILocation(line: 442, column: 43, scope: !872, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 1356, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1355, column: 66)
!1533 = !DILocation(line: 442, column: 70, scope: !872, inlinedAt: !1531)
!1534 = !DILocation(line: 445, column: 3, scope: !872, inlinedAt: !1531)
!1535 = !DILocation(line: 448, column: 3, scope: !872, inlinedAt: !1531)
!1536 = !DILocation(line: 453, column: 1, scope: !872, inlinedAt: !1531)
!1537 = !DILocation(line: 1360, column: 5, scope: !1527)
!1538 = !DILocation(line: 1360, column: 5, scope: !1526)
!1539 = !DILocation(line: 1360, column: 5, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 1360, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 1360, column: 5)
!1542 = !DILocation(line: 1362, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1362, column: 9)
!1544 = !DILocation(line: 1362, column: 9, scope: !1471)
!1545 = !DILocation(line: 875, column: 35, scope: !887, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 1363, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1362, column: 66)
!1548 = !DILocation(line: 875, column: 47, scope: !887, inlinedAt: !1546)
!1549 = !DILocation(line: 880, column: 16, scope: !896, inlinedAt: !1546)
!1550 = !DILocation(line: 880, column: 44, scope: !896, inlinedAt: !1546)
!1551 = !DILocation(line: 908, column: 5, scope: !1284, inlinedAt: !1546)
!1552 = !DILocation(line: 910, column: 3, scope: !1284, inlinedAt: !1546)
!1553 = !DILocation(line: 912, column: 1, scope: !887, inlinedAt: !1546)
!1554 = !DILocation(line: 1364, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1364, column: 7)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1364, column: 7)
!1557 = !DILocation(line: 1364, column: 7, scope: !1556)
!1558 = !DILocation(line: 1364, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1364, column: 7)
!1560 = !DILocation(line: 1369, column: 7, scope: !1470)
!1561 = !DILocation(line: 1370, column: 33, scope: !1470)
!1562 = !DILocation(line: 1371, column: 21, scope: !1470)
!1563 = !DILocation(line: 1371, column: 33, scope: !1470)
!1564 = !DILocation(line: 1369, column: 33, scope: !1470)
!1565 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 1372, column: 7, scope: !1470)
!1567 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1566)
!1568 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1566)
!1569 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1566)
!1570 = !DILocation(line: 0, scope: !553, inlinedAt: !1566)
!1571 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1566)
!1572 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1566)
!1573 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1566)
!1574 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1566)
!1575 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1566)
!1576 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1566)
!1577 = !DILocation(line: 1373, column: 5, scope: !1471)
!1578 = !DILocation(line: 1375, column: 3, scope: !1471)
!1579 = !DILocation(line: 1380, column: 1, scope: !1457)
!1580 = distinct !DISubprogram(name: "netif_ip6_addr_set_state", scope: !3, file: !3, line: 1393, type: !1581, isLocal: false, isDefinition: true, scopeLine: 1394, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !98, !120, !47}
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1591, !1592}
!1584 = !DILocalVariable(name: "netif", arg: 1, scope: !1580, file: !3, line: 1393, type: !98)
!1585 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1580, file: !3, line: 1393, type: !120)
!1586 = !DILocalVariable(name: "state", arg: 3, scope: !1580, file: !3, line: 1393, type: !47)
!1587 = !DILocalVariable(name: "old_state", scope: !1580, file: !3, line: 1395, type: !47)
!1588 = !DILocalVariable(name: "old_valid", scope: !1589, file: !3, line: 1403, type: !47)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1402, column: 27)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1402, column: 7)
!1591 = !DILocalVariable(name: "new_valid", scope: !1589, file: !3, line: 1404, type: !47)
!1592 = !DILocalVariable(name: "args", scope: !1593, file: !3, line: 1436, type: !191)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1435, column: 5)
!1594 = !DILocation(line: 1393, column: 40, scope: !1580)
!1595 = !DILocation(line: 1393, column: 52, scope: !1580)
!1596 = !DILocation(line: 1393, column: 67, scope: !1580)
!1597 = !DILocation(line: 1397, column: 3, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1397, column: 3)
!1599 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1397, column: 3)
!1600 = !DILocation(line: 1397, column: 3, scope: !1599)
!1601 = !DILocation(line: 1397, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1397, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 1397, column: 3)
!1604 = !DILocation(line: 1397, column: 3, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 1397, column: 3)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 1397, column: 3)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1397, column: 3)
!1608 = !DILocation(line: 1398, column: 3, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 1398, column: 3)
!1610 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1398, column: 3)
!1611 = !DILocation(line: 1398, column: 3, scope: !1610)
!1612 = !DILocation(line: 1398, column: 3, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1398, column: 3)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 1398, column: 3)
!1615 = !DILocation(line: 1398, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1398, column: 3)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1398, column: 3)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1398, column: 3)
!1619 = !DILocation(line: 1400, column: 15, scope: !1580)
!1620 = !DILocation(line: 1395, column: 8, scope: !1580)
!1621 = !DILocation(line: 1402, column: 17, scope: !1590)
!1622 = !DILocation(line: 1402, column: 7, scope: !1580)
!1623 = !DILocation(line: 1403, column: 32, scope: !1589)
!1624 = !DILocation(line: 1403, column: 10, scope: !1589)
!1625 = !DILocation(line: 1404, column: 28, scope: !1589)
!1626 = !DILocation(line: 1404, column: 10, scope: !1589)
!1627 = !DILocation(line: 1409, column: 16, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1409, column: 9)
!1629 = !DILocation(line: 1409, column: 22, scope: !1628)
!1630 = !DILocation(line: 1409, column: 9, scope: !1589)
!1631 = !DILocation(line: 1410, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 1409, column: 41)
!1633 = !DILocation(line: 1411, column: 5, scope: !1632)
!1634 = !DILocation(line: 1414, column: 9, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1414, column: 9)
!1636 = !DILocation(line: 1414, column: 23, scope: !1635)
!1637 = !DILocation(line: 1414, column: 19, scope: !1635)
!1638 = !DILocation(line: 1416, column: 32, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1414, column: 34)
!1640 = !DILocation(line: 442, column: 43, scope: !872, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 1416, column: 7, scope: !1639)
!1642 = !DILocation(line: 442, column: 70, scope: !872, inlinedAt: !1641)
!1643 = !DILocation(line: 445, column: 3, scope: !872, inlinedAt: !1641)
!1644 = !DILocation(line: 448, column: 3, scope: !872, inlinedAt: !1641)
!1645 = !DILocation(line: 453, column: 1, scope: !872, inlinedAt: !1641)
!1646 = !DILocation(line: 1419, column: 37, scope: !1589)
!1647 = !DILocation(line: 1421, column: 20, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1421, column: 9)
!1649 = !DILocation(line: 1421, column: 10, scope: !1648)
!1650 = !DILocation(line: 1421, column: 23, scope: !1648)
!1651 = !DILocation(line: 875, column: 35, scope: !887, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 1426, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1421, column: 34)
!1654 = !DILocation(line: 875, column: 47, scope: !887, inlinedAt: !1652)
!1655 = !DILocation(line: 880, column: 16, scope: !896, inlinedAt: !1652)
!1656 = !DILocation(line: 880, column: 44, scope: !896, inlinedAt: !1652)
!1657 = !DILocation(line: 908, column: 5, scope: !1284, inlinedAt: !1652)
!1658 = !DILocation(line: 910, column: 3, scope: !1284, inlinedAt: !1652)
!1659 = !DILocation(line: 912, column: 1, scope: !887, inlinedAt: !1652)
!1660 = !DILocation(line: 1427, column: 5, scope: !1653)
!1661 = !DILocation(line: 1428, column: 54, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1428, column: 9)
!1663 = !DILocation(line: 1428, column: 9, scope: !1589)
!1664 = !DILocation(line: 1431, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 1431, column: 7)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1431, column: 7)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 1429, column: 55)
!1668 = !DILocation(line: 1431, column: 7, scope: !1666)
!1669 = !DILocation(line: 1431, column: 7, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1431, column: 7)
!1671 = !DILocation(line: 1436, column: 7, scope: !1593)
!1672 = !DILocation(line: 1437, column: 12, scope: !1593)
!1673 = !DILocation(line: 1437, column: 47, scope: !1593)
!1674 = !DILocation(line: 1438, column: 36, scope: !1593)
!1675 = !DILocation(line: 1438, column: 47, scope: !1593)
!1676 = !DILocation(line: 1439, column: 49, scope: !1593)
!1677 = !DILocation(line: 1439, column: 36, scope: !1593)
!1678 = !DILocation(line: 1439, column: 47, scope: !1593)
!1679 = !DILocation(line: 1436, column: 33, scope: !1593)
!1680 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 1440, column: 7, scope: !1593)
!1682 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1681)
!1683 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1681)
!1684 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1681)
!1685 = !DILocation(line: 0, scope: !553, inlinedAt: !1681)
!1686 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1681)
!1687 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1681)
!1688 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1681)
!1689 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1681)
!1690 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1681)
!1691 = !DILocation(line: 1794, column: 1, scope: !542, inlinedAt: !1681)
!1692 = !DILocation(line: 1441, column: 5, scope: !1589)
!1693 = !DILocation(line: 1443, column: 3, scope: !1589)
!1694 = !DILocation(line: 1447, column: 1, scope: !1580)
!1695 = distinct !DISubprogram(name: "netif_get_ip6_addr_match", scope: !3, file: !3, line: 1464, type: !1696, isLocal: false, isDefinition: true, scopeLine: 1465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!120, !98, !84}
!1698 = !{!1699, !1700, !1701}
!1699 = !DILocalVariable(name: "netif", arg: 1, scope: !1695, file: !3, line: 1464, type: !98)
!1700 = !DILocalVariable(name: "ip6addr", arg: 2, scope: !1695, file: !3, line: 1464, type: !84)
!1701 = !DILocalVariable(name: "i", scope: !1695, file: !3, line: 1466, type: !120)
!1702 = !DILocation(line: 1464, column: 40, scope: !1695)
!1703 = !DILocation(line: 1464, column: 65, scope: !1695)
!1704 = !DILocation(line: 1470, column: 3, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1470, column: 3)
!1706 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1470, column: 3)
!1707 = !DILocation(line: 1470, column: 3, scope: !1706)
!1708 = !DILocation(line: 1470, column: 3, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1470, column: 3)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 1470, column: 3)
!1711 = !DILocation(line: 1470, column: 3, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1470, column: 3)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1470, column: 3)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 1470, column: 3)
!1715 = !DILocation(line: 1471, column: 3, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 1471, column: 3)
!1717 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1471, column: 3)
!1718 = !DILocation(line: 1471, column: 3, scope: !1717)
!1719 = !DILocation(line: 1471, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 1471, column: 3)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 1471, column: 3)
!1722 = !DILocation(line: 1471, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1471, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1471, column: 3)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1471, column: 3)
!1726 = !DILocation(line: 1474, column: 7, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1474, column: 7)
!1728 = !{!1729, !293, i64 16}
!1729 = !{!"ip6_addr", !293, i64 0, !293, i64 16}
!1730 = !DILocation(line: 1474, column: 34, scope: !1727)
!1731 = !DILocation(line: 1474, column: 38, scope: !1727)
!1732 = !DILocation(line: 1474, column: 7, scope: !1695)
!1733 = !DILocation(line: 1466, column: 8, scope: !1695)
!1734 = !DILocation(line: 1480, column: 10, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 1480, column: 9)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1479, column: 49)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 1479, column: 3)
!1738 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1479, column: 3)
!1739 = !DILocation(line: 1480, column: 61, scope: !1735)
!1740 = !DILocation(line: 1481, column: 9, scope: !1735)
!1741 = !DILocation(line: 1480, column: 9, scope: !1736)
!1742 = !DILocation(line: 0, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 1474, column: 74)
!1744 = !DILocation(line: 1486, column: 1, scope: !1695)
!1745 = distinct !DISubprogram(name: "netif_create_ip6_linklocal_address", scope: !3, file: !3, line: 1497, type: !888, isLocal: false, isDefinition: true, scopeLine: 1498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1746)
!1746 = !{!1747, !1748, !1749, !1750}
!1747 = !DILocalVariable(name: "netif", arg: 1, scope: !1745, file: !3, line: 1497, type: !98)
!1748 = !DILocalVariable(name: "from_mac_48bit", arg: 2, scope: !1745, file: !3, line: 1497, type: !47)
!1749 = !DILocalVariable(name: "i", scope: !1745, file: !3, line: 1499, type: !47)
!1750 = !DILocalVariable(name: "addr_index", scope: !1745, file: !3, line: 1499, type: !47)
!1751 = !DILocation(line: 1497, column: 50, scope: !1745)
!1752 = !DILocation(line: 1497, column: 62, scope: !1745)
!1753 = !DILocation(line: 1503, column: 3, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1503, column: 3)
!1755 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 1503, column: 3)
!1756 = !DILocation(line: 1503, column: 3, scope: !1755)
!1757 = !DILocation(line: 1503, column: 3, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 1503, column: 3)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1503, column: 3)
!1760 = !DILocation(line: 1503, column: 3, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 1503, column: 3)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1503, column: 3)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 1503, column: 3)
!1764 = !DILocation(line: 1506, column: 3, scope: !1745)
!1765 = !DILocation(line: 1506, column: 42, scope: !1745)
!1766 = !DILocation(line: 1507, column: 3, scope: !1745)
!1767 = !DILocation(line: 1507, column: 42, scope: !1745)
!1768 = !DILocation(line: 1510, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 1510, column: 7)
!1770 = !DILocation(line: 1510, column: 7, scope: !1745)
!1771 = !DILocation(line: 1512, column: 67, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1510, column: 23)
!1773 = !DILocation(line: 1512, column: 84, scope: !1772)
!1774 = !DILocation(line: 1512, column: 93, scope: !1772)
!1775 = !DILocation(line: 1513, column: 18, scope: !1772)
!1776 = !DILocation(line: 1513, column: 10, scope: !1772)
!1777 = !DILocation(line: 1513, column: 36, scope: !1772)
!1778 = !DILocation(line: 1514, column: 18, scope: !1772)
!1779 = !DILocation(line: 1514, column: 10, scope: !1772)
!1780 = !DILocation(line: 1514, column: 36, scope: !1772)
!1781 = !DILocation(line: 1513, column: 43, scope: !1772)
!1782 = !DILocation(line: 1514, column: 42, scope: !1772)
!1783 = !DILocation(line: 1512, column: 46, scope: !1772)
!1784 = !DILocation(line: 1512, column: 5, scope: !1772)
!1785 = !DILocation(line: 1512, column: 44, scope: !1772)
!1786 = !DILocation(line: 1517, column: 18, scope: !1772)
!1787 = !DILocation(line: 1517, column: 10, scope: !1772)
!1788 = !DILocation(line: 1517, column: 36, scope: !1772)
!1789 = !DILocation(line: 1518, column: 18, scope: !1772)
!1790 = !DILocation(line: 1518, column: 10, scope: !1772)
!1791 = !DILocation(line: 1518, column: 36, scope: !1772)
!1792 = !DILocation(line: 1519, column: 10, scope: !1772)
!1793 = !DILocation(line: 1519, column: 9, scope: !1772)
!1794 = !DILocation(line: 1518, column: 42, scope: !1772)
!1795 = !DILocation(line: 1516, column: 46, scope: !1772)
!1796 = !DILocation(line: 1516, column: 5, scope: !1772)
!1797 = !DILocation(line: 1516, column: 44, scope: !1772)
!1798 = !DILocation(line: 1520, column: 3, scope: !1772)
!1799 = !DILocation(line: 1522, column: 5, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1520, column: 10)
!1801 = !DILocation(line: 1522, column: 44, scope: !1800)
!1802 = !DILocation(line: 1523, column: 5, scope: !1800)
!1803 = !DILocation(line: 1523, column: 44, scope: !1800)
!1804 = !DILocation(line: 1499, column: 11, scope: !1745)
!1805 = !DILocation(line: 1499, column: 8, scope: !1745)
!1806 = !DILocation(line: 1526, column: 40, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1526, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1526, column: 5)
!1809 = !DILocation(line: 1526, column: 25, scope: !1807)
!1810 = !{!291, !293, i64 260}
!1811 = !DILocation(line: 1526, column: 31, scope: !1807)
!1812 = !DILocation(line: 1526, column: 5, scope: !1808)
!1813 = !DILocation(line: 1527, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 1527, column: 11)
!1815 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1526, column: 58)
!1816 = !DILocation(line: 1527, column: 11, scope: !1815)
!1817 = !DILocation(line: 1530, column: 114, scope: !1815)
!1818 = !DILocation(line: 1530, column: 78, scope: !1815)
!1819 = !DILocation(line: 1530, column: 70, scope: !1815)
!1820 = !DILocation(line: 1530, column: 127, scope: !1815)
!1821 = !DILocation(line: 1530, column: 121, scope: !1815)
!1822 = !DILocation(line: 1530, column: 58, scope: !1815)
!1823 = !DILocation(line: 1530, column: 7, scope: !1815)
!1824 = !DILocation(line: 1530, column: 55, scope: !1815)
!1825 = !DILocation(line: 1526, column: 54, scope: !1807)
!1826 = !DILocation(line: 1526, column: 20, scope: !1807)
!1827 = distinct !{!1827, !1812, !1828}
!1828 = !DILocation(line: 1531, column: 5, scope: !1808)
!1829 = !DILocation(line: 1542, column: 3, scope: !1745)
!1830 = !DILocation(line: 1547, column: 3, scope: !1745)
!1831 = !DILocation(line: 1552, column: 1, scope: !1745)
!1832 = distinct !DISubprogram(name: "netif_add_ip6_address", scope: !3, file: !3, line: 1565, type: !1833, isLocal: false, isDefinition: true, scopeLine: 1566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1836)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!119, !98, !84, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1836 = !{!1837, !1838, !1839, !1840}
!1837 = !DILocalVariable(name: "netif", arg: 1, scope: !1832, file: !3, line: 1565, type: !98)
!1838 = !DILocalVariable(name: "ip6addr", arg: 2, scope: !1832, file: !3, line: 1565, type: !84)
!1839 = !DILocalVariable(name: "chosen_idx", arg: 3, scope: !1832, file: !3, line: 1565, type: !1835)
!1840 = !DILocalVariable(name: "i", scope: !1832, file: !3, line: 1567, type: !120)
!1841 = !DILocation(line: 1565, column: 37, scope: !1832)
!1842 = !DILocation(line: 1565, column: 62, scope: !1832)
!1843 = !DILocation(line: 1565, column: 77, scope: !1832)
!1844 = !DILocation(line: 1571, column: 3, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1571, column: 3)
!1846 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1571, column: 3)
!1847 = !DILocation(line: 1571, column: 3, scope: !1846)
!1848 = !DILocation(line: 1571, column: 3, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 1571, column: 3)
!1850 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1571, column: 3)
!1851 = !DILocation(line: 1571, column: 3, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 1571, column: 3)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 1571, column: 3)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 1571, column: 3)
!1855 = !DILocation(line: 1572, column: 3, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1572, column: 3)
!1857 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1572, column: 3)
!1858 = !DILocation(line: 1572, column: 3, scope: !1857)
!1859 = !DILocation(line: 1572, column: 3, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 1572, column: 3)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 1572, column: 3)
!1862 = !DILocation(line: 1572, column: 3, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 1572, column: 3)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1572, column: 3)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1572, column: 3)
!1866 = !DILocation(line: 1574, column: 7, scope: !1832)
!1867 = !DILocation(line: 1567, column: 8, scope: !1832)
!1868 = !DILocation(line: 1575, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1575, column: 7)
!1870 = !DILocation(line: 1575, column: 7, scope: !1832)
!1871 = !DILocation(line: 1577, column: 20, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1577, column: 9)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1575, column: 15)
!1874 = !DILocation(line: 1577, column: 9, scope: !1873)
!1875 = !DILocation(line: 1578, column: 19, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 1577, column: 29)
!1877 = !DILocation(line: 1579, column: 5, scope: !1876)
!1878 = !DILocation(line: 1584, column: 12, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1584, column: 3)
!1880 = !DILocation(line: 1585, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 1585, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1584, column: 85)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1584, column: 3)
!1884 = !DILocation(line: 1585, column: 9, scope: !1882)
!1885 = !DILocation(line: 1586, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 1586, column: 7)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1586, column: 7)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1585, column: 61)
!1889 = !DILocation(line: 1586, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 1586, column: 7)
!1891 = !DILocation(line: 1587, column: 7, scope: !1888)
!1892 = !DILocation(line: 1588, column: 7, scope: !1888)
!1893 = !DILocation(line: 1589, column: 22, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1589, column: 11)
!1895 = !DILocation(line: 1589, column: 11, scope: !1888)
!1896 = !DILocation(line: 1590, column: 21, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 1589, column: 31)
!1898 = !DILocation(line: 1591, column: 7, scope: !1897)
!1899 = !DILocation(line: 1584, column: 81, scope: !1883)
!1900 = !DILocation(line: 1596, column: 18, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1596, column: 7)
!1902 = !DILocation(line: 1596, column: 7, scope: !1832)
!1903 = !DILocation(line: 1597, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1596, column: 27)
!1905 = !DILocation(line: 1598, column: 3, scope: !1904)
!1906 = !DILocation(line: 0, scope: !1832)
!1907 = !DILocation(line: 1600, column: 1, scope: !1832)
!1908 = !DILocation(line: 1584, column: 53, scope: !1883)
!1909 = !DILocation(line: 1584, column: 3, scope: !1879)
!1910 = distinct !{!1910, !1909, !1911}
!1911 = !DILocation(line: 1594, column: 3, scope: !1879)
!1912 = distinct !DISubprogram(name: "netif_name_to_index", scope: !3, file: !3, line: 1637, type: !1913, isLocal: false, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!47, !231}
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "name", arg: 1, scope: !1912, file: !3, line: 1637, type: !231)
!1917 = !DILocalVariable(name: "netif", scope: !1912, file: !3, line: 1639, type: !98)
!1918 = !DILocation(line: 1637, column: 33, scope: !1912)
!1919 = !DILocalVariable(name: "name", arg: 1, scope: !1920, file: !3, line: 1701, type: !231)
!1920 = distinct !DISubprogram(name: "netif_find", scope: !3, file: !3, line: 1701, type: !1921, isLocal: false, isDefinition: true, scopeLine: 1702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!98, !231}
!1923 = !{!1919, !1924, !1925}
!1924 = !DILocalVariable(name: "netif", scope: !1920, file: !3, line: 1703, type: !98)
!1925 = !DILocalVariable(name: "num", scope: !1920, file: !3, line: 1704, type: !47)
!1926 = !DILocation(line: 1701, column: 24, scope: !1920, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 1639, column: 25, scope: !1912)
!1928 = !DILocation(line: 1708, column: 12, scope: !1929, inlinedAt: !1927)
!1929 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1708, column: 7)
!1930 = !DILocation(line: 1708, column: 7, scope: !1920, inlinedAt: !1927)
!1931 = !DILocation(line: 1712, column: 21, scope: !1920, inlinedAt: !1927)
!1932 = !DILocation(line: 1712, column: 15, scope: !1920, inlinedAt: !1927)
!1933 = !DILocation(line: 1703, column: 17, scope: !1920, inlinedAt: !1927)
!1934 = !DILocation(line: 1717, column: 9, scope: !1935, inlinedAt: !1927)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 1715, column: 9)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 1714, column: 24)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1714, column: 3)
!1938 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1714, column: 3)
!1939 = !DILocation(line: 1714, column: 3, scope: !1938, inlinedAt: !1927)
!1940 = !DILocation(line: 1714, column: 3, scope: !1937, inlinedAt: !1927)
!1941 = !DILocation(line: 1715, column: 23, scope: !1935, inlinedAt: !1927)
!1942 = !DILocation(line: 1715, column: 13, scope: !1935, inlinedAt: !1927)
!1943 = !DILocation(line: 1715, column: 27, scope: !1935, inlinedAt: !1927)
!1944 = !DILocation(line: 1716, column: 9, scope: !1935, inlinedAt: !1927)
!1945 = !DILocation(line: 1716, column: 20, scope: !1935, inlinedAt: !1927)
!1946 = !DILocation(line: 1716, column: 17, scope: !1935, inlinedAt: !1927)
!1947 = !DILocation(line: 1716, column: 35, scope: !1935, inlinedAt: !1927)
!1948 = !DILocation(line: 1717, column: 20, scope: !1935, inlinedAt: !1927)
!1949 = !DILocation(line: 1717, column: 17, scope: !1935, inlinedAt: !1927)
!1950 = !DILocation(line: 1715, column: 9, scope: !1936, inlinedAt: !1927)
!1951 = distinct !{!1951, !1952, !1953}
!1952 = !DILocation(line: 1714, column: 3, scope: !1938)
!1953 = !DILocation(line: 1721, column: 3, scope: !1938)
!1954 = !DILocation(line: 1724, column: 1, scope: !1920, inlinedAt: !1927)
!1955 = !DILocation(line: 1639, column: 17, scope: !1912)
!1956 = !DILocation(line: 1640, column: 7, scope: !1912)
!1957 = !DILocation(line: 1641, column: 12, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 1640, column: 22)
!1959 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1640, column: 7)
!1960 = !DILocation(line: 1641, column: 5, scope: !1958)
!1961 = !DILocation(line: 0, scope: !1912)
!1962 = !DILocation(line: 1645, column: 1, scope: !1912)
!1963 = !DILocation(line: 1701, column: 24, scope: !1920)
!1964 = !DILocation(line: 1708, column: 12, scope: !1929)
!1965 = !DILocation(line: 1708, column: 7, scope: !1920)
!1966 = !DILocation(line: 1712, column: 21, scope: !1920)
!1967 = !DILocation(line: 1712, column: 15, scope: !1920)
!1968 = !DILocation(line: 1703, column: 17, scope: !1920)
!1969 = !DILocation(line: 1717, column: 9, scope: !1935)
!1970 = !DILocation(line: 1714, column: 3, scope: !1937)
!1971 = !DILocation(line: 1715, column: 23, scope: !1935)
!1972 = !DILocation(line: 1715, column: 13, scope: !1935)
!1973 = !DILocation(line: 1715, column: 27, scope: !1935)
!1974 = !DILocation(line: 1716, column: 9, scope: !1935)
!1975 = !DILocation(line: 1716, column: 20, scope: !1935)
!1976 = !DILocation(line: 1716, column: 17, scope: !1935)
!1977 = !DILocation(line: 1716, column: 35, scope: !1935)
!1978 = !DILocation(line: 1717, column: 20, scope: !1935)
!1979 = !DILocation(line: 1717, column: 17, scope: !1935)
!1980 = !DILocation(line: 1715, column: 9, scope: !1936)
!1981 = !DILocation(line: 0, scope: !1920)
!1982 = !DILocation(line: 1724, column: 1, scope: !1920)
!1983 = distinct !DISubprogram(name: "netif_index_to_name", scope: !3, file: !3, line: 1656, type: !1984, isLocal: false, isDefinition: true, scopeLine: 1657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1987)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !47, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "idx", arg: 1, scope: !1983, file: !3, line: 1656, type: !47)
!1989 = !DILocalVariable(name: "name", arg: 2, scope: !1983, file: !3, line: 1656, type: !1986)
!1990 = !DILocalVariable(name: "netif", scope: !1983, file: !3, line: 1658, type: !98)
!1991 = !DILocation(line: 1656, column: 26, scope: !1983)
!1992 = !DILocation(line: 1656, column: 37, scope: !1983)
!1993 = !DILocalVariable(name: "idx", arg: 1, scope: !1994, file: !3, line: 1676, type: !47)
!1994 = distinct !DISubprogram(name: "netif_get_by_index", scope: !3, file: !3, line: 1676, type: !1995, isLocal: false, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!98, !47}
!1997 = !{!1993, !1998}
!1998 = !DILocalVariable(name: "netif", scope: !1994, file: !3, line: 1678, type: !98)
!1999 = !DILocation(line: 1676, column: 25, scope: !1994, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 1658, column: 25, scope: !1983)
!2001 = !DILocation(line: 1682, column: 11, scope: !2002, inlinedAt: !2000)
!2002 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1682, column: 7)
!2003 = !DILocation(line: 1682, column: 7, scope: !1994, inlinedAt: !2000)
!2004 = !DILocation(line: 1683, column: 5, scope: !2005, inlinedAt: !2000)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1683, column: 5)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 1682, column: 30)
!2007 = !DILocation(line: 1678, column: 17, scope: !1994, inlinedAt: !2000)
!2008 = !DILocation(line: 1683, column: 5, scope: !2009, inlinedAt: !2000)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 1683, column: 5)
!2010 = !DILocation(line: 1684, column: 18, scope: !2011, inlinedAt: !2000)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1684, column: 11)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1683, column: 26)
!2013 = !DILocation(line: 1684, column: 15, scope: !2011, inlinedAt: !2000)
!2014 = !DILocation(line: 1684, column: 11, scope: !2012, inlinedAt: !2000)
!2015 = distinct !{!2015, !2016, !2017}
!2016 = !DILocation(line: 1683, column: 5, scope: !2005)
!2017 = !DILocation(line: 1687, column: 5, scope: !2005)
!2018 = !DILocation(line: 1691, column: 1, scope: !1994, inlinedAt: !2000)
!2019 = !DILocation(line: 1658, column: 17, scope: !1983)
!2020 = !DILocation(line: 1660, column: 7, scope: !1983)
!2021 = !DILocation(line: 1661, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1660, column: 22)
!2023 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 1660, column: 7)
!2024 = !DILocation(line: 1661, column: 13, scope: !2022)
!2025 = !DILocation(line: 1662, column: 15, scope: !2022)
!2026 = !DILocation(line: 1662, column: 5, scope: !2022)
!2027 = !DILocation(line: 1662, column: 13, scope: !2022)
!2028 = !DILocation(line: 1663, column: 16, scope: !2022)
!2029 = !DILocation(line: 1663, column: 45, scope: !2022)
!2030 = !DILocation(line: 1663, column: 5, scope: !2022)
!2031 = !DILocation(line: 1664, column: 5, scope: !2022)
!2032 = !DILocation(line: 0, scope: !1983)
!2033 = !DILocation(line: 1667, column: 1, scope: !1983)
!2034 = !DILocation(line: 1676, column: 25, scope: !1994)
!2035 = !DILocation(line: 1682, column: 11, scope: !2002)
!2036 = !DILocation(line: 1682, column: 7, scope: !1994)
!2037 = !DILocation(line: 1678, column: 17, scope: !1994)
!2038 = !DILocation(line: 1683, column: 5, scope: !2009)
!2039 = !DILocation(line: 1684, column: 18, scope: !2011)
!2040 = !DILocation(line: 1684, column: 15, scope: !2011)
!2041 = !DILocation(line: 1684, column: 11, scope: !2012)
!2042 = !DILocation(line: 0, scope: !1994)
!2043 = !DILocation(line: 1691, column: 1, scope: !1994)
!2044 = distinct !DISubprogram(name: "netif_add_ext_callback", scope: !3, file: !3, line: 1734, type: !2045, isLocal: false, isDefinition: true, scopeLine: 1735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !89, !94}
!2047 = !{!2048, !2049}
!2048 = !DILocalVariable(name: "callback", arg: 1, scope: !2044, file: !3, line: 1734, type: !89)
!2049 = !DILocalVariable(name: "fn", arg: 2, scope: !2044, file: !3, line: 1734, type: !94)
!2050 = !DILocation(line: 1734, column: 46, scope: !2044)
!2051 = !DILocation(line: 1734, column: 78, scope: !2044)
!2052 = !DILocation(line: 1737, column: 3, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1737, column: 3)
!2054 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1737, column: 3)
!2055 = !DILocation(line: 1737, column: 3, scope: !2054)
!2056 = !DILocation(line: 1737, column: 3, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1737, column: 3)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1737, column: 3)
!2059 = !DILocation(line: 1737, column: 3, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1737, column: 3)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1737, column: 3)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 1737, column: 3)
!2063 = !DILocation(line: 1738, column: 3, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 1738, column: 3)
!2065 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1738, column: 3)
!2066 = !DILocation(line: 1738, column: 3, scope: !2065)
!2067 = !DILocation(line: 1738, column: 3, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 1738, column: 3)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 1738, column: 3)
!2070 = !DILocation(line: 1738, column: 3, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1738, column: 3)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 1738, column: 3)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 1738, column: 3)
!2074 = !DILocation(line: 1740, column: 13, scope: !2044)
!2075 = !DILocation(line: 1740, column: 25, scope: !2044)
!2076 = !DILocation(line: 1741, column: 27, scope: !2044)
!2077 = !DILocation(line: 1741, column: 13, scope: !2044)
!2078 = !DILocation(line: 1741, column: 25, scope: !2044)
!2079 = !{!558, !292, i64 8}
!2080 = !DILocation(line: 1742, column: 25, scope: !2044)
!2081 = !DILocation(line: 1743, column: 1, scope: !2044)
!2082 = distinct !DISubprogram(name: "netif_remove_ext_callback", scope: !3, file: !3, line: 1751, type: !2083, isLocal: false, isDefinition: true, scopeLine: 1752, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !89}
!2085 = !{!2086, !2087, !2088}
!2086 = !DILocalVariable(name: "callback", arg: 1, scope: !2082, file: !3, line: 1751, type: !89)
!2087 = !DILocalVariable(name: "last", scope: !2082, file: !3, line: 1753, type: !89)
!2088 = !DILocalVariable(name: "iter", scope: !2082, file: !3, line: 1753, type: !89)
!2089 = !DILocation(line: 1751, column: 49, scope: !2082)
!2090 = !DILocation(line: 1756, column: 3, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 1756, column: 3)
!2092 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 1756, column: 3)
!2093 = !DILocation(line: 1756, column: 3, scope: !2092)
!2094 = !DILocation(line: 1756, column: 3, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1756, column: 3)
!2096 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 1756, column: 3)
!2097 = !DILocation(line: 1756, column: 3, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1756, column: 3)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1756, column: 3)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 1756, column: 3)
!2101 = !DILocation(line: 1758, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 1758, column: 7)
!2103 = !DILocation(line: 1758, column: 20, scope: !2102)
!2104 = !DILocation(line: 1758, column: 7, scope: !2082)
!2105 = !DILocation(line: 1762, column: 16, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 1762, column: 7)
!2107 = !DILocation(line: 1762, column: 7, scope: !2082)
!2108 = !DILocation(line: 1763, column: 34, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1762, column: 33)
!2110 = !DILocation(line: 1763, column: 18, scope: !2109)
!2111 = !DILocation(line: 1764, column: 3, scope: !2109)
!2112 = !DILocation(line: 0, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1766, column: 5)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1766, column: 5)
!2115 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1764, column: 10)
!2116 = !DILocation(line: 1753, column: 32, scope: !2082)
!2117 = !DILocation(line: 1753, column: 25, scope: !2082)
!2118 = !DILocation(line: 1766, column: 42, scope: !2113)
!2119 = !DILocation(line: 1766, column: 5, scope: !2114)
!2120 = !DILocation(line: 1767, column: 16, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 1767, column: 11)
!2122 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1766, column: 83)
!2123 = !DILocation(line: 1767, column: 11, scope: !2122)
!2124 = distinct !{!2124, !2119, !2125}
!2125 = !DILocation(line: 1773, column: 5, scope: !2114)
!2126 = !DILocation(line: 1769, column: 32, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1767, column: 29)
!2128 = !DILocation(line: 1769, column: 20, scope: !2127)
!2129 = !DILocation(line: 1770, column: 24, scope: !2127)
!2130 = !DILocation(line: 1771, column: 9, scope: !2127)
!2131 = !DILocation(line: 1775, column: 1, scope: !2082)
